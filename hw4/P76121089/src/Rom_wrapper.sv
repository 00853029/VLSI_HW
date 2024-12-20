`include "AXI_define.svh"
`include "AXI_interface_slave.sv"

module Rom_wrapper (
    input clk,
    input rst,

    input [`AXI_DATA_BITS - 1:0] DO_ROM,
    output logic OE_ROM,
    output logic CS_ROM,
    output logic [11:0] A_ROM,

    AXI_interface_slave.slave slave
);
    typedef enum logic {ADDRESS , READ} state_rom_type;

    state_rom_type state_rom , state_next;

    logic AR_hs_done;
    logic R_hs_done;

    logic [`AXI_ADDR_BITS - 1:0] ARADDR_r;
    logic [`AXI_IDS_BITS - 1:0] ID_r;
    logic [`AXI_LEN_BITS - 1:0] LEN_r;
    logic [`AXI_LEN_BITS - 1:0] len_cnt;


    assign AR_hs_done = slave.ARVALID & slave.ARREADY;
    assign R_hs_done = slave.RVALID & slave.RREADY;
    assign slave.R_hs_done = R_hs_done;

    assign slave.RDATA = DO_ROM;
    assign slave.RLAST = (LEN_r == (len_cnt));
    assign slave.RRESP = `AXI_RESP_OKAY;
    assign slave.RID = ID_r;

    always_ff @( posedge clk) begin
        if(rst) state_rom <= ADDRESS;
        else state_rom <= state_next;
    end

    always_comb begin
        case (state_rom)
            ADDRESS: state_next = (AR_hs_done)? READ : ADDRESS;
            READ: state_next = (R_hs_done & slave.RLAST)? ADDRESS : READ;
            default: state_next = ADDRESS;
        endcase
    end

    always_comb begin
        slave.ARREADY = 1'b0;
        slave.RVALID = 1'b0;
        slave.AWREADY = 1'b0;
        slave.WREADY = 1'b0;
        slave.BVALID = 1'b0;

        OE_ROM = 1'b0;
        CS_ROM = 1'b0;
        A_ROM = ARADDR_r[15:2];
        case (state_rom)
            ADDRESS: begin
                slave.ARREADY = ~slave.AWVALID;
                slave.RVALID = 1'b0;
                OE_ROM = (slave.ARVALID)? 1'b1:1'b0;
                CS_ROM = (slave.ARVALID)? 1'b1:1'b0;
                A_ROM = slave.ARADDR[15:2];
            end 
            READ: begin
                slave.ARREADY = slave.RLAST & R_hs_done;
                slave.RVALID = 1'b1;
                OE_ROM = 1'b1;
                CS_ROM = 1'b1;
                A_ROM = (R_hs_done)? (ARADDR_r[15:2] + len_cnt + 1) : (ARADDR_r[15:2] + len_cnt);
            end
            default: begin
                slave.ARREADY = 1'b0;
                slave.RVALID = 1'b0;
                slave.AWREADY = 1'b0;
                slave.WREADY = 1'b0;
                slave.BVALID = 1'b0;

                OE_ROM = 1'b0;
                CS_ROM = 1'b0;
                A_ROM = ARADDR_r[15:2];
            end
        endcase
    end

    always_ff @( posedge clk) begin
        if(rst)begin
            ARADDR_r <= `AXI_ADDR_BITS'b0;
            ID_r <= `AXI_IDS_BITS'b0;
            LEN_r <= `AXI_LEN_BITS'b0;

            len_cnt <= `AXI_LEN_BITS'b0;
        end
        else begin
            ARADDR_r <= (AR_hs_done)? slave.ARADDR : ARADDR_r;
            ID_r <= (AR_hs_done)? slave.ARID : ID_r;
            LEN_r <= (AR_hs_done)? slave.ARLEN : LEN_r;

            len_cnt <= ((R_hs_done && slave.RLAST) || state_rom != READ)? `AXI_LEN_BITS'b0 : (R_hs_done)? len_cnt + `AXI_LEN_BITS'b1 : len_cnt;
        end
    end
endmodule
