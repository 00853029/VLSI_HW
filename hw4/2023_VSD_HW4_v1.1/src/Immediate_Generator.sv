module Immediate_Generator(
    input [2:0] Imm_Type,
    input [31:0] instr,
    output reg [31:0] imm
);
localparam [2:0] I_Imm = 3'b000,
                        S_Imm = 3'b001,
                        B_Imm = 3'b010,
                        U_Imm = 3'b011,
                        J_Imm = 3'b100,
                	CSR_Imm = 3'b101;
                
always_comb begin
    case(Imm_Type)
        I_Imm: imm = {{20{instr[31]}}, instr[31:20]};
        S_Imm: imm = {{20{instr[31]}}, instr[31:25], instr[11:7]};
        B_Imm: imm = {{19{instr[31]}}, instr[31], instr[7], instr[30:25], instr[11:8], 1'b0};
        U_Imm: imm = {instr[31:12], 12'b0};
        J_Imm: imm = {{11{instr[31]}}, instr[31], instr[19:12], instr[20], instr[30:21], 1'b0};
	CSR_Imm: imm = {27'b0, instr[19:15]};
        default: imm = {{20{instr[31]}}, instr[31:20]}; //CSR_type
    endcase
end
endmodule
