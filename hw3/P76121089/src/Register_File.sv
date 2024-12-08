module Register_File(
    input clk,
    input rst,
    input [4:0] rs1_addr,
    input [4:0] rs2_addr,
    input [4:0] rd_addr,
    input [31:0] rd_data,
    input reg_write,

    output [31:0] rs1_data,
    output [31:0] rs2_data
);

    reg [31:0] register [31:0];
    assign rs1_data = register[rs1_addr];
    assign rs2_data = register[rs2_addr];
    integer  i;
    always_ff @(posedge clk)begin
        if(rst)begin
            for(i=0;i<32;i=i+1)
                register[i] <= 32'b0;
        end
        else if(reg_write)begin
            if(reg_write && (rd_addr)!=5'b0)
                register[rd_addr] <= rd_data;
        end
    end

endmodule