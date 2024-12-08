`include "AXI_define.svh"
`include "AXI_interface_slave.sv"

module Dram_wrapper (
    input clk,
    input rst,

    AXI_interface_slave.slave slave,

    input [`AXI_DATA_BITS - 1:0] Q,
    input VALID,

    output logic CSn,
    output logic [3:0] WEn,
    output logic RASn,
    output logic CASn,
    output logic [10:0] A,
    output logic [`AXI_DATA_BITS - 1:0] D,
    input logic S5_R_fifo_full,
    input logic R_S5_fifo_empty
);
    logic [2:0] delay_cnt;
    logic delay_done;
    logic [2:0] delay_cnt_r;

    always_ff@(posedge clk)begin
	if(rst) delay_cnt_r <= 3'b0;
        else delay_cnt_r <= delay_cnt;
    end	

    
    logic op_r;
    logic [`AXI_IDS_BITS - 1:0] id_r;
    logic [`AXI_LEN_BITS - 1:0] len_r;
    logic [`AXI_SIZE_BITS - 1:0] size_r;
    logic [`AXI_BURST_BITS - 1:0] burst_r;
    logic [`AXI_ADDR_BITS - 1:0] axi_addr_r;
    
    logic [`AXI_DATA_BITS - 1:0] WDATA_r;
    logic [`AXI_DATA_BITS - 1:0] RDATA_r;
    logic [`AXI_STRB_BITS - 1:0] WSTRB_r;
    
    logic [`AXI_LEN_BITS - 1:0] len_cnt;

    localparam DRAM_ROW_ADDR = 11;
    localparam DRAM_COL_ADDR = 10;
    
    logic [DRAM_ROW_ADDR - 1:0] row_prev;

    typedef enum logic [2:0] { IDLE , ACT , READ , WRITE , PRE} state_dram_type;

    localparam  CSn_ENB = 1'b0 , CSn_DIS = 1'b1,
                WEn_ENB = 1'b0 , WEn_DIS = 1'b1,
                RAS_ENB = 1'b0 , RAS_DIS = 1'b1,
                CAS_ENB = 1'b0 , CAS_DIS = 1'b1;

    state_dram_type state_dram , state_next;

    assign delay_done = (state_dram == READ || state_dram == WRITE)? delay_cnt == 3'd6 : delay_cnt == 3'd4;

    logic [DRAM_ROW_ADDR - 1:0] row;
    logic [DRAM_COL_ADDR - 1:0] col;
    logic AW_hs_done;
    logic W_hs_done;
    logic B_hs_done;
    logic AR_hs_done;
    logic R_hs_done;
    assign slave.BID = id_r;
    assign slave.RID = id_r;
    assign slave.BRESP = `AXI_RESP_OKAY;
    assign slave.RDATA = (VALID)?  Q : RDATA_r;
    assign slave.RRESP = `AXI_RESP_OKAY;
    assign slave.RLAST = ((len_cnt >= len_r) & R_hs_done & delay_done);

    assign row = axi_addr_r[22:12];
    assign col = (axi_addr_r[11:2] + len_cnt);

    // //Q register-------------
    // logic [`AXI_DATA_BITS - 1:0] Q_r;
    // always_ff @(posedge clk)begin
    //     if(rst) Q_r <= `AXI_DATA_BITS'b0;
    //     else if(VALID) Q_r <= Q;
    //     else Q_r <= Q_r;
    // end
    // always_comb begin
    //     case({VALID, delay_done})
    //         2'b11: slave.RDATA = Q;
    //         2'b01: slave.RDATA = Q_r;
    //         default: slave.RDATA = RDATA_r;
    //     endcase
    // end
    //--------------------

    assign AW_hs_done = slave.AWVALID & slave.AWREADY;
    assign W_hs_done = slave.WVALID & slave.WREADY;
    assign B_hs_done = slave.BVALID & slave.BREADY;
    assign AR_hs_done = slave.ARVALID & slave.ARREADY;
    assign R_hs_done = slave.RVALID & slave.RREADY;

    always_ff @( posedge clk) begin
        if(rst)begin
            state_dram <= IDLE;
        end
        else begin
            state_dram <= state_next;
        end
    end

    always_comb begin
        case (state_dram)
            IDLE: state_next = (AW_hs_done || AR_hs_done)? ACT : IDLE; 
            ACT: begin
                if(delay_done) state_next = (op_r)? WRITE : (R_hs_done)? READ : ACT;
                else state_next = ACT;
            end
            READ: begin
                if(delay_done) state_next = (slave.RLAST)? PRE : READ;
                else state_next = READ;
            end
            WRITE: state_next = (delay_done)? PRE : WRITE;
            default: state_next = (delay_done)? IDLE : PRE;
        endcase
    end

    always_comb begin
        case (state_dram)
            IDLE: begin
                CSn = CSn_DIS;
                CASn = CAS_DIS;
                RASn = RAS_DIS;
                WEn = {4{WEn_DIS}};
                A = row;
                D = 32'b0;
            end
            ACT: begin
                CSn = CSn_ENB;
                CASn = CAS_DIS;
                RASn = (delay_cnt == 3'b0 & ~S5_R_fifo_full)? RAS_ENB : RAS_DIS;
                WEn = {4{WEn_DIS}};
                A = row;
                D = slave.WDATA;
            end
            READ: begin
                CSn = CSn_ENB;
                CASn = (((delay_cnt == 3'b0) ^ (delay_cnt_r == 3'b0)) & (delay_cnt == 3'b0))? CAS_ENB : CAS_DIS;
                RASn = RAS_DIS;
                WEn = {4{WEn_DIS}};
                A = {1'b0, col};
                D = slave.WDATA;
            end
            WRITE: begin
                CSn = CSn_ENB;
                CASn = (delay_cnt == 3'b0)? CAS_ENB : CAS_DIS;
                RASn = RAS_DIS;
                WEn = (delay_cnt == 3'b0)? slave.WSTRB : {4{WEn_DIS}};
                A = {1'b0, col};
                D = (W_hs_done) ? slave.WDATA : WDATA_r;
            end
            default: begin	//pre
                CSn = CSn_ENB;
                CASn = CAS_DIS;
                RASn = (((delay_cnt == 3'b0) ^ (delay_cnt_r == 3'b0)) & (delay_cnt == 3'b0))? RAS_ENB : RAS_DIS;
                WEn = (delay_cnt == 3'b0)? {4{WEn_ENB}} : {4{WEn_DIS}};
                A = row;
                D = 32'b0;
            end 
        endcase
    end

    always_comb begin
        case (state_dram)
            IDLE: begin
                slave.AWREADY = 1'b1;
                slave.WREADY = 1'b0;
                slave.BVALID = 1'b0;
                slave.ARREADY = ~slave.AWVALID;
                slave.RVALID = 1'b0;
            end 
            ACT: begin
                slave.AWREADY = 1'b0;
                slave.WREADY = 1'b0;
                slave.BVALID = 1'b0;
                slave.ARREADY = 1'b0;
                slave.RVALID = (op_r)? 1'b0 : 1'b1;
            end 
            READ: begin
                slave.AWREADY = 1'b0;
                slave.WREADY = 1'b0;
                slave.BVALID = 1'b0;
                slave.ARREADY = 1'b0;
                slave.RVALID = 1'b1; //VALID
            end 
            WRITE: begin
                slave.AWREADY = 1'b0;
                slave.WREADY = 1'b1;
                slave.BVALID = 1'b0;
                slave.ARREADY = 1'b0;
                slave.RVALID = 1'b0;
            end 
            default: begin //PRE
                slave.AWREADY = 1'b0;
                slave.WREADY = 1'b0;
                slave.BVALID = (delay_cnt == 3'b0)? 1'b1 : 1'b0;
                slave.ARREADY = 1'b0;
                slave.RVALID = 1'b0;
            end 
        endcase
    end

    always_ff @( posedge clk) begin
        if(rst)begin
            id_r <= `AXI_IDS_BITS'd0;
            len_r <= `AXI_LEN_BITS'd0;
            size_r <= `AXI_SIZE_BITS'd0;
            burst_r <= `AXI_BURST_BITS'd0;
            axi_addr_r <= `AXI_ADDR_BITS'd0;
            op_r <= 1'b0;

            WDATA_r <= `AXI_DATA_BITS'd0;
            RDATA_r <= `AXI_DATA_BITS'd0;
        end
        else begin
            id_r <= (AW_hs_done)? slave.AWID : (AR_hs_done)? slave.ARID : id_r;
            len_r <= (AW_hs_done)? slave.AWLEN : (AR_hs_done)? slave.ARLEN : len_r;
            size_r <= (AW_hs_done)? slave.AWSIZE : (AR_hs_done)? slave.ARSIZE : size_r;
            burst_r <= (AW_hs_done)? slave.AWBURST : (AR_hs_done)? slave.ARBURST : burst_r;
            axi_addr_r <= (AW_hs_done)? slave.AWADDR : (AR_hs_done)? slave.ARADDR : axi_addr_r;
            op_r <= (AW_hs_done)? 1'b1 : (AR_hs_done)? 1'b0 : op_r;
            
            WDATA_r <= (W_hs_done) ? slave.WDATA : WDATA_r;
            RDATA_r <= (VALID)? Q : RDATA_r;
            //row_prev <= (AW_hs_done | AR_hs_done)? row : row_prev;
            //WSTRB_r <= (W_hs_done)? slave.WSTRB : WSTRB_r; 
        end
    end

    always_ff @( posedge clk) begin 
        if(rst)begin
            delay_cnt <= 3'b0;
            len_cnt <= `AXI_LEN_BITS'b0;
        end
        else begin
            delay_cnt <= (S5_R_fifo_full & VALID )? delay_cnt:((delay_done) || (state_dram == IDLE))? 3'd0 :  (delay_cnt + 3'd1) ; //***Genius***//
            len_cnt <= ((len_cnt >= len_r) & R_hs_done & delay_done) ?`AXI_LEN_BITS'b0 : (slave.R_hs_done)? (len_cnt + `AXI_LEN_BITS'b1) : len_cnt; //check data is VALID
        end
    end


    assign slave.R_hs_done = (state_dram==READ) & R_hs_done & delay_done;
endmodule
