// `include "Arbiter.sv"
// `include "Decoder.sv"
`include "AXI_define.svh"
module RA(
	input clk,
	input rst,
    input [`AXI_ID_BITS-1:0] ARID_master0, ARID_master1,
    input [`AXI_ADDR_BITS-1:0] ARADDR_master0, ARADDR_master1,
    input [`AXI_LEN_BITS-1:0] ARLEN_master0, ARLEN_master1,
    input [`AXI_SIZE_BITS-1:0] ARSIZE_master0, ARSIZE_master1,
    input [1:0] ARBURST_master0, ARBURST_master1,
    input ARVALID_master0, ARVALID_master1,

    output logic [`AXI_IDS_BITS-1:0] ARID_slave0, ARID_slave1, ARID_slave2, ARID_slave3, ARID_slave4, ARID_slave5, ARID_slaveDefault,
    output logic [`AXI_ADDR_BITS-1:0] ARADDR_slave0, ARADDR_slave1, ARADDR_slave2, ARADDR_slave3, ARADDR_slave4, ARADDR_slave5, ARADDR_slaveDefault,
    output logic [`AXI_LEN_BITS-1:0] ARLEN_slave0, ARLEN_slave1, ARLEN_slave2, ARLEN_slave3, ARLEN_slave4, ARLEN_slave5, ARLEN_slaveDefault,
    output logic [`AXI_SIZE_BITS-1:0] ARSIZE_slave0, ARSIZE_slave1, ARSIZE_slave2,ARSIZE_slave3, ARSIZE_slave4, ARSIZE_slave5, ARSIZE_slaveDefault,
    output logic [1:0] ARBURST_slave0, ARBURST_slave1, ARBURST_slave2, ARBURST_slave3, ARBURST_slave4, ARBURST_slave5, ARBURST_slaveDefault,
    output logic ARVALID_slave0, ARVALID_slave1, ARVALID_slave2, ARVALID_slave3, ARVALID_slave4, ARVALID_slave5, ARVALID_slaveDefault,

    input ARREADY_slave0, ARREADY_slave1, ARREADY_slave2, ARREADY_slave3, ARREADY_slave4, ARREADY_slave5, ARREADY_slaveDefault,

    output logic ARREADY_StoM0, ARREADY_StoM1,


    input FULL_slave0,
    input FULL_slave1,
    input FULL_slave2,
    input FULL_slave3,
    input FULL_slave4,
    input FULL_slave5,
    output logic full_slave,

     input FULL_master0,
      input FULL_master1,
	output logic full_master
);

//-------------------

logic [`AXI_IDS_BITS-1:0] IDS_M;
logic [`AXI_ADDR_BITS-1:0] ADDR_M;
logic [`AXI_LEN_BITS-1:0] LEN_M;
logic [`AXI_SIZE_BITS-1:0] SIZE_M;
logic [1:0] BURST_M;
logic VALID_M;

logic READY_slave;

assign {ARID_slave0, ARID_slave1, ARID_slave2, ARID_slave3, ARID_slave4, ARID_slave5, ARID_slaveDefault} = {7{IDS_M}};
assign {ARADDR_slave0, ARADDR_slave1, ARADDR_slave2, ARADDR_slave3, ARADDR_slave4, ARADDR_slave5, ARADDR_slaveDefault} = {7{ADDR_M}};
assign {ARLEN_slave0, ARLEN_slave1, ARLEN_slave2, ARLEN_slave3, ARLEN_slave4, ARLEN_slave5, ARLEN_slaveDefault} = {7{LEN_M}};
assign {ARSIZE_slave0, ARSIZE_slave1, ARSIZE_slave2,ARSIZE_slave3, ARSIZE_slave4, ARSIZE_slave5, ARSIZE_slaveDefault} = {7{SIZE_M}};
assign {ARBURST_slave0, ARBURST_slave1, ARBURST_slave2, ARBURST_slave3, ARBURST_slave4, ARBURST_slave5, ARBURST_slaveDefault} = {7{BURST_M}};

// logic VALID_slave0, VALID_slave1, VALID_slaveDefault;

//from decoder
//assign ARVALID_slave0 = VALID_slave0;
//assign ARVALID_slave1 = VALID_slave1;
//assign ARVALID_slaveDefault = VALID_slaveDefault;
//--------------------------------//jaspergold
	// logic tmp_ARVALID_S0;
    // logic tmp_ARVALID_S1;
    // logic tmp_ARVALID_SDEFAULT;
    // logic busy_S0;
    // logic busy_S1;
    // logic busy_SDEFAULT;
    // logic reg_ARREADY_S0;
    // logic reg_ARREADY_S1;
    // logic reg_ARREADY_SDEFAULT;
	// assign busy_S0       = reg_ARREADY_S0 & ~ARREADY_slave0;
    // assign busy_S1       = reg_ARREADY_S1 & ~ARREADY_slave1;
    // assign busy_SDEFAULT = reg_ARREADY_SDEFAULT & ~ARREADY_slaveDefault;

    // assign ARVALID_slave0       = busy_S0? 1'b0:tmp_ARVALID_S0;
    // assign ARVALID_slave1       = busy_S1? 1'b0:tmp_ARVALID_S1;
    // assign ARVALID_slaveDefault = busy_SDEFAULT? 1'b0:tmp_ARVALID_SDEFAULT;

    // always_ff@(posedge clk or negedge rst) begin
    //     if(~rst) begin
    //         reg_ARREADY_S0       <= 1'b0;
    //         reg_ARREADY_S1       <= 1'b0;
    //         reg_ARREADY_SDEFAULT <= 1'b0;
    //     end else begin
    //         reg_ARREADY_S0       <= ARREADY_slave0? 1'b1:reg_ARREADY_S0;
    //         reg_ARREADY_S1       <= ARREADY_slave1? 1'b1:reg_ARREADY_S1;
    //         reg_ARREADY_SDEFAULT <= ARREADY_slaveDefault? 1'b1:reg_ARREADY_SDEFAULT;
    //     end
    // end   

Arbiter ArbiterRA(
	.clk(clk),
	.rst(rst),
    .ID_master0(ARID_master0),
    .ADDR_master0(ARADDR_master0),
    .LEN_master0(ARLEN_master0),
    .SIZE_master0(ARSIZE_master0),
    .BURST_master0(ARBURST_master0),
    .VALID_master0(ARVALID_master0),
    .ID_master1(ARID_master1),
    .ADDR_master1(ARADDR_master1),
    .LEN_master1(ARLEN_master1),
    .SIZE_master1(ARSIZE_master1),
    .BURST_master1(ARBURST_master1),
    .VALID_master1(ARVALID_master1),

    .READY_S(READY_slave),

    // output
    .IDS_M(IDS_M),
    .ADDR_M(ADDR_M),
    .LEN_M(LEN_M),
    .SIZE_M(SIZE_M),
    .BURST_M(BURST_M),
    .VALID_M(VALID_M),

    .READY_M0(ARREADY_StoM0),
    .READY_M1(ARREADY_StoM1),

     .FULL_master0(FULL_master0),
     .FULL_master1(FULL_master1),
     .full_master(full_master)
);

Decoder DecoderRA(
    .VALID(VALID_M),
    .ADDR(ADDR_M),
    .READY_slave0(ARREADY_slave0),
    .READY_slave1(ARREADY_slave1),
    .READY_slave2(ARREADY_slave2),
    .READY_slave3(ARREADY_slave3),
    .READY_slave4(ARREADY_slave4),
    .READY_slave5(ARREADY_slave5),
    .READY_slaveDefault(ARREADY_slaveDefault),

    //output
    .VALID_slave0(ARVALID_slave0),
    .VALID_slave1(ARVALID_slave1),
    .VALID_slave2(ARVALID_slave2),
    .VALID_slave3(ARVALID_slave3),
    .VALID_slave4(ARVALID_slave4),
    .VALID_slave5(ARVALID_slave5),
    .VALID_slaveDefault(ARVALID_slaveDefault),
    .READY_S(READY_slave),

    .FULL_slave0(FULL_slave0),
    .FULL_slave1(FULL_slave1),
    .FULL_slave2(FULL_slave2),
    .FULL_slave3(FULL_slave3),
    .FULL_slave4(FULL_slave4),
    .FULL_slave5(FULL_slave5),

    .full_slave(full_slave)
);


endmodule
