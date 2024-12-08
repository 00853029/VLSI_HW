`include "AXI_define.svh"
module WR(
    input [`AXI_IDS_BITS-1:0] BID_slave0, BID_slave1, BID_slaveDefault,
    input [1:0] BRESP_slave0, BRESP_slave1, BRESP_slaveDefault,
    input BVALID_slave0, BVALID_slave1, BVALID_slaveDefault,

    output logic [`AXI_ID_BITS-1:0] BID_master1,
    output logic [1:0] BRESP_master1,
    output logic BVALID_master1,


    input BREADY_master1,

    output logic BREADY_MtoS0, BREADY_MtoS1, BREADY_MtoSDefault
);
logic [`AXI_ID_BITS-1:0] BID_M;
logic [1:0] BRESP_M;
logic BVALID_M;
logic READY;

assign BID_master1 = BID_M;
assign BRESP_master1 = BRESP_M;

logic [2:0] slave_sel;
logic [1:0] master;
always_comb begin
	if(BVALID_slaveDefault) slave_sel = 3'b001;
    else if(BVALID_slave1) slave_sel = 3'b010;
    else if(BVALID_slave0) slave_sel = 3'b100;
    else slave_sel = 3'b000;
end
always_comb begin
	case(master)
		2'b10: begin
			READY = BREADY_master1;
			BVALID_master1 = BVALID_M;
		end
		default: begin
			READY = 1'b1;
			BVALID_master1 = 1'b0;
		end
	endcase
end
always_comb begin
    case(slave_sel)
        3'b100:begin
			master = BID_slave0[5:4];
            BID_M = BID_slave0[`AXI_ID_BITS-1:0];
            BRESP_M = BRESP_slave0;
            BVALID_M = BVALID_slave0;

            BREADY_MtoS0 = READY & BVALID_slave0;
            BREADY_MtoS1 = 1'b0;
            BREADY_MtoSDefault = 1'b0;
        end
        3'b010:begin
			master = BID_slave1[5:4];
            BID_M = BID_slave1[`AXI_ID_BITS-1:0];
            BRESP_M = BRESP_slave1;
            BVALID_M = BVALID_slave1;

            BREADY_MtoS0 = 1'b0;
            BREADY_MtoS1 = READY & BVALID_slave1;
            BREADY_MtoSDefault = 1'b0;
        end
        3'b001:begin
			master = BID_slaveDefault[5:4];
            BID_M = BID_slaveDefault[`AXI_ID_BITS-1:0];
            BRESP_M = BRESP_slaveDefault;
            BVALID_M = BVALID_slaveDefault;

            BREADY_MtoS0 = 1'b0;
            BREADY_MtoS1 = 1'b0;
            BREADY_MtoSDefault = READY & BVALID_slaveDefault;
        end
        default:begin
			master = 2'b0;
            BID_M = `AXI_ID_BITS'b0;
            BRESP_M = 2'b0;
            BVALID_M = 1'b0;

            BREADY_MtoS0 = 1'b0;
            BREADY_MtoS1 = 1'b0;
            BREADY_MtoSDefault = 1'b0;
        end
    endcase
end

endmodule