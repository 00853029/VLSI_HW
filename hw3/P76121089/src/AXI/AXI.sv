`include "AXI_define.svh"
`include "RA.sv"
`include "RD.sv"
`include "WA.sv"
`include "WD.sv"
`include "WR.sv"
`include "DefaultSlave.sv"
`include "Arbiter.sv"
`include "Decoder.sv"
`include "AXI_interface_slave.sv"
`include "AXI_interface_master.sv"
module AXI
(
    input logic ACLK,
    input logic ARESETn,
    //master
    AXI_interface_master.master_bridge master0,
    AXI_interface_master.master_bridge master1,

    //slave
    AXI_interface_slave.slave_bridge slave0,
    AXI_interface_slave.slave_bridge slave1,
    AXI_interface_slave.slave_bridge slave2,
    AXI_interface_slave.slave_bridge slave3,
    AXI_interface_slave.slave_bridge slave4,
    AXI_interface_slave.slave_bridge slave5
    
);
    AXI_interface_slave slaveDefault ();

    WA WA(
		.clk(ACLK),
		.rst(ARESETn),
        //master 1 input
        .AWID_master1(master1.AWID),
        .AWADDR_master1(master1.AWADDR),
        .AWLEN_master1(master1.AWLEN),
        .AWSIZE_master1(master1.AWSIZE),
        .AWBURST_master1(master1.AWBURST),
        .AWVALID_master1(master1.AWVALID),
        //slave ready signals input 
        .AWREADY_slave0(slave0.AWREADY),
        .AWREADY_slave1(slave1.AWREADY),
        .AWREADY_slave2(slave2.AWREADY),
        .AWREADY_slave3(slave3.AWREADY),
        .AWREADY_slave4(slave4.AWREADY),
        .AWREADY_slave5(slave5.AWREADY),
        .AWREADY_slaveDefault(slaveDefault.AWREADY), 

        //output to slave
        .AWID_slave0(slave0.AWID), 
        .AWID_slave1(slave1.AWID), 
        .AWID_slave2(slave2.AWID), 
        .AWID_slave3(slave3.AWID), 
        .AWID_slave4(slave4.AWID), 
        .AWID_slave5(slave5.AWID), 
        .AWID_slaveDefault(slaveDefault.AWID),

        .AWADDR_slave0(slave0.AWADDR),
        .AWADDR_slave1(slave1.AWADDR), 
        .AWADDR_slave2(slave2.AWADDR), 
        .AWADDR_slave3(slave3.AWADDR), 
        .AWADDR_slave4(slave4.AWADDR), 
        .AWADDR_slave5(slave5.AWADDR), 
        .AWADDR_slaveDefault(slaveDefault.AWADDR),

        .AWLEN_slave0(slave0.AWLEN), 
        .AWLEN_slave1(slave1.AWLEN), 
        .AWLEN_slave2(slave2.AWLEN), 
        .AWLEN_slave3(slave3.AWLEN), 
        .AWLEN_slave4(slave4.AWLEN), 
        .AWLEN_slave5(slave5.AWLEN), 
        .AWLEN_slaveDefault(slaveDefault.AWLEN),

        .AWSIZE_slave0(slave0.AWSIZE), 
        .AWSIZE_slave1(slave1.AWSIZE), 
        .AWSIZE_slave2(slave2.AWSIZE), 
        .AWSIZE_slave3(slave3.AWSIZE), 
        .AWSIZE_slave4(slave4.AWSIZE), 
        .AWSIZE_slave5(slave5.AWSIZE), 
        .AWSIZE_slaveDefault(slaveDefault.AWSIZE),

        .AWBURST_slave0(slave0.AWBURST), 
        .AWBURST_slave1(slave1.AWBURST), 
        .AWBURST_slave2(slave2.AWBURST), 
        .AWBURST_slave3(slave3.AWBURST), 
        .AWBURST_slave4(slave4.AWBURST), 
        .AWBURST_slave5(slave5.AWBURST), 
        .AWBURST_slaveDefault(slaveDefault.AWBURST),


        .AWVALID_slave0(slave0.AWVALID),
        .AWVALID_slave1(slave1.AWVALID),
        .AWVALID_slave2(slave2.AWVALID),
        .AWVALID_slave3(slave3.AWVALID),
        .AWVALID_slave4(slave4.AWVALID),
        .AWVALID_slave5(slave5.AWVALID),
        .AWVALID_slaveDefault(slaveDefault.AWVALID),

        .AWREADY_StoM(master1.AWREADY)
    );

    WD WD(
        .clk(ACLK),
        .rst(ARESETn),

        .WDATA_master1(master1.WDATA),
        .WSTRB_master1(master1.WSTRB),
        .WLAST_master1(master1.WLAST),
        .WVALID_master1(master1.WVALID),

        .WDATA_slave0(slave0.WDATA), 
        .WDATA_slave1(slave1.WDATA),
        .WDATA_slave2(slave2.WDATA),
        .WDATA_slave3(slave3.WDATA),
        .WDATA_slave4(slave4.WDATA),
        .WDATA_slave5(slave5.WDATA),
        .WDATA_slaveDefault(slaveDefault.WDATA),
        .WSTRB_slave0(slave0.WSTRB), 
        .WSTRB_slave1(slave1.WSTRB),
        .WSTRB_slave2(slave2.WSTRB),
        .WSTRB_slave3(slave3.WSTRB),
        .WSTRB_slave4(slave4.WSTRB),
        .WSTRB_slave5(slave5.WSTRB), 
        .WSTRB_slaveDefault(slaveDefault.WSTRB),
        .WLAST_slave0(slave0.WLAST), 
        .WLAST_slave1(slave1.WLAST), 
        .WLAST_slave2(slave2.WLAST), 
        .WLAST_slave3(slave3.WLAST), 
        .WLAST_slave4(slave4.WLAST), 
        .WLAST_slave5(slave5.WLAST), 
        .WLAST_slaveDefault(slaveDefault.WLAST),
        .WVALID_slave0(slave0.WVALID), 
        .WVALID_slave1(slave1.WVALID), 
        .WVALID_slave2(slave2.WVALID), 
        .WVALID_slave3(slave3.WVALID), 
        .WVALID_slave4(slave4.WVALID), 
        .WVALID_slave5(slave5.WVALID), 
        .WVALID_slaveDefault(slaveDefault.WVALID),

        .WREADY_slave0(slave0.WREADY),
        .WREADY_slave1(slave1.WREADY),
        .WREADY_slave2(slave2.WREADY),
        .WREADY_slave3(slave3.WREADY),
        .WREADY_slave4(slave4.WREADY),
        .WREADY_slave5(slave5.WREADY),
        .WREADY_slaveDefault(slaveDefault.WREADY),

        //data should after address : outstanding = 1
        .AWVALID_slave0(slave0.AWVALID),
        .AWVALID_slave1(slave1.AWVALID),
        .AWVALID_slave2(slave2.AWVALID),
        .AWVALID_slave3(slave3.AWVALID),
        .AWVALID_slave4(slave4.AWVALID),
        .AWVALID_slave5(slave5.AWVALID),
        .AWVALID_slaveDefault(slaveDefault.AWVALID),

        .WREADY_StoM(master1.WREADY)
    );

    WR WR(
        .BID_slave0(slave0.BID), 
        .BID_slave1(slave1.BID), 
        .BID_slave2(slave2.BID), 
        .BID_slave3(slave3.BID), 
        .BID_slave4(slave4.BID), 
        .BID_slave5(slave5.BID), 
        .BID_slaveDefault(slaveDefault.BID),
        .BRESP_slave0(slave0.BRESP), 
        .BRESP_slave1(slave1.BRESP), 
        .BRESP_slave2(slave2.BRESP), 
        .BRESP_slave3(slave3.BRESP), 
        .BRESP_slave4(slave4.BRESP), 
        .BRESP_slave5(slave5.BRESP), 
        .BRESP_slaveDefault(slaveDefault.BRESP),
        .BVALID_slave0(slave0.BVALID), 
        .BVALID_slave1(slave1.BVALID), 
        .BVALID_slave2(slave2.BVALID), 
        .BVALID_slave3(slave3.BVALID), 
        .BVALID_slave4(slave4.BVALID), 
        .BVALID_slave5(slave5.BVALID), 
        .BVALID_slaveDefault(slaveDefault.BVALID),

        .BID_master1(master1.BID),
        .BRESP_master1(master1.BRESP),
        .BVALID_master1(master1.BVALID),


        .BREADY_master1(master1.BREADY),

        .BREADY_MtoS0(slave0.BREADY), 
        .BREADY_MtoS1(slave1.BREADY), 
        .BREADY_MtoS2(slave2.BREADY), 
        .BREADY_MtoS3(slave3.BREADY), 
        .BREADY_MtoS4(slave4.BREADY), 
        .BREADY_MtoS5(slave5.BREADY), 
        .BREADY_MtoSDefault(slaveDefault.BREADY)
    );

    RA RA(
		.clk(ACLK),
		.rst(ARESETn),
        .ARID_master0(master0.ARID),
        .ARID_master1(master1.ARID),
        .ARADDR_master0(master0.ARADDR), 
        .ARADDR_master1(master1.ARADDR),
        .ARLEN_master0(master0.ARLEN), 
        .ARLEN_master1(master1.ARLEN),
        .ARSIZE_master0(master0.ARSIZE), 
        .ARSIZE_master1(master1.ARSIZE),
        .ARBURST_master0(master0.ARBURST), 
        .ARBURST_master1(master1.ARBURST),
        .ARVALID_master0(master0.ARVALID), 
        .ARVALID_master1(master1.ARVALID),

        .ARID_slave0(slave0.ARID), 
        .ARID_slave1(slave1.ARID), 
        .ARID_slave2(slave2.ARID), 
        .ARID_slave3(slave3.ARID), 
        .ARID_slave4(slave4.ARID), 
        .ARID_slave5(slave5.ARID), 
        .ARID_slaveDefault(slaveDefault.ARID),
        .ARADDR_slave0(slave0.ARADDR), 
        .ARADDR_slave1(slave1.ARADDR), 
        .ARADDR_slave2(slave2.ARADDR), 
        .ARADDR_slave3(slave3.ARADDR), 
        .ARADDR_slave4(slave4.ARADDR), 
        .ARADDR_slave5(slave5.ARADDR), 
        .ARADDR_slaveDefault(slaveDefault.ARADDR),
        .ARLEN_slave0(slave0.ARLEN), 
        .ARLEN_slave1(slave1.ARLEN), 
        .ARLEN_slave2(slave2.ARLEN), 
        .ARLEN_slave3(slave3.ARLEN), 
        .ARLEN_slave4(slave4.ARLEN), 
        .ARLEN_slave5(slave5.ARLEN), 
        .ARLEN_slaveDefault(slaveDefault.ARLEN),
        .ARSIZE_slave0(slave0.ARSIZE), 
        .ARSIZE_slave1(slave1.ARSIZE), 
        .ARSIZE_slave2(slave2.ARSIZE), 
        .ARSIZE_slave3(slave3.ARSIZE), 
        .ARSIZE_slave4(slave4.ARSIZE), 
        .ARSIZE_slave5(slave5.ARSIZE), 
        .ARSIZE_slaveDefault(slaveDefault.ARSIZE),
        .ARBURST_slave0(slave0.ARBURST), 
        .ARBURST_slave1(slave1.ARBURST), 
        .ARBURST_slave2(slave2.ARBURST), 
        .ARBURST_slave3(slave3.ARBURST), 
        .ARBURST_slave4(slave4.ARBURST), 
        .ARBURST_slave5(slave5.ARBURST), 
        .ARBURST_slaveDefault(slaveDefault.ARBURST),
        .ARVALID_slave0(slave0.ARVALID), 
        .ARVALID_slave1(slave1.ARVALID), 
        .ARVALID_slave2(slave2.ARVALID), 
        .ARVALID_slave3(slave3.ARVALID), 
        .ARVALID_slave4(slave4.ARVALID), 
        .ARVALID_slave5(slave5.ARVALID), 
        .ARVALID_slaveDefault(slaveDefault.ARVALID),

        .ARREADY_slave0(slave0.ARREADY), 
        .ARREADY_slave1(slave1.ARREADY), 
        .ARREADY_slave2(slave2.ARREADY), 
        .ARREADY_slave3(slave3.ARREADY), 
        .ARREADY_slave4(slave4.ARREADY), 
        .ARREADY_slave5(slave5.ARREADY), 
        .ARREADY_slaveDefault(slaveDefault.ARREADY),

        .ARREADY_StoM0(master0.ARREADY), 
        .ARREADY_StoM1(master1.ARREADY)
    );

    RD RD(
        .clk(ACLK),
        .rst(ARESETn),
        .RID_slave0(slave0.RID), 
        .RID_slave1(slave1.RID),
        .RID_slave2(slave2.RID),
        .RID_slave3(slave3.RID),
        .RID_slave4(slave4.RID),
        .RID_slave5(slave5.RID),
        .RID_slaveDefault(slaveDefault.RID),
        .RDATA_slave0(slave0.RDATA),
        .RDATA_slave1(slave1.RDATA), 
        .RDATA_slave2(slave2.RDATA), 
        .RDATA_slave3(slave3.RDATA), 
        .RDATA_slave4(slave4.RDATA), 
        .RDATA_slave5(slave5.RDATA), 
        .RDATA_slaveDefault(slaveDefault.RDATA),
        .RRESP_slave0(slave0.RRESP), 
        .RRESP_slave1(slave1.RRESP), 
        .RRESP_slave2(slave2.RRESP), 
        .RRESP_slave3(slave3.RRESP), 
        .RRESP_slave4(slave4.RRESP), 
        .RRESP_slave5(slave5.RRESP), 
        .RRESP_slaveDefault(slaveDefault.RRESP),
        .RLAST_slave0(slave0.RLAST), 
        .RLAST_slave1(slave1.RLAST), 
        .RLAST_slave2(slave2.RLAST), 
        .RLAST_slave3(slave3.RLAST), 
        .RLAST_slave4(slave4.RLAST), 
        .RLAST_slave5(slave5.RLAST), 
        .RLAST_slaveDefault(slaveDefault.RLAST),
        .RVALID_slave0(slave0.RVALID), 
        .RVALID_slave1(slave1.RVALID), 
        .RVALID_slave2(slave2.RVALID), 
        .RVALID_slave3(slave3.RVALID), 
        .RVALID_slave4(slave4.RVALID), 
        .RVALID_slave5(slave5.RVALID), 
        .RVALID_slaveDefault(slaveDefault.RVALID),

        .RID_master0(master0.RID), 
        .RID_master1(master1.RID),
        .RDATA_master0(master0.RDATA),
        .RDATA_master1(master1.RDATA),
        .RRESP_master0(master0.RRESP), 
        .RRESP_master1(master1.RRESP),
        .RLAST_master0(master0.RLAST), 
        .RLAST_master1(master1.RLAST),
        .RVALID_master0(master0.RVALID), 
        .RVALID_master1(master1.RVALID),

        .RREADY_master0(master0.RREADY), 
        .RREADY_master1(master1.RREADY),

        .RREADY_MtoS0(slave0.RREADY), 
        .RREADY_MtoS1(slave1.RREADY), 
        .RREADY_MtoS2(slave2.RREADY), 
        .RREADY_MtoS3(slave3.RREADY), 
        .RREADY_MtoS4(slave4.RREADY), 
        .RREADY_MtoS5(slave5.RREADY), 
        .RREADY_MtoSDefault(slaveDefault.RREADY)
    );
    DefaultSlave DefaultSlave(
        .clk(ACLK),
        .rstn(ARESETn),
        // AWx
        .AWID_S(slaveDefault.AWID),
        .AWADDR_S(slaveDefault.AWADDR),
        .AWLEN_S(slaveDefault.AWLEN),
        .AWSIZE_S(slaveDefault.AWSIZE),
        .AWBURST_S(slaveDefault.AWBURST),
        .AWVALID_S(slaveDefault.AWVALID),
        .AWREADY_S(slaveDefault.AWREADY),
        // Wx
        .WDATA_S(slaveDefault.WDATA),
        .WSTRB_S(slaveDefault.WSTRB),
        .WLAST_S(slaveDefault.WLAST),
        .WVALID_S(slaveDefault.WVALID),
        .WREADY_S(slaveDefault.WREADY),
        // Bx
        .BID_S(slaveDefault.BID),
        .BRESP_S(slaveDefault.BRESP),
        .BVALID_S(slaveDefault.BVALID),
        .BREADY_S(slaveDefault.BREADY),
        // ARx
        .ARID_S(slaveDefault.ARID),
        .ARADDR_S(slaveDefault.ARADDR),
        .ARLEN_S(slaveDefault.ARLEN),
        .ARSIZE_S(slaveDefault.ARSIZE),
        .ARBURST_S(slaveDefault.ARBURST),
        .ARVALID_S(slaveDefault.ARVALID),
        .ARREADY_S(slaveDefault.ARREADY),
        // Rx
        .RID_S(slaveDefault.RID),
        .RDATA_S(slaveDefault.RDATA),
        .RRESP_S(slaveDefault.RRESP),
        .RLAST_S(slaveDefault.RLAST),
        .RVALID_S(slaveDefault.RVALID),
        .RREADY_S(slaveDefault.RREADY)
);


endmodule
