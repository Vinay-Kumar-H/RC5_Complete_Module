
s
Command: %s
53*	vivadotcl2B
.synth_design -top RC5 -part xc7vx485tffg1157-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
	xc7vx485t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
	xc7vx485t2default:defaultZ17-349h px? 
|
%Your %s license expires in %s day(s)
86*common2
	Synthesis2default:default2
152default:defaultZ17-86h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
112282default:defaultZ8-7075h px? 
?
%s*synth2?
rStarting Synthesize : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 1261.953 ; gain = 0.000
2default:defaulth px? 
?
synthesizing module '%s'638*oasys2
RC52default:default2t
^D:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5.vhd2default:default2
492default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
RC5_ENC2default:default2v
bD:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5_ENC.vhd2default:default2
352default:default2

encryption2default:default2
RC5_ENC2default:default2t
^D:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5.vhd2default:default2
942default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
RC5_ENC2default:default2x
bD:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5_ENC.vhd2default:default2
472default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
RC5_ENC2default:default2
12default:default2
12default:default2x
bD:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5_ENC.vhd2default:default2
472default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2&
RC5_KEY_GENERATION2default:default2?
mD:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5_KEY_GENERATION.vhd2default:default2
352default:default2"
key_generation2default:default2&
RC5_KEY_GENERATION2default:default2t
^D:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5.vhd2default:default2
952default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2&
RC5_KEY_GENERATION2default:default2?
mD:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5_KEY_GENERATION.vhd2default:default2
442default:default8@Z8-638h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
state2default:default2?
mD:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5_KEY_GENERATION.vhd2default:default2
2332default:default8@Z8-614h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
s2default:default2?
mD:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5_KEY_GENERATION.vhd2default:default2
2332default:default8@Z8-614h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2&
RC5_KEY_GENERATION2default:default2
22default:default2
12default:default2?
mD:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5_KEY_GENERATION.vhd2default:default2
442default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
RC5_Dec2default:default2v
bD:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5_DEC.vhd2default:default2
352default:default2

decryption2default:default2
RC5_DEC2default:default2t
^D:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5.vhd2default:default2
962default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
RC5_Dec2default:default2x
bD:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5_DEC.vhd2default:default2
472default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
RC5_Dec2default:default2
32default:default2
12default:default2x
bD:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5_DEC.vhd2default:default2
472default:default8@Z8-256h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2'
key_generation_done2default:default2t
^D:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5.vhd2default:default2
982default:default8@Z8-614h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2$
start_encryption2default:default2t
^D:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5.vhd2default:default2
982default:default8@Z8-614h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2$
start_decryption2default:default2t
^D:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5.vhd2default:default2
982default:default8@Z8-614h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
RC52default:default2
42default:default2
12default:default2t
^D:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5.vhd2default:default2
492default:default8@Z8-256h px? 
?
%s*synth2?
rFinished Synthesize : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 1261.953 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Constraint Validation : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 1261.953 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Loading part: xc7vx485tffg1157-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 1261.953 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Y
Loading part %s157*device2&
xc7vx485tffg1157-12default:defaultZ21-403h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
RC5_ENC2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2&
RC5_KEY_GENERATION2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
RC5_Dec2default:defaultZ8-802h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                 st_idle |                             0001 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_            st_pre_round |                             0010 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_             st_round_op |                             0100 |                               10
2default:defaulth p
x
? 
?
%s
*synth2s
_                st_ready |                             1000 |                               11
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2
one-hot2default:default2
RC5_ENC2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                 st_idle |                             0001 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_               st_key_in |                             0010 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_              st_key_exp |                             0100 |                               10
2default:defaulth p
x
? 
?
%s
*synth2s
_                  st_rdy |                             1000 |                               11
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2
one-hot2default:default2&
RC5_KEY_GENERATION2default:defaultZ8-3354h px? 
?
!inferring latch for variable '%s'327*oasys2
skey_reg[0]2default:default2?
mD:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5_KEY_GENERATION.vhd2default:default2
2362default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
skey_reg[1]2default:default2?
mD:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5_KEY_GENERATION.vhd2default:default2
2362default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
skey_reg[2]2default:default2?
mD:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5_KEY_GENERATION.vhd2default:default2
2362default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
skey_reg[3]2default:default2?
mD:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5_KEY_GENERATION.vhd2default:default2
2362default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
skey_reg[4]2default:default2?
mD:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5_KEY_GENERATION.vhd2default:default2
2362default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
skey_reg[5]2default:default2?
mD:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5_KEY_GENERATION.vhd2default:default2
2362default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
skey_reg[6]2default:default2?
mD:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5_KEY_GENERATION.vhd2default:default2
2362default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
skey_reg[7]2default:default2?
mD:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5_KEY_GENERATION.vhd2default:default2
2362default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
skey_reg[8]2default:default2?
mD:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5_KEY_GENERATION.vhd2default:default2
2362default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
skey_reg[9]2default:default2?
mD:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5_KEY_GENERATION.vhd2default:default2
2362default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
skey_reg[10]2default:default2?
mD:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5_KEY_GENERATION.vhd2default:default2
2362default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
skey_reg[11]2default:default2?
mD:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5_KEY_GENERATION.vhd2default:default2
2362default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
skey_reg[12]2default:default2?
mD:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5_KEY_GENERATION.vhd2default:default2
2362default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
skey_reg[13]2default:default2?
mD:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5_KEY_GENERATION.vhd2default:default2
2362default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
skey_reg[14]2default:default2?
mD:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5_KEY_GENERATION.vhd2default:default2
2362default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
skey_reg[15]2default:default2?
mD:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5_KEY_GENERATION.vhd2default:default2
2362default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
skey_reg[16]2default:default2?
mD:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5_KEY_GENERATION.vhd2default:default2
2362default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
skey_reg[17]2default:default2?
mD:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5_KEY_GENERATION.vhd2default:default2
2362default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
skey_reg[18]2default:default2?
mD:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5_KEY_GENERATION.vhd2default:default2
2362default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
skey_reg[19]2default:default2?
mD:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5_KEY_GENERATION.vhd2default:default2
2362default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
skey_reg[20]2default:default2?
mD:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5_KEY_GENERATION.vhd2default:default2
2362default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
skey_reg[21]2default:default2?
mD:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5_KEY_GENERATION.vhd2default:default2
2362default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
skey_reg[22]2default:default2?
mD:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5_KEY_GENERATION.vhd2default:default2
2362default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
skey_reg[23]2default:default2?
mD:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5_KEY_GENERATION.vhd2default:default2
2362default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
skey_reg[24]2default:default2?
mD:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5_KEY_GENERATION.vhd2default:default2
2362default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
skey_reg[25]2default:default2?
mD:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.srcs/sources_1/new/RC5_KEY_GENERATION.vhd2default:default2
2362default:default8@Z8-327h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                 st_idle |                             0001 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_               st_rnd_op |                             0010 |                               10
2default:defaulth p
x
? 
?
%s
*synth2s
_             st_post_rnd |                             0100 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_                  st_rdy |                             1000 |                               11
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2
one-hot2default:default2
RC5_Dec2default:defaultZ8-3354h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1261.953 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   32 Bit       Adders := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    7 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit       Adders := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit         XORs := 4     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 36    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   64 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 33    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input   32 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   32 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    7 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    4 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 34    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 31    
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2o
[Part Resources:
DSPs: 2800 (col length:140)
BRAMs: 2060 (col length: RAMB18 140 RAMB36 70)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:18 ; elapsed = 00:00:20 . Memory (MB): peak = 1287.320 ; gain = 25.367
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Timing Optimization : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 1288.168 ; gain = 26.215
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
{Finished Technology Mapping : Time (s): cpu = 00:00:19 ; elapsed = 00:00:21 . Memory (MB): peak = 1288.391 ; gain = 26.438
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
uFinished IO Insertion : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 1288.391 ; gain = 26.438
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 1288.391 ; gain = 26.438
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 1288.391 ; gain = 26.438
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 1288.391 ; gain = 26.438
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:22 ; elapsed = 00:00:24 . Memory (MB): peak = 1288.391 ; gain = 26.438
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:22 ; elapsed = 00:00:24 . Memory (MB): peak = 1288.391 ; gain = 26.438
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|1     |BUFG   |     2|
2default:defaulth px? 
D
%s*synth2,
|2     |CARRY4 |    72|
2default:defaulth px? 
D
%s*synth2,
|3     |LUT1   |     6|
2default:defaulth px? 
D
%s*synth2,
|4     |LUT2   |   183|
2default:defaulth px? 
D
%s*synth2,
|5     |LUT3   |   188|
2default:defaulth px? 
D
%s*synth2,
|6     |LUT4   |   106|
2default:defaulth px? 
D
%s*synth2,
|7     |LUT5   |   353|
2default:defaulth px? 
D
%s*synth2,
|8     |LUT6   |  1178|
2default:defaulth px? 
D
%s*synth2,
|9     |MUXF7  |   159|
2default:defaulth px? 
D
%s*synth2,
|10    |FDCE   |   704|
2default:defaulth px? 
D
%s*synth2,
|11    |FDPE   |   423|
2default:defaulth px? 
D
%s*synth2,
|12    |FDRE   |    64|
2default:defaulth px? 
D
%s*synth2,
|13    |LD     |   832|
2default:defaulth px? 
D
%s*synth2,
|14    |IBUF   |   197|
2default:defaulth px? 
D
%s*synth2,
|15    |OBUF   |    66|
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
b
%s
*synth2J
6+------+-----------------+-------------------+------+
2default:defaulth p
x
? 
b
%s
*synth2J
6|      |Instance         |Module             |Cells |
2default:defaulth p
x
? 
b
%s
*synth2J
6+------+-----------------+-------------------+------+
2default:defaulth p
x
? 
b
%s
*synth2J
6|1     |top              |                   |  4533|
2default:defaulth p
x
? 
b
%s
*synth2J
6|2     |  decryption     |RC5_Dec            |   495|
2default:defaulth p
x
? 
b
%s
*synth2J
6|3     |  encryption     |RC5_ENC            |   423|
2default:defaulth p
x
? 
b
%s
*synth2J
6|4     |  key_generation |RC5_KEY_GENERATION |  3350|
2default:defaulth p
x
? 
b
%s
*synth2J
6+------+-----------------+-------------------+------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:22 ; elapsed = 00:00:24 . Memory (MB): peak = 1288.391 ; gain = 26.438
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 31 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:22 ; elapsed = 00:00:24 . Memory (MB): peak = 1288.391 ; gain = 26.438
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Complete : Time (s): cpu = 00:00:22 ; elapsed = 00:00:24 . Memory (MB): peak = 1288.391 ; gain = 26.438
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0292default:default2
1300.2232default:default2
0.0002default:defaultZ17-268h px? 
h
-Analyzing %s Unisim elements for replacement
17*netlist2
10632default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1328.5592default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2]
I  A total of 832 instances were transformed.
  LD => LDCE: 832 instances
2default:defaultZ1-111h px? 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
d46333542default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
302default:default2
312default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:262default:default2
00:00:272default:default2
1328.5592default:default2
66.6052default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2l
XD:/Software/Xilinx/Projects/RC5_Complete_Module/RC5_Complete_Module.runs/synth_1/RC5.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2p
\Executing : report_utilization -file RC5_utilization_synth.rpt -pb RC5_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Mon Oct 11 05:18:38 20212default:defaultZ17-206h px? 


End Record