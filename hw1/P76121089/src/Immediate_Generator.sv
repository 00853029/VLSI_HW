module Immediate_Generator(
    input [2:0] Imm_Type,
    input [31:0] instr,
    output reg [31:0] imm
);
localparam [2:0] I_type = 3'b000,
                S_type = 3'b001,
                B_type = 3'b010,
                U_type = 3'b011,
                J_type = 3'b100,
                CSR_type = 3'b101;
                
always_comb begin
    case(Imm_Type)
        I_type: imm = {{20{instr[31]}}, instr[31:20]};
        S_type: imm = {{20{instr[31]}}, instr[31:25], instr[11:7]};
        B_type: imm = {{19{instr[31]}}, instr[31], instr[7], instr[30:25], instr[11:8], 1'b0};
        U_type: imm = {instr[31:12], 12'b0};
        J_type: imm = {{11{instr[31]}}, instr[31], instr[19:12], instr[20], instr[30:21], 1'b0};
        default: imm = {{20{instr[31]}}, instr[31:20]}; //CSR_type
    endcase
end
endmodule