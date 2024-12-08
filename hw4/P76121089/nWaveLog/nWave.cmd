verdiSetActWin -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/user2/vsd23/vsd2323/Desktop/2023_VSD_HW4_v1.4_new/build/top.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/IF"
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
{/top_tb/TOP/cpu_clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
{/top_tb/TOP/cpu_clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 1)}
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
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvSelectGroup -win $_nWave1 {G2}
wvRenameGroup -win $_nWave1 {G2} {L1C_inst}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/L1C_inst"
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/cpu_clk} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/hit} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C_inst" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("L1C_inst" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C_inst" 1)}
wvSetPosition -win $_nWave1 {("L1C_inst" 1)}
wvSetPosition -win $_nWave1 {("L1C_inst" 8)}
wvSetPosition -win $_nWave1 {("L1C_inst" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/cpu_clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C_inst" \
{/top_tb/TOP/CPU_wrapper/L1C_inst/hit} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "L1C_inst" 2 3 4 5 6 7 8 )} 
wvSetPosition -win $_nWave1 {("L1C_inst" 8)}
wvSetPosition -win $_nWave1 {("L1C_inst" 8)}
wvSetPosition -win $_nWave1 {("L1C_inst" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/cpu_clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C_inst" \
{/top_tb/TOP/CPU_wrapper/L1C_inst/hit} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "L1C_inst" 2 3 4 5 6 7 8 )} 
wvSetPosition -win $_nWave1 {("L1C_inst" 8)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "L1C_inst" 5 )} 
wvSelectSignal -win $_nWave1 {( "L1C_inst" 4 )} 
wvSelectSignal -win $_nWave1 {( "L1C_inst" 1 )} 
wvSelectSignal -win $_nWave1 {( "L1C_inst" 5 )} 
wvSelectSignal -win $_nWave1 {( "L1C_inst" 5 )} 
wvSetPosition -win $_nWave1 {("L1C_inst" 5)}
wvSetPosition -win $_nWave1 {("L1C_inst" 4)}
wvSetPosition -win $_nWave1 {("L1C_inst" 3)}
wvSetPosition -win $_nWave1 {("L1C_inst" 2)}
wvSetPosition -win $_nWave1 {("L1C_inst" 3)}
wvSetPosition -win $_nWave1 {("L1C_inst" 2)}
wvSetPosition -win $_nWave1 {("L1C_inst" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C_inst" 1)}
wvSetPosition -win $_nWave1 {("L1C_inst" 2)}
wvSelectSignal -win $_nWave1 {( "L1C_inst" 1 )} 
wvSetPosition -win $_nWave1 {("L1C_inst" 1)}
wvSetPosition -win $_nWave1 {("L1C_inst" 2)}
wvSetPosition -win $_nWave1 {("L1C_inst" 3)}
wvSetPosition -win $_nWave1 {("L1C_inst" 4)}
wvSetPosition -win $_nWave1 {("L1C_inst" 5)}
wvSetPosition -win $_nWave1 {("L1C_inst" 6)}
wvSetPosition -win $_nWave1 {("L1C_inst" 7)}
wvSetPosition -win $_nWave1 {("L1C_inst" 8)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C_inst" 8)}
wvSelectSignal -win $_nWave1 {( "L1C_inst" 6 )} 
wvSelectSignal -win $_nWave1 {( "L1C_inst" 4 )} 
wvSetPosition -win $_nWave1 {("L1C_inst" 4)}
wvSetPosition -win $_nWave1 {("L1C_inst" 5)}
wvSetPosition -win $_nWave1 {("L1C_inst" 6)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C_inst" 6)}
wvSelectSignal -win $_nWave1 {( "L1C_inst" 7 )} 
wvSetPosition -win $_nWave1 {("L1C_inst" 7)}
wvSetPosition -win $_nWave1 {("L1C_inst" 6)}
wvSetPosition -win $_nWave1 {("L1C_inst" 5)}
wvSetPosition -win $_nWave1 {("L1C_inst" 4)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C_inst" 4)}
wvSetPosition -win $_nWave1 {("L1C_inst" 5)}
wvSelectSignal -win $_nWave1 {( "L1C_inst" 3 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C_inst" 5)}
wvSetPosition -win $_nWave1 {("L1C_inst" 4)}
wvSelectSignal -win $_nWave1 {( "L1C_inst" 3 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/L1C_inst"
wvSetPosition -win $_nWave1 {("L1C_inst" 10)}
wvSetPosition -win $_nWave1 {("L1C_inst" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/cpu_clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C_inst" \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/hit} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "L1C_inst" 5 6 7 8 9 10 )} 
wvSetPosition -win $_nWave1 {("L1C_inst" 10)}
wvSetPosition -win $_nWave1 {("L1C_inst" 10)}
wvSetPosition -win $_nWave1 {("L1C_inst" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/cpu_clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C_inst" \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/hit} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "L1C_inst" 5 6 7 8 9 10 )} 
wvSetPosition -win $_nWave1 {("L1C_inst" 10)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C_inst" 8)}
wvSetPosition -win $_nWave1 {("L1C_inst" 9)}
wvSetPosition -win $_nWave1 {("L1C_inst" 10)}
wvSetPosition -win $_nWave1 {("L1C_inst" 11)}
wvSetPosition -win $_nWave1 {("L1C_inst" 12)}
wvSetPosition -win $_nWave1 {("L1C_inst" 13)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSelectSignal -win $_nWave1 {( "L1C_inst" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 4 )} 
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/L1C_inst"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/L1C_inst"
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/cpu_clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C_inst" \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/hit} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/cache_state\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_write} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/cpu_clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C_inst" \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/hit} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/cache_state\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_write} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSetPosition -win $_nWave1 {("G3" 2)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSelectSignal -win $_nWave1 {( "G3" 7 )} 
wvSetPosition -win $_nWave1 {("G3" 7)}
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSetPosition -win $_nWave1 {("G3" 7)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 7)}
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSetPosition -win $_nWave1 {("G3" 5)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSelectSignal -win $_nWave1 {( "G3" 4 )} 
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSetPosition -win $_nWave1 {("G3" 6)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSelectSignal -win $_nWave1 {( "L1C_inst" 1 )} 
wvSelectGroup -win $_nWave1 {G3}
wvRenameGroup -win $_nWave1 {G3} {L1C_inst to Master}
wvSelectGroup -win $_nWave1 {G4}
wvRenameGroup -win $_nWave1 {G4} {Master0}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/L1C_inst"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/L1C_inst"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/Master0"
wvSetPosition -win $_nWave1 {("L1C_inst to Master" 8)}
wvSetPosition -win $_nWave1 {("L1C_inst to Master" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/cpu_clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C_inst" \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/hit} \
}
wvAddSignal -win $_nWave1 -group {"L1C_inst to Master" \
{/top_tb/TOP/CPU_wrapper/L1C_inst/cache_state\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/write_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_wait} \
}
wvAddSignal -win $_nWave1 -group {"Master0" \
}
wvSelectSignal -win $_nWave1 {( "L1C_inst to Master" 7 8 )} 
wvSetPosition -win $_nWave1 {("L1C_inst to Master" 8)}
wvSetPosition -win $_nWave1 {("L1C_inst to Master" 8)}
wvSetPosition -win $_nWave1 {("L1C_inst to Master" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/cpu_clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C_inst" \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/hit} \
}
wvAddSignal -win $_nWave1 -group {"L1C_inst to Master" \
{/top_tb/TOP/CPU_wrapper/L1C_inst/cache_state\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/write_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_wait} \
}
wvAddSignal -win $_nWave1 -group {"Master0" \
}
wvSelectSignal -win $_nWave1 {( "L1C_inst to Master" 7 8 )} 
wvSetPosition -win $_nWave1 {("L1C_inst to Master" 8)}
wvGetSignalClose -win $_nWave1
wvSelectGroup -win $_nWave1 {L1C_inst to Master}
wvSelectSignal -win $_nWave1 {( "L1C_inst to Master" 1 2 3 4 5 6 7 8 9 )} 
wvSetPosition -win $_nWave1 {("L1C_inst to Master" 5)}
wvSetPosition -win $_nWave1 {("L1C_inst to Master" 4)}
wvSetPosition -win $_nWave1 {("L1C_inst to Master" 3)}
wvSetPosition -win $_nWave1 {("L1C_inst to Master" 2)}
wvSetPosition -win $_nWave1 {("L1C_inst to Master" 1)}
wvSetPosition -win $_nWave1 {("L1C_inst to Master" 0)}
wvSetPosition -win $_nWave1 {("L1C_inst" 7)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C_inst" 7)}
wvSetPosition -win $_nWave1 {("L1C_inst" 16)}
wvSelectGroup -win $_nWave1 {L1C_inst to Master}
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C_inst" 16)}
wvSelectGroup -win $_nWave1 {Master0}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/L1C_inst"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/Master0"
wvSelectSignal -win $_nWave1 {( "L1C_inst" 14 )} 
wvSetPosition -win $_nWave1 {("L1C_inst" 14)}
wvSetPosition -win $_nWave1 {("L1C_inst" 15)}
wvSetPosition -win $_nWave1 {("L1C_inst" 16)}
wvSetPosition -win $_nWave1 {("Master0" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("Master0" 1)}
wvSetPosition -win $_nWave1 {("Master0" 1)}
wvSelectSignal -win $_nWave1 {( "L1C_inst" 14 )} 
wvSetPosition -win $_nWave1 {("L1C_inst" 14)}
wvSetPosition -win $_nWave1 {("L1C_inst" 15)}
wvSetPosition -win $_nWave1 {("Master0" 1)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("Master0" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("Master0" 2)}
wvSetPosition -win $_nWave1 {("Master0" 3)}
wvSetPosition -win $_nWave1 {("Master0" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/cpu_clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C_inst" \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/hit} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/cache_state\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_wait} \
}
wvAddSignal -win $_nWave1 -group {"Master0" \
{/top_tb/TOP/CPU_wrapper/Master0/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/write_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/master_status\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "Master0" 3 )} 
wvSetPosition -win $_nWave1 {("Master0" 3)}
wvSetPosition -win $_nWave1 {("Master0" 3)}
wvSetPosition -win $_nWave1 {("Master0" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/cpu_clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C_inst" \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/hit} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/cache_state\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_wait} \
}
wvAddSignal -win $_nWave1 -group {"Master0" \
{/top_tb/TOP/CPU_wrapper/Master0/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/write_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/master_status\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "Master0" 3 )} 
wvSetPosition -win $_nWave1 {("Master0" 3)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "L1C_inst" 1 )} 
wvSelectSignal -win $_nWave1 {( "L1C_inst" 3 )} 
wvSelectSignal -win $_nWave1 {( "L1C_inst" 4 )} 
wvSelectSignal -win $_nWave1 {( "L1C_inst" 5 )} 
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "L1C_inst" 8 )} 
wvSetPosition -win $_nWave1 {("L1C_inst" 8)}
wvSetPosition -win $_nWave1 {("L1C_inst" 9)}
wvSetPosition -win $_nWave1 {("L1C_inst" 10)}
wvSetPosition -win $_nWave1 {("L1C_inst" 11)}
wvSetPosition -win $_nWave1 {("L1C_inst" 12)}
wvSetPosition -win $_nWave1 {("L1C_inst" 13)}
wvSetPosition -win $_nWave1 {("L1C_inst" 14)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C_inst" 14)}
wvSelectSignal -win $_nWave1 {( "L1C_inst" 6 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/L1C_inst"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/Master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/Master0"
wvSetPosition -win $_nWave1 {("L1C_inst" 15)}
wvSetPosition -win $_nWave1 {("L1C_inst" 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/cpu_clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C_inst" \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/hit} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/cache_state\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/write} \
}
wvAddSignal -win $_nWave1 -group {"Master0" \
{/top_tb/TOP/CPU_wrapper/Master0/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/write_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/master_status\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "L1C_inst" 15 )} 
wvSetPosition -win $_nWave1 {("L1C_inst" 15)}
wvSetPosition -win $_nWave1 {("L1C_inst" 15)}
wvSetPosition -win $_nWave1 {("L1C_inst" 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/cpu_clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C_inst" \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/hit} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/cache_state\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/write} \
}
wvAddSignal -win $_nWave1 -group {"Master0" \
{/top_tb/TOP/CPU_wrapper/Master0/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/write_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/master_status\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "L1C_inst" 15 )} 
wvSetPosition -win $_nWave1 {("L1C_inst" 15)}
wvGetSignalClose -win $_nWave1
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("Master0" 0)}
wvSetPosition -win $_nWave1 {("L1C_inst" 14)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/L1C_inst"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/Master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/Master0"
wvSetPosition -win $_nWave1 {("L1C_inst" 15)}
wvSetPosition -win $_nWave1 {("L1C_inst" 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/cpu_clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C_inst" \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/hit} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/cache_state\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/read} \
}
wvAddSignal -win $_nWave1 -group {"Master0" \
{/top_tb/TOP/CPU_wrapper/Master0/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/write_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/master_status\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "L1C_inst" 15 )} 
wvSetPosition -win $_nWave1 {("L1C_inst" 15)}
wvSetPosition -win $_nWave1 {("L1C_inst" 15)}
wvSetPosition -win $_nWave1 {("L1C_inst" 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/cpu_clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C_inst" \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/hit} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/cache_state\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/read} \
}
wvAddSignal -win $_nWave1 -group {"Master0" \
{/top_tb/TOP/CPU_wrapper/Master0/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/write_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/master_status\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "L1C_inst" 15 )} 
wvSetPosition -win $_nWave1 {("L1C_inst" 15)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/L1C_inst"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/Master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/Master0"
wvSetPosition -win $_nWave1 {("Master0" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("Master0" 1)}
wvSelectGroup -win $_nWave1 {G1}
wvRenameGroup -win $_nWave1 {G1} {CPU}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/L1C_inst"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/Master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/Master0"
wvSetPosition -win $_nWave1 {("Master0" 4)}
wvSetPosition -win $_nWave1 {("Master0" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"CPU" \
{/top_tb/TOP/cpu_clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C_inst" \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/hit} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/cache_state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"Master0" \
{/top_tb/TOP/CPU_wrapper/Master0/read} \
{/top_tb/TOP/CPU_wrapper/Master0/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/ARLEN\[3:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/ARVALID} \
{/top_tb/TOP/CPU_wrapper/Master0/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/write_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/master_status\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "Master0" 2 3 4 )} 
wvSetPosition -win $_nWave1 {("Master0" 4)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "Master0" 2 3 4 )} 
wvSetPosition -win $_nWave1 {("Master0" 2)}
wvSetPosition -win $_nWave1 {("Master0" 3)}
wvSetPosition -win $_nWave1 {("Master0" 4)}
wvSetPosition -win $_nWave1 {("Master0" 5)}
wvSetPosition -win $_nWave1 {("Master0" 6)}
wvSetPosition -win $_nWave1 {("Master0" 7)}
wvSetPosition -win $_nWave1 {("Master0" 6)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("Master0" 6)}
wvSetCursor -win $_nWave1 141845.373308 -snap {("G4" 0)}
wvSelectSignal -win $_nWave1 {( "Master0" 3 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 4 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 5 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 6 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/L1C_inst"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/Master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/Master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/L1C_inst"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/Master0"
wvSetPosition -win $_nWave1 {("Master0" 7)}
wvSetPosition -win $_nWave1 {("Master0" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"CPU" \
{/top_tb/TOP/cpu_clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C_inst" \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/hit} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/cache_state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"Master0" \
{/top_tb/TOP/CPU_wrapper/Master0/read} \
{/top_tb/TOP/CPU_wrapper/Master0/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/write_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/ARLEN\[3:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/ARVALID} \
{/top_tb/TOP/CPU_wrapper/Master0/cacheable} \
{/top_tb/TOP/CPU_wrapper/Master0/master_status\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "Master0" 7 )} 
wvSetPosition -win $_nWave1 {("Master0" 7)}
wvSetPosition -win $_nWave1 {("Master0" 7)}
wvSetPosition -win $_nWave1 {("Master0" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"CPU" \
{/top_tb/TOP/cpu_clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C_inst" \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/hit} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/cache_state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"Master0" \
{/top_tb/TOP/CPU_wrapper/Master0/read} \
{/top_tb/TOP/CPU_wrapper/Master0/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/write_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/ARLEN\[3:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/ARVALID} \
{/top_tb/TOP/CPU_wrapper/Master0/cacheable} \
{/top_tb/TOP/CPU_wrapper/Master0/master_status\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "Master0" 7 )} 
wvSetPosition -win $_nWave1 {("Master0" 7)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 152974.328957 -snap {("G4" 0)}
wvSelectSignal -win $_nWave1 {( "Master0" 8 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/L1C_inst"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/Master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/Master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/L1C_inst"
wvSetPosition -win $_nWave1 {("Master0" 12)}
wvSetPosition -win $_nWave1 {("Master0" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"CPU" \
{/top_tb/TOP/cpu_clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C_inst" \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/hit} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/cache_state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"Master0" \
{/top_tb/TOP/CPU_wrapper/Master0/read} \
{/top_tb/TOP/CPU_wrapper/Master0/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/write_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/ARLEN\[3:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/ARVALID} \
{/top_tb/TOP/CPU_wrapper/Master0/cacheable} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/DA_in\[127:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/DA_write\[15:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/TA_in\[21:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/TA_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/index\[5:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/master_status\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "Master0" 8 9 10 11 12 )} 
wvSetPosition -win $_nWave1 {("Master0" 12)}
wvSetPosition -win $_nWave1 {("Master0" 12)}
wvSetPosition -win $_nWave1 {("Master0" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"CPU" \
{/top_tb/TOP/cpu_clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C_inst" \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/hit} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/cache_state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"Master0" \
{/top_tb/TOP/CPU_wrapper/Master0/read} \
{/top_tb/TOP/CPU_wrapper/Master0/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/write_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/ARLEN\[3:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/ARVALID} \
{/top_tb/TOP/CPU_wrapper/Master0/cacheable} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/DA_in\[127:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/DA_write\[15:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/TA_in\[21:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/TA_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/index\[5:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/master_status\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "Master0" 8 9 10 11 12 )} 
wvSetPosition -win $_nWave1 {("Master0" 12)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("Master0" 8)}
wvSetPosition -win $_nWave1 {("Master0" 9)}
wvSetPosition -win $_nWave1 {("Master0" 10)}
wvSetPosition -win $_nWave1 {("Master0" 11)}
wvSetPosition -win $_nWave1 {("Master0" 12)}
wvSetPosition -win $_nWave1 {("Master0" 13)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 5)}
wvSetPosition -win $_nWave1 {("G4" 5)}
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 4 5 6 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 5)}
wvSelectSignal -win $_nWave1 {( "Master0" 4 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 3 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G4" 5)}
wvSelectSignal -win $_nWave1 {( "Master0" 2 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G4" 5)}
wvSelectSignal -win $_nWave1 {( "Master0" 1 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G4" 5)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/L1C_inst"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/Master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/L1C_inst"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/Master0"
wvSetPosition -win $_nWave1 {("G4" 6)}
wvSetPosition -win $_nWave1 {("G4" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"CPU" \
{/top_tb/TOP/cpu_clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C_inst" \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/hit} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/cache_state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"Master0" \
{/top_tb/TOP/CPU_wrapper/Master0/cacheable} \
{/top_tb/TOP/CPU_wrapper/Master0/master_status\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/L1C_inst/DA_in\[127:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/DA_write\[15:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/TA_in\[21:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/TA_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/index\[5:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/RDATA\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 6 )} 
wvSetPosition -win $_nWave1 {("G4" 6)}
wvSetPosition -win $_nWave1 {("G4" 6)}
wvSetPosition -win $_nWave1 {("G4" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"CPU" \
{/top_tb/TOP/cpu_clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C_inst" \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/hit} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/cache_state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"Master0" \
{/top_tb/TOP/CPU_wrapper/Master0/cacheable} \
{/top_tb/TOP/CPU_wrapper/Master0/master_status\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/L1C_inst/DA_in\[127:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/DA_write\[15:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/TA_in\[21:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/TA_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/index\[5:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/RDATA\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 6 )} 
wvSetPosition -win $_nWave1 {("G4" 6)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 5)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("Master0" 2)}
wvSetPosition -win $_nWave1 {("Master0" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("Master0" 1)}
wvSetPosition -win $_nWave1 {("Master0" 2)}
wvSelectSignal -win $_nWave1 {( "L1C_inst" 1 2 3 4 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("Master0" 2)}
wvSelectSignal -win $_nWave1 {( "L1C_inst" 2 )} 
wvSelectGroup -win $_nWave1 {Master0}
wvSetPosition -win $_nWave1 {("Master0" 0)}
wvSetPosition -win $_nWave1 {("L1C_inst" 10)}
wvSetPosition -win $_nWave1 {("L1C_inst" 9)}
wvSetPosition -win $_nWave1 {("L1C_inst" 8)}
wvSetPosition -win $_nWave1 {("L1C_inst" 7)}
wvSetPosition -win $_nWave1 {("L1C_inst" 6)}
wvSetPosition -win $_nWave1 {("L1C_inst" 5)}
wvSetPosition -win $_nWave1 {("L1C_inst" 4)}
wvSetPosition -win $_nWave1 {("L1C_inst" 3)}
wvSetPosition -win $_nWave1 {("L1C_inst" 2)}
wvSetPosition -win $_nWave1 {("L1C_inst" 1)}
wvSetPosition -win $_nWave1 {("L1C_inst" 0)}
wvSetPosition -win $_nWave1 {("CPU" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("CPU" 2)}
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 240867.045935 -snap {("G4" 1)}
wvSetCursor -win $_nWave1 236994.690022 -snap {("G4" 1)}
wvSetCursor -win $_nWave1 240867.045935 -snap {("G4" 1)}
wvResizeWindow -win $_nWave1 0 25 1920 1004
wvSetCursor -win $_nWave1 236907.514879 -snap {("G4" 1)}
wvSetCursor -win $_nWave1 241075.677059 -snap {("G4" 1)}
wvSetCursor -win $_nWave1 231013.473046 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 225161.764110 -snap {("G4" 1)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/L1C_inst"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/Master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/Master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/IF"
wvSetPosition -win $_nWave1 {("CPU" 3)}
wvSetPosition -win $_nWave1 {("CPU" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"CPU" \
{/top_tb/TOP/cpu_clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/Instr_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"Master0" \
{/top_tb/TOP/CPU_wrapper/Master0/cacheable} \
{/top_tb/TOP/CPU_wrapper/Master0/RDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/master_status\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C_inst" \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/hit} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/cache_state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/L1C_inst/DA_in\[127:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/DA_write\[15:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/TA_in\[21:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/TA_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/index\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "CPU" 3 )} 
wvSetPosition -win $_nWave1 {("CPU" 3)}
wvSetPosition -win $_nWave1 {("CPU" 3)}
wvSetPosition -win $_nWave1 {("CPU" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"CPU" \
{/top_tb/TOP/cpu_clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/Instr_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"Master0" \
{/top_tb/TOP/CPU_wrapper/Master0/cacheable} \
{/top_tb/TOP/CPU_wrapper/Master0/RDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/master_status\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C_inst" \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/hit} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/cache_state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/L1C_inst/DA_in\[127:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/DA_write\[15:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/TA_in\[21:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/TA_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/index\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "CPU" 3 )} 
wvSetPosition -win $_nWave1 {("CPU" 3)}
wvGetSignalClose -win $_nWave1
wvSelectGroup -win $_nWave1 {Master0}
wvSetPosition -win $_nWave1 {("Master0" 0)}
wvSetPosition -win $_nWave1 {("Master0" 1)}
wvSetPosition -win $_nWave1 {("Master0" 2)}
wvSetPosition -win $_nWave1 {("Master0" 3)}
wvSetPosition -win $_nWave1 {("L1C_inst" 0)}
wvSetPosition -win $_nWave1 {("L1C_inst" 1)}
wvSetPosition -win $_nWave1 {("L1C_inst" 2)}
wvSetPosition -win $_nWave1 {("L1C_inst" 3)}
wvSetPosition -win $_nWave1 {("L1C_inst" 4)}
wvSetPosition -win $_nWave1 {("L1C_inst" 5)}
wvSetPosition -win $_nWave1 {("L1C_inst" 6)}
wvSetPosition -win $_nWave1 {("L1C_inst" 7)}
wvSetPosition -win $_nWave1 {("L1C_inst" 8)}
wvSetPosition -win $_nWave1 {("L1C_inst" 9)}
wvSetPosition -win $_nWave1 {("L1C_inst" 10)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("Master0" 3)}
wvSetCursor -win $_nWave1 244081.312756 -snap {("G5" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/L1C_inst"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/Master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/IF"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/L1C_inst"
wvSetPosition -win $_nWave1 {("Master0" 4)}
wvSetPosition -win $_nWave1 {("Master0" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"CPU" \
{/top_tb/TOP/cpu_clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/Instr_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C_inst" \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/hit} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/cache_state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"Master0" \
{/top_tb/TOP/CPU_wrapper/Master0/cacheable} \
{/top_tb/TOP/CPU_wrapper/Master0/RDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/master_status\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_write} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/L1C_inst/DA_in\[127:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/DA_write\[15:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/TA_in\[21:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/TA_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/index\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "Master0" 4 )} 
wvSetPosition -win $_nWave1 {("Master0" 4)}
wvSetPosition -win $_nWave1 {("Master0" 4)}
wvSetPosition -win $_nWave1 {("Master0" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"CPU" \
{/top_tb/TOP/cpu_clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/Instr_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C_inst" \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/hit} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_req} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_type\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/I_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/cache_state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"Master0" \
{/top_tb/TOP/CPU_wrapper/Master0/cacheable} \
{/top_tb/TOP/CPU_wrapper/Master0/RDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/master_status\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/core_write} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/L1C_inst/DA_in\[127:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/DA_write\[15:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/TA_in\[21:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/TA_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/index\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "Master0" 4 )} 
wvSetPosition -win $_nWave1 {("Master0" 4)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "Master0" 4 )} 
wvSetPosition -win $_nWave1 {("Master0" 2)}
wvSetPosition -win $_nWave1 {("Master0" 0)}
wvSetPosition -win $_nWave1 {("L1C_inst" 10)}
wvSetPosition -win $_nWave1 {("L1C_inst" 9)}
wvSetPosition -win $_nWave1 {("L1C_inst" 8)}
wvSetPosition -win $_nWave1 {("L1C_inst" 7)}
wvSetPosition -win $_nWave1 {("L1C_inst" 6)}
wvSetPosition -win $_nWave1 {("L1C_inst" 5)}
wvSetPosition -win $_nWave1 {("L1C_inst" 4)}
wvSetPosition -win $_nWave1 {("L1C_inst" 3)}
wvSetPosition -win $_nWave1 {("L1C_inst" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C_inst" 2)}
wvSetPosition -win $_nWave1 {("L1C_inst" 3)}
wvSelectSignal -win $_nWave1 {( "L1C_inst" 3 )} 
wvSetSearchMode -win $_nWave1 -value 
wvSetSearchMode -win $_nWave1 -value 1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSelectSignal -win $_nWave1 {( "L1C_inst" 1 2 3 4 5 6 7 8 9 10 11 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("Master0" 2)}
wvSetPosition -win $_nWave1 {("L1C_inst" 0)}
wvSelectGroup -win $_nWave1 {L1C_inst}
wvRenameGroup -win $_nWave1 {L1C_inst} {L1C_data}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/IF"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/L1C_inst"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/Master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/L1C_inst"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/L1C_data"
wvSetPosition -win $_nWave1 {("L1C_data" 6)}
wvSetPosition -win $_nWave1 {("L1C_data" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"CPU" \
{/top_tb/TOP/cpu_clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/Instr_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C_data" \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_req} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_write} \
{/top_tb/TOP/CPU_wrapper/L1C_data/hit} \
}
wvAddSignal -win $_nWave1 -group {"Master0" \
{/top_tb/TOP/CPU_wrapper/Master0/cacheable} \
{/top_tb/TOP/CPU_wrapper/Master0/RDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/master_status\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/L1C_inst/DA_in\[127:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/DA_write\[15:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/TA_in\[21:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/TA_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/index\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "L1C_data" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave1 {("L1C_data" 6)}
wvSetPosition -win $_nWave1 {("L1C_data" 9)}
wvSetPosition -win $_nWave1 {("L1C_data" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"CPU" \
{/top_tb/TOP/cpu_clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/Instr_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C_data" \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_req} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_write} \
{/top_tb/TOP/CPU_wrapper/L1C_data/hit} \
{/top_tb/TOP/CPU_wrapper/L1C_data/D_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/D_req} \
{/top_tb/TOP/CPU_wrapper/L1C_data/D_write} \
}
wvAddSignal -win $_nWave1 -group {"Master0" \
{/top_tb/TOP/CPU_wrapper/Master0/cacheable} \
{/top_tb/TOP/CPU_wrapper/Master0/RDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/master_status\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/L1C_inst/DA_in\[127:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/DA_write\[15:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/TA_in\[21:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/TA_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/index\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "L1C_data" 7 8 9 )} 
wvSetPosition -win $_nWave1 {("L1C_data" 9)}
wvSetPosition -win $_nWave1 {("L1C_data" 9)}
wvSetPosition -win $_nWave1 {("L1C_data" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"CPU" \
{/top_tb/TOP/cpu_clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/Instr_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C_data" \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_req} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_write} \
{/top_tb/TOP/CPU_wrapper/L1C_data/hit} \
{/top_tb/TOP/CPU_wrapper/L1C_data/D_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/D_req} \
{/top_tb/TOP/CPU_wrapper/L1C_data/D_write} \
}
wvAddSignal -win $_nWave1 -group {"Master0" \
{/top_tb/TOP/CPU_wrapper/Master0/cacheable} \
{/top_tb/TOP/CPU_wrapper/Master0/RDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/master_status\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/L1C_inst/DA_in\[127:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/DA_write\[15:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/TA_in\[21:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/TA_write} \
{/top_tb/TOP/CPU_wrapper/L1C_inst/index\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "L1C_data" 7 8 9 )} 
wvSetPosition -win $_nWave1 {("L1C_data" 9)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "L1C_data" 5 )} 
wvSearchNext -win $_nWave1
wvSelectSignal -win $_nWave1 {( "CPU" 3 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("Master0" 0)}
wvSetPosition -win $_nWave1 {("L1C_data" 9)}
wvSelectSignal -win $_nWave1 {( "G4" 1 2 3 4 5 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C_data" 9)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/IF"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/L1C_inst"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/Master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/L1C_data"
wvSetPosition -win $_nWave1 {("L1C_data" 11)}
wvSetPosition -win $_nWave1 {("L1C_data" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"CPU" \
{/top_tb/TOP/cpu_clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C_data" \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_req} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_write} \
{/top_tb/TOP/CPU_wrapper/L1C_data/hit} \
{/top_tb/TOP/CPU_wrapper/L1C_data/D_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/D_req} \
{/top_tb/TOP/CPU_wrapper/L1C_data/D_write} \
{/top_tb/TOP/CPU_wrapper/L1C_data/DA_in\[127:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/DA_write\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"Master0" \
{/top_tb/TOP/CPU_wrapper/Master0/cacheable} \
{/top_tb/TOP/CPU_wrapper/Master0/RDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/master_status\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "L1C_data" 10 11 )} 
wvSetPosition -win $_nWave1 {("L1C_data" 11)}
wvSetPosition -win $_nWave1 {("L1C_data" 11)}
wvSetPosition -win $_nWave1 {("L1C_data" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"CPU" \
{/top_tb/TOP/cpu_clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C_data" \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_req} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_write} \
{/top_tb/TOP/CPU_wrapper/L1C_data/hit} \
{/top_tb/TOP/CPU_wrapper/L1C_data/D_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/D_req} \
{/top_tb/TOP/CPU_wrapper/L1C_data/D_write} \
{/top_tb/TOP/CPU_wrapper/L1C_data/DA_in\[127:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/DA_write\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"Master0" \
{/top_tb/TOP/CPU_wrapper/Master0/cacheable} \
{/top_tb/TOP/CPU_wrapper/Master0/RDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master0/master_status\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "L1C_data" 10 11 )} 
wvSetPosition -win $_nWave1 {("L1C_data" 11)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C_data" 10)}
wvSetPosition -win $_nWave1 {("L1C_data" 11)}
wvSetPosition -win $_nWave1 {("Master0" 1)}
wvSetPosition -win $_nWave1 {("Master0" 2)}
wvSetPosition -win $_nWave1 {("Master0" 3)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSelectSignal -win $_nWave1 {( "L1C_data" 6 )} 
wvSelectSignal -win $_nWave1 {( "L1C_data" 4 )} 
wvSelectSignal -win $_nWave1 {( "L1C_data" 5 )} 
wvSearchNext -win $_nWave1
wvResizeWindow -win $_nWave1 0 25 1920 1004
wvSelectSignal -win $_nWave1 {( "L1C_data" 6 )} 
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSetCursor -win $_nWave1 211470798.724468 -snap {("CPU" 2)}
wvSelectSignal -win $_nWave1 {( "L1C_data" 3 )} 
wvSetPosition -win $_nWave1 {("L1C_data" 3)}
wvSetPosition -win $_nWave1 {("L1C_data" 2)}
wvSetPosition -win $_nWave1 {("L1C_data" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C_data" 1)}
wvSetPosition -win $_nWave1 {("L1C_data" 2)}
wvSelectSignal -win $_nWave1 {( "L1C_data" 3 )} 
wvSelectSignal -win $_nWave1 {( "L1C_data" 4 )} 
wvSelectSignal -win $_nWave1 {( "Master0" 1 2 3 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C_data" 2)}
wvSelectGroup -win $_nWave1 {Master0}
wvRenameGroup -win $_nWave1 {Master0} {Master1}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/IF"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/L1C_data"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/L1C_inst"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/Master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/L1C_data"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/Master1"
wvSetPosition -win $_nWave1 {("L1C_data" 4)}
wvSetPosition -win $_nWave1 {("L1C_data" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"CPU" \
{/top_tb/TOP/cpu_clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C_data" \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_req} \
{/top_tb/TOP/CPU_wrapper/Master1/AWADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master1/AWVALID} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_write} \
{/top_tb/TOP/CPU_wrapper/L1C_data/hit} \
{/top_tb/TOP/CPU_wrapper/L1C_data/D_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/D_req} \
{/top_tb/TOP/CPU_wrapper/L1C_data/D_write} \
}
wvAddSignal -win $_nWave1 -group {"Master1" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/L1C_data/DA_in\[127:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/DA_write\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "L1C_data" 3 4 )} 
wvSetPosition -win $_nWave1 {("L1C_data" 4)}
wvSetPosition -win $_nWave1 {("Master1" 2)}
wvSetPosition -win $_nWave1 {("Master1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"CPU" \
{/top_tb/TOP/cpu_clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C_data" \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_req} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_write} \
{/top_tb/TOP/CPU_wrapper/L1C_data/hit} \
{/top_tb/TOP/CPU_wrapper/L1C_data/D_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/D_req} \
{/top_tb/TOP/CPU_wrapper/L1C_data/D_write} \
}
wvAddSignal -win $_nWave1 -group {"Master1" \
{/top_tb/TOP/CPU_wrapper/Master1/AWADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master1/AWVALID} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/L1C_data/DA_in\[127:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/DA_write\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "Master1" 1 2 )} 
wvSetPosition -win $_nWave1 {("Master1" 2)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/IF"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/L1C_data"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/L1C_inst"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/Master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/Master1"
wvSetPosition -win $_nWave1 {("Master1" 3)}
wvSetPosition -win $_nWave1 {("Master1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"CPU" \
{/top_tb/TOP/cpu_clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C_data" \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_req} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_write} \
{/top_tb/TOP/CPU_wrapper/L1C_data/hit} \
{/top_tb/TOP/CPU_wrapper/L1C_data/D_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/D_req} \
{/top_tb/TOP/CPU_wrapper/L1C_data/D_write} \
}
wvAddSignal -win $_nWave1 -group {"Master1" \
{/top_tb/TOP/CPU_wrapper/Master1/AWADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master1/AWVALID} \
{/top_tb/TOP/CPU_wrapper/Master1/data_in\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/L1C_data/DA_in\[127:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/DA_write\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "Master1" 3 )} 
wvSetPosition -win $_nWave1 {("Master1" 3)}
wvSelectSignal -win $_nWave1 {( "Master1" 3 )} 
wvSetPosition -win $_nWave1 {("Master1" 2)}
wvSetPosition -win $_nWave1 {("Master1" 1)}
wvSetPosition -win $_nWave1 {("Master1" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("Master1" 0)}
wvSetPosition -win $_nWave1 {("Master1" 1)}
wvSetPosition -win $_nWave1 {("Master1" 3)}
wvSetPosition -win $_nWave1 {("Master1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"CPU" \
{/top_tb/TOP/cpu_clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C_data" \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_req} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_write} \
{/top_tb/TOP/CPU_wrapper/L1C_data/hit} \
{/top_tb/TOP/CPU_wrapper/L1C_data/D_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/D_req} \
{/top_tb/TOP/CPU_wrapper/L1C_data/D_write} \
}
wvAddSignal -win $_nWave1 -group {"Master1" \
{/top_tb/TOP/CPU_wrapper/Master1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master1/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master1/WDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master1/AWADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master1/AWVALID} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/L1C_data/DA_in\[127:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/DA_write\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "Master1" 2 3 )} 
wvSetPosition -win $_nWave1 {("Master1" 3)}
wvSetPosition -win $_nWave1 {("Master1" 3)}
wvSetPosition -win $_nWave1 {("Master1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"CPU" \
{/top_tb/TOP/cpu_clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C_data" \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_req} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_write} \
{/top_tb/TOP/CPU_wrapper/L1C_data/hit} \
{/top_tb/TOP/CPU_wrapper/L1C_data/D_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/D_req} \
{/top_tb/TOP/CPU_wrapper/L1C_data/D_write} \
}
wvAddSignal -win $_nWave1 -group {"Master1" \
{/top_tb/TOP/CPU_wrapper/Master1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master1/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master1/WDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master1/AWADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master1/AWVALID} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/L1C_data/DA_in\[127:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/DA_write\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "Master1" 2 3 )} 
wvSetPosition -win $_nWave1 {("Master1" 3)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "Master1" 4 )} 
wvSelectSignal -win $_nWave1 {( "Master1" 5 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/IF"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/L1C_data"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/L1C_inst"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/Master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/Master1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/Master1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/L1C_data"
wvSetPosition -win $_nWave1 {("Master1" 4)}
wvSetPosition -win $_nWave1 {("Master1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"CPU" \
{/top_tb/TOP/cpu_clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C_data" \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_req} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_write} \
{/top_tb/TOP/CPU_wrapper/L1C_data/hit} \
{/top_tb/TOP/CPU_wrapper/L1C_data/D_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/D_req} \
{/top_tb/TOP/CPU_wrapper/L1C_data/D_write} \
}
wvAddSignal -win $_nWave1 -group {"Master1" \
{/top_tb/TOP/CPU_wrapper/Master1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master1/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master1/WDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master1/AWADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master1/AWVALID} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/L1C_data/DA_in\[127:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/DA_write\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "Master1" 4 )} 
wvSetPosition -win $_nWave1 {("Master1" 4)}
wvSetPosition -win $_nWave1 {("Master1" 4)}
wvSetPosition -win $_nWave1 {("Master1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"CPU" \
{/top_tb/TOP/cpu_clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C_data" \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_req} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_write} \
{/top_tb/TOP/CPU_wrapper/L1C_data/hit} \
{/top_tb/TOP/CPU_wrapper/L1C_data/D_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/D_req} \
{/top_tb/TOP/CPU_wrapper/L1C_data/D_write} \
}
wvAddSignal -win $_nWave1 -group {"Master1" \
{/top_tb/TOP/CPU_wrapper/Master1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master1/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master1/WDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master1/AWADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master1/AWVALID} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/L1C_data/DA_in\[127:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/DA_write\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "Master1" 4 )} 
wvSetPosition -win $_nWave1 {("Master1" 4)}
wvSetPosition -win $_nWave1 {("Master1" 4)}
wvSetPosition -win $_nWave1 {("Master1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"CPU" \
{/top_tb/TOP/cpu_clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C_data" \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_req} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_write} \
{/top_tb/TOP/CPU_wrapper/L1C_data/hit} \
{/top_tb/TOP/CPU_wrapper/L1C_data/D_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/D_req} \
{/top_tb/TOP/CPU_wrapper/L1C_data/D_write} \
}
wvAddSignal -win $_nWave1 -group {"Master1" \
{/top_tb/TOP/CPU_wrapper/Master1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master1/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master1/WDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master1/AWADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master1/AWVALID} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/L1C_data/DA_in\[127:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/DA_write\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "Master1" 4 )} 
wvSetPosition -win $_nWave1 {("Master1" 4)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("Master1" 2)}
wvSetPosition -win $_nWave1 {("L1C_data" 9)}
wvSetPosition -win $_nWave1 {("L1C_data" 8)}
wvSetPosition -win $_nWave1 {("L1C_data" 7)}
wvSetPosition -win $_nWave1 {("L1C_data" 6)}
wvSetPosition -win $_nWave1 {("L1C_data" 5)}
wvSetPosition -win $_nWave1 {("L1C_data" 4)}
wvSetPosition -win $_nWave1 {("L1C_data" 3)}
wvSetPosition -win $_nWave1 {("L1C_data" 2)}
wvSetPosition -win $_nWave1 {("L1C_data" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C_data" 1)}
wvSetPosition -win $_nWave1 {("L1C_data" 2)}
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C_data" 2)}
wvSetPosition -win $_nWave1 {("L1C_data" 1)}
wvSelectSignal -win $_nWave1 {( "L1C_data" 2 )} 
wvSetPosition -win $_nWave1 {("L1C_data" 2)}
wvSetPosition -win $_nWave1 {("L1C_data" 1)}
wvSetPosition -win $_nWave1 {("L1C_data" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C_data" 0)}
wvSetPosition -win $_nWave1 {("L1C_data" 1)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/IF"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/L1C_data"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/L1C_inst"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/Master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/Master1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/L1C_data"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE_MEM_reg"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvSetPosition -win $_nWave1 {("L1C_data" 4)}
wvSetPosition -win $_nWave1 {("L1C_data" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"CPU" \
{/top_tb/TOP/cpu_clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C_data" \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_req} \
{/top_tb/TOP/CPU_wrapper/CPU/DM_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/DM_write} \
{/top_tb/TOP/CPU_wrapper/CPU/store_data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_write} \
{/top_tb/TOP/CPU_wrapper/L1C_data/hit} \
{/top_tb/TOP/CPU_wrapper/L1C_data/D_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/D_req} \
{/top_tb/TOP/CPU_wrapper/L1C_data/D_write} \
}
wvAddSignal -win $_nWave1 -group {"Master1" \
{/top_tb/TOP/CPU_wrapper/Master1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master1/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master1/WDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master1/AWADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master1/AWVALID} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/L1C_data/DA_in\[127:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/DA_write\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "L1C_data" 2 3 4 )} 
wvSetPosition -win $_nWave1 {("L1C_data" 4)}
wvSetPosition -win $_nWave1 {("L1C_data" 4)}
wvSetPosition -win $_nWave1 {("L1C_data" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"CPU" \
{/top_tb/TOP/cpu_clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/pc_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"L1C_data" \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_req} \
{/top_tb/TOP/CPU_wrapper/CPU/DM_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/DM_write} \
{/top_tb/TOP/CPU_wrapper/CPU/store_data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_addr\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_wait} \
{/top_tb/TOP/CPU_wrapper/L1C_data/core_write} \
{/top_tb/TOP/CPU_wrapper/L1C_data/hit} \
{/top_tb/TOP/CPU_wrapper/L1C_data/D_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/D_req} \
{/top_tb/TOP/CPU_wrapper/L1C_data/D_write} \
}
wvAddSignal -win $_nWave1 -group {"Master1" \
{/top_tb/TOP/CPU_wrapper/Master1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master1/ARADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master1/WDATA\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master1/AWADDR\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/Master1/AWVALID} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/L1C_data/DA_in\[127:0\]} \
{/top_tb/TOP/CPU_wrapper/L1C_data/DA_write\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "L1C_data" 2 3 4 )} 
wvSetPosition -win $_nWave1 {("L1C_data" 4)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("L1C_data" 3)}
wvSetPosition -win $_nWave1 {("L1C_data" 2)}
wvSetPosition -win $_nWave1 {("L1C_data" 1)}
wvSetPosition -win $_nWave1 {("L1C_data" 0)}
wvSetPosition -win $_nWave1 {("CPU" 2)}
wvSetPosition -win $_nWave1 {("CPU" 1)}
wvSetPosition -win $_nWave1 {("CPU" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("CPU" 2)}
wvSetPosition -win $_nWave1 {("CPU" 5)}
wvSelectSignal -win $_nWave1 {( "CPU" 2 )} 
wvResizeWindow -win $_nWave1 0 25 1920 1004
wvSelectSignal -win $_nWave1 {( "Master1" 2 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("CPU" 5)}
