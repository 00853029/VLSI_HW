`include "AXI_define.svh"
module WD(
    input clk,
    input rst,

    input [`AXI_DATA_BITS-1:0] WDATA_master1,
    input [`AXI_STRB_BITS-1:0] WSTRB_master1,
    input WLAST_master1,
    input WVALID_master1,

    output logic [`AXI_DATA_BITS-1:0] WDATA_slave0, WDATA_slave1, WDATA_slave2, WDATA_slave3, WDATA_slave4, WDATA_slave5, WDATA_slaveDefault,
    output logic [`AXI_STRB_BITS-1:0] WSTRB_slave0, WSTRB_slave1, WSTRB_slave2, WSTRB_slave3, WSTRB_slave4, WSTRB_slave5, WSTRB_slaveDefault,
    output logic WLAST_slave0, WLAST_slave1, WLAST_slave2, WLAST_slave3, WLAST_slave4, WLAST_slave5, WLAST_slaveDefault,
    output logic WVALID_slave0, WVALID_slave1, WVALID_slave2, WVALID_slave3, WVALID_slave4, WVALID_slave5, WVALID_slaveDefault,

    input WREADY_slave0,
    input WREADY_slave1,
    input WREADY_slave2,
    input WREADY_slave3,
    input WREADY_slave4,
    input WREADY_slave5,
    input WREADY_slaveDefault,

    //data should after address : outstanding = 1
    input AWVALID_slave0,
    input AWVALID_slave1,
    input AWVALID_slave2,
    input AWVALID_slave3,
    input AWVALID_slave4,
    input AWVALID_slave5,
    input AWVALID_slaveDefault,

    output logic WREADY_StoM
);

//pass write data signals to Slave

assign {WDATA_slave0, WDATA_slave1, WDATA_slave2, WDATA_slave3, WDATA_slave4, WDATA_slave5, WDATA_slaveDefault} = {7{WDATA_master1}};
// assign WDATA_slave0 = (WVALID_slave0) ? WDATA_master1 :`AXI_DATA_BITS'b0;
// assign WDATA_slave1 = (WVALID_slave1) ? WDATA_master1 :`AXI_DATA_BITS'b0;
// assign WDATA_slaveDefault = (WVALID_slaveDefault) ? WDATA_master1 :`AXI_DATA_BITS'b0;

assign WSTRB_slave0 = (WVALID_slave0) ? WSTRB_master1 : `AXI_STRB_BITS'b1111;
assign WSTRB_slave1 = (WVALID_slave1) ? WSTRB_master1 : `AXI_STRB_BITS'b1111;
assign WSTRB_slave2 = (WVALID_slave2) ? WSTRB_master1 : `AXI_STRB_BITS'b1111;
assign WSTRB_slave3 = (WVALID_slave3) ? WSTRB_master1 : `AXI_STRB_BITS'b1111;
assign WSTRB_slave4 = (WVALID_slave4) ? WSTRB_master1 : `AXI_STRB_BITS'b1111;
assign WSTRB_slave5 = (WVALID_slave5) ? WSTRB_master1 : `AXI_STRB_BITS'b1111;
assign WSTRB_slaveDefault = (WVALID_slaveDefault) ? WSTRB_master1 : `AXI_STRB_BITS'b1111;

assign {WLAST_slave0, WLAST_slave1, WLAST_slave2, WLAST_slave3, WLAST_slave4, WLAST_slave5, WLAST_slaveDefault} = {7{WLAST_master1}};
// assign WLAST_slave0 = (WVALID_slave0)? WLAST_master1 : 1'b0;
// assign WLAST_slave1 = (WVALID_slave1)? WLAST_master1 : 1'b0;
// assign WLAST_slaveDefault = (WVALID_slaveDefault)? WLAST_master1 : 1'b0;

logic READY_S; //from slave0 or slave1 or slaveDefault
//check whether WD channel ready or not
assign WREADY_StoM = READY_S & WVALID_master1;

//select destination
logic [6:0] slave_sel;
logic reg_WVALID_S0, reg_WVALID_S1, reg_WVALID_S2, reg_WVALID_S3, reg_WVALID_S4, reg_WVALID_S5, reg_WVALID_SDEFAULT;
/*always_ff @(posedge clk, negedge rst) begin
    if(~rst)    slave_sel <= 3'b000;
    else if(WVALID_master1 & READY_S & WLAST_master1)begin
        slave_sel <= 3'b0;
    end
    else if(AWVALID_slave0) slave_sel <= 3'b100;
    else if(AWVALID_slave1) slave_sel <= 3'b010;
    else if(AWVALID_slaveDefault) slave_sel <= 3'b001;
    else slave_sel <= slave_sel;
end*/
assign slave_sel = {(reg_WVALID_S0 | AWVALID_slave0), (reg_WVALID_S1 | AWVALID_slave1),(reg_WVALID_S2 | AWVALID_slave2),(reg_WVALID_S3 | AWVALID_slave3),(reg_WVALID_S4 | AWVALID_slave4),(reg_WVALID_S5 | AWVALID_slave5), (reg_WVALID_SDEFAULT | AWVALID_slaveDefault)};
    // assign slave = {reg_WVALID_SDEFAULT, reg_WVALID_S1, reg_WVALID_S0};

always_ff @(posedge clk) begin
    if(rst) begin
        reg_WVALID_S0 <= 1'b0;
        reg_WVALID_S1 <= 1'b0;
        reg_WVALID_S2 <= 1'b0;
        reg_WVALID_S3 <= 1'b0;
        reg_WVALID_S4 <= 1'b0;
        reg_WVALID_S5 <= 1'b0;
        reg_WVALID_SDEFAULT <= 1'b0;
    end else begin
        reg_WVALID_S0 <= (AWVALID_slave0)? 1'b1:((WVALID_master1 & READY_S & WLAST_master1)? 1'b0:reg_WVALID_S0);
        reg_WVALID_S1 <= (AWVALID_slave1)? 1'b1:((WVALID_master1 & READY_S & WLAST_master1)? 1'b0:reg_WVALID_S1);
        reg_WVALID_S2 <= (AWVALID_slave2)? 1'b1:((WVALID_master1 & READY_S & WLAST_master1)? 1'b0:reg_WVALID_S2);
        reg_WVALID_S3 <= (AWVALID_slave3)? 1'b1:((WVALID_master1 & READY_S & WLAST_master1)? 1'b0:reg_WVALID_S3);
        reg_WVALID_S4 <= (AWVALID_slave4)? 1'b1:((WVALID_master1 & READY_S & WLAST_master1)? 1'b0:reg_WVALID_S4);
        reg_WVALID_S5 <= (AWVALID_slave5)? 1'b1:((WVALID_master1 & READY_S & WLAST_master1)? 1'b0:reg_WVALID_S5);
        reg_WVALID_SDEFAULT <= (AWVALID_slaveDefault)? 1'b1:((WVALID_master1 & READY_S & WLAST_master1)? 1'b0:reg_WVALID_SDEFAULT);
    end
end

always_comb begin
    case(slave_sel)
        7'b1000000:begin
            READY_S = WREADY_slave0;
            WVALID_slave0 = WVALID_master1;
            WVALID_slave1 = 1'b0;
            WVALID_slave2 = 1'b0;
            WVALID_slave3 = 1'b0;
            WVALID_slave4 = 1'b0;
            WVALID_slave5 = 1'b0;
            WVALID_slaveDefault = 1'b0;
        end
        7'b0100000:begin
            READY_S = WREADY_slave1;
            WVALID_slave0 = 1'b0;
            WVALID_slave1 = WVALID_master1;
            WVALID_slave2 = 1'b0;
            WVALID_slave3 = 1'b0;
            WVALID_slave4 = 1'b0;
            WVALID_slave5 = 1'b0;
            WVALID_slaveDefault = 1'b0;
        end
        7'b0010000:begin
            READY_S = WREADY_slave2;
            WVALID_slave0 = 1'b0;
            WVALID_slave1 = 1'b0;
            WVALID_slave2 = WVALID_master1;
            WVALID_slave3 = 1'b0;
            WVALID_slave4 = 1'b0;
            WVALID_slave5 = 1'b0;
            WVALID_slaveDefault = 1'b0;
        end
        7'b0001000: begin
            READY_S = WREADY_slave3;
            WVALID_slave0 = 1'b0;
            WVALID_slave1 = 1'b0;
            WVALID_slave2 = 1'b0;
            WVALID_slave3 = WVALID_master1;
            WVALID_slave4 = 1'b0;
            WVALID_slave5 = 1'b0;
            WVALID_slaveDefault = 1'b0;
        end
        7'b0000100: begin
            READY_S = WREADY_slave4;
            WVALID_slave0 = 1'b0;
            WVALID_slave1 = 1'b0;
            WVALID_slave2 = 1'b0;
            WVALID_slave3 = 1'b0;
            WVALID_slave4 = WVALID_master1;
            WVALID_slave5 = 1'b0;
            WVALID_slaveDefault = 1'b0;
        end
        7'b0000010: begin
            READY_S = WREADY_slave5;
            WVALID_slave0 = 1'b0;
            WVALID_slave1 = 1'b0;
            WVALID_slave2 = 1'b0;
            WVALID_slave3 = 1'b0;
            WVALID_slave4 = 1'b0;
            WVALID_slave5 = WVALID_master1;
            WVALID_slaveDefault = 1'b0;
        end
        7'b0000001: begin   //default slave
            READY_S = WREADY_slaveDefault;
            WVALID_slave0 = 1'b0;
            WVALID_slave1 = 1'b0;
            WVALID_slave2 = 1'b0;
            WVALID_slave3 = 1'b0;
            WVALID_slave4 = 1'b0;
            WVALID_slave5 = 1'b0;
            WVALID_slaveDefault = WVALID_master1;
        end
        default:begin
            READY_S = 1'b0;
            WVALID_slave0 = 1'b0;
            WVALID_slave1 = 1'b0;
            WVALID_slave2 = 1'b0;
            WVALID_slave3 = 1'b0;
            WVALID_slave4 = 1'b0;
            WVALID_slave5 = 1'b0;
            WVALID_slaveDefault = 1'b0;
        end
    endcase
end

endmodule