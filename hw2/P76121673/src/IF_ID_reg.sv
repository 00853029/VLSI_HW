module IF_ID_reg(
    input rst,
    input clk,
    input [31:0] pc_out,
    input [31:0] Instr_out,
    input IF_ID_RegWrite,
    input Instr_flush,

    output reg [31:0] ID_pc,
    output reg [31:0] instr
    // output reg Instr_flush_out

);

    always_ff @(posedge clk,posedge rst)begin
        if(rst)begin
            ID_pc <= 32'b0;
            instr <= 32'b0;
        end
        else if(IF_ID_RegWrite)begin
            ID_pc <= pc_out;
            if(Instr_flush) instr <= 32'b0;
            else instr <= Instr_out;
        end
        // Instr_flush_out <= Instr_flush;
    end

endmodule