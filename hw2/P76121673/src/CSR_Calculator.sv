module CSR_Calculator(
    input clk,
    input rst,
    input Instr_flush,
    input CtrlSignalFlush,
    input EXE_MEM_RegWrite,
    input [31:0] imm_CSR,
    output [63:0] instret_CSR_out,
    output [63:0] cycle_CSR_out
);

    reg [63:0] instret;
    reg [63:0] cycle;

    assign instret_CSR_out = instret;
    assign cycle_CSR_out = cycle;

    always_ff @(posedge clk, posedge rst) begin
        if(rst)begin
            instret <= 64'b0;
            cycle <= 64'b0;
        end
        else if(EXE_MEM_RegWrite)begin
            cycle <= cycle + 64'd1;
            if (cycle > 64'd1)begin
                case({Instr_flush, CtrlSignalFlush})
                    2'b11:  begin   //branch
                        instret <= instret - 64'd1;
                    end
                    2'b01:  begin   //load use
                        instret <= instret;
                    end
                    default: instret <= instret + 64'd1;
                endcase
            end
        end
    end

endmodule