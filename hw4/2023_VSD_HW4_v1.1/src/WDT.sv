`include "AXI_define.svh"

module WDT (
    input clk,
    input rst,
    input clk2,
    input rst2,
    input WDEN,
    input WDLIVE,
    input [`AXI_DATA_BITS - 1:0] WTOCNT,
    output logic WTO
);
    logic [2:0] cnt;
    logic wdlive_a,wdlive_b1,wdlive_b2,wdlive_b3,wdlive_b4;
    logic wden_b1,wden_b2,wden_a;
    logic [`AXI_DATA_BITS - 1:0] wtocnt_a,wtocnt_b1,wtocnt_b2,wtocnt_b3;

    logic [`AXI_DATA_BITS - 1:0] counter;
    logic wto,wto_temp;

    always_ff @( posedge clk) begin
        if(rst) begin
            cnt <= 3'b0;
            wdlive_a <= 1'b0;
            wtocnt_a <= `AXI_DATA_BITS'b0;
	    wden_a <= 1'b0;

	    wto_temp <= 1'b0;
	    WTO <= 1'b0;
        end
        else if(cnt == 3'd7) begin
            cnt <= 3'b0;
            wdlive_a <= wdlive_a ^ WDLIVE; //extend wdlive signal
            wtocnt_a <= WTOCNT;
	    wden_a <= WDEN;
	    wto_temp <= wto;
	    WTO <= wto_temp;
        end
        else begin
	    cnt <= cnt + 3'b1;
	    wto_temp <= wto;
	    WTO <= wto_temp;
	end	
    end

    always_ff @( posedge clk2) begin
        if(rst2)begin
            wden_b1 <= 1'b0;
            wden_b2 <= 1'b0;

            wdlive_b1 <= 1'b0;
            wdlive_b2 <= 1'b0;
            wdlive_b3 <= 1'b0;
            wdlive_b4 <= 1'b0;

            wtocnt_b1 <= `AXI_DATA_BITS'b0;
            wtocnt_b2 <= `AXI_DATA_BITS'b0;
            wtocnt_b3 <= `AXI_DATA_BITS'b0;
        end
        else begin
            wden_b1 <= wden_a;
            wden_b2 <= wden_b1;

            wdlive_b1 <= wdlive_a;
            wdlive_b2 <= wdlive_b1;
            wdlive_b3 <= wdlive_b2;
            wdlive_b4 <= wdlive_b2 ^ wdlive_b3;

            wtocnt_b1 <= wtocnt_a;
            wtocnt_b2 <= wtocnt_b1;
            wtocnt_b3 <= wtocnt_b2;

	    
        end
    end
    always_ff @( posedge clk2) begin
	if(rst2) begin
	   counter <= `AXI_DATA_BITS'b0;
	    wto <= 1'b0;
	end
	else begin
	    if(wden_b2)begin
                if(counter < wtocnt_b3)begin
                    if(wdlive_b4) counter <= `AXI_DATA_BITS'b0;
                    else counter <= counter + `AXI_DATA_BITS'b1;
                    wto <= 1'b0;
                end
                else begin
                    wto <= 1'b1;
                    counter <= `AXI_DATA_BITS'b0; 
                end
            end
	end
    end
endmodule
