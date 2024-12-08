`include "../../include/AXI_define.svh"
module Decoder(
    input VALID,
    input [`AXI_ADDR_BITS-1:0] ADDR,
    
    input READY_slave0,
    input READY_slave1,
    input READY_slave2,
    input READY_slave3,
    input READY_slave4,
    input READY_slave5,
    input READY_slaveDefault,

    output logic VALID_slave0,
    output logic VALID_slave1,
    output logic VALID_slave2,
    output logic VALID_slave3,
    output logic VALID_slave4,
    output logic VALID_slave5,
    output logic VALID_slaveDefault,

    //which slave send full to master

    output logic READY_S,

    //-------------------------------------------------
    input FULL_slave0,
    input FULL_slave1,
    input FULL_slave2,
    input FULL_slave3,
    input FULL_slave4,
    input FULL_slave5,

    output logic full_slave
);

// always_comb begin
//     case(ADDR[31:16])
//         16'h0000: begin  //ROM
//             VALID_slave0 = VALID;
//             VALID_slave1 = 1'b0;
//             VALID_slave2 = 1'b0;
//             VALID_slave3 = 1'b0;
//             VALID_slave4 = 1'b0;
//             VALID_slave5 = 1'b0;
//             VALID_slaveDefault = 1'b0;
//             READY_S = (VALID)? READY_slave0 : 1'b1;
//         end
//         16'h0001: begin  //IM
//             VALID_slave0 = 1'b0;
//             VALID_slave1 = VALID;
//             VALID_slave2 = 1'b0;
//             VALID_slave3 = 1'b0;
//             VALID_slave4 = 1'b0;
//             VALID_slave5 = 1'b0;
//             VALID_slaveDefault = 1'b0;
//             READY_S = (VALID)? READY_slave1 : 1'b1;
//         end
//         16'h0002: begin  //DM
//             VALID_slave0 = 1'b0;
//             VALID_slave1 = 1'b0;
//             VALID_slave2 = VALID;
//             VALID_slave3 = 1'b0;
//             VALID_slave4 = 1'b0;
//             VALID_slave5 = 1'b0;
//             VALID_slaveDefault = 1'b0;
//             READY_S = (VALID)? READY_slave2 : 1'b1;
//         end
//         16'h1000: begin  //sensor control
//             VALID_slave0 = 1'b0;
//             VALID_slave1 = 1'b0;
//             VALID_slave2 = 1'b0;
//             VALID_slave3 = VALID;
//             VALID_slave4 = 1'b0;
//             VALID_slave5 = 1'b0;
//             VALID_slaveDefault = 1'b0;
//             READY_S = (VALID)? READY_slave3 : 1'b1;
//         end
//         16'h1001: begin  //WDT
//             VALID_slave0 = 1'b0;
//             VALID_slave1 = 1'b0;
//             VALID_slave2 = 1'b0;
//             VALID_slave3 = 1'b0;
//             VALID_slave4 = VALID;
//             VALID_slave5 = 1'b0;
//             VALID_slaveDefault = 1'b0;
//             READY_S = (VALID)? READY_slave4 : 1'b1;
//         end
//         16'h2000: begin  //DRAM
//             VALID_slave0 = 1'b0;
//             VALID_slave1 = 1'b0;
//             VALID_slave2 = 1'b0;
//             VALID_slave3 = 1'b0;
//             VALID_slave4 = 1'b0;
//             VALID_slave5 = VALID;
//             VALID_slaveDefault = 1'b0;
//             READY_S = (VALID)? READY_slave5 : 1'b1;
//         end
//         default:begin
//             VALID_slave0 = 1'b0;
//             VALID_slave1 = 1'b0;
//             VALID_slave2 = 1'b0;
//             VALID_slave3 = 1'b0;
//             VALID_slave4 = 1'b0;
//             VALID_slave5 = 1'b0;
//             VALID_slaveDefault = VALID;
//             READY_S = (VALID)? READY_slaveDefault : 1'b1;
//         end
//     endcase
// end

always_comb begin
    if(ADDR[31:16] == 16'h0002) begin  //DM
        VALID_slave0 = 1'b0;
        VALID_slave1 = 1'b0;
        VALID_slave2 = VALID;
        VALID_slave3 = 1'b0;
        VALID_slave4 = 1'b0;
        VALID_slave5 = 1'b0;
        VALID_slaveDefault = 1'b0;
        READY_S = READY_slave2;

        full_slave = FULL_slave2;
    end
    else if(ADDR[31:16] == 16'h0001) begin  //IM
        VALID_slave0 = 1'b0;
        VALID_slave1 = VALID;
        VALID_slave2 = 1'b0;
        VALID_slave3 = 1'b0;
        VALID_slave4 = 1'b0;
        VALID_slave5 = 1'b0;
        VALID_slaveDefault = 1'b0;
        READY_S = READY_slave1;

        full_slave = FULL_slave1;
    end
    else if(ADDR[31:16] == 16'h1001) begin//WDT
        VALID_slave0 = 1'b0;
        VALID_slave1 = 1'b0;
        VALID_slave2 = 1'b0;
        VALID_slave3 = 1'b0;
        VALID_slave4 = VALID;
        VALID_slave5 = 1'b0;
        VALID_slaveDefault = 1'b0;
        READY_S = READY_slave4;

        full_slave = FULL_slave4;
    end    
    else if(ADDR[31:16] == 16'h1000) begin  //sensor control
        VALID_slave0 = 1'b0;
        VALID_slave1 = 1'b0;
        VALID_slave2 = 1'b0;
        VALID_slave3 = VALID;
        VALID_slave4 = 1'b0;
        VALID_slave5 = 1'b0;
        VALID_slaveDefault = 1'b0;
        READY_S = READY_slave3;

        full_slave = FULL_slave3;
    end
    else if(ADDR[31:16] == 16'h0000) begin	//ROM
        VALID_slave0 = VALID;
        VALID_slave1 = 1'b0;
        VALID_slave2 = 1'b0;
        VALID_slave3 = 1'b0;
        VALID_slave4 = 1'b0;
        VALID_slave5 = 1'b0;
        VALID_slaveDefault = 1'b0;
        READY_S = READY_slave0;

        full_slave = FULL_slave0;
    end
    else if(ADDR[31:16] >= 16'h2000 && ADDR[31:16] <= 16'h201F) begin   //DRAM
        VALID_slave0 = 1'b0;
        VALID_slave1 = 1'b0;
        VALID_slave2 = 1'b0;
        VALID_slave3 = 1'b0;
        VALID_slave4 = 1'b0;
        VALID_slave5 = VALID;
        VALID_slaveDefault = 1'b0;
        READY_S = READY_slave5;

        full_slave = FULL_slave5;
    end
    else begin
        VALID_slave0 = 1'b0;
        VALID_slave1 = 1'b0;
        VALID_slave2 = 1'b0;
        VALID_slave3 = 1'b0;
        VALID_slave4 = 1'b0;
        VALID_slave5 = 1'b0;
        VALID_slaveDefault = VALID;
        READY_S = READY_slaveDefault;

        full_slave = 1'b0;
    end
end
// ADDR[31:16] >= 16'h2000 && ADDR[31:16] <= 16'h201F
endmodule
