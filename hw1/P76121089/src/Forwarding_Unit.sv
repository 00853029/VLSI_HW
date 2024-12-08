module Forwarding_Unit(
    input MEM_reg_write,
    input WB_reg_write,
    input [4:0] rs1_addr,
    input [4:0] rs2_addr,
    input [4:0] MEM_rd_addr,
    input [4:0] WB_rd_addr,

    output reg [1:0] ForwardRS1Src,
    output reg [1:0] ForwardRS2Src
);

    always_comb begin
        if(MEM_reg_write && (rs1_addr == MEM_rd_addr)) ForwardRS1Src = 2'b01;
        else if(WB_reg_write && (rs1_addr == WB_rd_addr)) ForwardRS1Src = 2'b10;
        else ForwardRS1Src = 2'b00;
    end
    always_comb begin
        if(MEM_reg_write && (rs2_addr == MEM_rd_addr)) ForwardRS2Src = 2'b01;
        else if(WB_reg_write && (rs2_addr == WB_rd_addr)) ForwardRS2Src = 2'b10;
        else ForwardRS2Src = 2'b00;
    end

endmodule