`include "sensor_ctrl.sv"
`include "AXI_define.svh"
`include "AXI_interface_slave.sv"
`include "sensor_wrapper_pkg.sv"
module SCTRL_wrapper
    import sensor_wrapper_pkg::*;
    (
    input clk,
    input rstn,

    

    input sensor_ready,
    input [31:0] sensor_out,    //data from sensor
    output logic sensor_en,
    output logic sensor_interrupt,
    AXI_interface_slave.slave slave
);
    sensor_wrapper_state_t curr_state, next_state;
    logic ARx_hs_done, AWx_hs_done, Rx_hs_done, Bx_hs_done, Wx_hs_done;

    assign ARx_hs_done = slave.ARVALID & slave.ARREADY;
    assign AWx_hs_done = slave.AWVALID & slave.AWREADY;
    assign Rx_hs_done  = slave.RVALID & slave.RREADY;
    assign Bx_hs_done  = slave.BVALID & slave.BREADY;
    assign Wx_hs_done  = slave.WVALID & slave.WREADY;

    // AXI register
    logic [`AXI_IDS_BITS-1:0] ID_r;
    logic [`AXI_LEN_BITS-1:0] LEN_r;
    logic [`AXI_SIZE_BITS-1:0] SIZE_r;
    logic [`AXI_ADDR_BITS-1:0] ADDR_r;
    logic [1:0] BURST_r;
    logic [`AXI_LEN_BITS-1:0] cnt;

    assign slave.RID   = ID_r;
    assign slave.RRESP = `AXI_RESP_OKAY;
    assign slave.RLAST = cnt == LEN_r;
    assign slave.BID   = ID_r;
    assign slave.BRESP = `AXI_RESP_OKAY;
    


    always @(posedge clk) begin
        if(rstn) curr_state <= IDLE;
        else curr_state <= next_state;
    end
    always_comb begin
        case (curr_state)
            IDLE: next_state = (slave.AWVALID) ? WRITE : (slave.ARVALID) ? READ : IDLE;
            READ: next_state = (slave.RLAST & Rx_hs_done) ? IDLE : READ;
            WRITE: next_state = (Bx_hs_done) ? IDLE : WRITE;
        default: next_state = IDLE;
        endcase
    end
    //set AXI slave -> master signal
    	logic lockAW, lockB, lockW;
    always_comb begin
        slave.ARREADY = 1'b0;
        slave.AWREADY = 1'b0;
        slave.WREADY  = 1'b0;
        slave.RVALID  = 1'b0;
        slave.BVALID  = 1'b0;
        case(curr_state)
            IDLE: begin
                slave.ARREADY = ~slave.AWVALID; // Write first
                slave.AWREADY = 1'b1;
            end
            READ: begin
                slave.RVALID = 1'b1;
            end
            WRITE: begin //***naughty***//
                slave.WREADY = lockB | lockAW;
                slave.BVALID = lockW;
            end
        endcase
    end
	
	
	
    always_ff @(posedge clk) begin
        if(rstn)begin
            cnt <= `AXI_LEN_BITS'b0;
		lockAW <= 1'b0;
		lockW <= 1'b0;
		lockB <= 1'b0;
        end
        else begin
            cnt <= ((Bx_hs_done) | (slave.RLAST & Rx_hs_done)) ? `AXI_LEN_BITS'b0 : (Wx_hs_done | Rx_hs_done) ? cnt + `AXI_LEN_BITS'b1 : cnt;
		lockAW <= (lockAW & Wx_hs_done) ? 1'b0 : (AWx_hs_done) ? 1'b1 : lockAW;
		lockW  <= (Wx_hs_done) ? 1'b1 : (lockW & Bx_hs_done) ? 1'b0 : lockW;
		lockB <= (Bx_hs_done) ? 1'b1 :(lockB & ~Bx_hs_done) ? 1'b0 :lockB;
        end
    end
    //==========================
    //***naughty*** lock?
    //==========================
		


	

    //register 
    logic [31:0] reg_ADDR;
    always_ff @(posedge clk) begin
        if(rstn) begin
            reg_ADDR <= 32'b0;
        end else begin
            reg_ADDR <= (AWx_hs_done)? slave.AWADDR:(ARx_hs_done)? slave.ARADDR: reg_ADDR;
        end
    end
    always_ff @(posedge clk) begin
        if (rstn) begin
        ID_r    <= `AXI_IDS_BITS'b0;
        LEN_r   <= `AXI_LEN_BITS'b0;
        SIZE_r  <= `AXI_SIZE_BITS'b0;
        ADDR_r  <= `AXI_ADDR_BITS'b0;
        BURST_r <= 2'b0;
        end else begin
        ID_r <= (AWx_hs_done) ? slave.AWID : (ARx_hs_done) ? slave.ARID : ID_r;
        LEN_r <= (AWx_hs_done) ? slave.AWLEN : (ARx_hs_done) ? slave.ARLEN : LEN_r;
        SIZE_r <= (AWx_hs_done) ? slave.AWSIZE : (ARx_hs_done) ? slave.ARSIZE : SIZE_r;
        ADDR_r <= (AWx_hs_done) ? slave.AWADDR : (ARx_hs_done) ? slave.ARADDR : ADDR_r;
        BURST_r   <= (AWx_hs_done) ? slave.AWBURST: (ARx_hs_done)? slave.ARBURST: BURST_r;
        end
    end

    //sctrl signals
    logic sctrl_en;
    logic sctrl_clear;
    always_ff @(posedge clk) begin
        if(rstn) begin
            sctrl_en <= 1'b0;
            sctrl_clear <= 1'b0;
        end
        else if(slave.WVALID) begin
            if(reg_ADDR[9:0] == 10'h100)
                sctrl_en <= slave.WDATA[0];
            else if(reg_ADDR[9:0] == 10'h200)
                sctrl_clear <= slave.WDATA[0];
        end
    end

    sensor_ctrl sensor_ctrl(
        .clk(clk),
        .rst(rstn),
        // Core inputs
        .sctrl_en(sctrl_en),
        .sctrl_clear(sctrl_clear),
        .sctrl_addr(reg_ADDR[7:2]),//addr[7:0] -> divided by 4 = addr[7:2]
        // Sensor inputs
        .sensor_ready(sensor_ready),
        .sensor_out(sensor_out),
        // Core outputs
        .sctrl_interrupt(sensor_interrupt),
        .sctrl_out(slave.RDATA),
        // Sensor outputs
        .sensor_en(sensor_en)
    );


endmodule
