`include "AXI_define.svh"
module RD(
    input clk,
    input rst,
    input [`AXI_IDS_BITS-1:0] RID_slave0, RID_slave1, RID_slave2,  RID_slave3, RID_slave4, RID_slave5, RID_slaveDefault,
    input [`AXI_DATA_BITS-1:0] RDATA_slave0,RDATA_slave1, RDATA_slave2, RDATA_slave3,RDATA_slave4, RDATA_slave5, RDATA_slaveDefault,
    input [1:0] RRESP_slave0, RRESP_slave1, RRESP_slave2, RRESP_slave3, RRESP_slave4, RRESP_slave5, RRESP_slaveDefault,
    input RLAST_slave0, RLAST_slave1, RLAST_slave2, RLAST_slave3, RLAST_slave4, RLAST_slave5, RLAST_slaveDefault,
    input RVALID_slave0, RVALID_slave1, RVALID_slave2, RVALID_slave3, RVALID_slave4, RVALID_slave5, RVALID_slaveDefault,

    output logic [`AXI_ID_BITS-1:0] RID_master0, RID_master1,
    output logic [`AXI_DATA_BITS-1:0] RDATA_master0,RDATA_master1,
    output logic [1:0] RRESP_master0, RRESP_master1,
    output logic RLAST_master0, RLAST_master1,
    output logic RVALID_master0, RVALID_master1,

    input RREADY_master0, RREADY_master1,

    output logic RREADY_MtoS0, RREADY_MtoS1, RREADY_MtoS2, RREADY_MtoS3, RREADY_MtoS4, RREADY_MtoS5, RREADY_MtoSDefault,

    input R_hs_done_slave0, R_hs_done_slave1, R_hs_done_slave2, R_hs_done_slave3, R_hs_done_slave4, R_hs_done_slave5,

    input ARVALID_slave0,
    input ARVALID_slave1,
    input ARVALID_slave2,
    input ARVALID_slave3,
    input ARVALID_slave4,
    input ARVALID_slave5,
    input ARVALID_slaveDefault
	
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
    

    logic [6:0] slave_sel;
    logic [1:0] master_sel;
	//-------------------------------------//***naughty***//
	// logic lock_s0;
    // logic lock_s1;
    // logic lock_s2;
	// always_ff@(posedge clk or negedge rst) begin
    //     if(~rst) begin
    //         lock_s0 <= 1'b0;
    //         lock_s1 <= 1'b0;
    //         lock_s2 <= 1'b0;
    //     end
    //     else begin
    //         lock_s0 <= (/*lock_s0 &*/ RREADY_M & RLAST_slave0)? 1'b0 : (RVALID_slave0 & ~RVALID_slave1 & ~RVALID_slaveDefault/* & ~READY_M*/) ? 1'b1 : lock_s0;
    //         lock_s1 <= (/*lock_s1 &*/ RREADY_M & RLAST_slave1)? 1'b0 : (~lock_s0 & RVALID_slave1 & ~RVALID_slaveDefault/* & ~READY_M*/) ? 1'b1 : lock_s1;
    //         lock_s2 <= (/*lock_s2 &*/ RREADY_M & RLAST_slaveDefault)? 1'b0 : (~lock_s0 & ~lock_s1 & RVALID_slaveDefault/* & ~READY_M*/) ? 1'b1 : lock_s2;
    //     end
    // end

    // always_comb begin
    //     if((RVALID_slaveDefault & ~(lock_s1 | lock_s0)) | lock_s2) slave_sel = 3'b001;
    //     else if ((RVALID_slave1 & ~lock_s0) | lock_s1) slave_sel = 3'b010;
    //     else if (RVALID_slave0 | lock_s0) slave_sel = 3'b100;
    //     else slave_sel = 3'b0;
    // end
    /*logic lock_s0;
    logic lock_s1;
    logic lock_s2;
    logic lock_s3;
    logic lock_s4;
    logic lock_s5;
    logic lock_sdefault;
    always_ff@(posedge clk) begin
        if(rst) begin
            lock_s0 <= 1'b0;
            lock_s1 <= 1'b0;
            lock_s2 <= 1'b0;
            lock_s3 <= 1'b0;
            lock_s4 <= 1'b0;
            lock_s5 <= 1'b0;
            lock_sdefault <= 1'b0;
        end
        else begin
            lock_s0       <= (lock_s0 & RREADY_M & RLAST_slave0)?             1'b0 : (RVALID_slave0 & ~RVALID_slave1 & ~RVALID_slave2 & ~RVALID_slave3 & ~RVALID_slave4 & ~RVALID_slave5 & ~RVALID_slaveDefault & ~RREADY_M) ? 1'b1 : lock_s0;
            lock_s1       <= (lock_s1 & RREADY_M & RLAST_slave1)?             1'b0 : (~lock_s0  &  RVALID_slave1 & ~RVALID_slave2 & ~RVALID_slave3 & ~RVALID_slave4 & ~RVALID_slave5 & ~RVALID_slaveDefault & ~RREADY_M) ? 1'b1 : lock_s1;
            lock_s2       <= (lock_s2 & RREADY_M & RLAST_slave2)?             1'b0 : (~lock_s0  & ~lock_s1   & RVALID_slave2  & ~RVALID_slave3 & ~RVALID_slave4 & ~RVALID_slave5 & ~RVALID_slaveDefault & ~RREADY_M) ? 1'b1 : lock_s2;
            lock_s3       <= (lock_s3 & RREADY_M & RLAST_slave3)?             1'b0 : (~lock_s0  & ~lock_s1   & ~lock_s2   & RVALID_slave3  & ~RVALID_slave4 & ~RVALID_slave5 & ~RVALID_slaveDefault & ~RREADY_M) ? 1'b1 : lock_s3;
            lock_s4       <= (lock_s4 & RREADY_M & RLAST_slave4)?             1'b0 : (~lock_s0  & ~lock_s1   & ~lock_s2   & ~lock_s3 & RVALID_slave4 & ~RVALID_slave5   & ~RVALID_slaveDefault & ~RREADY_M) ? 1'b1 : lock_s4;
            lock_s5       <= (lock_s5 & RREADY_M & RLAST_slave5)?             1'b0 : (~lock_s0  & ~lock_s1   & ~lock_s2   & ~lock_s3  & ~lock_s4 & RVALID_slave5 & ~RVALID_slaveDefault & ~RREADY_M) ? 1'b1 : lock_s5;
            lock_sdefault <= (lock_sdefault & RREADY_M & RLAST_slaveDefault)? 1'b0 : (~lock_s0  & ~lock_s1   & ~lock_s2   & ~lock_s3   & ~lock_s4  & ~lock_s5 & RVALID_slaveDefault & ~RREADY_M) ? 1'b1 : lock_sdefault;
        end
    end
    //================
    always_comb begin
       if((RVALID_slaveDefault & ~(lock_s5 | lock_s4 | lock_s3 | lock_s2 | lock_s1 | lock_s0)) | lock_sdefault)  slave_sel = 7'b0000001;
       else if((RVALID_slave5 & ~(lock_s4 | lock_s3 | lock_s2 | lock_s1 | lock_s0)) | lock_s5) slave_sel = 7'b0000010;
       else if((RVALID_slave4 & ~(lock_s3 | lock_s2 | lock_s1 | lock_s0)) | lock_s4) slave_sel = 7'b0000100;
       else if((RVALID_slave3 & ~(lock_s2 | lock_s1 | lock_s0)) | lock_s3) slave_sel = 7'b0001000;
       else if((RVALID_slave2 & ~(lock_s1 | lock_s0)) | lock_s2) slave_sel = 7'b0010000;
       else if((RVALID_slave1 & ~(lock_s0)) | lock_s1) slave_sel = 7'b0100000;
       else if(RVALID_slave0 | lock_s0) slave_sel = 7'b1000000;
       else slave_sel = 7'b0;
    end*/
    /*always_comb begin
       if(RVALID_slaveDefault)  slave_sel = 7'b0000001;
       else if(RVALID_slave5) slave_sel = 7'b0000010;
       else if(RVALID_slave4) slave_sel = 7'b0000100;
       else if(RVALID_slave3) slave_sel = 7'b0001000;
       else if(RVALID_slave2) slave_sel = 7'b0010000;
       else if(RVALID_slave1) slave_sel = 7'b0100000;
       else if(RVALID_slave0) slave_sel = 7'b1000000;
       else slave_sel = 7'b0;
    end*/

	/*
    always_comb begin
       if(RVALID_slaveDefault)  slave_sel = 7'b0000001;
       else if(RVALID_slave2) slave_sel = 7'b0010000;
       else if(RVALID_slave1) slave_sel = 7'b0100000;
       else if(RVALID_slave4) slave_sel = 7'b0000100;
       else if(RVALID_slave3) slave_sel = 7'b0001000;
       else if(RVALID_slave0) slave_sel = 7'b1000000;
       else if(RVALID_slave5) slave_sel = 7'b0000010;
       else slave_sel = 7'b0;
    end
	*/

logic reg_RVALID_S0, reg_RVALID_S1, reg_RVALID_S2, reg_RVALID_S3, reg_RVALID_S4, reg_RVALID_S5, reg_RVALID_SDEFAULT;
    assign slave_sel = {(reg_RVALID_S0), (reg_RVALID_S1),(reg_RVALID_S2),(reg_RVALID_S3),(reg_RVALID_S4),(reg_RVALID_S5 ), (reg_RVALID_SDEFAULT)};
always_ff @(posedge clk) begin
    if(rst) begin
        reg_RVALID_S0 <= 1'b0;
        reg_RVALID_S1 <= 1'b0;
        reg_RVALID_S2 <= 1'b0;
        reg_RVALID_S3 <= 1'b0;
        reg_RVALID_S4 <= 1'b0;
        reg_RVALID_S5 <= 1'b0;
        reg_RVALID_SDEFAULT <= 1'b0;
    end else begin
        reg_RVALID_S0 <= (ARVALID_slave0)? 1'b1:((RLAST_slave0 & R_hs_done_slave0)? 1'b0:reg_RVALID_S0);
        reg_RVALID_S1 <= (ARVALID_slave1)? 1'b1:((RLAST_slave1 & R_hs_done_slave1)? 1'b0:reg_RVALID_S1);
        reg_RVALID_S2 <= (ARVALID_slave2)? 1'b1:((RLAST_slave2 & R_hs_done_slave2)? 1'b0:reg_RVALID_S2);
        reg_RVALID_S3 <= (ARVALID_slave3)? 1'b1:((RLAST_slave3 & R_hs_done_slave3)? 1'b0:reg_RVALID_S3);
        reg_RVALID_S4 <= (ARVALID_slave4)? 1'b1:((RLAST_slave4 & R_hs_done_slave4)? 1'b0:reg_RVALID_S4);
        reg_RVALID_S5 <= (ARVALID_slave5)? 1'b1:((RLAST_slave5 & R_hs_done_slave5)? 1'b0:reg_RVALID_S5);
        reg_RVALID_SDEFAULT <= (ARVALID_slaveDefault)? 1'b1:((RLAST_slaveDefault)? 1'b0:reg_RVALID_SDEFAULT);
    end
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
	if(slave_sel[4] == 1'b1)begin
		master_sel = RID_slave2[5:4];
                RID_S = RID_slave2;
                RDATA_S = RDATA_slave2;
                RRESP_S = RRESP_slave2;
                RLAST_S = RLAST_slave2;
                RVALID_S = (R_hs_done_slave2) ? 1'b1 : 1'b0;

                RREADY_MtoS0 = 1'b0;
                RREADY_MtoS1 = 1'b0;
                RREADY_MtoS2 = RREADY_M;
                RREADY_MtoS3 = 1'b0;
                RREADY_MtoS4 = 1'b0;
                RREADY_MtoS5 = 1'b0;
                RREADY_MtoSDefault = 1'b0;
	end
	else if(slave_sel[3] == 1'b1)begin
		 master_sel = RID_slave3[5:4];
                RID_S = RID_slave3;
                RDATA_S = RDATA_slave3;
                RRESP_S = RRESP_slave3;
                RLAST_S = RLAST_slave3;
                RVALID_S = (R_hs_done_slave3) ? 1'b1 : 1'b0;

                RREADY_MtoS0 = 1'b0;
                RREADY_MtoS1 = 1'b0;
                RREADY_MtoS2 = 1'b0;
                RREADY_MtoS3 = RREADY_M;
                RREADY_MtoS4 = 1'b0;
                RREADY_MtoS5 = 1'b0;
                RREADY_MtoSDefault = 1'b0;
	end
	else if(slave_sel[5] == 1'b1)begin
		master_sel = RID_slave1[5:4];
                RID_S = RID_slave1;
                RDATA_S = RDATA_slave1;
                RRESP_S = RRESP_slave1;
                RLAST_S = RLAST_slave1;
                RVALID_S = (R_hs_done_slave1) ? 1'b1 : 1'b0;

                RREADY_MtoS0 = 1'b0;
                RREADY_MtoS1 = RREADY_M;
                RREADY_MtoS2 = 1'b0;
                RREADY_MtoS3 = 1'b0;
                RREADY_MtoS4 = 1'b0;
                RREADY_MtoS5 = 1'b0;
                RREADY_MtoSDefault = 1'b0;
	end
	else if(slave_sel[2] == 1'b1)begin
		master_sel = RID_slave4[5:4];
                RID_S = RID_slave4;
                RDATA_S = RDATA_slave4;
                RRESP_S = RRESP_slave4;
                RLAST_S = RLAST_slave4;
                RVALID_S = (R_hs_done_slave4) ? 1'b1 : 1'b0;

                RREADY_MtoS0 = 1'b0;
                RREADY_MtoS1 = 1'b0;
                RREADY_MtoS2 = 1'b0;
                RREADY_MtoS3 = 1'b0;
                RREADY_MtoS4 = RREADY_M;
                RREADY_MtoS5 = 1'b0;
                RREADY_MtoSDefault = 1'b0;
	end
	else if(slave_sel[6] == 1'b1)begin
		master_sel = RID_slave0[5:4];   //arbiter set the ids
                RID_S = RID_slave0;
                RDATA_S = RDATA_slave0;
                RRESP_S = RRESP_slave0;
                RLAST_S = RLAST_slave0;
                RVALID_S = (R_hs_done_slave0) ? 1'b1 : 1'b0;

                RREADY_MtoS0 = RREADY_M;
                RREADY_MtoS1 = 1'b0;
                RREADY_MtoS2 = 1'b0;
                RREADY_MtoS3 = 1'b0;
                RREADY_MtoS4 = 1'b0;
                RREADY_MtoS5 = 1'b0;
                RREADY_MtoSDefault = 1'b0;
	end
	else if(slave_sel[1] == 1'b1)begin
		master_sel = RID_slave5[5:4];
                RID_S = RID_slave5;
                RDATA_S = RDATA_slave5;
                RRESP_S = RRESP_slave5;
                RLAST_S = RLAST_slave5;
                RVALID_S = (R_hs_done_slave5) ? 1'b1 : 1'b0;

                RREADY_MtoS0 = 1'b0;
                RREADY_MtoS1 = 1'b0;
                RREADY_MtoS2 = 1'b0;
                RREADY_MtoS3 = 1'b0;
                RREADY_MtoS4 = 1'b0;
                RREADY_MtoS5 = RREADY_M;
                RREADY_MtoSDefault = 1'b0;
	end
	else begin
            	master_sel = RID_slaveDefault[5:4];
                RID_S = RID_slaveDefault;
                RDATA_S = RDATA_slaveDefault;
                RRESP_S = RRESP_slaveDefault;
                RLAST_S = RLAST_slaveDefault;
                RVALID_S = RVALID_slaveDefault;

                RREADY_MtoS0 = 1'b0;
                RREADY_MtoS1 = 1'b0;
                RREADY_MtoS2 = 1'b0;
                RREADY_MtoS3 = 1'b0;
                RREADY_MtoS4 = 1'b0;
                RREADY_MtoS5 = 1'b0;
                RREADY_MtoSDefault = RREADY_M;
	end
end
/*
    always_comb begin
        case(slave_sel)
            7'b1000000:begin
                master_sel = RID_slave0[5:4];   //arbiter set the ids
                RID_S = RID_slave0;
                RDATA_S = RDATA_slave0;
                RRESP_S = RRESP_slave0;
                RLAST_S = RLAST_slave0;
                RVALID_S = (R_hs_done_slave0) ? RVALID_slave0 : 1'b0;

                RREADY_MtoS0 = RREADY_M;
                RREADY_MtoS1 = 1'b0;
                RREADY_MtoS2 = 1'b0;
                RREADY_MtoS3 = 1'b0;
                RREADY_MtoS4 = 1'b0;
                RREADY_MtoS5 = 1'b0;
                RREADY_MtoSDefault = 1'b0;
            end
            7'b0100000:begin
                master_sel = RID_slave1[5:4];
                RID_S = RID_slave1;
                RDATA_S = RDATA_slave1;
                RRESP_S = RRESP_slave1;
                RLAST_S = RLAST_slave1;
                RVALID_S = (R_hs_done_slave1) ? RVALID_slave1 : 1'b0;

                RREADY_MtoS0 = 1'b0;
                RREADY_MtoS1 = RREADY_M;
                RREADY_MtoS2 = 1'b0;
                RREADY_MtoS3 = 1'b0;
                RREADY_MtoS4 = 1'b0;
                RREADY_MtoS5 = 1'b0;
                RREADY_MtoSDefault = 1'b0;
            end
            7'b0010000:begin
                master_sel = RID_slave2[5:4];
                RID_S = RID_slave2;
                RDATA_S = RDATA_slave2;
                RRESP_S = RRESP_slave2;
                RLAST_S = RLAST_slave2;
                RVALID_S = (R_hs_done_slave2) ? RVALID_slave2 : 1'b0;

                RREADY_MtoS0 = 1'b0;
                RREADY_MtoS1 = 1'b0;
                RREADY_MtoS2 = RREADY_M;
                RREADY_MtoS3 = 1'b0;
                RREADY_MtoS4 = 1'b0;
                RREADY_MtoS5 = 1'b0;
                RREADY_MtoSDefault = 1'b0;
            end
            7'b0001000: begin
                master_sel = RID_slave3[5:4];
                RID_S = RID_slave3;
                RDATA_S = RDATA_slave3;
                RRESP_S = RRESP_slave3;
                RLAST_S = RLAST_slave3;
                RVALID_S = (R_hs_done_slave3) ? RVALID_slave3 : 1'b0;

                RREADY_MtoS0 = 1'b0;
                RREADY_MtoS1 = 1'b0;
                RREADY_MtoS2 = 1'b0;
                RREADY_MtoS3 = RREADY_M;
                RREADY_MtoS4 = 1'b0;
                RREADY_MtoS5 = 1'b0;
                RREADY_MtoSDefault = 1'b0;
            end
            7'b0000100: begin
                master_sel = RID_slave4[5:4];
                RID_S = RID_slave4;
                RDATA_S = RDATA_slave4;
                RRESP_S = RRESP_slave4;
                RLAST_S = RLAST_slave4;
                RVALID_S = (R_hs_done_slave4) ? RVALID_slave4 : 1'b0;

                RREADY_MtoS0 = 1'b0;
                RREADY_MtoS1 = 1'b0;
                RREADY_MtoS2 = 1'b0;
                RREADY_MtoS3 = 1'b0;
                RREADY_MtoS4 = RREADY_M;
                RREADY_MtoS5 = 1'b0;
                RREADY_MtoSDefault = 1'b0;
            end
            7'b0000010: begin
                master_sel = RID_slave5[5:4];
                RID_S = RID_slave5;
                RDATA_S = RDATA_slave5;
                RRESP_S = RRESP_slave5;
                RLAST_S = RLAST_slave5;
                RVALID_S = (R_hs_done_slave5) ? RVALID_slave5 : 1'b0;

                RREADY_MtoS0 = 1'b0;
                RREADY_MtoS1 = 1'b0;
                RREADY_MtoS2 = 1'b0;
                RREADY_MtoS3 = 1'b0;
                RREADY_MtoS4 = 1'b0;
                RREADY_MtoS5 = RREADY_M;
                RREADY_MtoSDefault = 1'b0;
            end
            7'b0000001: begin
                master_sel = RID_slaveDefault[5:4];
                RID_S = RID_slaveDefault;
                RDATA_S = RDATA_slaveDefault;
                RRESP_S = RRESP_slaveDefault;
                RLAST_S = RLAST_slaveDefault;
                RVALID_S = RVALID_slaveDefault;

                RREADY_MtoS0 = 1'b0;
                RREADY_MtoS1 = 1'b0;
                RREADY_MtoS2 = 1'b0;
                RREADY_MtoS3 = 1'b0;
                RREADY_MtoS4 = 1'b0;
                RREADY_MtoS5 = 1'b0;
                RREADY_MtoSDefault = RREADY_M;
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
		    RREADY_MtoS2 = 1'b0;
                RREADY_MtoS3 = 1'b0;
                RREADY_MtoS4 = 1'b0;
                RREADY_MtoS5 = 1'b0;
                RREADY_MtoSDefault = 1'b0;
            end
        endcase
    end
*/
endmodule
