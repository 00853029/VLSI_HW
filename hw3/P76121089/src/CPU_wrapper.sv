`include "CPU.sv"
`include "Master.sv"
`include "AXI_define.svh"
module CPU_wrapper(
    input clk,
    input rst,
    //MASTER 0:
    //WA master0
    output logic [`AXI_ID_BITS-1:0] AWID_master0,
    output logic [`AXI_ADDR_BITS-1:0] AWADDR_master0,
    output logic [`AXI_LEN_BITS-1:0] AWLEN_master0,
    output logic [`AXI_SIZE_BITS-1:0] AWSIZE_master0,
    output logic [1:0] AWBURST_master0,
    output logic AWVALID_master0,
    input AWREADY_master0,

    //WD master0
    output logic [`AXI_DATA_BITS-1:0] WDATA_master0,
    output logic [`AXI_STRB_BITS-1:0] WSTRB_master0,
    output logic WLAST_master0,
    output logic WVALID_master0,
    input WREADY_master0,

    //WR master0
    input [`AXI_ID_BITS-1:0] BID_master0,
    input [1:0] BRESP_master0,
    input BVALID_master0,
    output logic BREADY_master0,

    //RA master0
    output logic [`AXI_ID_BITS-1:0] ARID_master0,
    output logic [`AXI_ADDR_BITS-1:0] ARADDR_master0,
    output logic [`AXI_LEN_BITS-1:0] ARLEN_master0,
    output logic [`AXI_SIZE_BITS-1:0] ARSIZE_master0,
    output logic [1:0] ARBURST_master0,
    output logic ARVALID_master0,
    input ARREADY_master0,
    //RD master0
    input [`AXI_ID_BITS-1:0] RID_master0,
    input [`AXI_DATA_BITS-1:0] RDATA_master0,
    input [1:0] RRESP_master0,
    input RLAST_master0,
    input RVALID_master0,
    output logic RREADY_master0,

    //MASTER 1:
    //WA master1
    output logic [`AXI_ID_BITS-1:0] AWID_master1,
    output logic [`AXI_ADDR_BITS-1:0] AWADDR_master1,
    output logic [`AXI_LEN_BITS-1:0] AWLEN_master1,
    output logic [`AXI_SIZE_BITS-1:0] AWSIZE_master1,
    output logic [1:0] AWBURST_master1,
    output logic AWVALID_master1,
    input AWREADY_master1,

    //WD master1
    output logic [`AXI_DATA_BITS-1:0] WDATA_master1,
    output logic [`AXI_STRB_BITS-1:0] WSTRB_master1,
    output logic WLAST_master1,
    output logic WVALID_master1,
    input WREADY_master1,

    //WR master1
    input [`AXI_ID_BITS-1:0] BID_master1,
    input [1:0] BRESP_master1,
    input BVALID_master1,
    output logic BREADY_master1,

    //RA master1
    output logic [`AXI_ID_BITS-1:0] ARID_master1,
    output logic [`AXI_ADDR_BITS-1:0] ARADDR_master1,
    output logic [`AXI_LEN_BITS-1:0] ARLEN_master1,
    output logic [`AXI_SIZE_BITS-1:0] ARSIZE_master1,
    output logic [1:0] ARBURST_master1,
    output logic ARVALID_master1,
    input ARREADY_master1,
    //RD master1
    input [`AXI_ID_BITS-1:0] RID_master1,
    input [`AXI_DATA_BITS-1:0] RDATA_master1,
    input [1:0] RRESP_master1,
    input RLAST_master1,
    input RVALID_master1,
    output logic RREADY_master1,


    //hw3
    input interrupt,
    input timeout
);

logic [`AXI_ADDR_BITS-1:0] instr_addr;
logic [`AXI_DATA_BITS-1:0] IM_instr;
logic DM_read;
logic DM_write;
logic [3:0] WEB;
logic [`AXI_ADDR_BITS-1:0] DM_addr;
logic [`AXI_DATA_BITS-1:0] store_data;
logic [`AXI_DATA_BITS-1:0] load_data;

logic IM_stall, DM_stall, lock_DM;

always_ff @(posedge clk ) begin
    if(rst) begin
        lock_DM <= 1'b0;
    end else begin
        lock_DM <= (~IM_stall)? 1'b0:((IM_stall & ~DM_stall)? 1'b1: lock_DM);
    end
end

CPU CPU(
    .clk(clk),
    .rst(rst),

    //IM
    .instr_addr(instr_addr),  //output
    .IM_instr(IM_instr),    //input
    //DM
    .DM_read(DM_read),
    .DM_write(DM_write),
    .WEB(WEB),
    .DM_addr(DM_addr),
    .store_data(store_data),
    .load_data(load_data),

    //stall
    .IM_stall(IM_stall),
    .DM_stall(DM_stall),

    .interrupt(interrupt),
    .timeout(timeout)
);

Master Master0(
    .clk(clk),    // Clock
    .rst(rst),  // Asynchronous reset active high
    // from CPU
    .read(1'b1),
    .write(1'b0),
    .write_type(4'b1111),
    .data_in(`AXI_DATA_BITS'b0),
    .addr_in(instr_addr),
    //to CPU
    .data_out(IM_instr),
    .stall(IM_stall), // to be fixed

    // AXI
    //WRITE ADDRESS
    .AWID(AWID_master0),
    .AWADDR(AWADDR_master0),
    .AWLEN(AWLEN_master0),
    .AWSIZE(AWSIZE_master0),
    .AWBURST(AWBURST_master0),
    .AWVALID(AWVALID_master0),
    .AWREADY(AWREADY_master0),
    //WRITE DATA
    .WDATA(WDATA_master0),
    .WSTRB(WSTRB_master0),
    .WLAST(WLAST_master0),
    .WVALID(WVALID_master0),
    .WREADY(WREADY_master0),
    //WRITE RESPONSE
    .BID(BID_master0),
    .BRESP(BRESP_master0),
    .BVALID(BVALID_master0),
    .BREADY(BREADY_master0),

    //READ ADDRESS
    .ARID(ARID_master0),
    .ARADDR(ARADDR_master0),
    .ARLEN(ARLEN_master0),
    .ARSIZE(ARSIZE_master0),
    .ARBURST(ARBURST_master0),
    .ARVALID(ARVALID_master0),
    .ARREADY(ARREADY_master0),
    //READ DATA
    .RID(RID_master0),
    .RDATA(RDATA_master0),
    .RRESP(RRESP_master0),
    .RLAST(RLAST_master0),
    .RVALID(RVALID_master0),
    .RREADY(RREADY_master0)
);
Master Master1(
    .clk(clk),    // Clock
    .rst(rst),  // Asynchronous reset active high
    // from CPU
    .read(DM_read & ~lock_DM),
    .write(DM_write & ~lock_DM),
    .write_type(WEB),
    .data_in(store_data),
    .addr_in(DM_addr),
    //to CPU
    .data_out(load_data),
    .stall(DM_stall), // to be fixed

    // AXI
    //WRITE ADDRESS
    .AWID(AWID_master1),
    .AWADDR(AWADDR_master1),
    .AWLEN(AWLEN_master1),
    .AWSIZE(AWSIZE_master1),
    .AWBURST(AWBURST_master1),
    .AWVALID(AWVALID_master1),
    .AWREADY(AWREADY_master1),
    //WRITE DATA
    .WDATA(WDATA_master1),
    .WSTRB(WSTRB_master1),
    .WLAST(WLAST_master1),
    .WVALID(WVALID_master1),
    .WREADY(WREADY_master1),
    //WRITE RESPONSE
    .BID(BID_master1),
    .BRESP(BRESP_master1),
    .BVALID(BVALID_master1),
    .BREADY(BREADY_master1),

    //READ ADDRESS
    .ARID(ARID_master1),
    .ARADDR(ARADDR_master1),
    .ARLEN(ARLEN_master1),
    .ARSIZE(ARSIZE_master1),
    .ARBURST(ARBURST_master1),
    .ARVALID(ARVALID_master1),
    .ARREADY(ARREADY_master1),
    //READ DATA
    .RID(RID_master1),
    .RDATA(RDATA_master1),
    .RRESP(RRESP_master1),
    .RLAST(RLAST_master1),
    .RVALID(RVALID_master1),
    .RREADY(RREADY_master1)
);


endmodule