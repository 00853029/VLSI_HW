`include "CPU_wrapper.sv"
`include "AXI/AXI.sv"
`include "SRAM_wrapper.sv"
`include "AXI_define.svh"
`include "Dram_wrapper.sv"
`include "Rom_wrapper.sv"
`include "WDT_wrapper.sv"
`include "SCTRL_wrapper.sv"
`include "AXI_interface_slave.sv"
`include "AXI_interface_master.sv"

module top(
    input clk, 
    input clk2,
    input rst,
    input rst2,
    //ROM
    output logic ROM_enable,
    output logic ROM_read,
    output logic [11:0] ROM_address,
    input  [`AXI_DATA_BITS-1:0] ROM_out,
    //DRAM
    output DRAM_CSn,
    output [`AXI_STRB_BITS-1:0] DRAM_WEn,
    output DRAM_RASn,
    output DRAM_CASn,
    output [10:0] DRAM_A,
    output [`AXI_DATA_BITS-1:0] DRAM_D,
    input [`AXI_DATA_BITS-1:0] DRAM_Q,
    input DRAM_valid,
    //sensor
    input sensor_ready,
    input [31:0]sensor_out,
    output sensor_en
);

    AXI_interface_master master0();
    AXI_interface_master master1();

    //slave
    AXI_interface_slave slave0(); // ROM
    AXI_interface_slave slave1(); // IM
    AXI_interface_slave slave2(); // DM
    AXI_interface_slave slave3(); // sensor_strl
    AXI_interface_slave slave4(); // WDT
    AXI_interface_slave slave5(); // DRAM
    
    logic interrupt;
    logic timeout;
    logic ROM_enable_r;
    logic ROM_read_r;
    logic [11:0] ROM_address_r;

    // always_ff@(posedge clk) begin
    //     if(rst) begin
    //         ROM_enable  <= 1'b0;
    //         ROM_read    <= 1'b0;
    //         ROM_address <= 32'b0;
    //     end
    //     else begin
    //         ROM_enable  <= ROM_enable_r;
    //         ROM_read    <= ROM_read_r;
    //         ROM_address <= ROM_address_r;
    //     end
    // end

    AXI AXI(
        .ACLK(clk),
        .ARESETn(rst),
        //master
        .master0(master0),
        .master1(master1),

        //slave
        .slave0(slave0),
        .slave1(slave1),
        .slave2(slave2),
        .slave3(slave3),
        .slave4(slave4),
        .slave5(slave5)
    );

    CPU_wrapper CPU_wrapper(
        .clk(clk),
        .rst(rst),
        //MASTER 0:
        //WA master0
        .AWID_master0(master0.AWID),
        .AWADDR_master0(master0.AWADDR),
        .AWLEN_master0(master0.AWLEN),
        .AWSIZE_master0(master0.AWSIZE),
        .AWBURST_master0(master0.AWBURST),
        .AWVALID_master0(master0.AWVALID),
        .AWREADY_master0(master0.AWREADY),

        //WD master0
        .WDATA_master0(master0.WDATA),
        .WSTRB_master0(master0.WSTRB),
        .WLAST_master0(master0.WLAST),
        .WVALID_master0(master0.WVALID),
        .WREADY_master0(master0.WREADY),

        //WR master0
        .BID_master0(master0.BID),
        .BRESP_master0(master0.BRESP),
        .BVALID_master0(master0.BVALID),
        .BREADY_master0(master0.BREADY),

        //RA master0
        .ARID_master0(master0.ARID),
        .ARADDR_master0(master0.ARADDR),
        .ARLEN_master0(master0.ARLEN),
        .ARSIZE_master0(master0.ARSIZE),
        .ARBURST_master0(master0.ARBURST),
        .ARVALID_master0(master0.ARVALID),
        .ARREADY_master0(master0.ARREADY),
        //RD master0
        .RID_master0(master0.RID),
        .RDATA_master0(master0.RDATA),
        .RRESP_master0(master0.RRESP),
        .RLAST_master0(master0.RLAST),
        .RVALID_master0(master0.RVALID),
        .RREADY_master0(master0.RREADY),

        //MASTER 1:
        //WA master1
        .AWID_master1(master1.AWID),
        .AWADDR_master1(master1.AWADDR),
        .AWLEN_master1(master1.AWLEN),
        .AWSIZE_master1(master1.AWSIZE),
        .AWBURST_master1(master1.AWBURST),
        .AWVALID_master1(master1.AWVALID),
        .AWREADY_master1(master1.AWREADY),

        //WD master1
        .WDATA_master1(master1.WDATA),
        .WSTRB_master1(master1.WSTRB),
        .WLAST_master1(master1.WLAST),
        .WVALID_master1(master1.WVALID),
        .WREADY_master1(master1.WREADY),

        //WR master1
        .BID_master1(master1.BID),
        .BRESP_master1(master1.BRESP),
        .BVALID_master1(master1.BVALID),
        .BREADY_master1(master1.BREADY),

        //RA master1
        .ARID_master1(master1.ARID),
        .ARADDR_master1(master1.ARADDR),
        .ARLEN_master1(master1.ARLEN),
        .ARSIZE_master1(master1.ARSIZE),
        .ARBURST_master1(master1.ARBURST),
        .ARVALID_master1(master1.ARVALID),
        .ARREADY_master1(master1.ARREADY),
        //RD master1
        .RID_master1(master1.RID),
        .RDATA_master1(master1.RDATA),
        .RRESP_master1(master1.RRESP),
        .RLAST_master1(master1.RLAST),
        .RVALID_master1(master1.RVALID),
        .RREADY_master1(master1.RREADY),

        //hw3
        .interrupt(interrupt),
        .timeout(timeout)
    );

    Rom_wrapper Rom_wrapper(
        .clk(clk),
        .rst(rst),

        .DO_ROM(ROM_out),
        .OE_ROM(ROM_read),
        .CS_ROM(ROM_enable),
        .A_ROM(ROM_address),

        .slave(slave0)
    );

    SRAM_wrapper IM1(
        .clk(clk),
        .rstn(rst), //naughty
        // AWx
        .AWID_S(slave1.AWID),
        .AWADDR_S(slave1.AWADDR),
        .AWLEN_S(slave1.AWLEN),
        .AWSIZE_S(slave1.AWSIZE),
        .AWBURST_S(slave1.AWBURST),
        .AWVALID_S(slave1.AWVALID),
        .AWREADY_S(slave1.AWREADY),
        // Wx
        .WDATA_S(slave1.WDATA),
        .WSTRB_S(slave1.WSTRB),
        .WLAST_S(slave1.WLAST),
        .WVALID_S(slave1.WVALID),
        .WREADY_S(slave1.WREADY),
        // Bx
        .BID_S(slave1.BID),
        .BRESP_S(slave1.BRESP),
        .BVALID_S(slave1.BVALID),
        .BREADY_S(slave1.BREADY),
        // ARx
        .ARID_S(slave1.ARID),
        .ARADDR_S(slave1.ARADDR),
        .ARLEN_S(slave1.ARLEN),
        .ARSIZE_S(slave1.ARSIZE),
        .ARBURST_S(slave1.ARBURST),
        .ARVALID_S(slave1.ARVALID),
        .ARREADY_S(slave1.ARREADY),
        // Rx
        .RID_S(slave1.RID),
        .RDATA_S(slave1.RDATA),
        .RRESP_S(slave1.RRESP),
        .RLAST_S(slave1.RLAST),
        .RVALID_S(slave1.RVALID),
        .RREADY_S(slave1.RREADY)
    );

    SRAM_wrapper DM1(
        .clk(clk),
        .rstn(rst), //naughty
        // AWx
        .AWID_S(slave2.AWID),
        .AWADDR_S(slave2.AWADDR),
        .AWLEN_S(slave2.AWLEN),
        .AWSIZE_S(slave2.AWSIZE),
        .AWBURST_S(slave2.AWBURST),
        .AWVALID_S(slave2.AWVALID),
        .AWREADY_S(slave2.AWREADY),
        // Wx
        .WDATA_S(slave2.WDATA),
        .WSTRB_S(slave2.WSTRB),
        .WLAST_S(slave2.WLAST),
        .WVALID_S(slave2.WVALID),
        .WREADY_S(slave2.WREADY),
        // Bx
        .BID_S(slave2.BID),
        .BRESP_S(slave2.BRESP),
        .BVALID_S(slave2.BVALID),
        .BREADY_S(slave2.BREADY),
        // ARx
        .ARID_S(slave2.ARID),
        .ARADDR_S(slave2.ARADDR),
        .ARLEN_S(slave2.ARLEN),
        .ARSIZE_S(slave2.ARSIZE),
        .ARBURST_S(slave2.ARBURST),
        .ARVALID_S(slave2.ARVALID),
        .ARREADY_S(slave2.ARREADY),
        // Rx
        .RID_S(slave2.RID),
        .RDATA_S(slave2.RDATA),
        .RRESP_S(slave2.RRESP),
        .RLAST_S(slave2.RLAST),
        .RVALID_S(slave2.RVALID),
        .RREADY_S(slave2.RREADY)
    );

    SCTRL_wrapper SCTRL_wrapper(
        .clk(clk),
        .rstn(rst),

        .slave(slave3),
        .sensor_ready(sensor_ready),
        .sensor_out(sensor_out),    //data from sensor
        .sensor_en(sensor_en),
        .sensor_interrupt(interrupt)
    );

    WDT_wrapper WDT_wrapper(
        .clk(clk),
        .clk2(clk2),
        .rst(rst),
        .rst2(rst2),

        .slave(slave4),
        .wto(timeout)
    );

    Dram_wrapper Dram_wrapper(
        .clk(clk),
        .rst(rst),

        .slave(slave5),

        .Q(DRAM_Q),
        .VALID(DRAM_valid),

        .CSn(DRAM_CSn),
        .WEn(DRAM_WEn),
        .RASn(DRAM_RASn),
        .CASn(DRAM_CASn),
        .A(DRAM_A),
        .D(DRAM_D)
    );

endmodule
