module ID_EXE_reg(
    input clk,
    input rst,
    input CtrlSignalFlush,
    input [31:0] ID_pc,
    input [31:0] rs1_data,
    input [31:0] rs2_data,
    input [2:0] funct3,
    input [6:0] funct7,
    input [4:0] rs1_addr,
    input [4:0] rs2_addr,
    input [4:0] rd_addr,
    input [31:0] imm,
    //control signals
    input [2:0] ID_ALUOP,
    input ID_PCtoRegSrc,
    input ID_ALUSrc,
    input ID_RDSrc,
    input ID_MemtoReg,
    input ID_MemWrite,
    input ID_MemRead,
    input ID_RegWrite,
    input [1:0] ID_Branch,
    input ID_ALUOutSelect,
    input ID_Instr_flush,
    //------------------------
    output reg [31:0] EXE_pc,
    output reg [31:0] EXE_rs1_data,
    output reg [31:0] EXE_rs2_data,
    output reg [2:0] EXE_funct3,
    output reg [6:0] EXE_funct7,
    output reg [4:0] EXE_rs1_addr,
    output reg [4:0] EXE_rs2_addr,
    output reg [4:0] EXE_rd_addr,
    output reg [31:0] EXE_imm,
    //control signals
    output reg [2:0] ALUOP,
    output reg PCtoRegSrc,
    output reg ALUSrc,
    output reg RDSrc,
    output reg MemtoReg,
    output reg MemWrite,
    output reg MemRead,
    output reg RegWrite,
    output reg [1:0] Branch,
    output reg ALUOutSelect,
    output reg Instr_flush,
    output reg CtrlSignalFlush_out,

    input ID_EXE_RegWrite
);
always_ff @(posedge clk, posedge rst)begin
    if(rst)begin
        EXE_pc         <= 32'b0;
        EXE_rs1_data   <= 32'b0;
        EXE_rs2_data   <= 32'b0;
        EXE_imm        <= 32'b0;
        EXE_funct3     <= 3'b0;
        EXE_funct7     <= 7'b0;
        EXE_rd_addr    <= 5'b0;
        EXE_rs1_addr   <= 5'b0;
        EXE_rs2_addr   <= 5'b0;

        ALUOP      <= 3'b0;
        PCtoRegSrc <= 1'b0;
        ALUSrc     <= 1'b0;
        RDSrc      <= 1'b0;
        MemtoReg   <= 1'b0;
        MemWrite   <= 1'b0;
        MemRead    <= 1'b0;
        RegWrite   <= 1'b0;
        Branch     <= 2'b0;   
        ALUOutSelect <= 1'b0;
    end
    else if(ID_EXE_RegWrite) begin
        EXE_pc         <= ID_pc;
        EXE_rs1_data   <= rs1_data;
        EXE_rs2_data   <= rs2_data;
        EXE_imm        <= imm;
        EXE_funct3     <= funct3;
        EXE_funct7     <= funct7;
        EXE_rd_addr    <= rd_addr;
        EXE_rs1_addr   <= rs1_addr;
        EXE_rs2_addr   <= rs2_addr;
        //control signals
        ALUOP          <= ID_ALUOP;
        PCtoRegSrc     <= ID_PCtoRegSrc;
        ALUSrc         <= ID_ALUSrc;
        RDSrc          <= ID_RDSrc;
        MemtoReg       <= ID_MemtoReg;
        ALUOutSelect   <= ID_ALUOutSelect;
        Instr_flush    <= ID_Instr_flush;
        CtrlSignalFlush_out <= CtrlSignalFlush;

        MemWrite       <= (CtrlSignalFlush) ? 1'b0 : ID_MemWrite;
        MemRead        <= (CtrlSignalFlush) ? 1'b0 : ID_MemRead;
        RegWrite       <= (CtrlSignalFlush) ? 1'b0 : ID_RegWrite;
        Branch         <= (CtrlSignalFlush) ? 2'b0 : ID_Branch;
    end
end

endmodule