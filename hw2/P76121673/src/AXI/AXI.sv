`include "AXI_define.svh"
`include "RA.sv"
`include "RD.sv"
`include "WA.sv"
`include "WD.sv"
`include "WR.sv"
`include "DefaultSlave.sv"
`include "Arbiter.sv"
`include "Decoder.sv"
module AXI
(
    input logic ACLK,
    input logic ARESETn,

    // AXI to master 0 (IF-stage)
    // ARx
    input logic [`AXI_ID_BITS-1:0] ARID_M0,
    input logic [`AXI_ADDR_BITS-1:0] ARADDR_M0,
    input logic [`AXI_LEN_BITS-1:0] ARLEN_M0,
    input logic [`AXI_SIZE_BITS-1:0] ARSIZE_M0,
    input logic [1:0] ARBURST_M0,
    input logic ARVALID_M0,
    output logic ARREADY_M0,
    // Rx
    output logic [`AXI_ID_BITS-1:0] RID_M0,
    output logic [`AXI_DATA_BITS-1:0] RDATA_M0,
    output logic [1:0] RRESP_M0,
    output logic RLAST_M0,
    output logic RVALID_M0,
    input logic RREADY_M0,

    // AXI to master 1 (MEM-stage)
    // AWx
    input logic [`AXI_ID_BITS-1:0] AWID_M1,
    input logic [`AXI_ADDR_BITS-1:0] AWADDR_M1,
    input logic [`AXI_LEN_BITS-1:0] AWLEN_M1,
    input logic [`AXI_SIZE_BITS-1:0] AWSIZE_M1,
    input logic [1:0] AWBURST_M1,
    input logic AWVALID_M1,
    output logic AWREADY_M1,
    // Wx
    input logic [`AXI_DATA_BITS-1:0] WDATA_M1,
    input logic [`AXI_STRB_BITS-1:0] WSTRB_M1,
    input logic WLAST_M1,
    input logic WVALID_M1,
    output logic WREADY_M1,
    // Bx
    output logic [`AXI_ID_BITS-1:0] BID_M1,
    output logic [1:0] BRESP_M1,
    output logic BVALID_M1,
    input logic BREADY_M1,
    // ARx
    input logic [`AXI_ID_BITS-1:0] ARID_M1,
    input logic [`AXI_ADDR_BITS-1:0] ARADDR_M1,
    input logic [`AXI_LEN_BITS-1:0] ARLEN_M1,
    input logic [`AXI_SIZE_BITS-1:0] ARSIZE_M1,
    input logic [1:0] ARBURST_M1,
    input logic ARVALID_M1,
    output logic ARREADY_M1,
    // Rx
    output logic [`AXI_ID_BITS-1:0] RID_M1,
    output logic [`AXI_DATA_BITS-1:0] RDATA_M1,
    output logic [1:0] RRESP_M1,
    output logic RLAST_M1,
    output logic RVALID_M1,
    input logic RREADY_M1,

    // AXI to slave 0 (IM)
    // AWx
    output logic [`AXI_IDS_BITS-1:0] AWID_S0,
    output logic [`AXI_ADDR_BITS-1:0] AWADDR_S0,
    output logic [`AXI_LEN_BITS-1:0] AWLEN_S0,
    output logic [`AXI_SIZE_BITS-1:0] AWSIZE_S0,
    output logic [1:0] AWBURST_S0,
    output logic AWVALID_S0,
    input logic AWREADY_S0,
    // Wx
    output logic [`AXI_DATA_BITS-1:0] WDATA_S0,
    output logic [`AXI_STRB_BITS-1:0] WSTRB_S0,
    output logic WLAST_S0,
    output logic WVALID_S0,
    input logic WREADY_S0,
    // Bx
    input logic [`AXI_IDS_BITS-1:0] BID_S0,
    input logic [1:0] BRESP_S0,
    input logic BVALID_S0,
    output logic BREADY_S0,
    // ARx
    output logic [`AXI_IDS_BITS-1:0] ARID_S0,
    output logic [`AXI_ADDR_BITS-1:0] ARADDR_S0,
    output logic [`AXI_LEN_BITS-1:0] ARLEN_S0,
    output logic [`AXI_SIZE_BITS-1:0] ARSIZE_S0,
    output logic [1:0] ARBURST_S0,
    output logic ARVALID_S0,
    input logic ARREADY_S0,
    // Rx
    input logic [`AXI_IDS_BITS-1:0] RID_S0,
    input logic [`AXI_DATA_BITS-1:0] RDATA_S0,
    input logic [1:0] RRESP_S0,
    input logic RLAST_S0,
    input logic RVALID_S0,
    output logic RREADY_S0,

    // AXI to slave 1 (DM)
    // AWx
    output logic [`AXI_IDS_BITS-1:0] AWID_S1,
    output logic [`AXI_ADDR_BITS-1:0] AWADDR_S1,
    output logic [`AXI_LEN_BITS-1:0] AWLEN_S1,
    output logic [`AXI_SIZE_BITS-1:0] AWSIZE_S1,
    output logic [1:0] AWBURST_S1,
    output logic AWVALID_S1,
    input logic AWREADY_S1,
    // Wx
    output logic [`AXI_DATA_BITS-1:0] WDATA_S1,
    output logic [`AXI_STRB_BITS-1:0] WSTRB_S1,
    output logic WLAST_S1,
    output logic WVALID_S1,
    input logic WREADY_S1,
    // WBx
    input logic [`AXI_IDS_BITS-1:0] BID_S1,
    input logic [1:0] BRESP_S1,
    input logic BVALID_S1,
    output logic BREADY_S1,
    // ARx
    output logic [`AXI_IDS_BITS-1:0] ARID_S1,
    output logic [`AXI_ADDR_BITS-1:0] ARADDR_S1,
    output logic [`AXI_LEN_BITS-1:0] ARLEN_S1,
    output logic [`AXI_SIZE_BITS-1:0] ARSIZE_S1,
    output logic [1:0] ARBURST_S1,
    output logic ARVALID_S1,
    input logic ARREADY_S1,
    // Rx
    input logic [`AXI_IDS_BITS-1:0] RID_S1,
    input logic [`AXI_DATA_BITS-1:0] RDATA_S1,
    input logic [1:0] RRESP_S1,
    input logic RLAST_S1,
    input logic RVALID_S1,
    output logic RREADY_S1
);

    logic [`AXI_IDS_BITS-1:0] AWID_SDefault;
    logic [`AXI_ADDR_BITS-1:0] AWADDR_SDefault;
    logic [`AXI_LEN_BITS-1:0] AWLEN_SDefault;
    logic [`AXI_SIZE_BITS-1:0] AWSIZE_SDefault;
    logic [1:0] AWBURST_SDefault;
    logic AWREADY_SDefault, AWVALID_SDefault;
    WA WA(
		.clk(ACLK),
		.rst(ARESETn),
        //master 1 input
        .AWID_master1(AWID_M1),
        .AWADDR_master1(AWADDR_M1),
        .AWLEN_master1(AWLEN_M1),
        .AWSIZE_master1(AWSIZE_M1),
        .AWBURST_master1(AWBURST_M1),
        .AWVALID_master1(AWVALID_M1),
        //slave ready signals input
        .AWREADY_slave0(AWREADY_S0),
        .AWREADY_slave1(AWREADY_S1),
        .AWREADY_slaveDefault(AWREADY_SDefault), 

        //output to slave
        .AWID_slave0(AWID_S0), 
        .AWID_slave1(AWID_S1), 
        .AWID_slaveDefault(AWID_SDefault),
        .AWADDR_slave0(AWADDR_S0),
        .AWADDR_slave1(AWADDR_S1), 
        .AWADDR_slaveDefault(AWADDR_SDefault),
        .AWLEN_slave0(AWLEN_S0), 
        .AWLEN_slave1(AWLEN_S1), 
        .AWLEN_slaveDefault(AWLEN_SDefault),
        .AWSIZE_slave0(AWSIZE_S0), 
        .AWSIZE_slave1(AWSIZE_S1), 
        .AWSIZE_slaveDefault(AWSIZE_SDefault),
        .AWBURST_slave0(AWBURST_S0), 
        .AWBURST_slave1(AWBURST_S1), 
        .AWBURST_slaveDefault(AWBURST_SDefault),

        .AWVALID_slave0(AWVALID_S0),
        .AWVALID_slave1(AWVALID_S1),
        .AWVALID_slaveDefault(AWVALID_SDefault),

        .AWREADY_StoM(AWREADY_M1)
    );

    logic [`AXI_DATA_BITS-1:0] WDATA_SDefault;
    logic [`AXI_STRB_BITS-1:0] WSTRB_SDefault;
    logic WLAST_SDefault;
    logic WVALID_SDefault;
    logic WREADY_SDefault;
    WD WD(
        .clk(ACLK),
        .rst(ARESETn),

        .WDATA_master1(WDATA_M1),
        .WSTRB_master1(WSTRB_M1),
        .WLAST_master1(WLAST_M1),
        .WVALID_master1(WVALID_M1),

        .WDATA_slave0(WDATA_S0), 
        .WDATA_slave1(WDATA_S1),
        .WDATA_slaveDefault(WDATA_SDefault),
        .WSTRB_slave0(WSTRB_S0), 
        .WSTRB_slave1(WSTRB_S1), 
        .WSTRB_slaveDefault(WSTRB_SDefault),
        .WLAST_slave0(WLAST_S0), 
        .WLAST_slave1(WLAST_S1), 
        .WLAST_slaveDefault(WLAST_SDefault),
        .WVALID_slave0(WVALID_S0), 
        .WVALID_slave1(WVALID_S1), 
        .WVALID_slaveDefault(WVALID_SDefault),

        .WREADY_slave0(WREADY_S0),
        .WREADY_slave1(WREADY_S1),
        .WREADY_slaveDefault(WREADY_SDefault),

        //data should after address : outstanding = 1
        .AWVALID_slave0(AWVALID_S0),
        .AWVALID_slave1(AWVALID_S1),
        .AWVALID_slaveDefault(AWVALID_SDefault),

        .WREADY_StoM(WREADY_M1)
    );
    logic [`AXI_IDS_BITS-1:0] BID_SDefault;
    logic [1:0] BRESP_SDefault;
    logic BVALID_SDefault;
    logic BREADY_SDefault;
    WR WR(
        .BID_slave0(BID_S0), 
        .BID_slave1(BID_S1), 
        .BID_slaveDefault(BID_SDefault),
        .BRESP_slave0(BRESP_S0), 
        .BRESP_slave1(BRESP_S1), 
        .BRESP_slaveDefault(BRESP_SDefault),
        .BVALID_slave0(BVALID_S0), 
        .BVALID_slave1(BVALID_S1), 
        .BVALID_slaveDefault(BVALID_SDefault),

        .BID_master1(BID_M1),
        .BRESP_master1(BRESP_M1),
        .BVALID_master1(BVALID_M1),


        .BREADY_master1(BREADY_M1),

        .BREADY_MtoS0(BREADY_S0), 
        .BREADY_MtoS1(BREADY_S1), 
        .BREADY_MtoSDefault(BREADY_SDefault)
    );

    logic [`AXI_IDS_BITS-1:0] ARID_SDefault;
    logic [`AXI_ADDR_BITS-1:0] ARADDR_SDefault;
    logic [`AXI_LEN_BITS-1:0] ARLEN_SDefault;
    logic [`AXI_SIZE_BITS-1:0] ARSIZE_SDefault;
    logic [1:0] ARBURST_SDefault;
    logic ARVALID_SDefault;
    logic ARREADY_SDefault;
    RA RA(
		.clk(ACLK),
		.rst(ARESETn),
        .ARID_master0(ARID_M0),
        .ARID_master1(ARID_M1),
        .ARADDR_master0(ARADDR_M0), 
        .ARADDR_master1(ARADDR_M1),
        .ARLEN_master0(ARLEN_M0), 
        .ARLEN_master1(ARLEN_M1),
        .ARSIZE_master0(ARSIZE_M0), 
        .ARSIZE_master1(ARSIZE_M1),
        .ARBURST_master0(ARBURST_M0), 
        .ARBURST_master1(ARBURST_M1),
        .ARVALID_master0(ARVALID_M0), 
        .ARVALID_master1(ARVALID_M1),

        .ARID_slave0(ARID_S0), 
        .ARID_slave1(ARID_S1), 
        .ARID_slaveDefault(ARID_SDefault),
        .ARADDR_slave0(ARADDR_S0), 
        .ARADDR_slave1(ARADDR_S1), 
        .ARADDR_slaveDefault(ARADDR_SDefault),
        .ARLEN_slave0(ARLEN_S0), 
        .ARLEN_slave1(ARLEN_S1), 
        .ARLEN_slaveDefault(ARLEN_SDefault),
        .ARSIZE_slave0(ARSIZE_S0), 
        .ARSIZE_slave1(ARSIZE_S1), 
        .ARSIZE_slaveDefault(ARSIZE_SDefault),
        .ARBURST_slave0(ARBURST_S0), 
        .ARBURST_slave1(ARBURST_S1), 
        .ARBURST_slaveDefault(ARBURST_SDefault),
        .ARVALID_slave0(ARVALID_S0), 
        .ARVALID_slave1(ARVALID_S1), 
        .ARVALID_slaveDefault(ARVALID_SDefault),

        .ARREADY_slave0(ARREADY_S0), 
        .ARREADY_slave1(ARREADY_S1), 
        .ARREADY_slaveDefault(ARREADY_SDefault),

        .ARREADY_StoM0(ARREADY_M0), 
        .ARREADY_StoM1(ARREADY_M1)
    );
    logic [`AXI_IDS_BITS-1:0] RID_SDefault;
    logic [`AXI_DATA_BITS-1:0] RDATA_SDefault;
    logic [1:0] RRESP_SDefault;
    logic RLAST_SDefault;
    logic RVALID_SDefault;
    logic RREADY_SDefault;
    RD RD(
        .clk(ACLK),
        .rst(ARESETn),
        .RID_slave0(RID_S0), 
        .RID_slave1(RID_S1),
        .RID_slaveDefault(RID_SDefault),
        .RDATA_slave0(RDATA_S0),
        .RDATA_slave1(RDATA_S1), 
        .RDATA_slaveDefault(RDATA_SDefault),
        .RRESP_slave0(RRESP_S0), 
        .RRESP_slave1(RRESP_S1), 
        .RRESP_slaveDefault(RRESP_SDefault),
        .RLAST_slave0(RLAST_S0), 
        .RLAST_slave1(RLAST_S1), 
        .RLAST_slaveDefault(RLAST_SDefault),
        .RVALID_slave0(RVALID_S0), 
        .RVALID_slave1(RVALID_S1), 
        .RVALID_slaveDefault(RVALID_SDefault),

        .RID_master0(RID_M0), 
        .RID_master1(RID_M1),
        .RDATA_master0(RDATA_M0),
        .RDATA_master1(RDATA_M1),
        .RRESP_master0(RRESP_M0), 
        .RRESP_master1(RRESP_M1),
        .RLAST_master0(RLAST_M0), 
        .RLAST_master1(RLAST_M1),
        .RVALID_master0(RVALID_M0), 
        .RVALID_master1(RVALID_M1),

        .RREADY_master0(RREADY_M0), 
        .RREADY_master1(RREADY_M1),

        .RREADY_MtoS0(RREADY_S0), 
        .RREADY_MtoS1(RREADY_S1), 
        .RREADY_MtoSDefault(RREADY_SDefault)
    );
    DefaultSlave DefaultSlave(
        .clk(ACLK),
        .rstn(ARESETn),
        // AWx
        .AWID_S(AWID_SDefault),
        .AWADDR_S(AWADDR_SDefault),
        .AWLEN_S(AWLEN_SDefault),
        .AWSIZE_S(AWSIZE_SDefault),
        .AWBURST_S(AWBURST_SDefault),
        .AWVALID_S(AWVALID_SDefault),
        .AWREADY_S(AWREADY_SDefault),
        // Wx
        .WDATA_S(WDATA_SDefault),
        .WSTRB_S(WSTRB_SDefault),
        .WLAST_S(WLAST_SDefault),
        .WVALID_S(WVALID_SDefault),
        .WREADY_S(WREADY_SDefault),
        // Bx
        .BID_S(BID_SDefault),
        .BRESP_S(BRESP_SDefault),
        .BVALID_S(BVALID_SDefault),
        .BREADY_S(BREADY_SDefault),
        // ARx
        .ARID_S(ARID_SDefault),
        .ARADDR_S(ARADDR_SDefault),
        .ARLEN_S(ARLEN_SDefault),
        .ARSIZE_S(ARSIZE_SDefault),
        .ARBURST_S(ARBURST_SDefault),
        .ARVALID_S(ARVALID_SDefault),
        .ARREADY_S(ARREADY_SDefault),
        // Rx
        .RID_S(RID_SDefault),
        .RDATA_S(RDATA_SDefault),
        .RRESP_S(RRESP_SDefault),
        .RLAST_S(RLAST_SDefault),
        .RVALID_S(RVALID_SDefault),
        .RREADY_S(RREADY_SDefault)
);


endmodule
