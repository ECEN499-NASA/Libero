// Actel Corporation Proprietary and Confidential
// Copyright 2007 Actel Corporation.  All rights reserved.
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN 
// ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED 
// IN ADVANCE IN WRITING.  
// Revision Information:
// SVN Revision Information:
// SVN $Revision: 6419 $
// SVN $Date: 2009-02-04 04:34:22 -0800 (Wed, 04 Feb 2009) $
`timescale 1ns/100ps
module
COREGPIO_0_COREGPIO_0_0_BFM_AHBLAPB
(
SYSCLK
,
SYSRSTN
,
HCLK
,
HRESETN
,
HADDR
,
HBURST
,
HMASTLOCK
,
HPROT
,
HSIZE
,
HTRANS
,
HWRITE
,
HWDATA
,
HRDATA
,
HREADYIN
,
HREADYOUT
,
HRESP
,
HSEL
,
PCLK
,
PRESETN
,
PADDR
,
PENABLE
,
PWRITE
,
PWDATA
,
PRDATA
,
PREADY
,
PSLVERR
,
PSEL
,
INTERRUPT
,
GP_OUT
,
GP_IN
,
EXT_WR
,
EXT_RD
,
EXT_ADDR
,
EXT_DATA
,
EXT_WAIT
,
FINISHED
,
FAILED
)
;
parameter
VECTFILE
=
"test.vec"
;
parameter
MAX_INSTRUCTIONS
=
16384
;
parameter
MAX_STACK
=
1024
;
parameter
MAX_MEMTEST
=
65536
;
parameter
TPD
=
1
;
parameter
DEBUGLEVEL
=
-
1
;
parameter
ARGVALUE0
=
0
;
parameter
ARGVALUE1
=
0
;
parameter
ARGVALUE2
=
0
;
parameter
ARGVALUE3
=
0
;
parameter
ARGVALUE4
=
0
;
parameter
ARGVALUE5
=
0
;
parameter
ARGVALUE6
=
0
;
parameter
ARGVALUE7
=
0
;
parameter
ARGVALUE8
=
0
;
parameter
ARGVALUE9
=
0
;
parameter
ARGVALUE10
=
0
;
parameter
ARGVALUE11
=
0
;
parameter
ARGVALUE12
=
0
;
parameter
ARGVALUE13
=
0
;
parameter
ARGVALUE14
=
0
;
parameter
ARGVALUE15
=
0
;
parameter
ARGVALUE16
=
0
;
parameter
ARGVALUE17
=
0
;
parameter
ARGVALUE18
=
0
;
parameter
ARGVALUE19
=
0
;
parameter
ARGVALUE20
=
0
;
parameter
ARGVALUE21
=
0
;
parameter
ARGVALUE22
=
0
;
parameter
ARGVALUE23
=
0
;
parameter
ARGVALUE24
=
0
;
parameter
ARGVALUE25
=
0
;
parameter
ARGVALUE26
=
0
;
parameter
ARGVALUE27
=
0
;
parameter
ARGVALUE28
=
0
;
parameter
ARGVALUE29
=
0
;
parameter
ARGVALUE30
=
0
;
parameter
ARGVALUE31
=
0
;
parameter
ARGVALUE32
=
0
;
parameter
ARGVALUE33
=
0
;
parameter
ARGVALUE34
=
0
;
parameter
ARGVALUE35
=
0
;
parameter
ARGVALUE36
=
0
;
parameter
ARGVALUE37
=
0
;
parameter
ARGVALUE38
=
0
;
parameter
ARGVALUE39
=
0
;
parameter
ARGVALUE40
=
0
;
parameter
ARGVALUE41
=
0
;
parameter
ARGVALUE42
=
0
;
parameter
ARGVALUE43
=
0
;
parameter
ARGVALUE44
=
0
;
parameter
ARGVALUE45
=
0
;
parameter
ARGVALUE46
=
0
;
parameter
ARGVALUE47
=
0
;
parameter
ARGVALUE48
=
0
;
parameter
ARGVALUE49
=
0
;
parameter
ARGVALUE50
=
0
;
parameter
ARGVALUE51
=
0
;
parameter
ARGVALUE52
=
0
;
parameter
ARGVALUE53
=
0
;
parameter
ARGVALUE54
=
0
;
parameter
ARGVALUE55
=
0
;
parameter
ARGVALUE56
=
0
;
parameter
ARGVALUE57
=
0
;
parameter
ARGVALUE58
=
0
;
parameter
ARGVALUE59
=
0
;
parameter
ARGVALUE60
=
0
;
parameter
ARGVALUE61
=
0
;
parameter
ARGVALUE62
=
0
;
parameter
ARGVALUE63
=
0
;
parameter
ARGVALUE64
=
0
;
parameter
ARGVALUE65
=
0
;
parameter
ARGVALUE66
=
0
;
parameter
ARGVALUE67
=
0
;
parameter
ARGVALUE68
=
0
;
parameter
ARGVALUE69
=
0
;
parameter
ARGVALUE70
=
0
;
parameter
ARGVALUE71
=
0
;
parameter
ARGVALUE72
=
0
;
parameter
ARGVALUE73
=
0
;
parameter
ARGVALUE74
=
0
;
parameter
ARGVALUE75
=
0
;
parameter
ARGVALUE76
=
0
;
parameter
ARGVALUE77
=
0
;
parameter
ARGVALUE78
=
0
;
parameter
ARGVALUE79
=
0
;
parameter
ARGVALUE80
=
0
;
parameter
ARGVALUE81
=
0
;
parameter
ARGVALUE82
=
0
;
parameter
ARGVALUE83
=
0
;
parameter
ARGVALUE84
=
0
;
parameter
ARGVALUE85
=
0
;
parameter
ARGVALUE86
=
0
;
parameter
ARGVALUE87
=
0
;
parameter
ARGVALUE88
=
0
;
parameter
ARGVALUE89
=
0
;
parameter
ARGVALUE90
=
0
;
parameter
ARGVALUE91
=
0
;
parameter
ARGVALUE92
=
0
;
parameter
ARGVALUE93
=
0
;
parameter
ARGVALUE94
=
0
;
parameter
ARGVALUE95
=
0
;
parameter
ARGVALUE96
=
0
;
parameter
ARGVALUE97
=
0
;
parameter
ARGVALUE98
=
0
;
parameter
ARGVALUE99
=
0
;
localparam
OPMODE
=
0
;
localparam
CON_SPULSE
=
0
;
input
SYSCLK
;
input
SYSRSTN
;
output
HCLK
;
wire
HCLK
;
output
HRESETN
;
wire
HRESETN
;
output
[
31
:
0
]
HADDR
;
wire
[
31
:
0
]
HADDR
;
output
[
2
:
0
]
HBURST
;
wire
[
2
:
0
]
HBURST
;
output
HMASTLOCK
;
wire
HMASTLOCK
;
output
[
3
:
0
]
HPROT
;
wire
[
3
:
0
]
HPROT
;
output
[
2
:
0
]
HSIZE
;
wire
[
2
:
0
]
HSIZE
;
output
[
1
:
0
]
HTRANS
;
wire
[
1
:
0
]
HTRANS
;
output
HWRITE
;
wire
HWRITE
;
output
[
31
:
0
]
HWDATA
;
wire
[
31
:
0
]
HWDATA
;
input
[
31
:
0
]
HRDATA
;
input
HREADYIN
;
output
HREADYOUT
;
wire
HREADYOUT
;
input
HRESP
;
output
[
15
:
0
]
HSEL
;
wire
[
15
:
0
]
HSEL
;
output
PCLK
;
wire
PCLK
;
output
PRESETN
;
wire
PRESETN
;
output
[
31
:
0
]
PADDR
;
wire
[
31
:
0
]
PADDR
;
output
PENABLE
;
wire
PENABLE
;
output
PWRITE
;
wire
PWRITE
;
output
[
31
:
0
]
PWDATA
;
wire
[
31
:
0
]
PWDATA
;
input
[
31
:
0
]
PRDATA
;
input
PREADY
;
input
PSLVERR
;
output
[
15
:
0
]
PSEL
;
wire
[
15
:
0
]
PSEL
;
input
[
255
:
0
]
INTERRUPT
;
output
[
31
:
0
]
GP_OUT
;
wire
[
31
:
0
]
GP_OUT
;
input
[
31
:
0
]
GP_IN
;
output
EXT_WR
;
wire
EXT_WR
;
output
EXT_RD
;
wire
EXT_RD
;
output
[
31
:
0
]
EXT_ADDR
;
wire
[
31
:
0
]
EXT_ADDR
;
inout
[
31
:
0
]
EXT_DATA
;
wire
[
31
:
0
]
EXT_DATA
;
wire
[
31
:
0
]
BFMA1O1OII
;
input
EXT_WAIT
;
output
FINISHED
;
wire
FINISHED
;
output
FAILED
;
wire
FAILED
;
wire
BFMA1l0lII
;
wire
BFMA1O1lII
;
wire
BFMA1I1lII
;
wire
[
31
:
0
]
BFMA1l1lII
;
wire
[
2
:
0
]
BFMA1OO0II
;
wire
BFMA1IO0II
;
wire
[
3
:
0
]
BFMA1lO0II
;
wire
[
2
:
0
]
BFMA1OI0II
;
wire
[
1
:
0
]
BFMA1II0II
;
wire
BFMA1lI0II
;
reg
[
31
:
0
]
BFMA1Ol0II
;
wire
[
31
:
0
]
BFMA1Il0II
;
reg
BFMA1ll0II
;
wire
BFMA1O00II
;
wire
BFMA1I00II
;
reg
BFMA1l00II
;
wire
[
15
:
0
]
BFMA1O10II
;
wire
[
31
:
0
]
BFMA1I10II
;
wire
BFMA1l10II
;
wire
BFMA1OO1II
;
reg
BFMA1IO1II
;
wire
[
31
:
0
]
INSTR_IN
=
{
32
{
1
'b
0
}
}
;
assign
EXT_DATA
=
BFMA1O1OII
;
COREGPIO_0_COREGPIO_0_0_BFM_MAIN
#
(
OPMODE
,
VECTFILE
,
MAX_INSTRUCTIONS
,
MAX_STACK
,
MAX_MEMTEST
,
TPD
,
DEBUGLEVEL
,
CON_SPULSE
,
ARGVALUE0
,
ARGVALUE1
,
ARGVALUE2
,
ARGVALUE3
,
ARGVALUE4
,
ARGVALUE5
,
ARGVALUE6
,
ARGVALUE7
,
ARGVALUE8
,
ARGVALUE9
,
ARGVALUE10
,
ARGVALUE11
,
ARGVALUE12
,
ARGVALUE13
,
ARGVALUE14
,
ARGVALUE15
,
ARGVALUE16
,
ARGVALUE17
,
ARGVALUE18
,
ARGVALUE19
,
ARGVALUE20
,
ARGVALUE21
,
ARGVALUE22
,
ARGVALUE23
,
ARGVALUE24
,
ARGVALUE25
,
ARGVALUE26
,
ARGVALUE27
,
ARGVALUE28
,
ARGVALUE29
,
ARGVALUE30
,
ARGVALUE31
,
ARGVALUE32
,
ARGVALUE33
,
ARGVALUE34
,
ARGVALUE35
,
ARGVALUE36
,
ARGVALUE37
,
ARGVALUE38
,
ARGVALUE39
,
ARGVALUE40
,
ARGVALUE41
,
ARGVALUE42
,
ARGVALUE43
,
ARGVALUE44
,
ARGVALUE45
,
ARGVALUE46
,
ARGVALUE47
,
ARGVALUE48
,
ARGVALUE49
,
ARGVALUE50
,
ARGVALUE51
,
ARGVALUE52
,
ARGVALUE53
,
ARGVALUE54
,
ARGVALUE55
,
ARGVALUE56
,
ARGVALUE57
,
ARGVALUE58
,
ARGVALUE59
,
ARGVALUE60
,
ARGVALUE61
,
ARGVALUE62
,
ARGVALUE63
,
ARGVALUE64
,
ARGVALUE65
,
ARGVALUE66
,
ARGVALUE67
,
ARGVALUE68
,
ARGVALUE69
,
ARGVALUE70
,
ARGVALUE71
,
ARGVALUE72
,
ARGVALUE73
,
ARGVALUE74
,
ARGVALUE75
,
ARGVALUE76
,
ARGVALUE77
,
ARGVALUE78
,
ARGVALUE79
,
ARGVALUE80
,
ARGVALUE81
,
ARGVALUE82
,
ARGVALUE83
,
ARGVALUE84
,
ARGVALUE85
,
ARGVALUE86
,
ARGVALUE87
,
ARGVALUE88
,
ARGVALUE89
,
ARGVALUE90
,
ARGVALUE91
,
ARGVALUE92
,
ARGVALUE93
,
ARGVALUE94
,
ARGVALUE95
,
ARGVALUE96
,
ARGVALUE97
,
ARGVALUE98
,
ARGVALUE99
)
BFMA1I1OII
(
.SYSCLK
(
SYSCLK
)
,
.SYSRSTN
(
SYSRSTN
)
,
.HADDR
(
BFMA1l1lII
)
,
.HCLK
(
BFMA1O1lII
)
,
.PCLK
(
BFMA1l0lII
)
,
.HRESETN
(
BFMA1I1lII
)
,
.HBURST
(
BFMA1OO0II
)
,
.HMASTLOCK
(
BFMA1IO0II
)
,
.HPROT
(
BFMA1lO0II
)
,
.HSIZE
(
BFMA1OI0II
)
,
.HTRANS
(
BFMA1II0II
)
,
.HWRITE
(
BFMA1lI0II
)
,
.HWDATA
(
BFMA1Il0II
)
,
.HRDATA
(
BFMA1Ol0II
)
,
.HREADY
(
BFMA1ll0II
)
,
.HRESP
(
BFMA1l00II
)
,
.HSEL
(
BFMA1O10II
)
,
.INTERRUPT
(
INTERRUPT
)
,
.GP_OUT
(
GP_OUT
)
,
.GP_IN
(
GP_IN
)
,
.EXT_WR
(
EXT_WR
)
,
.EXT_RD
(
EXT_RD
)
,
.EXT_ADDR
(
EXT_ADDR
)
,
.EXT_DATA
(
EXT_DATA
)
,
.EXT_WAIT
(
EXT_WAIT
)
,
.CON_ADDR
(
16
'b
0
)
,
.CON_DATA
(
)
,
.CON_RD
(
1
'b
0
)
,
.CON_WR
(
1
'b
0
)
,
.CON_BUSY
(
)
,
.INSTR_OUT
(
)
,
.INSTR_IN
(
INSTR_IN
)
,
.FINISHED
(
FINISHED
)
,
.FAILED
(
FAILED
)
)
;
assign
HCLK
=
BFMA1O1lII
;
assign
PCLK
=
BFMA1l0lII
;
assign
PRESETN
=
BFMA1I1lII
;
BFMA1l1OII
#
(
TPD
)
BFMA1lO1II
(
.HCLK
(
BFMA1O1lII
)
,
.HRESETN
(
BFMA1I1lII
)
,
.HSEL
(
BFMA1O10II
[
1
]
)
,
.HWRITE
(
BFMA1lI0II
)
,
.HADDR
(
BFMA1l1lII
)
,
.HWDATA
(
BFMA1Il0II
)
,
.HRDATA
(
BFMA1I10II
)
,
.HREADYIN
(
HREADYIN
)
,
.HREADYOUT
(
BFMA1OO1II
)
,
.HTRANS
(
BFMA1II0II
)
,
.HSIZE
(
BFMA1OI0II
)
,
.HBURST
(
BFMA1OO0II
)
,
.HMASTLOCK
(
BFMA1IO0II
)
,
.HPROT
(
BFMA1lO0II
)
,
.HRESP
(
BFMA1l10II
)
,
.PSEL
(
PSEL
)
,
.PADDR
(
PADDR
)
,
.PWRITE
(
PWRITE
)
,
.PENABLE
(
PENABLE
)
,
.PWDATA
(
PWDATA
)
,
.PRDATA
(
PRDATA
)
,
.PREADY
(
PREADY
)
,
.PSLVERR
(
PSLVERR
)
)
;
always
@
(
posedge
BFMA1O1lII
or
negedge
BFMA1I1lII
)
begin
if
(
BFMA1I1lII
==
1
'b
0
)
begin
BFMA1IO1II
<=
1
'b
0
;
end
else
begin
if
(
BFMA1ll0II
==
1
'b
1
)
begin
BFMA1IO1II
<=
1
'b
0
;
if
(
(
BFMA1O10II
[
1
]
)
==
1
'b
1
)
begin
BFMA1IO1II
<=
1
'b
1
;
end
end
end
end
always
@
(
BFMA1IO1II
or
BFMA1l10II
or
BFMA1OO1II
or
BFMA1I10II
or
HRESP
or
HREADYIN
or
HRDATA
)
begin
if
(
BFMA1IO1II
==
1
'b
1
)
begin
BFMA1l00II
<=
BFMA1l10II
;
BFMA1ll0II
<=
BFMA1OO1II
;
BFMA1Ol0II
<=
BFMA1I10II
;
end
else
begin
BFMA1l00II
<=
HRESP
;
BFMA1ll0II
<=
HREADYIN
;
BFMA1Ol0II
<=
HRDATA
;
end
end
assign
HREADYOUT
=
BFMA1ll0II
;
assign
HRESETN
=
BFMA1I1lII
;
assign
HADDR
=
BFMA1l1lII
;
assign
HBURST
=
BFMA1OO0II
;
assign
HMASTLOCK
=
BFMA1IO0II
;
assign
HPROT
=
BFMA1lO0II
;
assign
HSIZE
=
BFMA1OI0II
;
assign
HTRANS
=
BFMA1II0II
;
assign
HWRITE
=
BFMA1lI0II
;
assign
HWDATA
=
BFMA1Il0II
;
assign
HSEL
=
BFMA1O10II
;
endmodule
