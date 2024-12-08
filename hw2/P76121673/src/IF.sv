`include "Program_Counter.sv"
module IF(
    input rst,
    input clk,
    input [1:0] BranchCtrl,
    input [31:0] pc_immrs1,
    input [31:0] pc_imm,
    input PC_write,
    input [31:0] Instr, //from IM

    output [31:0] pc_out,
    output [31:0] Instr_out

);
    reg [31:0] pc_in;
    reg [31:0] pc_4;
    assign pc_4 = pc_out + 4;
    always_comb begin
        case (BranchCtrl)
            2'd0: pc_in = pc_4;
            2'd1: pc_in = pc_imm;
            default: pc_in = pc_immrs1;
        endcase
    end
    assign Instr_out = Instr;
    // always_comb begin
    //     if(Instr_flush) Instr_out = 32'b0;
    //     else Instr_out = Instr;
    // end
    Program_Counter pc(
        .rst(rst),
        .clk(clk),
        .pc_in(pc_in),
        .PC_write(PC_write),
        .pc_out(pc_out)
        );

endmodule