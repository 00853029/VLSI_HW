`include "IF.sv"
`include "IF_ID_reg.sv"
`include "ID.sv"
`include "ID_EXE_reg.sv"
`include "EXE.sv"
`include "EXE_MEM_reg.sv"
`include "MEM.sv"
`include "WB.sv"
`include "Forwarding_Unit.sv"
`include "Branch_Ctrl.sv"
`include "Hazard_Ctrl.sv"
module CPU(
    input clk,
    input rst,

    //IM
    output logic [31:0] instr_addr,
    input [31:0] IM_instr,
    //DM
    output logic DM_read,
    output logic DM_write,
    output logic [3:0] WEB,
    output logic [31:0] DM_addr,
    output logic [31:0] store_data,
    input logic [31:0] load_data,
    output logic [`CACHE_TYPE_BITS-1:0] core_type,
    //stall
    input IM_stall,
    input DM_stall,

    input interrupt,
    input timeout
);

    wire [1:0] wire_BranchCtrl;
    wire Instr_flush;
    wire IF_ID_RegWrite, ID_EXE_RegWrite, EXE_MEM_RegWrite, MEM_WB_RegWrite;
    wire [31:0] pc_out;
    wire [31:0] instr_out;
    // wire [31:0] IM_instr;
    
    wire [31:0] pc_immrs1;
    wire [31:0] pc_imm;

    wire PC_write;

    //CSR
    logic [31:0] CSR_return_pc;
    logic [31:0] CSR_ISR_pc;
    logic CSR_control, CSR_ret, CSR_rst; //to IF
    logic CSR_stall;    //to HazardControl

    IF IF(
        .clk(clk),
        .rst(rst),
        .BranchCtrl(wire_BranchCtrl),
        .pc_immrs1(pc_immrs1),
        .pc_imm(pc_imm),
        .PC_write(PC_write),
        .Instr(IM_instr),
        // .Instr_flush(Instr_flush),
        
        .pc_out(pc_out),
        .Instr_out(instr_out),

        .CSR_return_pc(CSR_return_pc),
        .CSR_ISR_pc(CSR_ISR_pc),
        .CSR_control(CSR_control),
        .CSR_ret(CSR_ret),
		.CSR_rst(CSR_rst)
    );
    // SRAM_wrapper IM1(
    //   .CK(~clk),
    //   .CS(1'b1),
    //   .OE(1'b1),
    //   .WEB(4'b1111),  // low active
    //   .A(pc_out[15:2]),
    //   .DI(32'b0),
    //   .DO(IM_instr)        
    // );

    wire [31:0] ID_pc;
    wire [31:0] instr;
    wire ID_Instr_flush;
    IF_ID_reg IF_ID_reg(
        .clk(clk),
        .rst(rst),
        .pc_out(pc_out),
        .Instr_out(instr_out),
        .IF_ID_RegWrite(IF_ID_RegWrite),
        .Instr_flush(Instr_flush),
        //output
        .ID_pc(ID_pc),
        .instr(instr)
        // .Instr_flush_out(ID_Instr_flush)
    );

    wire [31:0] WB_rd_data;
    wire [4:0] WB_rd_addr;
    wire WB_RegWrite;

    //pipeline reg
    wire [31:0] ID_pc_out;
    wire [31:0] ID_rs1_data, ID_rs2_data;
    wire [31:0] ID_imm;
    wire [2:0] ID_funct3;
    wire [6:0] ID_funct7;
    wire [4:0] ID_rs1_addr, ID_rs2_addr;
    wire [4:0] ID_rd_addr;
    wire [2:0] ID_ALUOP;
    wire ID_PCtoRegSrc;
    wire ID_ALUSrc;
    wire ID_RDSrc;
    wire ID_MemtoReg;
    wire ID_MemWrite;
    wire ID_MemRead;
    wire ID_RegWrite;
    wire ID_ALUOutSelect;
    wire [1:0] ID_Branch;

    wire [4:0] hazard_rs1_addr, hazard_rs2_addr;
    
    //CSR
    wire ID_CSR_write;
    wire [11:0] ID_CSR_addr;
    ID ID(
        .clk(clk),
        .rst(rst),
        .ID_pc(ID_pc),
        .instr(instr),
        .rd_data(WB_rd_data),
        .rd_addr(WB_rd_addr),
        .reg_write(WB_RegWrite),

        //output
        .ID_pc_out(ID_pc_out),
        .rs1_data(ID_rs1_data),
        .rs2_data(ID_rs2_data),
        .imm(ID_imm),
        .funct3(ID_funct3),
        .funct7(ID_funct7),
        .rs1_addr(ID_rs1_addr),
        .rs2_addr(ID_rs2_addr),
        .rd_addr_out(ID_rd_addr),

        //control unit
        .ALUOP(ID_ALUOP),
        .PCtoRegSrc(ID_PCtoRegSrc),
        .ALUSrc(ID_ALUSrc),
        .RDSrc(ID_RDSrc),
        .MemtoReg(ID_MemtoReg),
        .MemWrite(ID_MemWrite),
        .MemRead(ID_MemRead),
        .RegWrite(ID_RegWrite),
        .Branch(ID_Branch),
        .ALUOutSelect(ID_ALUOutSelect),
        
        //CSR
        .CSR_write(ID_CSR_write),
        .CSR_addr(ID_CSR_addr),
        //Hazard
        .hazard_rs1_addr(hazard_rs1_addr),
        .hazard_rs2_addr(hazard_rs2_addr)
    );

    wire CtrlSignalFlush;
    //EXE's wires
    wire [31:0] EXE_pc;
    wire [31:0] EXE_rs1_data;
    wire [31:0] EXE_rs2_data;
    wire [2:0] EXE_funct3;
    wire [6:0] EXE_funct7;
    wire [4:0] EXE_rs1_addr;
    wire [4:0] EXE_rs2_addr;
    wire [4:0] EXE_rd_addr;
    wire [31:0] EXE_imm;
    //control signals
    wire [2:0] EXE_ALUOP;
    wire EXE_PCtoRegSrc, EXE_ALUSrc, EXE_RDSrc, EXE_MemtoReg, EXE_MemWrite, EXE_MemRead, EXE_RegWrite, EXE_ALUOutSelect;
    wire [1:0] EXE_Branch; 

    wire EXE_Instr_flush,EXE_CtrlSignalFlush;

    //CSR
    wire EXE_CSR_write;
    wire [11:0] EXE_CSR_addr;

    ID_EXE_reg ID_EXE_reg(
        .clk(clk),
        .rst(rst),
        .CtrlSignalFlush(CtrlSignalFlush),
        .ID_pc(ID_pc_out),
        .rs1_data(ID_rs1_data),
        .rs2_data(ID_rs2_data),
        .funct3(ID_funct3),
        .funct7(ID_funct7),
        .rs1_addr(ID_rs1_addr),
        .rs2_addr(ID_rs2_addr),
        .rd_addr(ID_rd_addr),
        .imm(ID_imm),
        //control signals
        .ID_ALUOP(ID_ALUOP),
        .ID_PCtoRegSrc(ID_PCtoRegSrc),
        .ID_ALUSrc(ID_ALUSrc),
        .ID_RDSrc(ID_RDSrc),
        .ID_MemtoReg(ID_MemtoReg),
        .ID_MemWrite(ID_MemWrite),
        .ID_MemRead(ID_MemRead),
        .ID_RegWrite(ID_RegWrite),
        .ID_Branch(ID_Branch),
        .ID_ALUOutSelect(ID_ALUOutSelect),
        .ID_Instr_flush(Instr_flush),

        .ID_CSR_write(ID_CSR_write),
        .ID_CSR_addr(ID_CSR_addr),
	  .CSR_rst(CSR_rst),
        //output
        .EXE_pc(EXE_pc),
        .EXE_rs1_data(EXE_rs1_data),
        .EXE_rs2_data(EXE_rs2_data),
        .EXE_funct3(EXE_funct3),
        .EXE_funct7(EXE_funct7),
        .EXE_rs1_addr(EXE_rs1_addr),
        .EXE_rs2_addr(EXE_rs2_addr),
        .EXE_rd_addr(EXE_rd_addr),
        .EXE_imm(EXE_imm),
        .ALUOP(EXE_ALUOP),
        .PCtoRegSrc(EXE_PCtoRegSrc),
        .ALUSrc(EXE_ALUSrc),
        .RDSrc(EXE_RDSrc),
        .MemtoReg(EXE_MemtoReg),
        .MemWrite(EXE_MemWrite),
        .MemRead(EXE_MemRead),
        .RegWrite(EXE_RegWrite),
        .Branch(EXE_Branch),
        .ALUOutSelect(EXE_ALUOutSelect),
        //CSR
        .CSR_write(EXE_CSR_write),
        .CSR_addr(EXE_CSR_addr),

        .Instr_flush(EXE_Instr_flush),
        .CtrlSignalFlush_out(EXE_CtrlSignalFlush),

        .ID_EXE_RegWrite(ID_EXE_RegWrite)

        //output for CSR
        // .CtrlSignalFlush(CtrlSignalFlush),
        // .Instr_flush(Instr_flush)
    );

    //EXE
    wire Zero_flag;
    //Forwarding
    wire [31:0] wire_MEM_rd_data;
    wire [1:0] ForwardRS1Src;
    wire [1:0] ForwardRS2Src;   
    //pipeline reg
    wire EXE_RDsrc_out, EXE_MemRead_out, EXE_MemWrite_out, EXE_MemtoReg_out, EXE_RegWrite_out;
    wire [31:0] EXE_pc_to_reg_out;
    wire [31:0] EXE_ALU_out;
    wire [31:0] EXE_rs2_data_out;
    wire [4:0] EXE_rd_addr_out;
    wire [2:0] EXE_funct3_out;

    EXE EXE(
        .clk(clk),
        .rst(rst),
        .EXE_pc(EXE_pc),
        .EXE_rs1_data(EXE_rs1_data),
        .EXE_rs2_data(EXE_rs2_data),
        .EXE_funct3(EXE_funct3),
        .EXE_funct7(EXE_funct7),
        .EXE_imm(EXE_imm),
        .rs1_addr(EXE_rs1_addr),
        .rs2_addr(EXE_rs2_addr),
        .EXE_rd_addr(EXE_rd_addr),

        //control signals
        .ALUOP(EXE_ALUOP),
        .PCtoRegSrc(EXE_PCtoRegSrc),
        .ALUSrc(EXE_ALUSrc),
        .RDSrc(EXE_RDSrc),
        .MemRead(EXE_MemRead),
        .MemWrite(EXE_MemWrite),
        .MemtoReg(EXE_MemtoReg),
        .RegWrite(EXE_RegWrite),
        .ALUOutSelect(EXE_ALUOutSelect),
        //Forwarding
        .MEM_rd_data(wire_MEM_rd_data),
        .WB_rd_data(WB_rd_data),
        .ForwardRS1Src(ForwardRS1Src),
        .ForwardRS2Src(ForwardRS2Src),

        //CSR
        .Instr_flush(EXE_Instr_flush),
        .CtrlSignalFlush(EXE_CtrlSignalFlush),
        .EXE_MEM_RegWrite(EXE_MEM_RegWrite),
        //hw3
        .interrupt(interrupt),
        .timeout(timeout),
        .CSR_write(EXE_CSR_write),
        .CSR_addr(EXE_CSR_addr),
        .CSR_return_pc(CSR_return_pc),
        .CSR_ISR_pc(CSR_ISR_pc),

        .CSR_stall(CSR_stall),
        .CSR_control(CSR_control),
        .CSR_ret(CSR_ret),
	   .CSR_rst(CSR_rst),
        //output
        //control signals
        .EXE_RDsrc(EXE_RDsrc_out),
        .EXE_MemRead(EXE_MemRead_out),
        .EXE_MemWrite(EXE_MemWrite_out),
        .EXE_MemtoReg(EXE_MemtoReg_out),
        .EXE_RegWrite(EXE_RegWrite_out),
        //-------------------
        .EXE_pc_to_reg(EXE_pc_to_reg_out),
        .ALU_out(EXE_ALU_out),
        .Zero_flag(Zero_flag),
        .EXE_rs2_data_out(EXE_rs2_data_out),
        .EXE_rd_addr_out(EXE_rd_addr_out),
        .EXE_funct3_out(EXE_funct3_out),
        //IF
        .pc_imm(pc_imm),
        .pc_immrs1(pc_immrs1)
    );

    wire MEM_RDsrc, MEM_MemRead, MEM_MemWrite, MEM_MemtoReg, MEM_RegWrite;
    wire [31:0] MEM_pc_to_reg;
    wire [31:0] MEM_ALU_out;
    wire [31:0] MEM_rs2_data;
    wire [4:0] MEM_rd_addr;
    wire [2:0] MEM_funct3;
    EXE_MEM_reg EXE_MEM_reg(
        .clk(clk),
        .rst(rst),
	   .CSR_rst(CSR_rst),
        
        //control signals
        .EXE_RDsrc(EXE_RDsrc_out),
        .EXE_MemRead(EXE_MemRead_out),
        .EXE_MemWrite(EXE_MemWrite_out),
        .EXE_MemtoReg(EXE_MemtoReg_out),
        .EXE_RegWrite(EXE_RegWrite_out),
        //-------------------
        .EXE_pc_to_reg(EXE_pc_to_reg_out),
        .ALU_out(EXE_ALU_out),
        .EXE_rs2_data(EXE_rs2_data_out),
        .EXE_rd_addr(EXE_rd_addr_out),
        .EXE_funct3(EXE_funct3_out),

        //output
        //control signals
        .MEM_RDsrc(MEM_RDsrc),
        .MEM_MemRead(MEM_MemRead),
        .MEM_MemWrite(MEM_MemWrite),
        .MEM_MemtoReg(MEM_MemtoReg),
        .MEM_RegWrite(MEM_RegWrite),
        //-------------------
        .MEM_pc_to_reg(MEM_pc_to_reg),
        .MEM_ALU_out(MEM_ALU_out),
        .MEM_rs2_data(MEM_rs2_data),
        .MEM_rd_addr(MEM_rd_addr),
        .MEM_funct3(MEM_funct3),

        .EXE_MEM_RegWrite(EXE_MEM_RegWrite)  
    );

    wire WB_MemtoReg, WB_RegWrite_temp;
    wire [31:0] WB_rd_data_temp;
    wire [31:0] WB_lw_data;
    wire [4:0] WB_rd_addr_temp;
    wire [31:0] wire_lw_data;
    wire wire_chipSelect;
    wire [3:0] wire_writeEnable;
    wire [31:0] wire_dataIn;

    MEM MEM(
        .clk(clk),
        .rst(rst),
	    .CSR_rst(CSR_rst),
        .MEM_rd_src(MEM_RDsrc),
        .MEM_MemRead(MEM_MemRead),
        .MEM_MemWrite(MEM_MemWrite),
        .MEM_MemtoReg(MEM_MemtoReg),
        .MEM_RegWrite(MEM_RegWrite),
        .MEM_pc_to_reg(MEM_pc_to_reg),
        .MEM_ALU_out(MEM_ALU_out),
        .MEM_rs2_data(MEM_rs2_data),
        .MEM_rd_addr(MEM_rd_addr),
        .MEM_funct3(MEM_funct3),

        //output
        .WB_MemtoReg(WB_MemtoReg),
        .WB_RegWrite(WB_RegWrite_temp),
        .WB_rd_data(WB_rd_data_temp),
        .WB_lw_data(WB_lw_data),
        .WB_rd_addr(WB_rd_addr_temp),
        //forwarding
        .wire_MEM_rd_data(wire_MEM_rd_data),

        //DM
        .wire_lw_data(load_data),
        .wire_chipSelect(wire_chipSelect),
        .wire_writeEnable(wire_writeEnable),
        .wire_dataIn(wire_dataIn),

        .MEM_WB_RegWrite(MEM_WB_RegWrite),
        
        //cache
        .core_type(core_type)
    );
    // SRAM_wrapper DM1(
    //     .CK(~clk),
    //     .CS(wire_chipSelect),
    //     .OE(MEM_MemRead),
    //     .WEB(wire_writeEnable),
    //     .A(MEM_ALU_out[15:2]),
    //     .DI(wire_dataIn),
    //     .DO(wire_lw_data)
    // );
    WB WB(
        .clk(clk),
        .rst(rst),

        .WB_MemtoReg(WB_MemtoReg),
        .WB_RegWrite(WB_RegWrite_temp),
        .WB_rd_data(WB_rd_data_temp),
        .WB_lw_data(WB_lw_data),
        .WB_rd_addr(WB_rd_addr_temp),
        
        //output
        .WB_rd_data_out(WB_rd_data),
        .WB_rd_addr_out(WB_rd_addr),
        .WB_RegWrite_out(WB_RegWrite)
    );

    Forwarding_Unit Forwarding_Unit(
        .MEM_reg_write(MEM_RegWrite),
        .WB_reg_write(WB_RegWrite_temp),
        .rs1_addr(EXE_rs1_addr),
        .rs2_addr(EXE_rs2_addr),
        .MEM_rd_addr(MEM_rd_addr),
        .WB_rd_addr(WB_rd_addr_temp),

        //output
        .ForwardRS1Src(ForwardRS1Src),
        .ForwardRS2Src(ForwardRS2Src)
    );

    Branch_Ctrl Branch_Ctrl(
        .Branch(EXE_Branch),
        .Zero_flag(Zero_flag),
        .BranchCtrl(wire_BranchCtrl)
    );

    Hazard_Ctrl Hazard_Ctrl(
        .BranchCtrl(wire_BranchCtrl),
        .EXE_MemRead(EXE_MemRead),
        .EXE_rd_addr(EXE_rd_addr),
        .rs1_addr(hazard_rs1_addr),
        .rs2_addr(hazard_rs2_addr),

        .IM_stall(IM_stall),
        .DM_stall(DM_stall),
        .CSR_stall(CSR_stall),
        .CSR_control(CSR_control),
        .CSR_ret(CSR_ret),
        //output
        .Instr_flush(Instr_flush),
        .CtrlSignalFlush(CtrlSignalFlush),
        .IF_ID_RegWrite(IF_ID_RegWrite),
        .PC_write(PC_write),

        .ID_EXE_RegWrite(ID_EXE_RegWrite),
        .EXE_MEM_RegWrite(EXE_MEM_RegWrite),
        .MEM_WB_RegWrite(MEM_WB_RegWrite)
    );
    

    assign instr_addr = pc_out;
    assign DM_read = MEM_MemRead;
    assign DM_write = MEM_MemWrite;
    assign WEB = wire_writeEnable;
    assign DM_addr = MEM_ALU_out;
    assign store_data = wire_dataIn;

endmodule
