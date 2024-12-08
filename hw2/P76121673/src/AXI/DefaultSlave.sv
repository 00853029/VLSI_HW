`include "sram_wrapper_pkg.sv"
`include "AXI_define.svh"

module DefaultSlave
  import sram_wrapper_pkg::*;
  (
    input logic clk,
    input logic rstn,
    // AWx
	input logic [`AXI_IDS_BITS-1:0] AWID_S,
	input logic [`AXI_ADDR_BITS-1:0] AWADDR_S,
	input logic [`AXI_LEN_BITS-1:0] AWLEN_S,
	input logic [`AXI_SIZE_BITS-1:0] AWSIZE_S,
	input logic [1:0] AWBURST_S,
	input logic AWVALID_S,
	output logic AWREADY_S,
	// Wx
	input logic [`AXI_DATA_BITS-1:0] WDATA_S,
	input logic [`AXI_STRB_BITS-1:0] WSTRB_S,
	input logic WLAST_S,
	input logic WVALID_S,
	output logic WREADY_S,
	// Bx
	output logic [`AXI_IDS_BITS-1:0] BID_S,
	output logic [1:0] BRESP_S,
	output logic BVALID_S,
	input logic BREADY_S,
	// ARx
	input logic [`AXI_IDS_BITS-1:0] ARID_S,
	input logic [`AXI_ADDR_BITS-1:0] ARADDR_S,
	input logic [`AXI_LEN_BITS-1:0] ARLEN_S,
	input logic [`AXI_SIZE_BITS-1:0] ARSIZE_S,
	input logic [1:0] ARBURST_S,
	input logic ARVALID_S,
	output logic ARREADY_S,
	// Rx
	output logic [`AXI_IDS_BITS-1:0] RID_S,
	output logic [`AXI_DATA_BITS-1:0] RDATA_S,
	output logic [1:0] RRESP_S,
	output logic RLAST_S,
	output logic RVALID_S,
	input logic RREADY_S
);

// SRAM module
// logic [13:0] A;
// logic [`AXI_DATA_BITS-1:0] DI;
// logic [`AXI_DATA_BITS-1:0] DO;
// logic [`AXI_STRB_BITS-1:0] WEB;
// logic CS;
// logic OE;

sram_wrapper_state_t curr_state, next_state;

logic ARx_hs_done, Rx_hs_done, AW_hs_done, Wx_hs_done, Bx_hs_done;

// logic [13:0] A_r;
logic [`AXI_IDS_BITS-1:0] ID_r;
logic [`AXI_LEN_BITS-1:0] LEN_r;
logic Wx_hs_done_r, AW_hs_done_r;
logic [`AXI_LEN_BITS-1:0] len_cnt;
logic [1:0] w_offset;

// Handshake signal
assign AW_hs_done = AWVALID_S & AWREADY_S;
assign Wx_hs_done = WVALID_S & WREADY_S;
assign Bx_hs_done = BVALID_S & BREADY_S;
assign ARx_hs_done = ARVALID_S & ARREADY_S;
assign Rx_hs_done = RVALID_S & RREADY_S;
// Rx
assign RLAST_S = (len_cnt == LEN_r);
assign RDATA_S = 32'b0;
assign RID_S = ID_r; 
assign RRESP_S = `AXI_RESP_DECERR;
// Bx
assign BID_S = ID_r;
assign BRESP_S = `AXI_RESP_DECERR;
// Wx
// assign DI = WDATA_S;

always_ff@(posedge clk or negedge rstn)begin
	if(~rstn)
		curr_state <= IDLE;
	else 
		curr_state <= next_state;
end // State

always_comb begin
    case(curr_state)
        IDLE: begin
            next_state = (AWVALID_S) ? WRITE : (ARVALID_S) ? READ : IDLE;
        end
        READ: begin
            next_state = (Rx_hs_done & RLAST_S) ? ((AWVALID_S) ? WRITE : (ARVALID_S) ? READ : IDLE) : READ;
        end
        WRITE: begin
            next_state = (Bx_hs_done) ? ((AWVALID_S) ? WRITE : IDLE): WRITE;
        end
        default: next_state = curr_state;
    endcase
end // Next state (C)
logic [13:0] reg_WADDR;

always_ff @(posedge clk or negedge rstn) begin
    if (~rstn) begin
        reg_WADDR  <= 14'b0;
    end
    else begin
        reg_WADDR  <= AWADDR_S[15:2];
    end
end
always_comb begin
    AWREADY_S = 1'b0;
    WREADY_S  = 1'b0;
    BVALID_S = 1'b0;
    ARREADY_S = 1'b0;
    RVALID_S = 1'b0;
    // CS = 1'b0;
    // OE = 1'b0;
    // A = A_r;

    case(curr_state)
        IDLE: begin
            AWREADY_S = 1'b1;
            WREADY_S = 1'b1;
            BVALID_S = 1'b0;
            ARREADY_S = ~AWVALID_S;
            RVALID_S = 1'b0;
            // CS = AWVALID_S | ARVALID_S;
            // OE = ~AWVALID_S & ARVALID_S;
            // A = (AWVALID_S) ? AWADDR_S[15:2] : ARADDR_S[15:2];
        end
        READ: begin
            AWREADY_S = RLAST_S & Rx_hs_done;
            WREADY_S  = RLAST_S & Rx_hs_done;
            BVALID_S = 1'b0;
            ARREADY_S = RLAST_S & Rx_hs_done & ~AWVALID_S;
            RVALID_S = 1'b1;
            // CS = 1'b1;
            // OE = 1'b1;
            // A = (RLAST_S & Rx_hs_done) ? (AWVALID_S ? AWADDR_S[15:2] : A_r ) :A_r;
        end
        WRITE: begin
            AWREADY_S = WLAST_S & Bx_hs_done;
            WREADY_S  = AW_hs_done_r;
            BVALID_S = Wx_hs_done_r;
            ARREADY_S = WLAST_S & Bx_hs_done & ~AWVALID_S;
            RVALID_S = 1'b0;
            // CS = 1'b1;
            // OE = 1'b0;
            // A = (WLAST_S & Bx_hs_done) ? (AWVALID_S ? reg_WADDR : ARADDR_S[15:2]) : A_r;
        end
        default: ;
    endcase
end


always_ff@(posedge clk or negedge rstn) begin
    if(~rstn) begin
        len_cnt <= `AXI_LEN_BITS'b0;
    end else if(curr_state[READ_BIT])begin
        len_cnt <= (RLAST_S & Rx_hs_done) ? `AXI_LEN_BITS'b0 : (Rx_hs_done) ? len_cnt + `AXI_LEN_BITS'b1 : len_cnt; 
    end else if(curr_state[WRITE_BIT])begin
        len_cnt <= (WLAST_S & Bx_hs_done) ? `AXI_LEN_BITS'b0 : (Wx_hs_done) ? len_cnt + `AXI_LEN_BITS'b1 : len_cnt; 
    end else if(curr_state[IDLE_BIT]) begin
        len_cnt <= `AXI_LEN_BITS'b0; 
    end
end

always_ff@(posedge clk or negedge rstn) begin
    if(~rstn) begin
        w_offset <= 2'b0;
        Wx_hs_done_r <= 1'b0;
        AW_hs_done_r <= 1'b0;
    end else begin 
        w_offset  <= (AW_hs_done) ? AWADDR_S[1:0] : w_offset;
        Wx_hs_done_r  <= (Bx_hs_done) ? 1'b0 : (Wx_hs_done) ? (WLAST_S) ? 1'b1 : 1'b0 : Wx_hs_done_r;
        AW_hs_done_r <= AW_hs_done;
    end
end

always_ff@(posedge clk or negedge rstn) begin
    if(~rstn) begin
        // A_r       <= 14'b0;
        ID_r      <= `AXI_IDS_BITS'b0;
        LEN_r     <= `AXI_LEN_BITS'b0;
    end else begin
        // A_r       <= (AW_hs_done) ? AWADDR_S [15:2] : (ARx_hs_done) ? ARADDR_S [15:2] : A_r;
        ID_r      <= (AW_hs_done) ? AWID_S          : (ARx_hs_done) ? ARID_S          : ID_r;
        LEN_r     <= (AW_hs_done) ? AWLEN_S         : (ARx_hs_done) ? ARLEN_S         : LEN_r;
    end
    
end

endmodule
