# File saved with Nlview 7.8.0 2024-04-26 e1825d835c VDI=44 GEI=38 GUI=JA:21.0 threadsafe
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 15
property maxzoom 6.25
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #0000ff
property overlaycolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 4
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 15
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new CSA_16bit work:CSA_16bit:NOFILE -nosplit
load symbol RTL_MUX1 work MUX pin I0 input.left pin I1 input.left pin O output.right pin S input.bot fillcolor 1
load symbol mux_8bit_2x1 work:mux_8bit_2x1:NOFILE HIERBOX pin sel input.left pinBus a input.left [7:0] pinBus b input.left [7:0] pinBus ou output.right [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol mux_4bit_2x1 work:mux_4bit_2x1:NOFILE HIERBOX pin sel input.left pinBus a input.left [3:0] pinBus b input.left [3:0] pinBus ou output.right [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol mux_4bit_2x1 work:abstract:NOFILE HIERBOX pin sel input.left pinBus a input.left [3:0] pinBus b input.left [3:0] pinBus ou output.right [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol rca_4bit work:rca_4bit:NOFILE HIERBOX pin cin input.left pin cout output.right pinBus a input.left [3:0] pinBus b input.left [3:0] pinBus sum output.right [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol rca_4bit work:abstract:NOFILE HIERBOX pin cin input.left pin cout output.right pinBus a input.left [3:0] pinBus b input.left [3:0] pinBus sum output.right [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load port cin input -pg 1 -lvl 0 -x 0 -y 690
load port cout output -pg 1 -lvl 5 -x 1280 -y 400
load portBus a input [15:0] -attr @name a[15:0] -pg 1 -lvl 0 -x 0 -y 510
load portBus b input [15:0] -attr @name b[15:0] -pg 1 -lvl 0 -x 0 -y 720
load portBus sum output [15:0] -attr @name sum[15:0] -pg 1 -lvl 5 -x 1280 -y 430
load inst c1_i RTL_MUX1 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 2 -x 450 -y 710
load inst c2_i RTL_MUX1 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 3 -x 790 -y 460
load inst cout_i RTL_MUX1 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 4 -x 1100 -y 400
load inst legendmux mux_8bit_2x1 work:mux_8bit_2x1:NOFILE -autohide -attr @cell(#000000) mux_8bit_2x1 -pinBusAttr a @name a[7:0] -pinBusAttr b @name b[7:0] -pinBusAttr ou @name ou[7:0] -pg 1 -lvl 4 -x 1100 -y 210
load inst mu1 mux_4bit_2x1 work:mux_4bit_2x1:NOFILE -autohide -attr @cell(#000000) mux_4bit_2x1 -pinBusAttr a @name a[3:0] -pinBusAttr b @name b[3:0] -pinBusAttr ou @name ou[3:0] -pg 1 -lvl 4 -x 1100 -y 740
load inst mu2 mux_4bit_2x1 work:abstract:NOFILE -autohide -attr @cell(#000000) mux_4bit_2x1 -pinBusAttr a @name a[3:0] -pinBusAttr b @name b[3:0] -pinBusAttr ou @name ou[3:0] -pg 1 -lvl 3 -x 790 -y 150
load inst mu3 mux_4bit_2x1 work:abstract:NOFILE -autohide -attr @cell(#000000) mux_4bit_2x1 -pinBusAttr a @name a[3:0] -pinBusAttr b @name b[3:0] -pinBusAttr ou @name ou[3:0] -pg 1 -lvl 3 -x 790 -y 290
load inst r1 rca_4bit work:rca_4bit:NOFILE -autohide -attr @cell(#000000) rca_4bit -pinBusAttr a @name a[3:0] -pinBusAttr b @name b[3:0] -pinBusAttr sum @name sum[3:0] -pg 1 -lvl 4 -x 1100 -y 600
load inst r2 rca_4bit work:abstract:NOFILE -autohide -attr @cell(#000000) rca_4bit -pinBusAttr a @name a[3:0] -pinBusAttr b @name b[3:0] -pinBusAttr sum @name sum[3:0] -pg 1 -lvl 1 -x 130 -y 560
load inst r3 rca_4bit work:abstract:NOFILE -autohide -attr @cell(#000000) rca_4bit -pinBusAttr a @name a[3:0] -pinBusAttr b @name b[3:0] -pinBusAttr sum @name sum[3:0] -pg 1 -lvl 1 -x 130 -y 760
load inst r4 rca_4bit work:abstract:NOFILE -autohide -attr @cell(#000000) rca_4bit -pinBusAttr a @name a[3:0] -pinBusAttr b @name b[3:0] -pinBusAttr sum @name sum[3:0] -pg 1 -lvl 2 -x 450 -y 50
load inst r5 rca_4bit work:abstract:NOFILE -autohide -attr @cell(#000000) rca_4bit -pinBusAttr a @name a[3:0] -pinBusAttr b @name b[3:0] -pinBusAttr sum @name sum[3:0] -pg 1 -lvl 2 -x 450 -y 210
load inst r6 rca_4bit work:abstract:NOFILE -autohide -attr @cell(#000000) rca_4bit -pinBusAttr a @name a[3:0] -pinBusAttr b @name b[3:0] -pinBusAttr sum @name sum[3:0] -pg 1 -lvl 2 -x 450 -y 340
load inst r7 rca_4bit work:abstract:NOFILE -autohide -attr @cell(#000000) rca_4bit -pinBusAttr a @name a[3:0] -pinBusAttr b @name b[3:0] -pinBusAttr sum @name sum[3:0] -pg 1 -lvl 2 -x 450 -y 520
load net <const0> -ground -pin r2 cin -pin r4 cin -pin r6 cin
load net <const1> -power -pin r3 cin -pin r5 cin -pin r7 cin
load net a[0] -attr @rip a[0] -port a[0] -pin r1 a[0]
load net a[10] -attr @rip a[10] -port a[10] -pin r4 a[2] -pin r5 a[2]
load net a[11] -attr @rip a[11] -port a[11] -pin r4 a[3] -pin r5 a[3]
load net a[12] -attr @rip a[12] -port a[12] -pin r6 a[0] -pin r7 a[0]
load net a[13] -attr @rip a[13] -port a[13] -pin r6 a[1] -pin r7 a[1]
load net a[14] -attr @rip a[14] -port a[14] -pin r6 a[2] -pin r7 a[2]
load net a[15] -attr @rip a[15] -port a[15] -pin r6 a[3] -pin r7 a[3]
load net a[1] -attr @rip a[1] -port a[1] -pin r1 a[1]
load net a[2] -attr @rip a[2] -port a[2] -pin r1 a[2]
load net a[3] -attr @rip a[3] -port a[3] -pin r1 a[3]
load net a[4] -attr @rip a[4] -port a[4] -pin r2 a[0] -pin r3 a[0]
load net a[5] -attr @rip a[5] -port a[5] -pin r2 a[1] -pin r3 a[1]
load net a[6] -attr @rip a[6] -port a[6] -pin r2 a[2] -pin r3 a[2]
load net a[7] -attr @rip a[7] -port a[7] -pin r2 a[3] -pin r3 a[3]
load net a[8] -attr @rip a[8] -port a[8] -pin r4 a[0] -pin r5 a[0]
load net a[9] -attr @rip a[9] -port a[9] -pin r4 a[1] -pin r5 a[1]
load net b[0] -attr @rip b[0] -port b[0] -pin r1 b[0]
load net b[10] -attr @rip b[10] -port b[10] -pin r4 b[2] -pin r5 b[2]
load net b[11] -attr @rip b[11] -port b[11] -pin r4 b[3] -pin r5 b[3]
load net b[12] -attr @rip b[12] -port b[12] -pin r6 b[0] -pin r7 b[0]
load net b[13] -attr @rip b[13] -port b[13] -pin r6 b[1] -pin r7 b[1]
load net b[14] -attr @rip b[14] -port b[14] -pin r6 b[2] -pin r7 b[2]
load net b[15] -attr @rip b[15] -port b[15] -pin r6 b[3] -pin r7 b[3]
load net b[1] -attr @rip b[1] -port b[1] -pin r1 b[1]
load net b[2] -attr @rip b[2] -port b[2] -pin r1 b[2]
load net b[3] -attr @rip b[3] -port b[3] -pin r1 b[3]
load net b[4] -attr @rip b[4] -port b[4] -pin r2 b[0] -pin r3 b[0]
load net b[5] -attr @rip b[5] -port b[5] -pin r2 b[1] -pin r3 b[1]
load net b[6] -attr @rip b[6] -port b[6] -pin r2 b[2] -pin r3 b[2]
load net b[7] -attr @rip b[7] -port b[7] -pin r2 b[3] -pin r3 b[3]
load net b[8] -attr @rip b[8] -port b[8] -pin r4 b[0] -pin r5 b[0]
load net b[9] -attr @rip b[9] -port b[9] -pin r4 b[1] -pin r5 b[1]
load net c0 -pin c1_i S -pin mu1 sel -pin r1 cout
netloc c0 1 2 3 NJ 770 960 690 1240
load net c01 -pin c1_i I1 -pin r2 cout
netloc c01 1 1 1 310 570n
load net c02 -pin c2_i I1 -pin mu2 sel -pin r4 cout
netloc c02 1 2 1 690 60n
load net c03 -pin cout_i I1 -pin r6 cout
netloc c03 1 2 2 630J 380 980
load net c1 -pin c1_i O -pin c2_i S -pin legendmux sel
netloc c1 1 2 2 690 520N 960
load net c11 -pin c1_i I0 -pin r3 cout
netloc c11 1 1 1 350 700n
load net c12 -pin c2_i I0 -pin mu3 sel -pin r5 cout
netloc c12 1 2 1 670 220n
load net c13 -pin cout_i I0 -pin r7 cout
netloc c13 1 2 2 630J 400 1000
load net c2 -pin c2_i O -pin cout_i S
netloc c2 1 3 1 N 460
load net cin -port cin -pin r1 cin
netloc cin 1 0 4 NJ 690 330J 650 NJ 650 NJ
load net cout -port cout -pin cout_i O
netloc cout 1 4 1 NJ 400
load net lv2temp1[0] -attr @rip sum[0] -pin legendmux a[0] -pin r4 sum[0]
load net lv2temp1[1] -attr @rip sum[1] -pin legendmux a[1] -pin r4 sum[1]
load net lv2temp1[2] -attr @rip sum[2] -pin legendmux a[2] -pin r4 sum[2]
load net lv2temp1[3] -attr @rip sum[3] -pin legendmux a[3] -pin r4 sum[3]
load net lv2temp1[4] -attr @rip ou[0] -pin legendmux a[4] -pin mu2 ou[0]
load net lv2temp1[5] -attr @rip ou[1] -pin legendmux a[5] -pin mu2 ou[1]
load net lv2temp1[6] -attr @rip ou[2] -pin legendmux a[6] -pin mu2 ou[2]
load net lv2temp1[7] -attr @rip ou[3] -pin legendmux a[7] -pin mu2 ou[3]
load net lv2temp2[0] -attr @rip sum[0] -pin legendmux b[0] -pin r5 sum[0]
load net lv2temp2[1] -attr @rip sum[1] -pin legendmux b[1] -pin r5 sum[1]
load net lv2temp2[2] -attr @rip sum[2] -pin legendmux b[2] -pin r5 sum[2]
load net lv2temp2[3] -attr @rip sum[3] -pin legendmux b[3] -pin r5 sum[3]
load net lv2temp2[4] -attr @rip ou[0] -pin legendmux b[4] -pin mu3 ou[0]
load net lv2temp2[5] -attr @rip ou[1] -pin legendmux b[5] -pin mu3 ou[1]
load net lv2temp2[6] -attr @rip ou[2] -pin legendmux b[6] -pin mu3 ou[2]
load net lv2temp2[7] -attr @rip ou[3] -pin legendmux b[7] -pin mu3 ou[3]
load net sum[0] -attr @rip sum[0] -pin r1 sum[0] -port sum[0]
load net sum[10] -attr @rip ou[2] -pin legendmux ou[2] -port sum[10]
load net sum[11] -attr @rip ou[3] -pin legendmux ou[3] -port sum[11]
load net sum[12] -attr @rip ou[4] -pin legendmux ou[4] -port sum[12]
load net sum[13] -attr @rip ou[5] -pin legendmux ou[5] -port sum[13]
load net sum[14] -attr @rip ou[6] -pin legendmux ou[6] -port sum[14]
load net sum[15] -attr @rip ou[7] -pin legendmux ou[7] -port sum[15]
load net sum[1] -attr @rip sum[1] -pin r1 sum[1] -port sum[1]
load net sum[2] -attr @rip sum[2] -pin r1 sum[2] -port sum[2]
load net sum[3] -attr @rip sum[3] -pin r1 sum[3] -port sum[3]
load net sum[4] -attr @rip ou[0] -pin mu1 ou[0] -port sum[4]
load net sum[5] -attr @rip ou[1] -pin mu1 ou[1] -port sum[5]
load net sum[6] -attr @rip ou[2] -pin mu1 ou[2] -port sum[6]
load net sum[7] -attr @rip ou[3] -pin mu1 ou[3] -port sum[7]
load net sum[8] -attr @rip ou[0] -pin legendmux ou[0] -port sum[8]
load net sum[9] -attr @rip ou[1] -pin legendmux ou[1] -port sum[9]
load net temp01[0] -attr @rip sum[0] -pin mu1 a[0] -pin r2 sum[0]
load net temp01[1] -attr @rip sum[1] -pin mu1 a[1] -pin r2 sum[1]
load net temp01[2] -attr @rip sum[2] -pin mu1 a[2] -pin r2 sum[2]
load net temp01[3] -attr @rip sum[3] -pin mu1 a[3] -pin r2 sum[3]
load net temp03[0] -attr @rip sum[0] -pin mu2 a[0] -pin mu3 a[0] -pin r6 sum[0]
load net temp03[1] -attr @rip sum[1] -pin mu2 a[1] -pin mu3 a[1] -pin r6 sum[1]
load net temp03[2] -attr @rip sum[2] -pin mu2 a[2] -pin mu3 a[2] -pin r6 sum[2]
load net temp03[3] -attr @rip sum[3] -pin mu2 a[3] -pin mu3 a[3] -pin r6 sum[3]
load net temp11[0] -attr @rip sum[0] -pin mu1 b[0] -pin r3 sum[0]
load net temp11[1] -attr @rip sum[1] -pin mu1 b[1] -pin r3 sum[1]
load net temp11[2] -attr @rip sum[2] -pin mu1 b[2] -pin r3 sum[2]
load net temp11[3] -attr @rip sum[3] -pin mu1 b[3] -pin r3 sum[3]
load net temp13[0] -attr @rip sum[0] -pin mu2 b[0] -pin mu3 b[0] -pin r7 sum[0]
load net temp13[1] -attr @rip sum[1] -pin mu2 b[1] -pin mu3 b[1] -pin r7 sum[1]
load net temp13[2] -attr @rip sum[2] -pin mu2 b[2] -pin mu3 b[2] -pin r7 sum[2]
load net temp13[3] -attr @rip sum[3] -pin mu2 b[3] -pin mu3 b[3] -pin r7 sum[3]
load netBundle @a 16 a[15] a[14] a[13] a[12] a[11] a[10] a[9] a[8] a[7] a[6] a[5] a[4] a[3] a[2] a[1] a[0] -autobundled
netbloc @a 1 0 4 20 510 310 450 650J 540 1000
load netBundle @b 16 b[15] b[14] b[13] b[12] b[11] b[10] b[9] b[8] b[7] b[6] b[5] b[4] b[3] b[2] b[1] b[0] -autobundled
netbloc @b 1 0 4 40 670 270 630 NJ 630 1000
load netBundle @sum 16 sum[15] sum[14] sum[13] sum[12] sum[11] sum[10] sum[9] sum[8] sum[7] sum[6] sum[5] sum[4] sum[3] sum[2] sum[1] sum[0] -autobundled
netbloc @sum 1 4 1 1260 240n
load netBundle @lv2temp1 4 lv2temp1[7] lv2temp1[6] lv2temp1[5] lv2temp1[4] -autobundled
netbloc @lv2temp1 1 3 1 920 180n
load netBundle @lv2temp2 4 lv2temp2[7] lv2temp2[6] lv2temp2[5] lv2temp2[4] -autobundled
netbloc @lv2temp2 1 3 1 940 240n
load netBundle @temp01 4 temp01[3] temp01[2] temp01[1] temp01[0] -autobundled
netbloc @temp01 1 1 3 290J 610 NJ 610 920
load netBundle @temp11 4 temp11[3] temp11[2] temp11[1] temp11[0] -autobundled
netbloc @temp11 1 1 3 NJ 790 NJ 790 1000
load netBundle @lv2temp1_1 4 lv2temp1[3] lv2temp1[2] lv2temp1[1] lv2temp1[0] -autobundled
netbloc @lv2temp1_1 1 2 2 NJ 80 940
load netBundle @lv2temp2_1 4 lv2temp2[3] lv2temp2[2] lv2temp2[1] lv2temp2[0] -autobundled
netbloc @lv2temp2_1 1 2 2 NJ 240 920
load netBundle @temp03 4 temp03[3] temp03[2] temp03[1] temp03[0] -autobundled
netbloc @temp03 1 2 1 590 160n
load netBundle @temp13 4 temp13[3] temp13[2] temp13[1] temp13[0] -autobundled
netbloc @temp13 1 2 1 610 180n
levelinfo -pg 1 0 130 450 790 1100 1280
pagesize -pg 1 -db -bbox -sgen -100 0 1390 850
show
fullfit
#
# initialize ictrl to current module CSA_16bit work:CSA_16bit:NOFILE
ictrl init topinfo |
