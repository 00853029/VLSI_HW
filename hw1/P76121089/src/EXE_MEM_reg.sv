module EXE_MEM_reg(
    input clk,
    input rst,
    
    //control signals
    input EXE_RDsrc,
    input EXE_MemRead,
    input EXE_MemWrite,
    input EXE_MemtoReg,
    input EXE_RegWrite,
    //-------------------
    input [31:0] EXE_pc_to_reg,
    input [31:0] ALU_out,
    input [31:0] EXE_rs2_data,
    input [4:0] EXE_rd_addr,
    input [2:0] EXE_funct3,

    //control signals
    output reg MEM_RDsrc,
    output reg MEM_MemRead,
    output reg MEM_MemWrite,
    output reg MEM_MemtoReg,
    output reg MEM_RegWrite,
    //-------------------
    output reg [31:0] MEM_pc_to_reg,
    output reg [31:0] MEM_ALU_out,
    output reg [31:0] MEM_rs2_data,
    output reg [4:0] MEM_rd_addr,
    output reg [2:0] MEM_funct3
);

    always_ff @(posedge clk, posedge rst ) begin
        if(rst)begin
            MEM_RDsrc <= 1'b0;
            MEM_MemRead <= 1'b0;
            MEM_MemWrite <= 1'b0;
            MEM_MemtoReg <= 1'b0;
            MEM_RegWrite <= 1'b0;
            //-------------------
            MEM_pc_to_reg <= 32'b0;
            MEM_ALU_out <= 32'b0;
            MEM_rs2_data <= 32'b0;
            MEM_rd_addr <= 5'b0;
            MEM_funct3 <= 3'b0;
        end
        else begin
            MEM_RDsrc <= EXE_RDsrc;
            MEM_MemRead <= EXE_MemRead;
            MEM_MemWrite <= EXE_MemWrite;
            MEM_MemtoReg <= EXE_MemtoReg;
            MEM_RegWrite <= EXE_RegWrite;
            //-------------------
            MEM_pc_to_reg <= EXE_pc_to_reg;
            MEM_ALU_out <= ALU_out;
            MEM_rs2_data <= EXE_rs2_data;
            MEM_rd_addr <= EXE_rd_addr;
            MEM_funct3 <= EXE_funct3;
        end
    end

endmodule