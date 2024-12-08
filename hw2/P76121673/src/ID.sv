`include "Register_File.sv"
`include "Control_Unit.sv"
`include "Immediate_Generator.sv"
module ID(
    input clk,
    input rst,
    input [31:0] ID_pc,
    input [31:0] instr,
    input [31:0] rd_data,
    input [4:0] rd_addr,
    input reg_write,

    output [31:0] ID_pc_out,
    output [31:0] rs1_data,
    output [31:0] rs2_data,
    output [31:0] imm,
    output [2:0] funct3,
    output [6:0] funct7,
    output [4:0] rs1_addr,
    output [4:0] rs2_addr,
    output [4:0] rd_addr_out,

    //control unit
    output [2:0] ALUOP,
    output PCtoRegSrc,
    output ALUSrc,
    output RDSrc,
    output MemtoReg,
    output MemWrite,
    output MemRead,
    output RegWrite,
    output [1:0] Branch,
    output ALUOutSelect,

    //Hazard
    output [4:0] hazard_rs1_addr,
    output [4:0] hazard_rs2_addr
);
    assign hazard_rs1_addr = instr[19:15];
    assign hazard_rs2_addr = instr[24:20];

    assign funct3 = instr[14:12];
    assign funct7 = instr[31:25];
    assign rs1_addr = instr[19:15];
    assign rs2_addr = instr[24:20];
    assign rd_addr_out = instr[11:7];
    assign ID_pc_out = ID_pc;

    Register_File RF(
        .clk(clk),
        .rst(rst),
        .rs1_addr(instr[19:15]),
        .rs2_addr(instr[24:20]),
        .rd_addr(rd_addr),
        .rd_data(rd_data),
        .reg_write(reg_write),

        .rs1_data(rs1_data),
        .rs2_data(rs2_data)
    );
    wire [2:0] wire_Imm_Type;
    Control_Unit CU(
        .opcode(instr[6:0]),
        .Imm_Type(wire_Imm_Type),
        .ALUOP(ALUOP),
        .PCtoRegSrc(PCtoRegSrc),
        .ALUSrc(ALUSrc),
        .RDSrc(RDSrc),
        .MemtoReg(MemtoReg),
        .MemWrite(MemWrite),
        .MemRead(MemRead),
        .RegWrite(RegWrite),
        .Branch(Branch),
        .ALUOutSelect(ALUOutSelect)
    );
    Immediate_Generator Immediate_Generator(
        .Imm_Type(wire_Imm_Type),
        .instr(instr),
        
        .imm(imm)
    );

endmodule