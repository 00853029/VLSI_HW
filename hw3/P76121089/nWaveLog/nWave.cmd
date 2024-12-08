verdiSetActWin -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/user2/vsd23/vsd2323/Desktop/top.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 3 4 5 6 7 8 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 3 4 5 6 7 8 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvGetSignalClose -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetSearchMode -win $_nWave1 -value 
wvSetSearchMode -win $_nWave1 -value e50f0
wvSearchNext -win $_nWave1
wvResizeWindow -win $_nWave1 -2 25 1920 1004
wvSetCursor -win $_nWave1 2237191115.482059 -snap {("G1" 5)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR"
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_rdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_rdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR"
wvSetCursor -win $_nWave1 2237288214.696384 -snap {("G3" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE"
wvSetCursor -win $_nWave1 2236911436.829064 -snap {("G2" 1)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR"
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_rdata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_rdata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 2236945668.416487 -snap {("G3" 0)}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 34)}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetCursor -win $_nWave1 2236828491.059539 -snap {("G3" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR"
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_rdata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mip\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mstatus\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 3 4 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_rdata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mip\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mstatus\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 3 4 5 )} 
wvSetPwvSetCursor -win $_nWave1 1663747774.356334 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvResizeWindow -win $_nWave1 -2 25 1920 1004
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR"
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_rdata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mip\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 6 7 )} 
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_rdata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mip\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 6 7 )} 
wvSetPosition -win $_nWave1 {("G2" 7)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 2236847581.752525 -snap {("G3" 0)}
wvSetCursor -win $_nWave1 9874.496372 -snap {("G2" 5)}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 39)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetCursor -win $_nWave1 137255.499571 -snap {("G3" 0)}
wvSetCursor -win $_nWave1 103682.211906 -snap {("G3" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR"
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_rdata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mip\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/state\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_rdata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mip\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/state\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetPosition -win $_nWave1 {("G2" 8)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR"
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_rdata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mip\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/state\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXEMEM_Regwrite} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_rdata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mip\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/state\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXEMEM_Regwrite} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSetPosition -win $_nWave1 {("G2" 9)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
/CSR/rs1_addr\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
{/top_tb/TOP/Dram_wrapper/delay_cnt\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_rd\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/rs1_addr\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchNext -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetCursor -win $_nWave1 1662527651.825328 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 1662383680.935577 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvUnknownSaveResult -win $_nWave1 -clear
wvSetCursor -win $_nWave1 1662263917.540563 -snap {("G3" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE"
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Dram_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU_Ctrl"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE"
wvSetCursor -win $_nWave1 1662426574.917479 -snap {("G3" 0)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
{/top_tb/TOP/Dram_wrapper/delay_cnt\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_rd\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Dram_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR"
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
{/top_tb/TOP/Dram_wrapper/delay_cnt\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_rd\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_MEM_RegWrite} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
{/top_tb/TOP/Dram_wrapper/delay_cnt\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_rd\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_MEM_RegWrite} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetPosition -win $_nWave1 {("G3" 1)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 1662797331.810554 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 1662384105.628467 -snap {("G4" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Dram_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR"
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetCursor -win $_nWave1 1662111113.038521 -snap {("G4" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR"
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
{/top_tb/TOP/Dram_wrapper/delay_cnt\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_rd\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_MEM_RegWrite} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mstatus\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
{/top_tb/TOP/Dram_wrapper/delay_cnt\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_rd\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_MEM_RegWrite} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mstatus\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSetPosition -win $_nWave1 {("G3" 2)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Dram_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR"
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
{/top_tb/TOP/Dram_wrapper/delay_cnt\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_rd\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_MEM_RegWrite} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/rst} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
{/top_tb/TOP/Dram_wrapper/delay_cnt\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_rd\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_MEM_RegWrite} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/clk} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 4 )} 
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
{/top_tb/TOP/Dram_wrapper/delay_cnt\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_rd\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_MEM_RegWrite} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/clk} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 4 )} 
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
{/top_tb/TOP/Dram_wrapper/delay_cnt\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_rd\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_MEM_RegWrite} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/clk} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 4 )} 
wvSetPosition -win $_nWave1 {("G3" 4)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 170301.848938 -snap {("G3" 2)}
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSetPosition -win $_nWave1 {("G3" 2)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 36)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G3" 22 )} 
wvSelectSignal -win $_nWave1 {( "G3" 23 )} 
wvSelectSignal -win $_nWave1 {( "G3" 27 )} 
wvSetCursor -win $_nWave1 144820.275531 -snap {("G3" 26)}
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSetPosition -win $_nWave1 {("G3" 2)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSetPosition -win $_nWave1 {("G3" 2)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 36)}
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSetPosition -win $_nWave1 {("G3" 2)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Dram_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR"
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSetPosition -win $_nWave1 {("G3" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
{/top_tb/TOP/Dram_wrapper/delay_cnt\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_rd\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_MEM_RegWrite} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mip\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 5 6 )} 
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSetPosition -win $_nWave1 {("G3" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
{/top_tb/TOP/Dram_wrapper/delay_cnt\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_rd\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_MEM_RegWrite} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mip\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 5 6 )} 
wvSetPosition -win $_nWave1 {("G3" 6)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSetPosition -win $_nWave1 {("G3" 5)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 38)}
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSetPosition -win $_nWave1 {("G3" 5)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSetCursor -win $_nWave1 160958.605355 -snap {("G4" 0)}
wvSetCursor -win $_nWave1 171575.927608 -snap {("G3" 2)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 1664436173.428233 -snap {("G3" 2)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 10142.852675 -snap {("G3" 2)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSetPosition -win $_nWave1 {("G3" 2)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 38)}
wvSetCursor -win $_nWave1 65204.052908 -snap {("G3" 17)}
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSetPosition -win $_nWave1 {("G3" 2)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 6)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvUnknownSaveResult -win $_nWave1 -clear
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetPosition -win $_nWave1 {("G3" 1)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetPosition -win $_nWave1 {("G3" 1)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetCursor -win $_nWave1 169047.544577 -snap {("G3" 1)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
{/top_tb/TOP/Dram_wrapper/delay_cnt\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mip\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/rst} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
{/top_tb/TOP/Dram_wrapper/delay_cnt\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mip\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/rst} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSetPosition -win $_nWave1 {("G4" 1)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Dram_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE"
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
{/top_tb/TOP/Dram_wrapper/delay_cnt\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mip\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CtrlSignalFlush} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Instr_flush} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 2 3 )} 
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
{/top_tb/TOP/Dram_wrapper/delay_cnt\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mip\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CtrlSignalFlush} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Instr_flush} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 2 3 )} 
wvSetPosition -win $_nWave1 {("G4" 3)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 128959.126863 -snap {("G3" 5)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Dram_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR"
wvSetPosition -win $_nWave1 {("G4" 4)}
wvSetPosition -win $_nWave1 {("G4" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
{/top_tb/TOP/Dram_wrapper/delay_cnt\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mip\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CtrlSignalFlush} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Instr_flush} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXEMEM_Regwrite} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSetPosition -win $_nWave1 {("G4" 4)}
wvSetPosition -win $_nWave1 {("G4" 4)}
wvSetPosition -win $_nWave1 {("G4" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
{/top_tb/TOP/Dram_wrapper/delay_cnt\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mip\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CtrlSignalFlush} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Instr_flush} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXEMEM_Regwrite} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSetPosition -win $_nWave1 {("G4" 4)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSelectSignal -win $_nWave1 {( "G3" 4 )} 
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSetPosition -win $_nWave1 {("G3" 5)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 4)}
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSetPosition -win $_nWave1 {("G3" 5)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSetPosition -win $_nWave1 {("G4" 4)}
wvSetCursor -win $_nWave1 195129.165740 -snap {("G5" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvUnknownSaveResult -win $_nWave1 -clear
wvSetCursor -win $_nWave1 129925.112832 -snap {("G5" 0)}
wvSetCursor -win $_nWave1 170496.523530 -snap {("G3" 1)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR"
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
{/top_tb/TOP/Dram_wrapper/delay_cnt\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mip\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CtrlSignalFlush} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Instr_flush} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_funct3\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
{/top_tb/TOP/Dram_wrapper/delay_cnt\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mip\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CtrlSignalFlush} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Instr_flush} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_funct3\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvSetPosition -win $_nWave1 {("G5" 1)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Dram_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR"
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
{/top_tb/TOP/Dram_wrapper/delay_cnt\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_MEM_RegWrite} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/interrupt} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mip\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CtrlSignalFlush} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Instr_flush} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
{/top_tb/TOP/Dram_wrapper/delay_cnt\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_MEM_RegWrite} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/interrupt} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mip\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CtrlSignalFlush} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Instr_flush} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Dram_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR"
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
{/top_tb/TOP/Dram_wrapper/delay_cnt\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_MEM_RegWrite} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/interrupt} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mip\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CtrlSignalFlush} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Instr_flush} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
{/top_tb/TOP/Dram_wrapper/delay_cnt\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_MEM_RegWrite} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/interrupt} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mip\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CtrlSignalFlush} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Instr_flush} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetPosition -win $_nWave1 {("G2" 6)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Dram_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/IF_ID_reg"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/MEM"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/ID"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/ID/CU"
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
{/top_tb/TOP/Dram_wrapper/delay_cnt\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_MEM_RegWrite} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/interrupt} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/timeout} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/CSR_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mip\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CtrlSignalFlush} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Instr_flush} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
{/top_tb/TOP/Dram_wrapper/delay_cnt\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_MEM_RegWrite} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/interrupt} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/timeout} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/CSR_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mip\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CtrlSignalFlush} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Instr_flush} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
{/top_tb/TOP/Dram_wrapper/delay_cnt\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_MEM_RegWrite} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/interrupt} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/timeout} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/CSR_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mip\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CtrlSignalFlush} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Instr_flush} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetPosition -win $_nWave1 {("G2" 7)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G6" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 1)}
wvSetPosition -win $_nWave1 {("G6" 1)}
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G5" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/ID"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Dram_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/ID/CU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/ID_EXE_reg"
wvSetPosition -win $_nWave1 {("G5" 2)}
wvSetPosition -win $_nWave1 {("G5" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
{/top_tb/TOP/Dram_wrapper/delay_cnt\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_MEM_RegWrite} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/interrupt} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mip\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CtrlSignalFlush} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Instr_flush} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/ID_EXE_reg/ID_CSR_write} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G5" 2 )} 
wvSetPosition -win $_nWave1 {("G5" 2)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/ID"
wvSetPosition -win $_nWave1 {("G5" 3)}
wvSetPosition -win $_nWave1 {("G5" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
{/top_tb/TOP/Dram_wrapper/delay_cnt\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_MEM_RegWrite} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/interrupt} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mip\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CtrlSignalFlush} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Instr_flush} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/ID_EXE_reg/ID_CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CSR_write} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G5" 3 )} 
wvSetPosition -win $_nWave1 {("G5" 3)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE"
wvSetPosition -win $_nWave1 {("G5" 4)}
wvSetPosition -win $_nWave1 {("G5" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
{/top_tb/TOP/Dram_wrapper/delay_cnt\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_MEM_RegWrite} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/interrupt} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mip\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CtrlSignalFlush} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Instr_flush} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/ID_EXE_reg/ID_CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR_write} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G5" 4 )} 
wvSetPosition -win $_nWave1 {("G5" 4)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/ID_EXE_reg"
wvSetPosition -win $_nWave1 {("G5" 5)}
wvSetPosition -win $_nWave1 {("G5" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
{/top_tb/TOP/Dram_wrapper/delay_cnt\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_MEM_RegWrite} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/interrupt} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mip\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CtrlSignalFlush} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Instr_flush} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/ID_EXE_reg/ID_CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/ID_EXE_reg/CSR_write} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G5" 5 )} 
wvSetPosition -win $_nWave1 {("G5" 5)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/ID"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/ID/CU"
wvSetPosition -win $_nWave1 {("G5" 6)}
wvSetPosition -win $_nWave1 {("G5" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
{/top_tb/TOP/Dram_wrapper/delay_cnt\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_MEM_RegWrite} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/interrupt} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mip\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CtrlSignalFlush} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Instr_flush} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/ID_EXE_reg/ID_CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/ID_EXE_reg/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/CSR_write} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G5" 6 )} 
wvSetPosition -win $_nWave1 {("G5" 6)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/ID"
wvSetPosition -win $_nWave1 {("G5" 7)}
wvSetPosition -win $_nWave1 {("G5" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
{/top_tb/TOP/Dram_wrapper/delay_cnt\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_MEM_RegWrite} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/interrupt} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mip\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CtrlSignalFlush} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Instr_flush} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/ID_EXE_reg/ID_CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/ID_EXE_reg/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CSR_write} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G5" 7 )} 
wvSetPosition -win $_nWave1 {("G5" 7)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/ID_EXE_reg"
wvSetPosition -win $_nWave1 {("G5" 8)}
wvSetPosition -win $_nWave1 {("G5" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
{/top_tb/TOP/Dram_wrapper/delay_cnt\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_MEM_RegWrite} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/interrupt} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mip\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CtrlSignalFlush} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Instr_flush} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/ID_EXE_reg/ID_CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/ID_EXE_reg/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/ID_EXE_reg/CSR_write} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G5" 8 )} 
wvSetPosition -win $_nWave1 {("G5" 8)}
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvSelectSignal -win $_nWave1 {( "G5" 1 2 3 4 5 6 7 8 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 0)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/ID"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/ID/CU"
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
{/top_tb/TOP/Dram_wrapper/delay_cnt\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_MEM_RegWrite} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/interrupt} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mip\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CtrlSignalFlush} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Instr_flush} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/CSR_write} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvSetPosition -win $_nWave1 {("G5" 1)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/ID"
wvSetPosition -win $_nWave1 {("G5" 2)}
wvSetPosition -win $_nWave1 {("G5" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
{/top_tb/TOP/Dram_wrapper/delay_cnt\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_MEM_RegWrite} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/interrupt} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mip\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CtrlSignalFlush} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Instr_flush} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CSR_write} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G5" 2 )} 
wvSetPosition -win $_nWave1 {("G5" 2)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/ID_EXE_reg"
wvSetPosition -win $_nWave1 {("G5" 3)}
wvSetPosition -win $_nWave1 {("G5" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
{/top_tb/TOP/Dram_wrapper/delay_cnt\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_MEM_RegWrite} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/interrupt} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mip\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CtrlSignalFlush} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Instr_flush} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/ID_EXE_reg/CSR_write} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G5" 3 )} 
wvSetPosition -win $_nWave1 {("G5" 3)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/ID"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Dram_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/ID/CU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/ID"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/ID_EXE_reg"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/ID"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/ID_EXE_reg"
wvSetPosition -win $_nWave1 {("G5" 4)}
wvSetPosition -win $_nWave1 {("G5" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/DRAM_A\[10:0\]} \
{/top_tb/TOP/DRAM_CSn} \
{/top_tb/TOP/DRAM_D\[31:0\]} \
{/top_tb/TOP/DRAM_Q\[31:0\]} \
{/top_tb/TOP/DRAM_RASn} \
{/top_tb/TOP/DRAM_CASn} \
{/top_tb/TOP/DRAM_WEn\[3:0\]} \
{/top_tb/TOP/DRAM_valid} \
{/top_tb/TOP/Dram_wrapper/delay_cnt\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_addr\[11:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/EXE_MEM_RegWrite} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/interrupt} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CSR/mip\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/CtrlSignalFlush} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Instr_flush} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/ID_EXE_reg/CSR_write} \
{/top_tb/TOP/CPU_wrapper/CPU/ID_EXE_reg/ID_CSR_write} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G5" 4 )} 
wvSetPosition -win $_nWave1 {("G5" 4)}
wvSelectSignal -win $_nWave1 {( "G5" 4 )} 
wvSetPosition -win $_nWave1 {("G5" 3)}
wvSetPosition -win $_nWave1 {("G5" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 2)}
wvSetPosition -win $_nWave1 {("G5" 3)}
wvSelectSignal -win $_nWave1 {( "G5" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
