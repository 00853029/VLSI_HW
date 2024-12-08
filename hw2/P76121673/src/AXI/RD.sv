`include "AXI_define.svh"
module RD(
    input clk,
    input rst,
    input [`AXI_IDS_BITS-1:0] RID_slave0, RID_slave1,RID_slaveDefault,
    input [`AXI_DATA_BITS-1:0] RDATA_slave0,RDATA_slave1, RDATA_slaveDefault,
    input [1:0] RRESP_slave0, RRESP_slave1, RRESP_slaveDefault,
    input RLAST_slave0, RLAST_slave1, RLAST_slaveDefault,
    input RVALID_slave0, RVALID_slave1, RVALID_slaveDefault,

    output logic [`AXI_ID_BITS-1:0] RID_master0, RID_master1,
    output logic [`AXI_DATA_BITS-1:0] RDATA_master0,RDATA_master1,
    output logic [1:0] RRESP_master0, RRESP_master1,
    output logic RLAST_master0, RLAST_master1,
    output logic RVALID_master0, RVALID_master1,

    input RREADY_master0, RREADY_master1,

    output logic RREADY_MtoS0, RREADY_MtoS1, RREADY_MtoSDefault
);

    logic [`AXI_IDS_BITS -1:0] RID_S;
    logic [`AXI_DATA_BITS-1:0] RDATA_S;
    logic [1:0] RRESP_S;
    logic RLAST_S;
    logic RVALID_S;

    logic RREADY_M;

    assign {RID_master0, RID_master1} = {RID_S[`AXI_ID_BITS-1:0], RID_S[`AXI_ID_BITS-1:0]};
    assign {RDATA_master0,RDATA_master1} = {RDATA_S, RDATA_S};
    assign {RRESP_master0, RRESP_master1} = {RRESP_S, RRESP_S};
    assign {RLAST_master0, RLAST_master1} = {RLAST_S, RLAST_S};
    

    logic [2:0] slave_sel;
    logic [1:0] master_sel;
	//-------------------------------------
	logic lock_s0;
    logic lock_s1;
    logic lock_s2;
	always_ff@(posedge clk or negedge rst) begin
        if(~rst) begin
            lock_s0 <= 1'b0;
            lock_s1 <= 1'b0;
            lock_s2 <= 1'b0;
        end
        else begin
            lock_s0 <= (/*lock_s0 &*/ RREADY_M & RLAST_slave0)? 1'b0 : (RVALID_slave0 & ~RVALID_slave1 & ~RVALID_slaveDefault/* & ~READY_M*/) ? 1'b1 : lock_s0;
            lock_s1 <= (/*lock_s1 &*/ RREADY_M & RLAST_slave1)? 1'b0 : (~lock_s0 & RVALID_slave1 & ~RVALID_slaveDefault/* & ~READY_M*/) ? 1'b1 : lock_s1;
            lock_s2 <= (/*lock_s2 &*/ RREADY_M & RLAST_slaveDefault)? 1'b0 : (~lock_s0 & ~lock_s1 & RVALID_slaveDefault/* & ~READY_M*/) ? 1'b1 : lock_s2;
        end
    end

    always_comb begin
        if((RVALID_slaveDefault & ~(lock_s1 | lock_s0)) | lock_s2) slave_sel = 3'b001;
        else if ((RVALID_slave1 & ~lock_s0) | lock_s1) slave_sel = 3'b010;
        else if (RVALID_slave0 | lock_s0) slave_sel = 3'b100;
        else slave_sel = 3'b0;
	
	
    //always_comb begin
    //    if(RVALID_slave0)  slave_sel = 3'b100;
    //    else if(RVALID_slave1) slave_sel = 3'b010;
    //    else if(RVALID_slaveDefault) slave_sel = 3'b001;
    //    else slave_sel = 3'b000;
    end
    always_comb begin
        case(master_sel)
            2'b01: begin    //master 0
                RREADY_M = RREADY_master0;
                RVALID_master0 = RVALID_S;
                RVALID_master1 = 1'b0;
            end
            2'b10: begin    //master 1
                RREADY_M = RREADY_master1;
                RVALID_master0 = 1'b0;
                RVALID_master1 = RVALID_S;
            end
            default: begin
                RREADY_M = 1'b0;
                RVALID_master0 = 1'b0;
                RVALID_master1 = 1'b0;
            end
        endcase
    end
    always_comb begin
        case(slave_sel)
            3'b100:begin
                master_sel = RID_slave0[5:4];   //arbiter set the ids
                RID_S = RID_slave0;
                RDATA_S = RDATA_slave0;
                RRESP_S = RRESP_slave0;
                RLAST_S = RLAST_slave0;
                RVALID_S = RVALID_slave0;

                RREADY_MtoS0 = RREADY_M & RVALID_slave0;
                RREADY_MtoS1 = 1'b0;
                RREADY_MtoSDefault = 1'b0;
            end
            3'b010:begin
                master_sel = RID_slave1[5:4];
                RID_S = RID_slave1;
                RDATA_S = RDATA_slave1;
                RRESP_S = RRESP_slave1;
                RLAST_S = RLAST_slave1;
                RVALID_S = RVALID_slave1;

                RREADY_MtoS0 = 1'b0;
                RREADY_MtoS1 = RREADY_M & RVALID_slave1;
                RREADY_MtoSDefault = 1'b0;
            end
            3'b001:begin
                master_sel = RID_slaveDefault[5:4];
                RID_S = RID_slaveDefault;
                RDATA_S = RDATA_slaveDefault;
                RRESP_S = RRESP_slaveDefault;
                RLAST_S = RLAST_slaveDefault;
                RVALID_S = RVALID_slaveDefault;

                RREADY_MtoS0 = 1'b0;
                RREADY_MtoS1 = 1'b0;
                RREADY_MtoSDefault = RREADY_M & RVALID_slaveDefault;
            end
            default:begin
                master_sel = 2'b00;
                RID_S = `AXI_IDS_BITS'b0;
                RDATA_S = `AXI_DATA_BITS'b0;
                RRESP_S = 2'b0;
                RLAST_S = 1'b0;
                RVALID_S = 1'b0;
				RREADY_MtoS0 = 1'b0;
                RREADY_MtoS1 = 1'b0;
                RREADY_MtoSDefault = 1'b0;
            end
        endcase
    end
endmodule