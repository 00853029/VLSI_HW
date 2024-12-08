`include "AXI_define.svh"
`include "AXI_interface_slave.sv"
`include "WDT.sv"

module WDT_wrapper (
    input clk,
    input clk2,
    input rst,
    input rst2,

    AXI_interface_slave.slave slave,
    output logic wto
);
    typedef enum logic [1:0] { ADDRESS , READ , WRITE , RESP} state_WDT_type;

    state_WDT_type state_WDT,state_next;

    logic AW_hs_done;
    logic W_hs_done;
    logic B_hs_done;
    logic AR_hs_done;
    logic R_hs_done;

    logic R_last_done;
    logic W_last_done;
    
    logic [`AXI_IDS_BITS-1:0] reg_ARID, reg_AWID;
    logic [`AXI_LEN_BITS-1:0] reg_ARLEN, reg_AWLEN;

    logic [`AXI_LEN_BITS-1:0] cnt;

    assign AW_hs_done = slave.AWVALID & slave.AWREADY;
    assign W_hs_done = slave.WVALID & slave.WREADY;
    assign B_hs_done = slave.BVALID & slave.BREADY;
    assign AR_hs_done = slave.ARVALID & slave.ARREADY;
    assign R_hs_done = slave.RVALID & slave.RREADY;

    assign R_last_done = slave.RLAST & R_hs_done;
    assign W_last_done = slave.WLAST & W_hs_done;

    assign slave.RRESP = `AXI_RESP_OKAY;
    assign slave.BRESP = `AXI_RESP_OKAY;

    assign slave.RID = reg_ARID;
    assign slave.BID = reg_AWID;

    assign slave.RLAST = (reg_ARLEN == cnt);

    always_ff @( posedge clk) begin : blockName
        if(rst) state_WDT <= ADDRESS;
        else state_WDT <= state_next;
    end

    always_comb begin
        case (state_WDT)
            ADDRESS:begin
                if(AW_hs_done && W_hs_done) state_next = RESP;
                else if(AW_hs_done) state_next = WRITE;
                else if(AR_hs_done) state_next = READ;
                else state_next = ADDRESS;
            end 
            READ: begin
                if(R_last_done & AW_hs_done) state_next = WRITE;
                else if(R_last_done & AR_hs_done) state_next = READ;
                else if(R_last_done) state_next = ADDRESS;
                else state_next = READ;
            end
            WRITE: begin
                if(W_last_done) state_next = RESP;
                else state_next = WRITE;
            end
            default: begin
                if(B_hs_done & AW_hs_done) state_next = WRITE;
                else if(B_hs_done & AR_hs_done) state_next = READ;
                else if(B_hs_done) state_next = ADDRESS;
                else state_next = RESP;
            end
        endcase
    end

    always_comb begin
        slave.AWREADY = 1'b0;
        slave.ARREADY = 1'b0;
        slave.WREADY = 1'b0;
        slave.RVALID = 1'b0;
        slave.BVALID = 1'b0;
        case (state_WDT)
            ADDRESS:begin
                slave.AWREADY = 1'b1;
                slave.ARREADY = ~slave.AWVALID;
            end
            READ:begin
                slave.AWREADY = R_hs_done;
                slave.RVALID = 1'b1;
            end
            WRITE:begin
                slave.WREADY = 1'b1; 
            end
            default:begin
                slave.AWREADY = B_hs_done;
                slave.BVALID = 1'b1;
            end 
        endcase
    end

    
    always_ff @(posedge clk ) begin
        if(rst) begin
            reg_ARID <= `AXI_IDS_BITS'b0;
            reg_AWID <= `AXI_IDS_BITS'b0;
        end else begin
            reg_ARID <= (AR_hs_done)? slave.ARID:reg_ARID;
            reg_AWID <= (AW_hs_done)? slave.AWID:reg_AWID;
        end
    end

    always_ff @(posedge clk) begin
        if (rst) begin
            {reg_ARLEN,reg_AWLEN} <= {2{`AXI_LEN_BITS'b0}};
        end
        else begin
            reg_ARLEN <= (AR_hs_done)?slave.ARLEN:reg_ARLEN;
            reg_AWLEN <= (AW_hs_done)?slave.AWLEN:reg_AWLEN;
        end
    end

    always_ff @(posedge clk) begin
        if (rst) begin
            cnt <= `AXI_LEN_BITS'b0;
        end
        else begin
            case (state_WDT)
                READ:  cnt <= (R_last_done)?`AXI_LEN_BITS'b0:((R_hs_done)? cnt+`AXI_LEN_BITS'b1:cnt);
                WRITE: cnt <= (W_last_done)?`AXI_LEN_BITS'b0:((W_hs_done)? cnt+`AXI_LEN_BITS'b1:cnt);
            endcase
        end
    end

    logic [31:0] reg_ADDR;
    always_ff @(posedge clk) begin
        if(rst) begin
            reg_ADDR <= 32'b0;
        end else begin
            reg_ADDR <= (AW_hs_done)? slave.AWADDR: reg_ADDR;
        end
    end

    //WDT
    logic WDEN,WDLIVE;
    logic [31:0] WDOCNT;
    logic wto_temp;
    always_ff @(posedge clk) begin
        if(rst || wto) begin
            WDEN <= 1'b0;
            WDLIVE <= 1'b0;
            WDOCNT <= 32'b0;
        end
        else if(slave.WVALID) begin
            if(reg_ADDR[9:0] == 10'h100)
                WDEN <= slave.WDATA[0];
            else if(reg_ADDR[9:0] == 10'h200)
                WDLIVE <= slave.WDATA[0];
            else if(reg_ADDR[9:0] == 10'h300)
                WDOCNT <= slave.WDATA;
        end
    end

    /*always_ff@(posedge clk) begin
        if(rst)begin
            wto_temp <= 1'b0;
		    wto <= 1'b0;
        end
        else begin
            wto_temp <= WTO;
		    wto <= wto_temp;
        end 
    end */

    WDT WDT(
        .clk(clk),
        .rst(rst),
        .clk2(clk2),
        .rst2(rst2),
        .WDEN(WDEN),
        .WDLIVE(WDLIVE),
        .WTOCNT(WDOCNT),
        .WTO(wto)
    );
    
endmodule
