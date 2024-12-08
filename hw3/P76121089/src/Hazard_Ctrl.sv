module Hazard_Ctrl (
    input [1:0] BranchCtrl,
    input EXE_MemRead,
    input [4:0] EXE_rd_addr,
    input [4:0] rs1_addr,
    input [4:0] rs2_addr,
    input IM_stall,
    input DM_stall,
    input CSR_stall,
    input CSR_control,
    input CSR_ret,

    output reg Instr_flush,
    output reg CtrlSignalFlush,
    output reg IF_ID_RegWrite,
    output reg PC_write,

    output reg ID_EXE_RegWrite,
    output reg EXE_MEM_RegWrite,
    output reg MEM_WB_RegWrite
);
    localparam [1:0] PC4 = 2'b00, PCIMM = 2'b01, IMMRS1 = 2'b10;

    // always_comb begin
    //   if(IM_stall | DM_stall)begin
    //       Instr_flush = 1'b0;
    //       CtrlSignalFlush = 1'b0;
    //       IF_ID_RegWrite = 1'b0;
    //       PC_write = 1'b0;

    //       ID_EXE_RegWrite = 1'b0;
    //       EXE_MEM_RegWrite = 1'b0;
    //       MEM_WB_RegWrite = 1'b0;
    //   end
    //   else if (BranchCtrl != PC4) begin
    //     Instr_flush     = 1'b1; // let second instruction which is after branch instruction become NOP
    //     CtrlSignalFlush = 1'b1; // let first instruction which is after branch instruction become NOP
    //     IF_ID_RegWrite  = 1'b1;
    //     PC_write = 1'b1;

    //     ID_EXE_RegWrite = 1'b1;
    //     EXE_MEM_RegWrite = 1'b1;
    //     MEM_WB_RegWrite = 1'b1;
    //   end
    //   else if (EXE_MemRead && ((EXE_rd_addr == rs1_addr) || (EXE_rd_addr == rs2_addr))) begin // load use
    //     Instr_flush     = 1'b0;
    //     CtrlSignalFlush = 1'b1; // let the first instruction which after the lw instruction become NOP
    //     IF_ID_RegWrite  = 1'b0; // keep first instruction which after the lw instruction
    //     PC_write        = 1'b0; // keep second instruction address which after the lw instruction

    //     ID_EXE_RegWrite = 1'b1;
    //     EXE_MEM_RegWrite = 1'b1;
    //     MEM_WB_RegWrite = 1'b1;
    //   end else begin
    //     Instr_flush     = 1'b0;
    //     CtrlSignalFlush = 1'b0;
    //     IF_ID_RegWrite  = 1'b1;
    //     PC_write        = 1'b1;

    //     ID_EXE_RegWrite = 1'b1;
    //     EXE_MEM_RegWrite = 1'b1;
    //     MEM_WB_RegWrite = 1'b1;
    //   end
    // end
    logic load_use, control_hazard;

    assign load_use = (EXE_MemRead && ((EXE_rd_addr == rs1_addr) || (EXE_rd_addr == rs2_addr)))? 1'b1:1'b0;
    assign control_hazard = (BranchCtrl != PC4)? 1'b1:1'b0;

    assign Instr_flush      = ~(IM_stall | DM_stall | CSR_stall) & (control_hazard | CSR_control | CSR_ret);
    assign CtrlSignalFlush = ~(IM_stall | DM_stall | CSR_stall) & (load_use | control_hazard | CSR_control | CSR_ret);
    assign IF_ID_RegWrite   = ~(IM_stall | DM_stall | load_use | CSR_stall);
    assign PC_write         = ~(IM_stall | DM_stall | load_use | CSR_stall);
    assign ID_EXE_RegWrite  = ~(IM_stall | DM_stall | CSR_stall);
    assign EXE_MEM_RegWrite = ~(IM_stall | DM_stall | CSR_stall);
    assign MEM_WB_RegWrite  = ~(IM_stall | DM_stall | CSR_stall);
    
endmodule