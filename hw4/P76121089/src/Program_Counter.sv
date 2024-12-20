module Program_Counter (
    input rst,
    input clk,
    input [31:0] pc_in,
    input PC_write,

    output reg [31:0] pc_out,

	input CSR_rst
);
    always_ff @(posedge clk) begin
        if(rst | CSR_rst) begin
            pc_out <= 32'b0;
        end
        else if(PC_write)   pc_out <= pc_in;
    end
endmodule
