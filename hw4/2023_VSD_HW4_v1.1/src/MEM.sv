module MEM(
    input clk,
    input rst,
	input CSR_rst,
    input MEM_rd_src,
    input MEM_MemRead,
    input MEM_MemWrite,
    input MEM_MemtoReg,
    input MEM_RegWrite,
    input [31:0] MEM_pc_to_reg,
    input [31:0] MEM_ALU_out,
    input [31:0] MEM_rs2_data,
    input [4:0] MEM_rd_addr,
    input [2:0] MEM_funct3,

    output reg WB_MemtoReg,
    output reg WB_RegWrite,
    output reg [31:0] WB_rd_data,
    output reg [31:0] WB_lw_data,
    output reg [4:0] WB_rd_addr,
    //forwarding
    output [31:0] wire_MEM_rd_data,

    //DM
    input [31:0] wire_lw_data,
    output wire_chipSelect,
    output reg [3:0] wire_writeEnable,
    output reg [31:0] wire_dataIn,

    input MEM_WB_RegWrite,

    //cache
    output logic [`CACHE_TYPE_BITS-1:0] core_type
);

    assign wire_chipSelect = MEM_MemRead | MEM_MemWrite;
    assign wire_MEM_rd_data = (MEM_rd_src == 1'b1)? MEM_pc_to_reg:MEM_ALU_out;

    always_comb begin
        wire_writeEnable = 4'b1111;
        if(MEM_MemWrite) begin
            case (MEM_funct3)
                3'b000: // SB
                    wire_writeEnable[MEM_ALU_out[1:0]] = 1'b0;
                3'b001: // SH
                    wire_writeEnable[{MEM_ALU_out[1],1'b0}+:2] = 2'b00;
                default: // SW
                    wire_writeEnable = 4'b0000;
            endcase
        end
    end

    always_comb begin
        wire_dataIn = 32'b0;
        case (MEM_funct3)
            3'b000: // SB
                wire_dataIn[{MEM_ALU_out[1:0], 3'b0}+:8] = MEM_rs2_data[7:0];
            3'b001: // SH
                wire_dataIn[{MEM_ALU_out[1], 4'b0}+:16] = MEM_rs2_data[15:0];
            default : // SW
                wire_dataIn = MEM_rs2_data;
        endcase
    end


	logic [31:0] wire_MEM_lw_data;
	always_comb begin
		case(MEM_funct3)
		    3'b010: // LW
		        wire_MEM_lw_data = wire_lw_data;
		    3'b000: begin // LB
		        // MEM_lw_data <= {{24{wire_lw_data[7]}}, wire_lw_data[7:0]};
		        // warning! blocking!
		        wire_MEM_lw_data[7:0]  = wire_lw_data[{MEM_ALU_out[1:0],3'b0}+:8];
		        wire_MEM_lw_data[31:8] = {24{wire_MEM_lw_data[7]}};
		    end
		    3'b001: begin // LH
		        // MEM_lw_data <= {{16{wire_lw_data[15]}}, wire_lw_data[15:0]};
		        // warning! blocking!
		        wire_MEM_lw_data[15:0]  = wire_lw_data[{MEM_ALU_out[1], 4'b0}+:16];
		        wire_MEM_lw_data[31:16] = {16{wire_MEM_lw_data[15]}};
		    end
		    3'b100: begin // LBU
		        // MEM_lw_data <= {24'b0, wire_lw_data[7:0]};
		        wire_MEM_lw_data[7:0]  = wire_lw_data[{MEM_ALU_out[1:0],3'b0}+:8];
		        wire_MEM_lw_data[31:8] = 24'b0;
		    end
		    3'b101: begin // LHU
		        // MEM_lw_data <= {16'b0, wire_lw_data[15:0]};
		        wire_MEM_lw_data[15:0]  = wire_lw_data[{MEM_ALU_out[1], 4'b0}+:16];
		        wire_MEM_lw_data[31:16] = 16'b0;
		    end
		    default:
		        wire_MEM_lw_data = 32'b0;
		endcase // MEM_funct3
        end

    always_ff @(posedge clk ) begin
        if(rst || CSR_rst) begin
            WB_MemtoReg    <= 1'b0;
            WB_RegWrite    <= 1'b0;
            WB_rd_data     <= 32'b0;
            WB_lw_data     <= 32'b0;
            WB_rd_addr     <= 5'b0;
        end else if(MEM_WB_RegWrite) begin
            WB_MemtoReg    <= MEM_MemtoReg;
            WB_RegWrite    <= MEM_RegWrite;

            if(MEM_rd_src)
                WB_rd_data <= MEM_pc_to_reg;
            else
                WB_rd_data <= MEM_ALU_out;

            
            WB_lw_data <= wire_MEM_lw_data;

            WB_rd_addr     <= MEM_rd_addr;
        end
    end


    always_comb begin
        case(MEM_funct3)
            3'b010: // LW
                core_type = `CACHE_WORD;
            3'b000: // LB
                core_type = `CACHE_BYTE;
            3'b001: // LH
                core_type = `CACHE_HWORD;
            3'b100: // LBU
                core_type = `CACHE_BYTE_U;
            3'b101: // LHU
                core_type = `CACHE_HWORD_U;
            default:
                core_type = `CACHE_WORD;
        endcase
    end
endmodule
