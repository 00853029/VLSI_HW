`include "CPU_wrapper.sv"
`include "SRAM_wrapper.sv"
`include "AXI.sv"
`include "AXI_define.svh"
module top (
    input clk,
    input rst
);

    //MASTER 0 --------------------------------------------------
    //WA master0
    logic [`AXI_ID_BITS-1:0] AWID_master0;
    logic [`AXI_ADDR_BITS-1:0] AWADDR_master0;
    logic [`AXI_LEN_BITS-1:0] AWLEN_master0;
    logic [`AXI_SIZE_BITS-1:0] AWSIZE_master0;
    logic [1:0] AWBURST_master0;
    logic AWVALID_master0;
    logic AWREADY_master0;
    assign AWREADY_master0 = 1'b0;  //IM will not write

    //WD master0
    logic [`AXI_DATA_BITS-1:0] WDATA_master0;
    logic [`AXI_STRB_BITS-1:0] WSTRB_master0;
    logic WLAST_master0;
    logic WVALID_master0;
    logic WREADY_master0;
    assign WREADY_master0 = 1'b0;  //IM will not write

    //WR master0
    logic [`AXI_ID_BITS-1:0] BID_master0;
    logic [1:0] BRESP_master0;
    logic BVALID_master0;
    logic BREADY_master0;
    assign BID_master0 = `AXI_ID_BITS'b0;  //IM will not write
    assign BRESP_master0 = `AXI_RESP_OKAY;
    assign BVALID_master0 = 1'b0;  //IM will not write

    //RA master0
    logic [`AXI_ID_BITS-1:0] ARID_master0;
    logic [`AXI_ADDR_BITS-1:0] ARADDR_master0;
    logic [`AXI_LEN_BITS-1:0] ARLEN_master0;
    logic [`AXI_SIZE_BITS-1:0] ARSIZE_master0;
    logic [1:0] ARBURST_master0;
    logic ARVALID_master0;
    logic ARREADY_master0;
    //RD master0
    logic [`AXI_ID_BITS-1:0] RID_master0;
    logic [`AXI_DATA_BITS-1:0] RDATA_master0;
    logic [1:0] RRESP_master0;
    logic RLAST_master0;
    logic RVALID_master0;
    logic RREADY_master0;

    //MASTER 1 --------------------------------------------------
    //WA master1
    logic [`AXI_ID_BITS-1:0] AWID_master1;
    logic [`AXI_ADDR_BITS-1:0] AWADDR_master1;
    logic [`AXI_LEN_BITS-1:0] AWLEN_master1;
    logic [`AXI_SIZE_BITS-1:0] AWSIZE_master1;
    logic [1:0] AWBURST_master1;
    logic AWVALID_master1;
    logic AWREADY_master1;

    //WD master1
    logic [`AXI_DATA_BITS-1:0] WDATA_master1;
    logic [`AXI_STRB_BITS-1:0] WSTRB_master1;
    logic WLAST_master1;
    logic WVALID_master1;
    logic WREADY_master1;

    //WR master1
    logic [`AXI_ID_BITS-1:0] BID_master1;
    logic [1:0] BRESP_master1;
    logic BVALID_master1;
    logic BREADY_master1;

    //RA master1
    logic [`AXI_ID_BITS-1:0] ARID_master1;
    logic [`AXI_ADDR_BITS-1:0] ARADDR_master1;
    logic [`AXI_LEN_BITS-1:0] ARLEN_master1;
    logic [`AXI_SIZE_BITS-1:0] ARSIZE_master1;
    logic [1:0] ARBURST_master1;
    logic ARVALID_master1;
    logic ARREADY_master1;
    //RD master1
    logic [`AXI_ID_BITS-1:0] RID_master1;
    logic [`AXI_DATA_BITS-1:0] RDATA_master1;
    logic [1:0] RRESP_master1;
    logic RLAST_master1;
    logic RVALID_master1;
    logic RREADY_master1;

    //SLAVE 0 --------------------------------------------------
    //WA slave0
    logic [`AXI_IDS_BITS-1:0] AWID_slave0;
    logic [`AXI_ADDR_BITS-1:0] AWADDR_slave0;
    logic [`AXI_LEN_BITS-1:0] AWLEN_slave0;
    logic [`AXI_SIZE_BITS-1:0] AWSIZE_slave0;
    logic [1:0] AWBURST_slave0;
    logic AWVALID_slave0;
    logic AWREADY_slave0;

    //WD slave0
    logic [`AXI_DATA_BITS-1:0] WDATA_slave0;
    logic [`AXI_STRB_BITS-1:0] WSTRB_slave0;
    logic WLAST_slave0;
    logic WVALID_slave0;
    logic WREADY_slave0;

    //WR slave0
    logic [`AXI_IDS_BITS-1:0] BID_slave0;
    logic [1:0] BRESP_slave0;
    logic BVALID_slave0;
    logic BREADY_slave0;

    //RA slave0
    logic [`AXI_IDS_BITS-1:0] ARID_slave0;
    logic [`AXI_ADDR_BITS-1:0] ARADDR_slave0;
    logic [`AXI_LEN_BITS-1:0] ARLEN_slave0;
    logic [`AXI_SIZE_BITS-1:0] ARSIZE_slave0;
    logic [1:0] ARBURST_slave0;
    logic ARVALID_slave0;
    logic ARREADY_slave0;

    //RD slave0
    logic [`AXI_IDS_BITS-1:0] RID_slave0;
    logic [`AXI_DATA_BITS-1:0] RDATA_slave0;
    logic [1:0] RRESP_slave0;
    logic RLAST_slave0;
    logic RVALID_slave0;
    logic RREADY_slave0;

    //SLAVE 1 --------------------------------------------------
    //WA slave1
    logic [`AXI_IDS_BITS-1:0] AWID_slave1;
    logic [`AXI_ADDR_BITS-1:0] AWADDR_slave1;
    logic [`AXI_LEN_BITS-1:0] AWLEN_slave1;
    logic [`AXI_SIZE_BITS-1:0] AWSIZE_slave1;
    logic [1:0] AWBURST_slave1;
    logic AWVALID_slave1;
    logic AWREADY_slave1;

    //WD slave1
    logic [`AXI_DATA_BITS-1:0] WDATA_slave1;
    logic [`AXI_STRB_BITS-1:0] WSTRB_slave1;
    logic WLAST_slave1;
    logic WVALID_slave1;
    logic WREADY_slave1;

    //WR slave1
    logic [`AXI_IDS_BITS-1:0] BID_slave1;
    logic [1:0] BRESP_slave1;
    logic BVALID_slave1;
    logic BREADY_slave1;

    //RA slave1
    logic [`AXI_IDS_BITS-1:0] ARID_slave1;
    logic [`AXI_ADDR_BITS-1:0] ARADDR_slave1;
    logic [`AXI_LEN_BITS-1:0] ARLEN_slave1;
    logic [`AXI_SIZE_BITS-1:0] ARSIZE_slave1;
    logic [1:0] ARBURST_slave1;
    logic ARVALID_slave1;
    logic ARREADY_slave1;

    //RD slave1
    logic [`AXI_IDS_BITS-1:0] RID_slave1;
    logic [`AXI_DATA_BITS-1:0] RDATA_slave1;
    logic [1:0] RRESP_slave1;
    logic RLAST_slave1;
    logic RVALID_slave1;
    logic RREADY_slave1;

    AXI AXI(
        .ACLK(clk),
        .ARESETn(~rst),

        // AXI to master 0 (IF-stage)
        // ARx
        .ARID_M0(ARID_master0),
        .ARADDR_M0(ARADDR_master0),
        .ARLEN_M0(ARLEN_master0),
        .ARSIZE_M0(ARSIZE_master0),
        .ARBURST_M0(ARBURST_master0),
        .ARVALID_M0(ARVALID_master0),
        .ARREADY_M0(ARREADY_master0),
        // Rx
        .RID_M0(RID_master0),
        .RDATA_M0(RDATA_master0),
        .RRESP_M0(RRESP_master0),
        .RLAST_M0(RLAST_master0),
        .RVALID_M0(RVALID_master0),
        .RREADY_M0(RREADY_master0),

        // AXI to master 1 (MEM-stage)
        // AWx
        .AWID_M1(AWID_master1),
        .AWADDR_M1(AWADDR_master1),
        .AWLEN_M1(AWLEN_master1),
        .AWSIZE_M1(AWSIZE_master1),
        .AWBURST_M1(AWBURST_master1),
        .AWVALID_M1(AWVALID_master1),
        .AWREADY_M1(AWREADY_master1),
        // Wx
        .WDATA_M1(WDATA_master1),
        .WSTRB_M1(WSTRB_master1),
        .WLAST_M1(WLAST_master1),
        .WVALID_M1(WVALID_master1),
        .WREADY_M1(WREADY_master1),
        // Bx
        .BID_M1(BID_master1),
        .BRESP_M1(BRESP_master1),
        .BVALID_M1(BVALID_master1),
        .BREADY_M1(BREADY_master1),
        // ARx
        .ARID_M1(ARID_master1),
        .ARADDR_M1(ARADDR_master1),
        .ARLEN_M1(ARLEN_master1),
        .ARSIZE_M1(ARSIZE_master1),
        .ARBURST_M1(ARBURST_master1),
        .ARVALID_M1(ARVALID_master1),
        .ARREADY_M1(ARREADY_master1),
        // Rx
        .RID_M1(RID_master1),
        .RDATA_M1(RDATA_master1),
        .RRESP_M1(RRESP_master1),
        .RLAST_M1(RLAST_master1),
        .RVALID_M1(RVALID_master1),
        .RREADY_M1(RREADY_master1),

        // AXI to slave 0 (IM)
        // AWx
        .AWID_S0(AWID_slave0),
        .AWADDR_S0(AWADDR_slave0),
        .AWLEN_S0(AWLEN_slave0),
        .AWSIZE_S0(AWSIZE_slave0),
        .AWBURST_S0(AWBURST_slave0),
        .AWVALID_S0(AWVALID_slave0),
        .AWREADY_S0(AWREADY_slave0),
        // Wx
        .WDATA_S0(WDATA_slave0),
        .WSTRB_S0(WSTRB_slave0),
        .WLAST_S0(WLAST_slave0),
        .WVALID_S0(WVALID_slave0),
        .WREADY_S0(WREADY_slave0),
        // Bx
        .BID_S0(BID_slave0),
        .BRESP_S0(BRESP_slave0),
        .BVALID_S0(BVALID_slave0),
        .BREADY_S0(BREADY_slave0),
        // ARx
        .ARID_S0(ARID_slave0),
        .ARADDR_S0(ARADDR_slave0),
        .ARLEN_S0(ARLEN_slave0),
        .ARSIZE_S0(ARSIZE_slave0),
        .ARBURST_S0(ARBURST_slave0),
        .ARVALID_S0(ARVALID_slave0),
        .ARREADY_S0(ARREADY_slave0),
        // Rx
        .RID_S0(RID_slave0),
        .RDATA_S0(RDATA_slave0),
        .RRESP_S0(RRESP_slave0),
        .RLAST_S0(RLAST_slave0),
        .RVALID_S0(RVALID_slave0),
        .RREADY_S0(RREADY_slave0),

        // AXI to slave 1 (DM)
        // AWx
        .AWID_S1(AWID_slave1),
        .AWADDR_S1(AWADDR_slave1),
        .AWLEN_S1(AWLEN_slave1),
        .AWSIZE_S1(AWSIZE_slave1),
        .AWBURST_S1(AWBURST_slave1),
        .AWVALID_S1(AWVALID_slave1),
        .AWREADY_S1(AWREADY_slave1),
        // Wx
        .WDATA_S1(WDATA_slave1),
        .WSTRB_S1(WSTRB_slave1),
        .WLAST_S1(WLAST_slave1),
        .WVALID_S1(WVALID_slave1),
        .WREADY_S1(WREADY_slave1),
        // WBx
        .BID_S1(BID_slave1),
        .BRESP_S1(BRESP_slave1),
        .BVALID_S1(BVALID_slave1),
        .BREADY_S1(BREADY_slave1),
        // ARx
        .ARID_S1(ARID_slave1),
        .ARADDR_S1(ARADDR_slave1),
        .ARLEN_S1(ARLEN_slave1),
        .ARSIZE_S1(ARSIZE_slave1),
        .ARBURST_S1(ARBURST_slave1),
        .ARVALID_S1(ARVALID_slave1),
        .ARREADY_S1(ARREADY_slave1),
        // Rx
        .RID_S1(RID_slave1),
        .RDATA_S1(RDATA_slave1),
        .RRESP_S1(RRESP_slave1),
        .RLAST_S1(RLAST_slave1),
        .RVALID_S1(RVALID_slave1),
        .RREADY_S1(RREADY_slave1)
    );
    CPU_wrapper CPU_wrapper(
        .clk(clk),
        .rst(~rst),
        //MASTER 0:
        //WA master0
        .AWID_master0(AWID_master0),
        .AWADDR_master0(AWADDR_master0),
        .AWLEN_master0(AWLEN_master0),
        .AWSIZE_master0(AWSIZE_master0),
        .AWBURST_master0(AWBURST_master0),
        .AWVALID_master0(AWVALID_master0),
        .AWREADY_master0(AWREADY_master0),

        //WD master0
        .WDATA_master0(WDATA_master0),
        .WSTRB_master0(WSTRB_master0),
        .WLAST_master0(WLAST_master0),
        .WVALID_master0(WVALID_master0),
        .WREADY_master0(WREADY_master0),

        //WR master0
        .BID_master0(BID_master0),
        .BRESP_master0(BRESP_master0),
        .BVALID_master0(BVALID_master0),
        .BREADY_master0(BREADY_master0),

        //RA master0
        .ARID_master0(ARID_master0),
        .ARADDR_master0(ARADDR_master0),
        .ARLEN_master0(ARLEN_master0),
        .ARSIZE_master0(ARSIZE_master0),
        .ARBURST_master0(ARBURST_master0),
        .ARVALID_master0(ARVALID_master0),
        .ARREADY_master0(ARREADY_master0),
        //RD master0
        .RID_master0(RID_master0),
        .RDATA_master0(RDATA_master0),
        .RRESP_master0(RRESP_master0),
        .RLAST_master0(RLAST_master0),
        .RVALID_master0(RVALID_master0),
        .RREADY_master0(RREADY_master0),

        //MASTER 1:
        //WA master1
        .AWID_master1(AWID_master1),
        .AWADDR_master1(AWADDR_master1),
        .AWLEN_master1(AWLEN_master1),
        .AWSIZE_master1(AWSIZE_master1),
        .AWBURST_master1(AWBURST_master1),
        .AWVALID_master1(AWVALID_master1),
        .AWREADY_master1(AWREADY_master1),

        //WD master1
        .WDATA_master1(WDATA_master1),
        .WSTRB_master1(WSTRB_master1),
        .WLAST_master1(WLAST_master1),
        .WVALID_master1(WVALID_master1),
        .WREADY_master1(WREADY_master1),

        //WR master1
        .BID_master1(BID_master1),
        .BRESP_master1(BRESP_master1),
        .BVALID_master1(BVALID_master1),
        .BREADY_master1(BREADY_master1),

        //RA master1
        .ARID_master1(ARID_master1),
        .ARADDR_master1(ARADDR_master1),
        .ARLEN_master1(ARLEN_master1),
        .ARSIZE_master1(ARSIZE_master1),
        .ARBURST_master1(ARBURST_master1),
        .ARVALID_master1(ARVALID_master1),
        .ARREADY_master1(ARREADY_master1),
        //RD master1
        .RID_master1(RID_master1),
        .RDATA_master1(RDATA_master1),
        .RRESP_master1(RRESP_master1),
        .RLAST_master1(RLAST_master1),
        .RVALID_master1(RVALID_master1),
        .RREADY_master1(RREADY_master1)
    );

    SRAM_wrapper IM1(
        .clk(clk),
        .rstn(~rst),
        // AWx
        .AWID_S(AWID_slave0),
        .AWADDR_S(AWADDR_slave0),
        .AWLEN_S(AWLEN_slave0),
        .AWSIZE_S(AWSIZE_slave0),
        .AWBURST_S(AWBURST_slave0),
        .AWVALID_S(AWVALID_slave0),
        .AWREADY_S(AWREADY_slave0),
        // Wx
        .WDATA_S(WDATA_slave0),
        .WSTRB_S(WSTRB_slave0),
        .WLAST_S(WLAST_slave0),
        .WVALID_S(WVALID_slave0),
        .WREADY_S(WREADY_slave0),
        // Bx
        .BID_S(BID_slave0),
        .BRESP_S(BRESP_slave0),
        .BVALID_S(BVALID_slave0),
        .BREADY_S(BREADY_slave0),
        // ARx
        .ARID_S(ARID_slave0),
        .ARADDR_S(ARADDR_slave0),
        .ARLEN_S(ARLEN_slave0),
        .ARSIZE_S(ARSIZE_slave0),
        .ARBURST_S(ARBURST_slave0),
        .ARVALID_S(ARVALID_slave0),
        .ARREADY_S(ARREADY_slave0),
        // Rx
        .RID_S(RID_slave0),
        .RDATA_S(RDATA_slave0),
        .RRESP_S(RRESP_slave0),
        .RLAST_S(RLAST_slave0),
        .RVALID_S(RVALID_slave0),
        .RREADY_S(RREADY_slave0)

    );
    SRAM_wrapper DM1(
        .clk(clk),
        .rstn(~rst),
        // AWx
        .AWID_S(AWID_slave1),
        .AWADDR_S(AWADDR_slave1),
        .AWLEN_S(AWLEN_slave1),
        .AWSIZE_S(AWSIZE_slave1),
        .AWBURST_S(AWBURST_slave1),
        .AWVALID_S(AWVALID_slave1),
        .AWREADY_S(AWREADY_slave1),
        // Wx
        .WDATA_S(WDATA_slave1),
        .WSTRB_S(WSTRB_slave1),
        .WLAST_S(WLAST_slave1),
        .WVALID_S(WVALID_slave1),
        .WREADY_S(WREADY_slave1),
        // Bx
        .BID_S(BID_slave1),
        .BRESP_S(BRESP_slave1),
        .BVALID_S(BVALID_slave1),
        .BREADY_S(BREADY_slave1),
        // ARx
        .ARID_S(ARID_slave1),
        .ARADDR_S(ARADDR_slave1),
        .ARLEN_S(ARLEN_slave1),
        .ARSIZE_S(ARSIZE_slave1),
        .ARBURST_S(ARBURST_slave1),
        .ARVALID_S(ARVALID_slave1),
        .ARREADY_S(ARREADY_slave1),
        // Rx
        .RID_S(RID_slave1),
        .RDATA_S(RDATA_slave1),
        .RRESP_S(RRESP_slave1),
        .RLAST_S(RLAST_slave1),
        .RVALID_S(RVALID_slave1),
        .RREADY_S(RREADY_slave1)

    );
endmodule : top