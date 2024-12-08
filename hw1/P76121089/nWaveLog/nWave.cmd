wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/JengDeChang/VLSI_hw/hw1/P76121089/build/top.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/EXE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/EXE/CSR_Calculator"
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/EXE/CSR_Calculator/CSR_out\[31:0\]} \
{/top_tb/TOP/EXE/CSR_Calculator/CtrlSignalFlush} \
{/top_tb/TOP/EXE/CSR_Calculator/Instr_flush} \
{/top_tb/TOP/EXE/CSR_Calculator/cycle\[63:0\]} \
{/top_tb/TOP/EXE/CSR_Calculator/instret\[63:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/EXE/ALU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/EXE"
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/EXE/CSR_Calculator/CSR_out\[31:0\]} \
{/top_tb/TOP/EXE/CSR_Calculator/CtrlSignalFlush} \
{/top_tb/TOP/EXE/CSR_Calculator/Instr_flush} \
{/top_tb/TOP/EXE/CSR_Calculator/cycle\[63:0\]} \
{/top_tb/TOP/EXE/CSR_Calculator/instret\[63:0\]} \
{/top_tb/TOP/EXE/ALUOutSelect} \
{/top_tb/TOP/EXE/ALU_out\[31:0\]} \
{/top_tb/TOP/EXE/wire_CSR_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 7 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/EXE/CSR_Calculator/CSR_out\[31:0\]} \
{/top_tb/TOP/EXE/CSR_Calculator/CtrlSignalFlush} \
{/top_tb/TOP/EXE/CSR_Calculator/Instr_flush} \
{/top_tb/TOP/EXE/CSR_Calculator/cycle\[63:0\]} \
{/top_tb/TOP/EXE/CSR_Calculator/instret\[63:0\]} \
{/top_tb/TOP/EXE/ALUOutSelect} \
{/top_tb/TOP/EXE/ALU_out\[31:0\]} \
{/top_tb/TOP/EXE/wire_CSR_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 7 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvGetSignalClose -win $_nWave1
wvSelectGroup -win $_nWave1 {G2}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 3 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSelectGroup -win $_nWave1 {G3}
wvSetCursor -win $_nWave1 4722337.874852 -snap {("G3" 0)}
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
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSearchNext -win $_nWave1
wvGoToGroup -win $_nWave1 "G2"
wvSearchNext -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSearchPrev -win $_nWave1
wvSetSearchMode -win $_nWave1 -value 
wvGoToGroup -win $_nWave1 "G1"
wvSetSearchMode -win $_nWave1 -value 13cc
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvExit
