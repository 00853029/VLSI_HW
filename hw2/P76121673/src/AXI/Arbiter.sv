`include "AXI_define.svh"
module Arbiter(
	input clk,
	input rst,
    input [`AXI_ID_BITS-1:0] ID_master0,
    input [`AXI_ADDR_BITS-1:0] ADDR_master0,
    input [`AXI_LEN_BITS-1:0] LEN_master0,
    input [`AXI_SIZE_BITS-1:0] SIZE_master0,
    input [1:0] BURST_master0,
    input VALID_master0,

    input [`AXI_ID_BITS-1:0] ID_master1,
    input [`AXI_ADDR_BITS-1:0] ADDR_master1,
    input [`AXI_LEN_BITS-1:0] LEN_master1,
    input [`AXI_SIZE_BITS-1:0] SIZE_master1,
    input [1:0] BURST_master1,
    input VALID_master1,

    input READY_S,

    // output
    output logic [`AXI_IDS_BITS-1:0] IDS_M,
    output logic [`AXI_ADDR_BITS-1:0] ADDR_M,
    output logic [`AXI_LEN_BITS-1:0] LEN_M,
    output logic [`AXI_SIZE_BITS-1:0] SIZE_M,
    output logic [1:0] BURST_M,
    output logic VALID_M,

    output logic READY_M0,
    output logic READY_M1
);
    logic [1:0] master_sel;
	logic reg_VALID_M1, reg_VALID_M0;
	
	/*always_ff @(posedge clk or negedge rst)begin
		if(~rst)begin
            reg_VALID_M1 <= 1'b0;
            reg_VALID_M0 <= 1'b0;
        end
		else begin
			reg_VALID_M1 <= VALID_master1;
			reg_VALID_M0 <= VALID_master0;
		end
	end
	
    always_comb begin
        if (VALID_master1 | reg_VALID_M1)
            master_sel = 2'b10;
        else if(VALID_master0 | reg_VALID_M0)
            master_sel = 2'b01;
        else
            master_sel = 2'b00;
    end*/
	logic LockM0;
    logic LockM1;
	always_ff@(posedge clk or negedge rst) begin
        if(~rst)begin
            LockM0 <= 1'b0;
            LockM1 <= 1'b0;
        end
        else begin
            LockM0 <= (LockM0 & READY_S) ? 1'b0 : (~VALID_master1 & VALID_master0 & ~READY_S) ? 1'b1 : LockM0;
            LockM1 <= (LockM1 & READY_S) ? 1'b0 : (VALID_master1 & ~LockM0  & ~READY_S) ? 1'b1 : LockM1;
        end
    end

    always_comb begin
        if((VALID_master1 & ~LockM0) | LockM1)
            master_sel = 2'b10;
        else if (VALID_master0 | LockM0)
            master_sel = 2'b01;
        else
            master_sel = 2'b00;

    end

    always_comb begin
        case(master_sel)
            2'b01: begin
                IDS_M = {4'b0001, ID_master0};
                ADDR_M = ADDR_master0;
                LEN_M = LEN_master0;
                SIZE_M = SIZE_master0;
                BURST_M = BURST_master0;
                VALID_M = VALID_master0;

                READY_M0 = READY_S & VALID_master0;
                READY_M1 = 1'b0;
            end
            2'b10: begin
                IDS_M = {4'b0010, ID_master1};
                ADDR_M = ADDR_master1;
                LEN_M = LEN_master1;
                SIZE_M = SIZE_master1;
                BURST_M = BURST_master1;
                VALID_M = VALID_master1;

                READY_M0 = 1'b0;
                READY_M1 = READY_S & VALID_master1;
            end
            default: begin
                IDS_M = {4'b0000, `AXI_ID_BITS'b0};
                ADDR_M = `AXI_ADDR_BITS'b0;
                LEN_M = `AXI_LEN_BITS'b0;
                SIZE_M = `AXI_SIZE_BITS'b0;
                BURST_M = 2'b0;
                VALID_M = 1'b0;

                READY_M0 = 1'b0;
                READY_M1 = 1'b0;
            end
        endcase
    end

endmodule