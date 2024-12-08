#----------------------------------------
# JasperGold Version Info
# tool      : JasperGold 2018.03
# platform  : Linux 3.10.0-693.el7.x86_64
# version   : 2018.03p001 64 bits
# build date: 2018.04.24 18:13:05 PDT
#----------------------------------------
# started Tue Sep 26 21:53:06 CST 2023
# hostname  : vlsicad6
# pid       : 23929
# arguments : '-label' 'session_0' '-console' 'vlsicad6:35106' '-style' 'windows' '-data' 'AQAAADx/////AAAAAAAAA3oBAAAAEABMAE0AUgBFAE0ATwBWAEU=' '-proj' '/home/user2/vsd23/vsd2311/Desktop/P76121089/script/jgproject/sessionLogs/session_0' '-init' '-hidden' '/home/user2/vsd23/vsd2311/Desktop/P76121089/script/jgproject/.tmp/.initCmds.tcl' 'superlint.tcl'
check_superlint -init
clear -all

# Config rules
config_rtlds -rule -enable -domain { LINT }
config_rtlds -rule -disable -tag { CAS_IS_DFRC SIG_IS_DLCK SIG_NO_TGFL SIG_NO_TGRS SIG_NO_TGST FSM_NO_MTRN FSM_NO_TRRN }
# vsd2018_constrain //
config_rtlds -rule  -disable -category { NAMING AUTO_FORMAL_DEAD_CODE AUTO_FORMAL_SIGNALS AUTO_FORMAL_ARITHMETIC_OVERFLOW }
config_rtlds -rule  -disable -tag { IDN_NR_SVKY ARY_MS_DRNG IDN_NR_AMKY IDN_NR_CKYW IDN_NR_SVKW ARY_NR_LBND VAR_NR_INDL INS_NR_PTEX INP_NO_USED OTP_NR_ASYA FLP_NR_MXCS OTP_UC_INST OTP_NR_UDRV REG_NR_TRRC INS_NR_INPR MOD_NS_GLGC } 
config_rtlds -rule  -disable -tag { REG_NR_RWRC  }
config_rtlds -rule  -disable -tag { BUS_IS_FLOT ASG_IS_XRCH }
#config_rtlds -rule  -reset -sync
# vsd2018_constrain //

analyze -sv +incdir+../include+../src/AHB ../src/top.sv ../sim/SRAM/SRAM_rtl.sv
elaborate -bbox true -top top

# Setup clock and reset
clock clk
reset rst

# Setup for CTL check
set_superlint_fsm_ctl_livelock true
set_superlint_fsm_ctl_deadlock true

# Setup for LTL check
#set_superlint_fsm_ctl_livelock false
#set_superlint_fsm_ctl_deadlock false
#set_superlint_add_automatic_task_assumption true

# Extract checks
check_superlint -extract

# Prove
set_superlint_prove_parallel_tasks on
set_prove_no_traces true
# check_superlint -prove -time_limit 10m -bg
check_superlint -clear
check_superlint -extract 
check_superlint -clear
check_superlint -extract 
check_superlint -report -violation -order category
check_superlint -report -violation -severity { error warning }  -order category
