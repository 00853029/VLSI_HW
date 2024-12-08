`include "ALU_Ctrl.sv"
`include "ALU.sv"
`include "CSR.sv"
module EXE(
    input clk,
    input rst,
    input [31:0] EXE_pc,
    input [31:0] EXE_rs1_data,
    input [31:0] EXE_rs2_data,
    input [2:0] EXE_funct3,
    input [6:0] EXE_funct7,
    input [31:0] EXE_imm,
    input [4:0] rs1_addr,
    input [4:0] rs2_addr,
    input [4:0] EXE_rd_addr,

    //control signals
    input [2:0] ALUOP,
    input PCtoRegSrc,
    input ALUSrc,
    input RDSrc,
    input MemRead,
    input MemWrite,
    input MemtoReg,
    input RegWrite,
    input ALUOutSelect,
    //Forwarding
    input [31:0] MEM_rd_data,
    input [31:0] WB_rd_data,
    input [1:0] ForwardRS1Src,
    input [1:0] ForwardRS2Src,
    //CSR
    input Instr_flush,
    input CtrlSignalFlush,
    input EXE_MEM_RegWrite,
    //hw3
    input interrupt,
    input timeout,
    input CSR_write,
    input [11:0] CSR_addr,
    output logic [31:0] CSR_return_pc,
    output logic [31:0] CSR_ISR_pc,

    output logic CSR_stall,
    output logic CSR_control,
    output logic CSR_ret,
	output logic CSR_rst,

    //control signals
    output EXE_RDsrc,
    output EXE_MemRead,
    output EXE_MemWrite,
    output EXE_MemtoReg,
    output EXE_RegWrite,
    //-------------------
    output reg [31:0] EXE_pc_to_reg,
    output [31:0] ALU_out,
    output Zero_flag,
    output [31:0] EXE_rs2_data_out,
    output [4:0] EXE_rd_addr_out,
    output [2:0] EXE_funct3_out,
    //IF
    output [31:0] pc_imm,
    output [31:0] pc_immrs1
);

    wire [4:0] wire_ALU_Ctrl;
    ALU_Ctrl ALU_Ctrl(
        .ALUOP(ALUOP),
        .funct3(EXE_funct3),
        .funct7(EXE_funct7),
        .ALU_Ctrl(wire_ALU_Ctrl)
    );

    reg [31:0] ALU_rs1;
    reg [31:0] ALU_rs2, ALU_rs2_temp;
    always_comb begin
        case(ForwardRS1Src)
            2'b00: ALU_rs1 = EXE_rs1_data;
            2'b01: ALU_rs1 = MEM_rd_data;
            default: ALU_rs1 = WB_rd_data;
        endcase
    end
    always_comb begin
        case(ForwardRS2Src)
            2'b00: ALU_rs2_temp = EXE_rs2_data;
            2'b01: ALU_rs2_temp = MEM_rd_data;
            default: ALU_rs2_temp = WB_rd_data;
        endcase
    end
    always_comb begin
       if(ALUSrc) ALU_rs2 = ALU_rs2_temp;
       else ALU_rs2 = EXE_imm; 
    end
    wire [31:0] wire_ALU_out;
    logic [31:0] wire_CSR_out;
    ALU ALU(
        .rs1(ALU_rs1),
        .rs2(ALU_rs2),
        .ALU_Ctrl(wire_ALU_Ctrl),
        .ALU_out(wire_ALU_out),
        .Zero_flag(Zero_flag)
    );
    assign ALU_out = (ALUOutSelect)? wire_CSR_out : wire_ALU_out;

    //pc_to_reg
    wire [31:0] wire_pc_imm, wire_pc_4;
    assign wire_pc_imm = EXE_pc + EXE_imm;
    assign wire_pc_4 = EXE_pc + 4;
    always_comb begin
        if(PCtoRegSrc)  EXE_pc_to_reg = wire_pc_imm;
        else EXE_pc_to_reg = wire_pc_4;
    end

    //control signals
    assign EXE_RDsrc = RDSrc;
    assign EXE_MemRead = MemRead;
    assign EXE_MemWrite = MemWrite;
    assign EXE_MemtoReg = MemtoReg;
    assign EXE_RegWrite = RegWrite;

    assign EXE_rs2_data_out = ALU_rs2_temp;
    assign EXE_rd_addr_out = EXE_rd_addr;
    assign EXE_funct3_out = EXE_funct3;
    assign pc_imm = (CSR_rst) ? 32'b0 : EXE_pc + EXE_imm;
    assign pc_immrs1 = (CSR_rst) ? 32'b0 : wire_ALU_out;

    //wire [63:0] wire_instret, wire_cycle;
    logic [31:0] wire_CSR_rd;
    /*always_comb begin
        if(CSR_write)begin
            case(EXE_imm[11:0])
                12'b110010000010:begin
                    wire_CSR_out <= wire_instret[63:32];
                end
                12'b110000000010:begin
                    wire_CSR_out <= wire_instret[31:0];
                end
                12'b110010000000:begin
                    wire_CSR_out <= wire_cycle[63:32];
                end
                default: begin   //other CSRs
                    wire_CSR_out <= wire_CSR_rd;
                end
            endcase
        end
    end*/

	

    CSR CSR(
        .clk(clk),
        .rst(rst),
        .Instr_flush(Instr_flush),
        .CtrlSignalFlush(CtrlSignalFlush),
        .EXE_MEM_RegWrite(EXE_MEM_RegWrite),
        .imm_CSR(EXE_imm),
        //.instret_CSR_out(wire_instret),
        //.cycle_CSR_out(wire_cycle),

        //hw3
        .EXE_pc(EXE_pc),
        .EXE_funct3(EXE_funct3),
        .EXE_funct7(EXE_funct7),
        .interrupt(interrupt),
        .timeout(timeout),
        .CSR_write(CSR_write),
        .rs1(ALU_rs1),
	.rs1_addr(rs1_addr),
        .CSR_addr(CSR_addr),
        //output
        .CSR_rd(wire_CSR_out),
        .CSR_return_pc(CSR_return_pc),
        .CSR_ISR_pc(CSR_ISR_pc),
        .CSR_stall(CSR_stall),
        .CSR_control(CSR_control),
        .CSR_ret(CSR_ret),
	   .CSR_rst(CSR_rst)

    );


endmodule
