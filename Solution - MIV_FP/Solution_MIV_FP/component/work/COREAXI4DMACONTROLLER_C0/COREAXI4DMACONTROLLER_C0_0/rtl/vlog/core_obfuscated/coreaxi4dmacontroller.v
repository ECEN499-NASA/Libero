// Microsemi Corporation Proprietary and Confidential
// Copyright 2017 Microsemi Corporation.  All rights reserved.
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
// ACCORDANCE WITH THE MICROSEMI LICENSE AGREEMENT AND MUST BE APPROVED
// IN ADVANCE IN WRITING.
// SVN Revision Information:
// SVN $Revision: 28871 $
// SVN $Date: 2017-02-13 03:32:54 +0000 (Mon, 13 Feb 2017) $
module
COREAXI4DMACONTROLLER_C0_COREAXI4DMACONTROLLER_C0_0_COREAXI4DMACONTROLLER
(
CLOCK
,
RESETN
,
CTRL_AWVALID
,
CTRL_WVALID
,
CTRL_BREADY
,
CTRL_ARVALID
,
CTRL_RREADY
,
CTRL_AWADDR
,
CTRL_WSTRB
,
CTRL_WDATA
,
CTRL_ARADDR
,
STRTDMAOP
,
DMA_BRESP
,
DMA_BID
,
DMA_RDATA
,
DMA_RID
,
DMA_AWREADY
,
DMA_WREADY
,
DMA_BVALID
,
DMA_ARREADY
,
DMA_RVALID
,
DMA_RRESP
,
DMA_RLAST
,
TVALID
,
TDATA
,
TSTRB
,
TKEEP
,
TLAST
,
TID
,
TDEST
,
CTRL_BRESP
,
CTRL_RDATA
,
CTRL_AWREADY
,
CTRL_WREADY
,
CTRL_BVALID
,
CTRL_ARREADY
,
CTRL_RVALID
,
CTRL_RRESP
,
DMA_AWVALID
,
DMA_WVALID
,
DMA_WLAST
,
DMA_BREADY
,
DMA_ARVALID
,
DMA_RREADY
,
DMA_AWADDR
,
DMA_AWID
,
DMA_AWLEN
,
DMA_AWSIZE
,
DMA_AWBURST
,
DMA_WSTRB
,
DMA_WDATA
,
DMA_ARADDR
,
DMA_ARID
,
DMA_ARLEN
,
DMA_ARSIZE
,
DMA_ARBURST
,
TREADY
,
INTERRUPT
)
;
parameter
AXI4_STREAM_IF
=
0
;
parameter
AXI_DMA_DWIDTH
=
64
;
parameter
NUM_PRI_LVLS
=
1
;
parameter
PRI_0_NUM_OF_BEATS
=
256
;
parameter
PRI_1_NUM_OF_BEATS
=
128
;
parameter
PRI_2_NUM_OF_BEATS
=
64
;
parameter
PRI_3_NUM_OF_BEATS
=
32
;
parameter
PRI_4_NUM_OF_BEATS
=
16
;
parameter
PRI_5_NUM_OF_BEATS
=
8
;
parameter
PRI_6_NUM_OF_BEATS
=
4
;
parameter
PRI_7_NUM_OF_BEATS
=
1
;
parameter
NUM_OF_INTS
=
4
;
parameter
INT_0_QUEUE_DEPTH
=
1
;
parameter
INT_1_QUEUE_DEPTH
=
1
;
parameter
INT_2_QUEUE_DEPTH
=
1
;
parameter
INT_3_QUEUE_DEPTH
=
1
;
parameter
NUM_INT_BDS
=
4
;
parameter
DSCRPTR_0_INT_ASSOC
=
0
;
parameter
DSCRPTR_0_PRI_LVL
=
1
;
parameter
DSCRPTR_1_INT_ASSOC
=
0
;
parameter
DSCRPTR_1_PRI_LVL
=
1
;
parameter
DSCRPTR_2_INT_ASSOC
=
0
;
parameter
DSCRPTR_2_PRI_LVL
=
1
;
parameter
DSCRPTR_3_INT_ASSOC
=
0
;
parameter
DSCRPTR_3_PRI_LVL
=
1
;
parameter
DSCRPTR_4_INT_ASSOC
=
0
;
parameter
DSCRPTR_4_PRI_LVL
=
1
;
parameter
DSCRPTR_5_INT_ASSOC
=
0
;
parameter
DSCRPTR_5_PRI_LVL
=
1
;
parameter
DSCRPTR_6_INT_ASSOC
=
0
;
parameter
DSCRPTR_6_PRI_LVL
=
1
;
parameter
DSCRPTR_7_INT_ASSOC
=
0
;
parameter
DSCRPTR_7_PRI_LVL
=
1
;
parameter
DSCRPTR_8_INT_ASSOC
=
0
;
parameter
DSCRPTR_8_PRI_LVL
=
1
;
parameter
DSCRPTR_9_INT_ASSOC
=
0
;
parameter
DSCRPTR_9_PRI_LVL
=
1
;
parameter
DSCRPTR_10_INT_ASSOC
=
0
;
parameter
DSCRPTR_10_PRI_LVL
=
1
;
parameter
DSCRPTR_11_INT_ASSOC
=
0
;
parameter
DSCRPTR_11_PRI_LVL
=
1
;
parameter
DSCRPTR_12_INT_ASSOC
=
0
;
parameter
DSCRPTR_12_PRI_LVL
=
1
;
parameter
DSCRPTR_13_INT_ASSOC
=
0
;
parameter
DSCRPTR_13_PRI_LVL
=
1
;
parameter
DSCRPTR_14_INT_ASSOC
=
0
;
parameter
DSCRPTR_14_PRI_LVL
=
1
;
parameter
DSCRPTR_15_INT_ASSOC
=
0
;
parameter
DSCRPTR_15_PRI_LVL
=
1
;
parameter
DSCRPTR_16_INT_ASSOC
=
0
;
parameter
DSCRPTR_16_PRI_LVL
=
1
;
parameter
DSCRPTR_17_INT_ASSOC
=
0
;
parameter
DSCRPTR_17_PRI_LVL
=
1
;
parameter
DSCRPTR_18_INT_ASSOC
=
0
;
parameter
DSCRPTR_18_PRI_LVL
=
1
;
parameter
DSCRPTR_19_INT_ASSOC
=
0
;
parameter
DSCRPTR_19_PRI_LVL
=
1
;
parameter
DSCRPTR_20_INT_ASSOC
=
0
;
parameter
DSCRPTR_20_PRI_LVL
=
1
;
parameter
DSCRPTR_21_INT_ASSOC
=
0
;
parameter
DSCRPTR_21_PRI_LVL
=
1
;
parameter
DSCRPTR_22_INT_ASSOC
=
0
;
parameter
DSCRPTR_22_PRI_LVL
=
1
;
parameter
DSCRPTR_23_INT_ASSOC
=
0
;
parameter
DSCRPTR_23_PRI_LVL
=
1
;
parameter
DSCRPTR_24_INT_ASSOC
=
0
;
parameter
DSCRPTR_24_PRI_LVL
=
1
;
parameter
DSCRPTR_25_INT_ASSOC
=
0
;
parameter
DSCRPTR_25_PRI_LVL
=
1
;
parameter
DSCRPTR_26_INT_ASSOC
=
0
;
parameter
DSCRPTR_26_PRI_LVL
=
1
;
parameter
DSCRPTR_27_INT_ASSOC
=
0
;
parameter
DSCRPTR_27_PRI_LVL
=
1
;
parameter
DSCRPTR_28_INT_ASSOC
=
0
;
parameter
DSCRPTR_28_PRI_LVL
=
1
;
parameter
DSCRPTR_29_INT_ASSOC
=
0
;
parameter
DSCRPTR_29_PRI_LVL
=
1
;
parameter
DSCRPTR_30_INT_ASSOC
=
0
;
parameter
DSCRPTR_30_PRI_LVL
=
1
;
parameter
DSCRPTR_31_INT_ASSOC
=
0
;
parameter
DSCRPTR_31_PRI_LVL
=
1
;
parameter
ID_WIDTH
=
1
;
function
integer
CAXI4DMAIOII
;
input
integer
CAXI4DMAlOII
;
integer
CAXI4DMAOIII
,
CAXI4DMAIIII
,
CAXI4DMAlIII
;
begin
CAXI4DMAIIII
=
1
;
CAXI4DMAlIII
=
0
;
CAXI4DMAOIII
=
CAXI4DMAlOII
+
1
;
while
(
CAXI4DMAIIII
<
CAXI4DMAOIII
)
begin
CAXI4DMAIIII
=
CAXI4DMAIIII
*
2
;
CAXI4DMAlIII
=
CAXI4DMAlIII
+
1
;
end
CAXI4DMAIOII
=
CAXI4DMAlIII
;
end
endfunction
localparam
CAXI4DMAl110
=
2
;
localparam
CAXI4DMAOOO1
=
0
;
localparam
CAXI4DMAIOO1
=
100
;
localparam
CAXI4DMAlOO1
=
8388608
;
localparam
CAXI4DMAOOII
=
PRI_0_NUM_OF_BEATS
;
localparam
CAXI4DMAIlO0
=
(
(
CAXI4DMAOOII
*
(
AXI_DMA_DWIDTH
/
8
)
)
<=
4096
)
?
(
CAXI4DMAOOII
*
(
AXI_DMA_DWIDTH
/
8
)
)
:
4096
;
localparam
CAXI4DMAOIO1
=
CAXI4DMAIOII
(
NUM_INT_BDS
-
1
)
;
localparam
CAXI4DMAOlII
=
CAXI4DMAIOII
(
(
AXI_DMA_DWIDTH
/
8
)
)
;
localparam
CAXI4DMAl0OI
=
CAXI4DMAIOII
(
CAXI4DMAlOO1
)
;
localparam
CAXI4DMAO1OI
=
CAXI4DMAIOII
(
CAXI4DMAIlO0
)
;
localparam
CAXI4DMAI1OI
=
CAXI4DMAIOII
(
CAXI4DMAOOII
-
1
)
;
localparam
CAXI4DMAl1OI
=
134
;
localparam
CAXI4DMAIIO1
=
PRI_0_NUM_OF_BEATS
-
1
;
localparam
CAXI4DMAlIO1
=
PRI_1_NUM_OF_BEATS
-
1
;
localparam
CAXI4DMAOlO1
=
PRI_2_NUM_OF_BEATS
-
1
;
localparam
CAXI4DMAIlO1
=
PRI_3_NUM_OF_BEATS
-
1
;
localparam
CAXI4DMAllO1
=
PRI_4_NUM_OF_BEATS
-
1
;
localparam
CAXI4DMAO0O1
=
PRI_5_NUM_OF_BEATS
-
1
;
localparam
CAXI4DMAI0O1
=
PRI_6_NUM_OF_BEATS
-
1
;
localparam
CAXI4DMAl0O1
=
PRI_7_NUM_OF_BEATS
-
1
;
localparam
CAXI4DMAO1O1
=
0
;
input
CLOCK
;
input
RESETN
;
input
CTRL_AWVALID
;
input
CTRL_WVALID
;
input
CTRL_BREADY
;
input
CTRL_ARVALID
;
input
CTRL_RREADY
;
input
[
10
:
0
]
CTRL_AWADDR
;
input
[
3
:
0
]
CTRL_WSTRB
;
input
[
31
:
0
]
CTRL_WDATA
;
input
[
10
:
0
]
CTRL_ARADDR
;
input
[
NUM_INT_BDS
-
1
:
0
]
STRTDMAOP
;
input
[
1
:
0
]
DMA_BRESP
;
input
[
ID_WIDTH
-
1
:
0
]
DMA_BID
;
input
[
AXI_DMA_DWIDTH
-
1
:
0
]
DMA_RDATA
;
input
[
ID_WIDTH
-
1
:
0
]
DMA_RID
;
input
DMA_AWREADY
;
input
DMA_WREADY
;
input
DMA_BVALID
;
input
DMA_ARREADY
;
input
DMA_RVALID
;
input
[
1
:
0
]
DMA_RRESP
;
input
DMA_RLAST
;
input
TVALID
;
input
[
AXI_DMA_DWIDTH
-
1
:
0
]
TDATA
;
input
[
(
AXI_DMA_DWIDTH
/
8
)
-
1
:
0
]
TSTRB
;
input
[
(
AXI_DMA_DWIDTH
/
8
)
-
1
:
0
]
TKEEP
;
input
TLAST
;
input
[
ID_WIDTH
-
1
:
0
]
TID
;
input
[
1
:
0
]
TDEST
;
output
[
1
:
0
]
CTRL_BRESP
;
output
[
31
:
0
]
CTRL_RDATA
;
output
CTRL_AWREADY
;
output
CTRL_WREADY
;
output
CTRL_BVALID
;
output
CTRL_ARREADY
;
output
CTRL_RVALID
;
output
[
1
:
0
]
CTRL_RRESP
;
output
DMA_AWVALID
;
output
DMA_WVALID
;
output
DMA_WLAST
;
output
DMA_BREADY
;
output
DMA_ARVALID
;
output
DMA_RREADY
;
output
[
31
:
0
]
DMA_AWADDR
;
output
[
ID_WIDTH
-
1
:
0
]
DMA_AWID
;
output
[
7
:
0
]
DMA_AWLEN
;
output
[
2
:
0
]
DMA_AWSIZE
;
output
[
1
:
0
]
DMA_AWBURST
;
output
[
(
AXI_DMA_DWIDTH
/
8
)
-
1
:
0
]
DMA_WSTRB
;
output
[
AXI_DMA_DWIDTH
-
1
:
0
]
DMA_WDATA
;
output
[
31
:
0
]
DMA_ARADDR
;
output
[
ID_WIDTH
-
1
:
0
]
DMA_ARID
;
output
[
7
:
0
]
DMA_ARLEN
;
output
[
2
:
0
]
DMA_ARSIZE
;
output
[
1
:
0
]
DMA_ARBURST
;
output
TREADY
;
output
[
NUM_OF_INTS
-
1
:
0
]
INTERRUPT
;
wire
CAXI4DMAI1O1
;
wire
[
31
:
0
]
CAXI4DMAl1O1
;
wire
CAXI4DMAOOI1
;
wire
CAXI4DMAIOI1
;
wire
CAXI4DMAlOI1
;
wire
[
31
:
0
]
CAXI4DMAOII1
;
wire
CAXI4DMAIII1
;
wire
[
31
:
0
]
CAXI4DMAlII1
;
wire
[
31
:
0
]
CAXI4DMAOlI1
;
wire
CAXI4DMAIlI1
;
wire
CAXI4DMAllI1
;
wire
CAXI4DMAO0I1
;
wire
[
10
:
0
]
CAXI4DMAI0I1
;
wire
[
31
:
0
]
CAXI4DMAl0I1
;
wire
[
3
:
0
]
CAXI4DMAO1I1
;
wire
CAXI4DMAll1l
;
wire
CAXI4DMAO01l
;
wire
[
10
:
0
]
CAXI4DMAI01l
;
wire
[
31
:
0
]
CAXI4DMAl01l
;
wire
[
3
:
0
]
CAXI4DMAO11l
;
wire
[
NUM_INT_BDS
-
1
:
0
]
CAXI4DMAI1I1
;
wire
CAXI4DMAl1I1
;
wire
CAXI4DMAOOl1
;
wire
CAXI4DMAIOl1
;
wire
CAXI4DMAlOl1
;
wire
CAXI4DMAOIl1
;
wire
[
CAXI4DMAOIO1
-
1
:
0
]
CAXI4DMAIIl1
;
wire
CAXI4DMAlIl1
;
wire
[
31
:
0
]
CAXI4DMAOll1
;
wire
CAXI4DMAIll1
;
wire
[
NUM_INT_BDS
-
1
:
0
]
waitDscrptr
;
wire
waitStrDscrptr
;
wire
[
NUM_INT_BDS
-
1
:
0
]
CAXI4DMAlll1
;
wire
CAXI4DMAI1l
;
wire
CAXI4DMAl1l
;
wire
CAXI4DMAOO0
;
wire
CAXI4DMAIO0
;
wire
CAXI4DMAlO0
;
wire
CAXI4DMAOI0
;
wire
CAXI4DMAl00
;
wire
[
1
:
0
]
CAXI4DMAO10
;
wire
[
CAXI4DMAl1OI
-
1
:
0
]
CAXI4DMAI10
;
wire
CAXI4DMAl10
;
wire
[
CAXI4DMAl1OI
-
1
:
0
]
CAXI4DMAO0l1
;
wire
[
NUM_INT_BDS
-
1
:
0
]
CAXI4DMAI0l1
;
wire
CAXI4DMAl0l1
;
wire
CAXI4DMAO1l1
;
wire
CAXI4DMAI1l1
;
wire
CAXI4DMAl1l1
;
wire
CAXI4DMAOO01
;
wire
[
CAXI4DMAOIO1
-
1
:
0
]
CAXI4DMAIO01
;
wire
CAXI4DMAlO01
;
wire
[
CAXI4DMAI1OI
-
1
:
0
]
CAXI4DMAOI01
;
wire
[
AXI_DMA_DWIDTH
-
1
:
0
]
CAXI4DMAII01
;
wire
[
CAXI4DMAOlII
-
1
:
0
]
CAXI4DMAlI01
;
wire
[
CAXI4DMAI1OI
-
1
:
0
]
CAXI4DMAOl01
;
wire
[
CAXI4DMAOlII
-
1
:
0
]
CAXI4DMAIl01
;
wire
CAXI4DMAll01
;
wire
CAXI4DMAO001
;
wire
[
1
:
0
]
CAXI4DMAI001
;
wire
[
CAXI4DMAl0OI
-
1
:
0
]
CAXI4DMAl001
;
wire
[
31
:
0
]
CAXI4DMAO101
;
wire
[
2
:
0
]
CAXI4DMAI101
;
wire
[
CAXI4DMAI1OI
-
1
:
0
]
CAXI4DMAl101
;
wire
[
CAXI4DMAl0OI
-
1
:
0
]
CAXI4DMAOO11
;
wire
[
2
:
0
]
CAXI4DMAIO11
;
wire
[
CAXI4DMAI1OI
-
1
:
0
]
CAXI4DMAlO11
;
wire
[
1
:
0
]
CAXI4DMAOI11
;
wire
[
31
:
0
]
CAXI4DMAII11
;
wire
[
2
:
0
]
CAXI4DMAlI11
;
wire
CAXI4DMAOl11
;
wire
CAXI4DMAIl11
;
wire
[
31
:
0
]
CAXI4DMAll11
;
wire
CAXI4DMAO011
;
wire
[
7
:
0
]
CAXI4DMAI011
;
wire
CAXI4DMAl011
;
wire
[
CAXI4DMAO1OI
-
1
:
0
]
CAXI4DMAO111
;
wire
CAXI4DMAOl0
;
wire
[
CAXI4DMAO1OI
-
1
:
0
]
CAXI4DMAIl0
;
wire
[
AXI_DMA_DWIDTH
-
1
:
0
]
CAXI4DMAI111
;
wire
[
CAXI4DMAO1OI
-
1
:
0
]
CAXI4DMAl111
;
wire
[
AXI_DMA_DWIDTH
-
1
:
0
]
CAXI4DMAOOOOI
;
wire
[
CAXI4DMAO1OI
-
1
:
0
]
CAXI4DMAIOOOI
;
wire
[
CAXI4DMAO1OI
-
1
:
0
]
CAXI4DMAlOOOI
;
wire
[
NUM_INT_BDS
-
1
:
0
]
CAXI4DMAOIOOI
;
wire
CAXI4DMAIIOOI
;
wire
CAXI4DMAII1
;
wire
CAXI4DMAIl1
;
wire
CAXI4DMAlIOOI
;
wire
[
CAXI4DMAI1OI
-
1
:
0
]
CAXI4DMAOlOOI
;
wire
[
CAXI4DMAOlII
-
1
:
0
]
CAXI4DMAIlOOI
;
wire
[
AXI_DMA_DWIDTH
-
1
:
0
]
CAXI4DMAllOOI
;
wire
CAXI4DMAOOO0
;
wire
CAXI4DMAIOO0
;
wire
CAXI4DMAO0OOI
;
wire
CAXI4DMAOl1l
;
wire
CAXI4DMAIl1l
;
wire
[
31
:
0
]
CAXI4DMAl11l
;
wire
[
31
:
0
]
CAXI4DMAI0OOI
;
wire
CAXI4DMAl0OOI
;
wire
CAXI4DMAll0
;
wire
CAXI4DMAO00
;
wire
CAXI4DMAlOI
;
wire
[
31
:
0
]
CAXI4DMAOII
;
wire
CAXI4DMAIII
;
wire
[
31
:
0
]
CAXI4DMAlII
;
wire
[
1
:
0
]
CAXI4DMAOlI
;
wire
CAXI4DMAI00
;
wire
CAXI4DMAO1OOI
;
CAXI4DMAI1OOI
CAXI4DMAl1OOI
(
.CAXI4DMAI
(
CLOCK
)
,
.CAXI4DMAl
(
RESETN
)
,
.CAXI4DMAll1
(
CTRL_AWVALID
)
,
.CAXI4DMAO01
(
CTRL_WVALID
)
,
.CAXI4DMAl01
(
CTRL_BREADY
)
,
.CAXI4DMAO11
(
CTRL_ARVALID
)
,
.CAXI4DMAI11
(
CTRL_RREADY
)
,
.CAXI4DMAl11
(
CTRL_AWADDR
)
,
.CAXI4DMAIIOI
(
CTRL_WSTRB
)
,
.CAXI4DMAlIOI
(
CTRL_WDATA
)
,
.CAXI4DMAOlOI
(
CTRL_ARADDR
)
,
.CAXI4DMAOOIOI
(
CAXI4DMAI1O1
)
,
.CAXI4DMAOIO0
(
CAXI4DMAl1O1
)
,
.CAXI4DMAIIO0
(
CAXI4DMAOOI1
)
,
.CAXI4DMAlOl
(
CTRL_BRESP
)
,
.CAXI4DMAIIl
(
CTRL_RDATA
)
,
.CAXI4DMAOll
(
CTRL_AWREADY
)
,
.CAXI4DMAIll
(
CTRL_WREADY
)
,
.CAXI4DMAlll
(
CTRL_BVALID
)
,
.CAXI4DMAO0l
(
CTRL_ARREADY
)
,
.CAXI4DMAI0l
(
CTRL_RVALID
)
,
.CAXI4DMAl0l
(
CTRL_RRESP
)
,
.CAXI4DMAll1l
(
CAXI4DMAllI1
)
,
.CAXI4DMAO01l
(
CAXI4DMAO0I1
)
,
.CAXI4DMAI01l
(
CAXI4DMAI0I1
)
,
.CAXI4DMAl01l
(
CAXI4DMAl0I1
)
,
.CAXI4DMAO11l
(
CAXI4DMAO1I1
)
)
;
CAXI4DMAIOIOI
CAXI4DMAlOIOI
(
.CAXI4DMAOIIOI
(
CAXI4DMAllI1
)
,
.CAXI4DMAIIIOI
(
CAXI4DMAO0I1
)
,
.CAXI4DMAlIIOI
(
CAXI4DMAI0I1
)
,
.CAXI4DMAOlIOI
(
CAXI4DMAl0I1
)
,
.CAXI4DMAIlIOI
(
CAXI4DMAO1I1
)
,
.CAXI4DMAIOI1
(
CAXI4DMAIOI1
)
,
.CAXI4DMAOII1
(
CAXI4DMAOII1
)
,
.CAXI4DMAlOI1
(
CAXI4DMAlOI1
)
,
.CAXI4DMAlII1
(
CAXI4DMAlII1
)
,
.CAXI4DMAIII1
(
CAXI4DMAIII1
)
,
.CAXI4DMAOlI1
(
CAXI4DMAOlI1
)
,
.CAXI4DMAIlI1
(
CAXI4DMAIlI1
)
,
.CAXI4DMAI0OOI
(
CAXI4DMAI0OOI
)
,
.CAXI4DMAl0OOI
(
CAXI4DMAl0OOI
)
,
.CAXI4DMAll1l
(
CAXI4DMAll1l
)
,
.CAXI4DMAO01l
(
CAXI4DMAO01l
)
,
.CAXI4DMAI01l
(
CAXI4DMAI01l
)
,
.CAXI4DMAl01l
(
CAXI4DMAl01l
)
,
.CAXI4DMAO11l
(
CAXI4DMAO11l
)
,
.CAXI4DMAOOIOI
(
CAXI4DMAI1O1
)
,
.CAXI4DMAOIO0
(
CAXI4DMAl1O1
)
,
.CAXI4DMAIIO0
(
CAXI4DMAOOI1
)
)
;
CAXI4DMAllIOI
#
(
.CAXI4DMAl1OI
(
CAXI4DMAl1OI
)
,
.NUM_INT_BDS
(
NUM_INT_BDS
)
,
.CAXI4DMAOIO1
(
CAXI4DMAOIO1
)
,
.CAXI4DMAO1O1
(
CAXI4DMAO1O1
)
)
CAXI4DMAO0IOI
(
.CAXI4DMAI
(
CLOCK
)
,
.CAXI4DMAl
(
RESETN
)
,
.CAXI4DMAll1l
(
CAXI4DMAll1l
)
,
.CAXI4DMAO01l
(
CAXI4DMAO01l
)
,
.CAXI4DMAI01l
(
CAXI4DMAI01l
)
,
.CAXI4DMAl01l
(
CAXI4DMAl01l
)
,
.CAXI4DMAO11l
(
CAXI4DMAO11l
)
,
.CAXI4DMAI0IOI
(
CAXI4DMAO1l1
)
,
.CAXI4DMAIO01
(
CAXI4DMAIO01
)
,
.CAXI4DMAlll1
(
CAXI4DMAlll1
)
,
.CAXI4DMAOIO0
(
CAXI4DMAOII1
)
,
.CAXI4DMAIIO0
(
CAXI4DMAlOI1
)
,
.CAXI4DMAl0IOI
(
CAXI4DMAOO01
)
,
.CAXI4DMAOOIOI
(
CAXI4DMAIOI1
)
,
.CAXI4DMAO1IOI
(
CAXI4DMAO0l1
)
,
.CAXI4DMAOIOOI
(
CAXI4DMAOIOOI
)
,
.CAXI4DMAI1IOI
(
CAXI4DMAI0l1
)
,
.CAXI4DMAlI1l
(
CAXI4DMAl0l1
)
)
;
CAXI4DMAl1IOI
#
(
.NUM_INT_BDS
(
NUM_INT_BDS
)
,
.CAXI4DMAOIO1
(
CAXI4DMAOIO1
)
,
.CAXI4DMAl1OI
(
CAXI4DMAl1OI
)
,
.CAXI4DMAl0OI
(
CAXI4DMAl0OI
)
,
.NUM_PRI_LVLS
(
NUM_PRI_LVLS
)
,
.CAXI4DMAO1OI
(
CAXI4DMAO1OI
)
,
.CAXI4DMAI1OI
(
CAXI4DMAI1OI
)
,
.PRI_0_NUM_OF_BEATS
(
CAXI4DMAIIO1
)
,
.PRI_1_NUM_OF_BEATS
(
CAXI4DMAlIO1
)
,
.PRI_2_NUM_OF_BEATS
(
CAXI4DMAOlO1
)
,
.PRI_3_NUM_OF_BEATS
(
CAXI4DMAIlO1
)
,
.PRI_4_NUM_OF_BEATS
(
CAXI4DMAllO1
)
,
.PRI_5_NUM_OF_BEATS
(
CAXI4DMAO0O1
)
,
.PRI_6_NUM_OF_BEATS
(
CAXI4DMAI0O1
)
,
.PRI_7_NUM_OF_BEATS
(
CAXI4DMAl0O1
)
,
.AXI4_STREAM_IF
(
AXI4_STREAM_IF
)
)
CAXI4DMAOOlOI
(
.CAXI4DMAI
(
CLOCK
)
,
.CAXI4DMAl
(
RESETN
)
,
.CAXI4DMAIOlOI
(
CAXI4DMAI1I1
)
,
.CAXI4DMAlOlOI
(
STRTDMAOP
)
,
.CAXI4DMAI1l
(
CAXI4DMAI1l
)
,
.CAXI4DMAl1l
(
CAXI4DMAl1l
)
,
.CAXI4DMAOO0
(
CAXI4DMAOO0
)
,
.CAXI4DMAIO0
(
CAXI4DMAIO0
)
,
.CAXI4DMAlO0
(
CAXI4DMAlO0
)
,
.CAXI4DMAOI0
(
CAXI4DMAOI0
)
,
.CAXI4DMAII0
(
CAXI4DMAl011
)
,
.CAXI4DMAlI0
(
CAXI4DMAO111
)
,
.CAXI4DMAOl0
(
CAXI4DMAOl0
)
,
.CAXI4DMAIl0
(
CAXI4DMAIl0
)
,
.CAXI4DMAl00
(
CAXI4DMAl00
)
,
.CAXI4DMAO10
(
CAXI4DMAO10
)
,
.CAXI4DMAI10
(
CAXI4DMAI10
)
,
.CAXI4DMAl10
(
CAXI4DMAl10
)
,
.CAXI4DMAll0
(
CAXI4DMAll0
)
,
.CAXI4DMAO00
(
CAXI4DMAO00
)
,
.CAXI4DMAI00
(
CAXI4DMAI00
)
,
.waitDscrptr
(
waitDscrptr
)
,
.waitStrDscrptr
(
waitStrDscrptr
)
,
.CAXI4DMAI1IOI
(
CAXI4DMAI0l1
)
,
.CAXI4DMAlI1l
(
CAXI4DMAl0l1
)
,
.CAXI4DMAO1IOI
(
CAXI4DMAO0l1
)
,
.CAXI4DMAOIOOI
(
CAXI4DMAOIOOI
)
,
.CAXI4DMAl0IOI
(
CAXI4DMAOO01
)
,
.CAXI4DMAI11l
(
CAXI4DMAI11l
)
,
.CAXI4DMAl11l
(
CAXI4DMAl11l
)
,
.CAXI4DMAOI
(
CAXI4DMAll01
)
,
.CAXI4DMAII
(
CAXI4DMAO001
)
,
.CAXI4DMAlI
(
CAXI4DMAI001
)
,
.CAXI4DMAOl
(
CAXI4DMAl001
)
,
.CAXI4DMAIl
(
CAXI4DMAO101
)
,
.CAXI4DMAll
(
CAXI4DMAI101
)
,
.CAXI4DMAO0
(
CAXI4DMAl101
)
,
.CAXI4DMAI0
(
CAXI4DMAIIOOI
)
,
.CAXI4DMAOIlOI
(
CAXI4DMAOO11
)
,
.CAXI4DMAOOI
(
CAXI4DMAIO11
)
,
.CAXI4DMAIOI
(
CAXI4DMAlO11
)
,
.CAXI4DMAl0
(
CAXI4DMAOI11
)
,
.CAXI4DMAO1
(
CAXI4DMAII11
)
,
.CAXI4DMAI1
(
CAXI4DMAlI11
)
,
.CAXI4DMAIlI
(
CAXI4DMAIIlOI
)
,
.CAXI4DMAllI
(
CAXI4DMAOl11
)
,
.CAXI4DMAO0I
(
CAXI4DMAIl11
)
,
.CAXI4DMAI0I
(
CAXI4DMAll11
)
,
.CAXI4DMAl0I
(
CAXI4DMAO011
)
,
.CAXI4DMAO1I
(
CAXI4DMAI011
)
,
.CAXI4DMAlOI
(
CAXI4DMAlOI
)
,
.CAXI4DMAOII
(
CAXI4DMAOII
)
,
.CAXI4DMAIII
(
CAXI4DMAIII
)
,
.CAXI4DMAlII
(
CAXI4DMAlII
)
,
.CAXI4DMAOlI
(
CAXI4DMAOlI
)
,
.CAXI4DMAI1l1
(
CAXI4DMAI1l1
)
,
.CAXI4DMAl1l1
(
CAXI4DMAl1l1
)
,
.valid
(
CAXI4DMAl1I1
)
,
.CAXI4DMAlIlOI
(
CAXI4DMAOOl1
)
,
.CAXI4DMAOllOI
(
CAXI4DMAIOl1
)
,
.CAXI4DMAIllOI
(
CAXI4DMAlOl1
)
,
.CAXI4DMAlllOI
(
CAXI4DMAOIl1
)
,
.CAXI4DMAO0lOI
(
CAXI4DMAIIl1
)
,
.CAXI4DMAI0lOI
(
CAXI4DMAlIl1
)
,
.CAXI4DMAl0lOI
(
CAXI4DMAOll1
)
,
.CAXI4DMAO1lOI
(
CAXI4DMAIll1
)
,
.CAXI4DMAI0IOI
(
CAXI4DMAO1l1
)
,
.CAXI4DMAlll1
(
CAXI4DMAlll1
)
,
.CAXI4DMAIO01
(
CAXI4DMAIO01
)
,
.CAXI4DMAII1l
(
CAXI4DMAII1l
)
,
.CAXI4DMAO1OOI
(
CAXI4DMAO1OOI
)
,
.CAXI4DMAOl1l
(
CAXI4DMAOl1l
)
,
.CAXI4DMAIl1l
(
CAXI4DMAIl1l
)
)
;
CAXI4DMAI1lOI
#
(
.CAXI4DMAl110
(
CAXI4DMAl110
)
,
.CAXI4DMAOOO1
(
CAXI4DMAOOO1
)
,
.CAXI4DMAIOO1
(
CAXI4DMAIOO1
)
,
.NUM_INT_BDS
(
NUM_INT_BDS
)
)
CAXI4DMAl1lOI
(
.CAXI4DMAI
(
CLOCK
)
,
.CAXI4DMAl
(
RESETN
)
,
.CAXI4DMAll1l
(
CAXI4DMAll1l
)
,
.CAXI4DMAO01l
(
CAXI4DMAO01l
)
,
.CAXI4DMAI01l
(
CAXI4DMAI01l
)
,
.CAXI4DMAl01l
(
CAXI4DMAl01l
)
,
.CAXI4DMAO11l
(
CAXI4DMAO11l
)
,
.CAXI4DMAOIO0
(
CAXI4DMAOlI1
)
,
.CAXI4DMAIIO0
(
CAXI4DMAIlI1
)
,
.CAXI4DMAOO0OI
(
CAXI4DMAI1I1
)
)
;
CAXI4DMAIO0OI
#
(
.NUM_INT_BDS
(
NUM_INT_BDS
)
,
.CAXI4DMAOIO1
(
CAXI4DMAOIO1
)
,
.INT_0_QUEUE_DEPTH
(
INT_0_QUEUE_DEPTH
)
,
.INT_1_QUEUE_DEPTH
(
INT_1_QUEUE_DEPTH
)
,
.INT_2_QUEUE_DEPTH
(
INT_2_QUEUE_DEPTH
)
,
.INT_3_QUEUE_DEPTH
(
INT_3_QUEUE_DEPTH
)
)
CAXI4DMAlO0OI
(
.CAXI4DMAI
(
CLOCK
)
,
.CAXI4DMAl
(
RESETN
)
,
.CAXI4DMAll1l
(
CAXI4DMAll1l
)
,
.CAXI4DMAO01l
(
CAXI4DMAO01l
)
,
.CAXI4DMAI01l
(
CAXI4DMAI01l
)
,
.CAXI4DMAl01l
(
CAXI4DMAl01l
)
,
.CAXI4DMAO11l
(
CAXI4DMAO11l
)
,
.valid
(
CAXI4DMAl1I1
)
,
.CAXI4DMAlIlOI
(
CAXI4DMAOOl1
)
,
.CAXI4DMAOllOI
(
CAXI4DMAIOl1
)
,
.CAXI4DMAIllOI
(
CAXI4DMAlOl1
)
,
.CAXI4DMAOI0OI
(
CAXI4DMAOIl1
)
,
.intDscrptrNum
(
CAXI4DMAIIl1
)
,
.CAXI4DMAII0OI
(
CAXI4DMAlIl1
)
,
.CAXI4DMAlI0OI
(
CAXI4DMAOll1
)
,
.strDscrptr
(
CAXI4DMAIll1
)
,
.CAXI4DMAOIO0
(
CAXI4DMAlII1
)
,
.CAXI4DMAIIO0
(
CAXI4DMAIII1
)
,
.waitDscrptr
(
waitDscrptr
)
,
.waitStrDscrptr
(
waitStrDscrptr
)
,
.CAXI4DMAOl0OI
(
INTERRUPT
[
0
]
)
,
.CAXI4DMAIl0OI
(
INTERRUPT
[
1
]
)
,
.CAXI4DMAll0OI
(
INTERRUPT
[
2
]
)
,
.CAXI4DMAO00OI
(
INTERRUPT
[
3
]
)
)
;
CAXI4DMAO
#
(
.AXI_DMA_DWIDTH
(
AXI_DMA_DWIDTH
)
,
.CAXI4DMAl0OI
(
CAXI4DMAl0OI
)
,
.CAXI4DMAO1OI
(
CAXI4DMAO1OI
)
,
.CAXI4DMAI1OI
(
CAXI4DMAI1OI
)
,
.CAXI4DMAl1OI
(
CAXI4DMAl1OI
)
,
.CAXI4DMAOOII
(
CAXI4DMAOOII
)
,
.ID_WIDTH
(
ID_WIDTH
)
,
.AXI4_STREAM_IF
(
AXI4_STREAM_IF
)
)
CAXI4DMAI00OI
(
.CAXI4DMAI
(
CLOCK
)
,
.CAXI4DMAl
(
RESETN
)
,
.CAXI4DMAOI
(
CAXI4DMAll01
)
,
.CAXI4DMAII
(
CAXI4DMAO001
)
,
.CAXI4DMAlI
(
CAXI4DMAI001
)
,
.CAXI4DMAOl
(
CAXI4DMAl001
)
,
.CAXI4DMAIl
(
CAXI4DMAO101
)
,
.CAXI4DMAll
(
CAXI4DMAI101
)
,
.CAXI4DMAO0
(
CAXI4DMAl101
)
,
.CAXI4DMAI0
(
CAXI4DMAIIOOI
)
,
.CAXI4DMAl0
(
CAXI4DMAOI11
)
,
.CAXI4DMAO1
(
CAXI4DMAII11
)
,
.CAXI4DMAI1
(
CAXI4DMAlI11
)
,
.CAXI4DMAl1
(
CAXI4DMAOO11
)
,
.CAXI4DMAOOI
(
CAXI4DMAIO11
)
,
.CAXI4DMAIOI
(
CAXI4DMAlO11
)
,
.CAXI4DMAlOI
(
CAXI4DMAlOI
)
,
.CAXI4DMAOII
(
CAXI4DMAOII
)
,
.CAXI4DMAIII
(
CAXI4DMAIII
)
,
.CAXI4DMAlII
(
CAXI4DMAlII
)
,
.CAXI4DMAOlI
(
CAXI4DMAOlI
)
,
.CAXI4DMAIlI
(
CAXI4DMAIIlOI
)
,
.CAXI4DMAllI
(
CAXI4DMAOl11
)
,
.CAXI4DMAO0I
(
CAXI4DMAIl11
)
,
.CAXI4DMAI0I
(
CAXI4DMAll11
)
,
.CAXI4DMAl0I
(
CAXI4DMAO011
)
,
.CAXI4DMAO1I
(
CAXI4DMAI011
)
,
.CAXI4DMAI1I
(
CAXI4DMAI111
)
,
.CAXI4DMAl1I
(
CAXI4DMAl111
)
,
.CAXI4DMAOOl
(
CAXI4DMAOOOOI
)
,
.CAXI4DMAIOl
(
CAXI4DMAIOOOI
)
,
.CAXI4DMAlOl
(
DMA_BRESP
)
,
.CAXI4DMAOIl
(
DMA_BID
)
,
.CAXI4DMAIIl
(
DMA_RDATA
)
,
.CAXI4DMAlIl
(
DMA_RID
)
,
.CAXI4DMAOll
(
DMA_AWREADY
)
,
.CAXI4DMAIll
(
DMA_WREADY
)
,
.CAXI4DMAlll
(
DMA_BVALID
)
,
.CAXI4DMAO0l
(
DMA_ARREADY
)
,
.CAXI4DMAI0l
(
DMA_RVALID
)
,
.CAXI4DMAl0l
(
DMA_RRESP
)
,
.CAXI4DMAO1l
(
DMA_RLAST
)
,
.CAXI4DMAI1l
(
CAXI4DMAI1l
)
,
.CAXI4DMAl1l
(
CAXI4DMAl1l
)
,
.CAXI4DMAOO0
(
CAXI4DMAOO0
)
,
.CAXI4DMAIO0
(
CAXI4DMAIO0
)
,
.CAXI4DMAlO0
(
CAXI4DMAlO0
)
,
.CAXI4DMAOI0
(
CAXI4DMAOI0
)
,
.CAXI4DMAII0
(
CAXI4DMAl011
)
,
.CAXI4DMAlI0
(
CAXI4DMAO111
)
,
.CAXI4DMAOl0
(
CAXI4DMAOl0
)
,
.CAXI4DMAIl0
(
CAXI4DMAIl0
)
,
.CAXI4DMAll0
(
CAXI4DMAll0
)
,
.CAXI4DMAO00
(
CAXI4DMAO00
)
,
.CAXI4DMAI00
(
CAXI4DMAI00
)
,
.CAXI4DMAl00
(
CAXI4DMAl00
)
,
.CAXI4DMAO10
(
CAXI4DMAO10
)
,
.CAXI4DMAI10
(
CAXI4DMAI10
)
,
.CAXI4DMAl10
(
CAXI4DMAl10
)
,
.CAXI4DMAOO1
(
CAXI4DMAlO01
)
,
.CAXI4DMAIO1
(
CAXI4DMAOI01
)
,
.CAXI4DMAlO1
(
CAXI4DMAII01
)
,
.CAXI4DMAOI1
(
CAXI4DMAlI01
)
,
.CAXI4DMAII1
(
CAXI4DMAII1
)
,
.CAXI4DMAlI1
(
CAXI4DMAOl01
)
,
.CAXI4DMAOl1
(
CAXI4DMAIl01
)
,
.CAXI4DMAIl1
(
CAXI4DMAIl1
)
,
.CAXI4DMAll1
(
DMA_AWVALID
)
,
.CAXI4DMAO01
(
DMA_WVALID
)
,
.CAXI4DMAI01
(
DMA_WLAST
)
,
.CAXI4DMAl01
(
DMA_BREADY
)
,
.CAXI4DMAO11
(
DMA_ARVALID
)
,
.CAXI4DMAI11
(
DMA_RREADY
)
,
.CAXI4DMAl11
(
DMA_AWADDR
)
,
.CAXI4DMAOOOI
(
DMA_AWID
)
,
.CAXI4DMAIOOI
(
DMA_AWLEN
)
,
.CAXI4DMAlOOI
(
DMA_AWSIZE
)
,
.CAXI4DMAOIOI
(
DMA_AWBURST
)
,
.CAXI4DMAIIOI
(
DMA_WSTRB
)
,
.CAXI4DMAlIOI
(
DMA_WDATA
)
,
.CAXI4DMAOlOI
(
DMA_ARADDR
)
,
.CAXI4DMAIlOI
(
DMA_ARID
)
,
.CAXI4DMAllOI
(
DMA_ARLEN
)
,
.CAXI4DMAO0OI
(
DMA_ARSIZE
)
,
.CAXI4DMAI0OI
(
DMA_ARBURST
)
)
;
CAXI4DMAOI00
#
(
.CAXI4DMAO000
(
AXI_DMA_DWIDTH
/
8
)
,
.CAXI4DMAI000
(
CAXI4DMAOOII
)
)
CAXI4DMAl00OI
(
.CAXI4DMAI
(
CLOCK
)
,
.CAXI4DMAl
(
RESETN
)
,
.CAXI4DMAOO1
(
CAXI4DMAlO01
)
,
.CAXI4DMAIO1
(
CAXI4DMAOI01
)
,
.CAXI4DMAIlOl
(
CAXI4DMAlI01
)
,
.CAXI4DMAlO1
(
CAXI4DMAII01
)
,
.CAXI4DMAIO1l
(
CAXI4DMAII1
)
,
.CAXI4DMAlI1
(
CAXI4DMAOl01
)
,
.CAXI4DMAII00
(
CAXI4DMAIl01
)
,
.CAXI4DMAlOO0
(
1
'b
0
)
,
.CAXI4DMAlI00
(
CAXI4DMAI1l1
)
,
.CAXI4DMAOl00
(
CAXI4DMAl1l1
)
,
.CAXI4DMAI1Il
(
CAXI4DMAI111
)
,
.CAXI4DMAIl00
(
CAXI4DMAl111
)
,
.CAXI4DMAll00
(
)
)
;
generate
if
(
AXI4_STREAM_IF
)
begin
CAXI4DMAlO1l
#
(
.ID_WIDTH
(
ID_WIDTH
)
,
.CAXI4DMAlIO0
(
AXI_DMA_DWIDTH
)
,
.CAXI4DMAOlO0
(
CAXI4DMAI1OI
)
,
.CAXI4DMAIlO0
(
CAXI4DMAIlO0
)
,
.CAXI4DMAO1OI
(
CAXI4DMAO1OI
)
)
CAXI4DMAO10OI
(
.CAXI4DMAI
(
CLOCK
)
,
.CAXI4DMAl
(
RESETN
)
,
.TVALID
(
TVALID
)
,
.TDATA
(
TDATA
)
,
.TSTRB
(
TSTRB
)
,
.TKEEP
(
TKEEP
)
,
.TLAST
(
TLAST
)
,
.TID
(
TID
)
,
.TDEST
(
TDEST
)
,
.CAXI4DMAII1l
(
CAXI4DMAII1l
)
,
.CAXI4DMAlI1l
(
CAXI4DMAO1OOI
)
,
.CAXI4DMAOl1l
(
CAXI4DMAOl1l
)
,
.CAXI4DMAIl1l
(
CAXI4DMAIl1l
)
,
.CAXI4DMAll1l
(
CAXI4DMAll1l
)
,
.CAXI4DMAO01l
(
CAXI4DMAO01l
)
,
.CAXI4DMAI01l
(
CAXI4DMAI01l
)
,
.CAXI4DMAl01l
(
CAXI4DMAl01l
)
,
.CAXI4DMAO11l
(
CAXI4DMAO11l
)
,
.CAXI4DMAOI1l
(
CAXI4DMAlOOOI
)
,
.TREADY
(
TREADY
)
,
.CAXI4DMAI11l
(
CAXI4DMAI11l
)
,
.CAXI4DMAl11l
(
CAXI4DMAl11l
)
,
.CAXI4DMAOOO0
(
CAXI4DMAOOO0
)
,
.CAXI4DMAIOO0
(
CAXI4DMAIOO0
)
,
.CAXI4DMAOO1
(
CAXI4DMAlIOOI
)
,
.CAXI4DMAIO1
(
CAXI4DMAOlOOI
)
,
.CAXI4DMAIlOl
(
CAXI4DMAIlOOI
)
,
.CAXI4DMAlO1
(
CAXI4DMAllOOI
)
,
.CAXI4DMAlOO0
(
CAXI4DMAO0OOI
)
,
.CAXI4DMAOIO0
(
CAXI4DMAI0OOI
)
,
.CAXI4DMAIIO0
(
CAXI4DMAl0OOI
)
)
;
CAXI4DMAOI00
#
(
.CAXI4DMAO000
(
AXI_DMA_DWIDTH
/
8
)
,
.CAXI4DMAI000
(
CAXI4DMAOOII
)
)
CAXI4DMAI10OI
(
.CAXI4DMAI
(
CLOCK
)
,
.CAXI4DMAl
(
RESETN
)
,
.CAXI4DMAOO1
(
CAXI4DMAlIOOI
)
,
.CAXI4DMAIO1
(
CAXI4DMAOlOOI
)
,
.CAXI4DMAIlOl
(
CAXI4DMAIlOOI
)
,
.CAXI4DMAlO1
(
CAXI4DMAllOOI
)
,
.CAXI4DMAlOO0
(
CAXI4DMAO0OOI
)
,
.CAXI4DMAIO1l
(
CAXI4DMAIl1
)
,
.CAXI4DMAlI1
(
CAXI4DMAOl01
)
,
.CAXI4DMAII00
(
CAXI4DMAIl01
)
,
.CAXI4DMAlI00
(
CAXI4DMAOOO0
)
,
.CAXI4DMAOl00
(
CAXI4DMAIOO0
)
,
.CAXI4DMAI1Il
(
CAXI4DMAOOOOI
)
,
.CAXI4DMAIl00
(
CAXI4DMAIOOOI
)
,
.CAXI4DMAll00
(
CAXI4DMAlOOOI
)
)
;
end
endgenerate
endmodule
