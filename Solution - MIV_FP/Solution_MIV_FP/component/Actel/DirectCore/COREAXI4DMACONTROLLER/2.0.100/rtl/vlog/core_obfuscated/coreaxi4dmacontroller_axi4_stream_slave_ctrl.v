// Microsemi Corporation Proprietary and Confidential
// Copyright 2017 Microsemi Corporation.  All rights reserved.
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
// ACCORDANCE WITH THE MICROSEMI LICENSE AGREEMENT AND MUST BE APPROVED
// IN ADVANCE IN WRITING.
// SVN Revision Information:
// SVN $Revision: 28873 $
// SVN $Date: 2017-02-13 13:08:48 +0000 (Mon, 13 Feb 2017) $
module
CAXI4DMAlO1l
(
CAXI4DMAI
,
CAXI4DMAl
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
CAXI4DMAOI1l
,
CAXI4DMAII1l
,
CAXI4DMAlI1l
,
CAXI4DMAOl1l
,
CAXI4DMAIl1l
,
CAXI4DMAll1l
,
CAXI4DMAO01l
,
CAXI4DMAI01l
,
CAXI4DMAl01l
,
CAXI4DMAO11l
,
TREADY
,
CAXI4DMAI11l
,
CAXI4DMAl11l
,
CAXI4DMAOO1
,
CAXI4DMAIO1
,
CAXI4DMAIlOl
,
CAXI4DMAlO1
,
CAXI4DMAOOO0
,
CAXI4DMAIOO0
,
CAXI4DMAlOO0
,
CAXI4DMAOIO0
,
CAXI4DMAIIO0
)
;
parameter
ID_WIDTH
=
1
;
parameter
CAXI4DMAlIO0
=
64
;
parameter
CAXI4DMAOlO0
=
4
;
parameter
CAXI4DMAIlO0
=
4
;
parameter
CAXI4DMAO1OI
=
12
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
CAXI4DMAOlII
=
CAXI4DMAIOII
(
CAXI4DMAlIO0
/
8
)
;
localparam
[
10
:
0
]
CAXI4DMAllO0
=
11
'h
460
;
input
CAXI4DMAI
;
input
CAXI4DMAl
;
input
TVALID
;
input
[
CAXI4DMAlIO0
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
CAXI4DMAlIO0
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
CAXI4DMAlIO0
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
input
[
CAXI4DMAO1OI
-
1
:
0
]
CAXI4DMAOI1l
;
input
CAXI4DMAII1l
;
input
CAXI4DMAlI1l
;
input
CAXI4DMAOl1l
;
input
CAXI4DMAIl1l
;
input
CAXI4DMAll1l
;
input
CAXI4DMAO01l
;
input
[
10
:
0
]
CAXI4DMAI01l
;
input
[
31
:
0
]
CAXI4DMAl01l
;
input
[
3
:
0
]
CAXI4DMAO11l
;
output
TREADY
;
output
CAXI4DMAI11l
;
output
[
31
:
0
]
CAXI4DMAl11l
;
output
CAXI4DMAOO1
;
output
[
CAXI4DMAOlO0
-
1
:
0
]
CAXI4DMAIO1
;
output
[
CAXI4DMAOlII
-
1
:
0
]
CAXI4DMAIlOl
;
output
[
CAXI4DMAlIO0
-
1
:
0
]
CAXI4DMAlO1
;
output
CAXI4DMAOOO0
;
output
CAXI4DMAIOO0
;
output
CAXI4DMAlOO0
;
output
[
31
:
0
]
CAXI4DMAOIO0
;
output
CAXI4DMAIIO0
;
reg
[
3
:
0
]
CAXI4DMAO0O0
;
reg
[
3
:
0
]
CAXI4DMAI0O0
;
reg
[
3
:
0
]
CAXI4DMAl0O0
;
reg
[
3
:
0
]
CAXI4DMAO1O0
;
reg
CAXI4DMAI1O0
;
reg
CAXI4DMAl1O0
;
reg
CAXI4DMAOOI0
;
reg
CAXI4DMAIOI0
;
reg
[
31
:
0
]
CAXI4DMAlOI0
;
reg
[
31
:
0
]
CAXI4DMAOII0
;
reg
CAXI4DMAl1Ol
;
reg
CAXI4DMAOOIl
;
reg
[
CAXI4DMAOlO0
-
1
:
0
]
CAXI4DMAll1I
;
reg
[
CAXI4DMAOlO0
-
1
:
0
]
CAXI4DMAO01I
;
reg
[
CAXI4DMAOlII
-
1
:
0
]
CAXI4DMAIII0
;
reg
[
CAXI4DMAOlII
-
1
:
0
]
CAXI4DMAlII0
;
reg
[
CAXI4DMAlIO0
-
1
:
0
]
CAXI4DMAIOIl
;
reg
[
CAXI4DMAlIO0
-
1
:
0
]
CAXI4DMAlOIl
;
wire
[
CAXI4DMAlIO0
-
1
:
0
]
CAXI4DMAOlI0
;
reg
[
1
:
0
]
CAXI4DMAIlI0
;
wire
CAXI4DMAII1l
;
reg
CAXI4DMAllI0
;
reg
CAXI4DMAO0I0
;
reg
CAXI4DMAI0I0
;
reg
CAXI4DMAl0I0
;
reg
CAXI4DMAO1I0
;
reg
CAXI4DMAI1I0
;
reg
CAXI4DMAl1I0
;
reg
[
1
:
0
]
CAXI4DMAOOl0
;
reg
[
1
:
0
]
CAXI4DMAIOl0
;
wire
CAXI4DMAlOl0
;
reg
[
31
:
0
]
CAXI4DMAOIl0
[
0
:
3
]
;
integer
CAXI4DMAIIl0
;
reg
CAXI4DMAlIl0
;
reg
[
1
:
0
]
CAXI4DMAOll0
;
wire
CAXI4DMAIll0
;
localparam
[
3
:
0
]
CAXI4DMAlll0
=
4
'b
0001
;
localparam
[
3
:
0
]
CAXI4DMAO0l0
=
4
'b
0010
;
localparam
[
3
:
0
]
CAXI4DMAI0l0
=
4
'b
0100
;
localparam
[
3
:
0
]
CAXI4DMAl0l0
=
4
'b
1000
;
localparam
[
3
:
0
]
CAXI4DMAO1l0
=
4
'b
0001
;
localparam
[
3
:
0
]
CAXI4DMAI1l0
=
4
'b
0010
;
localparam
[
3
:
0
]
CAXI4DMAl1l0
=
4
'b
0100
;
localparam
[
3
:
0
]
CAXI4DMAOO00
=
4
'b
1000
;
localparam
[
1
:
0
]
CAXI4DMAIO00
=
2
'b
01
;
localparam
[
1
:
0
]
CAXI4DMAlO00
=
2
'b
10
;
always
@
(
posedge
CAXI4DMAI
or
negedge
CAXI4DMAl
)
begin
if
(
!
CAXI4DMAl
)
begin
CAXI4DMAl0O0
<=
CAXI4DMAlll0
;
end
else
begin
CAXI4DMAl0O0
<=
CAXI4DMAO1O0
;
end
end
always
@
(
*
)
begin
CAXI4DMAIOI0
<=
1
'b
0
;
CAXI4DMAOII0
<=
32
'b
0
;
case
(
CAXI4DMAl0O0
)
CAXI4DMAlll0
:
begin
if
(
TVALID
&
CAXI4DMAlOl0
)
begin
CAXI4DMAIOI0
<=
1
'b
1
;
CAXI4DMAOII0
<=
CAXI4DMAOIl0
[
TDEST
]
;
CAXI4DMAO1O0
<=
CAXI4DMAO0l0
;
end
else
begin
CAXI4DMAO1O0
<=
CAXI4DMAlll0
;
end
end
CAXI4DMAO0l0
:
begin
if
(
TVALID
&
TLAST
&
TREADY
)
begin
if
(
CAXI4DMAII1l
)
begin
CAXI4DMAO1O0
<=
CAXI4DMAlll0
;
end
else
begin
CAXI4DMAIOI0
<=
1
'b
1
;
CAXI4DMAOII0
<=
CAXI4DMAlOI0
;
CAXI4DMAO1O0
<=
CAXI4DMAl0l0
;
end
end
else
begin
if
(
CAXI4DMAII1l
)
begin
CAXI4DMAO1O0
<=
CAXI4DMAI0l0
;
end
else
begin
CAXI4DMAIOI0
<=
1
'b
1
;
CAXI4DMAOII0
<=
CAXI4DMAlOI0
;
CAXI4DMAO1O0
<=
CAXI4DMAO0l0
;
end
end
end
CAXI4DMAI0l0
:
begin
if
(
TVALID
&
TLAST
&
TREADY
)
begin
CAXI4DMAO1O0
<=
CAXI4DMAlll0
;
end
else
begin
CAXI4DMAO1O0
<=
CAXI4DMAI0l0
;
end
end
CAXI4DMAl0l0
:
begin
if
(
CAXI4DMAII1l
)
begin
CAXI4DMAO1O0
<=
CAXI4DMAlll0
;
end
else
begin
CAXI4DMAIOI0
<=
1
'b
1
;
CAXI4DMAOII0
<=
CAXI4DMAlOI0
;
CAXI4DMAO1O0
<=
CAXI4DMAl0l0
;
end
end
default
:
begin
CAXI4DMAO1O0
<=
CAXI4DMAlll0
;
end
endcase
end
assign
CAXI4DMAIll0
=
CAXI4DMAII1l
&
~
CAXI4DMAlI1l
;
always
@
(
posedge
CAXI4DMAI
or
negedge
CAXI4DMAl
)
begin
if
(
!
CAXI4DMAl
)
begin
CAXI4DMAO0O0
<=
CAXI4DMAO1l0
;
end
else
begin
CAXI4DMAO0O0
<=
CAXI4DMAI0O0
;
end
end
always
@
(
*
)
begin
CAXI4DMAl1O0
<=
1
'b
0
;
CAXI4DMAOOIl
<=
1
'b
0
;
CAXI4DMAO01I
<=
CAXI4DMAll1I
;
CAXI4DMAlII0
<=
{
CAXI4DMAOlII
{
1
'b
0
}
}
;
CAXI4DMAlOIl
<=
{
CAXI4DMAlIO0
{
1
'b
0
}
}
;
CAXI4DMAO0I0
<=
CAXI4DMAllI0
;
CAXI4DMAl0I0
<=
1
'b
0
;
CAXI4DMAlIl0
<=
1
'b
0
;
case
(
CAXI4DMAO0O0
)
CAXI4DMAO1l0
:
begin
if
(
CAXI4DMAlOl0
)
begin
if
(
TVALID
)
begin
if
(
CAXI4DMAl0O0
==
CAXI4DMAlll0
)
begin
CAXI4DMAl1O0
<=
1
'b
1
;
CAXI4DMAI0O0
<=
CAXI4DMAI1l0
;
end
else
begin
CAXI4DMAI0O0
<=
CAXI4DMAO1l0
;
end
end
else
begin
CAXI4DMAI0O0
<=
CAXI4DMAO1l0
;
end
end
else
begin
CAXI4DMAI0O0
<=
CAXI4DMAO1l0
;
end
end
CAXI4DMAI1l0
:
begin
if
(
TVALID
&
TREADY
)
begin
CAXI4DMAOOIl
<=
1
'b
1
;
CAXI4DMAlOIl
<=
TDATA
;
if
(
TLAST
)
begin
CAXI4DMAlII0
<=
CAXI4DMAOlI0
;
CAXI4DMAI0O0
<=
CAXI4DMAOO00
;
end
else
begin
CAXI4DMAl1O0
<=
1
'b
1
;
CAXI4DMAlII0
<=
(
CAXI4DMAlIO0
/
8
)
;
CAXI4DMAI0O0
<=
CAXI4DMAl1l0
;
end
end
else
begin
CAXI4DMAI0O0
<=
CAXI4DMAI1l0
;
CAXI4DMAl1O0
<=
1
'b
1
;
end
end
CAXI4DMAl1l0
:
begin
if
(
TVALID
&
TREADY
)
begin
if
(
CAXI4DMAO1I0
)
begin
if
(
TLAST
)
begin
CAXI4DMAl0I0
<=
1
'b
1
;
CAXI4DMAI0O0
<=
CAXI4DMAOO00
;
end
else
begin
CAXI4DMAl1O0
<=
1
'b
1
;
CAXI4DMAI0O0
<=
CAXI4DMAl1l0
;
end
end
else
begin
if
(
(
CAXI4DMAOI1l
==
CAXI4DMAIlO0
-
(
2
*
(
CAXI4DMAlIO0
/
8
)
)
)
&&
(
CAXI4DMAl1Ol
==
1
'b
1
)
)
begin
CAXI4DMAOOIl
<=
1
'b
1
;
CAXI4DMAlOIl
<=
TDATA
;
CAXI4DMAO01I
<=
CAXI4DMAll1I
+
1
'b
1
;
if
(
TLAST
)
begin
CAXI4DMAlII0
<=
CAXI4DMAOlI0
;
CAXI4DMAI0O0
<=
CAXI4DMAOO00
;
end
else
begin
CAXI4DMAlII0
<=
(
CAXI4DMAlIO0
/
8
)
;
CAXI4DMAI0O0
<=
CAXI4DMAl1l0
;
end
end
else
if
(
CAXI4DMAOI1l
==
CAXI4DMAIlO0
-
(
CAXI4DMAlIO0
/
8
)
)
begin
CAXI4DMAOOIl
<=
1
'b
1
;
CAXI4DMAlOIl
<=
TDATA
;
CAXI4DMAO01I
<=
CAXI4DMAll1I
+
1
'b
1
;
if
(
TLAST
)
begin
CAXI4DMAlII0
<=
CAXI4DMAOlI0
;
CAXI4DMAI0O0
<=
CAXI4DMAOO00
;
end
else
begin
CAXI4DMAlII0
<=
(
CAXI4DMAlIO0
/
8
)
;
CAXI4DMAI0O0
<=
CAXI4DMAl1l0
;
end
end
else
begin
CAXI4DMAOOIl
<=
1
'b
1
;
CAXI4DMAlOIl
<=
TDATA
;
CAXI4DMAO01I
<=
CAXI4DMAll1I
+
1
'b
1
;
if
(
TLAST
)
begin
CAXI4DMAlII0
<=
CAXI4DMAOlI0
;
CAXI4DMAI0O0
<=
CAXI4DMAOO00
;
end
else
begin
CAXI4DMAl1O0
<=
1
'b
1
;
CAXI4DMAlII0
<=
(
CAXI4DMAlIO0
/
8
)
;
CAXI4DMAI0O0
<=
CAXI4DMAl1l0
;
end
end
end
end
else
begin
if
(
(
CAXI4DMAOI1l
==
CAXI4DMAIlO0
-
(
CAXI4DMAlIO0
/
8
)
)
&&
(
CAXI4DMAl1Ol
==
1
'b
1
)
)
begin
end
else
if
(
CAXI4DMAOI1l
>
CAXI4DMAIlO0
-
(
CAXI4DMAlIO0
/
8
)
)
begin
end
else
begin
CAXI4DMAl1O0
<=
1
'b
1
;
end
CAXI4DMAI0O0
<=
CAXI4DMAl1l0
;
end
end
CAXI4DMAOO00
:
begin
CAXI4DMAlIl0
<=
1
'b
1
;
CAXI4DMAO0I0
<=
~
CAXI4DMAllI0
;
CAXI4DMAO01I
<=
{
CAXI4DMAOlO0
{
1
'b
0
}
}
;
CAXI4DMAI0O0
<=
CAXI4DMAO1l0
;
end
default
:
begin
CAXI4DMAI0O0
<=
CAXI4DMAO1l0
;
end
endcase
end
always
@
(
posedge
CAXI4DMAI
or
negedge
CAXI4DMAl
)
begin
if
(
!
CAXI4DMAl
)
begin
CAXI4DMAI1O0
<=
1
'b
0
;
end
else
begin
CAXI4DMAI1O0
<=
CAXI4DMAl1O0
;
end
end
assign
TREADY
=
CAXI4DMAI1O0
;
always
@
(
posedge
CAXI4DMAI
or
negedge
CAXI4DMAl
)
begin
if
(
!
CAXI4DMAl
)
begin
CAXI4DMAOOI0
<=
1
'b
0
;
end
else
begin
CAXI4DMAOOI0
<=
CAXI4DMAIOI0
;
end
end
assign
CAXI4DMAI11l
=
CAXI4DMAOOI0
;
always
@
(
posedge
CAXI4DMAI
or
negedge
CAXI4DMAl
)
begin
if
(
!
CAXI4DMAl
)
begin
CAXI4DMAlOI0
<=
32
'b
0
;
end
else
begin
CAXI4DMAlOI0
<=
CAXI4DMAOII0
;
end
end
assign
CAXI4DMAl11l
=
CAXI4DMAlOI0
;
always
@
(
posedge
CAXI4DMAI
or
negedge
CAXI4DMAl
)
begin
if
(
!
CAXI4DMAl
)
begin
CAXI4DMAl1Ol
<=
1
'b
0
;
end
else
begin
CAXI4DMAl1Ol
<=
CAXI4DMAOOIl
;
end
end
assign
CAXI4DMAOO1
=
CAXI4DMAl1Ol
;
always
@
(
posedge
CAXI4DMAI
or
negedge
CAXI4DMAl
)
begin
if
(
!
CAXI4DMAl
)
begin
CAXI4DMAll1I
<=
{
CAXI4DMAOlO0
{
1
'b
0
}
}
;
end
else
begin
CAXI4DMAll1I
<=
CAXI4DMAO01I
;
end
end
assign
CAXI4DMAIO1
=
CAXI4DMAll1I
;
always
@
(
posedge
CAXI4DMAI
or
negedge
CAXI4DMAl
)
begin
if
(
!
CAXI4DMAl
)
begin
CAXI4DMAIII0
<=
{
CAXI4DMAOlII
{
1
'b
0
}
}
;
end
else
begin
CAXI4DMAIII0
<=
CAXI4DMAlII0
;
end
end
assign
CAXI4DMAIlOl
=
CAXI4DMAIII0
;
always
@
(
posedge
CAXI4DMAI
or
negedge
CAXI4DMAl
)
begin
if
(
!
CAXI4DMAl
)
begin
CAXI4DMAIOIl
<=
{
CAXI4DMAlIO0
{
1
'b
0
}
}
;
end
else
begin
CAXI4DMAIOIl
<=
CAXI4DMAlOIl
;
end
end
assign
CAXI4DMAlO1
=
CAXI4DMAIOIl
;
generate
if
(
CAXI4DMAlIO0
==
32
)
begin
assign
CAXI4DMAOlI0
=
(
TSTRB
==
4
'b
0001
)
?
3
'd
1
:
(
TSTRB
==
4
'b
0011
)
?
3
'd
2
:
(
TSTRB
==
4
'b
0111
)
?
3
'd
3
:
(
TSTRB
==
4
'b
1111
)
?
3
'd
4
:
3
'd
0
;
end
else
if
(
CAXI4DMAlIO0
==
64
)
begin
assign
CAXI4DMAOlI0
=
(
TSTRB
==
8
'b
0000_0001
)
?
4
'd
1
:
(
TSTRB
==
8
'b
0000_0011
)
?
4
'd
2
:
(
TSTRB
==
8
'b
0000_0111
)
?
4
'd
3
:
(
TSTRB
==
8
'b
0000_1111
)
?
4
'd
4
:
(
TSTRB
==
8
'b
0001_1111
)
?
4
'd
5
:
(
TSTRB
==
8
'b
0011_1111
)
?
4
'd
6
:
(
TSTRB
==
8
'b
0111_1111
)
?
4
'd
7
:
(
TSTRB
==
8
'b
1111_1111
)
?
4
'd
8
:
4
'd
0
;
end
else
if
(
CAXI4DMAlIO0
==
128
)
begin
assign
CAXI4DMAOlI0
=
(
TSTRB
==
16
'b
0000_0000_0000_0001
)
?
5
'd
1
:
(
TSTRB
==
16
'b
0000_0000_0000_0011
)
?
5
'd
2
:
(
TSTRB
==
16
'b
0000_0000_0000_0111
)
?
5
'd
3
:
(
TSTRB
==
16
'b
0000_0000_0000_1111
)
?
5
'd
4
:
(
TSTRB
==
16
'b
0000_0000_0001_1111
)
?
5
'd
5
:
(
TSTRB
==
16
'b
0000_0000_0011_1111
)
?
5
'd
6
:
(
TSTRB
==
16
'b
0000_0000_0111_1111
)
?
5
'd
7
:
(
TSTRB
==
16
'b
0000_0000_1111_1111
)
?
5
'd
8
:
(
TSTRB
==
16
'b
0000_0001_1111_1111
)
?
5
'd
9
:
(
TSTRB
==
16
'b
0000_0011_1111_1111
)
?
5
'd
10
:
(
TSTRB
==
16
'b
0000_0111_1111_1111
)
?
5
'd
11
:
(
TSTRB
==
16
'b
0000_1111_1111_1111
)
?
5
'd
12
:
(
TSTRB
==
16
'b
0001_1111_1111_1111
)
?
5
'd
13
:
(
TSTRB
==
16
'b
0011_1111_1111_1111
)
?
5
'd
14
:
(
TSTRB
==
16
'b
0111_1111_1111_1111
)
?
5
'd
15
:
(
TSTRB
==
16
'b
1111_1111_1111_1111
)
?
5
'd
16
:
5
'd
0
;
end
else
if
(
CAXI4DMAlIO0
==
256
)
begin
assign
CAXI4DMAOlI0
=
(
TSTRB
==
32
'b
0000_0000_0000_0000_0000_0000_0000_0001
)
?
6
'd
1
:
(
TSTRB
==
32
'b
0000_0000_0000_0000_0000_0000_0000_0011
)
?
6
'd
2
:
(
TSTRB
==
32
'b
0000_0000_0000_0000_0000_0000_0000_0111
)
?
6
'd
3
:
(
TSTRB
==
32
'b
0000_0000_0000_0000_0000_0000_0000_1111
)
?
6
'd
4
:
(
TSTRB
==
32
'b
0000_0000_0000_0000_0000_0000_0001_1111
)
?
6
'd
5
:
(
TSTRB
==
32
'b
0000_0000_0000_0000_0000_0000_0011_1111
)
?
6
'd
6
:
(
TSTRB
==
32
'b
0000_0000_0000_0000_0000_0000_0111_1111
)
?
6
'd
7
:
(
TSTRB
==
32
'b
0000_0000_0000_0000_0000_0000_1111_1111
)
?
6
'd
8
:
(
TSTRB
==
32
'b
0000_0000_0000_0000_0000_0001_1111_1111
)
?
6
'd
9
:
(
TSTRB
==
32
'b
0000_0000_0000_0000_0000_0011_1111_1111
)
?
6
'd
10
:
(
TSTRB
==
32
'b
0000_0000_0000_0000_0000_0111_1111_1111
)
?
6
'd
11
:
(
TSTRB
==
32
'b
0000_0000_0000_0000_0000_1111_1111_1111
)
?
6
'd
12
:
(
TSTRB
==
32
'b
0000_0000_0000_0000_0001_1111_1111_1111
)
?
6
'd
13
:
(
TSTRB
==
32
'b
0000_0000_0000_0000_0011_1111_1111_1111
)
?
6
'd
14
:
(
TSTRB
==
32
'b
0000_0000_0000_0000_0111_1111_1111_1111
)
?
6
'd
15
:
(
TSTRB
==
32
'b
0000_0000_0000_0000_1111_1111_1111_1111
)
?
6
'd
16
:
(
TSTRB
==
32
'b
0000_0000_0000_0001_1111_1111_1111_1111
)
?
6
'd
17
:
(
TSTRB
==
32
'b
0000_0000_0000_0011_1111_1111_1111_1111
)
?
6
'd
18
:
(
TSTRB
==
32
'b
0000_0000_0000_0111_1111_1111_1111_1111
)
?
6
'd
19
:
(
TSTRB
==
32
'b
0000_0000_0000_1111_1111_1111_1111_1111
)
?
6
'd
20
:
(
TSTRB
==
32
'b
0000_0000_0001_1111_1111_1111_1111_1111
)
?
6
'd
21
:
(
TSTRB
==
32
'b
0000_0000_0011_1111_1111_1111_1111_1111
)
?
6
'd
22
:
(
TSTRB
==
32
'b
0000_0000_0111_1111_1111_1111_1111_1111
)
?
6
'd
23
:
(
TSTRB
==
32
'b
0000_0000_1111_1111_1111_1111_1111_1111
)
?
6
'd
24
:
(
TSTRB
==
32
'b
0000_0001_1111_1111_1111_1111_1111_1111
)
?
6
'd
25
:
(
TSTRB
==
32
'b
0000_0011_1111_1111_1111_1111_1111_1111
)
?
6
'd
26
:
(
TSTRB
==
32
'b
0000_0111_1111_1111_1111_1111_1111_1111
)
?
6
'd
27
:
(
TSTRB
==
32
'b
0000_1111_1111_1111_1111_1111_1111_1111
)
?
6
'd
28
:
(
TSTRB
==
32
'b
0001_1111_1111_1111_1111_1111_1111_1111
)
?
6
'd
29
:
(
TSTRB
==
32
'b
0011_1111_1111_1111_1111_1111_1111_1111
)
?
6
'd
30
:
(
TSTRB
==
32
'b
0111_1111_1111_1111_1111_1111_1111_1111
)
?
6
'd
31
:
(
TSTRB
==
32
'b
1111_1111_1111_1111_1111_1111_1111_1111
)
?
6
'd
32
:
6
'd
0
;
end
else
if
(
CAXI4DMAlIO0
==
512
)
begin
assign
CAXI4DMAOlI0
=
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0001
)
?
7
'd
1
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0011
)
?
7
'd
2
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0111
)
?
7
'd
3
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_1111
)
?
7
'd
4
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0001_1111
)
?
7
'd
5
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0011_1111
)
?
7
'd
6
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0111_1111
)
?
7
'd
7
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_1111_1111
)
?
7
'd
8
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0001_1111_1111
)
?
7
'd
9
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0011_1111_1111
)
?
7
'd
10
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0111_1111_1111
)
?
7
'd
11
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_1111_1111_1111
)
?
7
'd
12
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0001_1111_1111_1111
)
?
7
'd
13
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0011_1111_1111_1111
)
?
7
'd
14
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0111_1111_1111_1111
)
?
7
'd
15
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_1111_1111_1111_1111
)
?
7
'd
16
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0001_1111_1111_1111_1111
)
?
7
'd
17
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0011_1111_1111_1111_1111
)
?
7
'd
18
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0111_1111_1111_1111_1111
)
?
7
'd
19
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_1111_1111_1111_1111_1111
)
?
7
'd
20
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0001_1111_1111_1111_1111_1111
)
?
7
'd
21
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0011_1111_1111_1111_1111_1111
)
?
7
'd
22
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0111_1111_1111_1111_1111_1111
)
?
7
'd
23
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_1111_1111_1111_1111_1111_1111
)
?
7
'd
24
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_0000_0000_0000_0000_0001_1111_1111_1111_1111_1111_1111
)
?
7
'd
25
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_0000_0000_0000_0000_0011_1111_1111_1111_1111_1111_1111
)
?
7
'd
26
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_0000_0000_0000_0000_0111_1111_1111_1111_1111_1111_1111
)
?
7
'd
27
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_0000_0000_0000_0000_1111_1111_1111_1111_1111_1111_1111
)
?
7
'd
28
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_0000_0000_0000_0001_1111_1111_1111_1111_1111_1111_1111
)
?
7
'd
29
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_0000_0000_0000_0011_1111_1111_1111_1111_1111_1111_1111
)
?
7
'd
30
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_0000_0000_0000_0111_1111_1111_1111_1111_1111_1111_1111
)
?
7
'd
31
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_0000_0000_0000_1111_1111_1111_1111_1111_1111_1111_1111
)
?
7
'd
32
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_0000_0000_0001_1111_1111_1111_1111_1111_1111_1111_1111
)
?
7
'd
33
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_0000_0000_0011_1111_1111_1111_1111_1111_1111_1111_1111
)
?
7
'd
34
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_0000_0000_0111_1111_1111_1111_1111_1111_1111_1111_1111
)
?
7
'd
35
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_0000_0000_1111_1111_1111_1111_1111_1111_1111_1111_1111
)
?
7
'd
36
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_0000_0001_1111_1111_1111_1111_1111_1111_1111_1111_1111
)
?
7
'd
37
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_0000_0011_1111_1111_1111_1111_1111_1111_1111_1111_1111
)
?
7
'd
38
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_0000_0111_1111_1111_1111_1111_1111_1111_1111_1111_1111
)
?
7
'd
39
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_0000_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111
)
?
7
'd
40
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_0001_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111
)
?
7
'd
41
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_0011_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111
)
?
7
'd
42
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_0111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111
)
?
7
'd
43
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0000_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111
)
?
7
'd
44
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0001_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111
)
?
7
'd
45
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0011_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111
)
?
7
'd
46
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_0111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111
)
?
7
'd
47
:
(
TSTRB
==
64
'b
0000_0000_0000_0000_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111
)
?
7
'd
48
:
(
TSTRB
==
64
'b
0000_0000_0000_0001_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111
)
?
7
'd
49
:
(
TSTRB
==
64
'b
0000_0000_0000_0011_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111
)
?
7
'd
50
:
(
TSTRB
==
64
'b
0000_0000_0000_0111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111
)
?
7
'd
51
:
(
TSTRB
==
64
'b
0000_0000_0000_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111
)
?
7
'd
52
:
(
TSTRB
==
64
'b
0000_0000_0001_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111
)
?
7
'd
53
:
(
TSTRB
==
64
'b
0000_0000_0011_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111
)
?
7
'd
54
:
(
TSTRB
==
64
'b
0000_0000_0111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111
)
?
7
'd
55
:
(
TSTRB
==
64
'b
0000_0000_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111
)
?
7
'd
56
:
(
TSTRB
==
64
'b
0000_0001_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111
)
?
7
'd
57
:
(
TSTRB
==
64
'b
0000_0011_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111
)
?
7
'd
58
:
(
TSTRB
==
64
'b
0000_0111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111
)
?
7
'd
59
:
(
TSTRB
==
64
'b
0000_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111
)
?
7
'd
60
:
(
TSTRB
==
64
'b
0001_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111
)
?
7
'd
61
:
(
TSTRB
==
64
'b
0011_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111
)
?
7
'd
62
:
(
TSTRB
==
64
'b
0111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111
)
?
7
'd
63
:
(
TSTRB
==
64
'b
1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111
)
?
7
'd
64
:
7
'd
0
;
end
endgenerate
always
@
(
posedge
CAXI4DMAI
or
negedge
CAXI4DMAl
)
begin
if
(
!
CAXI4DMAl
)
begin
CAXI4DMAOll0
[
1
:
0
]
<=
2
'b
00
;
end
else
begin
if
(
CAXI4DMAlIl0
)
begin
CAXI4DMAOll0
[
CAXI4DMAIOO0
]
<=
1
'b
1
;
end
else
if
(
CAXI4DMAOl1l
|
CAXI4DMAIl1l
|
CAXI4DMAIll0
)
begin
CAXI4DMAOll0
[
CAXI4DMAOOO0
]
<=
1
'b
0
;
end
end
end
always
@
(
posedge
CAXI4DMAI
or
negedge
CAXI4DMAl
)
begin
if
(
!
CAXI4DMAl
)
begin
CAXI4DMAIlI0
<=
2
'b
0
;
end
else
begin
case
(
{
CAXI4DMAOl1l
|
CAXI4DMAIl1l
|
CAXI4DMAIll0
,
CAXI4DMAII1l
}
)
2
'b
00
,
2
'b
11
:
begin
CAXI4DMAIlI0
<=
CAXI4DMAIlI0
;
end
2
'b
01
:
begin
CAXI4DMAIlI0
<=
CAXI4DMAIlI0
+
1
'b
1
;
end
2
'b
10
:
begin
CAXI4DMAIlI0
<=
CAXI4DMAIlI0
-
1
'b
1
;
end
endcase
end
end
assign
CAXI4DMAlOl0
=
(
CAXI4DMAIlI0
!=
2
'b
10
)
;
always
@
(
posedge
CAXI4DMAI
or
negedge
CAXI4DMAl
)
begin
if
(
!
CAXI4DMAl
)
begin
CAXI4DMAllI0
<=
1
'b
0
;
end
else
begin
CAXI4DMAllI0
<=
CAXI4DMAO0I0
;
end
end
assign
CAXI4DMAIOO0
=
CAXI4DMAllI0
;
always
@
(
posedge
CAXI4DMAI
or
negedge
CAXI4DMAl
)
begin
if
(
!
CAXI4DMAl
)
begin
CAXI4DMAI0I0
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
CAXI4DMAOl1l
|
CAXI4DMAIl1l
)
begin
CAXI4DMAI0I0
<=
~
CAXI4DMAI0I0
;
end
end
end
assign
CAXI4DMAOOO0
=
CAXI4DMAI0I0
;
always
@
(
posedge
CAXI4DMAI
or
negedge
CAXI4DMAl
)
begin
if
(
!
CAXI4DMAl
)
begin
CAXI4DMAOOl0
<=
CAXI4DMAIO00
;
end
else
begin
CAXI4DMAOOl0
<=
CAXI4DMAIOl0
;
end
end
always
@
(
*
)
begin
CAXI4DMAO1I0
=
1
'b
0
;
CAXI4DMAl1I0
=
1
'b
0
;
case
(
CAXI4DMAOOl0
)
CAXI4DMAIO00
:
begin
if
(
CAXI4DMAIll0
)
begin
if
(
CAXI4DMAOll0
[
CAXI4DMAOOO0
]
==
1
'b
1
)
begin
CAXI4DMAl1I0
=
1
'b
1
;
CAXI4DMAIOl0
=
CAXI4DMAIO00
;
end
else
if
(
CAXI4DMAl0I0
)
begin
CAXI4DMAl1I0
=
1
'b
1
;
CAXI4DMAIOl0
=
CAXI4DMAIO00
;
end
else
begin
CAXI4DMAl1I0
=
1
'b
1
;
CAXI4DMAO1I0
=
1
'b
1
;
CAXI4DMAIOl0
=
CAXI4DMAlO00
;
end
end
else
if
(
CAXI4DMAIl1l
)
begin
if
(
CAXI4DMAOOO0
==
CAXI4DMAIOO0
)
begin
if
(
CAXI4DMAOll0
[
CAXI4DMAOOO0
]
==
1
'b
1
)
begin
CAXI4DMAl1I0
=
1
'b
1
;
CAXI4DMAIOl0
=
CAXI4DMAIO00
;
end
else
if
(
CAXI4DMAl0I0
)
begin
CAXI4DMAl1I0
=
1
'b
1
;
CAXI4DMAIOl0
=
CAXI4DMAIO00
;
end
else
begin
CAXI4DMAl1I0
=
1
'b
1
;
CAXI4DMAO1I0
=
1
'b
1
;
CAXI4DMAIOl0
=
CAXI4DMAlO00
;
end
end
else
begin
CAXI4DMAl1I0
=
1
'b
1
;
CAXI4DMAIOl0
=
CAXI4DMAIO00
;
end
end
else
begin
CAXI4DMAIOl0
=
CAXI4DMAIO00
;
end
end
CAXI4DMAlO00
:
begin
if
(
CAXI4DMAl0I0
)
begin
CAXI4DMAl1I0
=
1
'b
1
;
CAXI4DMAIOl0
=
CAXI4DMAIO00
;
end
else
begin
CAXI4DMAl1I0
=
1
'b
1
;
CAXI4DMAO1I0
=
1
'b
1
;
CAXI4DMAIOl0
=
CAXI4DMAlO00
;
end
end
default
:
begin
CAXI4DMAIOl0
=
CAXI4DMAIO00
;
end
endcase
end
always
@
(
posedge
CAXI4DMAI
or
negedge
CAXI4DMAl
)
begin
if
(
!
CAXI4DMAl
)
begin
CAXI4DMAI1I0
<=
1
'b
0
;
end
else
begin
CAXI4DMAI1I0
<=
CAXI4DMAl1I0
;
end
end
assign
CAXI4DMAlOO0
=
CAXI4DMAI1I0
;
always
@
(
posedge
CAXI4DMAI
or
negedge
CAXI4DMAl
)
begin
for
(
CAXI4DMAIIl0
=
0
;
CAXI4DMAIIl0
<
4
;
CAXI4DMAIIl0
=
CAXI4DMAIIl0
+
1
)
begin
if
(
!
CAXI4DMAl
)
begin
CAXI4DMAOIl0
[
CAXI4DMAIIl0
]
<=
32
'b
0
;
end
else
begin
if
(
CAXI4DMAll1l
&
CAXI4DMAO01l
&
(
CAXI4DMAI01l
[
10
:
2
]
==
{
CAXI4DMAllO0
[
10
:
4
]
,
CAXI4DMAIIl0
[
1
:
0
]
}
)
)
begin
if
(
CAXI4DMAO11l
[
0
]
)
begin
CAXI4DMAOIl0
[
CAXI4DMAIIl0
]
[
7
:
0
]
<=
CAXI4DMAl01l
[
7
:
0
]
;
end
else
begin
CAXI4DMAOIl0
[
CAXI4DMAIIl0
]
[
7
:
0
]
<=
CAXI4DMAOIl0
[
CAXI4DMAIIl0
]
[
7
:
0
]
;
end
if
(
CAXI4DMAO11l
[
1
]
)
begin
CAXI4DMAOIl0
[
CAXI4DMAIIl0
]
[
15
:
8
]
<=
CAXI4DMAl01l
[
15
:
8
]
;
end
else
begin
CAXI4DMAOIl0
[
CAXI4DMAIIl0
]
[
15
:
8
]
<=
CAXI4DMAOIl0
[
CAXI4DMAIIl0
]
[
15
:
8
]
;
end
if
(
CAXI4DMAO11l
[
2
]
)
begin
CAXI4DMAOIl0
[
CAXI4DMAIIl0
]
[
23
:
16
]
<=
CAXI4DMAl01l
[
23
:
16
]
;
end
else
begin
CAXI4DMAOIl0
[
CAXI4DMAIIl0
]
[
23
:
16
]
<=
CAXI4DMAOIl0
[
CAXI4DMAIIl0
]
[
23
:
16
]
;
end
if
(
CAXI4DMAO11l
[
3
]
)
begin
CAXI4DMAOIl0
[
CAXI4DMAIIl0
]
[
31
:
24
]
<=
CAXI4DMAl01l
[
31
:
24
]
;
end
else
begin
CAXI4DMAOIl0
[
CAXI4DMAIIl0
]
[
31
:
24
]
<=
CAXI4DMAOIl0
[
CAXI4DMAIIl0
]
[
31
:
24
]
;
end
end
else
begin
CAXI4DMAOIl0
[
CAXI4DMAIIl0
]
[
31
:
0
]
<=
CAXI4DMAOIl0
[
CAXI4DMAIIl0
]
[
31
:
0
]
;
end
end
end
end
assign
CAXI4DMAIIO0
=
1
'b
1
;
assign
CAXI4DMAOIO0
[
31
:
0
]
=
(
CAXI4DMAI01l
[
10
:
4
]
==
CAXI4DMAllO0
[
10
:
4
]
)
?
CAXI4DMAOIl0
[
CAXI4DMAI01l
[
3
:
2
]
]
:
32
'b
0
;
endmodule
