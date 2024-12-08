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
    output [31:0] Instr_out,

    // CSR
    input [31:0] CSR_return_pc,
    input [31:0] CSR_ISR_pc,
    input CSR_control,
    input CSR_ret,
	input CSR_rst

);
    reg [31:0] pc_in;
    reg [31:0] pc_4;
    assign pc_4 = pc_out + 4;
    always_comb begin
        if(CSR_ret) begin
            pc_in = CSR_return_pc;
        end
        else if(CSR_control) begin
            pc_in = CSR_ISR_pc;
        end
	  else if(CSR_rst) begin
	  	pc_in = 32'b0;
	  end
        else begin
            case (BranchCtrl)
                2'd0: pc_in = pc_4;
                2'd1: pc_in = pc_imm;
                default: pc_in = pc_immrs1;
            endcase
        end
    end
    assign Instr_out = Instr;
    
    Program_Counter pc(
        .rst(rst),
        .clk(clk),
        .pc_in(pc_in),
        .PC_write(PC_write),
        .pc_out(pc_out)
        );

endmodule
