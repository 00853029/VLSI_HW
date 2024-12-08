// `include "Arbiter.sv"
// `include "Decoder.sv"
`include "AXI_define.svh"
module RA(
	input	clk,
	input rst,
    input [`AXI_ID_BITS-1:0] ARID_master0, ARID_master1,
    input [`AXI_ADDR_BITS-1:0] ARADDR_master0, ARADDR_master1,
    input [`AXI_LEN_BITS-1:0] ARLEN_master0, ARLEN_master1,
    input [`AXI_SIZE_BITS-1:0] ARSIZE_master0, ARSIZE_master1,
    input [1:0] ARBURST_master0, ARBURST_master1,
    input ARVALID_master0, ARVALID_master1,

    output logic [`AXI_IDS_BITS-1:0] ARID_slave0, ARID_slave1, ARID_slaveDefault,
    output logic [`AXI_ADDR_BITS-1:0] ARADDR_slave0, ARADDR_slave1, ARADDR_slaveDefault,
    output logic [`AXI_LEN_BITS-1:0] ARLEN_slave0, ARLEN_slave1, ARLEN_slaveDefault,
    output logic [`AXI_SIZE_BITS-1:0] ARSIZE_slave0, ARSIZE_slave1, ARSIZE_slaveDefault,
    output logic [1:0] ARBURST_slave0, ARBURST_slave1, ARBURST_slaveDefault,
    output logic ARVALID_slave0, ARVALID_slave1, ARVALID_slaveDefault,

    input ARREADY_slave0, ARREADY_slave1, ARREADY_slaveDefault,

    output logic ARREADY_StoM0, ARREADY_StoM1
);

logic [`AXI_IDS_BITS-1:0] IDS_M;
logic [`AXI_ADDR_BITS-1:0] ADDR_M;
logic [`AXI_LEN_BITS-1:0] LEN_M;
logic [`AXI_SIZE_BITS-1:0] SIZE_M;
logic [1:0] BURST_M;
logic VALID_M;

logic READY_slave;

assign {ARID_slave0 , ARID_slave1, ARID_slaveDefault} = {IDS_M , IDS_M, IDS_M};
assign {ARADDR_slave0 , ARADDR_slave1, ARADDR_slaveDefault} = {ADDR_M, ADDR_M, ADDR_M};
assign {ARLEN_slave0, ARLEN_slave1, ARLEN_slaveDefault} = {LEN_M, LEN_M, LEN_M};
assign {ARSIZE_slave0 , ARSIZE_slave1, ARSIZE_slaveDefault} = {SIZE_M, SIZE_M, SIZE_M};
assign {ARBURST_slave0 , ARBURST_slave1, ARBURST_slaveDefault} = {BURST_M, BURST_M, BURST_M};

logic VALID_slave0, VALID_slave1, VALID_slaveDefault;
//from decoder
//assign ARVALID_slave0 = VALID_slave0;
//assign ARVALID_slave1 = VALID_slave1;
//assign ARVALID_slaveDefault = VALID_slaveDefault;
//--------------------------------
	logic tmp_ARVALID_S0;
    logic tmp_ARVALID_S1;
    logic tmp_ARVALID_SDEFAULT;
    logic busy_S0;
    logic busy_S1;
    logic busy_SDEFAULT;
    logic reg_ARREADY_S0;
    logic reg_ARREADY_S1;
    logic reg_ARREADY_SDEFAULT;
	assign busy_S0       = reg_ARREADY_S0 & ~ARREADY_slave0;
    assign busy_S1       = reg_ARREADY_S1 & ~ARREADY_slave1;
    assign busy_SDEFAULT = reg_ARREADY_SDEFAULT & ~ARREADY_slaveDefault;

    assign ARVALID_slave0       = busy_S0? 1'b0:tmp_ARVALID_S0;
    assign ARVALID_slave1       = busy_S1? 1'b0:tmp_ARVALID_S1;
    assign ARVALID_slaveDefault = busy_SDEFAULT? 1'b0:tmp_ARVALID_SDEFAULT;

    always_ff@(posedge clk or negedge rst) begin
        if(~rst) begin
            reg_ARREADY_S0       <= 1'b0;
            reg_ARREADY_S1       <= 1'b0;
            reg_ARREADY_SDEFAULT <= 1'b0;
        end else begin
            reg_ARREADY_S0       <= ARREADY_slave0? 1'b1:reg_ARREADY_S0;
            reg_ARREADY_S1       <= ARREADY_slave1? 1'b1:reg_ARREADY_S1;
            reg_ARREADY_SDEFAULT <= ARREADY_slaveDefault? 1'b1:reg_ARREADY_SDEFAULT;
        end
    end   

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
    .READY_M1(ARREADY_StoM1)
);

Decoder DecoderRA(
    .VALID(VALID_M),
    .ADDR(ADDR_M),
    .READY_slave0(ARREADY_slave0),
    .READY_slave1(ARREADY_slave1),
    .READY_slaveDefault(ARREADY_slaveDefault),

    //output
    .VALID_slave0(tmp_ARVALID_S0),
    .VALID_slave1(tmp_ARVALID_S1),
    .VALID_slaveDefault(tmp_ARVALID_SDEFAULT),
    .READY_S(READY_slave)
);


endmodule