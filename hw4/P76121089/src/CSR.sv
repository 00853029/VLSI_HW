module CSR(
    input clk,
    input rst,
    input Instr_flush,
    input CtrlSignalFlush,
    input EXE_MEM_RegWrite,
    input [31:0] imm_CSR,
    //output [63:0] instret_CSR_out,
    //output [63:0] cycle_CSR_out,

    //hw3
    input [31:0] EXE_pc,
    input [2:0] EXE_funct3,
    input [6:0] EXE_funct7,
    input interrupt,
    input timeout,
    input CSR_write,
    input [31:0] rs1,
    input [4:0]  rs1_addr,
    input [11:0] CSR_addr,

    output logic [31:0] CSR_rd,
    output logic [31:0] CSR_return_pc,
    output logic [31:0] CSR_ISR_pc,
    output logic CSR_stall,
    output logic CSR_control,
    output logic CSR_ret,
	output logic CSR_rst

);

    logic [31:0] instret,instreth;
    logic [31:0] cycle,cycleh;

    //assign instret_CSR_out = instret;
    //assign cycle_CSR_out = cycle;

    always_ff @(posedge clk) begin
        if(rst)begin
            {instreth,instret} <= 64'b0;
            {cycleh,cycle} <= 64'b0;
        end
        else if(EXE_MEM_RegWrite)begin
            {cycleh,cycle} <= {cycleh,cycle} + 64'd1;
            if (cycle > 32'd1)begin
                case({Instr_flush, CtrlSignalFlush})
                    2'b11:  begin   //branch
                        {instreth,instret} <= {instreth,instret} - 64'd1;
                    end
                    2'b01:  begin   //load use
                        {instreth,instret} <= {instreth,instret};
                    end
                    default: {instreth,instret} <= {instreth,instret} + 64'd1;
                endcase
            end
        end
    end

    //----------------CSR------------------//

    logic [31:0] mstatus; 
    logic [31:0] mie;      
    logic [31:0] mtvec;
    logic [31:0] mepc; 
    logic [31:0] mip;      
    logic [31:0] csr_wdata;

    assign mtvec = 32'h10000;   // mtvec is hardwire to 0x1_0000
    assign CSR_return_pc = mepc;
    assign CSR_ISR_pc = mtvec;   

    always_comb begin                  
        if (EXE_funct3[2] == 1'b1) begin
            csr_wdata = imm_CSR;
        end else begin
            csr_wdata = rs1;
        end
    end
    
    //index of CSRs register
    parameter [4:0] MPP  = 5'd11,
                    MPIE = 5'd7,
                    MIE  = 5'd3,
                    MEIP = 5'd11,
                    MEIE = 5'd11,
                    MTIE = 5'd7,
                    MTIP = 5'd7;

    parameter [1:0] CSRRW = 2'b01,
                    CSRRS = 2'b10,
                    CSRRC = 2'b11;

    //***naughty***/ reset
    always_ff @(posedge clk)begin  //CSRs register
        if(rst)begin
            mstatus <= 32'b0;
            mie     <= 32'b0;
            mepc    <= 32'b0;
            mip     <= 32'b0;
        end
        else if((EXE_funct3==3'b0) & CSR_write)begin    //MRET or WFI
            if(EXE_funct7 == 7'b0011000) begin    //MRET -> interrupt return
			mstatus[MPP+:2] <= 2'b11;
			mstatus[MPIE] <= 1'b1;
			mstatus[MIE] <= mstatus[MPIE];
            end
            else begin  //WFI   -> set mip to 1 if interrupt enable
                mepc    <= EXE_pc + 32'd4;
                mip[MEIP] <= mie[MEIE]? 1'b1:mip[MEIP];     //external interrupt
                mip[MTIP] <= mie[MTIE]? 1'b1:mip[MTIP];     //timeout interrupt
            end
        end
        else if(interrupt & EXE_MEM_RegWrite)begin  //external interrupt is taken
            mstatus[MPP+:2] <= mip[MEIP]? 2'b11:mstatus[MPP+:2];
            mstatus[MPIE]   <= mip[MEIP]? mstatus[MIE]:mstatus[MPIE];
            mstatus[MIE]    <= mip[MEIP]? 1'b0:mstatus[MIE];

            mip[MEIP] <= 1'b0;  
        end
        else if(timeout & EXE_MEM_RegWrite) begin //timeout interrupt is taken
            mstatus[MPP+:2] <= mip[MTIP]? 2'b11:mstatus[MPP+:2];
            mstatus[MPIE]   <= mip[MTIP]? mstatus[MIE]:mstatus[MPIE];
            mstatus[MIE]    <= mip[MTIP]? 1'b0:mstatus[MIE];

            mip[MTIP] <= 1'b0;  
        end
        else begin
		if(EXE_MEM_RegWrite & CSR_write) begin 
			case(EXE_funct3[1:0])
				2'b01:begin
					case(CSR_addr)
						12'h300:begin
						    mstatus[MPP+:2] <= csr_wdata[MPP+:2];
						    mstatus[MPIE]   <= csr_wdata[MPIE];
						    mstatus[MIE]    <= csr_wdata[MIE];	
						end
						12'h304:begin
							mie[MEIE] <= csr_wdata[MEIE];
						end
						12'h341:begin
							mepc[31:2] <= csr_wdata[31:2];
						end
						default: begin
							mstatus <= mstatus;
							mie <= mie;
							mepc <= mepc;
						end
					endcase
				end
				2'b10:begin
					case(CSR_addr)
						12'h300:begin
							if(rs1_addr != 5'b0) begin// need to check
								mstatus[MPP+:2] <= mstatus[MPP+:2] | csr_wdata[MPP+:2];
								mstatus[MPIE]   <= mstatus[MPIE]   | csr_wdata[MPIE];
								mstatus[MIE]    <= mstatus[MIE]    | csr_wdata[MIE];
							end
							else	mstatus <= mstatus;
						end
						12'h304:begin
							if(rs1_addr != 5'b0) // need to check
				                		mie[MEIE] <= mie[MEIE] | csr_wdata[MEIE];
							else	mie <= mie;
						end
						12'h341:begin
							if(rs1_addr != 5'b0) // need to check
				                		mepc[31:2] <= mepc[31:2] | csr_wdata[31:2];
							else	mepc <= mepc;
						end
						default: begin
							mstatus <= mstatus;
							mie <= mie;
							mepc <= mepc;
						end
					endcase
				end
				2'b11:begin
					case(CSR_addr)
						12'h300:begin
							if(rs1_addr != 5'b0) begin// need to check
								mstatus[MPP+:2] <= mstatus[MPP+:2] & ~csr_wdata[MPP+:2];
								mstatus[MPIE]   <= mstatus[MPIE]   & ~csr_wdata[MPIE];
								mstatus[MIE]    <= mstatus[MIE]    & ~csr_wdata[MIE];
							end
							else	mstatus <= mstatus;
						end
						12'h304:begin
							if(rs1_addr != 5'b0) // need to check
				                		mie[MEIE] <= mie[MEIE] & ~csr_wdata[MEIE];
							else	mie <= mie;
						end
						12'h341:begin
							if(rs1_addr != 5'b0) // need to check
				                		mepc[31:2] <= mepc[31:2] & ~csr_wdata[31:2];
							else	mepc <= mepc;
						end
						default: begin
							mstatus <= mstatus;
							mie <= mie;
							mepc <= mepc;
						end
					endcase
				end
				default: begin
					mstatus <= mstatus;
					mie <= mie;
					mepc <= mepc;
				end
			endcase																							
		end
		else begin
			mstatus <= mstatus;
			mie <= mie;
			mepc <= mepc;
		end	
        end
    end
    always_comb begin
        case(CSR_addr)
            12'h300: CSR_rd = mstatus;
            12'h304: CSR_rd = mie;
            12'h305: CSR_rd = mtvec;
            12'h341: CSR_rd = mepc;
            12'h344: CSR_rd = mip;
		12'hb00: CSR_rd = cycle;
		12'hb02: CSR_rd = instret;
		12'hb80: CSR_rd = cycleh;
		12'hb82: CSR_rd = instreth;
            default: CSR_rd = 32'b0;
        endcase
    end

    //-------------------------------------------------//
    //   if mstatus.MIE & (interrupt | timeout) => pc go to csrISR_pc in IF, then mip[MEIP] <= 1'b0, pc = pc+4
    assign CSR_control = mstatus[MIE] & interrupt & mip[MEIP] & mie[MEIE];
	assign CSR_rst = timeout;
    //  give origin pc back to IF
    assign CSR_ret = ((EXE_funct3 == 3'b0) & (EXE_funct7[4] == 1) & CSR_write)? 1'b1:1'b0;

    always_ff @(posedge clk) begin
        if(rst) begin
            CSR_stall <= 1'b0;
        end
        else if(EXE_MEM_RegWrite) begin
            if((EXE_funct7[4] == 0) & (EXE_funct3==3'b0) & CSR_write) begin //WFI, if interrupt enalbe then stall 
                CSR_stall <= mie[MEIE];
            end
        end
        else if(CSR_control) begin  //Start dealing interrupt
            CSR_stall <= 1'b0;
        end
    end
endmodule
