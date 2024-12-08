module ALU(
    input [31:0] rs1,
    input [31:0] rs2,
    input [4:0] ALU_Ctrl,

    output reg [31:0] ALU_out,
    output reg Zero_flag
);

    localparam [4:0] alu_ADD = 5'b00000,  // 0
    alu_SUB = 5'b00001,  // 1
    alu_SLL = 5'b00010,  // 2
    alu_SLT = 5'b00011,  // 3
    alu_SLTU = 5'b00100,  // 4
    alu_XOR = 5'b00101,  // 5
    alu_SRL = 5'b00110,  // 6
    alu_SRA = 5'b00111,  // 7
    alu_OR = 5'b01000,  // 8
    alu_AND = 5'b01001,  // 9
    alu_JALR = 5'b01010,  // a
    alu_BEQ = 5'b01011,  // b
    alu_BNE = 5'b01100,  // c
    alu_BLT = 5'b01101,  // d
    alu_BGE = 5'b01110,  // e
    alu_BLTU = 5'b01111,  // f
    alu_BGEU = 5'b10000,  // 10
    alu_IMM = 5'b10001,  // 11
    alu_MUL = 5'b10010,  //12
    alu_MULH = 5'b10011,
    alu_MULHSU = 5'b10100,
    alu_MULHU = 5'b10101;

    wire signed [31:0] signed_rs1;
    wire signed [31:0] signed_rs2;
    assign signed_rs1 = rs1;
    assign signed_rs2 = rs2;
    
    wire [31:0] sum;
    assign sum = rs1 + rs2;
    
    wire [63:0] unsigned_product;
    wire signed [63:0] signed_product_ss;
    wire signed [63:0] signed_product_su;
    assign unsigned_product = {1'b0,rs1} * {1'b0,rs2};
    assign signed_product_ss = signed_rs1 * signed_rs2;
    assign signed_product_su = signed_rs1 * $signed({1'b0,rs2});

    always_comb begin
        case(ALU_Ctrl)
            alu_ADD: ALU_out = sum;
            alu_SUB: ALU_out = rs1 - rs2;
            alu_SLL: ALU_out = rs1 << rs2[4:0];
            alu_SLT: ALU_out = (signed_rs1 < signed_rs2) ? 32'b1 : 32'b0;
            alu_SLTU: ALU_out = rs1 < rs2 ? 32'b1 : 32'b0;
            alu_XOR: ALU_out = rs1 ^ rs2;
            alu_SRL: ALU_out = rs1 >> rs2[4:0];
            alu_SRA:  ALU_out = signed_rs1 >>> rs2[4:0];
            alu_OR: ALU_out = rs1 | rs2;
            alu_AND: ALU_out = rs1 & rs2;
            alu_JALR: ALU_out = {sum[31:1], 1'b0};
            alu_IMM: ALU_out = rs2;
            alu_MUL: ALU_out = unsigned_product[31:0];
            alu_MULH: ALU_out = signed_product_ss[63:32];
            alu_MULHSU: ALU_out = signed_product_su[63:32];
            alu_MULHU: ALU_out = unsigned_product[63:32];
            default: ALU_out = 32'b0;
        endcase
    end

    always_comb begin
        case(ALU_Ctrl)
            alu_BEQ: Zero_flag = (rs1 == rs2) ? 1'b1 : 1'b0;
            alu_BNE: Zero_flag = (rs1 != rs2) ? 1'b1 : 1'b0;
            alu_BLT: Zero_flag = (signed_rs1 < signed_rs2) ? 1'b1 : 1'b0;
            alu_BGE: Zero_flag = (signed_rs1 >= signed_rs2) ? 1'b1 : 1'b0;
            alu_BLTU: Zero_flag = (rs1 < rs2) ? 1'b1 : 1'b0;
            default: Zero_flag = (rs1 >= rs2) ? 1'b1 : 1'b0;
        endcase
    end
endmodule