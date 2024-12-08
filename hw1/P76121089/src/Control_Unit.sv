module Control_Unit(
    input [6:0] opcode,
    
    output reg [2:0] Imm_Type,
    output reg [2:0] ALUOP,
    output reg PCtoRegSrc,
    output reg ALUSrc,
    output reg RDSrc,
    output reg MemtoReg,
    output reg MemWrite,
    output reg MemRead,
    output reg RegWrite,
    output reg [1:0] Branch,
    output reg ALUOutSelect
);
    localparam [2:0] I_Imm = 3'b000,
                        S_Imm = 3'b001,
                        B_Imm = 3'b010,
                        U_Imm = 3'b011,
                        J_Imm = 3'b100;

    localparam [2:0] R_type     = 3'b000,
                        I_type     = 3'b001,
                        ADD_type   = 3'b010,
                        JALR_type  = 3'b011,
                        B_type     = 3'b100,
                        LUI_type   = 3'b101;

    localparam [1:0] None_branch    = 2'b00,
                        JALR_branch    = 2'b01,
                        B_branch       = 2'b10,
                        J_branch       = 2'b11;

always_comb begin
    case(opcode)
        7'b0110011: begin    //R-type
            Imm_Type    = I_Imm; //x
            ALUOP       = R_type;
            PCtoRegSrc  = 1'b0; //x
            ALUSrc      = 1'b1; //reg
            RDSrc       = 1'b0; //ALU
            MemRead     = 1'b0;
            MemWrite    = 1'b0;
            MemtoReg    = 1'b0;
            RegWrite    = 1'b1;
            Branch      = None_branch;
            ALUOutSelect = 1'b0;
        end
        7'b0000011: begin   //load
            Imm_Type    = I_Imm;
            ALUOP       = ADD_type;
            PCtoRegSrc  = 1'b0;
            ALUSrc      = 1'b0;
            RDSrc       = 1'b0;
            MemRead     = 1'b1;
            MemWrite    = 1'b0;
            MemtoReg    = 1'b1;
            RegWrite    = 1'b1;
            Branch      = None_branch;
            ALUOutSelect = 1'b0;
        end
        7'b0010011: begin   //I-type
            Imm_Type    = I_Imm;
            ALUOP       = I_type;
            PCtoRegSrc  = 1'b0; //x
            ALUSrc      = 1'b0;
            RDSrc       = 1'b0;
            MemRead     = 1'b0;
            MemWrite    = 1'b0;
            MemtoReg    = 1'b0;
            RegWrite    = 1'b1;
            Branch      = None_branch;
            ALUOutSelect = 1'b0;
        end
        7'b1100111: begin   //JALR
            Imm_Type    = I_Imm;
            ALUOP       = JALR_type;
            PCtoRegSrc  = 1'b0; //PC+4;
            ALUSrc      = 1'b0; //imm
            RDSrc       = 1'b1; //PC
            MemRead     = 1'b0;
            MemWrite    = 1'b0;
            MemtoReg    = 1'b0;
            RegWrite    = 1'b1;
            Branch      = JALR_branch;
            ALUOutSelect = 1'b0;
        end
        7'b0100011: begin   //S-type
            Imm_Type    = S_Imm;
            ALUOP       = ADD_type;
            PCtoRegSrc  = 1'b0; //x
            ALUSrc      = 1'b0; //imm
            RDSrc       = 1'b0; //x
            MemRead     = 1'b0;
            MemWrite    = 1'b1;
            MemtoReg    = 1'b0;
            RegWrite    = 1'b0;
            Branch      = None_branch;
            ALUOutSelect = 1'b0;
        end
        7'b1100011: begin   //B-type
            Imm_Type    = B_Imm;
            ALUOP       = B_type;
            PCtoRegSrc  = 1'b0; //x
            ALUSrc      = 1'b1;
            RDSrc       = 1'b0; //x
            MemRead     = 1'b0;
            MemWrite    = 1'b0;
            MemtoReg    = 1'b0;
            RegWrite    = 1'b0;
            Branch      = B_branch;
            ALUOutSelect = 1'b0;
        end
        7'b0010111: begin  // U-type AUIPC
            Imm_Type   = U_Imm;
            ALUOP      = ADD_type;  // x
            PCtoRegSrc = 1'b1;  // PC + imm
            ALUSrc     = 1'b0;  // x
            RDSrc      = 1'b1;  // PC
            MemRead    = 1'b0;
            MemWrite   = 1'b0;
            MemtoReg   = 1'b0;
            RegWrite   = 1'b1;
            Branch     = None_branch;
            ALUOutSelect = 1'b0;
        end
        7'b0110111: begin  // U-type LUI
            Imm_Type   = U_Imm;
            ALUOP      = LUI_type;
            PCtoRegSrc = 1'b0;  // x
            ALUSrc     = 1'b0;  // imm
            RDSrc      = 1'b0;  // ALU
            MemRead    = 1'b0;
            MemWrite   = 1'b0;
            MemtoReg   = 1'b0;
            RegWrite   = 1'b1;
            Branch     = None_branch;
            ALUOutSelect = 1'b0;
        end
        7'b1101111: begin  // J-type
            Imm_Type   = J_Imm;
            ALUOP      = ADD_type;  // x
            PCtoRegSrc = 1'b0;  // PC + 4
            ALUSrc     = 1'b0;  // x
            RDSrc      = 1'b1;  // PC
            MemRead    = 1'b0;
            MemWrite   = 1'b0;
            MemtoReg   = 1'b0;
            RegWrite   = 1'b1;
            Branch     = J_branch;
            ALUOutSelect = 1'b0;
        end
        7'b1110011: begin   //CSR
            Imm_Type   = I_Imm;
            ALUOP      = ADD_type;  // x
            PCtoRegSrc = 1'b0;  // x
            ALUSrc     = 1'b0;  // x
            RDSrc      = 1'b0;  // ALU
            MemRead    = 1'b0;
            MemWrite   = 1'b0;
            MemtoReg   = 1'b0;
            RegWrite   = 1'b1;
            Branch     = None_branch;
            ALUOutSelect = 1'b1; //CSR
        end
        default: begin
            Imm_Type    = I_Imm;
            ALUOP      = ADD_type;  // x
            PCtoRegSrc = 1'b0;  // PC + 4
            ALUSrc     = 1'b0;  // x
            RDSrc      = 1'b0;  // PC
            MemRead    = 1'b0;
            MemWrite   = 1'b0;
            MemtoReg   = 1'b0;
            RegWrite   = 1'b0;
            Branch     = None_branch;
            ALUOutSelect = 1'b0;
        end
    endcase
end

endmodule