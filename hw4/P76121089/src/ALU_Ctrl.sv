module ALU_Ctrl(
    input [2:0] ALUOP,
    input [2:0] funct3,
    input [6:0] funct7,

    output reg [4:0] ALU_Ctrl
);

    localparam [2:0] R_type = 3'b000,  // 0
    I_type = 3'b001,  // 1
    ADD_type = 3'b010,  // 2
    JALR_type = 3'b011,  // 3
    B_type = 3'b100,  // 4
    LUI_type = 3'b101;  // 5

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

    always_comb begin
        case(ALUOP)
            R_type: begin
                case(funct3)
                    3'b000: begin
                        if(funct7 == 7'b0) ALU_Ctrl = alu_ADD;
                        else if(funct7==7'b0000001) ALU_Ctrl = alu_MUL;
                        else ALU_Ctrl = alu_SUB;
                    end
                    3'b001: begin
                        if(funct7 == 7'b0) ALU_Ctrl = alu_SLL;
                        else ALU_Ctrl = alu_MULH;
                    end
                    3'b010: begin
                        if(funct7 == 7'b0) ALU_Ctrl = alu_SLT;
                        else ALU_Ctrl = alu_MULHSU;
                    end
                    3'b011: begin
                        if(funct7 == 7'b0) ALU_Ctrl = alu_SLTU;
                        else ALU_Ctrl = alu_MULHU;
                    end
                    3'b100: ALU_Ctrl = alu_XOR;
                    3'b101: begin
                        if(funct7 == 7'b0) ALU_Ctrl = alu_SRL;
                        else ALU_Ctrl = alu_SRA;
                    end
                    3'b110: ALU_Ctrl = alu_OR;
                    default: ALU_Ctrl = alu_AND;
                endcase
            end
            I_type: begin
                case(funct3)
                    3'b000: ALU_Ctrl = alu_ADD;
                    3'b001: ALU_Ctrl = alu_SLL;
                    3'b010: ALU_Ctrl = alu_SLT;
                    3'b011: ALU_Ctrl = alu_SLTU;
                    3'b100: ALU_Ctrl = alu_XOR;
                    3'b101: begin
                        if(funct7 == 7'b0) ALU_Ctrl = alu_SRL;
                        else ALU_Ctrl = alu_SRA;
                    end
                    3'b110: ALU_Ctrl = alu_OR;
                    default: ALU_Ctrl = alu_AND;
                endcase
            end
            ADD_type: begin
                ALU_Ctrl = alu_ADD;
            end
            JALR_type: begin
                ALU_Ctrl = alu_JALR;
            end
            B_type: begin
                case(funct3)
                    3'b000: ALU_Ctrl = alu_BEQ;
                    3'b001: ALU_Ctrl = alu_BNE;
                    3'b100: ALU_Ctrl = alu_BLT;
                    3'b101: ALU_Ctrl = alu_BGE;
                    3'b110: ALU_Ctrl = alu_BLTU;
                    default: ALU_Ctrl = alu_BGEU;
                endcase
            end
            default: begin
                ALU_Ctrl = alu_IMM;
            end
        endcase
    end

endmodule