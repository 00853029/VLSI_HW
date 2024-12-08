module WB(
    input clk,
    input rst,

    input WB_MemtoReg,
    input WB_RegWrite,
    input [31:0] WB_rd_data,
    input [31:0] WB_lw_data,
    input [4:0] WB_rd_addr,

    output [31:0] WB_rd_data_out,
    output [4:0] WB_rd_addr_out,
    output WB_RegWrite_out
);
    assign WB_rd_data_out = (WB_MemtoReg == 1'b0) ? WB_rd_data : WB_lw_data;
    assign WB_rd_addr_out = WB_rd_addr;
    assign WB_RegWrite_out = WB_RegWrite;
    
endmodule