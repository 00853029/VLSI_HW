module Hazard_Ctrl (
    input [1:0] BranchCtrl,
    input EXE_MemRead,
    input [4:0] EXE_rd_addr,
    input [4:0] rs1_addr,
    input [4:0] rs2_addr,

    output reg Instr_flush,
    output reg CtrlSignalFlush,
    output reg IF_ID_RegWrite,
    output reg PC_write
);
  localparam [1:0] PC4 = 2'b00, PCIMM = 2'b01, IMMRS1 = 2'b10;

  always_comb begin
    if (BranchCtrl != PC4) begin
      Instr_flush     = 1'b1; // let second instruction which is after branch instruction become NOP
      CtrlSignalFlush = 1'b1; // let first instruction which is after branch instruction become NOP
      IF_ID_RegWrite  = 1'b1;
      PC_write = 1'b1;
    end
    else if (EXE_MemRead && ((EXE_rd_addr == rs1_addr) || (EXE_rd_addr == rs2_addr))) begin // load use
      Instr_flush     = 1'b0;
      CtrlSignalFlush = 1'b1; // let the first instruction which after the lw instruction become NOP
      IF_ID_RegWrite  = 1'b0; // keep first instruction which after the lw instruction
      PC_write        = 1'b0; // keep second instruction address which after the lw instruction
    end else begin
      Instr_flush     = 1'b0;
      CtrlSignalFlush = 1'b0;
      IF_ID_RegWrite  = 1'b1;
      PC_write        = 1'b1;
    end
  end

endmodule