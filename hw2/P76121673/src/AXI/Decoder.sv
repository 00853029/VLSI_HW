`include "../../include/AXI_define.svh"
module Decoder(
    input VALID,
    input [`AXI_ADDR_BITS-1:0] ADDR,
    
    input READY_slave0,
    input READY_slave1,
    input READY_slaveDefault,

    output logic VALID_slave0,
    output logic VALID_slave1,
    output logic VALID_slaveDefault,

    output logic READY_S
);

always_comb begin
    case(ADDR[31:16])
        16'h0000:begin
            VALID_slave0 = VALID;
            VALID_slave1 = 1'b0;
            VALID_slaveDefault = 1'b0;
            READY_S = (VALID)? READY_slave0 : 1'b1;
        end
        16'h0001:begin
            VALID_slave0 = 1'b0;
            VALID_slave1 = VALID;
            VALID_slaveDefault = 1'b0;
            READY_S = (VALID)? READY_slave1 : 1'b1;
        end
        default:begin
            VALID_slave0 = 1'b0;
            VALID_slave1 = 1'b0;
            VALID_slaveDefault = VALID;
            READY_S = (VALID)? READY_slaveDefault : 1'b1;
        end
    endcase
end

endmodule