
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:032

00:00:062	
530.0552	
198.992Z17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/lucas/Desktop/CP49/ComSynLab/Lab6/Lab6.srcs/utils_1/imports/synth_1/system.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2Y
WC:/Users/lucas/Desktop/CP49/ComSynLab/Lab6/Lab6.srcs/utils_1/imports/synth_1/system.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
a
Command: %s
53*	vivadotcl20
.synth_design -top system -part xc7a35tcpg236-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7a35tZ17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7a35tZ17-349h px� 
D
Loading part %s157*device2
xc7a35tcpg236-1Z21-403h px� 
Z
$Part: %s does not have CEAM library.966*device2
xc7a35tcpg236-1Z21-9227h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
37984Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:01 ; elapsed = 00:00:04 . Memory (MB): peak = 1386.395 ; gain = 448.574
h px� 
�
.redeclaration of ANSI port '%s' is not allowed7382*oasys2
clkDiv2Q
MC:/Users/lucas/Desktop/CP49/ComSynLab/HWSYNLAB2021/lab05/sources_1/clockDiv.v2
288@Z8-11121h px� 
�
.redeclaration of ANSI port '%s' is not allowed7382*oasys2
seg2V
RC:/Users/lucas/Desktop/CP49/ComSynLab/HWSYNLAB2021/lab05/sources_1/hexTo7Segment.v2
288@Z8-11121h px� 
�
.redeclaration of ANSI port '%s' is not allowed7382*oasys2

data_out2M
IC:/Users/lucas/Desktop/CP49/ComSynLab/HWSYNLAB2021/lab06/sources_1/uart.v2
318@Z8-11121h px� 
�
synthesizing module '%s'%s4497*oasys2
system2
 2O
KC:/Users/lucas/Desktop/CP49/ComSynLab/HWSYNLAB2021/lab06/sources_1/system.v2
238@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2

clockDiv2
 2Q
MC:/Users/lucas/Desktop/CP49/ComSynLab/HWSYNLAB2021/lab05/sources_1/clockDiv.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

clockDiv2
 2
02
12Q
MC:/Users/lucas/Desktop/CP49/ComSynLab/HWSYNLAB2021/lab05/sources_1/clockDiv.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
quadSevenSeg2
 2U
QC:/Users/lucas/Desktop/CP49/ComSynLab/HWSYNLAB2021/lab05/sources_1/quadSevenSeg.v2
238@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
hexTo7Segment2
 2V
RC:/Users/lucas/Desktop/CP49/ComSynLab/HWSYNLAB2021/lab05/sources_1/hexTo7Segment.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
hexTo7Segment2
 2
02
12V
RC:/Users/lucas/Desktop/CP49/ComSynLab/HWSYNLAB2021/lab05/sources_1/hexTo7Segment.v2
238@Z8-6155h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
num02U
QC:/Users/lucas/Desktop/CP49/ComSynLab/HWSYNLAB2021/lab05/sources_1/quadSevenSeg.v2
608@Z8-567h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
num12U
QC:/Users/lucas/Desktop/CP49/ComSynLab/HWSYNLAB2021/lab05/sources_1/quadSevenSeg.v2
608@Z8-567h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
num22U
QC:/Users/lucas/Desktop/CP49/ComSynLab/HWSYNLAB2021/lab05/sources_1/quadSevenSeg.v2
608@Z8-567h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
num32U
QC:/Users/lucas/Desktop/CP49/ComSynLab/HWSYNLAB2021/lab05/sources_1/quadSevenSeg.v2
608@Z8-567h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
quadSevenSeg2
 2
02
12U
QC:/Users/lucas/Desktop/CP49/ComSynLab/HWSYNLAB2021/lab05/sources_1/quadSevenSeg.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
uart2
 2M
IC:/Users/lucas/Desktop/CP49/ComSynLab/HWSYNLAB2021/lab06/sources_1/uart.v2
228@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
baudrate_gen2
 2U
QC:/Users/lucas/Desktop/CP49/ComSynLab/HWSYNLAB2021/lab06/sources_1/baudrate_gen.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
baudrate_gen2
 2
02
12U
QC:/Users/lucas/Desktop/CP49/ComSynLab/HWSYNLAB2021/lab06/sources_1/baudrate_gen.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2	
uart_rx2
 2P
LC:/Users/lucas/Desktop/CP49/ComSynLab/HWSYNLAB2021/lab06/sources_1/uart_rx.v2
238@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2P
LC:/Users/lucas/Desktop/CP49/ComSynLab/HWSYNLAB2021/lab06/sources_1/uart_rx.v2
458@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
uart_rx2
 2
02
12P
LC:/Users/lucas/Desktop/CP49/ComSynLab/HWSYNLAB2021/lab06/sources_1/uart_rx.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2	
uart_tx2
 2P
LC:/Users/lucas/Desktop/CP49/ComSynLab/HWSYNLAB2021/lab06/sources_1/uart_tx.v2
228@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2P
LC:/Users/lucas/Desktop/CP49/ComSynLab/HWSYNLAB2021/lab06/sources_1/uart_tx.v2
498@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
uart_tx2
 2
02
12P
LC:/Users/lucas/Desktop/CP49/ComSynLab/HWSYNLAB2021/lab06/sources_1/uart_tx.v2
228@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uart2
 2
02
12M
IC:/Users/lucas/Desktop/CP49/ComSynLab/HWSYNLAB2021/lab06/sources_1/uart.v2
228@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system2
 2
02
12O
KC:/Users/lucas/Desktop/CP49/ComSynLab/HWSYNLAB2021/lab06/sources_1/system.v2
238@Z8-6155h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
num12
system2O
KC:/Users/lucas/Desktop/CP49/ComSynLab/HWSYNLAB2021/lab06/sources_1/system.v2
418@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
num22
system2O
KC:/Users/lucas/Desktop/CP49/ComSynLab/HWSYNLAB2021/lab06/sources_1/system.v2
418@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
num32
system2O
KC:/Users/lucas/Desktop/CP49/ComSynLab/HWSYNLAB2021/lab06/sources_1/system.v2
418@Z8-3848h px� 
b
+design %s has port %s driven by constant %s3447*oasys2
system2
dp2
1Z8-3917h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:05 . Memory (MB): peak = 1497.152 ; gain = 559.332
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:02 ; elapsed = 00:00:05 . Memory (MB): peak = 1497.152 ; gain = 559.332
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:02 ; elapsed = 00:00:05 . Memory (MB): peak = 1497.152 ; gain = 559.332
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1497.1522
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2X
TC:/Users/lucas/Desktop/CP49/ComSynLab/HWSYNLAB2021/lab06/constrs_1/Basys3_Master.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2X
TC:/Users/lucas/Desktop/CP49/ComSynLab/HWSYNLAB2021/lab06/constrs_1/Basys3_Master.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2V
TC:/Users/lucas/Desktop/CP49/ComSynLab/HWSYNLAB2021/lab06/constrs_1/Basys3_Master.xdc2
.Xil/system_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1591.3442
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0012

1591.3442
0.000Z17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:04 ; elapsed = 00:00:11 . Memory (MB): peak = 1591.344 ; gain = 653.523
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Loading part: xc7a35tcpg236-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:04 ; elapsed = 00:00:11 . Memory (MB): peak = 1591.344 ; gain = 653.523
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:04 ; elapsed = 00:00:11 . Memory (MB): peak = 1591.344 ; gain = 653.523
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:04 ; elapsed = 00:00:11 . Memory (MB): peak = 1591.344 ; gain = 653.523
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit       Adders := 1     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	                8 Bit    Registers := 5     
h p
x
� 
H
%s
*synth20
.	                2 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 29    
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   4 Input    8 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    4 Bit        Muxes := 1     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
p
%s
*synth2X
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
b
+design %s has port %s driven by constant %s3447*oasys2
system2
dp2
1Z8-3917h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:05 ; elapsed = 00:00:13 . Memory (MB): peak = 1591.344 ; gain = 653.523
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
;
%s*synth2#
!
ROM: Preliminary Mapping Report
h px� 
`
%s*synth2H
F+--------------+-------------------+---------------+----------------+
h px� 
a
%s*synth2I
G|Module Name   | RTL Object        | Depth x Width | Implemented As | 
h px� 
`
%s*synth2H
F+--------------+-------------------+---------------+----------------+
h px� 
a
%s*synth2I
G|hexTo7Segment | seg               | 256x7         | LUT            | 
h px� 
a
%s*synth2I
G|system        | q7s/segDecode/seg | 256x7         | LUT            | 
h px� 
a
%s*synth2I
G+--------------+-------------------+---------------+----------------+

h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:07 ; elapsed = 00:00:17 . Memory (MB): peak = 1591.344 ; gain = 653.523
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:07 ; elapsed = 00:00:18 . Memory (MB): peak = 1591.344 ; gain = 653.523
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:07 ; elapsed = 00:00:18 . Memory (MB): peak = 1591.344 ; gain = 653.523
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:08 ; elapsed = 00:00:21 . Memory (MB): peak = 1591.344 ; gain = 653.523
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:08 ; elapsed = 00:00:21 . Memory (MB): peak = 1591.344 ; gain = 653.523
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:08 ; elapsed = 00:00:21 . Memory (MB): peak = 1591.344 ; gain = 653.523
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:08 ; elapsed = 00:00:21 . Memory (MB): peak = 1591.344 ; gain = 653.523
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:08 ; elapsed = 00:00:21 . Memory (MB): peak = 1591.344 ; gain = 653.523
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:08 ; elapsed = 00:00:21 . Memory (MB): peak = 1591.344 ; gain = 653.523
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|      |Cell   |Count |
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|1     |BUFG   |     2|
h px� 
2
%s*synth2
|2     |CARRY4 |    16|
h px� 
2
%s*synth2
|3     |LUT1   |    25|
h px� 
2
%s*synth2
|4     |LUT2   |    15|
h px� 
2
%s*synth2
|5     |LUT3   |    12|
h px� 
2
%s*synth2
|6     |LUT4   |     5|
h px� 
2
%s*synth2
|7     |LUT5   |    10|
h px� 
2
%s*synth2
|8     |LUT6   |    44|
h px� 
2
%s*synth2
|9     |MUXF7  |     1|
h px� 
2
%s*synth2
|10    |FDRE   |   102|
h px� 
2
%s*synth2
|11    |IBUF   |     2|
h px� 
2
%s*synth2
|12    |OBUF   |    13|
h px� 
2
%s*synth2
+------+-------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:08 ; elapsed = 00:00:21 . Memory (MB): peak = 1591.344 ; gain = 653.523
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 2 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:06 ; elapsed = 00:00:20 . Memory (MB): peak = 1591.344 ; gain = 559.332
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:08 ; elapsed = 00:00:21 . Memory (MB): peak = 1591.344 ; gain = 653.523
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1591.3442
0.000Z17-268h px� 
T
-Analyzing %s Unisim elements for replacement
17*netlist2
17Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1591.3442
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

1e11afdaZ4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
402
132
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:102

00:00:252

1591.3442

1047.461Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0012

1591.3442
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2I
GC:/Users/lucas/Desktop/CP49/ComSynLab/Lab6/Lab6.runs/synth_1/system.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2W
Ureport_utilization -file system_utilization_synth.rpt -pb system_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Tue Oct 22 14:29:34 2024Z17-206h px� 


End Record