verdiSetActWin -win $_nWave1
wvResizeWindow -win $_nWave1 0 31 1212 1061
wvResizeWindow -win $_nWave1 0 23 1920 1017
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/user2/vsd23/vsd2311/Desktop/P76121089/build/top.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvSetPosition -win $_nWave1 {("G1" 118)}
wvSetPosition -win $_nWave1 {("G1" 118)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/ARADDR_master0\[31:0\]} \
{/top_tb/TOP/ARADDR_master1\[31:0\]} \
{/top_tb/TOP/ARADDR_slave0\[31:0\]} \
{/top_tb/TOP/ARADDR_slave1\[31:0\]} \
{/top_tb/TOP/ARBURST_master0\[1:0\]} \
{/top_tb/TOP/ARBURST_master1\[1:0\]} \
{/top_tb/TOP/ARBURST_slave0\[1:0\]} \
{/top_tb/TOP/ARBURST_slave1\[1:0\]} \
{/top_tb/TOP/ARID_master0\[3:0\]} \
{/top_tb/TOP/ARID_master1\[3:0\]} \
{/top_tb/TOP/ARID_slave0\[7:0\]} \
{/top_tb/TOP/ARID_slave1\[7:0\]} \
{/top_tb/TOP/ARLEN_master0\[3:0\]} \
{/top_tb/TOP/ARLEN_master1\[3:0\]} \
{/top_tb/TOP/ARLEN_slave0\[3:0\]} \
{/top_tb/TOP/ARLEN_slave1\[3:0\]} \
{/top_tb/TOP/ARREADY_master0} \
{/top_tb/TOP/ARREADY_master1} \
{/top_tb/TOP/ARREADY_slave0} \
{/top_tb/TOP/ARREADY_slave1} \
{/top_tb/TOP/ARSIZE_master0\[2:0\]} \
{/top_tb/TOP/ARSIZE_master1\[2:0\]} \
{/top_tb/TOP/ARSIZE_slave0\[2:0\]} \
{/top_tb/TOP/ARSIZE_slave1\[2:0\]} \
{/top_tb/TOP/ARVALID_master0} \
{/top_tb/TOP/ARVALID_master1} \
{/top_tb/TOP/ARVALID_slave0} \
{/top_tb/TOP/ARVALID_slave1} \
{/top_tb/TOP/AWADDR_master0\[31:0\]} \
{/top_tb/TOP/AWADDR_master1\[31:0\]} \
{/top_tb/TOP/AWADDR_slave0\[31:0\]} \
{/top_tb/TOP/AWADDR_slave1\[31:0\]} \
{/top_tb/TOP/AWBURST_master0\[1:0\]} \
{/top_tb/TOP/AWBURST_master1\[1:0\]} \
{/top_tb/TOP/AWBURST_slave0\[1:0\]} \
{/top_tb/TOP/AWBURST_slave1\[1:0\]} \
{/top_tb/TOP/AWID_master0\[3:0\]} \
{/top_tb/TOP/AWID_master1\[3:0\]} \
{/top_tb/TOP/AWID_slave0\[7:0\]} \
{/top_tb/TOP/AWID_slave1\[7:0\]} \
{/top_tb/TOP/AWLEN_master0\[3:0\]} \
{/top_tb/TOP/AWLEN_master1\[3:0\]} \
{/top_tb/TOP/AWLEN_slave0\[3:0\]} \
{/top_tb/TOP/AWLEN_slave1\[3:0\]} \
{/top_tb/TOP/AWREADY_master0} \
{/top_tb/TOP/AWREADY_master1} \
{/top_tb/TOP/AWREADY_slave0} \
{/top_tb/TOP/AWREADY_slave1} \
{/top_tb/TOP/AWSIZE_master0\[2:0\]} \
{/top_tb/TOP/AWSIZE_master1\[2:0\]} \
{/top_tb/TOP/AWSIZE_slave0\[2:0\]} \
{/top_tb/TOP/AWSIZE_slave1\[2:0\]} \
{/top_tb/TOP/AWVALID_master0} \
{/top_tb/TOP/AWVALID_master1} \
{/top_tb/TOP/AWVALID_slave0} \
{/top_tb/TOP/AWVALID_slave1} \
{/top_tb/TOP/BID_master0\[3:0\]} \
{/top_tb/TOP/BID_master1\[3:0\]} \
{/top_tb/TOP/BID_slave0\[7:0\]} \
{/top_tb/TOP/BID_slave1\[7:0\]} \
{/top_tb/TOP/BREADY_master0} \
{/top_tb/TOP/BREADY_master1} \
{/top_tb/TOP/BREADY_slave0} \
{/top_tb/TOP/BREADY_slave1} \
{/top_tb/TOP/BRESP_master0\[1:0\]} \
{/top_tb/TOP/BRESP_master1\[1:0\]} \
{/top_tb/TOP/BRESP_slave0\[1:0\]} \
{/top_tb/TOP/BRESP_slave1\[1:0\]} \
{/top_tb/TOP/BVALID_master0} \
{/top_tb/TOP/BVALID_master1} \
{/top_tb/TOP/BVALID_slave0} \
{/top_tb/TOP/BVALID_slave1} \
{/top_tb/TOP/RDATA_master0\[31:0\]} \
{/top_tb/TOP/RDATA_master1\[31:0\]} \
{/top_tb/TOP/RDATA_slave0\[31:0\]} \
{/top_tb/TOP/RDATA_slave1\[31:0\]} \
{/top_tb/TOP/RID_master0\[3:0\]} \
{/top_tb/TOP/RID_master1\[3:0\]} \
{/top_tb/TOP/RID_slave0\[7:0\]} \
{/top_tb/TOP/RID_slave1\[7:0\]} \
{/top_tb/TOP/RLAST_master0} \
{/top_tb/TOP/RLAST_master1} \
{/top_tb/TOP/RLAST_slave0} \
{/top_tb/TOP/RLAST_slave1} \
{/top_tb/TOP/RREADY_master0} \
{/top_tb/TOP/RREADY_master1} \
{/top_tb/TOP/RREADY_slave0} \
{/top_tb/TOP/RREADY_slave1} \
{/top_tb/TOP/RRESP_master0\[1:0\]} \
{/top_tb/TOP/RRESP_master1\[1:0\]} \
{/top_tb/TOP/RRESP_slave0\[1:0\]} \
{/top_tb/TOP/RRESP_slave1\[1:0\]} \
{/top_tb/TOP/RVALID_master0} \
{/top_tb/TOP/RVALID_master1} \
{/top_tb/TOP/RVALID_slave0} \
{/top_tb/TOP/RVALID_slave1} \
{/top_tb/TOP/WDATA_master0\[31:0\]} \
{/top_tb/TOP/WDATA_master1\[31:0\]} \
{/top_tb/TOP/WDATA_slave0\[31:0\]} \
{/top_tb/TOP/WDATA_slave1\[31:0\]} \
{/top_tb/TOP/WLAST_master0} \
{/top_tb/TOP/WLAST_master1} \
{/top_tb/TOP/WLAST_slave0} \
{/top_tb/TOP/WLAST_slave1} \
{/top_tb/TOP/WREADY_master0} \
{/top_tb/TOP/WREADY_master1} \
{/top_tb/TOP/WREADY_slave0} \
{/top_tb/TOP/WREADY_slave1} \
{/top_tb/TOP/WSTRB_master0\[3:0\]} \
{/top_tb/TOP/WSTRB_master1\[3:0\]} \
{/top_tb/TOP/WSTRB_slave0\[3:0\]} \
{/top_tb/TOP/WSTRB_slave1\[3:0\]} \
{/top_tb/TOP/WVALID_master0} \
{/top_tb/TOP/WVALID_master1} \
{/top_tb/TOP/WVALID_slave0} \
{/top_tb/TOP/WVALID_slave1} \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 \
           40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 \
           62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 \
           84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 \
           105 106 107 108 109 110 111 112 113 114 115 116 117 118 )} 
wvSetPosition -win $_nWave1 {("G1" 118)}
wvSetPosition -win $_nWave1 {("G1" 118)}
wvSetPosition -win $_nWave1 {("G1" 118)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/ARADDR_master0\[31:0\]} \
{/top_tb/TOP/ARADDR_master1\[31:0\]} \
{/top_tb/TOP/ARADDR_slave0\[31:0\]} \
{/top_tb/TOP/ARADDR_slave1\[31:0\]} \
{/top_tb/TOP/ARBURST_master0\[1:0\]} \
{/top_tb/TOP/ARBURST_master1\[1:0\]} \
{/top_tb/TOP/ARBURST_slave0\[1:0\]} \
{/top_tb/TOP/ARBURST_slave1\[1:0\]} \
{/top_tb/TOP/ARID_master0\[3:0\]} \
{/top_tb/TOP/ARID_master1\[3:0\]} \
{/top_tb/TOP/ARID_slave0\[7:0\]} \
{/top_tb/TOP/ARID_slave1\[7:0\]} \
{/top_tb/TOP/ARLEN_master0\[3:0\]} \
{/top_tb/TOP/ARLEN_master1\[3:0\]} \
{/top_tb/TOP/ARLEN_slave0\[3:0\]} \
{/top_tb/TOP/ARLEN_slave1\[3:0\]} \
{/top_tb/TOP/ARREADY_master0} \
{/top_tb/TOP/ARREADY_master1} \
{/top_tb/TOP/ARREADY_slave0} \
{/top_tb/TOP/ARREADY_slave1} \
{/top_tb/TOP/ARSIZE_master0\[2:0\]} \
{/top_tb/TOP/ARSIZE_master1\[2:0\]} \
{/top_tb/TOP/ARSIZE_slave0\[2:0\]} \
{/top_tb/TOP/ARSIZE_slave1\[2:0\]} \
{/top_tb/TOP/ARVALID_master0} \
{/top_tb/TOP/ARVALID_master1} \
{/top_tb/TOP/ARVALID_slave0} \
{/top_tb/TOP/ARVALID_slave1} \
{/top_tb/TOP/AWADDR_master0\[31:0\]} \
{/top_tb/TOP/AWADDR_master1\[31:0\]} \
{/top_tb/TOP/AWADDR_slave0\[31:0\]} \
{/top_tb/TOP/AWADDR_slave1\[31:0\]} \
{/top_tb/TOP/AWBURST_master0\[1:0\]} \
{/top_tb/TOP/AWBURST_master1\[1:0\]} \
{/top_tb/TOP/AWBURST_slave0\[1:0\]} \
{/top_tb/TOP/AWBURST_slave1\[1:0\]} \
{/top_tb/TOP/AWID_master0\[3:0\]} \
{/top_tb/TOP/AWID_master1\[3:0\]} \
{/top_tb/TOP/AWID_slave0\[7:0\]} \
{/top_tb/TOP/AWID_slave1\[7:0\]} \
{/top_tb/TOP/AWLEN_master0\[3:0\]} \
{/top_tb/TOP/AWLEN_master1\[3:0\]} \
{/top_tb/TOP/AWLEN_slave0\[3:0\]} \
{/top_tb/TOP/AWLEN_slave1\[3:0\]} \
{/top_tb/TOP/AWREADY_master0} \
{/top_tb/TOP/AWREADY_master1} \
{/top_tb/TOP/AWREADY_slave0} \
{/top_tb/TOP/AWREADY_slave1} \
{/top_tb/TOP/AWSIZE_master0\[2:0\]} \
{/top_tb/TOP/AWSIZE_master1\[2:0\]} \
{/top_tb/TOP/AWSIZE_slave0\[2:0\]} \
{/top_tb/TOP/AWSIZE_slave1\[2:0\]} \
{/top_tb/TOP/AWVALID_master0} \
{/top_tb/TOP/AWVALID_master1} \
{/top_tb/TOP/AWVALID_slave0} \
{/top_tb/TOP/AWVALID_slave1} \
{/top_tb/TOP/BID_master0\[3:0\]} \
{/top_tb/TOP/BID_master1\[3:0\]} \
{/top_tb/TOP/BID_slave0\[7:0\]} \
{/top_tb/TOP/BID_slave1\[7:0\]} \
{/top_tb/TOP/BREADY_master0} \
{/top_tb/TOP/BREADY_master1} \
{/top_tb/TOP/BREADY_slave0} \
{/top_tb/TOP/BREADY_slave1} \
{/top_tb/TOP/BRESP_master0\[1:0\]} \
{/top_tb/TOP/BRESP_master1\[1:0\]} \
{/top_tb/TOP/BRESP_slave0\[1:0\]} \
{/top_tb/TOP/BRESP_slave1\[1:0\]} \
{/top_tb/TOP/BVALID_master0} \
{/top_tb/TOP/BVALID_master1} \
{/top_tb/TOP/BVALID_slave0} \
{/top_tb/TOP/BVALID_slave1} \
{/top_tb/TOP/RDATA_master0\[31:0\]} \
{/top_tb/TOP/RDATA_master1\[31:0\]} \
{/top_tb/TOP/RDATA_slave0\[31:0\]} \
{/top_tb/TOP/RDATA_slave1\[31:0\]} \
{/top_tb/TOP/RID_master0\[3:0\]} \
{/top_tb/TOP/RID_master1\[3:0\]} \
{/top_tb/TOP/RID_slave0\[7:0\]} \
{/top_tb/TOP/RID_slave1\[7:0\]} \
{/top_tb/TOP/RLAST_master0} \
{/top_tb/TOP/RLAST_master1} \
{/top_tb/TOP/RLAST_slave0} \
{/top_tb/TOP/RLAST_slave1} \
{/top_tb/TOP/RREADY_master0} \
{/top_tb/TOP/RREADY_master1} \
{/top_tb/TOP/RREADY_slave0} \
{/top_tb/TOP/RREADY_slave1} \
{/top_tb/TOP/RRESP_master0\[1:0\]} \
{/top_tb/TOP/RRESP_master1\[1:0\]} \
{/top_tb/TOP/RRESP_slave0\[1:0\]} \
{/top_tb/TOP/RRESP_slave1\[1:0\]} \
{/top_tb/TOP/RVALID_master0} \
{/top_tb/TOP/RVALID_master1} \
{/top_tb/TOP/RVALID_slave0} \
{/top_tb/TOP/RVALID_slave1} \
{/top_tb/TOP/WDATA_master0\[31:0\]} \
{/top_tb/TOP/WDATA_master1\[31:0\]} \
{/top_tb/TOP/WDATA_slave0\[31:0\]} \
{/top_tb/TOP/WDATA_slave1\[31:0\]} \
{/top_tb/TOP/WLAST_master0} \
{/top_tb/TOP/WLAST_master1} \
{/top_tb/TOP/WLAST_slave0} \
{/top_tb/TOP/WLAST_slave1} \
{/top_tb/TOP/WREADY_master0} \
{/top_tb/TOP/WREADY_master1} \
{/top_tb/TOP/WREADY_slave0} \
{/top_tb/TOP/WREADY_slave1} \
{/top_tb/TOP/WSTRB_master0\[3:0\]} \
{/top_tb/TOP/WSTRB_master1\[3:0\]} \
{/top_tb/TOP/WSTRB_slave0\[3:0\]} \
{/top_tb/TOP/WSTRB_slave1\[3:0\]} \
{/top_tb/TOP/WVALID_master0} \
{/top_tb/TOP/WVALID_master1} \
{/top_tb/TOP/WVALID_slave0} \
{/top_tb/TOP/WVALID_slave1} \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 \
           40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 \
           62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 \
           84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 \
           105 106 107 108 109 110 111 112 113 114 115 116 117 118 )} 
wvSetPosition -win $_nWave1 {("G1" 118)}
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
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 21291889.937767 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 21291181.372175 -snap {("G1" 118)}
wvSelectSignal -win $_nWave1 {( "G1" 89 )} 
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
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
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 4
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 4
wvScrollDown -win $_nWave1 4
wvScrollDown -win $_nWave1 4
wvScrollDown -win $_nWave1 3
wvScrollDown -win $_nWave1 5
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 3
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 3289.768823 -snap {("G1" 75)}
wvScrollUp -win $_nWave1 41
wvScrollUp -win $_nWave1 27
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvSetPosition -win $_nWave1 {("G1" 119)}
wvSetPosition -win $_nWave1 {("G1" 119)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/ARADDR_master0\[31:0\]} \
{/top_tb/TOP/ARADDR_master1\[31:0\]} \
{/top_tb/TOP/ARADDR_slave0\[31:0\]} \
{/top_tb/TOP/ARADDR_slave1\[31:0\]} \
{/top_tb/TOP/ARBURST_master0\[1:0\]} \
{/top_tb/TOP/ARBURST_master1\[1:0\]} \
{/top_tb/TOP/ARBURST_slave0\[1:0\]} \
{/top_tb/TOP/ARBURST_slave1\[1:0\]} \
{/top_tb/TOP/ARID_master0\[3:0\]} \
{/top_tb/TOP/ARID_master1\[3:0\]} \
{/top_tb/TOP/ARID_slave0\[7:0\]} \
{/top_tb/TOP/ARID_slave1\[7:0\]} \
{/top_tb/TOP/ARLEN_master0\[3:0\]} \
{/top_tb/TOP/ARLEN_master1\[3:0\]} \
{/top_tb/TOP/ARLEN_slave0\[3:0\]} \
{/top_tb/TOP/ARLEN_slave1\[3:0\]} \
{/top_tb/TOP/ARREADY_master0} \
{/top_tb/TOP/ARREADY_master1} \
{/top_tb/TOP/ARREADY_slave0} \
{/top_tb/TOP/ARREADY_slave1} \
{/top_tb/TOP/ARSIZE_master0\[2:0\]} \
{/top_tb/TOP/ARSIZE_master1\[2:0\]} \
{/top_tb/TOP/ARSIZE_slave0\[2:0\]} \
{/top_tb/TOP/ARSIZE_slave1\[2:0\]} \
{/top_tb/TOP/ARVALID_master0} \
{/top_tb/TOP/ARVALID_master1} \
{/top_tb/TOP/ARVALID_slave0} \
{/top_tb/TOP/ARVALID_slave1} \
{/top_tb/TOP/AWADDR_master0\[31:0\]} \
{/top_tb/TOP/AWADDR_master1\[31:0\]} \
{/top_tb/TOP/AWADDR_slave0\[31:0\]} \
{/top_tb/TOP/AWADDR_slave1\[31:0\]} \
{/top_tb/TOP/AWBURST_master0\[1:0\]} \
{/top_tb/TOP/AWBURST_master1\[1:0\]} \
{/top_tb/TOP/AWBURST_slave0\[1:0\]} \
{/top_tb/TOP/AWBURST_slave1\[1:0\]} \
{/top_tb/TOP/AWID_master0\[3:0\]} \
{/top_tb/TOP/AWID_master1\[3:0\]} \
{/top_tb/TOP/AWID_slave0\[7:0\]} \
{/top_tb/TOP/AWID_slave1\[7:0\]} \
{/top_tb/TOP/AWLEN_master0\[3:0\]} \
{/top_tb/TOP/AWLEN_master1\[3:0\]} \
{/top_tb/TOP/AWLEN_slave0\[3:0\]} \
{/top_tb/TOP/AWLEN_slave1\[3:0\]} \
{/top_tb/TOP/AWREADY_master0} \
{/top_tb/TOP/AWREADY_master1} \
{/top_tb/TOP/AWREADY_slave0} \
{/top_tb/TOP/AWREADY_slave1} \
{/top_tb/TOP/AWSIZE_master0\[2:0\]} \
{/top_tb/TOP/AWSIZE_master1\[2:0\]} \
{/top_tb/TOP/AWSIZE_slave0\[2:0\]} \
{/top_tb/TOP/AWSIZE_slave1\[2:0\]} \
{/top_tb/TOP/AWVALID_master0} \
{/top_tb/TOP/AWVALID_master1} \
{/top_tb/TOP/AWVALID_slave0} \
{/top_tb/TOP/AWVALID_slave1} \
{/top_tb/TOP/BID_master0\[3:0\]} \
{/top_tb/TOP/BID_master1\[3:0\]} \
{/top_tb/TOP/BID_slave0\[7:0\]} \
{/top_tb/TOP/BID_slave1\[7:0\]} \
{/top_tb/TOP/BREADY_master0} \
{/top_tb/TOP/BREADY_master1} \
{/top_tb/TOP/BREADY_slave0} \
{/top_tb/TOP/BREADY_slave1} \
{/top_tb/TOP/BRESP_master0\[1:0\]} \
{/top_tb/TOP/BRESP_master1\[1:0\]} \
{/top_tb/TOP/BRESP_slave0\[1:0\]} \
{/top_tb/TOP/BRESP_slave1\[1:0\]} \
{/top_tb/TOP/BVALID_master0} \
{/top_tb/TOP/BVALID_master1} \
{/top_tb/TOP/BVALID_slave0} \
{/top_tb/TOP/BVALID_slave1} \
{/top_tb/TOP/RDATA_master0\[31:0\]} \
{/top_tb/TOP/RDATA_master1\[31:0\]} \
{/top_tb/TOP/RDATA_slave0\[31:0\]} \
{/top_tb/TOP/RDATA_slave1\[31:0\]} \
{/top_tb/TOP/RID_master0\[3:0\]} \
{/top_tb/TOP/RID_master1\[3:0\]} \
{/top_tb/TOP/RID_slave0\[7:0\]} \
{/top_tb/TOP/RID_slave1\[7:0\]} \
{/top_tb/TOP/RLAST_master0} \
{/top_tb/TOP/RLAST_master1} \
{/top_tb/TOP/RLAST_slave0} \
{/top_tb/TOP/RLAST_slave1} \
{/top_tb/TOP/RREADY_master0} \
{/top_tb/TOP/RREADY_master1} \
{/top_tb/TOP/RREADY_slave0} \
{/top_tb/TOP/RREADY_slave1} \
{/top_tb/TOP/RRESP_master0\[1:0\]} \
{/top_tb/TOP/RRESP_master1\[1:0\]} \
{/top_tb/TOP/RRESP_slave0\[1:0\]} \
{/top_tb/TOP/RRESP_slave1\[1:0\]} \
{/top_tb/TOP/RVALID_master0} \
{/top_tb/TOP/RVALID_master1} \
{/top_tb/TOP/RVALID_slave0} \
{/top_tb/TOP/RVALID_slave1} \
{/top_tb/TOP/WDATA_master0\[31:0\]} \
{/top_tb/TOP/WDATA_master1\[31:0\]} \
{/top_tb/TOP/WDATA_slave0\[31:0\]} \
{/top_tb/TOP/WDATA_slave1\[31:0\]} \
{/top_tb/TOP/WLAST_master0} \
{/top_tb/TOP/WLAST_master1} \
{/top_tb/TOP/WLAST_slave0} \
{/top_tb/TOP/WLAST_slave1} \
{/top_tb/TOP/WREADY_master0} \
{/top_tb/TOP/WREADY_master1} \
{/top_tb/TOP/WREADY_slave0} \
{/top_tb/TOP/WREADY_slave1} \
{/top_tb/TOP/WSTRB_master0\[3:0\]} \
{/top_tb/TOP/WSTRB_master1\[3:0\]} \
{/top_tb/TOP/WSTRB_slave0\[3:0\]} \
{/top_tb/TOP/WSTRB_slave1\[3:0\]} \
{/top_tb/TOP/WVALID_master0} \
{/top_tb/TOP/WVALID_master1} \
{/top_tb/TOP/WVALID_slave0} \
{/top_tb/TOP/WVALID_slave1} \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/ID_pc_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 119 )} 
wvSetPosition -win $_nWave1 {("G1" 119)}
wvSetPosition -win $_nWave1 {("G1" 119)}
wvSetPosition -win $_nWave1 {("G1" 119)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/ARADDR_master0\[31:0\]} \
{/top_tb/TOP/ARADDR_master1\[31:0\]} \
{/top_tb/TOP/ARADDR_slave0\[31:0\]} \
{/top_tb/TOP/ARADDR_slave1\[31:0\]} \
{/top_tb/TOP/ARBURST_master0\[1:0\]} \
{/top_tb/TOP/ARBURST_master1\[1:0\]} \
{/top_tb/TOP/ARBURST_slave0\[1:0\]} \
{/top_tb/TOP/ARBURST_slave1\[1:0\]} \
{/top_tb/TOP/ARID_master0\[3:0\]} \
{/top_tb/TOP/ARID_master1\[3:0\]} \
{/top_tb/TOP/ARID_slave0\[7:0\]} \
{/top_tb/TOP/ARID_slave1\[7:0\]} \
{/top_tb/TOP/ARLEN_master0\[3:0\]} \
{/top_tb/TOP/ARLEN_master1\[3:0\]} \
{/top_tb/TOP/ARLEN_slave0\[3:0\]} \
{/top_tb/TOP/ARLEN_slave1\[3:0\]} \
{/top_tb/TOP/ARREADY_master0} \
{/top_tb/TOP/ARREADY_master1} \
{/top_tb/TOP/ARREADY_slave0} \
{/top_tb/TOP/ARREADY_slave1} \
{/top_tb/TOP/ARSIZE_master0\[2:0\]} \
{/top_tb/TOP/ARSIZE_master1\[2:0\]} \
{/top_tb/TOP/ARSIZE_slave0\[2:0\]} \
{/top_tb/TOP/ARSIZE_slave1\[2:0\]} \
{/top_tb/TOP/ARVALID_master0} \
{/top_tb/TOP/ARVALID_master1} \
{/top_tb/TOP/ARVALID_slave0} \
{/top_tb/TOP/ARVALID_slave1} \
{/top_tb/TOP/AWADDR_master0\[31:0\]} \
{/top_tb/TOP/AWADDR_master1\[31:0\]} \
{/top_tb/TOP/AWADDR_slave0\[31:0\]} \
{/top_tb/TOP/AWADDR_slave1\[31:0\]} \
{/top_tb/TOP/AWBURST_master0\[1:0\]} \
{/top_tb/TOP/AWBURST_master1\[1:0\]} \
{/top_tb/TOP/AWBURST_slave0\[1:0\]} \
{/top_tb/TOP/AWBURST_slave1\[1:0\]} \
{/top_tb/TOP/AWID_master0\[3:0\]} \
{/top_tb/TOP/AWID_master1\[3:0\]} \
{/top_tb/TOP/AWID_slave0\[7:0\]} \
{/top_tb/TOP/AWID_slave1\[7:0\]} \
{/top_tb/TOP/AWLEN_master0\[3:0\]} \
{/top_tb/TOP/AWLEN_master1\[3:0\]} \
{/top_tb/TOP/AWLEN_slave0\[3:0\]} \
{/top_tb/TOP/AWLEN_slave1\[3:0\]} \
{/top_tb/TOP/AWREADY_master0} \
{/top_tb/TOP/AWREADY_master1} \
{/top_tb/TOP/AWREADY_slave0} \
{/top_tb/TOP/AWREADY_slave1} \
{/top_tb/TOP/AWSIZE_master0\[2:0\]} \
{/top_tb/TOP/AWSIZE_master1\[2:0\]} \
{/top_tb/TOP/AWSIZE_slave0\[2:0\]} \
{/top_tb/TOP/AWSIZE_slave1\[2:0\]} \
{/top_tb/TOP/AWVALID_master0} \
{/top_tb/TOP/AWVALID_master1} \
{/top_tb/TOP/AWVALID_slave0} \
{/top_tb/TOP/AWVALID_slave1} \
{/top_tb/TOP/BID_master0\[3:0\]} \
{/top_tb/TOP/BID_master1\[3:0\]} \
{/top_tb/TOP/BID_slave0\[7:0\]} \
{/top_tb/TOP/BID_slave1\[7:0\]} \
{/top_tb/TOP/BREADY_master0} \
{/top_tb/TOP/BREADY_master1} \
{/top_tb/TOP/BREADY_slave0} \
{/top_tb/TOP/BREADY_slave1} \
{/top_tb/TOP/BRESP_master0\[1:0\]} \
{/top_tb/TOP/BRESP_master1\[1:0\]} \
{/top_tb/TOP/BRESP_slave0\[1:0\]} \
{/top_tb/TOP/BRESP_slave1\[1:0\]} \
{/top_tb/TOP/BVALID_master0} \
{/top_tb/TOP/BVALID_master1} \
{/top_tb/TOP/BVALID_slave0} \
{/top_tb/TOP/BVALID_slave1} \
{/top_tb/TOP/RDATA_master0\[31:0\]} \
{/top_tb/TOP/RDATA_master1\[31:0\]} \
{/top_tb/TOP/RDATA_slave0\[31:0\]} \
{/top_tb/TOP/RDATA_slave1\[31:0\]} \
{/top_tb/TOP/RID_master0\[3:0\]} \
{/top_tb/TOP/RID_master1\[3:0\]} \
{/top_tb/TOP/RID_slave0\[7:0\]} \
{/top_tb/TOP/RID_slave1\[7:0\]} \
{/top_tb/TOP/RLAST_master0} \
{/top_tb/TOP/RLAST_master1} \
{/top_tb/TOP/RLAST_slave0} \
{/top_tb/TOP/RLAST_slave1} \
{/top_tb/TOP/RREADY_master0} \
{/top_tb/TOP/RREADY_master1} \
{/top_tb/TOP/RREADY_slave0} \
{/top_tb/TOP/RREADY_slave1} \
{/top_tb/TOP/RRESP_master0\[1:0\]} \
{/top_tb/TOP/RRESP_master1\[1:0\]} \
{/top_tb/TOP/RRESP_slave0\[1:0\]} \
{/top_tb/TOP/RRESP_slave1\[1:0\]} \
{/top_tb/TOP/RVALID_master0} \
{/top_tb/TOP/RVALID_master1} \
{/top_tb/TOP/RVALID_slave0} \
{/top_tb/TOP/RVALID_slave1} \
{/top_tb/TOP/WDATA_master0\[31:0\]} \
{/top_tb/TOP/WDATA_master1\[31:0\]} \
{/top_tb/TOP/WDATA_slave0\[31:0\]} \
{/top_tb/TOP/WDATA_slave1\[31:0\]} \
{/top_tb/TOP/WLAST_master0} \
{/top_tb/TOP/WLAST_master1} \
{/top_tb/TOP/WLAST_slave0} \
{/top_tb/TOP/WLAST_slave1} \
{/top_tb/TOP/WREADY_master0} \
{/top_tb/TOP/WREADY_master1} \
{/top_tb/TOP/WREADY_slave0} \
{/top_tb/TOP/WREADY_slave1} \
{/top_tb/TOP/WSTRB_master0\[3:0\]} \
{/top_tb/TOP/WSTRB_master1\[3:0\]} \
{/top_tb/TOP/WSTRB_slave0\[3:0\]} \
{/top_tb/TOP/WSTRB_slave1\[3:0\]} \
{/top_tb/TOP/WVALID_master0} \
{/top_tb/TOP/WVALID_master1} \
{/top_tb/TOP/WVALID_slave0} \
{/top_tb/TOP/WVALID_slave1} \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/ID_pc_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 119 )} 
wvSetPosition -win $_nWave1 {("G1" 119)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvSetPosition -win $_nWave1 {("G1" 120)}
wvSetPosition -win $_nWave1 {("G1" 120)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/ARADDR_master0\[31:0\]} \
{/top_tb/TOP/ARADDR_master1\[31:0\]} \
{/top_tb/TOP/ARADDR_slave0\[31:0\]} \
{/top_tb/TOP/ARADDR_slave1\[31:0\]} \
{/top_tb/TOP/ARBURST_master0\[1:0\]} \
{/top_tb/TOP/ARBURST_master1\[1:0\]} \
{/top_tb/TOP/ARBURST_slave0\[1:0\]} \
{/top_tb/TOP/ARBURST_slave1\[1:0\]} \
{/top_tb/TOP/ARID_master0\[3:0\]} \
{/top_tb/TOP/ARID_master1\[3:0\]} \
{/top_tb/TOP/ARID_slave0\[7:0\]} \
{/top_tb/TOP/ARID_slave1\[7:0\]} \
{/top_tb/TOP/ARLEN_master0\[3:0\]} \
{/top_tb/TOP/ARLEN_master1\[3:0\]} \
{/top_tb/TOP/ARLEN_slave0\[3:0\]} \
{/top_tb/TOP/ARLEN_slave1\[3:0\]} \
{/top_tb/TOP/ARREADY_master0} \
{/top_tb/TOP/ARREADY_master1} \
{/top_tb/TOP/ARREADY_slave0} \
{/top_tb/TOP/ARREADY_slave1} \
{/top_tb/TOP/ARSIZE_master0\[2:0\]} \
{/top_tb/TOP/ARSIZE_master1\[2:0\]} \
{/top_tb/TOP/ARSIZE_slave0\[2:0\]} \
{/top_tb/TOP/ARSIZE_slave1\[2:0\]} \
{/top_tb/TOP/ARVALID_master0} \
{/top_tb/TOP/ARVALID_master1} \
{/top_tb/TOP/ARVALID_slave0} \
{/top_tb/TOP/ARVALID_slave1} \
{/top_tb/TOP/AWADDR_master0\[31:0\]} \
{/top_tb/TOP/AWADDR_master1\[31:0\]} \
{/top_tb/TOP/AWADDR_slave0\[31:0\]} \
{/top_tb/TOP/AWADDR_slave1\[31:0\]} \
{/top_tb/TOP/AWBURST_master0\[1:0\]} \
{/top_tb/TOP/AWBURST_master1\[1:0\]} \
{/top_tb/TOP/AWBURST_slave0\[1:0\]} \
{/top_tb/TOP/AWBURST_slave1\[1:0\]} \
{/top_tb/TOP/AWID_master0\[3:0\]} \
{/top_tb/TOP/AWID_master1\[3:0\]} \
{/top_tb/TOP/AWID_slave0\[7:0\]} \
{/top_tb/TOP/AWID_slave1\[7:0\]} \
{/top_tb/TOP/AWLEN_master0\[3:0\]} \
{/top_tb/TOP/AWLEN_master1\[3:0\]} \
{/top_tb/TOP/AWLEN_slave0\[3:0\]} \
{/top_tb/TOP/AWLEN_slave1\[3:0\]} \
{/top_tb/TOP/AWREADY_master0} \
{/top_tb/TOP/AWREADY_master1} \
{/top_tb/TOP/AWREADY_slave0} \
{/top_tb/TOP/AWREADY_slave1} \
{/top_tb/TOP/AWSIZE_master0\[2:0\]} \
{/top_tb/TOP/AWSIZE_master1\[2:0\]} \
{/top_tb/TOP/AWSIZE_slave0\[2:0\]} \
{/top_tb/TOP/AWSIZE_slave1\[2:0\]} \
{/top_tb/TOP/AWVALID_master0} \
{/top_tb/TOP/AWVALID_master1} \
{/top_tb/TOP/AWVALID_slave0} \
{/top_tb/TOP/AWVALID_slave1} \
{/top_tb/TOP/BID_master0\[3:0\]} \
{/top_tb/TOP/BID_master1\[3:0\]} \
{/top_tb/TOP/BID_slave0\[7:0\]} \
{/top_tb/TOP/BID_slave1\[7:0\]} \
{/top_tb/TOP/BREADY_master0} \
{/top_tb/TOP/BREADY_master1} \
{/top_tb/TOP/BREADY_slave0} \
{/top_tb/TOP/BREADY_slave1} \
{/top_tb/TOP/BRESP_master0\[1:0\]} \
{/top_tb/TOP/BRESP_master1\[1:0\]} \
{/top_tb/TOP/BRESP_slave0\[1:0\]} \
{/top_tb/TOP/BRESP_slave1\[1:0\]} \
{/top_tb/TOP/BVALID_master0} \
{/top_tb/TOP/BVALID_master1} \
{/top_tb/TOP/BVALID_slave0} \
{/top_tb/TOP/BVALID_slave1} \
{/top_tb/TOP/RDATA_master0\[31:0\]} \
{/top_tb/TOP/RDATA_master1\[31:0\]} \
{/top_tb/TOP/RDATA_slave0\[31:0\]} \
{/top_tb/TOP/RDATA_slave1\[31:0\]} \
{/top_tb/TOP/RID_master0\[3:0\]} \
{/top_tb/TOP/RID_master1\[3:0\]} \
{/top_tb/TOP/RID_slave0\[7:0\]} \
{/top_tb/TOP/RID_slave1\[7:0\]} \
{/top_tb/TOP/RLAST_master0} \
{/top_tb/TOP/RLAST_master1} \
{/top_tb/TOP/RLAST_slave0} \
{/top_tb/TOP/RLAST_slave1} \
{/top_tb/TOP/RREADY_master0} \
{/top_tb/TOP/RREADY_master1} \
{/top_tb/TOP/RREADY_slave0} \
{/top_tb/TOP/RREADY_slave1} \
{/top_tb/TOP/RRESP_master0\[1:0\]} \
{/top_tb/TOP/RRESP_master1\[1:0\]} \
{/top_tb/TOP/RRESP_slave0\[1:0\]} \
{/top_tb/TOP/RRESP_slave1\[1:0\]} \
{/top_tb/TOP/RVALID_master0} \
{/top_tb/TOP/RVALID_master1} \
{/top_tb/TOP/RVALID_slave0} \
{/top_tb/TOP/RVALID_slave1} \
{/top_tb/TOP/WDATA_master0\[31:0\]} \
{/top_tb/TOP/WDATA_master1\[31:0\]} \
{/top_tb/TOP/WDATA_slave0\[31:0\]} \
{/top_tb/TOP/WDATA_slave1\[31:0\]} \
{/top_tb/TOP/WLAST_master0} \
{/top_tb/TOP/WLAST_master1} \
{/top_tb/TOP/WLAST_slave0} \
{/top_tb/TOP/WLAST_slave1} \
{/top_tb/TOP/WREADY_master0} \
{/top_tb/TOP/WREADY_master1} \
{/top_tb/TOP/WREADY_slave0} \
{/top_tb/TOP/WREADY_slave1} \
{/top_tb/TOP/WSTRB_master0\[3:0\]} \
{/top_tb/TOP/WSTRB_master1\[3:0\]} \
{/top_tb/TOP/WSTRB_slave0\[3:0\]} \
{/top_tb/TOP/WSTRB_slave1\[3:0\]} \
{/top_tb/TOP/WVALID_master0} \
{/top_tb/TOP/WVALID_master1} \
{/top_tb/TOP/WVALID_slave0} \
{/top_tb/TOP/WVALID_slave1} \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/ID_pc_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IM_stall} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 120 )} 
wvSetPosition -win $_nWave1 {("G1" 120)}
wvSetPosition -win $_nWave1 {("G1" 121)}
wvSetPosition -win $_nWave1 {("G1" 121)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/ARADDR_master0\[31:0\]} \
{/top_tb/TOP/ARADDR_master1\[31:0\]} \
{/top_tb/TOP/ARADDR_slave0\[31:0\]} \
{/top_tb/TOP/ARADDR_slave1\[31:0\]} \
{/top_tb/TOP/ARBURST_master0\[1:0\]} \
{/top_tb/TOP/ARBURST_master1\[1:0\]} \
{/top_tb/TOP/ARBURST_slave0\[1:0\]} \
{/top_tb/TOP/ARBURST_slave1\[1:0\]} \
{/top_tb/TOP/ARID_master0\[3:0\]} \
{/top_tb/TOP/ARID_master1\[3:0\]} \
{/top_tb/TOP/ARID_slave0\[7:0\]} \
{/top_tb/TOP/ARID_slave1\[7:0\]} \
{/top_tb/TOP/ARLEN_master0\[3:0\]} \
{/top_tb/TOP/ARLEN_master1\[3:0\]} \
{/top_tb/TOP/ARLEN_slave0\[3:0\]} \
{/top_tb/TOP/ARLEN_slave1\[3:0\]} \
{/top_tb/TOP/ARREADY_master0} \
{/top_tb/TOP/ARREADY_master1} \
{/top_tb/TOP/ARREADY_slave0} \
{/top_tb/TOP/ARREADY_slave1} \
{/top_tb/TOP/ARSIZE_master0\[2:0\]} \
{/top_tb/TOP/ARSIZE_master1\[2:0\]} \
{/top_tb/TOP/ARSIZE_slave0\[2:0\]} \
{/top_tb/TOP/ARSIZE_slave1\[2:0\]} \
{/top_tb/TOP/ARVALID_master0} \
{/top_tb/TOP/ARVALID_master1} \
{/top_tb/TOP/ARVALID_slave0} \
{/top_tb/TOP/ARVALID_slave1} \
{/top_tb/TOP/AWADDR_master0\[31:0\]} \
{/top_tb/TOP/AWADDR_master1\[31:0\]} \
{/top_tb/TOP/AWADDR_slave0\[31:0\]} \
{/top_tb/TOP/AWADDR_slave1\[31:0\]} \
{/top_tb/TOP/AWBURST_master0\[1:0\]} \
{/top_tb/TOP/AWBURST_master1\[1:0\]} \
{/top_tb/TOP/AWBURST_slave0\[1:0\]} \
{/top_tb/TOP/AWBURST_slave1\[1:0\]} \
{/top_tb/TOP/AWID_master0\[3:0\]} \
{/top_tb/TOP/AWID_master1\[3:0\]} \
{/top_tb/TOP/AWID_slave0\[7:0\]} \
{/top_tb/TOP/AWID_slave1\[7:0\]} \
{/top_tb/TOP/AWLEN_master0\[3:0\]} \
{/top_tb/TOP/AWLEN_master1\[3:0\]} \
{/top_tb/TOP/AWLEN_slave0\[3:0\]} \
{/top_tb/TOP/AWLEN_slave1\[3:0\]} \
{/top_tb/TOP/AWREADY_master0} \
{/top_tb/TOP/AWREADY_master1} \
{/top_tb/TOP/AWREADY_slave0} \
{/top_tb/TOP/AWREADY_slave1} \
{/top_tb/TOP/AWSIZE_master0\[2:0\]} \
{/top_tb/TOP/AWSIZE_master1\[2:0\]} \
{/top_tb/TOP/AWSIZE_slave0\[2:0\]} \
{/top_tb/TOP/AWSIZE_slave1\[2:0\]} \
{/top_tb/TOP/AWVALID_master0} \
{/top_tb/TOP/AWVALID_master1} \
{/top_tb/TOP/AWVALID_slave0} \
{/top_tb/TOP/AWVALID_slave1} \
{/top_tb/TOP/BID_master0\[3:0\]} \
{/top_tb/TOP/BID_master1\[3:0\]} \
{/top_tb/TOP/BID_slave0\[7:0\]} \
{/top_tb/TOP/BID_slave1\[7:0\]} \
{/top_tb/TOP/BREADY_master0} \
{/top_tb/TOP/BREADY_master1} \
{/top_tb/TOP/BREADY_slave0} \
{/top_tb/TOP/BREADY_slave1} \
{/top_tb/TOP/BRESP_master0\[1:0\]} \
{/top_tb/TOP/BRESP_master1\[1:0\]} \
{/top_tb/TOP/BRESP_slave0\[1:0\]} \
{/top_tb/TOP/BRESP_slave1\[1:0\]} \
{/top_tb/TOP/BVALID_master0} \
{/top_tb/TOP/BVALID_master1} \
{/top_tb/TOP/BVALID_slave0} \
{/top_tb/TOP/BVALID_slave1} \
{/top_tb/TOP/RDATA_master0\[31:0\]} \
{/top_tb/TOP/RDATA_master1\[31:0\]} \
{/top_tb/TOP/RDATA_slave0\[31:0\]} \
{/top_tb/TOP/RDATA_slave1\[31:0\]} \
{/top_tb/TOP/RID_master0\[3:0\]} \
{/top_tb/TOP/RID_master1\[3:0\]} \
{/top_tb/TOP/RID_slave0\[7:0\]} \
{/top_tb/TOP/RID_slave1\[7:0\]} \
{/top_tb/TOP/RLAST_master0} \
{/top_tb/TOP/RLAST_master1} \
{/top_tb/TOP/RLAST_slave0} \
{/top_tb/TOP/RLAST_slave1} \
{/top_tb/TOP/RREADY_master0} \
{/top_tb/TOP/RREADY_master1} \
{/top_tb/TOP/RREADY_slave0} \
{/top_tb/TOP/RREADY_slave1} \
{/top_tb/TOP/RRESP_master0\[1:0\]} \
{/top_tb/TOP/RRESP_master1\[1:0\]} \
{/top_tb/TOP/RRESP_slave0\[1:0\]} \
{/top_tb/TOP/RRESP_slave1\[1:0\]} \
{/top_tb/TOP/RVALID_master0} \
{/top_tb/TOP/RVALID_master1} \
{/top_tb/TOP/RVALID_slave0} \
{/top_tb/TOP/RVALID_slave1} \
{/top_tb/TOP/WDATA_master0\[31:0\]} \
{/top_tb/TOP/WDATA_master1\[31:0\]} \
{/top_tb/TOP/WDATA_slave0\[31:0\]} \
{/top_tb/TOP/WDATA_slave1\[31:0\]} \
{/top_tb/TOP/WLAST_master0} \
{/top_tb/TOP/WLAST_master1} \
{/top_tb/TOP/WLAST_slave0} \
{/top_tb/TOP/WLAST_slave1} \
{/top_tb/TOP/WREADY_master0} \
{/top_tb/TOP/WREADY_master1} \
{/top_tb/TOP/WREADY_slave0} \
{/top_tb/TOP/WREADY_slave1} \
{/top_tb/TOP/WSTRB_master0\[3:0\]} \
{/top_tb/TOP/WSTRB_master1\[3:0\]} \
{/top_tb/TOP/WSTRB_slave0\[3:0\]} \
{/top_tb/TOP/WSTRB_slave1\[3:0\]} \
{/top_tb/TOP/WVALID_master0} \
{/top_tb/TOP/WVALID_master1} \
{/top_tb/TOP/WVALID_slave0} \
{/top_tb/TOP/WVALID_slave1} \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/ID_pc_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IM_stall} \
{/top_tb/TOP/CPU_wrapper/CPU/DM_stall} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 121 )} 
wvSetPosition -win $_nWave1 {("G1" 121)}
wvSetPosition -win $_nWave1 {("G1" 121)}
wvSetPosition -win $_nWave1 {("G1" 121)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/ARADDR_master0\[31:0\]} \
{/top_tb/TOP/ARADDR_master1\[31:0\]} \
{/top_tb/TOP/ARADDR_slave0\[31:0\]} \
{/top_tb/TOP/ARADDR_slave1\[31:0\]} \
{/top_tb/TOP/ARBURST_master0\[1:0\]} \
{/top_tb/TOP/ARBURST_master1\[1:0\]} \
{/top_tb/TOP/ARBURST_slave0\[1:0\]} \
{/top_tb/TOP/ARBURST_slave1\[1:0\]} \
{/top_tb/TOP/ARID_master0\[3:0\]} \
{/top_tb/TOP/ARID_master1\[3:0\]} \
{/top_tb/TOP/ARID_slave0\[7:0\]} \
{/top_tb/TOP/ARID_slave1\[7:0\]} \
{/top_tb/TOP/ARLEN_master0\[3:0\]} \
{/top_tb/TOP/ARLEN_master1\[3:0\]} \
{/top_tb/TOP/ARLEN_slave0\[3:0\]} \
{/top_tb/TOP/ARLEN_slave1\[3:0\]} \
{/top_tb/TOP/ARREADY_master0} \
{/top_tb/TOP/ARREADY_master1} \
{/top_tb/TOP/ARREADY_slave0} \
{/top_tb/TOP/ARREADY_slave1} \
{/top_tb/TOP/ARSIZE_master0\[2:0\]} \
{/top_tb/TOP/ARSIZE_master1\[2:0\]} \
{/top_tb/TOP/ARSIZE_slave0\[2:0\]} \
{/top_tb/TOP/ARSIZE_slave1\[2:0\]} \
{/top_tb/TOP/ARVALID_master0} \
{/top_tb/TOP/ARVALID_master1} \
{/top_tb/TOP/ARVALID_slave0} \
{/top_tb/TOP/ARVALID_slave1} \
{/top_tb/TOP/AWADDR_master0\[31:0\]} \
{/top_tb/TOP/AWADDR_master1\[31:0\]} \
{/top_tb/TOP/AWADDR_slave0\[31:0\]} \
{/top_tb/TOP/AWADDR_slave1\[31:0\]} \
{/top_tb/TOP/AWBURST_master0\[1:0\]} \
{/top_tb/TOP/AWBURST_master1\[1:0\]} \
{/top_tb/TOP/AWBURST_slave0\[1:0\]} \
{/top_tb/TOP/AWBURST_slave1\[1:0\]} \
{/top_tb/TOP/AWID_master0\[3:0\]} \
{/top_tb/TOP/AWID_master1\[3:0\]} \
{/top_tb/TOP/AWID_slave0\[7:0\]} \
{/top_tb/TOP/AWID_slave1\[7:0\]} \
{/top_tb/TOP/AWLEN_master0\[3:0\]} \
{/top_tb/TOP/AWLEN_master1\[3:0\]} \
{/top_tb/TOP/AWLEN_slave0\[3:0\]} \
{/top_tb/TOP/AWLEN_slave1\[3:0\]} \
{/top_tb/TOP/AWREADY_master0} \
{/top_tb/TOP/AWREADY_master1} \
{/top_tb/TOP/AWREADY_slave0} \
{/top_tb/TOP/AWREADY_slave1} \
{/top_tb/TOP/AWSIZE_master0\[2:0\]} \
{/top_tb/TOP/AWSIZE_master1\[2:0\]} \
{/top_tb/TOP/AWSIZE_slave0\[2:0\]} \
{/top_tb/TOP/AWSIZE_slave1\[2:0\]} \
{/top_tb/TOP/AWVALID_master0} \
{/top_tb/TOP/AWVALID_master1} \
{/top_tb/TOP/AWVALID_slave0} \
{/top_tb/TOP/AWVALID_slave1} \
{/top_tb/TOP/BID_master0\[3:0\]} \
{/top_tb/TOP/BID_master1\[3:0\]} \
{/top_tb/TOP/BID_slave0\[7:0\]} \
{/top_tb/TOP/BID_slave1\[7:0\]} \
{/top_tb/TOP/BREADY_master0} \
{/top_tb/TOP/BREADY_master1} \
{/top_tb/TOP/BREADY_slave0} \
{/top_tb/TOP/BREADY_slave1} \
{/top_tb/TOP/BRESP_master0\[1:0\]} \
{/top_tb/TOP/BRESP_master1\[1:0\]} \
{/top_tb/TOP/BRESP_slave0\[1:0\]} \
{/top_tb/TOP/BRESP_slave1\[1:0\]} \
{/top_tb/TOP/BVALID_master0} \
{/top_tb/TOP/BVALID_master1} \
{/top_tb/TOP/BVALID_slave0} \
{/top_tb/TOP/BVALID_slave1} \
{/top_tb/TOP/RDATA_master0\[31:0\]} \
{/top_tb/TOP/RDATA_master1\[31:0\]} \
{/top_tb/TOP/RDATA_slave0\[31:0\]} \
{/top_tb/TOP/RDATA_slave1\[31:0\]} \
{/top_tb/TOP/RID_master0\[3:0\]} \
{/top_tb/TOP/RID_master1\[3:0\]} \
{/top_tb/TOP/RID_slave0\[7:0\]} \
{/top_tb/TOP/RID_slave1\[7:0\]} \
{/top_tb/TOP/RLAST_master0} \
{/top_tb/TOP/RLAST_master1} \
{/top_tb/TOP/RLAST_slave0} \
{/top_tb/TOP/RLAST_slave1} \
{/top_tb/TOP/RREADY_master0} \
{/top_tb/TOP/RREADY_master1} \
{/top_tb/TOP/RREADY_slave0} \
{/top_tb/TOP/RREADY_slave1} \
{/top_tb/TOP/RRESP_master0\[1:0\]} \
{/top_tb/TOP/RRESP_master1\[1:0\]} \
{/top_tb/TOP/RRESP_slave0\[1:0\]} \
{/top_tb/TOP/RRESP_slave1\[1:0\]} \
{/top_tb/TOP/RVALID_master0} \
{/top_tb/TOP/RVALID_master1} \
{/top_tb/TOP/RVALID_slave0} \
{/top_tb/TOP/RVALID_slave1} \
{/top_tb/TOP/WDATA_master0\[31:0\]} \
{/top_tb/TOP/WDATA_master1\[31:0\]} \
{/top_tb/TOP/WDATA_slave0\[31:0\]} \
{/top_tb/TOP/WDATA_slave1\[31:0\]} \
{/top_tb/TOP/WLAST_master0} \
{/top_tb/TOP/WLAST_master1} \
{/top_tb/TOP/WLAST_slave0} \
{/top_tb/TOP/WLAST_slave1} \
{/top_tb/TOP/WREADY_master0} \
{/top_tb/TOP/WREADY_master1} \
{/top_tb/TOP/WREADY_slave0} \
{/top_tb/TOP/WREADY_slave1} \
{/top_tb/TOP/WSTRB_master0\[3:0\]} \
{/top_tb/TOP/WSTRB_master1\[3:0\]} \
{/top_tb/TOP/WSTRB_slave0\[3:0\]} \
{/top_tb/TOP/WSTRB_slave1\[3:0\]} \
{/top_tb/TOP/WVALID_master0} \
{/top_tb/TOP/WVALID_master1} \
{/top_tb/TOP/WVALID_slave0} \
{/top_tb/TOP/WVALID_slave1} \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/ID_pc_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IM_stall} \
{/top_tb/TOP/CPU_wrapper/CPU/DM_stall} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 121 )} 
wvSetPosition -win $_nWave1 {("G1" 121)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 120 )} 
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
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 59 )} 
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
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 35 )} 
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
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvSetPosition -win $_nWave1 {("G1" 122)}
wvSetPosition -win $_nWave1 {("G1" 122)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/ARADDR_master0\[31:0\]} \
{/top_tb/TOP/ARADDR_master1\[31:0\]} \
{/top_tb/TOP/ARADDR_slave0\[31:0\]} \
{/top_tb/TOP/ARADDR_slave1\[31:0\]} \
{/top_tb/TOP/ARBURST_master0\[1:0\]} \
{/top_tb/TOP/ARBURST_master1\[1:0\]} \
{/top_tb/TOP/ARBURST_slave0\[1:0\]} \
{/top_tb/TOP/ARBURST_slave1\[1:0\]} \
{/top_tb/TOP/ARID_master0\[3:0\]} \
{/top_tb/TOP/ARID_master1\[3:0\]} \
{/top_tb/TOP/ARID_slave0\[7:0\]} \
{/top_tb/TOP/ARID_slave1\[7:0\]} \
{/top_tb/TOP/ARLEN_master0\[3:0\]} \
{/top_tb/TOP/ARLEN_master1\[3:0\]} \
{/top_tb/TOP/ARLEN_slave0\[3:0\]} \
{/top_tb/TOP/ARLEN_slave1\[3:0\]} \
{/top_tb/TOP/ARREADY_master0} \
{/top_tb/TOP/ARREADY_master1} \
{/top_tb/TOP/ARREADY_slave0} \
{/top_tb/TOP/ARREADY_slave1} \
{/top_tb/TOP/ARSIZE_master0\[2:0\]} \
{/top_tb/TOP/ARSIZE_master1\[2:0\]} \
{/top_tb/TOP/ARSIZE_slave0\[2:0\]} \
{/top_tb/TOP/ARSIZE_slave1\[2:0\]} \
{/top_tb/TOP/ARVALID_master0} \
{/top_tb/TOP/ARVALID_master1} \
{/top_tb/TOP/ARVALID_slave0} \
{/top_tb/TOP/ARVALID_slave1} \
{/top_tb/TOP/AWADDR_master0\[31:0\]} \
{/top_tb/TOP/AWADDR_master1\[31:0\]} \
{/top_tb/TOP/AWADDR_slave0\[31:0\]} \
{/top_tb/TOP/AWADDR_slave1\[31:0\]} \
{/top_tb/TOP/AWBURST_master0\[1:0\]} \
{/top_tb/TOP/AWBURST_master1\[1:0\]} \
{/top_tb/TOP/AWBURST_slave0\[1:0\]} \
{/top_tb/TOP/AWBURST_slave1\[1:0\]} \
{/top_tb/TOP/AWID_master0\[3:0\]} \
{/top_tb/TOP/AWID_master1\[3:0\]} \
{/top_tb/TOP/AWID_slave0\[7:0\]} \
{/top_tb/TOP/AWID_slave1\[7:0\]} \
{/top_tb/TOP/AWLEN_master0\[3:0\]} \
{/top_tb/TOP/AWLEN_master1\[3:0\]} \
{/top_tb/TOP/AWLEN_slave0\[3:0\]} \
{/top_tb/TOP/AWLEN_slave1\[3:0\]} \
{/top_tb/TOP/AWREADY_master0} \
{/top_tb/TOP/AWREADY_master1} \
{/top_tb/TOP/AWREADY_slave0} \
{/top_tb/TOP/AWREADY_slave1} \
{/top_tb/TOP/AWSIZE_master0\[2:0\]} \
{/top_tb/TOP/AWSIZE_master1\[2:0\]} \
{/top_tb/TOP/AWSIZE_slave0\[2:0\]} \
{/top_tb/TOP/AWSIZE_slave1\[2:0\]} \
{/top_tb/TOP/AWVALID_master0} \
{/top_tb/TOP/AWVALID_master1} \
{/top_tb/TOP/AWVALID_slave0} \
{/top_tb/TOP/AWVALID_slave1} \
{/top_tb/TOP/BID_master0\[3:0\]} \
{/top_tb/TOP/BID_master1\[3:0\]} \
{/top_tb/TOP/BID_slave0\[7:0\]} \
{/top_tb/TOP/BID_slave1\[7:0\]} \
{/top_tb/TOP/BREADY_master0} \
{/top_tb/TOP/BREADY_master1} \
{/top_tb/TOP/BREADY_slave0} \
{/top_tb/TOP/BREADY_slave1} \
{/top_tb/TOP/BRESP_master0\[1:0\]} \
{/top_tb/TOP/BRESP_master1\[1:0\]} \
{/top_tb/TOP/BRESP_slave0\[1:0\]} \
{/top_tb/TOP/BRESP_slave1\[1:0\]} \
{/top_tb/TOP/BVALID_master0} \
{/top_tb/TOP/BVALID_master1} \
{/top_tb/TOP/BVALID_slave0} \
{/top_tb/TOP/BVALID_slave1} \
{/top_tb/TOP/RDATA_master0\[31:0\]} \
{/top_tb/TOP/RDATA_master1\[31:0\]} \
{/top_tb/TOP/RDATA_slave0\[31:0\]} \
{/top_tb/TOP/RDATA_slave1\[31:0\]} \
{/top_tb/TOP/RID_master0\[3:0\]} \
{/top_tb/TOP/RID_master1\[3:0\]} \
{/top_tb/TOP/RID_slave0\[7:0\]} \
{/top_tb/TOP/RID_slave1\[7:0\]} \
{/top_tb/TOP/RLAST_master0} \
{/top_tb/TOP/RLAST_master1} \
{/top_tb/TOP/RLAST_slave0} \
{/top_tb/TOP/RLAST_slave1} \
{/top_tb/TOP/RREADY_master0} \
{/top_tb/TOP/RREADY_master1} \
{/top_tb/TOP/RREADY_slave0} \
{/top_tb/TOP/RREADY_slave1} \
{/top_tb/TOP/RRESP_master0\[1:0\]} \
{/top_tb/TOP/RRESP_master1\[1:0\]} \
{/top_tb/TOP/RRESP_slave0\[1:0\]} \
{/top_tb/TOP/RRESP_slave1\[1:0\]} \
{/top_tb/TOP/RVALID_master0} \
{/top_tb/TOP/RVALID_master1} \
{/top_tb/TOP/RVALID_slave0} \
{/top_tb/TOP/RVALID_slave1} \
{/top_tb/TOP/WDATA_master0\[31:0\]} \
{/top_tb/TOP/WDATA_master1\[31:0\]} \
{/top_tb/TOP/WDATA_slave0\[31:0\]} \
{/top_tb/TOP/WDATA_slave1\[31:0\]} \
{/top_tb/TOP/WLAST_master0} \
{/top_tb/TOP/WLAST_master1} \
{/top_tb/TOP/WLAST_slave0} \
{/top_tb/TOP/WLAST_slave1} \
{/top_tb/TOP/WREADY_master0} \
{/top_tb/TOP/WREADY_master1} \
{/top_tb/TOP/WREADY_slave0} \
{/top_tb/TOP/WREADY_slave1} \
{/top_tb/TOP/WSTRB_master0\[3:0\]} \
{/top_tb/TOP/WSTRB_master1\[3:0\]} \
{/top_tb/TOP/WSTRB_slave0\[3:0\]} \
{/top_tb/TOP/WSTRB_slave1\[3:0\]} \
{/top_tb/TOP/WVALID_master0} \
{/top_tb/TOP/WVALID_master1} \
{/top_tb/TOP/WVALID_slave0} \
{/top_tb/TOP/WVALID_slave1} \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/ID_pc_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IM_stall} \
{/top_tb/TOP/CPU_wrapper/CPU/DM_stall} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 122 )} 
wvSetPosition -win $_nWave1 {("G1" 122)}
wvSetPosition -win $_nWave1 {("G1" 122)}
wvSetPosition -win $_nWave1 {("G1" 122)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/ARADDR_master0\[31:0\]} \
{/top_tb/TOP/ARADDR_master1\[31:0\]} \
{/top_tb/TOP/ARADDR_slave0\[31:0\]} \
{/top_tb/TOP/ARADDR_slave1\[31:0\]} \
{/top_tb/TOP/ARBURST_master0\[1:0\]} \
{/top_tb/TOP/ARBURST_master1\[1:0\]} \
{/top_tb/TOP/ARBURST_slave0\[1:0\]} \
{/top_tb/TOP/ARBURST_slave1\[1:0\]} \
{/top_tb/TOP/ARID_master0\[3:0\]} \
{/top_tb/TOP/ARID_master1\[3:0\]} \
{/top_tb/TOP/ARID_slave0\[7:0\]} \
{/top_tb/TOP/ARID_slave1\[7:0\]} \
{/top_tb/TOP/ARLEN_master0\[3:0\]} \
{/top_tb/TOP/ARLEN_master1\[3:0\]} \
{/top_tb/TOP/ARLEN_slave0\[3:0\]} \
{/top_tb/TOP/ARLEN_slave1\[3:0\]} \
{/top_tb/TOP/ARREADY_master0} \
{/top_tb/TOP/ARREADY_master1} \
{/top_tb/TOP/ARREADY_slave0} \
{/top_tb/TOP/ARREADY_slave1} \
{/top_tb/TOP/ARSIZE_master0\[2:0\]} \
{/top_tb/TOP/ARSIZE_master1\[2:0\]} \
{/top_tb/TOP/ARSIZE_slave0\[2:0\]} \
{/top_tb/TOP/ARSIZE_slave1\[2:0\]} \
{/top_tb/TOP/ARVALID_master0} \
{/top_tb/TOP/ARVALID_master1} \
{/top_tb/TOP/ARVALID_slave0} \
{/top_tb/TOP/ARVALID_slave1} \
{/top_tb/TOP/AWADDR_master0\[31:0\]} \
{/top_tb/TOP/AWADDR_master1\[31:0\]} \
{/top_tb/TOP/AWADDR_slave0\[31:0\]} \
{/top_tb/TOP/AWADDR_slave1\[31:0\]} \
{/top_tb/TOP/AWBURST_master0\[1:0\]} \
{/top_tb/TOP/AWBURST_master1\[1:0\]} \
{/top_tb/TOP/AWBURST_slave0\[1:0\]} \
{/top_tb/TOP/AWBURST_slave1\[1:0\]} \
{/top_tb/TOP/AWID_master0\[3:0\]} \
{/top_tb/TOP/AWID_master1\[3:0\]} \
{/top_tb/TOP/AWID_slave0\[7:0\]} \
{/top_tb/TOP/AWID_slave1\[7:0\]} \
{/top_tb/TOP/AWLEN_master0\[3:0\]} \
{/top_tb/TOP/AWLEN_master1\[3:0\]} \
{/top_tb/TOP/AWLEN_slave0\[3:0\]} \
{/top_tb/TOP/AWLEN_slave1\[3:0\]} \
{/top_tb/TOP/AWREADY_master0} \
{/top_tb/TOP/AWREADY_master1} \
{/top_tb/TOP/AWREADY_slave0} \
{/top_tb/TOP/AWREADY_slave1} \
{/top_tb/TOP/AWSIZE_master0\[2:0\]} \
{/top_tb/TOP/AWSIZE_master1\[2:0\]} \
{/top_tb/TOP/AWSIZE_slave0\[2:0\]} \
{/top_tb/TOP/AWSIZE_slave1\[2:0\]} \
{/top_tb/TOP/AWVALID_master0} \
{/top_tb/TOP/AWVALID_master1} \
{/top_tb/TOP/AWVALID_slave0} \
{/top_tb/TOP/AWVALID_slave1} \
{/top_tb/TOP/BID_master0\[3:0\]} \
{/top_tb/TOP/BID_master1\[3:0\]} \
{/top_tb/TOP/BID_slave0\[7:0\]} \
{/top_tb/TOP/BID_slave1\[7:0\]} \
{/top_tb/TOP/BREADY_master0} \
{/top_tb/TOP/BREADY_master1} \
{/top_tb/TOP/BREADY_slave0} \
{/top_tb/TOP/BREADY_slave1} \
{/top_tb/TOP/BRESP_master0\[1:0\]} \
{/top_tb/TOP/BRESP_master1\[1:0\]} \
{/top_tb/TOP/BRESP_slave0\[1:0\]} \
{/top_tb/TOP/BRESP_slave1\[1:0\]} \
{/top_tb/TOP/BVALID_master0} \
{/top_tb/TOP/BVALID_master1} \
{/top_tb/TOP/BVALID_slave0} \
{/top_tb/TOP/BVALID_slave1} \
{/top_tb/TOP/RDATA_master0\[31:0\]} \
{/top_tb/TOP/RDATA_master1\[31:0\]} \
{/top_tb/TOP/RDATA_slave0\[31:0\]} \
{/top_tb/TOP/RDATA_slave1\[31:0\]} \
{/top_tb/TOP/RID_master0\[3:0\]} \
{/top_tb/TOP/RID_master1\[3:0\]} \
{/top_tb/TOP/RID_slave0\[7:0\]} \
{/top_tb/TOP/RID_slave1\[7:0\]} \
{/top_tb/TOP/RLAST_master0} \
{/top_tb/TOP/RLAST_master1} \
{/top_tb/TOP/RLAST_slave0} \
{/top_tb/TOP/RLAST_slave1} \
{/top_tb/TOP/RREADY_master0} \
{/top_tb/TOP/RREADY_master1} \
{/top_tb/TOP/RREADY_slave0} \
{/top_tb/TOP/RREADY_slave1} \
{/top_tb/TOP/RRESP_master0\[1:0\]} \
{/top_tb/TOP/RRESP_master1\[1:0\]} \
{/top_tb/TOP/RRESP_slave0\[1:0\]} \
{/top_tb/TOP/RRESP_slave1\[1:0\]} \
{/top_tb/TOP/RVALID_master0} \
{/top_tb/TOP/RVALID_master1} \
{/top_tb/TOP/RVALID_slave0} \
{/top_tb/TOP/RVALID_slave1} \
{/top_tb/TOP/WDATA_master0\[31:0\]} \
{/top_tb/TOP/WDATA_master1\[31:0\]} \
{/top_tb/TOP/WDATA_slave0\[31:0\]} \
{/top_tb/TOP/WDATA_slave1\[31:0\]} \
{/top_tb/TOP/WLAST_master0} \
{/top_tb/TOP/WLAST_master1} \
{/top_tb/TOP/WLAST_slave0} \
{/top_tb/TOP/WLAST_slave1} \
{/top_tb/TOP/WREADY_master0} \
{/top_tb/TOP/WREADY_master1} \
{/top_tb/TOP/WREADY_slave0} \
{/top_tb/TOP/WREADY_slave1} \
{/top_tb/TOP/WSTRB_master0\[3:0\]} \
{/top_tb/TOP/WSTRB_master1\[3:0\]} \
{/top_tb/TOP/WSTRB_slave0\[3:0\]} \
{/top_tb/TOP/WSTRB_slave1\[3:0\]} \
{/top_tb/TOP/WVALID_master0} \
{/top_tb/TOP/WVALID_master1} \
{/top_tb/TOP/WVALID_slave0} \
{/top_tb/TOP/WVALID_slave1} \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/ID_pc_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IM_stall} \
{/top_tb/TOP/CPU_wrapper/CPU/DM_stall} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 122 )} 
wvSetPosition -win $_nWave1 {("G1" 122)}
wvGetSignalClose -win $_nWave1
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
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 81 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 74 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 25
wvScrollUp -win $_nWave1 25
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 60835.417303 -snap {("G1" 29)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
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
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvSetPosition -win $_nWave1 {("G1" 123)}
wvSetPosition -win $_nWave1 {("G1" 123)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/ARADDR_master0\[31:0\]} \
{/top_tb/TOP/ARADDR_master1\[31:0\]} \
{/top_tb/TOP/ARADDR_slave0\[31:0\]} \
{/top_tb/TOP/ARADDR_slave1\[31:0\]} \
{/top_tb/TOP/ARBURST_master0\[1:0\]} \
{/top_tb/TOP/ARBURST_master1\[1:0\]} \
{/top_tb/TOP/ARBURST_slave0\[1:0\]} \
{/top_tb/TOP/ARBURST_slave1\[1:0\]} \
{/top_tb/TOP/ARID_master0\[3:0\]} \
{/top_tb/TOP/ARID_master1\[3:0\]} \
{/top_tb/TOP/ARID_slave0\[7:0\]} \
{/top_tb/TOP/ARID_slave1\[7:0\]} \
{/top_tb/TOP/ARLEN_master0\[3:0\]} \
{/top_tb/TOP/ARLEN_master1\[3:0\]} \
{/top_tb/TOP/ARLEN_slave0\[3:0\]} \
{/top_tb/TOP/ARLEN_slave1\[3:0\]} \
{/top_tb/TOP/ARREADY_master0} \
{/top_tb/TOP/ARREADY_master1} \
{/top_tb/TOP/ARREADY_slave0} \
{/top_tb/TOP/ARREADY_slave1} \
{/top_tb/TOP/ARSIZE_master0\[2:0\]} \
{/top_tb/TOP/ARSIZE_master1\[2:0\]} \
{/top_tb/TOP/ARSIZE_slave0\[2:0\]} \
{/top_tb/TOP/ARSIZE_slave1\[2:0\]} \
{/top_tb/TOP/ARVALID_master0} \
{/top_tb/TOP/ARVALID_master1} \
{/top_tb/TOP/ARVALID_slave0} \
{/top_tb/TOP/ARVALID_slave1} \
{/top_tb/TOP/AWADDR_master0\[31:0\]} \
{/top_tb/TOP/AWADDR_master1\[31:0\]} \
{/top_tb/TOP/AWADDR_slave0\[31:0\]} \
{/top_tb/TOP/AWADDR_slave1\[31:0\]} \
{/top_tb/TOP/AWBURST_master0\[1:0\]} \
{/top_tb/TOP/AWBURST_master1\[1:0\]} \
{/top_tb/TOP/AWBURST_slave0\[1:0\]} \
{/top_tb/TOP/AWBURST_slave1\[1:0\]} \
{/top_tb/TOP/AWID_master0\[3:0\]} \
{/top_tb/TOP/AWID_master1\[3:0\]} \
{/top_tb/TOP/AWID_slave0\[7:0\]} \
{/top_tb/TOP/AWID_slave1\[7:0\]} \
{/top_tb/TOP/AWLEN_master0\[3:0\]} \
{/top_tb/TOP/AWLEN_master1\[3:0\]} \
{/top_tb/TOP/AWLEN_slave0\[3:0\]} \
{/top_tb/TOP/AWLEN_slave1\[3:0\]} \
{/top_tb/TOP/AWREADY_master0} \
{/top_tb/TOP/AWREADY_master1} \
{/top_tb/TOP/AWREADY_slave0} \
{/top_tb/TOP/AWREADY_slave1} \
{/top_tb/TOP/AWSIZE_master0\[2:0\]} \
{/top_tb/TOP/AWSIZE_master1\[2:0\]} \
{/top_tb/TOP/AWSIZE_slave0\[2:0\]} \
{/top_tb/TOP/AWSIZE_slave1\[2:0\]} \
{/top_tb/TOP/AWVALID_master0} \
{/top_tb/TOP/AWVALID_master1} \
{/top_tb/TOP/AWVALID_slave0} \
{/top_tb/TOP/AWVALID_slave1} \
{/top_tb/TOP/BID_master0\[3:0\]} \
{/top_tb/TOP/BID_master1\[3:0\]} \
{/top_tb/TOP/BID_slave0\[7:0\]} \
{/top_tb/TOP/BID_slave1\[7:0\]} \
{/top_tb/TOP/BREADY_master0} \
{/top_tb/TOP/BREADY_master1} \
{/top_tb/TOP/BREADY_slave0} \
{/top_tb/TOP/BREADY_slave1} \
{/top_tb/TOP/BRESP_master0\[1:0\]} \
{/top_tb/TOP/BRESP_master1\[1:0\]} \
{/top_tb/TOP/BRESP_slave0\[1:0\]} \
{/top_tb/TOP/BRESP_slave1\[1:0\]} \
{/top_tb/TOP/BVALID_master0} \
{/top_tb/TOP/BVALID_master1} \
{/top_tb/TOP/BVALID_slave0} \
{/top_tb/TOP/BVALID_slave1} \
{/top_tb/TOP/RDATA_master0\[31:0\]} \
{/top_tb/TOP/RDATA_master1\[31:0\]} \
{/top_tb/TOP/RDATA_slave0\[31:0\]} \
{/top_tb/TOP/RDATA_slave1\[31:0\]} \
{/top_tb/TOP/RID_master0\[3:0\]} \
{/top_tb/TOP/RID_master1\[3:0\]} \
{/top_tb/TOP/RID_slave0\[7:0\]} \
{/top_tb/TOP/RID_slave1\[7:0\]} \
{/top_tb/TOP/RLAST_master0} \
{/top_tb/TOP/RLAST_master1} \
{/top_tb/TOP/RLAST_slave0} \
{/top_tb/TOP/RLAST_slave1} \
{/top_tb/TOP/RREADY_master0} \
{/top_tb/TOP/RREADY_master1} \
{/top_tb/TOP/RREADY_slave0} \
{/top_tb/TOP/RREADY_slave1} \
{/top_tb/TOP/RRESP_master0\[1:0\]} \
{/top_tb/TOP/RRESP_master1\[1:0\]} \
{/top_tb/TOP/RRESP_slave0\[1:0\]} \
{/top_tb/TOP/RRESP_slave1\[1:0\]} \
{/top_tb/TOP/RVALID_master0} \
{/top_tb/TOP/RVALID_master1} \
{/top_tb/TOP/RVALID_slave0} \
{/top_tb/TOP/RVALID_slave1} \
{/top_tb/TOP/WDATA_master0\[31:0\]} \
{/top_tb/TOP/WDATA_master1\[31:0\]} \
{/top_tb/TOP/WDATA_slave0\[31:0\]} \
{/top_tb/TOP/WDATA_slave1\[31:0\]} \
{/top_tb/TOP/WLAST_master0} \
{/top_tb/TOP/WLAST_master1} \
{/top_tb/TOP/WLAST_slave0} \
{/top_tb/TOP/WLAST_slave1} \
{/top_tb/TOP/WREADY_master0} \
{/top_tb/TOP/WREADY_master1} \
{/top_tb/TOP/WREADY_slave0} \
{/top_tb/TOP/WREADY_slave1} \
{/top_tb/TOP/WSTRB_master0\[3:0\]} \
{/top_tb/TOP/WSTRB_master1\[3:0\]} \
{/top_tb/TOP/WSTRB_slave0\[3:0\]} \
{/top_tb/TOP/WSTRB_slave1\[3:0\]} \
{/top_tb/TOP/WVALID_master0} \
{/top_tb/TOP/WVALID_master1} \
{/top_tb/TOP/WVALID_slave0} \
{/top_tb/TOP/WVALID_slave1} \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/ID_pc_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IM_stall} \
{/top_tb/TOP/CPU_wrapper/CPU/DM_stall} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
{/top_tb/TOP/IM1/curr_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 123 )} 
wvSetPosition -win $_nWave1 {("G1" 123)}
wvSetPosition -win $_nWave1 {("G1" 123)}
wvSetPosition -win $_nWave1 {("G1" 123)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/ARADDR_master0\[31:0\]} \
{/top_tb/TOP/ARADDR_master1\[31:0\]} \
{/top_tb/TOP/ARADDR_slave0\[31:0\]} \
{/top_tb/TOP/ARADDR_slave1\[31:0\]} \
{/top_tb/TOP/ARBURST_master0\[1:0\]} \
{/top_tb/TOP/ARBURST_master1\[1:0\]} \
{/top_tb/TOP/ARBURST_slave0\[1:0\]} \
{/top_tb/TOP/ARBURST_slave1\[1:0\]} \
{/top_tb/TOP/ARID_master0\[3:0\]} \
{/top_tb/TOP/ARID_master1\[3:0\]} \
{/top_tb/TOP/ARID_slave0\[7:0\]} \
{/top_tb/TOP/ARID_slave1\[7:0\]} \
{/top_tb/TOP/ARLEN_master0\[3:0\]} \
{/top_tb/TOP/ARLEN_master1\[3:0\]} \
{/top_tb/TOP/ARLEN_slave0\[3:0\]} \
{/top_tb/TOP/ARLEN_slave1\[3:0\]} \
{/top_tb/TOP/ARREADY_master0} \
{/top_tb/TOP/ARREADY_master1} \
{/top_tb/TOP/ARREADY_slave0} \
{/top_tb/TOP/ARREADY_slave1} \
{/top_tb/TOP/ARSIZE_master0\[2:0\]} \
{/top_tb/TOP/ARSIZE_master1\[2:0\]} \
{/top_tb/TOP/ARSIZE_slave0\[2:0\]} \
{/top_tb/TOP/ARSIZE_slave1\[2:0\]} \
{/top_tb/TOP/ARVALID_master0} \
{/top_tb/TOP/ARVALID_master1} \
{/top_tb/TOP/ARVALID_slave0} \
{/top_tb/TOP/ARVALID_slave1} \
{/top_tb/TOP/AWADDR_master0\[31:0\]} \
{/top_tb/TOP/AWADDR_master1\[31:0\]} \
{/top_tb/TOP/AWADDR_slave0\[31:0\]} \
{/top_tb/TOP/AWADDR_slave1\[31:0\]} \
{/top_tb/TOP/AWBURST_master0\[1:0\]} \
{/top_tb/TOP/AWBURST_master1\[1:0\]} \
{/top_tb/TOP/AWBURST_slave0\[1:0\]} \
{/top_tb/TOP/AWBURST_slave1\[1:0\]} \
{/top_tb/TOP/AWID_master0\[3:0\]} \
{/top_tb/TOP/AWID_master1\[3:0\]} \
{/top_tb/TOP/AWID_slave0\[7:0\]} \
{/top_tb/TOP/AWID_slave1\[7:0\]} \
{/top_tb/TOP/AWLEN_master0\[3:0\]} \
{/top_tb/TOP/AWLEN_master1\[3:0\]} \
{/top_tb/TOP/AWLEN_slave0\[3:0\]} \
{/top_tb/TOP/AWLEN_slave1\[3:0\]} \
{/top_tb/TOP/AWREADY_master0} \
{/top_tb/TOP/AWREADY_master1} \
{/top_tb/TOP/AWREADY_slave0} \
{/top_tb/TOP/AWREADY_slave1} \
{/top_tb/TOP/AWSIZE_master0\[2:0\]} \
{/top_tb/TOP/AWSIZE_master1\[2:0\]} \
{/top_tb/TOP/AWSIZE_slave0\[2:0\]} \
{/top_tb/TOP/AWSIZE_slave1\[2:0\]} \
{/top_tb/TOP/AWVALID_master0} \
{/top_tb/TOP/AWVALID_master1} \
{/top_tb/TOP/AWVALID_slave0} \
{/top_tb/TOP/AWVALID_slave1} \
{/top_tb/TOP/BID_master0\[3:0\]} \
{/top_tb/TOP/BID_master1\[3:0\]} \
{/top_tb/TOP/BID_slave0\[7:0\]} \
{/top_tb/TOP/BID_slave1\[7:0\]} \
{/top_tb/TOP/BREADY_master0} \
{/top_tb/TOP/BREADY_master1} \
{/top_tb/TOP/BREADY_slave0} \
{/top_tb/TOP/BREADY_slave1} \
{/top_tb/TOP/BRESP_master0\[1:0\]} \
{/top_tb/TOP/BRESP_master1\[1:0\]} \
{/top_tb/TOP/BRESP_slave0\[1:0\]} \
{/top_tb/TOP/BRESP_slave1\[1:0\]} \
{/top_tb/TOP/BVALID_master0} \
{/top_tb/TOP/BVALID_master1} \
{/top_tb/TOP/BVALID_slave0} \
{/top_tb/TOP/BVALID_slave1} \
{/top_tb/TOP/RDATA_master0\[31:0\]} \
{/top_tb/TOP/RDATA_master1\[31:0\]} \
{/top_tb/TOP/RDATA_slave0\[31:0\]} \
{/top_tb/TOP/RDATA_slave1\[31:0\]} \
{/top_tb/TOP/RID_master0\[3:0\]} \
{/top_tb/TOP/RID_master1\[3:0\]} \
{/top_tb/TOP/RID_slave0\[7:0\]} \
{/top_tb/TOP/RID_slave1\[7:0\]} \
{/top_tb/TOP/RLAST_master0} \
{/top_tb/TOP/RLAST_master1} \
{/top_tb/TOP/RLAST_slave0} \
{/top_tb/TOP/RLAST_slave1} \
{/top_tb/TOP/RREADY_master0} \
{/top_tb/TOP/RREADY_master1} \
{/top_tb/TOP/RREADY_slave0} \
{/top_tb/TOP/RREADY_slave1} \
{/top_tb/TOP/RRESP_master0\[1:0\]} \
{/top_tb/TOP/RRESP_master1\[1:0\]} \
{/top_tb/TOP/RRESP_slave0\[1:0\]} \
{/top_tb/TOP/RRESP_slave1\[1:0\]} \
{/top_tb/TOP/RVALID_master0} \
{/top_tb/TOP/RVALID_master1} \
{/top_tb/TOP/RVALID_slave0} \
{/top_tb/TOP/RVALID_slave1} \
{/top_tb/TOP/WDATA_master0\[31:0\]} \
{/top_tb/TOP/WDATA_master1\[31:0\]} \
{/top_tb/TOP/WDATA_slave0\[31:0\]} \
{/top_tb/TOP/WDATA_slave1\[31:0\]} \
{/top_tb/TOP/WLAST_master0} \
{/top_tb/TOP/WLAST_master1} \
{/top_tb/TOP/WLAST_slave0} \
{/top_tb/TOP/WLAST_slave1} \
{/top_tb/TOP/WREADY_master0} \
{/top_tb/TOP/WREADY_master1} \
{/top_tb/TOP/WREADY_slave0} \
{/top_tb/TOP/WREADY_slave1} \
{/top_tb/TOP/WSTRB_master0\[3:0\]} \
{/top_tb/TOP/WSTRB_master1\[3:0\]} \
{/top_tb/TOP/WSTRB_slave0\[3:0\]} \
{/top_tb/TOP/WSTRB_slave1\[3:0\]} \
{/top_tb/TOP/WVALID_master0} \
{/top_tb/TOP/WVALID_master1} \
{/top_tb/TOP/WVALID_slave0} \
{/top_tb/TOP/WVALID_slave1} \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/ID_pc_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IM_stall} \
{/top_tb/TOP/CPU_wrapper/CPU/DM_stall} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
{/top_tb/TOP/IM1/curr_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 123 )} 
wvSetPosition -win $_nWave1 {("G1" 123)}
wvGetSignalClose -win $_nWave1
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 122 )} 
wvScrollUp -win $_nWave1 47
wvSelectSignal -win $_nWave1 {( "G1" 34 35 36 37 38 39 40 41 42 43 44 45 46 47 \
           48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 \
           70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 \
           92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 \
           111 112 113 114 115 116 117 118 119 120 121 122 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 1)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/IM1/curr_state\[3:0\]} \
{/top_tb/TOP/IM1/RLAST_S} \
{/top_tb/TOP/IM1/Rx_hs_done} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/IM1/curr_state\[3:0\]} \
{/top_tb/TOP/IM1/RLAST_S} \
{/top_tb/TOP/IM1/Rx_hs_done} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/IM1/curr_state\[3:0\]} \
{/top_tb/TOP/IM1/RLAST_S} \
{/top_tb/TOP/IM1/Rx_hs_done} \
{/top_tb/TOP/IM1/RREADY_S} \
{/top_tb/TOP/IM1/RVALID_S} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/IM1/curr_state\[3:0\]} \
{/top_tb/TOP/IM1/RLAST_S} \
{/top_tb/TOP/IM1/Rx_hs_done} \
{/top_tb/TOP/IM1/RREADY_S} \
{/top_tb/TOP/IM1/RVALID_S} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/IM1/curr_state\[3:0\]} \
{/top_tb/TOP/IM1/RLAST_S} \
{/top_tb/TOP/IM1/Rx_hs_done} \
{/top_tb/TOP/IM1/RREADY_S} \
{/top_tb/TOP/IM1/RVALID_S} \
{/top_tb/TOP/IM1/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/IM1/curr_state\[3:0\]} \
{/top_tb/TOP/IM1/RLAST_S} \
{/top_tb/TOP/IM1/Rx_hs_done} \
{/top_tb/TOP/IM1/RREADY_S} \
{/top_tb/TOP/IM1/RVALID_S} \
{/top_tb/TOP/IM1/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 3289.768823 -snap {("G1" 6)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI"
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/IM1/curr_state\[3:0\]} \
{/top_tb/TOP/IM1/RLAST_S} \
{/top_tb/TOP/IM1/Rx_hs_done} \
{/top_tb/TOP/IM1/RREADY_S} \
{/top_tb/TOP/IM1/RVALID_S} \
{/top_tb/TOP/IM1/clk} \
{/top_tb/TOP/AXI/RREADY_M0} \
{/top_tb/TOP/AXI/RREADY_S0} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/RD"
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/IM1/curr_state\[3:0\]} \
{/top_tb/TOP/IM1/RLAST_S} \
{/top_tb/TOP/IM1/Rx_hs_done} \
{/top_tb/TOP/IM1/RREADY_S} \
{/top_tb/TOP/IM1/RVALID_S} \
{/top_tb/TOP/IM1/clk} \
{/top_tb/TOP/AXI/RREADY_M0} \
{/top_tb/TOP/AXI/RREADY_S0} \
{/top_tb/TOP/AXI/RD/RREADY_MtoS0} \
{/top_tb/TOP/AXI/RD/RREADY_MtoS1} \
{/top_tb/TOP/AXI/RD/RREADY_MtoSDefault} \
{/top_tb/TOP/AXI/RD/RREADY_master0} \
{/top_tb/TOP/AXI/RD/RREADY_master1} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 9 10 11 12 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/IM1/curr_state\[3:0\]} \
{/top_tb/TOP/IM1/RLAST_S} \
{/top_tb/TOP/IM1/Rx_hs_done} \
{/top_tb/TOP/IM1/RREADY_S} \
{/top_tb/TOP/IM1/RVALID_S} \
{/top_tb/TOP/IM1/clk} \
{/top_tb/TOP/AXI/RREADY_M0} \
{/top_tb/TOP/AXI/RREADY_S0} \
{/top_tb/TOP/AXI/RD/RREADY_MtoS0} \
{/top_tb/TOP/AXI/RD/RREADY_MtoS1} \
{/top_tb/TOP/AXI/RD/RREADY_MtoSDefault} \
{/top_tb/TOP/AXI/RD/RREADY_master0} \
{/top_tb/TOP/AXI/RD/RREADY_master1} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 9 10 11 12 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/RD"
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/IM1/curr_state\[3:0\]} \
{/top_tb/TOP/IM1/RLAST_S} \
{/top_tb/TOP/IM1/Rx_hs_done} \
{/top_tb/TOP/IM1/RREADY_S} \
{/top_tb/TOP/IM1/RVALID_S} \
{/top_tb/TOP/IM1/clk} \
{/top_tb/TOP/AXI/RREADY_M0} \
{/top_tb/TOP/AXI/RREADY_S0} \
{/top_tb/TOP/AXI/RD/RREADY_MtoS0} \
{/top_tb/TOP/AXI/RD/RREADY_MtoS1} \
{/top_tb/TOP/AXI/RD/RREADY_MtoSDefault} \
{/top_tb/TOP/AXI/RD/RREADY_master0} \
{/top_tb/TOP/AXI/RD/RREADY_master1} \
{/top_tb/TOP/AXI/RD/RREADY_M} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/IM1/curr_state\[3:0\]} \
{/top_tb/TOP/IM1/RLAST_S} \
{/top_tb/TOP/IM1/Rx_hs_done} \
{/top_tb/TOP/IM1/RREADY_S} \
{/top_tb/TOP/IM1/RVALID_S} \
{/top_tb/TOP/IM1/clk} \
{/top_tb/TOP/AXI/RREADY_M0} \
{/top_tb/TOP/AXI/RREADY_S0} \
{/top_tb/TOP/AXI/RD/RREADY_MtoS0} \
{/top_tb/TOP/AXI/RD/RREADY_MtoS1} \
{/top_tb/TOP/AXI/RD/RREADY_MtoSDefault} \
{/top_tb/TOP/AXI/RD/RREADY_master0} \
{/top_tb/TOP/AXI/RD/RREADY_master1} \
{/top_tb/TOP/AXI/RD/RREADY_M} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetPosition -win $_nWave1 {("G1" 14)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/RD"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/RD"
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/IM1/curr_state\[3:0\]} \
{/top_tb/TOP/IM1/RLAST_S} \
{/top_tb/TOP/IM1/Rx_hs_done} \
{/top_tb/TOP/IM1/RREADY_S} \
{/top_tb/TOP/IM1/RVALID_S} \
{/top_tb/TOP/IM1/clk} \
{/top_tb/TOP/AXI/RREADY_M0} \
{/top_tb/TOP/AXI/RREADY_S0} \
{/top_tb/TOP/AXI/RD/RREADY_MtoS0} \
{/top_tb/TOP/AXI/RD/RREADY_MtoS1} \
{/top_tb/TOP/AXI/RD/RREADY_MtoSDefault} \
{/top_tb/TOP/AXI/RD/RREADY_master0} \
{/top_tb/TOP/AXI/RD/RREADY_master1} \
{/top_tb/TOP/AXI/RD/RREADY_M} \
{/top_tb/TOP/AXI/RD/master_sel\[1:0\]} \
{/top_tb/TOP/AXI/RD/slave_sel\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 15 16 )} 
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/IM1/curr_state\[3:0\]} \
{/top_tb/TOP/IM1/RLAST_S} \
{/top_tb/TOP/IM1/Rx_hs_done} \
{/top_tb/TOP/IM1/RREADY_S} \
{/top_tb/TOP/IM1/RVALID_S} \
{/top_tb/TOP/IM1/clk} \
{/top_tb/TOP/AXI/RREADY_M0} \
{/top_tb/TOP/AXI/RREADY_S0} \
{/top_tb/TOP/AXI/RD/RREADY_MtoS0} \
{/top_tb/TOP/AXI/RD/RREADY_MtoS1} \
{/top_tb/TOP/AXI/RD/RREADY_MtoSDefault} \
{/top_tb/TOP/AXI/RD/RREADY_master0} \
{/top_tb/TOP/AXI/RD/RREADY_master1} \
{/top_tb/TOP/AXI/RD/RREADY_M} \
{/top_tb/TOP/AXI/RD/master_sel\[1:0\]} \
{/top_tb/TOP/AXI/RD/slave_sel\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 15 16 )} 
wvSetPosition -win $_nWave1 {("G1" 16)}
wvGetSignalClose -win $_nWave1
wvSelectGroup -win $_nWave1 {G2}
wvSetCursor -win $_nWave1 17562.304330 -snap {("G2" 0)}
wvReloadFile -win $_nWave1
wvExit
