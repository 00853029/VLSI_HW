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
`include "async_fifo_core.sv"
module AXI
(
    input logic                       CPU_CLK_i,      
    input logic                       AXI_CLK_i,        
    input logic                       ROM_CLK_i,      
    input logic                       DRAM_CLK_i,
    input logic                       SRAM_CLK_i,
    input logic                       CPU_RST_i,      
    input logic                       AXI_RST_i,        
    input logic                       ROM_RST_i,      
    input logic                       DRAM_RST_i,
    input logic                       SRAM_RST_i,   
    
    output logic                      S5_R_fifo_full,
    output logic                      R_S5_fifo_empty,

    //fifo
    // M0
    /*output logic                      M0_RA_fifo_full,
    output logic                      RA_M0_fifo_empty,

    output logic                      M0_R_fifo_full,
    output logic                      R_M0_fifo_empty,
    // M1
    output logic                      M1_RA_fifo_full,
    output logic                      RA_M1_fifo_empty,

    output logic                      M1_R_fifo_full,
    output logic                      R_M1_fifo_empty,

    output logic                      M1_WA_fifo_full,
    output logic                      WA_M1_fifo_empty,

    output logic                      M1_W_fifo_full,
    output logic                      W_M1_fifo_empty,

    output logic                      M1_B_fifo_full,
    output logic                      B_M1_fifo_empty,
    
    // S0
    output logic                      S0_RA_fifo_full,
    output logic                      RA_S0_fifo_empty,

    output logic                      S0_R_fifo_full,
    output logic                      R_S0_fifo_empty,

    output logic                      S0_WA_fifo_full,
    output logic                      S0_WA_fifo_empty,

    output logic                      S0_W_fifo_full,
    output logic                      W_S0_fifo_emmpty,

    output logic                      S0_B_fifo_full,
    output logic                      B_S0_fifo_empty,

    // S1
    output logic                      S1_RA_fifo_full,
    output logic                      RA_S1_fifo_empty,

    output logic                      S1_R_fifo_full,
    output logic                      R_S1_fifo_empty,

    output logic                      S1_WA_fifo_full,
    output logic                      WA_S1_fifo_empty,

    output logic                      S1_W_fifo_full,
    output logic                      W_S1_fifo_empty,

    output logic                      S1_B_fifo_full,
    output logic                      B_S1_fifo_empty,

    // S2
    output logic                      S2_RA_fifo_full,
    output logic                      RA_S2_fifo_empty,

    output logic                      S2_R_fifo_full,
    output logic                      R_S2_fifo_empty,

    output logic                      S2_WA_fifo_full,
    output logic                      WA_S2_fifo_empty,

    output logic                      S2_W_fifo_full,
    output logic                      W_S2_fifo_empty,

    output logic                      S2_B_fifo_full,
    output logic                      B_S2_fifo_empty,

    // S3
    output logic                      S3_RA_fifo_full,
    output logic                      RA_S3_fifo_empty,

    output logic                      S3_R_fifo_full,
    output logic                      R_S3_fifo_empty,

    output logic                      S3_WA_fifo_full,
    output logic                      WA_S3_fifo_empty,

    output logic                      S3_W_fifo_full,
    output logic                      W_S3_fifo_empty,

    output logic                      S3_B_fifo_full,
    output logic                      B_S3_fifo_empty,

    // S4
    output logic                      S4_RA_fifo_full,
    output logic                      RA_S4_fifo_empty,

    output logic                      S4_R_fifo_full,
    output logic                      R_S4_fifo_empty,

    output logic                      S4_WA_fifo_full,
    output logic                      WA_S4_fifo_empty,

    output logic                      S4_W_fifo_full,
    output logic                      W_S4_fifo_empty,

    output logic                      S4_B_fifo_full,
    output logic                      B_S4_fifo_empty,

    // S5
    output logic                      S5_RA_fifo_full,
    output logic                      RA_S5_fifo_empty,

    output logic                      S5_R_fifo_full,
    output logic                      R_S5_fifo_empty,

    output logic                      S5_WA_fifo_full,
    output logic                      WA_S5_fifo_empty,

    output logic                      S5_W_fifo_full,
    output logic                      W_S5_fifo_empty,

    output logic                      S5_B_fifo_full,
    output logic                      B_S5_fifo_empty,*/

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

	logic                      M0_RA_fifo_full;
    logic                      M0_R_fifo_full;
    // M1
    logic                      M1_RA_fifo_full;
    logic                      M1_R_fifo_full;
    logic                      M1_WA_fifo_full;
    logic                      M1_W_fifo_full;
    logic                      M1_B_fifo_full;
    
    // S0
    logic                      S0_RA_fifo_full;
    logic                      S0_R_fifo_full;
    logic                      S0_WA_fifo_full;
    logic                      S0_W_fifo_full;
    logic                      S0_B_fifo_full;

    // S1
    logic                      S1_RA_fifo_full;
    logic                      S1_R_fifo_full;
    logic                      S1_WA_fifo_full;
    logic                      S1_W_fifo_full;
    logic                      S1_B_fifo_full;

    // S2
    logic                      S2_RA_fifo_full;
    logic                      S2_R_fifo_full;
    logic                      S2_WA_fifo_full;
    logic                      S2_W_fifo_full;
    logic                      S2_B_fifo_full;

    // S3
    logic                      S3_RA_fifo_full;
    logic                      S3_R_fifo_full;
    logic                      S3_WA_fifo_full;
    logic                      S3_W_fifo_full;
    logic                      S3_B_fifo_full;
    // S4
    logic                      S4_RA_fifo_full;
    logic                      S4_R_fifo_full;
    logic                      S4_WA_fifo_full;
    logic                      S4_W_fifo_full;
    logic                      S4_B_fifo_full;

    // S5
    logic                      S5_RA_fifo_full;
    //logic                      S5_R_fifo_full;
    logic                      S5_WA_fifo_full;
    logic                      S5_W_fifo_full;
    logic                      S5_B_fifo_full;
	
	/////
    logic RA_slave_full;
    logic WA_slave_full;

    logic RA_master_full;
    logic WA_master_full;

    //M0 to AXI: 
    //M0_RA_fifo//----------------------------------------------
    logic [`AXI_ID_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2 - 1 : 0] M0_RA_wdata, M0_RA_rdata,wire_M0_RA_rdata;
    logic [`AXI_ID_BITS-1:0] master0_ARID;
    logic [`AXI_ADDR_BITS-1:0] master0_ARADDR;
    logic [`AXI_LEN_BITS-1:0] master0_ARLEN;
    logic [`AXI_SIZE_BITS-1:0] master0_ARSIZE;
    logic [1:0] master0_ARBURST;
    logic master0_ARVALID;
    logic M0_RA_fifo_empty;





    assign M0_RA_wdata = {master0.ARID, master0.ARADDR, master0.ARLEN, master0.ARSIZE, master0.ARBURST};
    assign wire_M0_RA_rdata = (~M0_RA_fifo_empty & ~RA_slave_full)? M0_RA_rdata : {(`AXI_ID_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2){1'b0}};
    assign {master0_ARID, master0_ARADDR, master0_ARLEN, master0_ARSIZE, master0_ARBURST} = wire_M0_RA_rdata;
    assign master0_ARVALID = (M0_RA_fifo_empty) ? 1'b0 : 1'b1;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, (`AXI_ID_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2)
    ) M0_RA_fifo (
        .wclk(CPU_CLK_i),
        .wreset(CPU_RST_i),
        .wen(master0.ARVALID),
        .wdata(M0_RA_wdata),
        .wfull(M0_RA_fifo_full),
        .rclk(AXI_CLK_i),
        .rreset(AXI_RST_i),
        .ren(~RA_slave_full), // full?
        .rdata(M0_RA_rdata),
        .rempty(M0_RA_fifo_empty)
    );
    //----------------------------------------------

    //M0_R_fifo//----------------------------------------------
    logic M0_R_wdata, M0_R_rdata, wire_M0_R_rdata;
    logic master0_RREADY;
    logic M0_R_fifo_empty;

    assign M0_R_wdata = master0.RREADY;
    assign wire_M0_R_rdata = (~M0_R_fifo_empty)? M0_R_rdata : 1'b0;	//ren not done
    assign master0_RREADY = wire_M0_R_rdata;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, 1
    ) M0_R_fifo (
        .wclk(CPU_CLK_i),
        .wreset(CPU_RST_i),
        .wen(master0.RREADY),
        .wdata(M0_R_wdata),
        .wfull(M0_R_fifo_full),
        .rclk(AXI_CLK_i),
        .rreset(AXI_RST_i),
        .ren(1'b1),// full?
        .rdata(M0_R_rdata),
        .rempty(M0_R_fifo_empty)
    );
    //----------------------------------------------

    //AXI to M0: 
    //RA_M0_fifo //----------------------------------------------

    logic RA_M0_wdata, RA_M0_rdata, wire_RA_M0_rdata;
    logic master0_ARREADY;
    logic RA_M0_fifo_empty,RA_M0_fifo_full;

    assign RA_M0_wdata = master0_ARREADY;
    assign wire_RA_M0_rdata = RA_M0_fifo_empty ? 1'b0 : RA_M0_rdata;
    assign master0.ARREADY = wire_RA_M0_rdata;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, 1
    ) RA_M0_fifo (
        .wclk(AXI_CLK_i),
        .wreset(AXI_RST_i),
        .wen(master0_ARREADY),
        .wdata(RA_M0_wdata),
        .wfull(RA_M0_fifo_full),
        .rclk(CPU_CLK_i),
        .rreset(CPU_RST_i),
        .ren(1'b1),// full?
        .rdata(RA_M0_rdata),
        .rempty(RA_M0_fifo_empty)
    );
    
    //----------------------------------------------
    //R_M0_fifo//----------------------------------------------
    logic [`AXI_ID_BITS + `AXI_DATA_BITS + 2 + 1 - 1 : 0] R_M0_wdata, R_M0_rdata, wire_R_M0_rdata;
    logic [`AXI_ID_BITS-1:0] master0_RID;
    logic [`AXI_DATA_BITS-1:0] master0_RDATA;
    logic [1:0] master0_RRESP;
    logic master0_RLAST;
    logic master0_RVALID;
    logic R_M0_fifo_empty;

    assign R_M0_wdata = {master0_RID, master0_RDATA, master0_RRESP, master0_RLAST};
    assign  wire_R_M0_rdata = (~R_M0_fifo_empty) ? R_M0_rdata : {(`AXI_ID_BITS + `AXI_DATA_BITS + 2 + 1){1'b0}};	//ren not done
    assign {master0.RID, master0.RDATA, master0.RRESP, master0.RLAST} = wire_R_M0_rdata;
    assign master0.RVALID = (R_M0_fifo_empty) ? 1'b0 : 1'b1;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, (`AXI_ID_BITS + `AXI_DATA_BITS + 2 + 1)
    ) R_M0_fifo (
        .wclk(AXI_CLK_i),
        .wreset(AXI_RST_i),
        .wen(master0_RVALID),
        .wdata(R_M0_wdata),
        .wfull(R_M0_fifo_full),
        .rclk(CPU_CLK_i),
        .rreset(CPU_RST_i),
        .ren(1'b1),// full?
        .rdata(R_M0_rdata),
        .rempty(R_M0_fifo_empty)
    );
    //----------------------------------------------


    //M1 to AXI: 
    //M1_RA_fifo//----------------------------------------------
    logic [`AXI_ID_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2 - 1 : 0] M1_RA_wdata, M1_RA_rdata, wire_M1_RA_rdata;
    logic [`AXI_ID_BITS-1:0] master1_ARID;
    logic [`AXI_ADDR_BITS-1:0] master1_ARADDR;
    logic [`AXI_LEN_BITS-1:0] master1_ARLEN;
    logic [`AXI_SIZE_BITS-1:0] master1_ARSIZE;
    logic [1:0] master1_ARBURST;
    logic master1_ARVALID;
    logic M1_RA_fifo_empty;

    assign M1_RA_wdata = {master1.ARID, master1.ARADDR, master1.ARLEN, master1.ARSIZE, master1.ARBURST};
    assign wire_M1_RA_rdata = (~M1_RA_fifo_empty) ? M1_RA_rdata : {(`AXI_ID_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2){1'b0}};
    assign {master1_ARID, master1_ARADDR, master1_ARLEN, master1_ARSIZE, master1_ARBURST} = wire_M1_RA_rdata;
    assign master1_ARVALID = (M1_RA_fifo_empty) ? 1'b0 : 1'b1;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, (`AXI_ID_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2)
    ) M1_RA_fifo (
        .wclk(CPU_CLK_i),
        .wreset(CPU_RST_i),
        .wen(master1.ARVALID),
        .wdata(M1_RA_wdata),
        .wfull(M1_RA_fifo_full),
        .rclk(AXI_CLK_i),
        .rreset(AXI_RST_i),
        .ren(~RA_slave_full), // full?
        .rdata(M1_RA_rdata),
        .rempty(M1_RA_fifo_empty)
    );
    //----------------------------------------------

    //M1_R_fifo//----------------------------------------------
    logic M1_R_wdata, M1_R_rdata, wire_M1_R_rdata;
    logic master1_RREADY;
    logic M1_R_fifo_empty;

    assign M1_R_wdata = master1.RREADY;
    assign wire_M1_R_rdata = (~M1_R_fifo_empty)? M1_R_rdata : 1'b0;
    assign master1_RREADY = wire_M1_R_rdata;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, 1
    ) M1_R_fifo (
        .wclk(CPU_CLK_i),
        .wreset(CPU_RST_i),
        .wen(master1.RREADY),
        .wdata(M1_R_wdata),
        .wfull(M1_R_fifo_full),
        .rclk(AXI_CLK_i),
        .rreset(AXI_RST_i),
        .ren(1'b1),// full?
        .rdata(M1_R_rdata),
        .rempty(M1_R_fifo_empty)
    );
    //----------------------------------------------

    //M1_WA_fifo//----------------------------------------------
    logic [`AXI_ID_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2 - 1 : 0] M1_WA_wdata, M1_WA_rdata, wire_M1_WA_rdata;
    logic [`AXI_ID_BITS-1:0] master1_AWID;
    logic [`AXI_ADDR_BITS-1:0] master1_AWADDR;
    logic [`AXI_LEN_BITS-1:0] master1_AWLEN;
    logic [`AXI_SIZE_BITS-1:0] master1_AWSIZE;
    logic [1:0] master1_AWBURST;
    logic master1_AWVALID;
    logic M1_WA_fifo_empty;

    assign M1_WA_wdata = {master1.AWID, master1.AWADDR, master1.AWLEN, master1.AWSIZE, master1.AWBURST};
    assign wire_M1_WA_rdata = (~M1_WA_fifo_empty)? M1_WA_rdata : {(`AXI_ID_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2){1'b0}};
    assign {master1_AWID, master1_AWADDR, master1_AWLEN, master1_AWSIZE, master1_AWBURST} = wire_M1_WA_rdata;
    assign master1_AWVALID = (M1_WA_fifo_empty) ? 1'b0 : 1'b1;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, (`AXI_ID_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2)
    ) M1_WA_fifo (
        .wclk(CPU_CLK_i),
        .wreset(CPU_RST_i),
        .wen(master1.AWVALID),
        .wdata(M1_WA_wdata),
        .wfull(M1_WA_fifo_full),
        .rclk(AXI_CLK_i),
        .rreset(AXI_RST_i),
        .ren(~WA_slave_full),// full?
        .rdata(M1_WA_rdata),
        .rempty(M1_WA_fifo_empty)
    );
    //----------------------------------------------
    //M1_W_fifo//----------------------------------------------
    logic [`AXI_DATA_BITS + `AXI_STRB_BITS + 1 - 1 : 0] M1_W_wdata, M1_W_rdata, wire_M1_W_rdata;
    logic [`AXI_DATA_BITS-1:0] master1_WDATA;
    logic [`AXI_STRB_BITS-1:0] master1_WSTRB;
    logic master1_WLAST;
    logic master1_WVALID;
    logic M1_W_fifo_empty;

    assign M1_W_wdata = {master1.WDATA, master1.WSTRB, master1.WLAST};
    assign wire_M1_W_rdata = (~M1_W_fifo_empty)? M1_W_rdata : {(`AXI_DATA_BITS + `AXI_STRB_BITS + 1){1'b0}};
    assign {master1_WDATA, master1_WSTRB, master1_WLAST} = wire_M1_W_rdata;
    assign master1_WVALID = (M1_W_fifo_empty) ? 1'b0 : 1'b1;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, (`AXI_DATA_BITS + `AXI_STRB_BITS + 1)
    ) M1_W_fifo (
        .wclk(CPU_CLK_i),
        .wreset(CPU_RST_i),
        .wen(master1.WVALID),
        .wdata(M1_W_wdata),
        .wfull(M1_W_fifo_full),
        .rclk(AXI_CLK_i),
        .rreset(AXI_RST_i),
        .ren(1'b1),// full?
        .rdata(M1_W_rdata),
        .rempty(M1_W_fifo_empty)
    );
    //----------------------------------------------

    //M1_B_fifo//----------------------------------------------
    logic M1_B_wdata, M1_B_rdata, wire_M1_B_rdata;
    logic master1_BREADY;
    logic M1_B_fifo_empty;

    assign M1_B_wdata = master1.BREADY;
    assign wire_M1_B_rdata = (~M1_B_fifo_empty)? M1_B_rdata : 1'b0;
    assign master1_BREADY = wire_M1_B_rdata;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, 1
    ) M1_B_fifo (
        .wclk(CPU_CLK_i),
        .wreset(CPU_RST_i),
        .wen(master1.BREADY),
        .wdata(M1_B_wdata),
        .wfull(M1_B_fifo_full),
        .rclk(AXI_CLK_i),
        .rreset(AXI_RST_i),
        .ren(1'b1),// full?
        .rdata(M1_B_rdata),
        .rempty(M1_B_fifo_empty)
    );
    //----------------------------------------------
    //AXI to M1 :

    //RA_M1_fifo //----------------------------------------------

    logic RA_M1_wdata, RA_M1_rdata, wire_RA_M1_rdata;
    logic master1_ARREADY;
    logic RA_M1_fifo_empty,RA_M1_fifo_full;

    assign RA_M1_wdata = master1_ARREADY;
    assign wire_RA_M1_rdata = (~RA_M1_fifo_empty)? RA_M1_rdata : 1'b0;
    assign master1.ARREADY = wire_RA_M1_rdata;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, 1
    ) RA_M1_fifo (
        .wclk(AXI_CLK_i),
        .wreset(AXI_RST_i),
        .wen(master1_ARREADY),
        .wdata(RA_M1_wdata),
        .wfull(RA_M1_fifo_full),
        .rclk(CPU_CLK_i),
        .rreset(CPU_RST_i),
        .ren(1'b1),// full?
        .rdata(RA_M1_rdata),
        .rempty(RA_M1_fifo_empty)
    );
    
    //----------------------------------------------

    //R_M1_fifo//----------------------------------------------
    logic [`AXI_ID_BITS + `AXI_DATA_BITS + 2 + 1 - 1 : 0] R_M1_wdata, R_M1_rdata, wire_R_M1_rdata;
    logic [`AXI_ID_BITS-1:0] master1_RID;
    logic [`AXI_DATA_BITS-1:0] master1_RDATA;
    logic [1:0] master1_RRESP;
    logic master1_RLAST;
    logic master1_RVALID;
    logic R_M1_fifo_empty;

    assign R_M1_wdata = {master1_RID, master1_RDATA, master1_RRESP, master1_RLAST};
    assign wire_R_M1_rdata = (~R_M1_fifo_empty)? R_M1_rdata : {(`AXI_ID_BITS + `AXI_DATA_BITS + 2 + 1){1'b0}};
    assign {master1.RID, master1.RDATA, master1.RRESP, master1.RLAST} = wire_R_M1_rdata;
    assign master1.RVALID = (R_M1_fifo_empty) ? 1'b0 : 1'b1;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, (`AXI_ID_BITS + `AXI_DATA_BITS + 2 + 1)
    ) R_M1_fifo (
        .wclk(AXI_CLK_i),
        .wreset(AXI_RST_i),
        .wen(master1_RVALID),
        .wdata(R_M1_wdata),
        .wfull(R_M1_fifo_full),
        .rclk(CPU_CLK_i),
        .rreset(CPU_RST_i),
        .ren(1'b1),// full?
        .rdata(R_M1_rdata),
        .rempty(R_M1_fifo_empty)
    );
    //----------------------------------------------
    //WA_M1_fifo //----------------------------------------------

    logic WA_M1_wdata, WA_M1_rdata, wire_WA_M1_rdata;
    logic master1_AWREADY;
    logic WA_M1_fifo_empty,WA_M1_fifo_full;

    assign WA_M1_wdata = master1_AWREADY;
    assign wire_WA_M1_rdata = (~WA_M1_fifo_empty)? WA_M1_rdata : 1'b0;
    assign master1.AWREADY = wire_WA_M1_rdata;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, 1
    ) WA_M1_fifo (
        .wclk(AXI_CLK_i),
        .wreset(AXI_RST_i),
        .wen(master1_AWREADY),
        .wdata(WA_M1_wdata),
        .wfull(WA_M1_fifo_full),
        .rclk(CPU_CLK_i),
        .rreset(CPU_RST_i),
        .ren(1'b1),// full?
        .rdata(WA_M1_rdata),
        .rempty(WA_M1_fifo_empty)
    );
    
    //----------------------------------------------
    //W_M1_fifo //----------------------------------------------

    logic W_M1_wdata, W_M1_rdata;
    logic master1_WREADY;
    logic W_M1_fifo_empty,W_M1_fifo_full;

    assign W_M1_wdata = master1_WREADY;
    assign master1.WREADY = W_M1_fifo_empty ? 1'b0 : W_M1_rdata;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, 1
    ) W_M1_fifo (
        .wclk(AXI_CLK_i),
        .wreset(AXI_RST_i),
        .wen(master1_WREADY),
        .wdata(W_M1_wdata),
        .wfull(W_M1_fifo_full),
        .rclk(CPU_CLK_i),
        .rreset(CPU_RST_i),
        .ren(1'b1),// full?
        .rdata(W_M1_rdata),
        .rempty(W_M1_fifo_empty)
    );
    
    //----------------------------------------------
    //B_M1_fifo //----------------------------------------------

    logic [`AXI_ID_BITS + 2 -1:0] B_M1_wdata, B_M1_rdata, wire_B_M1_rdata;
    logic [`AXI_ID_BITS-1:0] master1_BID;
    logic [1:0] master1_BRESP;
    logic master1_BVALID;
    logic B_M1_fifo_empty,B_M1_fifo_full;

    assign B_M1_wdata = {master1_BID, master1_BRESP};
    assign wire_B_M1_rdata = (~B_M1_fifo_empty) ? R_M1_rdata : {(`AXI_ID_BITS + 2){1'b0}};
    assign {master1.BID, master1.BRESP} = wire_B_M1_rdata;
    assign master1.BVALID = B_M1_fifo_empty ? 1'b0 : 1'b1;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, (`AXI_ID_BITS + 2)
    ) B_M1_fifo (
        .wclk(AXI_CLK_i),
        .wreset(AXI_RST_i),
        .wen(master1_BVALID),
        .wdata(B_M1_wdata),
        .wfull(B_M1_fifo_full),
        .rclk(CPU_CLK_i),
        .rreset(CPU_RST_i),
        .ren(1'b1),// full?
        .rdata(B_M1_rdata),
        .rempty(B_M1_fifo_empty)
    );
    
    //----------------------------------------------

    //S0 to AXI :
    //S0_RA_fifo//----------------------------------------------
    logic S0_RA_wdata, S0_RA_rdata;
    logic slave0_ARREADY;
    logic S0_RA_fifo_empty;

    assign S0_RA_wdata = slave0.ARREADY;
    assign slave0_ARREADY = S0_RA_fifo_empty ? 1'b0 : S0_RA_rdata;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, 1
    ) S0_RA_fifo (
        .wclk(ROM_CLK_i),
        .wreset(ROM_RST_i),
        .wen(slave0.ARREADY),
        .wdata(S0_RA_wdata),
        .wfull(S0_RA_fifo_full),
        .rclk(AXI_CLK_i),
        .rreset(AXI_RST_i),
        .ren(~RA_master_full),// full?
        .rdata(S0_RA_rdata),
        .rempty(S0_RA_fifo_empty)
    );
    //----------------------------------------------
    //S0_R_fifo//----------------------------------------------
    logic [`AXI_IDS_BITS + `AXI_DATA_BITS + 2 + 1 + 1 - 1 : 0] S0_R_wdata, S0_R_rdata , wire_S0_R_rdata;
    logic [`AXI_IDS_BITS-1:0] slave0_RID;
    logic [`AXI_DATA_BITS-1:0] slave0_RDATA;
    logic [1:0] slave0_RRESP;
    logic slave0_RLAST, slave0_RVALID;
    logic slave0_R_hs_done;
    logic S0_R_fifo_empty;

    assign S0_R_wdata = {slave0.RID, slave0.RDATA, slave0.RRESP, slave0.RLAST, slave0.R_hs_done};
    assign wire_S0_R_rdata = (~S0_R_fifo_empty)? S0_R_rdata : {(`AXI_IDS_BITS + `AXI_DATA_BITS + 2 + 1 + 1){1'b0}}; // ren not done
    assign {slave0_RID, slave0_RDATA, slave0_RRESP, slave0_RLAST, slave0_R_hs_done} = wire_S0_R_rdata;
    assign slave0_RVALID = (S0_R_fifo_empty) ? 1'b0 : 1'b1;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, (`AXI_IDS_BITS + `AXI_DATA_BITS + 2 + 1 + 1)
    ) S0_R_fifo (
        .wclk(ROM_CLK_i),
        .wreset(ROM_RST_i),
        .wen(slave0.RVALID),
        .wdata(S0_R_wdata),
        .wfull(S0_R_fifo_full),
        .rclk(AXI_CLK_i),
        .rreset(AXI_RST_i),
        .ren(1'b1),// full?
        .rdata(S0_R_rdata),
        .rempty(S0_R_fifo_empty)
    );
    //----------------------------------------------
    //S0_WA_fifo//----------------------------------------------
    logic S0_WA_wdata, S0_WA_rdata;
    logic slave0_AWREADY;
    logic S0_WA_fifo_empty;

    assign S0_WA_wdata = slave0.AWREADY;
    assign slave0_AWREADY = S0_WA_fifo_empty ? 1'b0 : S0_WA_rdata;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, 1
    ) S0_WA_fifo (
        .wclk(ROM_CLK_i),
        .wreset(ROM_RST_i),
        .wen(slave0.AWREADY),
        .wdata(S0_WA_wdata),
        .wfull(S0_WA_fifo_full),
        .rclk(AXI_CLK_i),
        .rreset(AXI_RST_i),
        .ren(~WA_master_full),// full?
        .rdata(S0_WA_rdata),
        .rempty(S0_WA_fifo_empty)
    );
    //----------------------------------------------
    //S0_W_fifo//----------------------------------------------
    logic S0_W_wdata, S0_W_rdata;
    logic slave0_WREADY;
    logic S0_W_fifo_empty;

    assign S0_W_wdata = slave0.WREADY;
    assign slave0_WREADY = S0_W_fifo_empty ? 1'b0 : S0_W_rdata;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, 1
    ) S0_W_fifo (
        .wclk(ROM_CLK_i),
        .wreset(ROM_RST_i),
        .wen(slave0.WREADY),
        .wdata(S0_W_wdata),
        .wfull(S0_W_fifo_full),
        .rclk(AXI_CLK_i),
        .rreset(AXI_RST_i),
        .ren(1'b1),// full?
        .rdata(S0_W_rdata),
        .rempty(S0_W_fifo_empty)
    );
    //----------------------------------------------
    //S0_B_fifo//----------------------------------------------
    logic [`AXI_IDS_BITS + `AXI_DATA_BITS + 2 + 1 - 1 : 0] S0_B_wdata, S0_B_rdata, wire_S0_B_rdata;
    logic [`AXI_IDS_BITS-1:0] slave0_BID;
    logic [1:0] slave0_BRESP;
    logic slave0_BVALID;
    logic S0_B_fifo_empty;

    assign S0_B_wdata = {slave0.BID, slave0.BRESP};
    assign wire_S0_B_rdata = (~S0_B_fifo_empty) ? S0_B_rdata : {(`AXI_IDS_BITS + `AXI_DATA_BITS + 2 + 1){1'b0}};
    assign {slave0_BID, slave0_BRESP} = wire_S0_B_rdata;
    assign slave0_BVALID = (S0_B_fifo_empty) ? 1'b0 : 1'b1;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, (`AXI_IDS_BITS + `AXI_DATA_BITS + 2 + 1)
    ) S0_B_fifo (
        .wclk(ROM_CLK_i),
        .wreset(ROM_RST_i),
        .wen(slave0.BVALID),
        .wdata(S0_B_wdata),
        .wfull(S0_B_fifo_full),
        .rclk(AXI_CLK_i),
        .rreset(AXI_RST_i),
        .ren(1'b1),// full?
        .rdata(S0_B_rdata),
        .rempty(S0_B_fifo_empty)
    );
    //----------------------------------------------
    //AXI to S0 : 
    //RA_S0_fifo//----------------------------------------------
    logic [`AXI_IDS_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2 - 1 : 0] RA_S0_wdata, RA_S0_rdata , wire_RA_S0_rdata;
    logic [`AXI_IDS_BITS-1:0] slave0_ARID;
    logic [`AXI_ADDR_BITS-1:0] slave0_ARADDR;
    logic [`AXI_LEN_BITS-1:0] slave0_ARLEN;
    logic [`AXI_SIZE_BITS-1:0] slave0_ARSIZE;
    logic [1:0] slave0_ARBURST;
    logic slave0_ARVALID;
    logic RA_S0_fifo_empty, RA_S0_fifo_full;

    assign RA_S0_wdata = {slave0_ARID, slave0_ARADDR, slave0_ARLEN, slave0_ARSIZE, slave0_ARBURST};
    assign wire_RA_S0_rdata = (~RA_S0_fifo_empty)? RA_S0_rdata : {(`AXI_IDS_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2){1'b0}};
    assign {slave0.ARID, slave0.ARADDR, slave0.ARLEN, slave0.ARSIZE, slave0.ARBURST} = wire_RA_S0_rdata;
    assign slave0.ARVALID = (RA_S0_fifo_empty) ? 1'b0 : 1'b1;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, (`AXI_IDS_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2)
    ) RA_S0_fifo (
        .wclk(AXI_CLK_i),
        .wreset(AXI_RST_i),
        .wen(slave0_ARVALID),
        .wdata(RA_S0_wdata),
        .wfull(RA_S0_fifo_full),
        .rclk(ROM_CLK_i),
        .rreset(ROM_RST_i),
        .ren(1'b1), // full?
        .rdata(RA_S0_rdata),
        .rempty(RA_S0_fifo_empty)
    );
    //----------------------------------------------
    //R_S0_fifo //----------------------------------------------

    logic R_S0_wdata, R_S0_rdata, wire_R_S0_rdata;
    logic slave0_RREADY;
    logic R_S0_fifo_empty,R_S0_fifo_full;

    assign R_S0_wdata = slave0_RREADY;
    assign wire_R_S0_rdata = (~R_S0_fifo_empty)? R_S0_rdata : 1'b0;	//ren not done
    assign slave0.RREADY = wire_R_S0_rdata;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, 1
    ) R_S0_fifo (
        .wclk(AXI_CLK_i),
        .wreset(AXI_RST_i),
        .wen(slave0_RREADY),
        .wdata(R_S0_wdata),
        .wfull(R_S0_fifo_full),
        .rclk(ROM_CLK_i),
        .rreset(ROM_RST_i),
        .ren(1'b1),// full?
        .rdata(R_S0_rdata),
        .rempty(R_S0_fifo_empty)
    );
    
    //----------------------------------------------
    //WA_S0_fifo//----------------------------------------------
    logic [`AXI_IDS_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2 - 1 : 0] WA_S0_wdata, WA_S0_rdata, wire_WA_S0_rdata;
    logic [`AXI_IDS_BITS-1:0] slave0_AWID;
    logic [`AXI_ADDR_BITS-1:0] slave0_AWADDR;
    logic [`AXI_LEN_BITS-1:0] slave0_AWLEN;
    logic [`AXI_SIZE_BITS-1:0] slave0_AWSIZE;
    logic [1:0] slave0_AWBURST;
    logic slave0_AWVALID;
    logic WA_S0_fifo_empty, WA_S0_fifo_full;

    assign WA_S0_wdata = {slave0_AWID, slave0_AWADDR, slave0_AWLEN, slave0_AWSIZE, slave0_AWBURST};
    assign wire_WA_S0_rdata = (~WA_S0_fifo_empty) ? WA_S0_rdata : {(`AXI_IDS_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2){1'b0}};
    assign {slave0.AWID, slave0.AWADDR, slave0.AWLEN, slave0.AWSIZE, slave0.AWBURST} = wire_WA_S0_rdata;
    assign slave0.AWVALID = (WA_S0_fifo_empty) ? 1'b0 : 1'b1;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, (`AXI_IDS_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2)
    ) WA_S0_fifo (
        .wclk(AXI_CLK_i),
        .wreset(AXI_RST_i),
        .wen(slave0_AWVALID),
        .wdata(WA_S0_wdata),
        .wfull(WA_S0_fifo_full),
        .rclk(ROM_CLK_i),
        .rreset(ROM_RST_i),
        .ren(1'b1), // full?
        .rdata(WA_S0_rdata),
        .rempty(WA_S0_fifo_empty)
    );
    //----------------------------------------------
    //W_S0_fifo//----------------------------------------------
    logic [`AXI_DATA_BITS + `AXI_STRB_BITS + 1 - 1 : 0] W_S0_wdata, W_S0_rdata, wire_W_S0_rdata;
    logic [`AXI_DATA_BITS-1:0] slave0_WDATA;
    logic [`AXI_STRB_BITS-1:0] slave0_WSTRB;
    logic slave0_WLAST;
    logic slave0_WVALID;
    logic W_S0_fifo_empty, W_S0_fifo_full;

    assign W_S0_wdata = {slave0_WDATA, slave0_WSTRB, slave0_WLAST};
    assign wire_W_S0_rdata = (~W_S0_fifo_empty) ? W_S0_rdata : {(`AXI_DATA_BITS + `AXI_STRB_BITS + 1){1'b0}};
    assign {slave0.WDATA, slave0.WSTRB, slave0.WLAST} = wire_W_S0_rdata;
    assign slave0.WVALID = (W_S0_fifo_empty) ? 1'b0 : 1'b1;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, (`AXI_DATA_BITS + `AXI_STRB_BITS + 1)
    ) W_S0_fifo (
        .wclk(AXI_CLK_i),
        .wreset(AXI_RST_i),
        .wen(slave0_WVALID),
        .wdata(W_S0_wdata),
        .wfull(W_S0_fifo_full),
        .rclk(ROM_CLK_i),
        .rreset(ROM_RST_i),
        .ren(1'b1), // full?
        .rdata(W_S0_rdata),
        .rempty(W_S0_fifo_empty)
    );
    //----------------------------------------------
    //B_S0_fifo //----------------------------------------------

    logic B_S0_wdata, B_S0_rdata;
    logic slave0_BREADY;
    logic B_S0_fifo_empty,B_S0_fifo_full;

    assign B_S0_wdata = slave0_BREADY;
    assign slave0.BREADY = B_S0_fifo_empty ? 1'b0 : B_S0_rdata;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, 1
    ) B_S0_fifo (
        .wclk(AXI_CLK_i),
        .wreset(AXI_RST_i),
        .wen(slave0_BREADY),
        .wdata(B_S0_wdata),
        .wfull(B_S0_fifo_full),
        .rclk(ROM_CLK_i),
        .rreset(ROM_RST_i),
        .ren(1'b1),// full?
        .rdata(B_S0_rdata),
        .rempty(B_S0_fifo_empty)
    );
    
    //----------------------------------------------

    //S1 to AXI :
    //S1_RA_fifo//----------------------------------------------
    logic S1_RA_wdata, S1_RA_rdata;
    logic slave1_ARREADY;
    logic S1_RA_fifo_empty;

    assign S1_RA_wdata = slave1.ARREADY;
    assign slave1_ARREADY = S1_RA_fifo_empty ? 1'b0 : S1_RA_rdata;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, 1
    ) S1_RA_fifo (
        .wclk(SRAM_CLK_i),
        .wreset(SRAM_RST_i),
        .wen(slave1.ARREADY),
        .wdata(S1_RA_wdata),
        .wfull(S1_RA_fifo_full),
        .rclk(AXI_CLK_i),
        .rreset(AXI_RST_i),
        .ren(~RA_master_full),// full?
        .rdata(S1_RA_rdata),
        .rempty(S1_RA_fifo_empty)
    );
    //----------------------------------------------
    //S1_R_fifo//----------------------------------------------
    logic [`AXI_IDS_BITS + `AXI_DATA_BITS + 2 + 1 + 1 - 1 : 0] S1_R_wdata, S1_R_rdata, wire_S1_R_rdata;
    logic [`AXI_IDS_BITS-1:0] slave1_RID;
    logic [`AXI_DATA_BITS-1:0] slave1_RDATA;
    logic [1:0] slave1_RRESP;
    logic slave1_RLAST, slave1_RVALID;
    logic slave1_R_hs_done;
    logic S1_R_fifo_empty;

    assign S1_R_wdata = {slave1.RID, slave1.RDATA, slave1.RRESP, slave1.RLAST, slave1.R_hs_done};
    assign wire_S1_R_rdata = (~S1_R_fifo_empty) ? S1_R_rdata : {(`AXI_IDS_BITS + `AXI_DATA_BITS + 2 + 1 + 1){1'b0}};
    assign {slave1_RID, slave1_RDATA, slave1_RRESP, slave1_RLAST, slave1_R_hs_done} = wire_S1_R_rdata;
    assign slave1_RVALID = (S1_R_fifo_empty) ? 1'b0 : 1'b1;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, (`AXI_IDS_BITS + `AXI_DATA_BITS + 2 + 1 + 1)
    ) S1_R_fifo (
        .wclk(SRAM_CLK_i),
        .wreset(SRAM_RST_i),
        .wen(slave1.RVALID),
        .wdata(S1_R_wdata),
        .wfull(S1_R_fifo_full),
        .rclk(AXI_CLK_i),
        .rreset(AXI_RST_i),
        .ren(1'b1),// full?
        .rdata(S1_R_rdata),
        .rempty(S1_R_fifo_empty)
    );
    //----------------------------------------------
    //S1_WA_fifo//----------------------------------------------
    logic S1_WA_wdata, S1_WA_rdata;
    logic slave1_AWREADY;
    logic S1_WA_fifo_empty;

    assign S1_WA_wdata = slave1.AWREADY;
    assign slave1_AWREADY = S1_WA_fifo_empty ? 1'b0 : S1_WA_rdata;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, 1
    ) S1_WA_fifo (
        .wclk(SRAM_CLK_i),
        .wreset(SRAM_RST_i),
        .wen(slave1.AWREADY),
        .wdata(S1_WA_wdata),
        .wfull(S1_WA_fifo_full),
        .rclk(AXI_CLK_i),
        .rreset(AXI_RST_i),
        .ren(~WA_master_full),// full?
        .rdata(S1_WA_rdata),
        .rempty(S1_WA_fifo_empty)
    );
    //----------------------------------------------
    //S1_W_fifo//----------------------------------------------
    logic S1_W_wdata, S1_W_rdata;
    logic slave1_WREADY;
    logic S1_W_fifo_empty;

    assign S1_W_wdata = slave1.WREADY;
    assign slave1_WREADY = S1_W_fifo_empty ? 1'b0 : S1_W_rdata;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, 1
    ) S1_W_fifo (
        .wclk(SRAM_CLK_i),
        .wreset(SRAM_RST_i),
        .wen(slave1.WREADY),
        .wdata(S1_W_wdata),
        .wfull(S1_W_fifo_full),
        .rclk(AXI_CLK_i),
        .rreset(AXI_RST_i),
        .ren(1'b1),// full?
        .rdata(S1_W_rdata),
        .rempty(S1_W_fifo_empty)
    );
    //----------------------------------------------
    //S1_B_fifo//----------------------------------------------
    logic [`AXI_IDS_BITS + `AXI_DATA_BITS + 2 + 1 - 1 : 0] S1_B_wdata, S1_B_rdata, wire_S1_B_rdata;
    logic [`AXI_IDS_BITS-1:0] slave1_BID;
    logic [1:0] slave1_BRESP;
    logic slave1_BVALID;
    logic S1_B_fifo_empty;

    assign S1_B_wdata = {slave1.BID, slave1.BRESP};
    assign wire_S1_B_rdata = (~S1_B_fifo_empty) ? S1_B_rdata : {(`AXI_IDS_BITS + `AXI_DATA_BITS + 2 + 1){1'b0}};
    assign {slave1_BID, slave1_BRESP} = wire_S1_B_rdata;
    assign slave1_BVALID = (S1_B_fifo_empty) ? 1'b0 : 1'b1;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, (`AXI_IDS_BITS + `AXI_DATA_BITS + 2 + 1)
    ) S1_B_fifo (
        .wclk(SRAM_CLK_i),
        .wreset(SRAM_RST_i),
        .wen(slave1.BVALID),
        .wdata(S1_B_wdata),
        .wfull(S1_B_fifo_full),
        .rclk(AXI_CLK_i),
        .rreset(AXI_RST_i),
        .ren(1'b1),// full?
        .rdata(S1_B_rdata),
        .rempty(S1_B_fifo_empty)
    );
    //----------------------------------------------
    //AXI to S1 : 
    //RA_S1_fifo//----------------------------------------------
    logic [`AXI_IDS_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2 - 1 : 0] RA_S1_wdata, RA_S1_rdata, wire_RA_S1_rdata;
    logic [`AXI_IDS_BITS-1:0] slave1_ARID;
    logic [`AXI_ADDR_BITS-1:0] slave1_ARADDR;
    logic [`AXI_LEN_BITS-1:0] slave1_ARLEN;
    logic [`AXI_SIZE_BITS-1:0] slave1_ARSIZE;
    logic [1:0] slave1_ARBURST;
    logic slave1_ARVALID;
    logic RA_S1_fifo_empty, RA_S1_fifo_full;

    assign RA_S1_wdata = {slave1_ARID, slave1_ARADDR, slave1_ARLEN, slave1_ARSIZE, slave1_ARBURST};
    assign wire_RA_S1_rdata = (~RA_S1_fifo_empty)? RA_S1_rdata : {(`AXI_IDS_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2){1'b0}};
    assign {slave1.ARID, slave1.ARADDR, slave1.ARLEN, slave1.ARSIZE, slave1.ARBURST} = wire_RA_S1_rdata;
    assign slave1.ARVALID = (RA_S1_fifo_empty) ? 1'b0 : 1'b1;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, (`AXI_IDS_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2)
    ) RA_S1_fifo (
        .wclk(AXI_CLK_i),
        .wreset(AXI_RST_i),
        .wen(slave1_ARVALID),
        .wdata(RA_S1_wdata),
        .wfull(RA_S1_fifo_full),
        .rclk(SRAM_CLK_i),
        .rreset(SRAM_RST_i),
        .ren(1'b1), // full?
        .rdata(RA_S1_rdata),
        .rempty(RA_S1_fifo_empty)
    );
    //----------------------------------------------
    //R_S1_fifo //----------------------------------------------

    logic R_S1_wdata, R_S1_rdata;
    logic slave1_RREADY;
    logic R_S1_fifo_empty,R_S1_fifo_full;

    assign R_S1_wdata = slave1_RREADY;
    assign slave1.RREADY = R_S1_fifo_empty ? 1'b0 : R_S1_rdata;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, 1
    ) R_S1_fifo (
        .wclk(AXI_CLK_i),
        .wreset(AXI_RST_i),
        .wen(slave1_RREADY),
        .wdata(R_S1_wdata),
        .wfull(R_S1_fifo_full),
        .rclk(SRAM_CLK_i),
        .rreset(SRAM_RST_i),
        .ren(1'b1),// full?
        .rdata(R_S1_rdata),
        .rempty(R_S1_fifo_empty)
    );
    
    //----------------------------------------------
    //WA_S1_fifo//----------------------------------------------
    logic [`AXI_IDS_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2 - 1 : 0] WA_S1_wdata, WA_S1_rdata, wire_WA_S1_rdata;
    logic [`AXI_IDS_BITS-1:0] slave1_AWID;
    logic [`AXI_ADDR_BITS-1:0] slave1_AWADDR;
    logic [`AXI_LEN_BITS-1:0] slave1_AWLEN;
    logic [`AXI_SIZE_BITS-1:0] slave1_AWSIZE;
    logic [1:0] slave1_AWBURST;
    logic slave1_AWVALID;
    logic WA_S1_fifo_empty, WA_S1_fifo_full;

    assign WA_S1_wdata = {slave1_AWID, slave1_AWADDR, slave1_AWLEN, slave1_AWSIZE, slave1_AWBURST};
    assign wire_WA_S1_rdata = (~WA_S1_fifo_empty) ? WA_S1_rdata : {(`AXI_IDS_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2){1'b0}};
    assign {slave1.AWID, slave1.AWADDR, slave1.AWLEN, slave1.AWSIZE, slave1.AWBURST} = wire_WA_S1_rdata;
    assign slave1.AWVALID = (WA_S1_fifo_empty) ? 1'b0 : 1'b1;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, (`AXI_IDS_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2)
    ) WA_S1_fifo (
        .wclk(AXI_CLK_i),
        .wreset(AXI_RST_i),
        .wen(slave1_AWVALID),
        .wdata(WA_S1_wdata),
        .wfull(WA_S1_fifo_full),
        .rclk(SRAM_CLK_i),
        .rreset(SRAM_RST_i),
        .ren(1'b1), // full?
        .rdata(WA_S1_rdata),
        .rempty(WA_S1_fifo_empty)
    );
    //----------------------------------------------
    //W_S1_fifo//----------------------------------------------
    logic [`AXI_DATA_BITS + `AXI_STRB_BITS + 1 - 1 : 0] W_S1_wdata, W_S1_rdata, wire_W_S1_rdata;
    logic [`AXI_DATA_BITS-1:0] slave1_WDATA;
    logic [`AXI_STRB_BITS-1:0] slave1_WSTRB;
    logic slave1_WLAST;
    logic slave1_WVALID;
    logic W_S1_fifo_empty, W_S1_fifo_full;

    assign W_S1_wdata = {slave1_WDATA, slave1_WSTRB, slave1_WLAST};
    assign wire_W_S1_rdata = (~W_S1_fifo_empty) ? W_S1_rdata : {(`AXI_DATA_BITS + `AXI_STRB_BITS + 1){1'b0}};
    assign {slave1.WDATA, slave1.WSTRB, slave1.WLAST} = wire_W_S1_rdata;
    assign slave1.WVALID = (W_S1_fifo_empty) ? 1'b0 : 1'b1;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, (`AXI_DATA_BITS + `AXI_STRB_BITS + 1)
    ) W_S1_fifo (
        .wclk(AXI_CLK_i),
        .wreset(AXI_RST_i),
        .wen(slave1_WVALID),
        .wdata(W_S1_wdata),
        .wfull(W_S1_fifo_full),
        .rclk(SRAM_CLK_i),
        .rreset(SRAM_RST_i),
        .ren(1'b1), // full?
        .rdata(W_S1_rdata),
        .rempty(W_S1_fifo_empty)
    );
    //----------------------------------------------
    //B_S1_fifo //----------------------------------------------

    logic B_S1_wdata, B_S1_rdata;
    logic slave1_BREADY;
    logic B_S1_fifo_empty,B_S1_fifo_full;

    assign B_S1_wdata = slave1_BREADY;
    assign slave1.BREADY = B_S1_fifo_empty ? 1'b0 : B_S1_rdata;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, 1
    ) B_S1_fifo (
        .wclk(AXI_CLK_i),
        .wreset(AXI_RST_i),
        .wen(slave1_BREADY),
        .wdata(B_S1_wdata),
        .wfull(B_S1_fifo_full),
        .rclk(SRAM_CLK_i),
        .rreset(SRAM_RST_i),
        .ren(1'b1),// full?
        .rdata(B_S1_rdata),
        .rempty(B_S1_fifo_empty)
    );
    
    //----------------------------------------------

    //S2 to AXI :
    //S2_RA_fifo//----------------------------------------------
    logic S2_RA_wdata, S2_RA_rdata;
    logic slave2_ARREADY;
    logic S2_RA_fifo_empty;

    assign S2_RA_wdata = slave2.ARREADY;
    assign slave2_ARREADY = S2_RA_fifo_empty ? 1'b0 : S2_RA_rdata;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, 1
    ) S2_RA_fifo (
        .wclk(SRAM_CLK_i),
        .wreset(SRAM_RST_i),
        .wen(slave2.ARREADY),
        .wdata(S2_RA_wdata),
        .wfull(S2_RA_fifo_full),
        .rclk(AXI_CLK_i),
        .rreset(AXI_RST_i),
        .ren(~RA_master_full),// full?
        .rdata(S2_RA_rdata),
        .rempty(S2_RA_fifo_empty)
    );
    //----------------------------------------------
    //S2_R_fifo//----------------------------------------------
    logic [`AXI_IDS_BITS + `AXI_DATA_BITS + 2 + 1 + 1 - 1 : 0] S2_R_wdata, S2_R_rdata, wire_S2_R_rdata;
    logic [`AXI_IDS_BITS-1:0] slave2_RID;
    logic [`AXI_DATA_BITS-1:0] slave2_RDATA;
    logic [1:0] slave2_RRESP;
    logic slave2_RLAST, slave2_RVALID;
    logic slave2_R_hs_done;
    logic S2_R_fifo_empty;

    assign S2_R_wdata = {slave2.RID, slave2.RDATA, slave2.RRESP, slave2.RLAST, slave2.R_hs_done};
    assign wire_S2_R_rdata = (~S2_R_fifo_empty) ? S2_R_rdata : {(`AXI_IDS_BITS + `AXI_DATA_BITS + 2 + 1 + 1){1'b0}};
    assign {slave2_RID, slave2_RDATA, slave2_RRESP, slave2_RLAST, slave2_R_hs_done} = wire_S2_R_rdata;
    assign slave2_RVALID = (S2_R_fifo_empty) ? 1'b0 : 1'b1;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, (`AXI_IDS_BITS + `AXI_DATA_BITS + 2 + 1 + 1)
    ) S2_R_fifo (
        .wclk(SRAM_CLK_i),
        .wreset(SRAM_RST_i),
        .wen(slave2.RVALID),
        .wdata(S2_R_wdata),
        .wfull(S2_R_fifo_full),
        .rclk(AXI_CLK_i),
        .rreset(AXI_RST_i),
        .ren(1'b1),// full?
        .rdata(S2_R_rdata),
        .rempty(S2_R_fifo_empty)
    );
    //----------------------------------------------
    //S2_WA_fifo//----------------------------------------------
    logic S2_WA_wdata, S2_WA_rdata;
    logic slave2_AWREADY;
    logic S2_WA_fifo_empty;

    assign S2_WA_wdata = slave2.AWREADY;
    assign slave2_AWREADY = S2_WA_fifo_empty ? 1'b0 : S2_WA_rdata;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, 1
    ) S2_WA_fifo (
        .wclk(SRAM_CLK_i),
        .wreset(SRAM_RST_i),
        .wen(slave2.AWREADY),
        .wdata(S2_WA_wdata),
        .wfull(S2_WA_fifo_full),
        .rclk(AXI_CLK_i),
        .rreset(AXI_RST_i),
        .ren(~WA_master_full),// full?
        .rdata(S2_WA_rdata),
        .rempty(S2_WA_fifo_empty)
    );
    //----------------------------------------------
    //S2_W_fifo//----------------------------------------------
    logic S2_W_wdata, S2_W_rdata;
    logic slave2_WREADY;
    logic S2_W_fifo_empty;

    assign S2_W_wdata = slave2.WREADY;
    assign slave2_WREADY = S2_W_fifo_empty ? 1'b0 : S2_W_rdata;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, 1
    ) S2_W_fifo (
        .wclk(SRAM_CLK_i),
        .wreset(SRAM_RST_i),
        .wen(slave2.WREADY),
        .wdata(S2_W_wdata),
        .wfull(S2_W_fifo_full),
        .rclk(AXI_CLK_i),
        .rreset(AXI_RST_i),
        .ren(1'b1),// full?
        .rdata(S2_W_rdata),
        .rempty(S2_W_fifo_empty)
    );
    //----------------------------------------------
    //S2_B_fifo//----------------------------------------------
    logic [`AXI_IDS_BITS + `AXI_DATA_BITS + 2 + 1 - 1 : 0] S2_B_wdata, S2_B_rdata, wire_S2_B_rdata;
    logic [`AXI_IDS_BITS-1:0] slave2_BID;
    logic [1:0] slave2_BRESP;
    logic slave2_BVALID;
    logic S2_B_fifo_empty;

    assign S2_B_wdata = {slave2.BID, slave2.BRESP};
    assign wire_S2_B_rdata = (~S2_B_fifo_empty) ? S2_B_rdata : {(`AXI_IDS_BITS + `AXI_DATA_BITS + 2 + 1){1'b0}};
    assign {slave2_BID, slave2_BRESP} = wire_S2_B_rdata;
    assign slave2_BVALID = (S2_B_fifo_empty) ? 1'b0 : 1'b1;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, (`AXI_IDS_BITS + `AXI_DATA_BITS + 2 + 1)
    ) S2_B_fifo (
        .wclk(SRAM_CLK_i),
        .wreset(SRAM_RST_i),
        .wen(slave2.BVALID),
        .wdata(S2_B_wdata),
        .wfull(S2_B_fifo_full),
        .rclk(AXI_CLK_i),
        .rreset(AXI_RST_i),
        .ren(1'b1),// full?
        .rdata(S2_B_rdata),
        .rempty(S2_B_fifo_empty)
    );
    //----------------------------------------------
    //AXI to S2 : 
    //RA_S2_fifo//----------------------------------------------
    logic [`AXI_IDS_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2 - 1 : 0] RA_S2_wdata, RA_S2_rdata, wire_RA_S2_rdata;
    logic [`AXI_IDS_BITS-1:0] slave2_ARID;
    logic [`AXI_ADDR_BITS-1:0] slave2_ARADDR;
    logic [`AXI_LEN_BITS-1:0] slave2_ARLEN;
    logic [`AXI_SIZE_BITS-1:0] slave2_ARSIZE;
    logic [1:0] slave2_ARBURST;
    logic slave2_ARVALID;
    logic RA_S2_fifo_empty, RA_S2_fifo_full;

    assign RA_S2_wdata = {slave2_ARID, slave2_ARADDR, slave2_ARLEN, slave2_ARSIZE, slave2_ARBURST};
    assign wire_RA_S2_rdata = (~RA_S2_fifo_empty) ? RA_S2_rdata : {(`AXI_IDS_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2){1'b0}};
    assign {slave2.ARID, slave2.ARADDR, slave2.ARLEN, slave2.ARSIZE, slave2.ARBURST} = wire_RA_S2_rdata;
    assign slave2.ARVALID = (RA_S2_fifo_empty) ? 1'b0 : 1'b1;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, (`AXI_IDS_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2)
    ) RA_S2_fifo (
        .wclk(AXI_CLK_i),
        .wreset(AXI_RST_i),
        .wen(slave2_ARVALID),
        .wdata(RA_S2_wdata),
        .wfull(RA_S2_fifo_full),
        .rclk(SRAM_CLK_i),
        .rreset(SRAM_RST_i),
        .ren(1'b1), // full?
        .rdata(RA_S2_rdata),
        .rempty(RA_S2_fifo_empty)
    );
    //----------------------------------------------
    //R_S2_fifo //----------------------------------------------

    logic R_S2_wdata, R_S2_rdata;
    logic slave2_RREADY;
    logic R_S2_fifo_empty,R_S2_fifo_full;

    assign R_S2_wdata = slave2_RREADY;
    assign slave2.RREADY = R_S2_fifo_empty ? 1'b0 : R_S2_rdata;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, 1
    ) R_S2_fifo (
        .wclk(AXI_CLK_i),
        .wreset(AXI_RST_i),
        .wen(slave2_RREADY),
        .wdata(R_S2_wdata),
        .wfull(R_S2_fifo_full),
        .rclk(SRAM_CLK_i),
        .rreset(SRAM_RST_i),
        .ren(1'b1),// full?
        .rdata(R_S2_rdata),
        .rempty(R_S2_fifo_empty)
    );
    
    //----------------------------------------------
    //WA_S2_fifo//----------------------------------------------
    logic [`AXI_IDS_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2 - 1 : 0] WA_S2_wdata, WA_S2_rdata, wire_WA_S2_rdata;
    logic [`AXI_IDS_BITS-1:0] slave2_AWID;
    logic [`AXI_ADDR_BITS-1:0] slave2_AWADDR;
    logic [`AXI_LEN_BITS-1:0] slave2_AWLEN;
    logic [`AXI_SIZE_BITS-1:0] slave2_AWSIZE;
    logic [1:0] slave2_AWBURST;
    logic slave2_AWVALID;
    logic WA_S2_fifo_empty, WA_S2_fifo_full;

    assign WA_S2_wdata = {slave2_AWID, slave2_AWADDR, slave2_AWLEN, slave2_AWSIZE, slave2_AWBURST};
    assign wire_WA_S2_rdata = (~WA_S2_fifo_empty)? WA_S2_rdata : {(`AXI_IDS_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2){1'b0}};
    assign {slave2.AWID, slave2.AWADDR, slave2.AWLEN, slave2.AWSIZE, slave2.AWBURST} = wire_WA_S2_rdata;
    assign slave2.AWVALID = (WA_S2_fifo_empty) ? 1'b0 : 1'b1;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, (`AXI_IDS_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2)
    ) WA_S2_fifo (
        .wclk(AXI_CLK_i),
        .wreset(AXI_RST_i),
        .wen(slave2_AWVALID),
        .wdata(WA_S2_wdata),
        .wfull(WA_S2_fifo_full),
        .rclk(SRAM_CLK_i),
        .rreset(SRAM_RST_i),
        .ren(1'b1), // full?
        .rdata(WA_S2_rdata),
        .rempty(WA_S2_fifo_empty)
    );
    //----------------------------------------------
    //W_S2_fifo//----------------------------------------------
    logic [`AXI_DATA_BITS + `AXI_STRB_BITS + 1 - 1 : 0] W_S2_wdata, W_S2_rdata, wire_W_S2_rdata;
    logic [`AXI_DATA_BITS-1:0] slave2_WDATA;
    logic [`AXI_STRB_BITS-1:0] slave2_WSTRB;
    logic slave2_WLAST;
    logic slave2_WVALID;
    logic W_S2_fifo_empty, W_S2_fifo_full;

    assign W_S2_wdata = {slave2_WDATA, slave2_WSTRB, slave2_WLAST};
    assign wire_W_S2_rdata = (~W_S2_fifo_empty) ? W_S2_rdata : {(`AXI_DATA_BITS + `AXI_STRB_BITS + 1){1'b0}};
    assign {slave2.WDATA, slave2.WSTRB, slave2.WLAST} = wire_W_S2_rdata;
    assign slave2.WVALID = (W_S2_fifo_empty) ? 1'b0 : 1'b1;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, (`AXI_DATA_BITS + `AXI_STRB_BITS + 1)
    ) W_S2_fifo (
        .wclk(AXI_CLK_i),
        .wreset(AXI_RST_i),
        .wen(slave2_WVALID),
        .wdata(W_S2_wdata),
        .wfull(W_S2_fifo_full),
        .rclk(SRAM_CLK_i),
        .rreset(SRAM_RST_i),
        .ren(1'b1), // full?
        .rdata(W_S2_rdata),
        .rempty(W_S2_fifo_empty)
    );
    //----------------------------------------------
    //B_S2_fifo //----------------------------------------------

    logic B_S2_wdata, B_S2_rdata;
    logic slave2_BREADY;
    logic B_S2_fifo_empty,B_S2_fifo_full;

    assign B_S2_wdata = slave2_BREADY;
    assign slave2.BREADY = B_S2_fifo_empty ? 1'b0 : B_S2_rdata;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, 1
    ) B_S2_fifo (
        .wclk(AXI_CLK_i),
        .wreset(AXI_RST_i),
        .wen(slave2_BREADY),
        .wdata(B_S2_wdata),
        .wfull(B_S2_fifo_full),
        .rclk(SRAM_CLK_i),
        .rreset(SRAM_RST_i),
        .ren(1'b1),// full?
        .rdata(B_S2_rdata),
        .rempty(B_S2_fifo_empty)
    );
    
    //----------------------------------------------
    //S3 to AXI :
    //S3_RA_fifo//----------------------------------------------
    logic S3_RA_wdata, S3_RA_rdata;
    logic slave3_ARREADY;
    logic S3_RA_fifo_empty;

    assign S3_RA_wdata = slave3.ARREADY;
    assign slave3_ARREADY = S3_RA_fifo_empty ? 1'b0 : S3_RA_rdata;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, 1
    ) S3_RA_fifo (
        .wclk(CPU_CLK_i),
        .wreset(CPU_RST_i),
        .wen(slave3.ARREADY),
        .wdata(S3_RA_wdata),
        .wfull(S3_RA_fifo_full),
        .rclk(AXI_CLK_i),
        .rreset(AXI_RST_i),
        .ren(~RA_master_full),// full?
        .rdata(S3_RA_rdata),
        .rempty(S3_RA_fifo_empty)
    );
    //----------------------------------------------
    //S3_R_fifo//----------------------------------------------
    logic [`AXI_IDS_BITS + `AXI_DATA_BITS + 2 + 1 + 1 - 1 : 0] S3_R_wdata, S3_R_rdata, wire_S3_R_rdata;
    logic [`AXI_IDS_BITS-1:0] slave3_RID;
    logic [`AXI_DATA_BITS-1:0] slave3_RDATA;
    logic [1:0] slave3_RRESP;
    logic slave3_RLAST, slave3_RVALID;
    logic slave3_R_hs_done;
    logic S3_R_fifo_empty;

    assign S3_R_wdata = {slave3.RID, slave3.RDATA, slave3.RRESP, slave3.RLAST, slave3.R_hs_done};
    assign wire_S3_R_rdata = (~S3_R_fifo_empty) ? S3_R_rdata : {(`AXI_IDS_BITS + `AXI_DATA_BITS + 2 + 1 + 1){1'b0}};
    assign {slave3_RID, slave3_RDATA, slave3_RRESP, slave3_RLAST, slave3_R_hs_done} = wire_S3_R_rdata;
    assign slave3_RVALID = (S3_R_fifo_empty) ? 1'b0 : 1'b1;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, (`AXI_IDS_BITS + `AXI_DATA_BITS + 2 + 1 + 1)
    ) S3_R_fifo (
        .wclk(CPU_CLK_i),
        .wreset(CPU_RST_i),
        .wen(slave3.RVALID),
        .wdata(S3_R_wdata),
        .wfull(S3_R_fifo_full),
        .rclk(AXI_CLK_i),
        .rreset(AXI_RST_i),
        .ren(1'b1),// full?
        .rdata(S3_R_rdata),
        .rempty(S3_R_fifo_empty)
    );
    //----------------------------------------------
    //S3_WA_fifo//----------------------------------------------
    logic S3_WA_wdata, S3_WA_rdata;
    logic slave3_AWREADY;
    logic S3_WA_fifo_empty;

    assign S3_WA_wdata = slave3.AWREADY;
    assign slave3_AWREADY = S3_WA_fifo_empty ? 1'b0 : S3_WA_rdata;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, 1
    ) S3_WA_fifo (
        .wclk(CPU_CLK_i),
        .wreset(CPU_RST_i),
        .wen(slave3.AWREADY),
        .wdata(S3_WA_wdata),
        .wfull(S3_WA_fifo_full),
        .rclk(AXI_CLK_i),
        .rreset(AXI_RST_i),
        .ren(~WA_master_full),// full?
        .rdata(S3_WA_rdata),
        .rempty(S3_WA_fifo_empty)
    );
    //----------------------------------------------
    //S3_W_fifo//----------------------------------------------
    logic S3_W_wdata, S3_W_rdata;
    logic slave3_WREADY;
    logic S3_W_fifo_empty;

    assign S3_W_wdata = slave3.WREADY;
    assign slave3_WREADY = S3_W_fifo_empty ? 1'b0 : S3_W_rdata;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, 1
    ) S3_W_fifo (
        .wclk(CPU_CLK_i),
        .wreset(CPU_RST_i),
        .wen(slave3.WREADY),
        .wdata(S3_W_wdata),
        .wfull(S3_W_fifo_full),
        .rclk(AXI_CLK_i),
        .rreset(AXI_RST_i),
        .ren(1'b1),// full?
        .rdata(S3_W_rdata),
        .rempty(S3_W_fifo_empty)
    );
    //----------------------------------------------
    //S3_B_fifo//----------------------------------------------
    logic [`AXI_IDS_BITS + `AXI_DATA_BITS + 2 + 1 - 1 : 0] S3_B_wdata, S3_B_rdata, wire_S3_B_rdata;
    logic [`AXI_IDS_BITS-1:0] slave3_BID;
    logic [1:0] slave3_BRESP;
    logic slave3_BVALID;
    logic S3_B_fifo_empty;

    assign S3_B_wdata = {slave3.BID, slave3.BRESP};
    assign wire_S3_B_rdata = (~S3_B_fifo_empty) ? S3_B_rdata : {(`AXI_IDS_BITS + `AXI_DATA_BITS + 2 + 1){1'b0}};
    assign {slave3_BID, slave3_BRESP} = wire_S3_B_rdata;
    assign slave3_BVALID = (S3_B_fifo_empty) ? 1'b0 : 1'b1;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, (`AXI_IDS_BITS + `AXI_DATA_BITS + 2 + 1)
    ) S3_B_fifo (
        .wclk(CPU_CLK_i),
        .wreset(CPU_RST_i),
        .wen(slave3.BVALID),
        .wdata(S3_B_wdata),
        .wfull(S3_B_fifo_full),
        .rclk(AXI_CLK_i),
        .rreset(AXI_RST_i),
        .ren(1'b1),// full?
        .rdata(S3_B_rdata),
        .rempty(S3_B_fifo_empty)
    );
    //----------------------------------------------
    //AXI to S3 : 
    //RA_S3_fifo//----------------------------------------------
    logic [`AXI_IDS_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2 - 1 : 0] RA_S3_wdata, RA_S3_rdata, wire_RA_S3_rdata;
    logic [`AXI_IDS_BITS-1:0] slave3_ARID;
    logic [`AXI_ADDR_BITS-1:0] slave3_ARADDR;
    logic [`AXI_LEN_BITS-1:0] slave3_ARLEN;
    logic [`AXI_SIZE_BITS-1:0] slave3_ARSIZE;
    logic [1:0] slave3_ARBURST;
    logic slave3_ARVALID;
    logic RA_S3_fifo_empty, RA_S3_fifo_full;

    assign RA_S3_wdata = {slave3_ARID, slave3_ARADDR, slave3_ARLEN, slave3_ARSIZE, slave3_ARBURST};
    assign wire_RA_S3_rdata = (~RA_S3_fifo_empty) ? RA_S3_rdata : {(`AXI_IDS_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2){1'b0}};
    assign {slave3.ARID, slave3.ARADDR, slave3.ARLEN, slave3.ARSIZE, slave3.ARBURST} = wire_RA_S3_rdata;
    assign slave3.ARVALID = (RA_S3_fifo_empty) ? 1'b0 : 1'b1;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, (`AXI_IDS_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2)
    ) RA_S3_fifo (
        .wclk(AXI_CLK_i),
        .wreset(AXI_RST_i),
        .wen(slave3_ARVALID),
        .wdata(RA_S3_wdata),
        .wfull(RA_S3_fifo_full),
        .rclk(CPU_CLK_i),
        .rreset(CPU_RST_i),
        .ren(1'b1), // full?
        .rdata(RA_S3_rdata),
        .rempty(RA_S3_fifo_empty)
    );
    //----------------------------------------------
    //R_S3_fifo //----------------------------------------------

    logic R_S3_wdata, R_S3_rdata;
    logic slave3_RREADY;
    logic R_S3_fifo_empty,R_S3_fifo_full;

    assign R_S3_wdata = slave3_RREADY;
    assign slave3.RREADY = R_S3_fifo_empty ? 1'b0 : R_S3_rdata;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, 1
    ) R_S3_fifo (
        .wclk(AXI_CLK_i),
        .wreset(AXI_RST_i),
        .wen(slave3_RREADY),
        .wdata(R_S3_wdata),
        .wfull(R_S3_fifo_full),
        .rclk(CPU_CLK_i),
        .rreset(CPU_RST_i),
        .ren(1'b1),// full?
        .rdata(R_S3_rdata),
        .rempty(R_S3_fifo_empty)
    );
    
    //----------------------------------------------
    //WA_S3_fifo//----------------------------------------------
    logic [`AXI_IDS_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2 - 1 : 0] WA_S3_wdata, WA_S3_rdata, wire_WA_S3_rdata;
    logic [`AXI_IDS_BITS-1:0] slave3_AWID;
    logic [`AXI_ADDR_BITS-1:0] slave3_AWADDR;
    logic [`AXI_LEN_BITS-1:0] slave3_AWLEN;
    logic [`AXI_SIZE_BITS-1:0] slave3_AWSIZE;
    logic [1:0] slave3_AWBURST;
    logic slave3_AWVALID;
    logic WA_S3_fifo_empty, WA_S3_fifo_full;

    assign WA_S3_wdata = {slave3_AWID, slave3_AWADDR, slave3_AWLEN, slave3_AWSIZE, slave3_AWBURST};
    assign wire_WA_S3_rdata = (~WA_S3_fifo_empty) ? WA_S3_rdata : {(`AXI_IDS_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2){1'b0}};
    assign {slave3.AWID, slave3.AWADDR, slave3.AWLEN, slave3.AWSIZE, slave3.AWBURST} = wire_WA_S3_rdata;
    assign slave3.AWVALID = (WA_S3_fifo_empty) ? 1'b0 : 1'b1;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, (`AXI_IDS_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2)
    ) WA_S3_fifo (
        .wclk(AXI_CLK_i),
        .wreset(AXI_RST_i),
        .wen(slave3_AWVALID),
        .wdata(WA_S3_wdata),
        .wfull(WA_S3_fifo_full),
        .rclk(CPU_CLK_i),
        .rreset(CPU_RST_i),
        .ren(1'b1), // full?
        .rdata(WA_S3_rdata),
        .rempty(WA_S3_fifo_empty)
    );
    //----------------------------------------------
    //W_S3_fifo//----------------------------------------------
    logic [`AXI_DATA_BITS + `AXI_STRB_BITS + 1 - 1 : 0] W_S3_wdata, W_S3_rdata, wire_W_S3_rdata;
    logic [`AXI_DATA_BITS-1:0] slave3_WDATA;
    logic [`AXI_STRB_BITS-1:0] slave3_WSTRB;
    logic slave3_WLAST;
    logic slave3_WVALID;
    logic W_S3_fifo_empty, W_S3_fifo_full;

    assign W_S3_wdata = {slave3_WDATA, slave3_WSTRB, slave3_WLAST};
    assign wire_W_S3_rdata = (~W_S3_fifo_empty) ? W_S3_rdata : {(`AXI_DATA_BITS + `AXI_STRB_BITS + 1){1'b0}};
    assign {slave3.WDATA, slave3.WSTRB, slave3.WLAST} = wire_W_S3_rdata;
    assign slave3.WVALID = (W_S3_fifo_empty) ? 1'b0 : 1'b1;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, (`AXI_DATA_BITS + `AXI_STRB_BITS + 1)
    ) W_S3_fifo (
        .wclk(AXI_CLK_i),
        .wreset(AXI_RST_i),
        .wen(slave3_WVALID),
        .wdata(W_S3_wdata),
        .wfull(W_S3_fifo_full),
        .rclk(CPU_CLK_i),
        .rreset(CPU_RST_i),
        .ren(1'b1), // full?
        .rdata(W_S3_rdata),
        .rempty(W_S3_fifo_empty)
    );
    //----------------------------------------------
    //B_S3_fifo //----------------------------------------------

    logic B_S3_wdata, B_S3_rdata;
    logic slave3_BREADY;
    logic B_S3_fifo_empty,B_S3_fifo_full;

    assign B_S3_wdata = slave3_BREADY;
    assign slave3.BREADY = B_S3_fifo_empty ? 1'b0 : B_S3_rdata;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, 1
    ) B_S3_fifo (
        .wclk(AXI_CLK_i),
        .wreset(AXI_RST_i),
        .wen(slave3_BREADY),
        .wdata(B_S3_wdata),
        .wfull(B_S3_fifo_full),
        .rclk(CPU_CLK_i),
        .rreset(CPU_RST_i),
        .ren(1'b1),// full?
        .rdata(B_S3_rdata),
        .rempty(B_S3_fifo_empty)
    );
    
    //----------------------------------------------
    //S4 to AXI :
    //S4_RA_fifo//----------------------------------------------
    logic S4_RA_wdata, S4_RA_rdata;
    logic slave4_ARREADY;
    logic S4_RA_fifo_empty;

    assign S4_RA_wdata = slave4.ARREADY;
    assign slave4_ARREADY = S4_RA_fifo_empty ? 1'b0 : S4_RA_rdata;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, 1
    ) S4_RA_fifo (
        .wclk(CPU_CLK_i),
        .wreset(CPU_RST_i),
        .wen(slave4.ARREADY),
        .wdata(S4_RA_wdata),
        .wfull(S4_RA_fifo_full),
        .rclk(AXI_CLK_i),
        .rreset(AXI_RST_i),
        .ren(~RA_master_full),// full?
        .rdata(S4_RA_rdata),
        .rempty(S4_RA_fifo_empty)
    );
    //----------------------------------------------
    //S4_R_fifo//----------------------------------------------
    logic [`AXI_IDS_BITS + `AXI_DATA_BITS + 2 + 1 + 1 - 1 : 0] S4_R_wdata, S4_R_rdata, wire_S4_R_rdata;
    logic [`AXI_IDS_BITS-1:0] slave4_RID;
    logic [`AXI_DATA_BITS-1:0] slave4_RDATA;
    logic [1:0] slave4_RRESP;
    logic slave4_RLAST, slave4_RVALID;
    logic slave4_R_hs_done;
    logic S4_R_fifo_empty;

    assign S4_R_wdata = {slave4.RID, slave4.RDATA, slave4.RRESP, slave4.RLAST, slave4.R_hs_done};
    assign wire_S4_R_rdata = (~S4_R_fifo_empty)? S4_R_rdata : {(`AXI_IDS_BITS + `AXI_DATA_BITS + 2 + 1 + 1){1'b0}};
    assign {slave4_RID, slave4_RDATA, slave4_RRESP, slave4_RLAST, slave4_R_hs_done} = wire_S4_R_rdata;
    assign slave4_RVALID = (S4_R_fifo_empty) ? 1'b0 : 1'b1;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, (`AXI_IDS_BITS + `AXI_DATA_BITS + 2 + 1 + 1)
    ) S4_R_fifo (
        .wclk(CPU_CLK_i),
        .wreset(CPU_RST_i),
        .wen(slave4.RVALID),
        .wdata(S4_R_wdata),
        .wfull(S4_R_fifo_full),
        .rclk(AXI_CLK_i),
        .rreset(AXI_RST_i),
        .ren(1'b1),// full?
        .rdata(S4_R_rdata),
        .rempty(S4_R_fifo_empty)
    );
    //----------------------------------------------
    //S4_WA_fifo//----------------------------------------------
    logic S4_WA_wdata, S4_WA_rdata;
    logic slave4_AWREADY;
    logic S4_WA_fifo_empty;

    assign S4_WA_wdata = slave4.AWREADY;
    assign slave4_AWREADY = S4_WA_fifo_empty ? 1'b0 : S4_WA_rdata;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, 1
    ) S4_WA_fifo (
        .wclk(CPU_CLK_i),
        .wreset(CPU_RST_i),
        .wen(slave4.AWREADY),
        .wdata(S4_WA_wdata),
        .wfull(S4_WA_fifo_full),
        .rclk(AXI_CLK_i),
        .rreset(AXI_RST_i),
        .ren(~WA_master_full),// full?
        .rdata(S4_WA_rdata),
        .rempty(S4_WA_fifo_empty)
    );
    //----------------------------------------------
    //S4_W_fifo//----------------------------------------------
    logic S4_W_wdata, S4_W_rdata;
    logic slave4_WREADY;
    logic S4_W_fifo_empty;

    assign S4_W_wdata = slave4.WREADY;
    assign slave4_WREADY = S4_W_fifo_empty ? 1'b0 : S4_W_rdata;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, 1
    ) S4_W_fifo (
        .wclk(CPU_CLK_i),
        .wreset(CPU_RST_i),
        .wen(slave4.WREADY),
        .wdata(S4_W_wdata),
        .wfull(S4_W_fifo_full),
        .rclk(AXI_CLK_i),
        .rreset(AXI_RST_i),
        .ren(1'b1),// full?
        .rdata(S4_W_rdata),
        .rempty(S4_W_fifo_empty)
    );
    //----------------------------------------------
    //S4_B_fifo//----------------------------------------------
    logic [`AXI_IDS_BITS + `AXI_DATA_BITS + 2 + 1 - 1 : 0] S4_B_wdata, S4_B_rdata, wire_S4_B_rdata;
    logic [`AXI_IDS_BITS-1:0] slave4_BID;
    logic [1:0] slave4_BRESP;
    logic slave4_BVALID;
    logic S4_B_fifo_empty;

    assign S4_B_wdata = {slave4.BID, slave4.BRESP};
    assign wire_S4_B_rdata = (~S4_B_fifo_empty) ? S4_B_rdata : {(`AXI_IDS_BITS + `AXI_DATA_BITS + 2 + 1){1'b0}};
    assign {slave4_BID, slave4_BRESP} = wire_S4_B_rdata;
    assign slave4_BVALID = (S4_B_fifo_empty) ? 1'b0 : 1'b1;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, (`AXI_IDS_BITS + `AXI_DATA_BITS + 2 + 1)
    ) S4_B_fifo (
        .wclk(CPU_CLK_i),
        .wreset(CPU_RST_i),
        .wen(slave4.BVALID),
        .wdata(S4_B_wdata),
        .wfull(S4_B_fifo_full),
        .rclk(AXI_CLK_i),
        .rreset(AXI_RST_i),
        .ren(1'b1),// full?
        .rdata(S4_B_rdata),
        .rempty(S4_B_fifo_empty)
    );
    //----------------------------------------------
    //AXI to S4 : 
    //RA_S4_fifo//----------------------------------------------
    logic [`AXI_IDS_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2 - 1 : 0] RA_S4_wdata, RA_S4_rdata, wire_RA_S4_rdata;
    logic [`AXI_IDS_BITS-1:0] slave4_ARID;
    logic [`AXI_ADDR_BITS-1:0] slave4_ARADDR;
    logic [`AXI_LEN_BITS-1:0] slave4_ARLEN;
    logic [`AXI_SIZE_BITS-1:0] slave4_ARSIZE;
    logic [1:0] slave4_ARBURST;
    logic slave4_ARVALID;
    logic RA_S4_fifo_empty, RA_S4_fifo_full;

    assign RA_S4_wdata = {slave4_ARID, slave4_ARADDR, slave4_ARLEN, slave4_ARSIZE, slave4_ARBURST};
    assign wire_RA_S4_rdata = (~RA_S4_fifo_empty) ? RA_S4_rdata : {(`AXI_IDS_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2){1'b0}};
    assign {slave4.ARID, slave4.ARADDR, slave4.ARLEN, slave4.ARSIZE, slave4.ARBURST} = RA_S4_rdata;
    assign slave4.ARVALID = (RA_S4_fifo_empty) ? 1'b0 : 1'b1;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, (`AXI_IDS_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2)
    ) RA_S4_fifo (
        .wclk(AXI_CLK_i),
        .wreset(AXI_RST_i),
        .wen(slave4_ARVALID),
        .wdata(RA_S4_wdata),
        .wfull(RA_S4_fifo_full),
        .rclk(CPU_CLK_i),
        .rreset(CPU_RST_i),
        .ren(1'b1), // full?
        .rdata(RA_S4_rdata),
        .rempty(RA_S4_fifo_empty)
    );
    //----------------------------------------------
    //R_S4_fifo //----------------------------------------------

    logic R_S4_wdata, R_S4_rdata;
    logic slave4_RREADY;
    logic R_S4_fifo_empty,R_S4_fifo_full;

    assign R_S4_wdata = slave4_RREADY;
    assign slave4.RREADY = R_S4_fifo_empty ? 1'b0 : R_S4_rdata;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, 1
    ) R_S4_fifo (
        .wclk(AXI_CLK_i),
        .wreset(AXI_RST_i),
        .wen(slave4_RREADY),
        .wdata(R_S4_wdata),
        .wfull(R_S4_fifo_full),
        .rclk(CPU_CLK_i),
        .rreset(CPU_RST_i),
        .ren(1'b1),// full?
        .rdata(R_S4_rdata),
        .rempty(R_S4_fifo_empty)
    );
    
    //----------------------------------------------
    //WA_S4_fifo//----------------------------------------------
    logic [`AXI_IDS_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2 - 1 : 0] WA_S4_wdata, WA_S4_rdata, wire_WA_S4_rdata;
    logic [`AXI_IDS_BITS-1:0] slave4_AWID;
    logic [`AXI_ADDR_BITS-1:0] slave4_AWADDR;
    logic [`AXI_LEN_BITS-1:0] slave4_AWLEN;
    logic [`AXI_SIZE_BITS-1:0] slave4_AWSIZE;
    logic [1:0] slave4_AWBURST;
    logic slave4_AWVALID;
    logic WA_S4_fifo_empty, WA_S4_fifo_full;

    assign WA_S4_wdata = {slave4_AWID, slave4_AWADDR, slave4_AWLEN, slave4_AWSIZE, slave4_AWBURST};
    assign wire_WA_S4_rdata = (~WA_S4_fifo_empty) ? WA_S4_rdata : {(`AXI_IDS_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2){1'b0}};
    assign {slave4.AWID, slave4.AWADDR, slave4.AWLEN, slave4.AWSIZE, slave4.AWBURST} = wire_WA_S4_rdata;
    assign slave4.AWVALID = (WA_S4_fifo_empty) ? 1'b0 : 1'b1;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, (`AXI_IDS_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2)
    ) WA_S4_fifo (
        .wclk(AXI_CLK_i),
        .wreset(AXI_RST_i),
        .wen(slave4_AWVALID),
        .wdata(WA_S4_wdata),
        .wfull(WA_S4_fifo_full),
        .rclk(CPU_CLK_i),
        .rreset(CPU_RST_i),
        .ren(1'b1), // full?
        .rdata(WA_S4_rdata),
        .rempty(WA_S4_fifo_empty)
    );
    //----------------------------------------------
    //W_S4_fifo//----------------------------------------------
    logic [`AXI_DATA_BITS + `AXI_STRB_BITS + 1 - 1 : 0] W_S4_wdata, W_S4_rdata, wire_W_S4_rdata;
    logic [`AXI_DATA_BITS-1:0] slave4_WDATA;
    logic [`AXI_STRB_BITS-1:0] slave4_WSTRB;
    logic slave4_WLAST;
    logic slave4_WVALID;
    logic W_S4_fifo_empty, W_S4_fifo_full;

    assign W_S4_wdata = {slave4_WDATA, slave4_WSTRB, slave4_WLAST};
    assign wire_W_S4_rdata = (~W_S4_fifo_empty) ? W_S4_rdata : {(`AXI_DATA_BITS + `AXI_STRB_BITS + 1){1'b0}};
    assign {slave4.WDATA, slave4.WSTRB, slave4.WLAST} = wire_W_S4_rdata;
    assign slave4.WVALID = (W_S4_fifo_empty) ? 1'b0 : 1'b1;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, (`AXI_DATA_BITS + `AXI_STRB_BITS + 1)
    ) W_S4_fifo (
        .wclk(AXI_CLK_i),
        .wreset(AXI_RST_i),
        .wen(slave4_WVALID),
        .wdata(W_S4_wdata),
        .wfull(W_S4_fifo_full),
        .rclk(CPU_CLK_i),
        .rreset(CPU_RST_i),
        .ren(1'b1), // full?
        .rdata(W_S4_rdata),
        .rempty(W_S4_fifo_empty)
    );
    //----------------------------------------------
    //B_S4_fifo //----------------------------------------------

    logic B_S4_wdata, B_S4_rdata;
    logic slave4_BREADY;
    logic B_S4_fifo_empty,B_S4_fifo_full;

    assign B_S4_wdata = slave4_BREADY;
    assign slave4.BREADY = B_S4_fifo_empty ? 1'b0 : B_S4_rdata;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, 1
    ) B_S4_fifo (
        .wclk(AXI_CLK_i),
        .wreset(AXI_RST_i),
        .wen(slave4_BREADY),
        .wdata(B_S4_wdata),
        .wfull(B_S4_fifo_full),
        .rclk(CPU_CLK_i),
        .rreset(CPU_RST_i),
        .ren(1'b1),// full?
        .rdata(B_S4_rdata),
        .rempty(B_S4_fifo_empty)
    );
    
    //----------------------------------------------

    //S5 to AXI :
    //S5_RA_fifo//----------------------------------------------
    logic S5_RA_wdata, S5_RA_rdata;
    logic slave5_ARREADY;
    logic S5_RA_fifo_empty;

    assign S5_RA_wdata = slave5.ARREADY;
    assign slave5_ARREADY = S5_RA_fifo_empty ? 1'b0 : S5_RA_rdata;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, 1
    ) S5_RA_fifo (
        .wclk(DRAM_CLK_i),
        .wreset(DRAM_RST_i),
        .wen(slave5.ARREADY),
        .wdata(S5_RA_wdata),
        .wfull(S5_RA_fifo_full),
        .rclk(AXI_CLK_i),
        .rreset(AXI_RST_i),
        .ren(~RA_master_full),// full?
        .rdata(S5_RA_rdata),
        .rempty(S5_RA_fifo_empty)
    );
    //----------------------------------------------
    //S5_R_fifo//----------------------------------------------
    logic [`AXI_IDS_BITS + `AXI_DATA_BITS + 2 + 1 + 1 - 1 : 0] S5_R_wdata, S5_R_rdata, wire_S5_R_rdata;
    logic [`AXI_IDS_BITS-1:0] slave5_RID;
    logic [`AXI_DATA_BITS-1:0] slave5_RDATA;
    logic [1:0] slave5_RRESP;
    logic slave5_RLAST, slave5_RVALID;
    logic slave5_R_hs_done;
    logic S5_R_fifo_empty;

    assign S5_R_wdata = {slave5.RID, slave5.RDATA, slave5.RRESP, slave5.RLAST, slave5.R_hs_done};
    assign wire_S5_R_rdata = (~S5_R_fifo_empty) ? S5_R_rdata : {(`AXI_IDS_BITS + `AXI_DATA_BITS + 2 + 1 + 1){1'b0}};
    assign {slave5_RID, slave5_RDATA, slave5_RRESP, slave5_RLAST, slave5_R_hs_done} = wire_S5_R_rdata;
    assign slave5_RVALID = (S5_R_fifo_empty) ? 1'b0 : 1'b1;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, (`AXI_IDS_BITS + `AXI_DATA_BITS + 2 + 1 + 1)
    ) S5_R_fifo (
        .wclk(DRAM_CLK_i),
        .wreset(DRAM_RST_i),
        .wen(slave5.RVALID),
        .wdata(S5_R_wdata),
        .wfull(S5_R_fifo_full),
        .rclk(AXI_CLK_i),
        .rreset(AXI_RST_i),
        .ren(1'b1),// full?
        .rdata(S5_R_rdata),
        .rempty(S5_R_fifo_empty)
    );
    //----------------------------------------------
    //S5_WA_fifo//----------------------------------------------
    logic S5_WA_wdata, S5_WA_rdata;
    logic slave5_AWREADY;
    logic S5_WA_fifo_empty;

    assign S5_WA_wdata = slave5.AWREADY;
    assign slave5_AWREADY = S5_WA_fifo_empty ? 1'b0 : S5_WA_rdata;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, 1
    ) S5_WA_fifo (
        .wclk(DRAM_CLK_i),
        .wreset(DRAM_RST_i),
        .wen(slave5.AWREADY),
        .wdata(S5_WA_wdata),
        .wfull(S5_WA_fifo_full),
        .rclk(AXI_CLK_i),
        .rreset(AXI_RST_i),
        .ren(~WA_master_full),// full?
        .rdata(S5_WA_rdata),
        .rempty(S5_WA_fifo_empty)
    );
    //----------------------------------------------
    //S5_W_fifo//----------------------------------------------
    logic S5_W_wdata, S5_W_rdata;
    logic slave5_WREADY;
    logic S5_W_fifo_empty;

    assign S5_W_wdata = slave5.WREADY;
    assign slave5_WREADY = S5_W_fifo_empty ? 1'b0 : S5_W_rdata;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, 1
    ) S5_W_fifo (
        .wclk(DRAM_CLK_i),
        .wreset(DRAM_RST_i),
        .wen(slave5.WREADY),
        .wdata(S5_W_wdata),
        .wfull(S5_W_fifo_full),
        .rclk(AXI_CLK_i),
        .rreset(AXI_RST_i),
        .ren(1'b1),// full?
        .rdata(S5_W_rdata),
        .rempty(S5_W_fifo_empty)
    );
    //----------------------------------------------
    //S5_B_fifo//----------------------------------------------
    logic [`AXI_IDS_BITS + `AXI_DATA_BITS + 2 + 1 - 1 : 0] S5_B_wdata, S5_B_rdata, wire_S5_B_rdata;
    logic [`AXI_IDS_BITS-1:0] slave5_BID;
    logic [1:0] slave5_BRESP;
    logic slave5_BVALID;
    logic S5_B_fifo_empty;

    assign S5_B_wdata = {slave5.BID, slave5.BRESP};
    assign wire_S5_B_rdata = (~S5_B_fifo_empty)? S5_B_rdata : {(`AXI_IDS_BITS + `AXI_DATA_BITS + 2 + 1 ){1'b0}};
    assign {slave5_BID, slave5_BRESP} = wire_S5_B_rdata;
    assign slave5_BVALID = (S5_B_fifo_empty) ? 1'b0 : 1'b1;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, (`AXI_IDS_BITS + `AXI_DATA_BITS + 2 + 1)
    ) S5_B_fifo (
        .wclk(DRAM_CLK_i),
        .wreset(DRAM_RST_i),
        .wen(slave5.BVALID),
        .wdata(S5_B_wdata),
        .wfull(S5_B_fifo_full),
        .rclk(AXI_CLK_i),
        .rreset(AXI_RST_i),
        .ren(1'b1),// full?
        .rdata(S5_B_rdata),
        .rempty(S5_B_fifo_empty)
    );
    //----------------------------------------------
    //AXI to S5 : 
    //RA_S5_fifo//----------------------------------------------
    logic [`AXI_IDS_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2 - 1 : 0] RA_S5_wdata, RA_S5_rdata, wire_RA_S5_rdata;
    logic [`AXI_IDS_BITS-1:0] slave5_ARID;
    logic [`AXI_ADDR_BITS-1:0] slave5_ARADDR;
    logic [`AXI_LEN_BITS-1:0] slave5_ARLEN;
    logic [`AXI_SIZE_BITS-1:0] slave5_ARSIZE;
    logic [1:0] slave5_ARBURST;
    logic slave5_ARVALID;
    logic RA_S5_fifo_empty, RA_S5_fifo_full;

    assign RA_S5_wdata = {slave5_ARID, slave5_ARADDR, slave5_ARLEN, slave5_ARSIZE, slave5_ARBURST};
    assign wire_RA_S5_rdata = (~RA_S5_fifo_empty)? RA_S5_rdata : {(`AXI_IDS_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2){1'b0}};
    assign {slave5.ARID, slave5.ARADDR, slave5.ARLEN, slave5.ARSIZE, slave5.ARBURST} = wire_RA_S5_rdata;
    assign slave5.ARVALID = (RA_S5_fifo_empty) ? 1'b0 : 1'b1;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, (`AXI_IDS_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2)
    ) RA_S5_fifo (
        .wclk(AXI_CLK_i),
        .wreset(AXI_RST_i),
        .wen(slave5_ARVALID),
        .wdata(RA_S5_wdata),
        .wfull(RA_S5_fifo_full),
        .rclk(DRAM_CLK_i),
        .rreset(DRAM_RST_i),
        .ren(1'b1), // full?
        .rdata(RA_S5_rdata),
        .rempty(RA_S5_fifo_empty)
    );
    //----------------------------------------------
    //R_S5_fifo //----------------------------------------------

    logic R_S5_wdata, R_S5_rdata;
    logic slave5_RREADY;
    logic R_S5_fifo_full;

    assign R_S5_wdata = slave5_RREADY;
    assign slave5.RREADY = R_S5_fifo_empty ? 1'b0 : R_S5_rdata;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, 1
    ) R_S5_fifo (
        .wclk(AXI_CLK_i),
        .wreset(AXI_RST_i),
        .wen(slave5_RREADY),
        .wdata(R_S5_wdata),
        .wfull(R_S5_fifo_full),
        .rclk(DRAM_CLK_i),
        .rreset(DRAM_RST_i),
        .ren(1'b1),// full?
        .rdata(R_S5_rdata),
        .rempty(R_S5_fifo_empty)
    );
    
    //----------------------------------------------
    //WA_S5_fifo//----------------------------------------------
    logic [`AXI_IDS_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2 - 1 : 0] WA_S5_wdata, WA_S5_rdata, wire_WA_S5_rdata;
    logic [`AXI_IDS_BITS-1:0] slave5_AWID;
    logic [`AXI_ADDR_BITS-1:0] slave5_AWADDR;
    logic [`AXI_LEN_BITS-1:0] slave5_AWLEN;
    logic [`AXI_SIZE_BITS-1:0] slave5_AWSIZE;
    logic [1:0] slave5_AWBURST;
    logic slave5_AWVALID;
    logic WA_S5_fifo_empty, WA_S5_fifo_full;

    assign WA_S5_wdata = {slave5_AWID, slave5_AWADDR, slave5_AWLEN, slave5_AWSIZE, slave5_AWBURST};
    assign wire_WA_S5_rdata = (~WA_S5_fifo_empty) ? WA_S5_rdata : {(`AXI_IDS_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2){1'b0}};
    assign {slave5.AWID, slave5.AWADDR, slave5.AWLEN, slave5.AWSIZE, slave5.AWBURST} = wire_WA_S5_rdata;
    assign slave5.AWVALID = (WA_S5_fifo_empty) ? 1'b0 : 1'b1;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, (`AXI_IDS_BITS + `AXI_ADDR_BITS + `AXI_LEN_BITS + `AXI_SIZE_BITS + 2)
    ) WA_S5_fifo (
        .wclk(AXI_CLK_i),
        .wreset(AXI_RST_i),
        .wen(slave5_AWVALID),
        .wdata(WA_S5_wdata),
        .wfull(WA_S5_fifo_full),
        .rclk(DRAM_CLK_i),
        .rreset(DRAM_RST_i),
        .ren(1'b1), // full?
        .rdata(WA_S5_rdata),
        .rempty(WA_S5_fifo_empty)
    );
    //----------------------------------------------
    //W_S5_fifo//----------------------------------------------
    logic [`AXI_DATA_BITS + `AXI_STRB_BITS + 1 - 1 : 0] W_S5_wdata, W_S5_rdata, wire_W_S5_rdata;
    logic [`AXI_DATA_BITS-1:0] slave5_WDATA;
    logic [`AXI_STRB_BITS-1:0] slave5_WSTRB;
    logic slave5_WLAST;
    logic slave5_WVALID;
    logic W_S5_fifo_empty, W_S5_fifo_full;

    assign W_S5_wdata = {slave5_WDATA, slave5_WSTRB, slave5_WLAST};
    assign wire_W_S5_rdata = (~W_S5_fifo_empty) ? W_S5_rdata : {(`AXI_DATA_BITS + `AXI_STRB_BITS + 1){1'b0}};
    assign {slave5.WDATA, slave5.WSTRB, slave5.WLAST} = wire_W_S5_rdata;
    assign slave5.WVALID = (W_S5_fifo_empty) ? 1'b0 : 1'b1;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, (`AXI_DATA_BITS + `AXI_STRB_BITS + 1)
    ) W_S5_fifo (
        .wclk(AXI_CLK_i),
        .wreset(AXI_RST_i),
        .wen(slave5_WVALID),
        .wdata(W_S5_wdata),
        .wfull(W_S5_fifo_full),
        .rclk(DRAM_CLK_i),
        .rreset(DRAM_RST_i),
        .ren(1'b1), // full?
        .rdata(W_S5_rdata),
        .rempty(W_S5_fifo_empty)
    );
    //----------------------------------------------
    //B_S5_fifo //----------------------------------------------

    logic B_S5_wdata, B_S5_rdata;
    logic slave5_BREADY;
    logic B_S5_fifo_empty,B_S5_fifo_full;

    assign B_S5_wdata = slave5_BREADY;
    assign slave5.BREADY = B_S5_fifo_empty ? 1'b0 : B_S5_rdata;
    async_fifo_core #(  //SYNC_STAGE ?? 
        3, 3, 1
    ) B_S5_fifo (
        .wclk(AXI_CLK_i),
        .wreset(AXI_RST_i),
        .wen(slave5_BREADY),
        .wdata(B_S5_wdata),
        .wfull(B_S5_fifo_full),
        .rclk(DRAM_CLK_i),
        .rreset(DRAM_RST_i),
        .ren(1'b1),// full?
        .rdata(B_S5_rdata),
        .rempty(B_S5_fifo_empty)
    );
	////////////////////

    AXI_interface_slave slaveDefault ();

    WA WA(
		.clk(AXI_CLK_i),
		.rst(AXI_RST_i),
        //master 1 input
        .AWID_master1(master1_AWID),
        .AWADDR_master1(master1_AWADDR),
        .AWLEN_master1(master1_AWLEN),
        .AWSIZE_master1(master1_AWSIZE),
        .AWBURST_master1(master1_AWBURST),
        .AWVALID_master1(master1_AWVALID),
        //slave ready signals input 
        .AWREADY_slave0(slave0_AWREADY),
        .AWREADY_slave1(slave1_AWREADY),
        .AWREADY_slave2(slave2_AWREADY),
        .AWREADY_slave3(slave3_AWREADY),
        .AWREADY_slave4(slave4_AWREADY),
        .AWREADY_slave5(slave5_AWREADY),
        .AWREADY_slaveDefault(slaveDefault.AWREADY), 

        //output to slave
        .AWID_slave0(slave0_AWID), 
        .AWID_slave1(slave1_AWID), 
        .AWID_slave2(slave2_AWID), 
        .AWID_slave3(slave3_AWID), 
        .AWID_slave4(slave4_AWID), 
        .AWID_slave5(slave5_AWID), 
        .AWID_slaveDefault(slaveDefault.AWID),

        .AWADDR_slave0(slave0_AWADDR),
        .AWADDR_slave1(slave1_AWADDR), 
        .AWADDR_slave2(slave2_AWADDR), 
        .AWADDR_slave3(slave3_AWADDR), 
        .AWADDR_slave4(slave4_AWADDR), 
        .AWADDR_slave5(slave5_AWADDR), 
        .AWADDR_slaveDefault(slaveDefault.AWADDR),

        .AWLEN_slave0(slave0_AWLEN), 
        .AWLEN_slave1(slave1_AWLEN), 
        .AWLEN_slave2(slave2_AWLEN), 
        .AWLEN_slave3(slave3_AWLEN), 
        .AWLEN_slave4(slave4_AWLEN), 
        .AWLEN_slave5(slave5_AWLEN), 
        .AWLEN_slaveDefault(slaveDefault.AWLEN),

        .AWSIZE_slave0(slave0_AWSIZE), 
        .AWSIZE_slave1(slave1_AWSIZE), 
        .AWSIZE_slave2(slave2_AWSIZE), 
        .AWSIZE_slave3(slave3_AWSIZE), 
        .AWSIZE_slave4(slave4_AWSIZE), 
        .AWSIZE_slave5(slave5_AWSIZE), 
        .AWSIZE_slaveDefault(slaveDefault.AWSIZE),

        .AWBURST_slave0(slave0_AWBURST), 
        .AWBURST_slave1(slave1_AWBURST), 
        .AWBURST_slave2(slave2_AWBURST), 
        .AWBURST_slave3(slave3_AWBURST), 
        .AWBURST_slave4(slave4_AWBURST), 
        .AWBURST_slave5(slave5_AWBURST), 
        .AWBURST_slaveDefault(slaveDefault.AWBURST),


        .AWVALID_slave0(slave0_AWVALID),
        .AWVALID_slave1(slave1_AWVALID),
        .AWVALID_slave2(slave2_AWVALID),
        .AWVALID_slave3(slave3_AWVALID),
        .AWVALID_slave4(slave4_AWVALID),
        .AWVALID_slave5(slave5_AWVALID),
        .AWVALID_slaveDefault(slaveDefault.AWVALID),

        .AWREADY_StoM(master1_AWREADY),

        .FULL_slave0(WA_S0_fifo_full),
        .FULL_slave1(WA_S1_fifo_full),
        .FULL_slave2(WA_S2_fifo_full),
        .FULL_slave3(WA_S3_fifo_full),
        .FULL_slave4(WA_S4_fifo_full),
        .FULL_slave5(WA_S5_fifo_full),

        .full_slave(WA_slave_full),

	   .FULL_master0(WA_M0_fifo_full),
	   .FULL_master1(WA_M1_fifo_full),
	   .full_master(WA_master_full)
    );

    WD WD(
		.clk(AXI_CLK_i),
		.rst(AXI_RST_i),

        .WDATA_master1(master1_WDATA),
        .WSTRB_master1(master1_WSTRB),
        .WLAST_master1(master1_WLAST),
        .WVALID_master1(master1_WVALID),

        .WDATA_slave0(slave0_WDATA), 
        .WDATA_slave1(slave1_WDATA),
        .WDATA_slave2(slave2_WDATA),
        .WDATA_slave3(slave3_WDATA),
        .WDATA_slave4(slave4_WDATA),
        .WDATA_slave5(slave5_WDATA),
        .WDATA_slaveDefault(slaveDefault.WDATA),
        .WSTRB_slave0(slave0_WSTRB), 
        .WSTRB_slave1(slave1_WSTRB),
        .WSTRB_slave2(slave2_WSTRB),
        .WSTRB_slave3(slave3_WSTRB),
        .WSTRB_slave4(slave4_WSTRB),
        .WSTRB_slave5(slave5_WSTRB), 
        .WSTRB_slaveDefault(slaveDefault.WSTRB),
        .WLAST_slave0(slave0_WLAST), 
        .WLAST_slave1(slave1_WLAST), 
        .WLAST_slave2(slave2_WLAST), 
        .WLAST_slave3(slave3_WLAST), 
        .WLAST_slave4(slave4_WLAST), 
        .WLAST_slave5(slave5_WLAST), 
        .WLAST_slaveDefault(slaveDefault.WLAST),
        .WVALID_slave0(slave0_WVALID), 
        .WVALID_slave1(slave1_WVALID), 
        .WVALID_slave2(slave2_WVALID), 
        .WVALID_slave3(slave3_WVALID), 
        .WVALID_slave4(slave4_WVALID), 
        .WVALID_slave5(slave5_WVALID), 
        .WVALID_slaveDefault(slaveDefault.WVALID),

        .WREADY_slave0(slave0_WREADY),
        .WREADY_slave1(slave1_WREADY),
        .WREADY_slave2(slave2_WREADY),
        .WREADY_slave3(slave3_WREADY),
        .WREADY_slave4(slave4_WREADY),
        .WREADY_slave5(slave5_WREADY),
        .WREADY_slaveDefault(slaveDefault.WREADY),

        //data should after address : outstanding = 1
        .AWVALID_slave0(slave0.AWVALID),
        .AWVALID_slave1(slave1_AWVALID),
        .AWVALID_slave2(slave2_AWVALID),
        .AWVALID_slave3(slave3_AWVALID),
        .AWVALID_slave4(slave4_AWVALID),
        .AWVALID_slave5(slave5_AWVALID),
        .AWVALID_slaveDefault(slaveDefault.AWVALID),

        .WREADY_StoM(master1_WREADY)
    );

    WR WR(
        .BID_slave0(slave0_BID), 
        .BID_slave1(slave1_BID), 
        .BID_slave2(slave2_BID), 
        .BID_slave3(slave3_BID), 
        .BID_slave4(slave4_BID), 
        .BID_slave5(slave5_BID), 
        .BID_slaveDefault(slaveDefault.BID),
        .BRESP_slave0(slave0_BRESP), 
        .BRESP_slave1(slave1_BRESP), 
        .BRESP_slave2(slave2_BRESP), 
        .BRESP_slave3(slave3_BRESP), 
        .BRESP_slave4(slave4_BRESP), 
        .BRESP_slave5(slave5_BRESP), 
        .BRESP_slaveDefault(slaveDefault.BRESP),
        .BVALID_slave0(slave0_BVALID), 
        .BVALID_slave1(slave1_BVALID), 
        .BVALID_slave2(slave2_BVALID), 
        .BVALID_slave3(slave3_BVALID), 
        .BVALID_slave4(slave4_BVALID), 
        .BVALID_slave5(slave5_BVALID), 
        .BVALID_slaveDefault(slaveDefault.BVALID),

        .BID_master1(master1_BID),
        .BRESP_master1(master1_BRESP),
        .BVALID_master1(master1_BVALID),


        .BREADY_master1(master1_BREADY),

        .BREADY_MtoS0(slave0_BREADY), 
        .BREADY_MtoS1(slave1_BREADY), 
        .BREADY_MtoS2(slave2_BREADY), 
        .BREADY_MtoS3(slave3_BREADY), 
        .BREADY_MtoS4(slave4_BREADY), 
        .BREADY_MtoS5(slave5_BREADY), 
        .BREADY_MtoSDefault(slaveDefault.BREADY)
    );

    RA RA(
		.clk(AXI_CLK_i),
		.rst(AXI_RST_i),
        .ARID_master0(master0_ARID),
        .ARID_master1(master1_ARID),
        .ARADDR_master0(master0_ARADDR), 
        .ARADDR_master1(master1_ARADDR),
        .ARLEN_master0(master0_ARLEN), 
        .ARLEN_master1(master1_ARLEN),
        .ARSIZE_master0(master0_ARSIZE), 
        .ARSIZE_master1(master1_ARSIZE),
        .ARBURST_master0(master0_ARBURST), 
        .ARBURST_master1(master1_ARBURST),
        .ARVALID_master0(master0_ARVALID), 
        .ARVALID_master1(master1_ARVALID),

        .ARID_slave0(slave0_ARID), 
        .ARID_slave1(slave1_ARID), 
        .ARID_slave2(slave2_ARID), 
        .ARID_slave3(slave3_ARID), 
        .ARID_slave4(slave4_ARID), 
        .ARID_slave5(slave5_ARID), 
        .ARID_slaveDefault(slaveDefault.ARID),
        .ARADDR_slave0(slave0_ARADDR), 
        .ARADDR_slave1(slave1_ARADDR), 
        .ARADDR_slave2(slave2_ARADDR), 
        .ARADDR_slave3(slave3_ARADDR), 
        .ARADDR_slave4(slave4_ARADDR), 
        .ARADDR_slave5(slave5_ARADDR), 
        .ARADDR_slaveDefault(slaveDefault.ARADDR),
        .ARLEN_slave0(slave0_ARLEN), 
        .ARLEN_slave1(slave1_ARLEN), 
        .ARLEN_slave2(slave2_ARLEN), 
        .ARLEN_slave3(slave3_ARLEN), 
        .ARLEN_slave4(slave4_ARLEN), 
        .ARLEN_slave5(slave5_ARLEN), 
        .ARLEN_slaveDefault(slaveDefault.ARLEN),
        .ARSIZE_slave0(slave0_ARSIZE), 
        .ARSIZE_slave1(slave1_ARSIZE), 
        .ARSIZE_slave2(slave2_ARSIZE), 
        .ARSIZE_slave3(slave3_ARSIZE), 
        .ARSIZE_slave4(slave4_ARSIZE), 
        .ARSIZE_slave5(slave5_ARSIZE), 
        .ARSIZE_slaveDefault(slaveDefault.ARSIZE),
        .ARBURST_slave0(slave0_ARBURST), 
        .ARBURST_slave1(slave1_ARBURST), 
        .ARBURST_slave2(slave2_ARBURST), 
        .ARBURST_slave3(slave3_ARBURST), 
        .ARBURST_slave4(slave4_ARBURST), 
        .ARBURST_slave5(slave5_ARBURST), 
        .ARBURST_slaveDefault(slaveDefault.ARBURST),
        .ARVALID_slave0(slave0_ARVALID), 
        .ARVALID_slave1(slave1_ARVALID), 
        .ARVALID_slave2(slave2_ARVALID), 
        .ARVALID_slave3(slave3_ARVALID), 
        .ARVALID_slave4(slave4_ARVALID), 
        .ARVALID_slave5(slave5_ARVALID), 
        .ARVALID_slaveDefault(slaveDefault.ARVALID),

        .ARREADY_slave0(slave0_ARREADY), 
        .ARREADY_slave1(slave1_ARREADY), 
        .ARREADY_slave2(slave2_ARREADY), 
        .ARREADY_slave3(slave3_ARREADY), 
        .ARREADY_slave4(slave4_ARREADY), 
        .ARREADY_slave5(slave5_ARREADY), 
        .ARREADY_slaveDefault(slaveDefault.ARREADY),

        .ARREADY_StoM0(master0_ARREADY), 
        .ARREADY_StoM1(master1_ARREADY),


        .FULL_slave0(RA_S0_fifo_full),
        .FULL_slave1(RA_S1_fifo_full),
        .FULL_slave2(RA_S2_fifo_full),
        .FULL_slave3(RA_S3_fifo_full),
        .FULL_slave4(RA_S4_fifo_full),
        .FULL_slave5(RA_S5_fifo_full),

        .full_slave(RA_slave_full),

	   .FULL_master0(RA_M0_fifo_full),
	   .FULL_master1(RA_M1_fifo_full),
	   .full_master(RA_master_full)
    );

    RD RD(
		.clk(AXI_CLK_i),
		.rst(AXI_RST_i),
        .RID_slave0(slave0_RID), 
        .RID_slave1(slave1_RID),
        .RID_slave2(slave2_RID),
        .RID_slave3(slave3_RID),
        .RID_slave4(slave4_RID),
        .RID_slave5(slave5_RID),
        .RID_slaveDefault(slaveDefault.RID),
        .RDATA_slave0(slave0_RDATA),
        .RDATA_slave1(slave1_RDATA), 
        .RDATA_slave2(slave2_RDATA), 
        .RDATA_slave3(slave3_RDATA), 
        .RDATA_slave4(slave4_RDATA), 
        .RDATA_slave5(slave5_RDATA), 
        .RDATA_slaveDefault(slaveDefault.RDATA),
        .RRESP_slave0(slave0_RRESP), 
        .RRESP_slave1(slave1_RRESP), 
        .RRESP_slave2(slave2_RRESP), 
        .RRESP_slave3(slave3_RRESP), 
        .RRESP_slave4(slave4_RRESP), 
        .RRESP_slave5(slave5_RRESP), 
        .RRESP_slaveDefault(slaveDefault.RRESP),
        .RLAST_slave0(slave0_RLAST), 
        .RLAST_slave1(slave1_RLAST), 
        .RLAST_slave2(slave2_RLAST), 
        .RLAST_slave3(slave3_RLAST), 
        .RLAST_slave4(slave4_RLAST), 
        .RLAST_slave5(slave5_RLAST), 
        .RLAST_slaveDefault(slaveDefault.RLAST),
        .RVALID_slave0(slave0_RVALID), 
        .RVALID_slave1(slave1_RVALID), 
        .RVALID_slave2(slave2_RVALID), 
        .RVALID_slave3(slave3_RVALID), 
        .RVALID_slave4(slave4_RVALID), 
        .RVALID_slave5(slave5_RVALID), 
        .RVALID_slaveDefault(slaveDefault.RVALID),

        .RID_master0(master0_RID), 
        .RID_master1(master1_RID),
        .RDATA_master0(master0_RDATA),
        .RDATA_master1(master1_RDATA),
        .RRESP_master0(master0_RRESP), 
        .RRESP_master1(master1_RRESP),
        .RLAST_master0(master0_RLAST), 
        .RLAST_master1(master1_RLAST),
        .RVALID_master0(master0_RVALID), 
        .RVALID_master1(master1_RVALID),

        .RREADY_master0(master0_RREADY)
        , 
        .RREADY_master1(master1_RREADY),

        .RREADY_MtoS0(slave0_RREADY), 
        .RREADY_MtoS1(slave1_RREADY), 
        .RREADY_MtoS2(slave2_RREADY), 
        .RREADY_MtoS3(slave3_RREADY), 
        .RREADY_MtoS4(slave4_RREADY), 
        .RREADY_MtoS5(slave5_RREADY), 
        .RREADY_MtoSDefault(slaveDefault.RREADY),

        .R_hs_done_slave0(slave0_R_hs_done),
        .R_hs_done_slave1(slave1_R_hs_done), 
        .R_hs_done_slave2(slave2_R_hs_done), 
        .R_hs_done_slave3(slave3_R_hs_done), 
        .R_hs_done_slave4(slave4_R_hs_done), 
        .R_hs_done_slave5(slave5_R_hs_done),

	.ARVALID_slave0(slave0_ARVALID),
    	.ARVALID_slave1(slave1_ARVALID),
    	.ARVALID_slave2(slave2_ARVALID),
    	.ARVALID_slave3(slave3_ARVALID),
    	.ARVALID_slave4(slave4_ARVALID),
    	.ARVALID_slave5(slave5_ARVALID),
    	.ARVALID_slaveDefault(slaveDefault.ARVALID)
    );
    DefaultSlave DefaultSlave(
		.clk(AXI_CLK_i),
		.rstn(AXI_RST_i),
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

    
    //----------------------------------------------

endmodule
