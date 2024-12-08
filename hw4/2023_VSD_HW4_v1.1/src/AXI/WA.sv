// `include "Arbiter.sv"
// `include "Decoder.sv"
`include "AXI_define.svh"
module WA(
input clk,
input rst,
    //master 1
    input [`AXI_ID_BITS-1:0] AWID_master1,
    input [`AXI_ADDR_BITS-1:0] AWADDR_master1,
    input [`AXI_LEN_BITS-1:0] AWLEN_master1,
    input [`AXI_SIZE_BITS-1:0] AWSIZE_master1,
    input [1:0] AWBURST_master1,
    input AWVALID_master1,

    input AWREADY_slave0,
    input AWREADY_slave1,
    input AWREADY_slave2,
    input AWREADY_slave3,
    input AWREADY_slave4,
    input AWREADY_slave5,
    input AWREADY_slaveDefault, 

    output logic [`AXI_IDS_BITS-1:0] AWID_slave0 , AWID_slave1, AWID_slave2, AWID_slave3, AWID_slave4, AWID_slave5, AWID_slaveDefault,
    output logic [`AXI_ADDR_BITS-1:0] AWADDR_slave0 , AWADDR_slave1, AWADDR_slave2, AWADDR_slave3, AWADDR_slave4, AWADDR_slave5, AWADDR_slaveDefault,
    output logic [`AXI_LEN_BITS-1:0] AWLEN_slave0, AWLEN_slave1, AWLEN_slave2, AWLEN_slave3, AWLEN_slave4, AWLEN_slave5, AWLEN_slaveDefault,
    output logic [`AXI_SIZE_BITS-1:0] AWSIZE_slave0 , AWSIZE_slave1, AWSIZE_slave2, AWSIZE_slave3, AWSIZE_slave4, AWSIZE_slave5, AWSIZE_slaveDefault,
    output logic [1:0] AWBURST_slave0 , AWBURST_slave1, AWBURST_slave2, AWBURST_slave3, AWBURST_slave4, AWBURST_slave5, AWBURST_slaveDefault,

    output logic AWVALID_slave0,
    output logic AWVALID_slave1,
    output logic AWVALID_slave2,
    output logic AWVALID_slave3,
    output logic AWVALID_slave4,
    output logic AWVALID_slave5,
    output logic AWVALID_slaveDefault,

    
    output logic AWREADY_StoM
);

logic [`AXI_IDS_BITS-1:0] IDS_M;
logic [`AXI_ADDR_BITS-1:0] ADDR_M;
logic [`AXI_LEN_BITS-1:0] LEN_M;
logic [`AXI_SIZE_BITS-1:0] SIZE_M;
logic [1:0] BURST_M;
logic VALID_M;
logic READY_M0;

logic READY_slave;

//from arbiter
assign {AWID_slave0 , AWID_slave1, AWID_slave2, AWID_slave3, AWID_slave4, AWID_slave5, AWID_slaveDefault} = {7{IDS_M}};
assign {AWADDR_slave0 , AWADDR_slave1, AWADDR_slave2, AWADDR_slave3, AWADDR_slave4, AWADDR_slave5, AWADDR_slaveDefault} = {7{ADDR_M}};
assign {AWLEN_slave0, AWLEN_slave1, AWLEN_slave2, AWLEN_slave3, AWLEN_slave4, AWLEN_slave5, AWLEN_slaveDefault} = {7{LEN_M}};
assign {AWSIZE_slave0 , AWSIZE_slave1, AWSIZE_slave2, AWSIZE_slave3, AWSIZE_slave4, AWSIZE_slave5, AWSIZE_slaveDefault} = {7{SIZE_M}};
assign {AWBURST_slave0 , AWBURST_slave1, AWBURST_slave2, AWBURST_slave3, AWBURST_slave4, AWBURST_slave5, AWBURST_slaveDefault} = {7{BURST_M}};


//logic VALID_slave0, VALID_slave1, VALID_slaveDefault;
//from decoder
//assign AWVALID_slave0 = VALID_slave0;
//assign AWVALID_slave1 = VALID_slave1;
//assign AWVALID_slaveDefault = VALID_slaveDefault;

Arbiter ArbiterWA(
	.clk(clk),
	.rst(rst),
    .ID_master0(`AXI_ID_BITS'b0),
    .ADDR_master0(`AXI_ADDR_BITS'b0),
    .LEN_master0(`AXI_LEN_BITS'b0),
    .SIZE_master0(`AXI_SIZE_BITS'b0),
    .BURST_master0(2'b00),
    .VALID_master0(1'b0),
    .ID_master1(AWID_master1),
    .ADDR_master1(AWADDR_master1),
    .LEN_master1(AWLEN_master1),
    .SIZE_master1(AWSIZE_master1),
    .BURST_master1(AWBURST_master1),
    .VALID_master1(AWVALID_master1),

    .READY_S(READY_slave),

    // output
    .IDS_M(IDS_M),
    .ADDR_M(ADDR_M),
    .LEN_M(LEN_M),
    .SIZE_M(SIZE_M),
    .BURST_M(BURST_M),
    .VALID_M(VALID_M),

    .READY_M0(READY_M0),
    .READY_M1(AWREADY_StoM)
);

Decoder DecoderWA(
    .VALID(VALID_M),
    .ADDR(ADDR_M),
    .READY_slave0(AWREADY_slave0),
    .READY_slave1(AWREADY_slave1),
    .READY_slave2(AWREADY_slave2),
    .READY_slave3(AWREADY_slave3),
    .READY_slave4(AWREADY_slave4),
    .READY_slave5(AWREADY_slave5),
    .READY_slaveDefault(AWREADY_slaveDefault),

    //output
    .VALID_slave0(AWVALID_slave0),
    .VALID_slave1(AWVALID_slave1),
    .VALID_slave2(AWVALID_slave2),
    .VALID_slave3(AWVALID_slave3),
    .VALID_slave4(AWVALID_slave4),
    .VALID_slave5(AWVALID_slave5),
    .VALID_slaveDefault(AWVALID_slaveDefault),
    .READY_S(READY_slave)
);



endmodule