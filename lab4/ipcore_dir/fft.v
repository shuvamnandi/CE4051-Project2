////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.49d
//  \   \         Application: netgen
//  /   /         Filename: fft.v
// /___/   /\     Timestamp: Fri Oct 28 15:54:12 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog E:/lab4/ipcore_dir/tmp/_cg/fft.ngc E:/lab4/ipcore_dir/tmp/_cg/fft.v 
// Device	: 5vfx70tff1136-1
// Input file	: E:/lab4/ipcore_dir/tmp/_cg/fft.ngc
// Output file	: E:/lab4/ipcore_dir/tmp/_cg/fft.v
// # of Modules	: 1
// Design Name	: fft
// Xilinx        : C:\Xilinx\ISE14.4\14.4\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module fft (
  clk, start, unload, fwd_inv, fwd_inv_we, scale_sch_we, rfd, busy, edone, done, dv, xn_re, xn_im, scale_sch, xn_index, xk_index, xk_re, xk_im
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input start;
  input unload;
  input fwd_inv;
  input fwd_inv_we;
  input scale_sch_we;
  output rfd;
  output busy;
  output edone;
  output done;
  output dv;
  input [15 : 0] xn_re;
  input [15 : 0] xn_im;
  input [13 : 0] scale_sch;
  output [6 : 0] xn_index;
  output [6 : 0] xk_index;
  output [15 : 0] xk_re;
  output [15 : 0] xk_im;
  
  // synthesis translate_off
  
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_15 ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_14 ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_13 ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_12 ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_11 ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_10 ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_9 ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_8 ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_7 ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_6 ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_5 ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_4 ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_3 ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_2 ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_1 ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_0 ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_15 ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_14 ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_13 ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_12 ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_11 ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_10 ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_9 ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_8 ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_7 ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_6 ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_5 ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_4 ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_3 ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_2 ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_1 ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_0 ;
  wire \NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/busy_i_reg2 ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/edone_i_reg ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/done_i_reg ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/dv_d ;
  wire sig00000001;
  wire sig00000002;
  wire sig00000003;
  wire sig00000004;
  wire sig00000005;
  wire sig00000006;
  wire sig00000007;
  wire sig00000008;
  wire sig00000009;
  wire sig0000000a;
  wire sig0000000b;
  wire sig0000000c;
  wire sig0000000d;
  wire sig0000000e;
  wire sig0000000f;
  wire sig00000010;
  wire sig00000011;
  wire sig00000012;
  wire sig00000013;
  wire sig00000014;
  wire sig00000015;
  wire sig00000016;
  wire sig00000017;
  wire sig00000018;
  wire sig00000019;
  wire sig0000001a;
  wire sig0000001b;
  wire sig0000001c;
  wire sig0000001d;
  wire sig0000001e;
  wire sig0000001f;
  wire sig00000020;
  wire sig00000021;
  wire sig00000022;
  wire sig00000023;
  wire sig00000024;
  wire sig00000025;
  wire sig00000026;
  wire sig00000027;
  wire sig00000028;
  wire sig00000029;
  wire sig0000002a;
  wire sig0000002b;
  wire sig0000002c;
  wire sig0000002d;
  wire sig0000002e;
  wire sig0000002f;
  wire sig00000030;
  wire sig00000031;
  wire sig00000032;
  wire sig00000033;
  wire sig00000034;
  wire sig00000035;
  wire sig00000036;
  wire sig00000037;
  wire sig00000038;
  wire sig00000039;
  wire sig0000003a;
  wire sig0000003b;
  wire sig0000003c;
  wire sig0000003d;
  wire sig0000003e;
  wire sig0000003f;
  wire sig00000040;
  wire sig00000041;
  wire sig00000042;
  wire sig00000043;
  wire sig00000044;
  wire sig00000045;
  wire sig00000046;
  wire sig00000047;
  wire sig00000048;
  wire sig00000049;
  wire sig0000004a;
  wire sig0000004b;
  wire sig0000004c;
  wire sig0000004d;
  wire sig0000004e;
  wire sig0000004f;
  wire sig00000050;
  wire sig00000051;
  wire sig00000052;
  wire sig00000053;
  wire sig00000054;
  wire sig00000055;
  wire sig00000056;
  wire sig00000057;
  wire sig00000058;
  wire sig00000059;
  wire sig0000005a;
  wire sig0000005b;
  wire sig0000005c;
  wire sig0000005d;
  wire sig0000005e;
  wire sig0000005f;
  wire sig00000060;
  wire sig00000061;
  wire sig00000062;
  wire sig00000063;
  wire sig00000064;
  wire sig00000065;
  wire sig00000066;
  wire sig00000067;
  wire sig00000068;
  wire sig00000069;
  wire sig0000006a;
  wire sig0000006b;
  wire sig0000006c;
  wire sig0000006d;
  wire sig0000006e;
  wire sig0000006f;
  wire sig00000070;
  wire sig00000071;
  wire sig00000072;
  wire sig00000073;
  wire sig00000074;
  wire sig00000075;
  wire sig00000076;
  wire sig00000077;
  wire sig00000078;
  wire sig00000079;
  wire sig0000007a;
  wire sig0000007b;
  wire sig0000007c;
  wire sig0000007d;
  wire sig0000007e;
  wire sig0000007f;
  wire sig00000080;
  wire sig00000081;
  wire sig00000082;
  wire sig00000083;
  wire sig00000084;
  wire sig00000085;
  wire sig00000086;
  wire sig00000087;
  wire sig00000088;
  wire sig00000089;
  wire sig0000008a;
  wire sig0000008b;
  wire sig0000008c;
  wire sig0000008d;
  wire sig0000008e;
  wire sig0000008f;
  wire sig00000090;
  wire sig00000091;
  wire sig00000092;
  wire sig00000093;
  wire sig00000094;
  wire sig00000095;
  wire sig00000096;
  wire sig00000097;
  wire sig00000098;
  wire sig00000099;
  wire sig0000009a;
  wire sig0000009b;
  wire sig0000009c;
  wire sig0000009d;
  wire sig0000009e;
  wire sig0000009f;
  wire sig000000a0;
  wire sig000000a1;
  wire sig000000a2;
  wire sig000000a3;
  wire sig000000a4;
  wire sig000000a5;
  wire sig000000a6;
  wire sig000000a7;
  wire sig000000a8;
  wire sig000000a9;
  wire sig000000aa;
  wire sig000000ab;
  wire sig000000ac;
  wire sig000000ad;
  wire sig000000ae;
  wire sig000000af;
  wire sig000000b0;
  wire sig000000b1;
  wire sig000000b2;
  wire sig000000b3;
  wire sig000000b4;
  wire sig000000b5;
  wire sig000000b6;
  wire sig000000b7;
  wire sig000000b8;
  wire sig000000b9;
  wire sig000000ba;
  wire sig000000bb;
  wire sig000000bc;
  wire sig000000bd;
  wire sig000000be;
  wire sig000000bf;
  wire sig000000c0;
  wire sig000000c1;
  wire sig000000c2;
  wire sig000000c3;
  wire sig000000c4;
  wire sig000000c5;
  wire sig000000c6;
  wire sig000000c7;
  wire sig000000c8;
  wire sig000000c9;
  wire sig000000ca;
  wire sig000000cb;
  wire sig000000cc;
  wire sig000000cd;
  wire sig000000ce;
  wire sig000000cf;
  wire sig000000d0;
  wire sig000000d1;
  wire sig000000d2;
  wire sig000000d3;
  wire sig000000d4;
  wire sig000000d5;
  wire sig000000d6;
  wire sig000000d7;
  wire sig000000d8;
  wire sig000000d9;
  wire sig000000da;
  wire sig000000db;
  wire sig000000dc;
  wire sig000000dd;
  wire sig000000de;
  wire sig000000df;
  wire sig000000e0;
  wire sig000000e1;
  wire sig000000e2;
  wire sig000000e3;
  wire sig000000e4;
  wire sig000000e5;
  wire sig000000e6;
  wire sig000000e7;
  wire sig000000e8;
  wire sig000000e9;
  wire sig000000ea;
  wire sig000000eb;
  wire sig000000ec;
  wire sig000000ed;
  wire sig000000ee;
  wire sig000000ef;
  wire sig000000f0;
  wire sig000000f1;
  wire sig000000f2;
  wire sig000000f3;
  wire sig000000f4;
  wire sig000000f5;
  wire sig000000f6;
  wire sig000000f7;
  wire sig000000f8;
  wire sig000000f9;
  wire sig000000fa;
  wire sig000000fb;
  wire sig000000fc;
  wire sig000000fd;
  wire sig000000fe;
  wire sig000000ff;
  wire sig00000100;
  wire sig00000101;
  wire sig00000102;
  wire sig00000103;
  wire sig00000104;
  wire sig00000105;
  wire sig00000106;
  wire sig00000107;
  wire sig00000108;
  wire sig00000109;
  wire sig0000010a;
  wire sig0000010b;
  wire sig0000010c;
  wire sig0000010d;
  wire sig0000010e;
  wire sig0000010f;
  wire sig00000110;
  wire sig00000111;
  wire sig00000112;
  wire sig00000113;
  wire sig00000114;
  wire sig00000115;
  wire sig00000116;
  wire sig00000117;
  wire sig00000118;
  wire sig00000119;
  wire sig0000011a;
  wire sig0000011b;
  wire sig0000011c;
  wire sig0000011d;
  wire sig0000011e;
  wire sig0000011f;
  wire sig00000120;
  wire sig00000121;
  wire sig00000122;
  wire sig00000123;
  wire sig00000124;
  wire sig00000125;
  wire sig00000126;
  wire sig00000127;
  wire sig00000128;
  wire sig00000129;
  wire sig0000012a;
  wire sig0000012b;
  wire sig0000012c;
  wire sig0000012d;
  wire sig0000012e;
  wire sig0000012f;
  wire sig00000130;
  wire sig00000131;
  wire sig00000132;
  wire sig00000133;
  wire sig00000134;
  wire sig00000135;
  wire sig00000136;
  wire sig00000137;
  wire sig00000138;
  wire sig00000139;
  wire sig0000013a;
  wire sig0000013b;
  wire sig0000013c;
  wire sig0000013d;
  wire sig0000013e;
  wire sig0000013f;
  wire sig00000140;
  wire sig00000141;
  wire sig00000142;
  wire sig00000143;
  wire sig00000144;
  wire sig00000145;
  wire sig00000146;
  wire sig00000147;
  wire sig00000148;
  wire sig00000149;
  wire sig0000014a;
  wire sig0000014b;
  wire sig0000014c;
  wire sig0000014d;
  wire sig0000014e;
  wire sig0000014f;
  wire sig00000150;
  wire sig00000151;
  wire sig00000152;
  wire sig00000153;
  wire sig00000154;
  wire sig00000155;
  wire sig00000156;
  wire sig00000157;
  wire sig00000158;
  wire sig00000159;
  wire sig0000015a;
  wire sig0000015b;
  wire sig0000015c;
  wire sig0000015d;
  wire sig0000015e;
  wire sig0000015f;
  wire sig00000160;
  wire sig00000161;
  wire sig00000162;
  wire sig00000163;
  wire sig00000164;
  wire sig00000165;
  wire sig00000166;
  wire sig00000167;
  wire sig00000168;
  wire sig00000169;
  wire sig0000016a;
  wire sig0000016b;
  wire sig0000016c;
  wire sig0000016d;
  wire sig0000016e;
  wire sig0000016f;
  wire sig00000170;
  wire sig00000171;
  wire sig00000172;
  wire sig00000173;
  wire sig00000174;
  wire sig00000175;
  wire sig00000176;
  wire sig00000177;
  wire sig00000178;
  wire sig00000179;
  wire sig0000017a;
  wire sig0000017b;
  wire sig0000017c;
  wire sig0000017d;
  wire sig0000017e;
  wire sig0000017f;
  wire sig00000180;
  wire sig00000181;
  wire sig00000182;
  wire sig00000183;
  wire sig00000184;
  wire sig00000185;
  wire sig00000186;
  wire sig00000187;
  wire sig00000188;
  wire sig00000189;
  wire sig0000018a;
  wire sig0000018b;
  wire sig0000018c;
  wire sig0000018d;
  wire sig0000018e;
  wire sig0000018f;
  wire sig00000190;
  wire sig00000191;
  wire sig00000192;
  wire sig00000193;
  wire sig00000194;
  wire sig00000195;
  wire sig00000196;
  wire sig00000197;
  wire sig00000198;
  wire sig00000199;
  wire sig0000019a;
  wire sig0000019b;
  wire sig0000019c;
  wire sig0000019d;
  wire sig0000019e;
  wire sig0000019f;
  wire sig000001a0;
  wire sig000001a1;
  wire sig000001a2;
  wire sig000001a3;
  wire sig000001a4;
  wire sig000001a5;
  wire sig000001a6;
  wire sig000001a7;
  wire sig000001a8;
  wire sig000001a9;
  wire sig000001aa;
  wire sig000001ab;
  wire sig000001ac;
  wire sig000001ad;
  wire sig000001ae;
  wire sig000001af;
  wire sig000001b0;
  wire sig000001b1;
  wire sig000001b2;
  wire sig000001b3;
  wire sig000001b4;
  wire sig000001b5;
  wire sig000001b6;
  wire sig000001b7;
  wire sig000001b8;
  wire sig000001b9;
  wire sig000001ba;
  wire sig000001bb;
  wire sig000001bc;
  wire sig000001bd;
  wire sig000001be;
  wire sig000001bf;
  wire sig000001c0;
  wire sig000001c1;
  wire sig000001c2;
  wire sig000001c3;
  wire sig000001c4;
  wire sig000001c5;
  wire sig000001c6;
  wire sig000001c7;
  wire sig000001c8;
  wire sig000001c9;
  wire sig000001ca;
  wire sig000001cb;
  wire sig000001cc;
  wire sig000001cd;
  wire sig000001ce;
  wire sig000001cf;
  wire sig000001d0;
  wire sig000001d1;
  wire sig000001d2;
  wire sig000001d3;
  wire sig000001d4;
  wire sig000001d5;
  wire sig000001d6;
  wire sig000001d7;
  wire sig000001d8;
  wire sig000001d9;
  wire sig000001da;
  wire sig000001db;
  wire sig000001dc;
  wire sig000001dd;
  wire sig000001de;
  wire sig000001df;
  wire sig000001e0;
  wire sig000001e1;
  wire sig000001e2;
  wire sig000001e3;
  wire sig000001e4;
  wire sig000001e5;
  wire sig000001e6;
  wire sig000001e7;
  wire sig000001e8;
  wire sig000001e9;
  wire sig000001ea;
  wire sig000001eb;
  wire sig000001ec;
  wire sig000001ed;
  wire sig000001ee;
  wire sig000001ef;
  wire sig000001f0;
  wire sig000001f1;
  wire sig000001f2;
  wire sig000001f3;
  wire sig000001f4;
  wire sig000001f5;
  wire sig000001f6;
  wire sig000001f7;
  wire sig000001f8;
  wire sig000001f9;
  wire sig000001fa;
  wire sig000001fb;
  wire sig000001fc;
  wire sig000001fd;
  wire sig000001fe;
  wire sig000001ff;
  wire sig00000200;
  wire sig00000201;
  wire sig00000202;
  wire sig00000203;
  wire sig00000204;
  wire sig00000205;
  wire sig00000206;
  wire sig00000207;
  wire sig00000208;
  wire sig00000209;
  wire sig0000020a;
  wire sig0000020b;
  wire sig0000020c;
  wire sig0000020d;
  wire sig0000020e;
  wire sig0000020f;
  wire sig00000210;
  wire sig00000211;
  wire sig00000212;
  wire sig00000213;
  wire sig00000214;
  wire sig00000215;
  wire sig00000216;
  wire sig00000217;
  wire sig00000218;
  wire sig00000219;
  wire sig0000021a;
  wire sig0000021b;
  wire sig0000021c;
  wire sig0000021d;
  wire sig0000021e;
  wire sig0000021f;
  wire sig00000220;
  wire sig00000221;
  wire sig00000222;
  wire sig00000223;
  wire sig00000224;
  wire sig00000225;
  wire sig00000226;
  wire sig00000227;
  wire sig00000228;
  wire sig00000229;
  wire sig0000022a;
  wire sig0000022b;
  wire sig0000022c;
  wire sig0000022d;
  wire sig0000022e;
  wire sig0000022f;
  wire sig00000230;
  wire sig00000231;
  wire sig00000232;
  wire sig00000233;
  wire sig00000234;
  wire sig00000235;
  wire sig00000236;
  wire sig00000237;
  wire sig00000238;
  wire sig00000239;
  wire sig0000023a;
  wire sig0000023b;
  wire sig0000023c;
  wire sig0000023d;
  wire sig0000023e;
  wire sig0000023f;
  wire sig00000240;
  wire sig00000241;
  wire sig00000242;
  wire sig00000243;
  wire sig00000244;
  wire sig00000245;
  wire sig00000246;
  wire sig00000247;
  wire sig00000248;
  wire sig00000249;
  wire sig0000024a;
  wire sig0000024b;
  wire sig0000024c;
  wire sig0000024d;
  wire sig0000024e;
  wire sig0000024f;
  wire sig00000250;
  wire sig00000251;
  wire sig00000252;
  wire sig00000253;
  wire sig00000254;
  wire sig00000255;
  wire sig00000256;
  wire sig00000257;
  wire sig00000258;
  wire sig00000259;
  wire sig0000025a;
  wire sig0000025b;
  wire sig0000025c;
  wire sig0000025d;
  wire sig0000025e;
  wire sig0000025f;
  wire sig00000260;
  wire sig00000261;
  wire sig00000262;
  wire sig00000263;
  wire sig00000264;
  wire sig00000265;
  wire sig00000266;
  wire sig00000267;
  wire sig00000268;
  wire sig00000269;
  wire sig0000026a;
  wire sig0000026b;
  wire sig0000026c;
  wire sig0000026d;
  wire sig0000026e;
  wire sig0000026f;
  wire sig00000270;
  wire sig00000271;
  wire sig00000272;
  wire sig00000273;
  wire sig00000274;
  wire sig00000275;
  wire sig00000276;
  wire sig00000277;
  wire sig00000278;
  wire sig00000279;
  wire sig0000027a;
  wire sig0000027b;
  wire sig0000027c;
  wire sig0000027d;
  wire sig0000027e;
  wire sig0000027f;
  wire sig00000280;
  wire sig00000281;
  wire sig00000282;
  wire sig00000283;
  wire sig00000284;
  wire sig00000285;
  wire sig00000286;
  wire sig00000287;
  wire sig00000288;
  wire sig00000289;
  wire sig0000028a;
  wire sig0000028b;
  wire sig0000028c;
  wire sig0000028d;
  wire sig0000028e;
  wire sig0000028f;
  wire sig00000290;
  wire sig00000291;
  wire sig00000292;
  wire sig00000293;
  wire sig00000294;
  wire sig00000295;
  wire sig00000296;
  wire sig00000297;
  wire sig00000298;
  wire sig00000299;
  wire sig0000029a;
  wire sig0000029b;
  wire sig0000029c;
  wire sig0000029d;
  wire sig0000029e;
  wire sig0000029f;
  wire sig000002a0;
  wire sig000002a1;
  wire sig000002a2;
  wire sig000002a3;
  wire sig000002a4;
  wire sig000002a5;
  wire sig000002a6;
  wire sig000002a7;
  wire sig000002a8;
  wire sig000002a9;
  wire sig000002aa;
  wire sig000002ab;
  wire sig000002ac;
  wire sig000002ad;
  wire sig000002ae;
  wire sig000002af;
  wire sig000002b0;
  wire sig000002b1;
  wire sig000002b2;
  wire sig000002b3;
  wire sig000002b4;
  wire sig000002b5;
  wire sig000002b6;
  wire sig000002b7;
  wire sig000002b8;
  wire sig000002b9;
  wire sig000002ba;
  wire sig000002bb;
  wire sig000002bc;
  wire sig000002bd;
  wire sig000002be;
  wire sig000002bf;
  wire sig000002c0;
  wire sig000002c1;
  wire sig000002c2;
  wire sig000002c3;
  wire sig000002c4;
  wire sig000002c5;
  wire sig000002c6;
  wire sig000002c7;
  wire sig000002c8;
  wire sig000002c9;
  wire sig000002ca;
  wire sig000002cb;
  wire sig000002cc;
  wire sig000002cd;
  wire sig000002ce;
  wire sig000002cf;
  wire sig000002d0;
  wire sig000002d1;
  wire sig000002d2;
  wire sig000002d3;
  wire sig000002d4;
  wire sig000002d5;
  wire sig000002d6;
  wire sig000002d7;
  wire sig000002d8;
  wire sig000002d9;
  wire sig000002da;
  wire sig000002db;
  wire sig000002dc;
  wire sig000002dd;
  wire sig000002de;
  wire sig000002df;
  wire sig000002e0;
  wire sig000002e1;
  wire sig000002e2;
  wire sig000002e3;
  wire sig000002e4;
  wire sig000002e5;
  wire sig000002e6;
  wire sig000002e7;
  wire sig000002e8;
  wire sig000002e9;
  wire sig000002ea;
  wire sig000002eb;
  wire sig000002ec;
  wire sig000002ed;
  wire sig000002ee;
  wire sig000002ef;
  wire sig000002f0;
  wire sig000002f1;
  wire sig000002f2;
  wire sig000002f3;
  wire sig000002f4;
  wire sig000002f5;
  wire sig000002f6;
  wire sig000002f7;
  wire sig000002f8;
  wire sig000002f9;
  wire sig000002fa;
  wire sig000002fb;
  wire sig000002fc;
  wire sig000002fd;
  wire sig000002fe;
  wire sig000002ff;
  wire sig00000300;
  wire sig00000301;
  wire sig00000302;
  wire sig00000303;
  wire sig00000304;
  wire sig00000305;
  wire sig00000306;
  wire sig00000307;
  wire sig00000308;
  wire sig00000309;
  wire sig0000030a;
  wire sig0000030b;
  wire sig0000030c;
  wire sig0000030d;
  wire sig0000030e;
  wire sig0000030f;
  wire sig00000310;
  wire sig00000311;
  wire sig00000312;
  wire sig00000313;
  wire sig00000314;
  wire sig00000315;
  wire sig00000316;
  wire sig00000317;
  wire sig00000318;
  wire sig00000319;
  wire sig0000031a;
  wire sig0000031b;
  wire sig0000031c;
  wire sig0000031d;
  wire sig0000031e;
  wire sig0000031f;
  wire sig00000320;
  wire sig00000321;
  wire sig00000322;
  wire sig00000323;
  wire sig00000324;
  wire sig00000325;
  wire sig00000326;
  wire sig00000327;
  wire sig00000328;
  wire sig00000329;
  wire sig0000032a;
  wire sig0000032b;
  wire sig0000032c;
  wire sig0000032d;
  wire sig0000032e;
  wire sig0000032f;
  wire sig00000330;
  wire sig00000331;
  wire sig00000332;
  wire sig00000333;
  wire sig00000334;
  wire sig00000335;
  wire sig00000336;
  wire sig00000337;
  wire sig00000338;
  wire sig00000339;
  wire sig0000033a;
  wire sig0000033b;
  wire sig0000033c;
  wire sig0000033d;
  wire sig0000033e;
  wire sig0000033f;
  wire sig00000340;
  wire sig00000341;
  wire sig00000342;
  wire sig00000343;
  wire sig00000344;
  wire sig00000345;
  wire sig00000346;
  wire sig00000347;
  wire sig00000348;
  wire sig00000349;
  wire sig0000034a;
  wire sig0000034b;
  wire sig0000034c;
  wire sig0000034d;
  wire sig0000034e;
  wire sig0000034f;
  wire sig00000350;
  wire sig00000351;
  wire sig00000352;
  wire sig00000353;
  wire sig00000354;
  wire sig00000355;
  wire sig00000356;
  wire sig00000357;
  wire sig00000358;
  wire sig00000359;
  wire sig0000035a;
  wire sig0000035b;
  wire sig0000035c;
  wire sig0000035d;
  wire sig0000035e;
  wire sig0000035f;
  wire sig00000360;
  wire sig00000361;
  wire sig00000362;
  wire sig00000363;
  wire sig00000364;
  wire sig00000365;
  wire sig00000366;
  wire sig00000367;
  wire sig00000368;
  wire sig00000369;
  wire sig0000036a;
  wire sig0000036b;
  wire sig0000036c;
  wire sig0000036d;
  wire sig0000036e;
  wire sig0000036f;
  wire sig00000370;
  wire sig00000371;
  wire sig00000372;
  wire sig00000373;
  wire sig00000374;
  wire sig00000375;
  wire sig00000376;
  wire sig00000377;
  wire sig00000378;
  wire sig00000379;
  wire sig0000037a;
  wire sig0000037b;
  wire sig0000037c;
  wire sig0000037d;
  wire sig0000037e;
  wire sig0000037f;
  wire sig00000380;
  wire sig00000381;
  wire sig00000382;
  wire sig00000383;
  wire sig00000384;
  wire sig00000385;
  wire sig00000386;
  wire sig00000387;
  wire sig00000388;
  wire sig00000389;
  wire sig0000038a;
  wire sig0000038b;
  wire sig0000038c;
  wire sig0000038d;
  wire sig0000038e;
  wire sig0000038f;
  wire sig00000390;
  wire sig00000391;
  wire sig00000392;
  wire sig00000393;
  wire sig00000394;
  wire sig00000395;
  wire sig00000396;
  wire sig00000397;
  wire sig00000398;
  wire sig00000399;
  wire sig0000039a;
  wire sig0000039b;
  wire sig0000039c;
  wire sig0000039d;
  wire sig0000039e;
  wire sig0000039f;
  wire sig000003a0;
  wire sig000003a1;
  wire sig000003a2;
  wire sig000003a3;
  wire sig000003a4;
  wire sig000003a5;
  wire sig000003a6;
  wire sig000003a7;
  wire sig000003a8;
  wire sig000003a9;
  wire sig000003aa;
  wire sig000003ab;
  wire sig000003ac;
  wire sig000003ad;
  wire sig000003ae;
  wire sig000003af;
  wire sig000003b0;
  wire sig000003b1;
  wire sig000003b2;
  wire sig000003b3;
  wire sig000003b4;
  wire sig000003b5;
  wire sig000003b6;
  wire sig000003b7;
  wire sig000003b8;
  wire sig000003b9;
  wire sig000003ba;
  wire sig000003bb;
  wire sig000003bc;
  wire sig000003bd;
  wire sig000003be;
  wire sig000003bf;
  wire sig000003c0;
  wire sig000003c1;
  wire sig000003c2;
  wire sig000003c3;
  wire sig000003c4;
  wire sig000003c5;
  wire sig000003c6;
  wire sig000003c7;
  wire sig000003c8;
  wire sig000003c9;
  wire sig000003ca;
  wire sig000003cb;
  wire sig000003cc;
  wire sig000003cd;
  wire sig000003ce;
  wire sig000003cf;
  wire sig000003d0;
  wire sig000003d1;
  wire sig000003d2;
  wire sig000003d3;
  wire sig000003d4;
  wire sig000003d5;
  wire sig000003d6;
  wire sig000003d7;
  wire sig000003d8;
  wire sig000003d9;
  wire sig000003da;
  wire sig000003db;
  wire sig000003dc;
  wire sig000003dd;
  wire sig000003de;
  wire sig000003df;
  wire sig000003e0;
  wire sig000003e1;
  wire sig000003e2;
  wire sig000003e3;
  wire sig000003e4;
  wire sig000003e5;
  wire sig000003e6;
  wire sig000003e7;
  wire sig000003e8;
  wire sig000003e9;
  wire sig000003ea;
  wire sig000003eb;
  wire sig000003ec;
  wire sig000003ed;
  wire sig000003ee;
  wire sig000003ef;
  wire sig000003f0;
  wire sig000003f1;
  wire sig000003f2;
  wire sig000003f3;
  wire sig000003f4;
  wire sig000003f5;
  wire sig000003f6;
  wire sig000003f7;
  wire sig000003f8;
  wire sig000003f9;
  wire sig000003fa;
  wire sig000003fb;
  wire sig000003fc;
  wire sig000003fd;
  wire sig000003fe;
  wire sig000003ff;
  wire sig00000400;
  wire sig00000401;
  wire sig00000402;
  wire sig00000403;
  wire sig00000404;
  wire sig00000405;
  wire sig00000406;
  wire sig00000407;
  wire sig00000408;
  wire sig00000409;
  wire sig0000040a;
  wire sig0000040b;
  wire sig0000040c;
  wire sig0000040d;
  wire sig0000040e;
  wire sig0000040f;
  wire sig00000410;
  wire sig00000411;
  wire sig00000412;
  wire sig00000413;
  wire sig00000414;
  wire sig00000415;
  wire sig00000416;
  wire sig00000417;
  wire sig00000418;
  wire sig00000419;
  wire sig0000041a;
  wire sig0000041b;
  wire sig0000041c;
  wire sig0000041d;
  wire sig0000041e;
  wire sig0000041f;
  wire sig00000420;
  wire sig00000421;
  wire sig00000422;
  wire sig00000423;
  wire sig00000424;
  wire sig00000425;
  wire sig00000426;
  wire sig00000427;
  wire sig00000428;
  wire sig00000429;
  wire sig0000042a;
  wire sig0000042b;
  wire sig0000042c;
  wire sig0000042d;
  wire sig0000042e;
  wire sig0000042f;
  wire sig00000430;
  wire sig00000431;
  wire sig00000432;
  wire sig00000433;
  wire sig00000434;
  wire sig00000435;
  wire sig00000436;
  wire sig00000437;
  wire sig00000438;
  wire sig00000439;
  wire sig0000043a;
  wire sig0000043b;
  wire sig0000043c;
  wire sig0000043d;
  wire sig0000043e;
  wire sig0000043f;
  wire sig00000440;
  wire sig00000441;
  wire sig00000442;
  wire sig00000443;
  wire sig00000444;
  wire sig00000445;
  wire sig00000446;
  wire sig00000447;
  wire sig00000448;
  wire sig00000449;
  wire sig0000044a;
  wire sig0000044b;
  wire \blk0000008f/blk00000090/sig000004a2 ;
  wire \blk0000008f/blk00000090/sig000004a1 ;
  wire \blk0000008f/blk00000090/sig000004a0 ;
  wire \blk0000008f/blk00000090/sig0000049f ;
  wire \blk0000008f/blk00000090/sig0000049e ;
  wire \blk0000008f/blk00000090/sig0000049d ;
  wire \blk0000008f/blk00000090/sig0000049c ;
  wire \blk0000008f/blk00000090/sig0000049b ;
  wire \blk0000008f/blk00000090/sig0000049a ;
  wire \blk0000008f/blk00000090/sig00000499 ;
  wire \blk0000008f/blk00000090/sig00000498 ;
  wire \blk0000008f/blk00000090/sig00000497 ;
  wire \blk0000008f/blk00000090/sig00000496 ;
  wire \blk0000008f/blk00000090/sig00000495 ;
  wire \blk0000008f/blk00000090/sig00000494 ;
  wire \blk0000008f/blk00000090/sig00000493 ;
  wire \blk0000008f/blk00000090/sig00000492 ;
  wire \blk0000008f/blk00000090/sig00000491 ;
  wire \blk000000b3/blk000000b4/sig000004f9 ;
  wire \blk000000b3/blk000000b4/sig000004f8 ;
  wire \blk000000b3/blk000000b4/sig000004f7 ;
  wire \blk000000b3/blk000000b4/sig000004f6 ;
  wire \blk000000b3/blk000000b4/sig000004f5 ;
  wire \blk000000b3/blk000000b4/sig000004f4 ;
  wire \blk000000b3/blk000000b4/sig000004f3 ;
  wire \blk000000b3/blk000000b4/sig000004f2 ;
  wire \blk000000b3/blk000000b4/sig000004f1 ;
  wire \blk000000b3/blk000000b4/sig000004f0 ;
  wire \blk000000b3/blk000000b4/sig000004ef ;
  wire \blk000000b3/blk000000b4/sig000004ee ;
  wire \blk000000b3/blk000000b4/sig000004ed ;
  wire \blk000000b3/blk000000b4/sig000004ec ;
  wire \blk000000b3/blk000000b4/sig000004eb ;
  wire \blk000000b3/blk000000b4/sig000004ea ;
  wire \blk000000b3/blk000000b4/sig000004e9 ;
  wire \blk000000b3/blk000000b4/sig000004e8 ;
  wire \blk00000148/sig00000549 ;
  wire \blk00000148/sig00000548 ;
  wire \blk00000148/sig00000547 ;
  wire \blk00000148/sig00000546 ;
  wire \blk00000148/sig00000545 ;
  wire \blk00000148/sig00000544 ;
  wire \blk00000148/sig00000543 ;
  wire \blk00000148/sig00000542 ;
  wire \blk00000148/sig00000541 ;
  wire \blk00000148/sig00000540 ;
  wire \blk00000148/sig0000053f ;
  wire \blk00000148/sig0000053e ;
  wire \blk00000148/sig0000053d ;
  wire \blk00000148/sig0000053c ;
  wire \blk00000148/sig0000053b ;
  wire \blk00000148/sig0000053a ;
  wire \blk00000148/sig00000539 ;
  wire \blk00000148/sig00000538 ;
  wire \blk00000148/sig00000537 ;
  wire \blk00000148/sig00000536 ;
  wire \blk00000148/sig00000535 ;
  wire \blk00000148/sig00000534 ;
  wire \blk00000148/sig00000533 ;
  wire \blk00000148/sig00000532 ;
  wire \blk00000148/sig00000531 ;
  wire \blk00000148/sig00000530 ;
  wire \blk00000148/sig0000052f ;
  wire \blk00000148/sig0000052e ;
  wire \blk00000148/sig0000052d ;
  wire \blk00000148/sig0000052c ;
  wire \blk00000148/sig0000052b ;
  wire \blk00000148/sig0000052a ;
  wire \blk000001a9/blk000001aa/sig000005bf ;
  wire \blk000001a9/blk000001aa/sig000005be ;
  wire \blk000001a9/blk000001aa/sig000005bd ;
  wire \blk000001a9/blk000001aa/sig000005bc ;
  wire \blk000001a9/blk000001aa/sig000005bb ;
  wire \blk000001a9/blk000001aa/sig000005ba ;
  wire \blk000001a9/blk000001aa/sig000005b9 ;
  wire \blk000001a9/blk000001aa/sig000005b8 ;
  wire \blk000001a9/blk000001aa/sig000005b7 ;
  wire \blk000001a9/blk000001aa/sig000005b6 ;
  wire \blk000001a9/blk000001aa/sig000005b5 ;
  wire \blk000001a9/blk000001aa/sig000005b4 ;
  wire \blk000001a9/blk000001aa/sig000005b3 ;
  wire \blk000001a9/blk000001aa/sig000005b2 ;
  wire \blk000001a9/blk000001aa/sig000005b1 ;
  wire \blk000001a9/blk000001aa/sig000005b0 ;
  wire \blk000001a9/blk000001aa/sig000005af ;
  wire \blk000001cc/blk000001cd/sig00000615 ;
  wire \blk000001cc/blk000001cd/sig00000614 ;
  wire \blk000001cc/blk000001cd/sig00000613 ;
  wire \blk000001cc/blk000001cd/sig00000612 ;
  wire \blk000001cc/blk000001cd/sig00000611 ;
  wire \blk000001cc/blk000001cd/sig00000610 ;
  wire \blk000001cc/blk000001cd/sig0000060f ;
  wire \blk000001cc/blk000001cd/sig0000060e ;
  wire \blk000001cc/blk000001cd/sig0000060d ;
  wire \blk000001cc/blk000001cd/sig0000060c ;
  wire \blk000001cc/blk000001cd/sig0000060b ;
  wire \blk000001cc/blk000001cd/sig0000060a ;
  wire \blk000001cc/blk000001cd/sig00000609 ;
  wire \blk000001cc/blk000001cd/sig00000608 ;
  wire \blk000001cc/blk000001cd/sig00000607 ;
  wire \blk000001cc/blk000001cd/sig00000606 ;
  wire \blk000001cc/blk000001cd/sig00000605 ;
  wire \blk000001ef/blk000001f0/sig0000061e ;
  wire \blk000001ef/blk000001f0/sig0000061d ;
  wire \blk000001ef/blk000001f0/sig0000061c ;
  wire \blk000001f5/blk000001f6/sig00000675 ;
  wire \blk000001f5/blk000001f6/sig00000674 ;
  wire \blk000001f5/blk000001f6/sig00000673 ;
  wire \blk000001f5/blk000001f6/sig00000672 ;
  wire \blk000001f5/blk000001f6/sig00000671 ;
  wire \blk000001f5/blk000001f6/sig00000670 ;
  wire \blk000001f5/blk000001f6/sig0000066f ;
  wire \blk000001f5/blk000001f6/sig0000066e ;
  wire \blk000001f5/blk000001f6/sig0000066d ;
  wire \blk000001f5/blk000001f6/sig0000066c ;
  wire \blk000001f5/blk000001f6/sig0000066b ;
  wire \blk000001f5/blk000001f6/sig0000066a ;
  wire \blk000001f5/blk000001f6/sig00000669 ;
  wire \blk000001f5/blk000001f6/sig00000668 ;
  wire \blk000001f5/blk000001f6/sig00000667 ;
  wire \blk000001f5/blk000001f6/sig00000666 ;
  wire \blk000001f5/blk000001f6/sig00000665 ;
  wire \blk000001f5/blk000001f6/sig00000664 ;
  wire \blk00000219/blk0000021a/sig000006cc ;
  wire \blk00000219/blk0000021a/sig000006cb ;
  wire \blk00000219/blk0000021a/sig000006ca ;
  wire \blk00000219/blk0000021a/sig000006c9 ;
  wire \blk00000219/blk0000021a/sig000006c8 ;
  wire \blk00000219/blk0000021a/sig000006c7 ;
  wire \blk00000219/blk0000021a/sig000006c6 ;
  wire \blk00000219/blk0000021a/sig000006c5 ;
  wire \blk00000219/blk0000021a/sig000006c4 ;
  wire \blk00000219/blk0000021a/sig000006c3 ;
  wire \blk00000219/blk0000021a/sig000006c2 ;
  wire \blk00000219/blk0000021a/sig000006c1 ;
  wire \blk00000219/blk0000021a/sig000006c0 ;
  wire \blk00000219/blk0000021a/sig000006bf ;
  wire \blk00000219/blk0000021a/sig000006be ;
  wire \blk00000219/blk0000021a/sig000006bd ;
  wire \blk00000219/blk0000021a/sig000006bc ;
  wire \blk00000219/blk0000021a/sig000006bb ;
  wire \blk0000023d/blk0000023e/sig000006d5 ;
  wire \blk0000023d/blk0000023e/sig000006d4 ;
  wire \blk0000023d/blk0000023e/sig000006d3 ;
  wire \blk00000243/sig00000754 ;
  wire \blk00000243/sig00000753 ;
  wire \blk00000243/sig00000752 ;
  wire \blk00000243/sig00000751 ;
  wire \blk00000243/sig00000750 ;
  wire \blk00000243/sig0000074f ;
  wire \blk00000243/sig0000074e ;
  wire \blk00000243/sig0000074d ;
  wire \blk00000243/sig0000074c ;
  wire \blk00000243/sig0000074b ;
  wire \blk00000243/sig0000074a ;
  wire \blk00000243/sig00000749 ;
  wire \blk00000243/sig00000748 ;
  wire \blk00000243/sig00000747 ;
  wire \blk00000243/sig00000746 ;
  wire \blk00000243/sig00000745 ;
  wire \blk00000243/sig00000744 ;
  wire \blk00000243/sig00000743 ;
  wire \blk00000243/sig00000742 ;
  wire \blk00000243/sig00000741 ;
  wire \blk00000243/sig00000740 ;
  wire \blk00000243/sig0000073f ;
  wire \blk00000243/sig0000073e ;
  wire \blk00000243/sig0000073d ;
  wire \blk00000243/sig0000073c ;
  wire \blk00000243/sig0000073b ;
  wire \blk00000243/sig0000073a ;
  wire \blk00000243/sig00000739 ;
  wire \blk00000243/sig00000738 ;
  wire \blk00000243/sig00000737 ;
  wire \blk00000243/sig00000736 ;
  wire \blk00000243/sig00000735 ;
  wire \blk00000243/sig00000734 ;
  wire \blk00000243/sig00000733 ;
  wire \blk00000243/sig00000732 ;
  wire \blk00000243/sig00000731 ;
  wire \blk00000243/sig00000730 ;
  wire \blk00000243/sig0000072f ;
  wire \blk00000243/sig0000072e ;
  wire \blk00000243/sig0000072d ;
  wire \blk00000243/sig0000072c ;
  wire \blk00000243/sig0000072b ;
  wire \blk00000243/sig0000072a ;
  wire \blk00000243/sig00000729 ;
  wire \blk00000243/sig00000728 ;
  wire \blk00000243/sig00000727 ;
  wire \blk00000243/sig00000726 ;
  wire \blk00000243/sig00000725 ;
  wire \blk00000243/sig00000724 ;
  wire \blk00000243/sig00000723 ;
  wire \blk00000243/sig00000722 ;
  wire \blk00000243/sig00000721 ;
  wire \blk00000243/sig00000720 ;
  wire \blk00000243/sig0000071f ;
  wire \blk00000243/sig0000071e ;
  wire \blk00000243/sig0000071d ;
  wire \blk00000243/sig0000071c ;
  wire \blk00000243/sig0000071b ;
  wire \blk00000243/sig0000071a ;
  wire \blk00000243/sig00000719 ;
  wire \blk00000243/sig00000718 ;
  wire \blk00000243/sig00000717 ;
  wire \blk00000243/sig00000716 ;
  wire \blk00000298/sig000007d3 ;
  wire \blk00000298/sig000007d2 ;
  wire \blk00000298/sig000007d1 ;
  wire \blk00000298/sig000007d0 ;
  wire \blk00000298/sig000007cf ;
  wire \blk00000298/sig000007ce ;
  wire \blk00000298/sig000007cd ;
  wire \blk00000298/sig000007cc ;
  wire \blk00000298/sig000007cb ;
  wire \blk00000298/sig000007ca ;
  wire \blk00000298/sig000007c9 ;
  wire \blk00000298/sig000007c8 ;
  wire \blk00000298/sig000007c7 ;
  wire \blk00000298/sig000007c6 ;
  wire \blk00000298/sig000007c5 ;
  wire \blk00000298/sig000007c4 ;
  wire \blk00000298/sig000007c3 ;
  wire \blk00000298/sig000007c2 ;
  wire \blk00000298/sig000007c1 ;
  wire \blk00000298/sig000007c0 ;
  wire \blk00000298/sig000007bf ;
  wire \blk00000298/sig000007be ;
  wire \blk00000298/sig000007bd ;
  wire \blk00000298/sig000007bc ;
  wire \blk00000298/sig000007bb ;
  wire \blk00000298/sig000007ba ;
  wire \blk00000298/sig000007b9 ;
  wire \blk00000298/sig000007b8 ;
  wire \blk00000298/sig000007b7 ;
  wire \blk00000298/sig000007b6 ;
  wire \blk00000298/sig000007b5 ;
  wire \blk00000298/sig000007b4 ;
  wire \blk00000298/sig000007b3 ;
  wire \blk00000298/sig000007b2 ;
  wire \blk00000298/sig000007b1 ;
  wire \blk00000298/sig000007b0 ;
  wire \blk00000298/sig000007af ;
  wire \blk00000298/sig000007ae ;
  wire \blk00000298/sig000007ad ;
  wire \blk00000298/sig000007ac ;
  wire \blk00000298/sig000007ab ;
  wire \blk00000298/sig000007aa ;
  wire \blk00000298/sig000007a9 ;
  wire \blk00000298/sig000007a8 ;
  wire \blk00000298/sig000007a7 ;
  wire \blk00000298/sig000007a6 ;
  wire \blk00000298/sig000007a5 ;
  wire \blk00000298/sig000007a4 ;
  wire \blk00000298/sig000007a3 ;
  wire \blk00000298/sig000007a2 ;
  wire \blk00000298/sig000007a1 ;
  wire \blk00000298/sig000007a0 ;
  wire \blk00000298/sig0000079f ;
  wire \blk00000298/sig0000079e ;
  wire \blk00000298/sig0000079d ;
  wire \blk00000298/sig0000079c ;
  wire \blk00000298/sig0000079b ;
  wire \blk00000298/sig0000079a ;
  wire \blk00000298/sig00000799 ;
  wire \blk00000298/sig00000798 ;
  wire \blk00000298/sig00000797 ;
  wire \blk00000298/sig00000796 ;
  wire \blk00000298/sig00000795 ;
  wire \blk000002ed/sig00000825 ;
  wire \blk000002ed/sig00000824 ;
  wire \blk000002ed/sig00000823 ;
  wire \blk000002ed/sig00000822 ;
  wire \blk000002ed/sig00000821 ;
  wire \blk000002ed/sig00000820 ;
  wire \blk000002ed/sig0000081f ;
  wire \blk000002ed/sig0000081e ;
  wire \blk000002ed/sig0000081d ;
  wire \blk000002ed/sig0000081c ;
  wire \blk000002ed/sig0000081b ;
  wire \blk000002ed/sig0000081a ;
  wire \blk000002ed/sig00000819 ;
  wire \blk000002ed/sig00000818 ;
  wire \blk000002ed/sig00000817 ;
  wire \blk000002ed/sig00000816 ;
  wire \blk000002ed/sig00000815 ;
  wire \blk000002ed/sig00000814 ;
  wire \blk000002ed/sig00000813 ;
  wire \blk000002ed/sig00000812 ;
  wire \blk000002ed/sig00000811 ;
  wire \blk000002ed/sig00000810 ;
  wire \blk000002ed/sig0000080f ;
  wire \blk000002ed/sig0000080e ;
  wire \blk000002ed/sig0000080d ;
  wire \blk000002ed/sig0000080c ;
  wire \blk000002ed/sig0000080b ;
  wire \blk000002ed/sig0000080a ;
  wire \blk000002ed/sig00000809 ;
  wire \blk000002ed/sig00000808 ;
  wire \blk000002ed/sig00000807 ;
  wire \blk000002ed/sig00000806 ;
  wire \blk000002ed/sig00000805 ;
  wire \blk000002ed/sig00000804 ;
  wire \blk000002ed/sig00000803 ;
  wire \blk000002ed/sig00000802 ;
  wire \blk000002ed/sig00000801 ;
  wire \blk000002ed/sig00000800 ;
  wire \blk000002ed/sig000007ff ;
  wire \blk000002ed/sig000007fe ;
  wire \blk000002ed/sig000007fd ;
  wire \blk0000032c/sig00000877 ;
  wire \blk0000032c/sig00000876 ;
  wire \blk0000032c/sig00000875 ;
  wire \blk0000032c/sig00000874 ;
  wire \blk0000032c/sig00000873 ;
  wire \blk0000032c/sig00000872 ;
  wire \blk0000032c/sig00000871 ;
  wire \blk0000032c/sig00000870 ;
  wire \blk0000032c/sig0000086f ;
  wire \blk0000032c/sig0000086e ;
  wire \blk0000032c/sig0000086d ;
  wire \blk0000032c/sig0000086c ;
  wire \blk0000032c/sig0000086b ;
  wire \blk0000032c/sig0000086a ;
  wire \blk0000032c/sig00000869 ;
  wire \blk0000032c/sig00000868 ;
  wire \blk0000032c/sig00000867 ;
  wire \blk0000032c/sig00000866 ;
  wire \blk0000032c/sig00000865 ;
  wire \blk0000032c/sig00000864 ;
  wire \blk0000032c/sig00000863 ;
  wire \blk0000032c/sig00000862 ;
  wire \blk0000032c/sig00000861 ;
  wire \blk0000032c/sig00000860 ;
  wire \blk0000032c/sig0000085f ;
  wire \blk0000032c/sig0000085e ;
  wire \blk0000032c/sig0000085d ;
  wire \blk0000032c/sig0000085c ;
  wire \blk0000032c/sig0000085b ;
  wire \blk0000032c/sig0000085a ;
  wire \blk0000032c/sig00000859 ;
  wire \blk0000032c/sig00000858 ;
  wire \blk0000032c/sig00000857 ;
  wire \blk0000032c/sig00000856 ;
  wire \blk0000032c/sig00000855 ;
  wire \blk0000032c/sig00000854 ;
  wire \blk0000032c/sig00000853 ;
  wire \blk0000032c/sig00000852 ;
  wire \blk0000032c/sig00000851 ;
  wire \blk0000032c/sig00000850 ;
  wire \blk0000032c/sig0000084f ;
  wire \blk000003d0/blk000003d1/sig00000883 ;
  wire \blk000003d0/blk000003d1/sig00000882 ;
  wire \blk000003d0/blk000003d1/sig00000881 ;
  wire \blk000003fc/sig0000089f ;
  wire \blk000003fc/sig0000089e ;
  wire \blk000003fc/sig0000089d ;
  wire \blk000003fc/sig0000089c ;
  wire \blk000003fc/sig0000089b ;
  wire \blk000003fc/sig0000089a ;
  wire \blk000003fc/sig00000899 ;
  wire \blk000003fc/sig00000898 ;
  wire \blk000003fc/sig00000897 ;
  wire \blk000003fc/sig00000896 ;
  wire \blk000003fc/sig00000895 ;
  wire \blk000003fc/sig00000894 ;
  wire \blk000003fc/sig00000893 ;
  wire \blk000003fc/sig00000892 ;
  wire \blk0000048a/blk0000048b/sig000008c6 ;
  wire \blk0000048a/blk0000048b/sig000008c5 ;
  wire \blk0000048a/blk0000048b/sig000008c4 ;
  wire \blk0000048a/blk0000048b/sig000008c3 ;
  wire \blk0000048a/blk0000048b/sig000008c2 ;
  wire \blk0000048a/blk0000048b/sig000008c1 ;
  wire \blk0000048a/blk0000048b/sig000008c0 ;
  wire \blk0000048a/blk0000048b/sig000008bf ;
  wire \blk0000048a/blk0000048b/sig000008be ;
  wire \blk0000049c/blk0000049d/sig000008cf ;
  wire \blk0000049c/blk0000049d/sig000008ce ;
  wire \blk0000049c/blk0000049d/sig000008cd ;
  wire \blk000004a2/sig000008df ;
  wire \blk000004a2/sig000008de ;
  wire \blk000004a2/sig000008dd ;
  wire \blk000004a2/sig000008dc ;
  wire \blk000004a2/sig000008db ;
  wire \blk000004a2/sig000008da ;
  wire \blk000004a2/sig000008d9 ;
  wire \blk000004a2/sig000008d8 ;
  wire \blk000004af/blk000004b0/sig000008eb ;
  wire \blk000004af/blk000004b0/sig000008ea ;
  wire \blk000004af/blk000004b0/sig000008e9 ;
  wire \blk000004b5/blk000004b6/sig000008f7 ;
  wire \blk000004b5/blk000004b6/sig000008f6 ;
  wire \blk000004b5/blk000004b6/sig000008f5 ;
  wire \blk000004c5/blk000004c6/sig0000091e ;
  wire \blk000004c5/blk000004c6/sig0000091d ;
  wire \blk000004c5/blk000004c6/sig0000091c ;
  wire \blk000004c5/blk000004c6/sig0000091b ;
  wire \blk000004c5/blk000004c6/sig0000091a ;
  wire \blk000004c5/blk000004c6/sig00000919 ;
  wire \blk000004c5/blk000004c6/sig00000918 ;
  wire \blk000004c5/blk000004c6/sig00000917 ;
  wire \blk000004c5/blk000004c6/sig00000916 ;
  wire \blk000004d7/blk000004d8/sig00000927 ;
  wire \blk000004d7/blk000004d8/sig00000926 ;
  wire \blk000004d7/blk000004d8/sig00000925 ;
  wire \blk000004dd/sig0000094c ;
  wire \blk000004dd/sig0000094b ;
  wire \blk000004dd/sig0000094a ;
  wire \blk000004dd/sig00000949 ;
  wire \blk000004dd/sig00000948 ;
  wire \blk000004dd/sig00000947 ;
  wire \blk000004dd/sig00000946 ;
  wire \blk000004dd/sig00000945 ;
  wire \blk000004dd/sig00000944 ;
  wire \blk000004dd/sig00000943 ;
  wire \blk000004dd/sig00000942 ;
  wire \blk000004dd/sig00000941 ;
  wire \blk000004dd/sig00000940 ;
  wire \blk000004dd/sig0000093f ;
  wire \blk000004dd/sig0000093e ;
  wire \blk000004dd/sig0000093d ;
  wire \blk000004dd/sig0000093c ;
  wire \blk000004dd/sig0000093b ;
  wire \blk000004dd/sig0000093a ;
  wire \blk000004dd/sig00000939 ;
  wire \blk000004dd/sig00000938 ;
  wire NLW_blk000000d8_PATTERNBDETECT_UNCONNECTED;
  wire NLW_blk000000d8_PATTERNDETECT_UNCONNECTED;
  wire NLW_blk000000d8_OVERFLOW_UNCONNECTED;
  wire NLW_blk000000d8_UNDERFLOW_UNCONNECTED;
  wire NLW_blk000000d8_CARRYCASCOUT_UNCONNECTED;
  wire NLW_blk000000d8_MULTSIGNOUT_UNCONNECTED;
  wire \NLW_blk000000d8_P<47>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<46>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<45>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<44>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<43>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<42>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<41>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<40>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<39>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<38>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<37>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<36>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<35>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<34>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<33>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<32>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<31>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<30>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<29>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<28>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<27>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<26>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<25>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<24>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<23>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<22>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<21>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<20>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<19>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<18>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<17>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<16>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<15>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<14>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<13>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<12>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<11>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<10>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<9>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<8>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<7>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<6>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<5>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<4>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<3>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<2>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<1>_UNCONNECTED ;
  wire \NLW_blk000000d8_P<0>_UNCONNECTED ;
  wire \NLW_blk000000d8_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk000000d8_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk000000d8_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk000000d8_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk000000d8_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk000000d8_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk000000d8_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk000000d8_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk000000d8_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk000000d8_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk000000d8_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk000000d8_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk000000d8_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk000000d8_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk000000d8_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk000000d8_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk000000d8_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk000000d8_BCOUT<0>_UNCONNECTED ;
  wire \NLW_blk000000d8_ACOUT<29>_UNCONNECTED ;
  wire \NLW_blk000000d8_ACOUT<28>_UNCONNECTED ;
  wire \NLW_blk000000d8_ACOUT<27>_UNCONNECTED ;
  wire \NLW_blk000000d8_ACOUT<26>_UNCONNECTED ;
  wire \NLW_blk000000d8_ACOUT<25>_UNCONNECTED ;
  wire \NLW_blk000000d8_ACOUT<24>_UNCONNECTED ;
  wire \NLW_blk000000d8_ACOUT<23>_UNCONNECTED ;
  wire \NLW_blk000000d8_ACOUT<22>_UNCONNECTED ;
  wire \NLW_blk000000d8_ACOUT<21>_UNCONNECTED ;
  wire \NLW_blk000000d8_ACOUT<20>_UNCONNECTED ;
  wire \NLW_blk000000d8_ACOUT<19>_UNCONNECTED ;
  wire \NLW_blk000000d8_ACOUT<18>_UNCONNECTED ;
  wire \NLW_blk000000d8_ACOUT<17>_UNCONNECTED ;
  wire \NLW_blk000000d8_ACOUT<16>_UNCONNECTED ;
  wire \NLW_blk000000d8_ACOUT<15>_UNCONNECTED ;
  wire \NLW_blk000000d8_ACOUT<14>_UNCONNECTED ;
  wire \NLW_blk000000d8_ACOUT<13>_UNCONNECTED ;
  wire \NLW_blk000000d8_ACOUT<12>_UNCONNECTED ;
  wire \NLW_blk000000d8_ACOUT<11>_UNCONNECTED ;
  wire \NLW_blk000000d8_ACOUT<10>_UNCONNECTED ;
  wire \NLW_blk000000d8_ACOUT<9>_UNCONNECTED ;
  wire \NLW_blk000000d8_ACOUT<8>_UNCONNECTED ;
  wire \NLW_blk000000d8_ACOUT<7>_UNCONNECTED ;
  wire \NLW_blk000000d8_ACOUT<6>_UNCONNECTED ;
  wire \NLW_blk000000d8_ACOUT<5>_UNCONNECTED ;
  wire \NLW_blk000000d8_ACOUT<4>_UNCONNECTED ;
  wire \NLW_blk000000d8_ACOUT<3>_UNCONNECTED ;
  wire \NLW_blk000000d8_ACOUT<2>_UNCONNECTED ;
  wire \NLW_blk000000d8_ACOUT<1>_UNCONNECTED ;
  wire \NLW_blk000000d8_ACOUT<0>_UNCONNECTED ;
  wire \NLW_blk000000d8_CARRYOUT<3>_UNCONNECTED ;
  wire \NLW_blk000000d8_CARRYOUT<2>_UNCONNECTED ;
  wire \NLW_blk000000d8_CARRYOUT<1>_UNCONNECTED ;
  wire \NLW_blk000000d8_CARRYOUT<0>_UNCONNECTED ;
  wire NLW_blk000000d9_PATTERNBDETECT_UNCONNECTED;
  wire NLW_blk000000d9_PATTERNDETECT_UNCONNECTED;
  wire NLW_blk000000d9_OVERFLOW_UNCONNECTED;
  wire NLW_blk000000d9_UNDERFLOW_UNCONNECTED;
  wire NLW_blk000000d9_CARRYCASCOUT_UNCONNECTED;
  wire NLW_blk000000d9_MULTSIGNOUT_UNCONNECTED;
  wire \NLW_blk000000d9_PCOUT<47>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<46>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<45>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<44>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<43>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<42>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<41>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<40>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<39>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<38>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<37>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<36>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<35>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<34>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<33>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<32>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<31>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<30>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<29>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<28>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<27>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<26>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<25>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<24>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<23>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<22>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<21>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<20>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<19>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<18>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<17>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<16>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<15>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<14>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<13>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<12>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<11>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<10>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<9>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<8>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<7>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<6>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<5>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<4>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<3>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<2>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<1>_UNCONNECTED ;
  wire \NLW_blk000000d9_PCOUT<0>_UNCONNECTED ;
  wire \NLW_blk000000d9_P<47>_UNCONNECTED ;
  wire \NLW_blk000000d9_P<46>_UNCONNECTED ;
  wire \NLW_blk000000d9_P<45>_UNCONNECTED ;
  wire \NLW_blk000000d9_P<44>_UNCONNECTED ;
  wire \NLW_blk000000d9_P<43>_UNCONNECTED ;
  wire \NLW_blk000000d9_P<42>_UNCONNECTED ;
  wire \NLW_blk000000d9_P<41>_UNCONNECTED ;
  wire \NLW_blk000000d9_P<40>_UNCONNECTED ;
  wire \NLW_blk000000d9_P<39>_UNCONNECTED ;
  wire \NLW_blk000000d9_P<38>_UNCONNECTED ;
  wire \NLW_blk000000d9_P<37>_UNCONNECTED ;
  wire \NLW_blk000000d9_P<36>_UNCONNECTED ;
  wire \NLW_blk000000d9_P<35>_UNCONNECTED ;
  wire \NLW_blk000000d9_P<34>_UNCONNECTED ;
  wire \NLW_blk000000d9_P<33>_UNCONNECTED ;
  wire \NLW_blk000000d9_P<32>_UNCONNECTED ;
  wire \NLW_blk000000d9_P<31>_UNCONNECTED ;
  wire \NLW_blk000000d9_P<30>_UNCONNECTED ;
  wire \NLW_blk000000d9_P<29>_UNCONNECTED ;
  wire \NLW_blk000000d9_P<28>_UNCONNECTED ;
  wire \NLW_blk000000d9_P<27>_UNCONNECTED ;
  wire \NLW_blk000000d9_P<26>_UNCONNECTED ;
  wire \NLW_blk000000d9_P<25>_UNCONNECTED ;
  wire \NLW_blk000000d9_P<24>_UNCONNECTED ;
  wire \NLW_blk000000d9_P<3>_UNCONNECTED ;
  wire \NLW_blk000000d9_P<2>_UNCONNECTED ;
  wire \NLW_blk000000d9_P<1>_UNCONNECTED ;
  wire \NLW_blk000000d9_P<0>_UNCONNECTED ;
  wire \NLW_blk000000d9_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk000000d9_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk000000d9_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk000000d9_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk000000d9_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk000000d9_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk000000d9_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk000000d9_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk000000d9_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk000000d9_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk000000d9_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk000000d9_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk000000d9_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk000000d9_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk000000d9_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk000000d9_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk000000d9_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk000000d9_BCOUT<0>_UNCONNECTED ;
  wire \NLW_blk000000d9_ACOUT<29>_UNCONNECTED ;
  wire \NLW_blk000000d9_ACOUT<28>_UNCONNECTED ;
  wire \NLW_blk000000d9_ACOUT<27>_UNCONNECTED ;
  wire \NLW_blk000000d9_ACOUT<26>_UNCONNECTED ;
  wire \NLW_blk000000d9_ACOUT<25>_UNCONNECTED ;
  wire \NLW_blk000000d9_ACOUT<24>_UNCONNECTED ;
  wire \NLW_blk000000d9_ACOUT<23>_UNCONNECTED ;
  wire \NLW_blk000000d9_ACOUT<22>_UNCONNECTED ;
  wire \NLW_blk000000d9_ACOUT<21>_UNCONNECTED ;
  wire \NLW_blk000000d9_ACOUT<20>_UNCONNECTED ;
  wire \NLW_blk000000d9_ACOUT<19>_UNCONNECTED ;
  wire \NLW_blk000000d9_ACOUT<18>_UNCONNECTED ;
  wire \NLW_blk000000d9_ACOUT<17>_UNCONNECTED ;
  wire \NLW_blk000000d9_ACOUT<16>_UNCONNECTED ;
  wire \NLW_blk000000d9_ACOUT<15>_UNCONNECTED ;
  wire \NLW_blk000000d9_ACOUT<14>_UNCONNECTED ;
  wire \NLW_blk000000d9_ACOUT<13>_UNCONNECTED ;
  wire \NLW_blk000000d9_ACOUT<12>_UNCONNECTED ;
  wire \NLW_blk000000d9_ACOUT<11>_UNCONNECTED ;
  wire \NLW_blk000000d9_ACOUT<10>_UNCONNECTED ;
  wire \NLW_blk000000d9_ACOUT<9>_UNCONNECTED ;
  wire \NLW_blk000000d9_ACOUT<8>_UNCONNECTED ;
  wire \NLW_blk000000d9_ACOUT<7>_UNCONNECTED ;
  wire \NLW_blk000000d9_ACOUT<6>_UNCONNECTED ;
  wire \NLW_blk000000d9_ACOUT<5>_UNCONNECTED ;
  wire \NLW_blk000000d9_ACOUT<4>_UNCONNECTED ;
  wire \NLW_blk000000d9_ACOUT<3>_UNCONNECTED ;
  wire \NLW_blk000000d9_ACOUT<2>_UNCONNECTED ;
  wire \NLW_blk000000d9_ACOUT<1>_UNCONNECTED ;
  wire \NLW_blk000000d9_ACOUT<0>_UNCONNECTED ;
  wire \NLW_blk000000d9_CARRYOUT<3>_UNCONNECTED ;
  wire \NLW_blk000000d9_CARRYOUT<2>_UNCONNECTED ;
  wire \NLW_blk000000d9_CARRYOUT<1>_UNCONNECTED ;
  wire \NLW_blk000000d9_CARRYOUT<0>_UNCONNECTED ;
  wire NLW_blk00000383_Q_UNCONNECTED;
  wire NLW_blk00000384_Q_UNCONNECTED;
  wire NLW_blk00000385_Q_UNCONNECTED;
  wire NLW_blk00000386_Q_UNCONNECTED;
  wire NLW_blk00000387_Q_UNCONNECTED;
  wire NLW_blk00000388_Q_UNCONNECTED;
  wire NLW_blk00000399_Q_UNCONNECTED;
  wire NLW_blk0000039a_Q_UNCONNECTED;
  wire NLW_blk000003b3_Q_UNCONNECTED;
  wire NLW_blk000003b4_Q_UNCONNECTED;
  wire NLW_blk000003b5_Q_UNCONNECTED;
  wire NLW_blk000003b6_Q_UNCONNECTED;
  wire NLW_blk000003b7_Q_UNCONNECTED;
  wire NLW_blk000003b8_Q_UNCONNECTED;
  wire NLW_blk000003c9_Q_UNCONNECTED;
  wire NLW_blk000003ca_Q_UNCONNECTED;
  wire NLW_blk00000626_Q15_UNCONNECTED;
  wire NLW_blk00000628_Q15_UNCONNECTED;
  wire NLW_blk0000062a_Q15_UNCONNECTED;
  wire NLW_blk0000062c_Q15_UNCONNECTED;
  wire NLW_blk0000062e_Q15_UNCONNECTED;
  wire NLW_blk00000630_Q15_UNCONNECTED;
  wire NLW_blk00000632_Q15_UNCONNECTED;
  wire NLW_blk00000634_Q15_UNCONNECTED;
  wire NLW_blk00000636_Q15_UNCONNECTED;
  wire NLW_blk00000638_Q15_UNCONNECTED;
  wire \NLW_blk0000008f/blk00000090/blk000000b1_Q15_UNCONNECTED ;
  wire \NLW_blk0000008f/blk00000090/blk000000af_Q15_UNCONNECTED ;
  wire \NLW_blk0000008f/blk00000090/blk000000ad_Q15_UNCONNECTED ;
  wire \NLW_blk0000008f/blk00000090/blk000000ab_Q15_UNCONNECTED ;
  wire \NLW_blk0000008f/blk00000090/blk000000a9_Q15_UNCONNECTED ;
  wire \NLW_blk0000008f/blk00000090/blk000000a7_Q15_UNCONNECTED ;
  wire \NLW_blk0000008f/blk00000090/blk000000a5_Q15_UNCONNECTED ;
  wire \NLW_blk0000008f/blk00000090/blk000000a3_Q15_UNCONNECTED ;
  wire \NLW_blk0000008f/blk00000090/blk000000a1_Q15_UNCONNECTED ;
  wire \NLW_blk0000008f/blk00000090/blk0000009f_Q15_UNCONNECTED ;
  wire \NLW_blk0000008f/blk00000090/blk0000009d_Q15_UNCONNECTED ;
  wire \NLW_blk0000008f/blk00000090/blk0000009b_Q15_UNCONNECTED ;
  wire \NLW_blk0000008f/blk00000090/blk00000099_Q15_UNCONNECTED ;
  wire \NLW_blk0000008f/blk00000090/blk00000097_Q15_UNCONNECTED ;
  wire \NLW_blk0000008f/blk00000090/blk00000095_Q15_UNCONNECTED ;
  wire \NLW_blk0000008f/blk00000090/blk00000093_Q15_UNCONNECTED ;
  wire \NLW_blk000000b3/blk000000b4/blk000000d5_Q15_UNCONNECTED ;
  wire \NLW_blk000000b3/blk000000b4/blk000000d3_Q15_UNCONNECTED ;
  wire \NLW_blk000000b3/blk000000b4/blk000000d1_Q15_UNCONNECTED ;
  wire \NLW_blk000000b3/blk000000b4/blk000000cf_Q15_UNCONNECTED ;
  wire \NLW_blk000000b3/blk000000b4/blk000000cd_Q15_UNCONNECTED ;
  wire \NLW_blk000000b3/blk000000b4/blk000000cb_Q15_UNCONNECTED ;
  wire \NLW_blk000000b3/blk000000b4/blk000000c9_Q15_UNCONNECTED ;
  wire \NLW_blk000000b3/blk000000b4/blk000000c7_Q15_UNCONNECTED ;
  wire \NLW_blk000000b3/blk000000b4/blk000000c5_Q15_UNCONNECTED ;
  wire \NLW_blk000000b3/blk000000b4/blk000000c3_Q15_UNCONNECTED ;
  wire \NLW_blk000000b3/blk000000b4/blk000000c1_Q15_UNCONNECTED ;
  wire \NLW_blk000000b3/blk000000b4/blk000000bf_Q15_UNCONNECTED ;
  wire \NLW_blk000000b3/blk000000b4/blk000000bd_Q15_UNCONNECTED ;
  wire \NLW_blk000000b3/blk000000b4/blk000000bb_Q15_UNCONNECTED ;
  wire \NLW_blk000000b3/blk000000b4/blk000000b9_Q15_UNCONNECTED ;
  wire \NLW_blk000000b3/blk000000b4/blk000000b7_Q15_UNCONNECTED ;
  wire \NLW_blk00000148/blk00000188_SPO_UNCONNECTED ;
  wire \NLW_blk00000148/blk00000187_SPO_UNCONNECTED ;
  wire \NLW_blk00000148/blk00000186_SPO_UNCONNECTED ;
  wire \NLW_blk00000148/blk00000185_SPO_UNCONNECTED ;
  wire \NLW_blk00000148/blk00000184_SPO_UNCONNECTED ;
  wire \NLW_blk00000148/blk00000183_SPO_UNCONNECTED ;
  wire \NLW_blk00000148/blk00000182_SPO_UNCONNECTED ;
  wire \NLW_blk00000148/blk00000181_SPO_UNCONNECTED ;
  wire \NLW_blk00000148/blk00000180_SPO_UNCONNECTED ;
  wire \NLW_blk00000148/blk0000017f_SPO_UNCONNECTED ;
  wire \NLW_blk00000148/blk0000017e_SPO_UNCONNECTED ;
  wire \NLW_blk00000148/blk0000017d_SPO_UNCONNECTED ;
  wire \NLW_blk00000148/blk0000017c_SPO_UNCONNECTED ;
  wire \NLW_blk00000148/blk0000017b_SPO_UNCONNECTED ;
  wire \NLW_blk00000148/blk0000017a_SPO_UNCONNECTED ;
  wire \NLW_blk00000148/blk00000179_SPO_UNCONNECTED ;
  wire \NLW_blk00000148/blk00000178_SPO_UNCONNECTED ;
  wire \NLW_blk00000148/blk00000177_SPO_UNCONNECTED ;
  wire \NLW_blk00000148/blk00000176_SPO_UNCONNECTED ;
  wire \NLW_blk00000148/blk00000175_SPO_UNCONNECTED ;
  wire \NLW_blk00000148/blk00000174_SPO_UNCONNECTED ;
  wire \NLW_blk00000148/blk00000173_SPO_UNCONNECTED ;
  wire \NLW_blk00000148/blk00000172_SPO_UNCONNECTED ;
  wire \NLW_blk00000148/blk00000171_SPO_UNCONNECTED ;
  wire \NLW_blk00000148/blk00000170_SPO_UNCONNECTED ;
  wire \NLW_blk00000148/blk0000016f_SPO_UNCONNECTED ;
  wire \NLW_blk00000148/blk0000016e_SPO_UNCONNECTED ;
  wire \NLW_blk00000148/blk0000016d_SPO_UNCONNECTED ;
  wire \NLW_blk00000148/blk0000016c_SPO_UNCONNECTED ;
  wire \NLW_blk00000148/blk0000016b_SPO_UNCONNECTED ;
  wire \NLW_blk00000148/blk0000016a_SPO_UNCONNECTED ;
  wire \NLW_blk00000148/blk00000169_SPO_UNCONNECTED ;
  wire \NLW_blk000001a9/blk000001aa/blk000001ca_Q15_UNCONNECTED ;
  wire \NLW_blk000001a9/blk000001aa/blk000001c8_Q15_UNCONNECTED ;
  wire \NLW_blk000001a9/blk000001aa/blk000001c6_Q15_UNCONNECTED ;
  wire \NLW_blk000001a9/blk000001aa/blk000001c4_Q15_UNCONNECTED ;
  wire \NLW_blk000001a9/blk000001aa/blk000001c2_Q15_UNCONNECTED ;
  wire \NLW_blk000001a9/blk000001aa/blk000001c0_Q15_UNCONNECTED ;
  wire \NLW_blk000001a9/blk000001aa/blk000001be_Q15_UNCONNECTED ;
  wire \NLW_blk000001a9/blk000001aa/blk000001bc_Q15_UNCONNECTED ;
  wire \NLW_blk000001a9/blk000001aa/blk000001ba_Q15_UNCONNECTED ;
  wire \NLW_blk000001a9/blk000001aa/blk000001b8_Q15_UNCONNECTED ;
  wire \NLW_blk000001a9/blk000001aa/blk000001b6_Q15_UNCONNECTED ;
  wire \NLW_blk000001a9/blk000001aa/blk000001b4_Q15_UNCONNECTED ;
  wire \NLW_blk000001a9/blk000001aa/blk000001b2_Q15_UNCONNECTED ;
  wire \NLW_blk000001a9/blk000001aa/blk000001b0_Q15_UNCONNECTED ;
  wire \NLW_blk000001a9/blk000001aa/blk000001ae_Q15_UNCONNECTED ;
  wire \NLW_blk000001a9/blk000001aa/blk000001ac_Q15_UNCONNECTED ;
  wire \NLW_blk000001cc/blk000001cd/blk000001ed_Q15_UNCONNECTED ;
  wire \NLW_blk000001cc/blk000001cd/blk000001eb_Q15_UNCONNECTED ;
  wire \NLW_blk000001cc/blk000001cd/blk000001e9_Q15_UNCONNECTED ;
  wire \NLW_blk000001cc/blk000001cd/blk000001e7_Q15_UNCONNECTED ;
  wire \NLW_blk000001cc/blk000001cd/blk000001e5_Q15_UNCONNECTED ;
  wire \NLW_blk000001cc/blk000001cd/blk000001e3_Q15_UNCONNECTED ;
  wire \NLW_blk000001cc/blk000001cd/blk000001e1_Q15_UNCONNECTED ;
  wire \NLW_blk000001cc/blk000001cd/blk000001df_Q15_UNCONNECTED ;
  wire \NLW_blk000001cc/blk000001cd/blk000001dd_Q15_UNCONNECTED ;
  wire \NLW_blk000001cc/blk000001cd/blk000001db_Q15_UNCONNECTED ;
  wire \NLW_blk000001cc/blk000001cd/blk000001d9_Q15_UNCONNECTED ;
  wire \NLW_blk000001cc/blk000001cd/blk000001d7_Q15_UNCONNECTED ;
  wire \NLW_blk000001cc/blk000001cd/blk000001d5_Q15_UNCONNECTED ;
  wire \NLW_blk000001cc/blk000001cd/blk000001d3_Q15_UNCONNECTED ;
  wire \NLW_blk000001cc/blk000001cd/blk000001d1_Q15_UNCONNECTED ;
  wire \NLW_blk000001cc/blk000001cd/blk000001cf_Q15_UNCONNECTED ;
  wire \NLW_blk000001ef/blk000001f0/blk000001f3_Q15_UNCONNECTED ;
  wire \NLW_blk000001f5/blk000001f6/blk00000217_Q15_UNCONNECTED ;
  wire \NLW_blk000001f5/blk000001f6/blk00000215_Q15_UNCONNECTED ;
  wire \NLW_blk000001f5/blk000001f6/blk00000213_Q15_UNCONNECTED ;
  wire \NLW_blk000001f5/blk000001f6/blk00000211_Q15_UNCONNECTED ;
  wire \NLW_blk000001f5/blk000001f6/blk0000020f_Q15_UNCONNECTED ;
  wire \NLW_blk000001f5/blk000001f6/blk0000020d_Q15_UNCONNECTED ;
  wire \NLW_blk000001f5/blk000001f6/blk0000020b_Q15_UNCONNECTED ;
  wire \NLW_blk000001f5/blk000001f6/blk00000209_Q15_UNCONNECTED ;
  wire \NLW_blk000001f5/blk000001f6/blk00000207_Q15_UNCONNECTED ;
  wire \NLW_blk000001f5/blk000001f6/blk00000205_Q15_UNCONNECTED ;
  wire \NLW_blk000001f5/blk000001f6/blk00000203_Q15_UNCONNECTED ;
  wire \NLW_blk000001f5/blk000001f6/blk00000201_Q15_UNCONNECTED ;
  wire \NLW_blk000001f5/blk000001f6/blk000001ff_Q15_UNCONNECTED ;
  wire \NLW_blk000001f5/blk000001f6/blk000001fd_Q15_UNCONNECTED ;
  wire \NLW_blk000001f5/blk000001f6/blk000001fb_Q15_UNCONNECTED ;
  wire \NLW_blk000001f5/blk000001f6/blk000001f9_Q15_UNCONNECTED ;
  wire \NLW_blk00000219/blk0000021a/blk0000023b_Q15_UNCONNECTED ;
  wire \NLW_blk00000219/blk0000021a/blk00000239_Q15_UNCONNECTED ;
  wire \NLW_blk00000219/blk0000021a/blk00000237_Q15_UNCONNECTED ;
  wire \NLW_blk00000219/blk0000021a/blk00000235_Q15_UNCONNECTED ;
  wire \NLW_blk00000219/blk0000021a/blk00000233_Q15_UNCONNECTED ;
  wire \NLW_blk00000219/blk0000021a/blk00000231_Q15_UNCONNECTED ;
  wire \NLW_blk00000219/blk0000021a/blk0000022f_Q15_UNCONNECTED ;
  wire \NLW_blk00000219/blk0000021a/blk0000022d_Q15_UNCONNECTED ;
  wire \NLW_blk00000219/blk0000021a/blk0000022b_Q15_UNCONNECTED ;
  wire \NLW_blk00000219/blk0000021a/blk00000229_Q15_UNCONNECTED ;
  wire \NLW_blk00000219/blk0000021a/blk00000227_Q15_UNCONNECTED ;
  wire \NLW_blk00000219/blk0000021a/blk00000225_Q15_UNCONNECTED ;
  wire \NLW_blk00000219/blk0000021a/blk00000223_Q15_UNCONNECTED ;
  wire \NLW_blk00000219/blk0000021a/blk00000221_Q15_UNCONNECTED ;
  wire \NLW_blk00000219/blk0000021a/blk0000021f_Q15_UNCONNECTED ;
  wire \NLW_blk00000219/blk0000021a/blk0000021d_Q15_UNCONNECTED ;
  wire \NLW_blk0000023d/blk0000023e/blk00000241_Q15_UNCONNECTED ;
  wire \NLW_blk000002ed/blk00000315_O_UNCONNECTED ;
  wire \NLW_blk000002ed/blk00000301_O_UNCONNECTED ;
  wire \NLW_blk000002ed/blk00000300_O_UNCONNECTED ;
  wire \NLW_blk000002ed/blk000002ff_O_UNCONNECTED ;
  wire \NLW_blk000002ed/blk000002fe_O_UNCONNECTED ;
  wire \NLW_blk000002ed/blk000002fd_O_UNCONNECTED ;
  wire \NLW_blk000002ed/blk000002fc_O_UNCONNECTED ;
  wire \NLW_blk000002ed/blk000002fb_O_UNCONNECTED ;
  wire \NLW_blk000002ed/blk000002fa_O_UNCONNECTED ;
  wire \NLW_blk000002ed/blk000002f9_O_UNCONNECTED ;
  wire \NLW_blk000002ed/blk000002f8_O_UNCONNECTED ;
  wire \NLW_blk000002ed/blk000002f7_O_UNCONNECTED ;
  wire \NLW_blk000002ed/blk000002f6_O_UNCONNECTED ;
  wire \NLW_blk000002ed/blk000002f5_O_UNCONNECTED ;
  wire \NLW_blk000002ed/blk000002f4_O_UNCONNECTED ;
  wire \NLW_blk000002ed/blk000002f3_O_UNCONNECTED ;
  wire \NLW_blk000002ed/blk000002f2_O_UNCONNECTED ;
  wire \NLW_blk000002ed/blk000002f1_O_UNCONNECTED ;
  wire \NLW_blk000002ed/blk000002f0_O_UNCONNECTED ;
  wire \NLW_blk000002ed/blk000002ef_O_UNCONNECTED ;
  wire \NLW_blk000002ed/blk000002ee_O_UNCONNECTED ;
  wire \NLW_blk0000032c/blk00000354_O_UNCONNECTED ;
  wire \NLW_blk0000032c/blk00000340_O_UNCONNECTED ;
  wire \NLW_blk0000032c/blk0000033f_O_UNCONNECTED ;
  wire \NLW_blk0000032c/blk0000033e_O_UNCONNECTED ;
  wire \NLW_blk0000032c/blk0000033d_O_UNCONNECTED ;
  wire \NLW_blk0000032c/blk0000033c_O_UNCONNECTED ;
  wire \NLW_blk0000032c/blk0000033b_O_UNCONNECTED ;
  wire \NLW_blk0000032c/blk0000033a_O_UNCONNECTED ;
  wire \NLW_blk0000032c/blk00000339_O_UNCONNECTED ;
  wire \NLW_blk0000032c/blk00000338_O_UNCONNECTED ;
  wire \NLW_blk0000032c/blk00000337_O_UNCONNECTED ;
  wire \NLW_blk0000032c/blk00000336_O_UNCONNECTED ;
  wire \NLW_blk0000032c/blk00000335_O_UNCONNECTED ;
  wire \NLW_blk0000032c/blk00000334_O_UNCONNECTED ;
  wire \NLW_blk0000032c/blk00000333_O_UNCONNECTED ;
  wire \NLW_blk0000032c/blk00000332_O_UNCONNECTED ;
  wire \NLW_blk0000032c/blk00000331_O_UNCONNECTED ;
  wire \NLW_blk0000032c/blk00000330_O_UNCONNECTED ;
  wire \NLW_blk0000032c/blk0000032f_O_UNCONNECTED ;
  wire \NLW_blk0000032c/blk0000032e_O_UNCONNECTED ;
  wire \NLW_blk0000032c/blk0000032d_O_UNCONNECTED ;
  wire \NLW_blk000003d0/blk000003d1/blk000003d4_Q15_UNCONNECTED ;
  wire \NLW_blk0000048a/blk0000048b/blk0000049a_Q15_UNCONNECTED ;
  wire \NLW_blk0000048a/blk0000048b/blk00000498_Q15_UNCONNECTED ;
  wire \NLW_blk0000048a/blk0000048b/blk00000496_Q15_UNCONNECTED ;
  wire \NLW_blk0000048a/blk0000048b/blk00000494_Q15_UNCONNECTED ;
  wire \NLW_blk0000048a/blk0000048b/blk00000492_Q15_UNCONNECTED ;
  wire \NLW_blk0000048a/blk0000048b/blk00000490_Q15_UNCONNECTED ;
  wire \NLW_blk0000048a/blk0000048b/blk0000048e_Q15_UNCONNECTED ;
  wire \NLW_blk0000049c/blk0000049d/blk000004a0_Q15_UNCONNECTED ;
  wire \NLW_blk000004af/blk000004b0/blk000004b3_Q15_UNCONNECTED ;
  wire \NLW_blk000004b5/blk000004b6/blk000004b9_Q15_UNCONNECTED ;
  wire \NLW_blk000004c5/blk000004c6/blk000004d5_Q15_UNCONNECTED ;
  wire \NLW_blk000004c5/blk000004c6/blk000004d3_Q15_UNCONNECTED ;
  wire \NLW_blk000004c5/blk000004c6/blk000004d1_Q15_UNCONNECTED ;
  wire \NLW_blk000004c5/blk000004c6/blk000004cf_Q15_UNCONNECTED ;
  wire \NLW_blk000004c5/blk000004c6/blk000004cd_Q15_UNCONNECTED ;
  wire \NLW_blk000004c5/blk000004c6/blk000004cb_Q15_UNCONNECTED ;
  wire \NLW_blk000004c5/blk000004c6/blk000004c9_Q15_UNCONNECTED ;
  wire \NLW_blk000004d7/blk000004d8/blk000004db_Q15_UNCONNECTED ;
  wire [6 : 0] NlwRenamedSig_OI_xn_index;
  wire [6 : 0] \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i ;
  assign
    xn_index[6] = NlwRenamedSig_OI_xn_index[6],
    xn_index[5] = NlwRenamedSig_OI_xn_index[5],
    xn_index[4] = NlwRenamedSig_OI_xn_index[4],
    xn_index[3] = NlwRenamedSig_OI_xn_index[3],
    xn_index[2] = NlwRenamedSig_OI_xn_index[2],
    xn_index[1] = NlwRenamedSig_OI_xn_index[1],
    xn_index[0] = NlwRenamedSig_OI_xn_index[0],
    xk_index[6] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [6],
    xk_index[5] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [5],
    xk_index[4] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [4],
    xk_index[3] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [3],
    xk_index[2] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [2],
    xk_index[1] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [1],
    xk_index[0] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [0],
    xk_re[15] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_15 ,
    xk_re[14] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_14 ,
    xk_re[13] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_13 ,
    xk_re[12] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_12 ,
    xk_re[11] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_11 ,
    xk_re[10] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_10 ,
    xk_re[9] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_9 ,
    xk_re[8] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_8 ,
    xk_re[7] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_7 ,
    xk_re[6] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_6 ,
    xk_re[5] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_5 ,
    xk_re[4] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_4 ,
    xk_re[3] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_3 ,
    xk_re[2] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_2 ,
    xk_re[1] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_1 ,
    xk_re[0] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_0 ,
    xk_im[15] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_15 ,
    xk_im[14] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_14 ,
    xk_im[13] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_13 ,
    xk_im[12] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_12 ,
    xk_im[11] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_11 ,
    xk_im[10] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_10 ,
    xk_im[9] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_9 ,
    xk_im[8] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_8 ,
    xk_im[7] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_7 ,
    xk_im[6] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_6 ,
    xk_im[5] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_5 ,
    xk_im[4] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_4 ,
    xk_im[3] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_3 ,
    xk_im[2] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_2 ,
    xk_im[1] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_1 ,
    xk_im[0] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_0 ,
    rfd = \NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ,
    busy = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/busy_i_reg2 ,
    edone = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/edone_i_reg ,
    done = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/done_i_reg ,
    dv = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/dv_d ;
  VCC   blk00000001 (
    .P(sig00000001)
  );
  GND   blk00000002 (
    .G(sig00000002)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000003 (
    .C(clk),
    .D(sig0000002d),
    .R(sig00000002),
    .Q(sig0000002c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000004 (
    .C(clk),
    .CE(sig0000011b),
    .D(sig0000013b),
    .Q(sig0000007f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000005 (
    .C(clk),
    .CE(sig0000011b),
    .D(sig0000013a),
    .Q(sig0000007e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000006 (
    .C(clk),
    .CE(sig0000011b),
    .D(sig00000139),
    .Q(sig0000007d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000007 (
    .C(clk),
    .CE(sig0000011b),
    .D(sig00000138),
    .Q(sig0000007c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000008 (
    .C(clk),
    .CE(sig0000011b),
    .D(sig00000137),
    .Q(sig0000007b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000009 (
    .C(clk),
    .CE(sig0000011b),
    .D(sig00000136),
    .Q(sig0000007a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000a (
    .C(clk),
    .CE(sig0000011b),
    .D(sig00000135),
    .Q(sig00000079)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000b (
    .C(clk),
    .CE(sig0000011b),
    .D(sig00000134),
    .Q(sig00000078)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000c (
    .C(clk),
    .CE(sig0000011b),
    .D(sig00000133),
    .Q(sig00000077)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000d (
    .C(clk),
    .CE(sig0000011b),
    .D(sig00000132),
    .Q(sig00000076)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000e (
    .C(clk),
    .CE(sig0000011b),
    .D(sig00000131),
    .Q(sig00000075)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000f (
    .C(clk),
    .CE(sig0000011b),
    .D(sig00000130),
    .Q(sig00000074)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000010 (
    .C(clk),
    .CE(sig0000011b),
    .D(sig0000012f),
    .Q(sig00000073)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000011 (
    .C(clk),
    .CE(sig0000011b),
    .D(sig0000012e),
    .Q(sig00000072)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000012 (
    .C(clk),
    .CE(sig0000011b),
    .D(sig0000012d),
    .Q(sig00000071)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000013 (
    .C(clk),
    .CE(sig0000011b),
    .D(sig0000012c),
    .Q(sig00000070)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000014 (
    .C(clk),
    .D(sig0000017b),
    .Q(sig000000af)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000015 (
    .C(clk),
    .D(sig0000017a),
    .Q(sig000000ae)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000016 (
    .C(clk),
    .D(sig00000179),
    .Q(sig000000ad)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000017 (
    .C(clk),
    .D(sig00000178),
    .Q(sig000000ac)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000018 (
    .C(clk),
    .D(sig00000177),
    .Q(sig000000ab)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000019 (
    .C(clk),
    .D(sig00000176),
    .Q(sig000000aa)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000001a (
    .C(clk),
    .D(sig00000175),
    .Q(sig000000a9)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000001b (
    .C(clk),
    .D(sig00000174),
    .Q(sig000000a8)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000001c (
    .C(clk),
    .D(sig00000173),
    .Q(sig000000a7)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000001d (
    .C(clk),
    .D(sig00000172),
    .Q(sig000000a6)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000001e (
    .C(clk),
    .D(sig00000171),
    .Q(sig000000a5)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000001f (
    .C(clk),
    .D(sig00000170),
    .Q(sig000000a4)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000020 (
    .C(clk),
    .D(sig0000016f),
    .Q(sig000000a3)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000021 (
    .C(clk),
    .D(sig0000016e),
    .Q(sig000000a2)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000022 (
    .C(clk),
    .D(sig0000016d),
    .Q(sig000000a1)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000023 (
    .C(clk),
    .D(sig0000016c),
    .Q(sig000000a0)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000024 (
    .C(clk),
    .D(sig0000016b),
    .Q(sig0000009f)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000025 (
    .C(clk),
    .D(sig0000016a),
    .Q(sig0000009e)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000026 (
    .C(clk),
    .D(sig00000169),
    .Q(sig0000009d)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000027 (
    .C(clk),
    .D(sig00000168),
    .Q(sig0000009c)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000028 (
    .C(clk),
    .D(sig00000167),
    .Q(sig0000009b)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000029 (
    .C(clk),
    .D(sig00000166),
    .Q(sig0000009a)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000002a (
    .C(clk),
    .D(sig00000165),
    .Q(sig00000099)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000002b (
    .C(clk),
    .D(sig00000164),
    .Q(sig00000098)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000002c (
    .C(clk),
    .D(sig00000163),
    .Q(sig00000097)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000002d (
    .C(clk),
    .D(sig00000162),
    .Q(sig00000096)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000002e (
    .C(clk),
    .D(sig00000161),
    .Q(sig00000095)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000002f (
    .C(clk),
    .D(sig00000160),
    .Q(sig00000094)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000030 (
    .C(clk),
    .D(sig0000015f),
    .Q(sig00000093)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000031 (
    .C(clk),
    .D(sig0000015e),
    .Q(sig00000092)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000032 (
    .C(clk),
    .D(sig0000015d),
    .Q(sig00000091)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000033 (
    .C(clk),
    .D(sig0000015c),
    .Q(sig00000090)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000034 (
    .C(clk),
    .CE(sig0000002e),
    .D(sig0000003d),
    .Q(sig0000008d)
  );
  FDE #(
    .INIT ( 1'b1 ))
  blk00000035 (
    .C(clk),
    .CE(sig0000002e),
    .D(sig0000003c),
    .Q(sig0000008c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000036 (
    .C(clk),
    .CE(sig0000002e),
    .D(sig0000003b),
    .Q(sig0000008b)
  );
  FDE #(
    .INIT ( 1'b1 ))
  blk00000037 (
    .C(clk),
    .CE(sig0000002e),
    .D(sig0000003a),
    .Q(sig0000008a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000038 (
    .C(clk),
    .CE(sig0000002e),
    .D(sig00000039),
    .Q(sig00000089)
  );
  FDE #(
    .INIT ( 1'b1 ))
  blk00000039 (
    .C(clk),
    .CE(sig0000002e),
    .D(sig00000038),
    .Q(sig00000088)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000003a (
    .C(clk),
    .CE(sig0000002e),
    .D(sig00000037),
    .Q(sig00000087)
  );
  FDE #(
    .INIT ( 1'b1 ))
  blk0000003b (
    .C(clk),
    .CE(sig0000002e),
    .D(sig00000036),
    .Q(sig00000086)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000003c (
    .C(clk),
    .CE(sig0000002e),
    .D(sig00000035),
    .Q(sig00000085)
  );
  FDE #(
    .INIT ( 1'b1 ))
  blk0000003d (
    .C(clk),
    .CE(sig0000002e),
    .D(sig00000034),
    .Q(sig00000084)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000003e (
    .C(clk),
    .CE(sig0000002e),
    .D(sig00000033),
    .Q(sig00000083)
  );
  FDE #(
    .INIT ( 1'b1 ))
  blk0000003f (
    .C(clk),
    .CE(sig0000002e),
    .D(sig00000032),
    .Q(sig00000082)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000040 (
    .C(clk),
    .CE(sig0000002e),
    .D(sig00000031),
    .Q(sig00000081)
  );
  FDE #(
    .INIT ( 1'b1 ))
  blk00000041 (
    .C(clk),
    .CE(sig0000002e),
    .D(sig00000030),
    .Q(sig00000080)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000042 (
    .C(clk),
    .CE(sig0000002f),
    .D(sig0000012b),
    .Q(sig0000004f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000043 (
    .C(clk),
    .CE(sig0000002f),
    .D(sig0000012a),
    .Q(sig0000004e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000044 (
    .C(clk),
    .CE(sig0000002f),
    .D(sig00000129),
    .Q(sig0000004d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000045 (
    .C(clk),
    .CE(sig0000002f),
    .D(sig00000128),
    .Q(sig0000004c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000046 (
    .C(clk),
    .CE(sig0000002f),
    .D(sig00000127),
    .Q(sig0000004b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000047 (
    .C(clk),
    .CE(sig0000002f),
    .D(sig00000126),
    .Q(sig0000004a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000048 (
    .C(clk),
    .CE(sig0000002f),
    .D(sig00000125),
    .Q(sig00000049)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000049 (
    .C(clk),
    .CE(sig0000002f),
    .D(sig00000124),
    .Q(sig00000048)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000004a (
    .C(clk),
    .CE(sig0000002f),
    .D(sig00000123),
    .Q(sig00000047)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000004b (
    .C(clk),
    .CE(sig0000002f),
    .D(sig00000122),
    .Q(sig00000046)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000004c (
    .C(clk),
    .CE(sig0000002f),
    .D(sig00000121),
    .Q(sig00000045)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000004d (
    .C(clk),
    .CE(sig0000002f),
    .D(sig00000120),
    .Q(sig00000044)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000004e (
    .C(clk),
    .CE(sig0000002f),
    .D(sig0000011f),
    .Q(sig00000043)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000004f (
    .C(clk),
    .CE(sig0000002f),
    .D(sig0000011e),
    .Q(sig00000042)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000050 (
    .C(clk),
    .CE(sig0000002f),
    .D(sig0000011d),
    .Q(sig00000041)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000051 (
    .C(clk),
    .CE(sig0000002f),
    .D(sig0000011c),
    .Q(sig00000040)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000052 (
    .C(clk),
    .CE(sig0000002f),
    .D(sig0000013b),
    .Q(sig0000005f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000053 (
    .C(clk),
    .CE(sig0000002f),
    .D(sig0000013a),
    .Q(sig0000005e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000054 (
    .C(clk),
    .CE(sig0000002f),
    .D(sig00000139),
    .Q(sig0000005d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000055 (
    .C(clk),
    .CE(sig0000002f),
    .D(sig00000138),
    .Q(sig0000005c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000056 (
    .C(clk),
    .CE(sig0000002f),
    .D(sig00000137),
    .Q(sig0000005b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000057 (
    .C(clk),
    .CE(sig0000002f),
    .D(sig00000136),
    .Q(sig0000005a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000058 (
    .C(clk),
    .CE(sig0000002f),
    .D(sig00000135),
    .Q(sig00000059)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000059 (
    .C(clk),
    .CE(sig0000002f),
    .D(sig00000134),
    .Q(sig00000058)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000005a (
    .C(clk),
    .CE(sig0000002f),
    .D(sig00000133),
    .Q(sig00000057)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000005b (
    .C(clk),
    .CE(sig0000002f),
    .D(sig00000132),
    .Q(sig00000056)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000005c (
    .C(clk),
    .CE(sig0000002f),
    .D(sig00000131),
    .Q(sig00000055)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000005d (
    .C(clk),
    .CE(sig0000002f),
    .D(sig00000130),
    .Q(sig00000054)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000005e (
    .C(clk),
    .CE(sig0000002f),
    .D(sig0000012f),
    .Q(sig00000053)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000005f (
    .C(clk),
    .CE(sig0000002f),
    .D(sig0000012e),
    .Q(sig00000052)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000060 (
    .C(clk),
    .CE(sig0000002f),
    .D(sig0000012d),
    .Q(sig00000051)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000061 (
    .C(clk),
    .CE(sig0000002f),
    .D(sig0000012c),
    .Q(sig00000050)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000062 (
    .C(clk),
    .CE(sig0000011b),
    .D(sig0000012b),
    .Q(sig0000006f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000063 (
    .C(clk),
    .CE(sig0000011b),
    .D(sig0000012a),
    .Q(sig0000006e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000064 (
    .C(clk),
    .CE(sig0000011b),
    .D(sig00000129),
    .Q(sig0000006d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000065 (
    .C(clk),
    .CE(sig0000011b),
    .D(sig00000128),
    .Q(sig0000006c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000066 (
    .C(clk),
    .CE(sig0000011b),
    .D(sig00000127),
    .Q(sig0000006b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000067 (
    .C(clk),
    .CE(sig0000011b),
    .D(sig00000126),
    .Q(sig0000006a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000068 (
    .C(clk),
    .CE(sig0000011b),
    .D(sig00000125),
    .Q(sig00000069)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000069 (
    .C(clk),
    .CE(sig0000011b),
    .D(sig00000124),
    .Q(sig00000068)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000006a (
    .C(clk),
    .CE(sig0000011b),
    .D(sig00000123),
    .Q(sig00000067)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000006b (
    .C(clk),
    .CE(sig0000011b),
    .D(sig00000122),
    .Q(sig00000066)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000006c (
    .C(clk),
    .CE(sig0000011b),
    .D(sig00000121),
    .Q(sig00000065)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000006d (
    .C(clk),
    .CE(sig0000011b),
    .D(sig00000120),
    .Q(sig00000064)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000006e (
    .C(clk),
    .CE(sig0000011b),
    .D(sig0000011f),
    .Q(sig00000063)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000006f (
    .C(clk),
    .CE(sig0000011b),
    .D(sig0000011e),
    .Q(sig00000062)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000070 (
    .C(clk),
    .CE(sig0000011b),
    .D(sig0000011d),
    .Q(sig00000061)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000071 (
    .C(clk),
    .CE(sig0000011b),
    .D(sig0000011c),
    .Q(sig00000060)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000072 (
    .C(clk),
    .D(sig0000011b),
    .Q(sig0000008f)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000073 (
    .C(clk),
    .D(sig00000023),
    .Q(sig000001aa)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000074 (
    .C(clk),
    .D(sig00000022),
    .Q(sig000001a9)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000075 (
    .C(clk),
    .D(sig00000021),
    .Q(sig000001a8)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000076 (
    .C(clk),
    .D(sig00000020),
    .Q(sig000001a7)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000077 (
    .C(clk),
    .D(sig0000001f),
    .Q(sig000001a6)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000078 (
    .C(clk),
    .D(sig0000001e),
    .Q(sig000001a5)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000079 (
    .C(clk),
    .D(sig0000001d),
    .Q(sig000001a4)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000007a (
    .C(clk),
    .D(sig0000002a),
    .Q(sig000001b1)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000007b (
    .C(clk),
    .D(sig00000029),
    .Q(sig000001b0)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000007c (
    .C(clk),
    .D(sig00000028),
    .Q(sig000001af)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000007d (
    .C(clk),
    .D(sig00000027),
    .Q(sig000001ae)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000007e (
    .C(clk),
    .D(sig00000026),
    .Q(sig000001ad)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000007f (
    .C(clk),
    .D(sig00000025),
    .Q(sig000001ac)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000080 (
    .C(clk),
    .D(sig00000024),
    .Q(sig000001ab)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000081 (
    .C(clk),
    .CE(scale_sch_we),
    .D(scale_sch[13]),
    .R(sig00000002),
    .Q(sig000001bf)
  );
  FDSE #(
    .INIT ( 1'b1 ))
  blk00000082 (
    .C(clk),
    .CE(scale_sch_we),
    .D(scale_sch[12]),
    .S(sig00000002),
    .Q(sig000001be)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000083 (
    .C(clk),
    .CE(scale_sch_we),
    .D(scale_sch[11]),
    .R(sig00000002),
    .Q(sig000001bd)
  );
  FDSE #(
    .INIT ( 1'b1 ))
  blk00000084 (
    .C(clk),
    .CE(scale_sch_we),
    .D(scale_sch[10]),
    .S(sig00000002),
    .Q(sig000001bc)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000085 (
    .C(clk),
    .CE(scale_sch_we),
    .D(scale_sch[9]),
    .R(sig00000002),
    .Q(sig000001bb)
  );
  FDSE #(
    .INIT ( 1'b1 ))
  blk00000086 (
    .C(clk),
    .CE(scale_sch_we),
    .D(scale_sch[8]),
    .S(sig00000002),
    .Q(sig000001ba)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000087 (
    .C(clk),
    .CE(scale_sch_we),
    .D(scale_sch[7]),
    .R(sig00000002),
    .Q(sig000001b9)
  );
  FDSE #(
    .INIT ( 1'b1 ))
  blk00000088 (
    .C(clk),
    .CE(scale_sch_we),
    .D(scale_sch[6]),
    .S(sig00000002),
    .Q(sig000001b8)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000089 (
    .C(clk),
    .CE(scale_sch_we),
    .D(scale_sch[5]),
    .R(sig00000002),
    .Q(sig000001b7)
  );
  FDSE #(
    .INIT ( 1'b1 ))
  blk0000008a (
    .C(clk),
    .CE(scale_sch_we),
    .D(scale_sch[4]),
    .S(sig00000002),
    .Q(sig000001b6)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000008b (
    .C(clk),
    .CE(scale_sch_we),
    .D(scale_sch[3]),
    .R(sig00000002),
    .Q(sig000001b5)
  );
  FDSE #(
    .INIT ( 1'b1 ))
  blk0000008c (
    .C(clk),
    .CE(scale_sch_we),
    .D(scale_sch[2]),
    .S(sig00000002),
    .Q(sig000001b4)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000008d (
    .C(clk),
    .CE(scale_sch_we),
    .D(scale_sch[1]),
    .R(sig00000002),
    .Q(sig000001b3)
  );
  FDSE #(
    .INIT ( 1'b1 ))
  blk0000008e (
    .C(clk),
    .CE(scale_sch_we),
    .D(scale_sch[0]),
    .S(sig00000002),
    .Q(sig000001b2)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000d7 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000214),
    .Q(sig000001e1)
  );
  DSP48E #(
    .ACASCREG ( 1 ),
    .ALUMODEREG ( 1 ),
    .AREG ( 1 ),
    .AUTORESET_PATTERN_DETECT ( "FALSE" ),
    .AUTORESET_PATTERN_DETECT_OPTINV ( "MATCH" ),
    .A_INPUT ( "DIRECT" ),
    .BCASCREG ( 1 ),
    .BREG ( 1 ),
    .B_INPUT ( "DIRECT" ),
    .CARRYINREG ( 1 ),
    .CARRYINSELREG ( 0 ),
    .CREG ( 0 ),
    .MASK ( 48'h000000000000 ),
    .MREG ( 1 ),
    .MULTCARRYINREG ( 0 ),
    .OPMODEREG ( 0 ),
    .PATTERN ( 48'h000000000000 ),
    .PREG ( 1 ),
    .SEL_MASK ( "MASK" ),
    .SEL_PATTERN ( "PATTERN" ),
    .SEL_ROUNDING_MASK ( "SEL_MASK" ),
    .SIM_MODE ( "SAFE" ),
    .USE_MULT ( "MULT_S" ),
    .USE_PATTERN_DETECT ( "NO_PATDET" ),
    .USE_SIMD ( "ONE48" ))
  blk000000d8 (
    .CARRYIN(sig00000002),
    .CEA1(sig00000002),
    .CEA2(sig00000001),
    .CEB1(sig00000002),
    .CEB2(sig00000001),
    .CEC(sig00000002),
    .CECTRL(sig00000002),
    .CEP(sig00000001),
    .CEM(sig00000001),
    .CECARRYIN(sig00000002),
    .CEMULTCARRYIN(sig00000002),
    .CLK(clk),
    .RSTA(sig00000002),
    .RSTB(sig00000002),
    .RSTC(sig00000002),
    .RSTCTRL(sig00000002),
    .RSTP(sig00000002),
    .RSTM(sig00000002),
    .RSTALLCARRYIN(sig00000002),
    .CEALUMODE(sig00000001),
    .RSTALUMODE(sig00000002),
    .PATTERNBDETECT(NLW_blk000000d8_PATTERNBDETECT_UNCONNECTED),
    .PATTERNDETECT(NLW_blk000000d8_PATTERNDETECT_UNCONNECTED),
    .OVERFLOW(NLW_blk000000d8_OVERFLOW_UNCONNECTED),
    .UNDERFLOW(NLW_blk000000d8_UNDERFLOW_UNCONNECTED),
    .CARRYCASCIN(sig00000002),
    .CARRYCASCOUT(NLW_blk000000d8_CARRYCASCOUT_UNCONNECTED),
    .MULTSIGNIN(sig00000002),
    .MULTSIGNOUT(NLW_blk000000d8_MULTSIGNOUT_UNCONNECTED),
    .A({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000269, sig00000269, sig00000269, sig00000269, sig00000269, sig00000269
, sig00000269, sig00000269, sig00000269, sig00000269, sig00000268, sig00000267, sig00000266, sig00000265, sig00000264, sig00000263, sig00000262, 
sig00000261, sig00000260, sig0000025f, sig0000025e, sig0000025d, sig0000025c, sig0000025b, sig0000025a}),
    .PCIN({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002}),
    .B({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000225
, sig00000224, sig00000223, sig00000222, sig00000221, sig00000220, sig0000021f, sig0000021e}),
    .C({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002
, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000001, sig00000001, sig00000001}),
    .CARRYINSEL({sig00000002, sig00000002, sig00000002}),
    .OPMODE({sig00000002, sig00000001, sig00000001, sig00000002, sig00000001, sig00000002, sig00000001}),
    .BCIN({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002}),
    .ALUMODE({sig00000002, sig00000002, sig000001e1, sig000001e1}),
    .PCOUT({sig000001e2, sig000001e3, sig000001e4, sig000001e5, sig000001e6, sig000001e7, sig000001e8, sig000001e9, sig000001ea, sig000001eb, 
sig000001ec, sig000001ed, sig000001ee, sig000001ef, sig000001f0, sig000001f1, sig000001f2, sig000001f3, sig000001f4, sig000001f5, sig000001f6, 
sig000001f7, sig000001f8, sig000001f9, sig000001fa, sig000001fb, sig000001fc, sig000001fd, sig000001fe, sig000001ff, sig00000200, sig00000201, 
sig00000202, sig00000203, sig00000204, sig00000205, sig00000206, sig00000207, sig00000208, sig00000209, sig0000020a, sig0000020b, sig0000020c, 
sig0000020d, sig0000020e, sig0000020f, sig00000210, sig00000211}),
    .P({\NLW_blk000000d8_P<47>_UNCONNECTED , \NLW_blk000000d8_P<46>_UNCONNECTED , \NLW_blk000000d8_P<45>_UNCONNECTED , 
\NLW_blk000000d8_P<44>_UNCONNECTED , \NLW_blk000000d8_P<43>_UNCONNECTED , \NLW_blk000000d8_P<42>_UNCONNECTED , \NLW_blk000000d8_P<41>_UNCONNECTED , 
\NLW_blk000000d8_P<40>_UNCONNECTED , \NLW_blk000000d8_P<39>_UNCONNECTED , \NLW_blk000000d8_P<38>_UNCONNECTED , \NLW_blk000000d8_P<37>_UNCONNECTED , 
\NLW_blk000000d8_P<36>_UNCONNECTED , \NLW_blk000000d8_P<35>_UNCONNECTED , \NLW_blk000000d8_P<34>_UNCONNECTED , \NLW_blk000000d8_P<33>_UNCONNECTED , 
\NLW_blk000000d8_P<32>_UNCONNECTED , \NLW_blk000000d8_P<31>_UNCONNECTED , \NLW_blk000000d8_P<30>_UNCONNECTED , \NLW_blk000000d8_P<29>_UNCONNECTED , 
\NLW_blk000000d8_P<28>_UNCONNECTED , \NLW_blk000000d8_P<27>_UNCONNECTED , \NLW_blk000000d8_P<26>_UNCONNECTED , \NLW_blk000000d8_P<25>_UNCONNECTED , 
\NLW_blk000000d8_P<24>_UNCONNECTED , \NLW_blk000000d8_P<23>_UNCONNECTED , \NLW_blk000000d8_P<22>_UNCONNECTED , \NLW_blk000000d8_P<21>_UNCONNECTED , 
\NLW_blk000000d8_P<20>_UNCONNECTED , \NLW_blk000000d8_P<19>_UNCONNECTED , \NLW_blk000000d8_P<18>_UNCONNECTED , \NLW_blk000000d8_P<17>_UNCONNECTED , 
\NLW_blk000000d8_P<16>_UNCONNECTED , \NLW_blk000000d8_P<15>_UNCONNECTED , \NLW_blk000000d8_P<14>_UNCONNECTED , \NLW_blk000000d8_P<13>_UNCONNECTED , 
\NLW_blk000000d8_P<12>_UNCONNECTED , \NLW_blk000000d8_P<11>_UNCONNECTED , \NLW_blk000000d8_P<10>_UNCONNECTED , \NLW_blk000000d8_P<9>_UNCONNECTED , 
\NLW_blk000000d8_P<8>_UNCONNECTED , \NLW_blk000000d8_P<7>_UNCONNECTED , \NLW_blk000000d8_P<6>_UNCONNECTED , \NLW_blk000000d8_P<5>_UNCONNECTED , 
\NLW_blk000000d8_P<4>_UNCONNECTED , \NLW_blk000000d8_P<3>_UNCONNECTED , \NLW_blk000000d8_P<2>_UNCONNECTED , \NLW_blk000000d8_P<1>_UNCONNECTED , 
\NLW_blk000000d8_P<0>_UNCONNECTED }),
    .BCOUT({\NLW_blk000000d8_BCOUT<17>_UNCONNECTED , \NLW_blk000000d8_BCOUT<16>_UNCONNECTED , \NLW_blk000000d8_BCOUT<15>_UNCONNECTED , 
\NLW_blk000000d8_BCOUT<14>_UNCONNECTED , \NLW_blk000000d8_BCOUT<13>_UNCONNECTED , \NLW_blk000000d8_BCOUT<12>_UNCONNECTED , 
\NLW_blk000000d8_BCOUT<11>_UNCONNECTED , \NLW_blk000000d8_BCOUT<10>_UNCONNECTED , \NLW_blk000000d8_BCOUT<9>_UNCONNECTED , 
\NLW_blk000000d8_BCOUT<8>_UNCONNECTED , \NLW_blk000000d8_BCOUT<7>_UNCONNECTED , \NLW_blk000000d8_BCOUT<6>_UNCONNECTED , 
\NLW_blk000000d8_BCOUT<5>_UNCONNECTED , \NLW_blk000000d8_BCOUT<4>_UNCONNECTED , \NLW_blk000000d8_BCOUT<3>_UNCONNECTED , 
\NLW_blk000000d8_BCOUT<2>_UNCONNECTED , \NLW_blk000000d8_BCOUT<1>_UNCONNECTED , \NLW_blk000000d8_BCOUT<0>_UNCONNECTED }),
    .ACIN({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002}),
    .ACOUT({\NLW_blk000000d8_ACOUT<29>_UNCONNECTED , \NLW_blk000000d8_ACOUT<28>_UNCONNECTED , \NLW_blk000000d8_ACOUT<27>_UNCONNECTED , 
\NLW_blk000000d8_ACOUT<26>_UNCONNECTED , \NLW_blk000000d8_ACOUT<25>_UNCONNECTED , \NLW_blk000000d8_ACOUT<24>_UNCONNECTED , 
\NLW_blk000000d8_ACOUT<23>_UNCONNECTED , \NLW_blk000000d8_ACOUT<22>_UNCONNECTED , \NLW_blk000000d8_ACOUT<21>_UNCONNECTED , 
\NLW_blk000000d8_ACOUT<20>_UNCONNECTED , \NLW_blk000000d8_ACOUT<19>_UNCONNECTED , \NLW_blk000000d8_ACOUT<18>_UNCONNECTED , 
\NLW_blk000000d8_ACOUT<17>_UNCONNECTED , \NLW_blk000000d8_ACOUT<16>_UNCONNECTED , \NLW_blk000000d8_ACOUT<15>_UNCONNECTED , 
\NLW_blk000000d8_ACOUT<14>_UNCONNECTED , \NLW_blk000000d8_ACOUT<13>_UNCONNECTED , \NLW_blk000000d8_ACOUT<12>_UNCONNECTED , 
\NLW_blk000000d8_ACOUT<11>_UNCONNECTED , \NLW_blk000000d8_ACOUT<10>_UNCONNECTED , \NLW_blk000000d8_ACOUT<9>_UNCONNECTED , 
\NLW_blk000000d8_ACOUT<8>_UNCONNECTED , \NLW_blk000000d8_ACOUT<7>_UNCONNECTED , \NLW_blk000000d8_ACOUT<6>_UNCONNECTED , 
\NLW_blk000000d8_ACOUT<5>_UNCONNECTED , \NLW_blk000000d8_ACOUT<4>_UNCONNECTED , \NLW_blk000000d8_ACOUT<3>_UNCONNECTED , 
\NLW_blk000000d8_ACOUT<2>_UNCONNECTED , \NLW_blk000000d8_ACOUT<1>_UNCONNECTED , \NLW_blk000000d8_ACOUT<0>_UNCONNECTED }),
    .CARRYOUT({\NLW_blk000000d8_CARRYOUT<3>_UNCONNECTED , \NLW_blk000000d8_CARRYOUT<2>_UNCONNECTED , \NLW_blk000000d8_CARRYOUT<1>_UNCONNECTED , 
\NLW_blk000000d8_CARRYOUT<0>_UNCONNECTED })
  );
  DSP48E #(
    .ACASCREG ( 2 ),
    .ALUMODEREG ( 1 ),
    .AREG ( 2 ),
    .AUTORESET_PATTERN_DETECT ( "FALSE" ),
    .AUTORESET_PATTERN_DETECT_OPTINV ( "MATCH" ),
    .A_INPUT ( "DIRECT" ),
    .BCASCREG ( 2 ),
    .BREG ( 2 ),
    .B_INPUT ( "DIRECT" ),
    .CARRYINREG ( 0 ),
    .CARRYINSELREG ( 0 ),
    .CREG ( 0 ),
    .MASK ( 48'h000000000000 ),
    .MREG ( 1 ),
    .MULTCARRYINREG ( 0 ),
    .OPMODEREG ( 0 ),
    .PATTERN ( 48'h000000000000 ),
    .PREG ( 1 ),
    .SEL_MASK ( "MASK" ),
    .SEL_PATTERN ( "PATTERN" ),
    .SEL_ROUNDING_MASK ( "SEL_MASK" ),
    .SIM_MODE ( "SAFE" ),
    .USE_MULT ( "MULT_S" ),
    .USE_PATTERN_DETECT ( "NO_PATDET" ),
    .USE_SIMD ( "ONE48" ))
  blk000000d9 (
    .CARRYIN(sig00000002),
    .CEA1(sig00000001),
    .CEA2(sig00000001),
    .CEB1(sig00000001),
    .CEB2(sig00000001),
    .CEC(sig00000002),
    .CECTRL(sig00000002),
    .CEP(sig00000001),
    .CEM(sig00000001),
    .CECARRYIN(sig00000002),
    .CEMULTCARRYIN(sig00000002),
    .CLK(clk),
    .RSTA(sig00000002),
    .RSTB(sig00000002),
    .RSTC(sig00000002),
    .RSTCTRL(sig00000002),
    .RSTP(sig00000002),
    .RSTM(sig00000002),
    .RSTALLCARRYIN(sig00000002),
    .CEALUMODE(sig00000001),
    .RSTALUMODE(sig00000002),
    .PATTERNBDETECT(NLW_blk000000d9_PATTERNBDETECT_UNCONNECTED),
    .PATTERNDETECT(NLW_blk000000d9_PATTERNDETECT_UNCONNECTED),
    .OVERFLOW(NLW_blk000000d9_OVERFLOW_UNCONNECTED),
    .UNDERFLOW(NLW_blk000000d9_UNDERFLOW_UNCONNECTED),
    .CARRYCASCIN(sig00000002),
    .CARRYCASCOUT(NLW_blk000000d9_CARRYCASCOUT_UNCONNECTED),
    .MULTSIGNIN(sig00000002),
    .MULTSIGNOUT(NLW_blk000000d9_MULTSIGNOUT_UNCONNECTED),
    .A({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000259, sig00000259, sig00000259, sig00000259, sig00000259, sig00000259
, sig00000259, sig00000259, sig00000259, sig00000259, sig00000258, sig00000257, sig00000256, sig00000255, sig00000254, sig00000253, sig00000252, 
sig00000251, sig00000250, sig0000024f, sig0000024e, sig0000024d, sig0000024c, sig0000024b, sig0000024a}),
    .PCIN({sig000001e2, sig000001e3, sig000001e4, sig000001e5, sig000001e6, sig000001e7, sig000001e8, sig000001e9, sig000001ea, sig000001eb, 
sig000001ec, sig000001ed, sig000001ee, sig000001ef, sig000001f0, sig000001f1, sig000001f2, sig000001f3, sig000001f4, sig000001f5, sig000001f6, 
sig000001f7, sig000001f8, sig000001f9, sig000001fa, sig000001fb, sig000001fc, sig000001fd, sig000001fe, sig000001ff, sig00000200, sig00000201, 
sig00000202, sig00000203, sig00000204, sig00000205, sig00000206, sig00000207, sig00000208, sig00000209, sig0000020a, sig0000020b, sig0000020c, 
sig0000020d, sig0000020e, sig0000020f, sig00000210, sig00000211}),
    .B({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig0000021d
, sig0000021c, sig0000021b, sig0000021a, sig00000219, sig00000218, sig00000217, sig00000216}),
    .C({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002
, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000001, sig00000001, sig00000001}),
    .CARRYINSEL({sig00000002, sig00000002, sig00000002}),
    .OPMODE({sig00000002, sig00000002, sig00000001, sig00000002, sig00000001, sig00000002, sig00000001}),
    .BCIN({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002}),
    .ALUMODE({sig00000002, sig00000002, sig000001e0, sig000001e0}),
    .PCOUT({\NLW_blk000000d9_PCOUT<47>_UNCONNECTED , \NLW_blk000000d9_PCOUT<46>_UNCONNECTED , \NLW_blk000000d9_PCOUT<45>_UNCONNECTED , 
\NLW_blk000000d9_PCOUT<44>_UNCONNECTED , \NLW_blk000000d9_PCOUT<43>_UNCONNECTED , \NLW_blk000000d9_PCOUT<42>_UNCONNECTED , 
\NLW_blk000000d9_PCOUT<41>_UNCONNECTED , \NLW_blk000000d9_PCOUT<40>_UNCONNECTED , \NLW_blk000000d9_PCOUT<39>_UNCONNECTED , 
\NLW_blk000000d9_PCOUT<38>_UNCONNECTED , \NLW_blk000000d9_PCOUT<37>_UNCONNECTED , \NLW_blk000000d9_PCOUT<36>_UNCONNECTED , 
\NLW_blk000000d9_PCOUT<35>_UNCONNECTED , \NLW_blk000000d9_PCOUT<34>_UNCONNECTED , \NLW_blk000000d9_PCOUT<33>_UNCONNECTED , 
\NLW_blk000000d9_PCOUT<32>_UNCONNECTED , \NLW_blk000000d9_PCOUT<31>_UNCONNECTED , \NLW_blk000000d9_PCOUT<30>_UNCONNECTED , 
\NLW_blk000000d9_PCOUT<29>_UNCONNECTED , \NLW_blk000000d9_PCOUT<28>_UNCONNECTED , \NLW_blk000000d9_PCOUT<27>_UNCONNECTED , 
\NLW_blk000000d9_PCOUT<26>_UNCONNECTED , \NLW_blk000000d9_PCOUT<25>_UNCONNECTED , \NLW_blk000000d9_PCOUT<24>_UNCONNECTED , 
\NLW_blk000000d9_PCOUT<23>_UNCONNECTED , \NLW_blk000000d9_PCOUT<22>_UNCONNECTED , \NLW_blk000000d9_PCOUT<21>_UNCONNECTED , 
\NLW_blk000000d9_PCOUT<20>_UNCONNECTED , \NLW_blk000000d9_PCOUT<19>_UNCONNECTED , \NLW_blk000000d9_PCOUT<18>_UNCONNECTED , 
\NLW_blk000000d9_PCOUT<17>_UNCONNECTED , \NLW_blk000000d9_PCOUT<16>_UNCONNECTED , \NLW_blk000000d9_PCOUT<15>_UNCONNECTED , 
\NLW_blk000000d9_PCOUT<14>_UNCONNECTED , \NLW_blk000000d9_PCOUT<13>_UNCONNECTED , \NLW_blk000000d9_PCOUT<12>_UNCONNECTED , 
\NLW_blk000000d9_PCOUT<11>_UNCONNECTED , \NLW_blk000000d9_PCOUT<10>_UNCONNECTED , \NLW_blk000000d9_PCOUT<9>_UNCONNECTED , 
\NLW_blk000000d9_PCOUT<8>_UNCONNECTED , \NLW_blk000000d9_PCOUT<7>_UNCONNECTED , \NLW_blk000000d9_PCOUT<6>_UNCONNECTED , 
\NLW_blk000000d9_PCOUT<5>_UNCONNECTED , \NLW_blk000000d9_PCOUT<4>_UNCONNECTED , \NLW_blk000000d9_PCOUT<3>_UNCONNECTED , 
\NLW_blk000000d9_PCOUT<2>_UNCONNECTED , \NLW_blk000000d9_PCOUT<1>_UNCONNECTED , \NLW_blk000000d9_PCOUT<0>_UNCONNECTED }),
    .P({\NLW_blk000000d9_P<47>_UNCONNECTED , \NLW_blk000000d9_P<46>_UNCONNECTED , \NLW_blk000000d9_P<45>_UNCONNECTED , 
\NLW_blk000000d9_P<44>_UNCONNECTED , \NLW_blk000000d9_P<43>_UNCONNECTED , \NLW_blk000000d9_P<42>_UNCONNECTED , \NLW_blk000000d9_P<41>_UNCONNECTED , 
\NLW_blk000000d9_P<40>_UNCONNECTED , \NLW_blk000000d9_P<39>_UNCONNECTED , \NLW_blk000000d9_P<38>_UNCONNECTED , \NLW_blk000000d9_P<37>_UNCONNECTED , 
\NLW_blk000000d9_P<36>_UNCONNECTED , \NLW_blk000000d9_P<35>_UNCONNECTED , \NLW_blk000000d9_P<34>_UNCONNECTED , \NLW_blk000000d9_P<33>_UNCONNECTED , 
\NLW_blk000000d9_P<32>_UNCONNECTED , \NLW_blk000000d9_P<31>_UNCONNECTED , \NLW_blk000000d9_P<30>_UNCONNECTED , \NLW_blk000000d9_P<29>_UNCONNECTED , 
\NLW_blk000000d9_P<28>_UNCONNECTED , \NLW_blk000000d9_P<27>_UNCONNECTED , \NLW_blk000000d9_P<26>_UNCONNECTED , \NLW_blk000000d9_P<25>_UNCONNECTED , 
\NLW_blk000000d9_P<24>_UNCONNECTED , sig00000239, sig00000238, sig00000237, sig00000236, sig00000235, sig00000234, sig00000233, sig00000232, 
sig00000231, sig00000230, sig0000022f, sig0000022e, sig0000022d, sig0000022c, sig0000022b, sig0000022a, sig00000229, sig00000228, sig00000227, 
sig00000226, \NLW_blk000000d9_P<3>_UNCONNECTED , \NLW_blk000000d9_P<2>_UNCONNECTED , \NLW_blk000000d9_P<1>_UNCONNECTED , 
\NLW_blk000000d9_P<0>_UNCONNECTED }),
    .BCOUT({\NLW_blk000000d9_BCOUT<17>_UNCONNECTED , \NLW_blk000000d9_BCOUT<16>_UNCONNECTED , \NLW_blk000000d9_BCOUT<15>_UNCONNECTED , 
\NLW_blk000000d9_BCOUT<14>_UNCONNECTED , \NLW_blk000000d9_BCOUT<13>_UNCONNECTED , \NLW_blk000000d9_BCOUT<12>_UNCONNECTED , 
\NLW_blk000000d9_BCOUT<11>_UNCONNECTED , \NLW_blk000000d9_BCOUT<10>_UNCONNECTED , \NLW_blk000000d9_BCOUT<9>_UNCONNECTED , 
\NLW_blk000000d9_BCOUT<8>_UNCONNECTED , \NLW_blk000000d9_BCOUT<7>_UNCONNECTED , \NLW_blk000000d9_BCOUT<6>_UNCONNECTED , 
\NLW_blk000000d9_BCOUT<5>_UNCONNECTED , \NLW_blk000000d9_BCOUT<4>_UNCONNECTED , \NLW_blk000000d9_BCOUT<3>_UNCONNECTED , 
\NLW_blk000000d9_BCOUT<2>_UNCONNECTED , \NLW_blk000000d9_BCOUT<1>_UNCONNECTED , \NLW_blk000000d9_BCOUT<0>_UNCONNECTED }),
    .ACIN({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002}),
    .ACOUT({\NLW_blk000000d9_ACOUT<29>_UNCONNECTED , \NLW_blk000000d9_ACOUT<28>_UNCONNECTED , \NLW_blk000000d9_ACOUT<27>_UNCONNECTED , 
\NLW_blk000000d9_ACOUT<26>_UNCONNECTED , \NLW_blk000000d9_ACOUT<25>_UNCONNECTED , \NLW_blk000000d9_ACOUT<24>_UNCONNECTED , 
\NLW_blk000000d9_ACOUT<23>_UNCONNECTED , \NLW_blk000000d9_ACOUT<22>_UNCONNECTED , \NLW_blk000000d9_ACOUT<21>_UNCONNECTED , 
\NLW_blk000000d9_ACOUT<20>_UNCONNECTED , \NLW_blk000000d9_ACOUT<19>_UNCONNECTED , \NLW_blk000000d9_ACOUT<18>_UNCONNECTED , 
\NLW_blk000000d9_ACOUT<17>_UNCONNECTED , \NLW_blk000000d9_ACOUT<16>_UNCONNECTED , \NLW_blk000000d9_ACOUT<15>_UNCONNECTED , 
\NLW_blk000000d9_ACOUT<14>_UNCONNECTED , \NLW_blk000000d9_ACOUT<13>_UNCONNECTED , \NLW_blk000000d9_ACOUT<12>_UNCONNECTED , 
\NLW_blk000000d9_ACOUT<11>_UNCONNECTED , \NLW_blk000000d9_ACOUT<10>_UNCONNECTED , \NLW_blk000000d9_ACOUT<9>_UNCONNECTED , 
\NLW_blk000000d9_ACOUT<8>_UNCONNECTED , \NLW_blk000000d9_ACOUT<7>_UNCONNECTED , \NLW_blk000000d9_ACOUT<6>_UNCONNECTED , 
\NLW_blk000000d9_ACOUT<5>_UNCONNECTED , \NLW_blk000000d9_ACOUT<4>_UNCONNECTED , \NLW_blk000000d9_ACOUT<3>_UNCONNECTED , 
\NLW_blk000000d9_ACOUT<2>_UNCONNECTED , \NLW_blk000000d9_ACOUT<1>_UNCONNECTED , \NLW_blk000000d9_ACOUT<0>_UNCONNECTED }),
    .CARRYOUT({\NLW_blk000000d9_CARRYOUT<3>_UNCONNECTED , \NLW_blk000000d9_CARRYOUT<2>_UNCONNECTED , \NLW_blk000000d9_CARRYOUT<1>_UNCONNECTED , 
\NLW_blk000000d9_CARRYOUT<0>_UNCONNECTED })
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000da (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000212),
    .Q(sig00000214)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000db (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000249),
    .Q(sig0000021d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000dc (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000248),
    .Q(sig0000021c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000dd (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000247),
    .Q(sig0000021b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000de (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000246),
    .Q(sig0000021a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000df (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000245),
    .Q(sig00000219)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000e0 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000244),
    .Q(sig00000218)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000e1 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000243),
    .Q(sig00000217)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000e2 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000242),
    .Q(sig00000216)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000e3 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000241),
    .Q(sig00000225)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000e4 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000240),
    .Q(sig00000224)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000e5 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000023f),
    .Q(sig00000223)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000e6 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000023e),
    .Q(sig00000222)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000e7 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000023d),
    .Q(sig00000221)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000e8 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000023c),
    .Q(sig00000220)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000e9 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000023b),
    .Q(sig0000021f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ea (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000023a),
    .Q(sig0000021e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000eb (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000213),
    .Q(sig00000215)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ec (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000006f),
    .Q(sig00000259)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ed (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000006e),
    .Q(sig00000258)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ee (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000006d),
    .Q(sig00000257)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ef (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000006c),
    .Q(sig00000256)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000f0 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000006b),
    .Q(sig00000255)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000f1 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000006a),
    .Q(sig00000254)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000f2 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000069),
    .Q(sig00000253)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000f3 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000068),
    .Q(sig00000252)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000f4 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000067),
    .Q(sig00000251)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000f5 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000066),
    .Q(sig00000250)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000f6 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000065),
    .Q(sig0000024f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000f7 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000064),
    .Q(sig0000024e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000f8 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000063),
    .Q(sig0000024d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000f9 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000062),
    .Q(sig0000024c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000fa (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000061),
    .Q(sig0000024b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000fb (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000060),
    .Q(sig0000024a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000fc (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000007f),
    .Q(sig00000269)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000fd (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000007e),
    .Q(sig00000268)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000fe (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000007d),
    .Q(sig00000267)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ff (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000007c),
    .Q(sig00000266)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000100 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000007b),
    .Q(sig00000265)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000101 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000007a),
    .Q(sig00000264)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000102 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000079),
    .Q(sig00000263)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000103 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000078),
    .Q(sig00000262)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000104 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000077),
    .Q(sig00000261)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000105 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000076),
    .Q(sig00000260)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000106 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000075),
    .Q(sig0000025f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000107 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000074),
    .Q(sig0000025e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000108 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000073),
    .Q(sig0000025d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000109 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000072),
    .Q(sig0000025c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000010a (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000071),
    .Q(sig0000025b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000010b (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000070),
    .Q(sig0000025a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000010c (
    .C(clk),
    .CE(sig0000026a),
    .D(sig0000027e),
    .Q(sig000001a3)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000010d (
    .C(clk),
    .CE(sig0000026a),
    .D(sig0000027d),
    .Q(sig000001a2)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000010e (
    .C(clk),
    .CE(sig0000026a),
    .D(sig0000027c),
    .Q(sig000001a1)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000010f (
    .C(clk),
    .CE(sig0000026a),
    .D(sig0000027b),
    .Q(sig000001a0)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000110 (
    .C(clk),
    .CE(sig0000026a),
    .D(sig0000027a),
    .Q(sig0000019f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000111 (
    .C(clk),
    .CE(sig0000026a),
    .D(sig00000279),
    .Q(sig0000019e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000112 (
    .C(clk),
    .CE(sig0000026a),
    .D(sig00000278),
    .Q(sig0000019d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000113 (
    .C(clk),
    .CE(sig0000026a),
    .D(sig00000277),
    .Q(sig0000019c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000114 (
    .C(clk),
    .CE(sig0000026a),
    .D(sig00000276),
    .Q(sig0000019b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000115 (
    .C(clk),
    .CE(sig0000026a),
    .D(sig00000275),
    .Q(sig0000019a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000116 (
    .C(clk),
    .CE(sig0000026a),
    .D(sig00000274),
    .Q(sig00000199)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000117 (
    .C(clk),
    .CE(sig0000026a),
    .D(sig00000273),
    .Q(sig00000198)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000118 (
    .C(clk),
    .CE(sig0000026a),
    .D(sig00000272),
    .Q(sig00000197)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000119 (
    .C(clk),
    .CE(sig0000026a),
    .D(sig00000271),
    .Q(sig00000196)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000011a (
    .C(clk),
    .CE(sig0000026a),
    .D(sig00000270),
    .Q(sig00000195)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000011b (
    .C(clk),
    .CE(sig0000026a),
    .D(sig0000026f),
    .Q(sig00000194)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000011c (
    .C(clk),
    .CE(sig0000026a),
    .D(sig0000026e),
    .Q(sig00000193)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000011d (
    .C(clk),
    .CE(sig0000026a),
    .D(sig0000026d),
    .Q(sig00000192)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000011e (
    .C(clk),
    .CE(sig0000026a),
    .D(sig0000026c),
    .Q(sig00000191)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000011f (
    .C(clk),
    .CE(sig0000026a),
    .D(sig0000026b),
    .Q(sig00000190)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000120 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000239),
    .Q(sig0000027e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000121 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000238),
    .Q(sig0000027d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000122 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000237),
    .Q(sig0000027c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000123 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000236),
    .Q(sig0000027b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000124 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000235),
    .Q(sig0000027a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000125 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000234),
    .Q(sig00000279)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000126 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000233),
    .Q(sig00000278)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000127 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000232),
    .Q(sig00000277)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000128 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000231),
    .Q(sig00000276)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000129 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000230),
    .Q(sig00000275)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000012a (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000022f),
    .Q(sig00000274)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000012b (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000022e),
    .Q(sig00000273)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000012c (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000022d),
    .Q(sig00000272)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000012d (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000022c),
    .Q(sig00000271)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000012e (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000022b),
    .Q(sig00000270)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000012f (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000022a),
    .Q(sig0000026f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000130 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000229),
    .Q(sig0000026e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000131 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000228),
    .Q(sig0000026d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000132 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000227),
    .Q(sig0000026c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000133 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000226),
    .Q(sig0000026b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000134 (
    .C(clk),
    .CE(sig0000026a),
    .D(sig00000239),
    .Q(sig0000018f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000135 (
    .C(clk),
    .CE(sig0000026a),
    .D(sig00000238),
    .Q(sig0000018e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000136 (
    .C(clk),
    .CE(sig0000026a),
    .D(sig00000237),
    .Q(sig0000018d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000137 (
    .C(clk),
    .CE(sig0000026a),
    .D(sig00000236),
    .Q(sig0000018c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000138 (
    .C(clk),
    .CE(sig0000026a),
    .D(sig00000235),
    .Q(sig0000018b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000139 (
    .C(clk),
    .CE(sig0000026a),
    .D(sig00000234),
    .Q(sig0000018a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000013a (
    .C(clk),
    .CE(sig0000026a),
    .D(sig00000233),
    .Q(sig00000189)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000013b (
    .C(clk),
    .CE(sig0000026a),
    .D(sig00000232),
    .Q(sig00000188)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000013c (
    .C(clk),
    .CE(sig0000026a),
    .D(sig00000231),
    .Q(sig00000187)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000013d (
    .C(clk),
    .CE(sig0000026a),
    .D(sig00000230),
    .Q(sig00000186)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000013e (
    .C(clk),
    .CE(sig0000026a),
    .D(sig0000022f),
    .Q(sig00000185)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000013f (
    .C(clk),
    .CE(sig0000026a),
    .D(sig0000022e),
    .Q(sig00000184)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000140 (
    .C(clk),
    .CE(sig0000026a),
    .D(sig0000022d),
    .Q(sig00000183)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000141 (
    .C(clk),
    .CE(sig0000026a),
    .D(sig0000022c),
    .Q(sig00000182)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000142 (
    .C(clk),
    .CE(sig0000026a),
    .D(sig0000022b),
    .Q(sig00000181)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000143 (
    .C(clk),
    .CE(sig0000026a),
    .D(sig0000022a),
    .Q(sig00000180)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000144 (
    .C(clk),
    .CE(sig0000026a),
    .D(sig00000229),
    .Q(sig0000017f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000145 (
    .C(clk),
    .CE(sig0000026a),
    .D(sig00000228),
    .Q(sig0000017e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000146 (
    .C(clk),
    .CE(sig0000026a),
    .D(sig00000227),
    .Q(sig0000017d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000147 (
    .C(clk),
    .CE(sig0000026a),
    .D(sig00000226),
    .Q(sig0000017c)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000189 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000028e),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_15 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000018a (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000028d),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_14 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000018b (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000028c),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_13 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000018c (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000028b),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_12 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000018d (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000028a),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_11 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000018e (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000289),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_10 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000018f (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000288),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_9 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000190 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000287),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_8 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000191 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000286),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_7 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000192 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000285),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_6 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000193 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000284),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_5 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000194 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000283),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_4 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000195 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000282),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_3 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000196 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000281),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_2 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000197 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000280),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_1 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000198 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000027f),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q_0 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000199 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000029e),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_15 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000019a (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000029d),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_14 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000019b (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000029c),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_13 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000019c (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000029b),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_12 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000019d (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000029a),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_11 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000019e (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000299),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_10 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000019f (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000298),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_9 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001a0 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000297),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_8 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001a1 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000296),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_7 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001a2 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000295),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_6 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001a3 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000294),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_5 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001a4 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000293),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_4 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001a5 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000292),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_3 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001a6 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000291),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_2 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001a7 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000290),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_1 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000001a8 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000028f),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q_0 )
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000036b (
    .I0(sig00000002),
    .I1(sig00000002),
    .I2(sig00000002),
    .I3(sig000000e5),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig0000029f)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000036c (
    .I0(sig00000002),
    .I1(sig00000002),
    .I2(sig000000e5),
    .I3(sig000000e6),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002a0)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000036d (
    .I0(sig00000002),
    .I1(sig000000e5),
    .I2(sig000000e6),
    .I3(sig000000e7),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002a1)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000036e (
    .I0(sig000000e5),
    .I1(sig000000e6),
    .I2(sig000000e7),
    .I3(sig000000e8),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002a2)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000036f (
    .I0(sig000000e6),
    .I1(sig000000e7),
    .I2(sig000000e8),
    .I3(sig000000e9),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002a3)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000370 (
    .I0(sig000000e7),
    .I1(sig000000e8),
    .I2(sig000000e9),
    .I3(sig000000ea),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002a4)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000371 (
    .I0(sig000000e8),
    .I1(sig000000e9),
    .I2(sig000000ea),
    .I3(sig000000eb),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002a5)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000372 (
    .I0(sig000000e9),
    .I1(sig000000ea),
    .I2(sig000000eb),
    .I3(sig000000ec),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002a6)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000373 (
    .I0(sig000000ea),
    .I1(sig000000eb),
    .I2(sig000000ec),
    .I3(sig000000ed),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002a7)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000374 (
    .I0(sig000000eb),
    .I1(sig000000ec),
    .I2(sig000000ed),
    .I3(sig000000ee),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002a8)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000375 (
    .I0(sig000000ec),
    .I1(sig000000ed),
    .I2(sig000000ee),
    .I3(sig000000ef),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002a9)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000376 (
    .I0(sig000000ed),
    .I1(sig000000ee),
    .I2(sig000000ef),
    .I3(sig000000f0),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002aa)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000377 (
    .I0(sig000000ee),
    .I1(sig000000ef),
    .I2(sig000000f0),
    .I3(sig000000f1),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002ab)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000378 (
    .I0(sig000000ef),
    .I1(sig000000f0),
    .I2(sig000000f1),
    .I3(sig000000f2),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002ac)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000379 (
    .I0(sig000000f0),
    .I1(sig000000f1),
    .I2(sig000000f2),
    .I3(sig000000f3),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002ad)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000037a (
    .I0(sig000000f1),
    .I1(sig000000f2),
    .I2(sig000000f3),
    .I3(sig000000f4),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002ae)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000037b (
    .I0(sig000000f2),
    .I1(sig000000f3),
    .I2(sig000000f4),
    .I3(sig000000f5),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002af)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000037c (
    .I0(sig000000f3),
    .I1(sig000000f4),
    .I2(sig000000f5),
    .I3(sig000000f6),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002b0)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000037d (
    .I0(sig000000f4),
    .I1(sig000000f5),
    .I2(sig000000f6),
    .I3(sig000000f7),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002b1)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000037e (
    .I0(sig000000f5),
    .I1(sig000000f6),
    .I2(sig000000f7),
    .I3(sig000000f8),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002b2)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000037f (
    .I0(sig000000f6),
    .I1(sig000000f7),
    .I2(sig000000f8),
    .I3(sig000000f9),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002b3)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000380 (
    .I0(sig000000f7),
    .I1(sig000000f8),
    .I2(sig000000f9),
    .I3(sig000000f9),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002b4)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000381 (
    .I0(sig000000f8),
    .I1(sig000000f9),
    .I2(sig000000f9),
    .I3(sig000000f9),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002b5)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000382 (
    .I0(sig000000f9),
    .I1(sig000000f9),
    .I2(sig000000f9),
    .I3(sig000000f9),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002b6)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000383 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000029f),
    .R(sig00000002),
    .Q(NLW_blk00000383_Q_UNCONNECTED)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000384 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002a0),
    .R(sig00000002),
    .Q(NLW_blk00000384_Q_UNCONNECTED)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000385 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002a1),
    .R(sig00000002),
    .Q(NLW_blk00000385_Q_UNCONNECTED)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000386 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002a2),
    .R(sig00000002),
    .Q(NLW_blk00000386_Q_UNCONNECTED)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000387 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002a3),
    .R(sig00000002),
    .Q(NLW_blk00000387_Q_UNCONNECTED)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000388 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002a4),
    .R(sig00000002),
    .Q(NLW_blk00000388_Q_UNCONNECTED)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000389 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002a5),
    .R(sig00000002),
    .Q(sig000000c0)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000038a (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002a6),
    .R(sig00000002),
    .Q(sig000000c1)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000038b (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002a7),
    .R(sig00000002),
    .Q(sig000000c2)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000038c (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002a8),
    .R(sig00000002),
    .Q(sig000000c3)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000038d (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002a9),
    .R(sig00000002),
    .Q(sig000000c4)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000038e (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002aa),
    .R(sig00000002),
    .Q(sig000000c5)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000038f (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002ab),
    .R(sig00000002),
    .Q(sig000000c6)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000390 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002ac),
    .R(sig00000002),
    .Q(sig000000c7)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000391 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002ad),
    .R(sig00000002),
    .Q(sig000000c8)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000392 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002ae),
    .R(sig00000002),
    .Q(sig000000c9)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000393 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002af),
    .R(sig00000002),
    .Q(sig000000ca)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000394 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002b0),
    .R(sig00000002),
    .Q(sig000000cb)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000395 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002b1),
    .R(sig00000002),
    .Q(sig000000cc)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000396 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002b2),
    .R(sig00000002),
    .Q(sig000000cd)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000397 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002b3),
    .R(sig00000002),
    .Q(sig000000ce)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000398 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002b4),
    .R(sig00000002),
    .Q(sig000000cf)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000399 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002b5),
    .R(sig00000002),
    .Q(NLW_blk00000399_Q_UNCONNECTED)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000039a (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002b6),
    .R(sig00000002),
    .Q(NLW_blk0000039a_Q_UNCONNECTED)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000039b (
    .I0(sig00000002),
    .I1(sig00000002),
    .I2(sig00000002),
    .I3(sig000000d0),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002b7)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000039c (
    .I0(sig00000002),
    .I1(sig00000002),
    .I2(sig000000d0),
    .I3(sig000000d1),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002b8)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000039d (
    .I0(sig00000002),
    .I1(sig000000d0),
    .I2(sig000000d1),
    .I3(sig000000d2),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002b9)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000039e (
    .I0(sig000000d0),
    .I1(sig000000d1),
    .I2(sig000000d2),
    .I3(sig000000d3),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002ba)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000039f (
    .I0(sig000000d1),
    .I1(sig000000d2),
    .I2(sig000000d3),
    .I3(sig000000d4),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002bb)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003a0 (
    .I0(sig000000d2),
    .I1(sig000000d3),
    .I2(sig000000d4),
    .I3(sig000000d5),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002bc)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003a1 (
    .I0(sig000000d3),
    .I1(sig000000d4),
    .I2(sig000000d5),
    .I3(sig000000d6),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002bd)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003a2 (
    .I0(sig000000d4),
    .I1(sig000000d5),
    .I2(sig000000d6),
    .I3(sig000000d7),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002be)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003a3 (
    .I0(sig000000d5),
    .I1(sig000000d6),
    .I2(sig000000d7),
    .I3(sig000000d8),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002bf)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003a4 (
    .I0(sig000000d6),
    .I1(sig000000d7),
    .I2(sig000000d8),
    .I3(sig000000d9),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002c0)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003a5 (
    .I0(sig000000d7),
    .I1(sig000000d8),
    .I2(sig000000d9),
    .I3(sig000000da),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002c1)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003a6 (
    .I0(sig000000d8),
    .I1(sig000000d9),
    .I2(sig000000da),
    .I3(sig000000db),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002c2)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003a7 (
    .I0(sig000000d9),
    .I1(sig000000da),
    .I2(sig000000db),
    .I3(sig000000dc),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002c3)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003a8 (
    .I0(sig000000da),
    .I1(sig000000db),
    .I2(sig000000dc),
    .I3(sig000000dd),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002c4)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003a9 (
    .I0(sig000000db),
    .I1(sig000000dc),
    .I2(sig000000dd),
    .I3(sig000000de),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002c5)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003aa (
    .I0(sig000000dc),
    .I1(sig000000dd),
    .I2(sig000000de),
    .I3(sig000000df),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002c6)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003ab (
    .I0(sig000000dd),
    .I1(sig000000de),
    .I2(sig000000df),
    .I3(sig000000e0),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002c7)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003ac (
    .I0(sig000000de),
    .I1(sig000000df),
    .I2(sig000000e0),
    .I3(sig000000e1),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002c8)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003ad (
    .I0(sig000000df),
    .I1(sig000000e0),
    .I2(sig000000e1),
    .I3(sig000000e2),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002c9)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003ae (
    .I0(sig000000e0),
    .I1(sig000000e1),
    .I2(sig000000e2),
    .I3(sig000000e3),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002ca)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003af (
    .I0(sig000000e1),
    .I1(sig000000e2),
    .I2(sig000000e3),
    .I3(sig000000e4),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002cb)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003b0 (
    .I0(sig000000e2),
    .I1(sig000000e3),
    .I2(sig000000e4),
    .I3(sig000000e4),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002cc)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003b1 (
    .I0(sig000000e3),
    .I1(sig000000e4),
    .I2(sig000000e4),
    .I3(sig000000e4),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002cd)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000003b2 (
    .I0(sig000000e4),
    .I1(sig000000e4),
    .I2(sig000000e4),
    .I3(sig000000e4),
    .I4(sig00000080),
    .I5(sig00000081),
    .O(sig000002ce)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003b3 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002b7),
    .R(sig00000002),
    .Q(NLW_blk000003b3_Q_UNCONNECTED)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003b4 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002b8),
    .R(sig00000002),
    .Q(NLW_blk000003b4_Q_UNCONNECTED)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003b5 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002b9),
    .R(sig00000002),
    .Q(NLW_blk000003b5_Q_UNCONNECTED)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003b6 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002ba),
    .R(sig00000002),
    .Q(NLW_blk000003b6_Q_UNCONNECTED)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003b7 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002bb),
    .R(sig00000002),
    .Q(NLW_blk000003b7_Q_UNCONNECTED)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003b8 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002bc),
    .R(sig00000002),
    .Q(NLW_blk000003b8_Q_UNCONNECTED)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003b9 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002bd),
    .R(sig00000002),
    .Q(sig000000b0)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003ba (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002be),
    .R(sig00000002),
    .Q(sig000000b1)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003bb (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002bf),
    .R(sig00000002),
    .Q(sig000000b2)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003bc (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002c0),
    .R(sig00000002),
    .Q(sig000000b3)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003bd (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002c1),
    .R(sig00000002),
    .Q(sig000000b4)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003be (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002c2),
    .R(sig00000002),
    .Q(sig000000b5)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003bf (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002c3),
    .R(sig00000002),
    .Q(sig000000b6)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003c0 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002c4),
    .R(sig00000002),
    .Q(sig000000b7)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003c1 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002c5),
    .R(sig00000002),
    .Q(sig000000b8)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003c2 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002c6),
    .R(sig00000002),
    .Q(sig000000b9)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003c3 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002c7),
    .R(sig00000002),
    .Q(sig000000ba)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003c4 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002c8),
    .R(sig00000002),
    .Q(sig000000bb)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003c5 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002c9),
    .R(sig00000002),
    .Q(sig000000bc)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003c6 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002ca),
    .R(sig00000002),
    .Q(sig000000bd)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003c7 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002cb),
    .R(sig00000002),
    .Q(sig000000be)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003c8 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002cc),
    .R(sig00000002),
    .Q(sig000000bf)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003c9 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002cd),
    .R(sig00000002),
    .Q(NLW_blk000003c9_Q_UNCONNECTED)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003ca (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002ce),
    .R(sig00000002),
    .Q(NLW_blk000003ca_Q_UNCONNECTED)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk000003cb (
    .C(clk),
    .D(sig000002ef),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/busy_i_reg2 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk000003cc (
    .C(clk),
    .D(sig000002f5),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/edone_i_reg )
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk000003cd (
    .C(clk),
    .D(sig000002f4),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/done_i_reg )
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk000003ce (
    .C(clk),
    .D(sig000002f3),
    .R(sig00000002),
    .Q(sig000002f0)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk000003cf (
    .C(clk),
    .D(sig000002f6),
    .R(sig00000002),
    .Q(sig000002ef)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003d6 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000305),
    .R(sig00000002),
    .Q(sig000002fd)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003d7 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000309),
    .R(sig00000002),
    .Q(sig00000301)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003d8 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000306),
    .R(sig00000002),
    .Q(sig000002fe)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003d9 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000308),
    .R(sig00000002),
    .Q(sig0000000b)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003da (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000307),
    .R(sig00000002),
    .Q(sig000002ff)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003db (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000030a),
    .R(sig00000002),
    .Q(sig00000300)
  );
  FDSE #(
    .INIT ( 1'b1 ))
  blk000003dc (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000304),
    .S(sig00000002),
    .Q(sig00000003)
  );
  XORCY   blk000003dd (
    .CI(sig00000320),
    .LI(sig00000002),
    .O(sig00000312)
  );
  XORCY   blk000003de (
    .CI(sig00000321),
    .LI(sig00000002),
    .O(sig00000313)
  );
  XORCY   blk000003df (
    .CI(sig00000322),
    .LI(sig00000002),
    .O(sig00000314)
  );
  MUXCY   blk000003e0 (
    .CI(sig00000001),
    .DI(sig00000002),
    .S(sig00000329),
    .O(sig00000315)
  );
  MUXCY   blk000003e1 (
    .CI(sig00000001),
    .DI(sig00000002),
    .S(sig0000032a),
    .O(sig00000316)
  );
  MUXCY   blk000003e2 (
    .CI(sig00000001),
    .DI(sig00000002),
    .S(sig0000032b),
    .O(sig00000317)
  );
  MUXCY   blk000003e3 (
    .CI(sig00000323),
    .DI(sig00000002),
    .S(sig0000032f),
    .O(sig00000320)
  );
  MUXCY   blk000003e4 (
    .CI(sig00000324),
    .DI(sig00000002),
    .S(sig00000330),
    .O(sig00000321)
  );
  MUXCY   blk000003e5 (
    .CI(sig00000325),
    .DI(sig00000002),
    .S(sig00000331),
    .O(sig00000322)
  );
  MUXCY   blk000003e6 (
    .CI(sig0000032c),
    .DI(sig000002d8),
    .S(sig00000326),
    .O(sig00000323)
  );
  MUXCY   blk000003e7 (
    .CI(sig0000032d),
    .DI(sig000002d7),
    .S(sig00000327),
    .O(sig00000324)
  );
  MUXCY   blk000003e8 (
    .CI(sig0000032e),
    .DI(sig000002d6),
    .S(sig00000328),
    .O(sig00000325)
  );
  LUT3 #(
    .INIT ( 8'h8A ))
  blk000003e9 (
    .I0(sig00000001),
    .I1(sig00000001),
    .I2(sig000002d6),
    .O(sig00000326)
  );
  LUT3 #(
    .INIT ( 8'h8A ))
  blk000003ea (
    .I0(sig00000001),
    .I1(sig00000001),
    .I2(sig000002d6),
    .O(sig00000327)
  );
  LUT3 #(
    .INIT ( 8'h8A ))
  blk000003eb (
    .I0(sig00000001),
    .I1(sig00000001),
    .I2(sig000002d6),
    .O(sig00000328)
  );
  MUXCY   blk000003ec (
    .CI(sig00000316),
    .DI(sig00000002),
    .S(sig00000420),
    .O(sig0000032c)
  );
  MUXCY   blk000003ed (
    .CI(sig00000315),
    .DI(sig00000002),
    .S(sig00000421),
    .O(sig0000032d)
  );
  MUXCY   blk000003ee (
    .CI(sig00000317),
    .DI(sig00000002),
    .S(sig00000422),
    .O(sig0000032e)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk000003ef (
    .I0(sig00000300),
    .I1(sig0000000b),
    .I2(sig00000301),
    .I3(sig00000003),
    .O(sig0000032f)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk000003f0 (
    .I0(sig00000300),
    .I1(sig0000000b),
    .I2(sig00000301),
    .I3(sig00000003),
    .O(sig00000330)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk000003f1 (
    .I0(sig00000300),
    .I1(sig0000000b),
    .I2(sig00000301),
    .I3(sig00000003),
    .O(sig00000331)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000003f2 (
    .C(clk),
    .D(sig00000312),
    .Q(sig000002d8)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000003f3 (
    .C(clk),
    .D(sig00000313),
    .Q(sig000002d7)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000003f4 (
    .C(clk),
    .D(sig00000314),
    .Q(sig000002d6)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003f5 (
    .C(clk),
    .CE(sig00000318),
    .D(sig0000030b),
    .R(sig00000003),
    .Q(sig000002d5)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003f6 (
    .C(clk),
    .CE(sig00000318),
    .D(sig0000030c),
    .R(sig00000003),
    .Q(sig000002d4)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003f7 (
    .C(clk),
    .CE(sig00000318),
    .D(sig0000030d),
    .R(sig00000003),
    .Q(sig000002d3)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003f8 (
    .C(clk),
    .CE(sig00000318),
    .D(sig0000030e),
    .R(sig00000003),
    .Q(sig000002d2)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003f9 (
    .C(clk),
    .CE(sig00000318),
    .D(sig0000030f),
    .R(sig00000003),
    .Q(sig000002d1)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003fa (
    .C(clk),
    .CE(sig00000318),
    .D(sig00000310),
    .R(sig00000003),
    .Q(sig000002d0)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003fb (
    .C(clk),
    .CE(sig00000318),
    .D(sig00000311),
    .R(sig00000003),
    .Q(sig000002cf)
  );
  XORCY   blk00000412 (
    .CI(sig00000348),
    .LI(sig00000002),
    .O(sig00000339)
  );
  MUXCY   blk00000413 (
    .CI(sig00000001),
    .DI(sig00000002),
    .S(sig00000354),
    .O(sig0000033e)
  );
  MUXCY   blk00000414 (
    .CI(sig0000033e),
    .DI(sig00000002),
    .S(sig00000355),
    .O(sig0000033f)
  );
  MUXCY   blk00000415 (
    .CI(sig0000033f),
    .DI(sig00000002),
    .S(sig00000356),
    .O(sig00000340)
  );
  MUXCY   blk00000416 (
    .CI(sig00000340),
    .DI(sig00000002),
    .S(sig00000357),
    .O(sig00000341)
  );
  MUXCY   blk00000417 (
    .CI(sig00000341),
    .DI(sig00000002),
    .S(sig00000358),
    .O(sig00000342)
  );
  MUXCY   blk00000418 (
    .CI(sig00000342),
    .DI(sig00000002),
    .S(sig00000359),
    .O(sig00000343)
  );
  MUXCY   blk00000419 (
    .CI(sig00000343),
    .DI(sig00000002),
    .S(sig0000035a),
    .O(sig00000344)
  );
  MUXCY   blk0000041a (
    .CI(sig00000001),
    .DI(sig00000002),
    .S(sig0000035b),
    .O(sig00000345)
  );
  MUXCY   blk0000041b (
    .CI(sig00000345),
    .DI(sig00000002),
    .S(sig0000035c),
    .O(sig00000346)
  );
  MUXCY   blk0000041c (
    .CI(sig00000344),
    .DI(sig00000002),
    .S(sig00000367),
    .O(sig00000348)
  );
  LUT3 #(
    .INIT ( 8'h04 ))
  blk0000041d (
    .I0(sig000002e7),
    .I1(sig00000371),
    .I2(sig00000372),
    .O(sig0000034d)
  );
  LUT4 #(
    .INIT ( 16'h2E22 ))
  blk0000041e (
    .I0(sig000002f7),
    .I1(sig000002f3),
    .I2(sig00000368),
    .I3(sig0000037f),
    .O(sig0000034e)
  );
  LUT4 #(
    .INIT ( 16'h2E22 ))
  blk0000041f (
    .I0(sig000002f8),
    .I1(sig000002f3),
    .I2(sig00000368),
    .I3(sig00000380),
    .O(sig0000034f)
  );
  LUT4 #(
    .INIT ( 16'h2E22 ))
  blk00000420 (
    .I0(sig000002f9),
    .I1(sig000002f3),
    .I2(sig00000368),
    .I3(sig00000381),
    .O(sig00000350)
  );
  LUT4 #(
    .INIT ( 16'h2E22 ))
  blk00000421 (
    .I0(sig000002fa),
    .I1(sig000002f3),
    .I2(sig00000368),
    .I3(sig00000382),
    .O(sig00000351)
  );
  LUT4 #(
    .INIT ( 16'h2E22 ))
  blk00000422 (
    .I0(sig000002fb),
    .I1(sig000002f3),
    .I2(sig00000368),
    .I3(sig00000383),
    .O(sig00000352)
  );
  LUT4 #(
    .INIT ( 16'h2E22 ))
  blk00000423 (
    .I0(sig000002fc),
    .I1(sig000002f3),
    .I2(sig00000368),
    .I3(sig00000384),
    .O(sig00000353)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk00000424 (
    .I0(sig000002d7),
    .I1(sig0000037e),
    .O(sig00000364)
  );
  LUT1 #(
    .INIT ( 2'h1 ))
  blk00000425 (
    .I0(sig00000002),
    .O(sig00000367)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000426 (
    .C(clk),
    .D(sig00000338),
    .Q(sig00000398)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000427 (
    .C(clk),
    .D(sig00000337),
    .Q(sig00000399)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000428 (
    .C(clk),
    .D(sig00000336),
    .Q(sig0000039a)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000429 (
    .C(clk),
    .D(sig00000335),
    .Q(sig0000039b)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000042a (
    .C(clk),
    .D(sig00000334),
    .Q(sig0000039c)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000042b (
    .C(clk),
    .D(sig00000333),
    .Q(sig0000039d)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000042c (
    .C(clk),
    .D(sig00000332),
    .Q(sig0000039e)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000042d (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000364),
    .R(sig00000002),
    .Q(sig0000037d)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000042e (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000346),
    .R(sig00000002),
    .Q(sig0000037e)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000042f (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000374),
    .R(sig00000002),
    .Q(sig0000037f)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000430 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000375),
    .R(sig00000002),
    .Q(sig00000380)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000431 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000376),
    .R(sig00000002),
    .Q(sig00000381)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000432 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000377),
    .R(sig00000002),
    .Q(sig00000382)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000433 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000378),
    .R(sig00000002),
    .Q(sig00000383)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000434 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000379),
    .R(sig00000002),
    .Q(sig00000384)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000435 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000339),
    .Q(sig000002f3)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000436 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002d5),
    .R(sig00000002),
    .Q(sig00000385)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000437 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002d4),
    .R(sig00000002),
    .Q(sig00000386)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000438 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002d3),
    .R(sig00000002),
    .Q(sig00000387)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000439 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002d2),
    .R(sig00000002),
    .Q(sig00000388)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000043a (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002d1),
    .R(sig00000002),
    .Q(sig00000389)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000043b (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002d0),
    .R(sig00000002),
    .Q(sig0000038a)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000043c (
    .C(clk),
    .CE(sig00000001),
    .D(sig000002cf),
    .R(sig00000002),
    .Q(sig0000038b)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000043d (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000002),
    .R(sig00000002),
    .Q(sig0000038c)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000043e (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000035d),
    .R(sig00000002),
    .Q(sig0000038d)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000043f (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000035e),
    .R(sig00000002),
    .Q(sig0000038e)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000440 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000035f),
    .R(sig00000002),
    .Q(sig0000038f)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000441 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000360),
    .R(sig00000002),
    .Q(sig00000390)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000442 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000361),
    .R(sig00000002),
    .Q(sig00000391)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000443 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000362),
    .R(sig00000002),
    .Q(sig00000392)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000444 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000363),
    .R(sig00000002),
    .Q(sig00000393)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000445 (
    .C(clk),
    .CE(sig00000365),
    .D(sig0000033a),
    .Q(sig00000394)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000446 (
    .C(clk),
    .CE(sig00000365),
    .D(sig0000033b),
    .Q(sig00000395)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000447 (
    .C(clk),
    .CE(sig00000365),
    .D(sig0000033c),
    .Q(sig00000396)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000448 (
    .C(clk),
    .CE(sig00000365),
    .D(sig0000033d),
    .Q(sig00000397)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000449 (
    .C(clk),
    .D(sig00000353),
    .R(sig00000002),
    .Q(sig000002fc)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk0000044a (
    .C(clk),
    .D(sig00000352),
    .R(sig00000002),
    .Q(sig000002fb)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk0000044b (
    .C(clk),
    .D(sig00000351),
    .R(sig00000002),
    .Q(sig000002fa)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk0000044c (
    .C(clk),
    .D(sig00000350),
    .R(sig00000002),
    .Q(sig000002f9)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk0000044d (
    .C(clk),
    .D(sig0000034f),
    .R(sig00000002),
    .Q(sig000002f8)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk0000044e (
    .C(clk),
    .D(sig0000034e),
    .R(sig00000002),
    .Q(sig000002f7)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk0000044f (
    .C(clk),
    .D(sig00000369),
    .R(sig00000002),
    .Q(sig000002f4)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000450 (
    .C(clk),
    .D(sig0000037a),
    .R(sig00000002),
    .Q(sig000002f5)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000451 (
    .C(clk),
    .D(sig0000037b),
    .R(sig00000002),
    .Q(sig00000369)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000452 (
    .C(clk),
    .D(sig00000366),
    .Q(sig0000037a)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000453 (
    .C(clk),
    .D(sig00000366),
    .Q(sig0000037b)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000454 (
    .C(clk),
    .D(sig00000368),
    .R(sig00000002),
    .Q(sig0000036b)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000455 (
    .C(clk),
    .D(sig0000034d),
    .R(sig00000002),
    .Q(sig00000366)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000456 (
    .C(clk),
    .D(sig0000039e),
    .R(sig00000002),
    .Q(sig000002d9)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000457 (
    .C(clk),
    .D(sig0000039d),
    .R(sig00000002),
    .Q(sig000002da)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000458 (
    .C(clk),
    .D(sig0000039c),
    .R(sig00000002),
    .Q(sig000002db)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000459 (
    .C(clk),
    .D(sig0000039b),
    .R(sig00000002),
    .Q(sig000002dc)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk0000045a (
    .C(clk),
    .D(sig0000039a),
    .R(sig00000002),
    .Q(sig000002dd)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk0000045b (
    .C(clk),
    .D(sig00000399),
    .R(sig00000002),
    .Q(sig000002de)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk0000045c (
    .C(clk),
    .D(sig00000398),
    .R(sig00000002),
    .Q(sig000002df)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk0000045d (
    .C(clk),
    .D(sig00000371),
    .R(sig00000002),
    .Q(sig00000370)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk0000045e (
    .C(clk),
    .D(sig00000372),
    .R(sig00000002),
    .Q(sig00000371)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk0000045f (
    .C(clk),
    .D(sig0000036c),
    .R(sig00000002),
    .Q(sig0000000a)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000460 (
    .C(clk),
    .D(sig0000036d),
    .R(sig00000002),
    .Q(sig00000007)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000461 (
    .C(clk),
    .D(sig0000036a),
    .R(sig00000002),
    .Q(sig00000009)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000462 (
    .C(clk),
    .D(sig0000036f),
    .R(sig00000002),
    .Q(sig0000036d)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000463 (
    .C(clk),
    .D(sig00000393),
    .R(sig00000002),
    .Q(sig0000036c)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000464 (
    .C(clk),
    .D(sig0000036e),
    .R(sig00000002),
    .Q(sig000002f6)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000465 (
    .C(clk),
    .D(sig00000347),
    .R(sig00000002),
    .Q(sig0000036a)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000466 (
    .C(clk),
    .D(sig00000370),
    .R(sig00000002),
    .Q(sig0000036f)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000467 (
    .C(clk),
    .D(sig000002e7),
    .R(sig00000002),
    .Q(sig00000373)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000468 (
    .C(clk),
    .D(sig000002cf),
    .R(sig00000002),
    .Q(sig00000379)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk00000469 (
    .C(clk),
    .D(sig000002d0),
    .R(sig00000002),
    .Q(sig00000378)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk0000046a (
    .C(clk),
    .D(sig000002d1),
    .R(sig00000002),
    .Q(sig00000377)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk0000046b (
    .C(clk),
    .D(sig000002d2),
    .R(sig00000002),
    .Q(sig00000376)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk0000046c (
    .C(clk),
    .D(sig000002d3),
    .R(sig00000002),
    .Q(sig00000375)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk0000046d (
    .C(clk),
    .D(sig000002d4),
    .R(sig00000002),
    .Q(sig00000374)
  );
  MUXF7   blk0000046e (
    .I0(sig000003ad),
    .I1(sig000003a6),
    .S(sig00000396),
    .O(sig0000039f)
  );
  MUXF7   blk0000046f (
    .I0(sig000003ae),
    .I1(sig000003a7),
    .S(sig00000396),
    .O(sig000003a0)
  );
  MUXF7   blk00000470 (
    .I0(sig000003af),
    .I1(sig000003a8),
    .S(sig00000396),
    .O(sig000003a1)
  );
  MUXF7   blk00000471 (
    .I0(sig000003b0),
    .I1(sig000003a9),
    .S(sig00000396),
    .O(sig000003a2)
  );
  MUXF7   blk00000472 (
    .I0(sig000003b1),
    .I1(sig000003aa),
    .S(sig00000396),
    .O(sig000003a3)
  );
  MUXF7   blk00000473 (
    .I0(sig000003b2),
    .I1(sig000003ab),
    .S(sig00000396),
    .O(sig000003a4)
  );
  MUXF7   blk00000474 (
    .I0(sig000003b3),
    .I1(sig000003ac),
    .S(sig00000396),
    .O(sig000003a5)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000475 (
    .I0(sig000002d2),
    .I1(sig000002d3),
    .I2(sig000002d4),
    .I3(sig00000002),
    .I4(sig00000394),
    .I5(sig00000395),
    .O(sig000003a6)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000476 (
    .I0(sig000002d1),
    .I1(sig000002d2),
    .I2(sig000002d3),
    .I3(sig00000002),
    .I4(sig00000394),
    .I5(sig00000395),
    .O(sig000003a7)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000477 (
    .I0(sig000002d0),
    .I1(sig000002d1),
    .I2(sig000002d2),
    .I3(sig00000002),
    .I4(sig00000394),
    .I5(sig00000395),
    .O(sig000003a8)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000478 (
    .I0(sig000002cf),
    .I1(sig000002d0),
    .I2(sig000002d1),
    .I3(sig00000002),
    .I4(sig00000394),
    .I5(sig00000395),
    .O(sig000003a9)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000479 (
    .I0(sig00000363),
    .I1(sig000002cf),
    .I2(sig000002d0),
    .I3(sig00000002),
    .I4(sig00000394),
    .I5(sig00000395),
    .O(sig000003aa)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000047a (
    .I0(sig000002d4),
    .I1(sig00000363),
    .I2(sig000002cf),
    .I3(sig00000002),
    .I4(sig00000394),
    .I5(sig00000395),
    .O(sig000003ab)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000047b (
    .I0(sig000002d3),
    .I1(sig000002d4),
    .I2(sig00000363),
    .I3(sig00000002),
    .I4(sig00000394),
    .I5(sig00000395),
    .O(sig000003ac)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000047c (
    .I0(sig00000363),
    .I1(sig000002cf),
    .I2(sig000002d0),
    .I3(sig000002d1),
    .I4(sig00000394),
    .I5(sig00000395),
    .O(sig000003ad)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000047d (
    .I0(sig000002d4),
    .I1(sig00000363),
    .I2(sig000002cf),
    .I3(sig000002d0),
    .I4(sig00000394),
    .I5(sig00000395),
    .O(sig000003ae)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000047e (
    .I0(sig000002d3),
    .I1(sig000002d4),
    .I2(sig00000363),
    .I3(sig000002cf),
    .I4(sig00000394),
    .I5(sig00000395),
    .O(sig000003af)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000047f (
    .I0(sig000002d2),
    .I1(sig000002d3),
    .I2(sig000002d4),
    .I3(sig00000363),
    .I4(sig00000394),
    .I5(sig00000395),
    .O(sig000003b0)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000480 (
    .I0(sig000002d1),
    .I1(sig000002d2),
    .I2(sig000002d3),
    .I3(sig000002d4),
    .I4(sig00000394),
    .I5(sig00000395),
    .O(sig000003b1)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000481 (
    .I0(sig000002d0),
    .I1(sig000002d1),
    .I2(sig000002d2),
    .I3(sig000002d3),
    .I4(sig00000394),
    .I5(sig00000395),
    .O(sig000003b2)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000482 (
    .I0(sig000002cf),
    .I1(sig000002d0),
    .I2(sig000002d1),
    .I3(sig000002d2),
    .I4(sig00000394),
    .I5(sig00000395),
    .O(sig000003b3)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000483 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000039f),
    .R(sig00000002),
    .Q(sig00000338)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000484 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003a0),
    .R(sig00000002),
    .Q(sig00000337)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000485 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003a1),
    .R(sig00000002),
    .Q(sig00000336)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000486 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003a2),
    .R(sig00000002),
    .Q(sig00000335)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000487 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003a3),
    .R(sig00000002),
    .Q(sig00000334)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000488 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003a4),
    .R(sig00000002),
    .Q(sig00000333)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000489 (
    .C(clk),
    .CE(sig00000001),
    .D(sig000003a5),
    .R(sig00000002),
    .Q(sig00000332)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000004bb (
    .C(clk),
    .D(sig000002d6),
    .Q(sig000003c0)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk000004bc (
    .C(clk),
    .D(sig000003c8),
    .R(sig000003b4),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [6])
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk000004bd (
    .C(clk),
    .D(sig000003c7),
    .R(sig000003b4),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [5])
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk000004be (
    .C(clk),
    .D(sig000003c6),
    .R(sig000003b4),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [4])
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk000004bf (
    .C(clk),
    .D(sig000003c5),
    .R(sig000003b4),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk000004c0 (
    .C(clk),
    .D(sig000003c4),
    .R(sig000003b4),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk000004c1 (
    .C(clk),
    .D(sig000003c3),
    .R(sig000003b4),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk000004c2 (
    .C(clk),
    .D(sig000003c2),
    .R(sig000003b4),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk000004c3 (
    .C(clk),
    .D(sig00000008),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/dv_d )
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk000004c4 (
    .C(clk),
    .D(sig000003bc),
    .R(sig00000002),
    .Q(sig000003bf)
  );
  XORCY   blk000004fa (
    .CI(sig000003c9),
    .LI(sig000003d9),
    .O(sig000003dd)
  );
  XORCY   blk000004fb (
    .CI(sig000003ca),
    .LI(sig000003da),
    .O(sig000003de)
  );
  MUXCY   blk000004fc (
    .CI(sig000003ca),
    .DI(sig00000002),
    .S(sig000003da),
    .O(sig000003c9)
  );
  XORCY   blk000004fd (
    .CI(sig000003cb),
    .LI(sig000003db),
    .O(sig000003df)
  );
  MUXCY   blk000004fe (
    .CI(sig000003cb),
    .DI(sig00000002),
    .S(sig000003db),
    .O(sig000003ca)
  );
  XORCY   blk000004ff (
    .CI(sig000003cc),
    .LI(sig000003dc),
    .O(sig000003e0)
  );
  MUXCY   blk00000500 (
    .CI(sig000003cc),
    .DI(sig00000002),
    .S(sig000003dc),
    .O(sig000003cb)
  );
  XORCY   blk00000501 (
    .CI(sig00000002),
    .LI(sig00000431),
    .O(sig000003e1)
  );
  MUXCY   blk00000502 (
    .CI(sig00000002),
    .DI(sig000002fc),
    .S(sig00000431),
    .O(sig000003cc)
  );
  XORCY   blk00000503 (
    .CI(sig000003cd),
    .LI(sig00000426),
    .O(sig000003e3)
  );
  XORCY   blk00000504 (
    .CI(sig000003ce),
    .LI(sig00000423),
    .O(sig000003e4)
  );
  MUXCY   blk00000505 (
    .CI(sig000003ce),
    .DI(sig00000002),
    .S(sig00000423),
    .O(sig000003cd)
  );
  XORCY   blk00000506 (
    .CI(sig000003cf),
    .LI(sig00000424),
    .O(sig000003e5)
  );
  MUXCY   blk00000507 (
    .CI(sig000003cf),
    .DI(sig00000002),
    .S(sig00000424),
    .O(sig000003ce)
  );
  XORCY   blk00000508 (
    .CI(sig000003d0),
    .LI(sig00000425),
    .O(sig000003e6)
  );
  MUXCY   blk00000509 (
    .CI(sig000003d0),
    .DI(sig00000002),
    .S(sig00000425),
    .O(sig000003cf)
  );
  MUXCY   blk0000050a (
    .CI(sig00000002),
    .DI(sig000003e2),
    .S(sig00000432),
    .O(sig000003d0)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000050b (
    .C(clk),
    .CE(sig000002f6),
    .D(sig000003e1),
    .Q(sig000003ee)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000050c (
    .C(clk),
    .CE(sig000002f6),
    .D(sig000003e0),
    .Q(sig0000041b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000050d (
    .C(clk),
    .CE(sig000002f6),
    .D(sig000003df),
    .Q(sig0000041c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000050e (
    .C(clk),
    .CE(sig000002f6),
    .D(sig000003de),
    .Q(sig0000041d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000050f (
    .C(clk),
    .CE(sig000002f6),
    .D(sig000003dd),
    .Q(sig0000041e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000510 (
    .C(clk),
    .CE(sig000002f6),
    .D(sig000003e6),
    .Q(sig00000417)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000511 (
    .C(clk),
    .CE(sig000002f6),
    .D(sig000003e5),
    .Q(sig00000418)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000512 (
    .C(clk),
    .CE(sig000002f6),
    .D(sig000003e4),
    .Q(sig00000419)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000513 (
    .C(clk),
    .CE(sig000002f6),
    .D(sig000003e3),
    .Q(sig0000041a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000514 (
    .C(clk),
    .CE(sig000003e7),
    .D(sig000003fd),
    .Q(sig00000014)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000515 (
    .C(clk),
    .CE(sig000003e7),
    .D(sig000003fc),
    .Q(sig00000013)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000516 (
    .C(clk),
    .CE(sig000003e7),
    .D(sig000003fb),
    .Q(sig00000012)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000517 (
    .C(clk),
    .CE(sig000003e7),
    .D(sig000003fa),
    .Q(sig00000011)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000518 (
    .C(clk),
    .CE(sig000003e7),
    .D(sig000003f9),
    .Q(sig00000010)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000519 (
    .C(clk),
    .CE(sig000003e7),
    .D(sig000003f8),
    .Q(sig0000000f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000051a (
    .C(clk),
    .CE(sig000003e7),
    .D(sig000003f7),
    .Q(sig0000000e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000051b (
    .C(clk),
    .CE(sig000003e7),
    .D(sig000003f6),
    .Q(sig0000000d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000051c (
    .C(clk),
    .CE(sig000003e9),
    .D(sig000003f3),
    .Q(sig000003fd)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000051d (
    .C(clk),
    .CE(sig000003e9),
    .D(sig00000408),
    .Q(sig000003fc)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000051e (
    .C(clk),
    .CE(sig000003e9),
    .D(sig00000407),
    .Q(sig000003fb)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000051f (
    .C(clk),
    .CE(sig000003e9),
    .D(sig00000406),
    .Q(sig000003fa)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000520 (
    .C(clk),
    .CE(sig000003e9),
    .D(sig00000405),
    .Q(sig000003f9)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000521 (
    .C(clk),
    .CE(sig000003e9),
    .D(sig00000404),
    .Q(sig000003f8)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000522 (
    .C(clk),
    .CE(sig000003e9),
    .D(sig00000403),
    .Q(sig000003f7)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000523 (
    .C(clk),
    .CE(sig000003e9),
    .D(sig00000402),
    .Q(sig000003f6)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000524 (
    .C(clk),
    .CE(sig000003e7),
    .D(sig000003f3),
    .Q(sig0000001c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000525 (
    .C(clk),
    .CE(sig000003e7),
    .D(sig00000408),
    .Q(sig0000001b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000526 (
    .C(clk),
    .CE(sig000003e7),
    .D(sig00000407),
    .Q(sig0000001a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000527 (
    .C(clk),
    .CE(sig000003e7),
    .D(sig00000406),
    .Q(sig00000019)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000528 (
    .C(clk),
    .CE(sig000003e7),
    .D(sig00000405),
    .Q(sig00000018)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000529 (
    .C(clk),
    .CE(sig000003e7),
    .D(sig00000404),
    .Q(sig00000017)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000052a (
    .C(clk),
    .CE(sig000003e7),
    .D(sig00000403),
    .Q(sig00000016)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000052b (
    .C(clk),
    .CE(sig000003e7),
    .D(sig00000402),
    .Q(sig00000015)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000052c (
    .C(clk),
    .CE(sig000003e7),
    .D(sig000003f5),
    .Q(sig00000004)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000052d (
    .C(clk),
    .CE(sig000003e8),
    .D(sig000003d1),
    .Q(sig00000409)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000052e (
    .C(clk),
    .CE(sig000003e8),
    .D(sig000003d2),
    .Q(sig00000408)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000052f (
    .C(clk),
    .CE(sig000003e8),
    .D(sig000003d3),
    .Q(sig00000407)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000530 (
    .C(clk),
    .CE(sig000003e8),
    .D(sig000003d4),
    .Q(sig00000406)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000531 (
    .C(clk),
    .CE(sig000003e8),
    .D(sig000003d5),
    .Q(sig00000405)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000532 (
    .C(clk),
    .CE(sig000003e8),
    .D(sig000003d6),
    .Q(sig00000404)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000533 (
    .C(clk),
    .CE(sig000003e8),
    .D(sig000003d7),
    .Q(sig00000403)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000534 (
    .C(clk),
    .CE(sig000003e8),
    .D(sig000003d8),
    .Q(sig00000402)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000535 (
    .C(clk),
    .CE(sig000003e9),
    .D(sig000003ff),
    .Q(sig000003f5)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000536 (
    .C(clk),
    .CE(sig000002f6),
    .D(sig00000415),
    .Q(sig00000414)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000537 (
    .C(clk),
    .CE(sig000003eb),
    .D(sig00000401),
    .Q(sig000003ff)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000538 (
    .C(clk),
    .CE(sig000003ea),
    .D(sig000003f2),
    .Q(sig0000040e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000539 (
    .C(clk),
    .CE(sig000003ea),
    .D(sig000003f1),
    .Q(sig0000040d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000053a (
    .C(clk),
    .CE(sig000003ea),
    .D(sig000003f0),
    .Q(sig0000040c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000053b (
    .C(clk),
    .CE(sig000003ea),
    .D(sig000003ef),
    .Q(sig0000040b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000053c (
    .C(clk),
    .CE(sig000003ea),
    .D(sig000003ee),
    .Q(sig0000040a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000053d (
    .C(clk),
    .CE(sig000002f6),
    .D(sig00000416),
    .Q(sig00000415)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000053e (
    .C(clk),
    .CE(sig000003eb),
    .D(sig00000400),
    .Q(sig000003fe)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000053f (
    .C(clk),
    .CE(sig000003ec),
    .D(sig0000041f),
    .Q(sig00000401)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000540 (
    .C(clk),
    .CE(sig000002f6),
    .D(sig000003f4),
    .Q(sig00000416)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000541 (
    .C(clk),
    .CE(sig000002f6),
    .D(sig000002f0),
    .Q(sig000003f4)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000542 (
    .C(clk),
    .CE(sig000003ec),
    .D(sig000003ed),
    .Q(sig00000400)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000543 (
    .C(clk),
    .CE(sig000002f6),
    .D(sig000002fb),
    .Q(sig00000413)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000544 (
    .C(clk),
    .CE(sig000002f6),
    .D(sig000002fa),
    .Q(sig00000412)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000545 (
    .C(clk),
    .CE(sig000002f6),
    .D(sig000002f9),
    .Q(sig00000411)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000546 (
    .C(clk),
    .CE(sig000002f6),
    .D(sig000002f8),
    .Q(sig00000410)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000547 (
    .C(clk),
    .CE(sig000002f6),
    .D(sig000002f7),
    .Q(sig0000040f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000548 (
    .C(clk),
    .CE(sig000002f6),
    .D(sig000002fc),
    .Q(sig0000041f)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000549 (
    .I0(sig00000006),
    .I1(sig000001d0),
    .I2(sig000000c0),
    .O(sig0000016c)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk0000054a (
    .I0(sig00000006),
    .I1(sig000001da),
    .I2(sig000000ca),
    .O(sig00000176)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk0000054b (
    .I0(sig00000006),
    .I1(sig000001db),
    .I2(sig000000cb),
    .O(sig00000177)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk0000054c (
    .I0(sig00000006),
    .I1(sig000001dc),
    .I2(sig000000cc),
    .O(sig00000178)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk0000054d (
    .I0(sig00000006),
    .I1(sig000001dd),
    .I2(sig000000cd),
    .O(sig00000179)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk0000054e (
    .I0(sig00000006),
    .I1(sig000001de),
    .I2(sig000000ce),
    .O(sig0000017a)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk0000054f (
    .I0(sig00000006),
    .I1(sig000001df),
    .I2(sig000000cf),
    .O(sig0000017b)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000550 (
    .I0(sig00000006),
    .I1(sig000001d1),
    .I2(sig000000c1),
    .O(sig0000016d)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000551 (
    .I0(sig00000006),
    .I1(sig000001d2),
    .I2(sig000000c2),
    .O(sig0000016e)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000552 (
    .I0(sig00000006),
    .I1(sig000001d3),
    .I2(sig000000c3),
    .O(sig0000016f)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000553 (
    .I0(sig00000006),
    .I1(sig000001d4),
    .I2(sig000000c4),
    .O(sig00000170)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000554 (
    .I0(sig00000006),
    .I1(sig000001d5),
    .I2(sig000000c5),
    .O(sig00000171)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000555 (
    .I0(sig00000006),
    .I1(sig000001d6),
    .I2(sig000000c6),
    .O(sig00000172)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000556 (
    .I0(sig00000006),
    .I1(sig000001d7),
    .I2(sig000000c7),
    .O(sig00000173)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000557 (
    .I0(sig00000006),
    .I1(sig000001d8),
    .I2(sig000000c8),
    .O(sig00000174)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000558 (
    .I0(sig00000006),
    .I1(sig000001d9),
    .I2(sig000000c9),
    .O(sig00000175)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000559 (
    .I0(sig00000006),
    .I1(sig000001c0),
    .I2(sig000000b0),
    .O(sig0000015c)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk0000055a (
    .I0(sig00000006),
    .I1(sig000001ca),
    .I2(sig000000ba),
    .O(sig00000166)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk0000055b (
    .I0(sig00000006),
    .I1(sig000001cb),
    .I2(sig000000bb),
    .O(sig00000167)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk0000055c (
    .I0(sig00000006),
    .I1(sig000001cc),
    .I2(sig000000bc),
    .O(sig00000168)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk0000055d (
    .I0(sig00000006),
    .I1(sig000001cd),
    .I2(sig000000bd),
    .O(sig00000169)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk0000055e (
    .I0(sig00000006),
    .I1(sig000001ce),
    .I2(sig000000be),
    .O(sig0000016a)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk0000055f (
    .I0(sig00000006),
    .I1(sig000001cf),
    .I2(sig000000bf),
    .O(sig0000016b)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000560 (
    .I0(sig00000006),
    .I1(sig000001c1),
    .I2(sig000000b1),
    .O(sig0000015d)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000561 (
    .I0(sig00000006),
    .I1(sig000001c2),
    .I2(sig000000b2),
    .O(sig0000015e)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000562 (
    .I0(sig00000006),
    .I1(sig000001c3),
    .I2(sig000000b3),
    .O(sig0000015f)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000563 (
    .I0(sig00000006),
    .I1(sig000001c4),
    .I2(sig000000b4),
    .O(sig00000160)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000564 (
    .I0(sig00000006),
    .I1(sig000001c5),
    .I2(sig000000b5),
    .O(sig00000161)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000565 (
    .I0(sig00000006),
    .I1(sig000001c6),
    .I2(sig000000b6),
    .O(sig00000162)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000566 (
    .I0(sig00000006),
    .I1(sig000001c7),
    .I2(sig000000b7),
    .O(sig00000163)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000567 (
    .I0(sig00000006),
    .I1(sig000001c8),
    .I2(sig000000b8),
    .O(sig00000164)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000568 (
    .I0(sig00000006),
    .I1(sig000001c9),
    .I2(sig000000b9),
    .O(sig00000165)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000569 (
    .I0(sig0000000c),
    .I1(sig000001b2),
    .I2(sig00000082),
    .O(sig00000030)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk0000056a (
    .I0(sig0000000c),
    .I1(sig000001bc),
    .I2(sig0000008c),
    .O(sig0000003a)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk0000056b (
    .I0(sig0000000c),
    .I1(sig000001bd),
    .I2(sig0000008d),
    .O(sig0000003b)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  blk0000056c (
    .I0(sig000001be),
    .I1(sig0000000c),
    .O(sig0000003c)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  blk0000056d (
    .I0(sig000001bf),
    .I1(sig0000000c),
    .O(sig0000003d)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk0000056e (
    .I0(sig0000000c),
    .I1(sig000001b3),
    .I2(sig00000083),
    .O(sig00000031)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk0000056f (
    .I0(sig0000000c),
    .I1(sig000001b4),
    .I2(sig00000084),
    .O(sig00000032)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000570 (
    .I0(sig0000000c),
    .I1(sig000001b5),
    .I2(sig00000085),
    .O(sig00000033)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000571 (
    .I0(sig0000000c),
    .I1(sig000001b6),
    .I2(sig00000086),
    .O(sig00000034)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000572 (
    .I0(sig0000000c),
    .I1(sig000001b7),
    .I2(sig00000087),
    .O(sig00000035)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000573 (
    .I0(sig0000000c),
    .I1(sig000001b8),
    .I2(sig00000088),
    .O(sig00000036)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000574 (
    .I0(sig0000000c),
    .I1(sig000001b9),
    .I2(sig00000089),
    .O(sig00000037)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000575 (
    .I0(sig0000000c),
    .I1(sig000001ba),
    .I2(sig0000008a),
    .O(sig00000038)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000576 (
    .I0(sig0000000c),
    .I1(sig000001bb),
    .I2(sig0000008b),
    .O(sig00000039)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  blk00000577 (
    .I0(sig00000006),
    .I1(sig00000007),
    .O(sig0000002d)
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  blk00000578 (
    .I0(sig0000008e),
    .I1(sig00000009),
    .I2(sig0000000c),
    .O(sig0000002e)
  );
  LUT3 #(
    .INIT ( 8'h4E ))
  blk00000579 (
    .I0(sig0000008f),
    .I1(sig00000004),
    .I2(sig0000003f),
    .O(sig00000213)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk0000057a (
    .I0(sig0000008f),
    .I1(sig00000004),
    .I2(sig0000003f),
    .O(sig00000212)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk0000057b (
    .I0(sig0000008f),
    .I1(sig00000015),
    .I2(sig0000000d),
    .O(sig0000023a)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk0000057c (
    .I0(sig0000008f),
    .I1(sig00000016),
    .I2(sig0000000e),
    .O(sig0000023b)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk0000057d (
    .I0(sig0000008f),
    .I1(sig00000017),
    .I2(sig0000000f),
    .O(sig0000023c)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk0000057e (
    .I0(sig0000008f),
    .I1(sig00000018),
    .I2(sig00000010),
    .O(sig0000023d)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk0000057f (
    .I0(sig0000008f),
    .I1(sig00000019),
    .I2(sig00000011),
    .O(sig0000023e)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000580 (
    .I0(sig0000008f),
    .I1(sig0000001a),
    .I2(sig00000012),
    .O(sig0000023f)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000581 (
    .I0(sig0000008f),
    .I1(sig0000001b),
    .I2(sig00000013),
    .O(sig00000240)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000582 (
    .I0(sig0000008f),
    .I1(sig0000001c),
    .I2(sig00000014),
    .O(sig00000241)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000583 (
    .I0(sig0000008f),
    .I1(sig0000000d),
    .I2(sig00000015),
    .O(sig00000242)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000584 (
    .I0(sig0000008f),
    .I1(sig0000000e),
    .I2(sig00000016),
    .O(sig00000243)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000585 (
    .I0(sig0000008f),
    .I1(sig0000000f),
    .I2(sig00000017),
    .O(sig00000244)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000586 (
    .I0(sig0000008f),
    .I1(sig00000010),
    .I2(sig00000018),
    .O(sig00000245)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000587 (
    .I0(sig0000008f),
    .I1(sig00000011),
    .I2(sig00000019),
    .O(sig00000246)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000588 (
    .I0(sig0000008f),
    .I1(sig00000012),
    .I2(sig0000001a),
    .O(sig00000247)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk00000589 (
    .I0(sig0000008f),
    .I1(sig00000013),
    .I2(sig0000001b),
    .O(sig00000248)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk0000058a (
    .I0(sig0000008f),
    .I1(sig00000014),
    .I2(sig0000001c),
    .O(sig00000249)
  );
  LUT4 #(
    .INIT ( 16'hFF8A ))
  blk0000058b (
    .I0(sig000002fe),
    .I1(sig000002ef),
    .I2(unload),
    .I3(sig0000000b),
    .O(sig00000306)
  );
  LUT4 #(
    .INIT ( 16'h1110 ))
  blk0000058c (
    .I0(sig000002ff),
    .I1(sig0000000b),
    .I2(sig000002fe),
    .I3(sig00000301),
    .O(sig00000303)
  );
  LUT5 #(
    .INIT ( 32'h00010000 ))
  blk0000058d (
    .I0(sig000002fe),
    .I1(sig00000301),
    .I2(sig000002ff),
    .I3(sig0000000b),
    .I4(sig000002fd),
    .O(sig00000302)
  );
  LUT4 #(
    .INIT ( 16'h88F8 ))
  blk0000058e (
    .I0(sig000002f1),
    .I1(sig000002fd),
    .I2(sig00000003),
    .I3(start),
    .O(sig00000304)
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  blk0000058f (
    .I0(sig000002fd),
    .I1(sig000002f1),
    .I2(sig00000301),
    .O(sig00000305)
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  blk00000590 (
    .I0(sig000002ff),
    .I1(sig000002f2),
    .I2(sig00000300),
    .O(sig00000307)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk00000591 (
    .I0(sig000002ff),
    .I1(sig000002f2),
    .O(sig00000308)
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  blk00000592 (
    .I0(sig000002ef),
    .I1(sig000002fe),
    .I2(unload),
    .O(sig00000309)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk00000593 (
    .I0(sig00000003),
    .I1(start),
    .O(sig0000030a)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  blk00000594 (
    .I0(sig000002d5),
    .I1(sig00000300),
    .I2(sig00000301),
    .I3(sig0000000b),
    .O(sig00000319)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  blk00000595 (
    .I0(sig00000300),
    .I1(sig00000301),
    .I2(sig000002d4),
    .I3(sig0000000b),
    .O(sig0000031a)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  blk00000596 (
    .I0(sig00000300),
    .I1(sig00000301),
    .I2(sig000002d3),
    .I3(sig0000000b),
    .O(sig0000031b)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  blk00000597 (
    .I0(sig00000300),
    .I1(sig00000301),
    .I2(sig000002d2),
    .I3(sig0000000b),
    .O(sig0000031c)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  blk00000598 (
    .I0(sig00000300),
    .I1(sig00000301),
    .I2(sig000002d1),
    .I3(sig0000000b),
    .O(sig0000031d)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  blk00000599 (
    .I0(sig00000300),
    .I1(sig00000301),
    .I2(sig000002d0),
    .I3(sig0000000b),
    .O(sig0000031e)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  blk0000059a (
    .I0(sig0000000b),
    .I1(sig00000301),
    .I2(sig00000300),
    .I3(sig000002cf),
    .O(sig0000031f)
  );
  LUT6 #(
    .INIT ( 64'h0000000040000000 ))
  blk0000059b (
    .I0(sig000002d5),
    .I1(sig000002d2),
    .I2(sig000002d1),
    .I3(sig000002d0),
    .I4(sig000002d4),
    .I5(sig000002d3),
    .O(sig0000032a)
  );
  LUT6 #(
    .INIT ( 64'h4000000000000000 ))
  blk0000059c (
    .I0(sig000002d5),
    .I1(sig000002d2),
    .I2(sig000002d1),
    .I3(sig000002d0),
    .I4(sig000002d4),
    .I5(sig000002d3),
    .O(sig0000032b)
  );
  LUT6 #(
    .INIT ( 64'h2000000000000000 ))
  blk0000059d (
    .I0(sig000002d5),
    .I1(sig000002d4),
    .I2(sig000002d3),
    .I3(sig000002d0),
    .I4(sig000002d1),
    .I5(sig000002d2),
    .O(sig00000329)
  );
  LUT3 #(
    .INIT ( 8'h51 ))
  blk0000059e (
    .I0(sig00000003),
    .I1(sig000002fe),
    .I2(sig000002e7),
    .O(sig00000318)
  );
  LUT4 #(
    .INIT ( 16'h1444 ))
  blk0000059f (
    .I0(sig00000397),
    .I1(sig00000396),
    .I2(sig00000394),
    .I3(sig00000395),
    .O(sig00000360)
  );
  LUT4 #(
    .INIT ( 16'h1554 ))
  blk000005a0 (
    .I0(sig00000397),
    .I1(sig00000396),
    .I2(sig00000394),
    .I3(sig00000395),
    .O(sig00000362)
  );
  LUT4 #(
    .INIT ( 16'h0220 ))
  blk000005a1 (
    .I0(sig00000396),
    .I1(sig00000397),
    .I2(sig00000394),
    .I3(sig00000395),
    .O(sig0000035e)
  );
  LUT4 #(
    .INIT ( 16'h0222 ))
  blk000005a2 (
    .I0(sig00000396),
    .I1(sig00000397),
    .I2(sig00000394),
    .I3(sig00000395),
    .O(sig0000035f)
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  blk000005a3 (
    .I0(sig00000397),
    .I1(sig00000394),
    .I2(sig00000395),
    .I3(sig00000396),
    .O(sig0000035d)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  blk000005a4 (
    .I0(sig0000000b),
    .I1(sig00000394),
    .O(sig00000349)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  blk000005a5 (
    .I0(sig0000000b),
    .I1(sig00000395),
    .O(sig0000034a)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  blk000005a6 (
    .I0(sig00000396),
    .I1(sig0000000b),
    .O(sig0000034b)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  blk000005a7 (
    .I0(sig0000000b),
    .I1(sig00000397),
    .O(sig0000034c)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk000005a8 (
    .I0(sig00000397),
    .I1(sig00000396),
    .I2(sig00000395),
    .I3(sig00000394),
    .O(sig00000347)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  blk000005a9 (
    .I0(sig0000038c),
    .I1(sig00000385),
    .O(sig00000354)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  blk000005aa (
    .I0(sig0000038d),
    .I1(sig00000386),
    .O(sig00000355)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  blk000005ab (
    .I0(sig0000038e),
    .I1(sig00000387),
    .O(sig00000356)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  blk000005ac (
    .I0(sig0000038f),
    .I1(sig00000388),
    .O(sig00000357)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  blk000005ad (
    .I0(sig00000390),
    .I1(sig00000389),
    .O(sig00000358)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  blk000005ae (
    .I0(sig00000391),
    .I1(sig0000038a),
    .O(sig00000359)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  blk000005af (
    .I0(sig00000392),
    .I1(sig0000038b),
    .O(sig0000035a)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000005b0 (
    .I0(sig00000395),
    .I1(sig00000394),
    .O(sig0000035b)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000005b1 (
    .I0(sig00000396),
    .I1(sig00000397),
    .O(sig0000035c)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  blk000005b2 (
    .I0(sig000002d6),
    .I1(sig0000000b),
    .O(sig00000365)
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  blk000005b3 (
    .I0(sig000002fd),
    .I1(sig000003c1),
    .I2(sig000003bf),
    .O(sig000003b4)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  blk000005b4 (
    .I0(sig000002fd),
    .I1(sig000003c1),
    .I2(sig000003bf),
    .O(sig00000008)
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  blk000005b5 (
    .I0(NlwRenamedSig_OI_xn_index[0]),
    .I1(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .I2(sig000002d7),
    .I3(sig00000003),
    .O(sig000003b5)
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  blk000005b6 (
    .I0(NlwRenamedSig_OI_xn_index[2]),
    .I1(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .I2(sig000002d7),
    .I3(sig00000003),
    .O(sig000003b7)
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  blk000005b7 (
    .I0(NlwRenamedSig_OI_xn_index[1]),
    .I1(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .I2(sig000002d7),
    .I3(sig00000003),
    .O(sig000003b6)
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  blk000005b8 (
    .I0(NlwRenamedSig_OI_xn_index[3]),
    .I1(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .I2(sig000002d7),
    .I3(sig00000003),
    .O(sig000003b8)
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  blk000005b9 (
    .I0(NlwRenamedSig_OI_xn_index[4]),
    .I1(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .I2(sig000002d7),
    .I3(sig00000003),
    .O(sig000003b9)
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  blk000005ba (
    .I0(NlwRenamedSig_OI_xn_index[5]),
    .I1(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .I2(sig000002d7),
    .I3(sig00000003),
    .O(sig000003ba)
  );
  LUT4 #(
    .INIT ( 16'hFEFF ))
  blk000005bb (
    .I0(sig000002d7),
    .I1(NlwRenamedSig_OI_xn_index[6]),
    .I2(sig00000003),
    .I3(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .O(sig000003bb)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  blk000005bc (
    .I0(sig0000000b),
    .I1(sig000003bf),
    .O(sig000003bc)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk000005bd (
    .I0(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .I1(sig000002d7),
    .O(sig000003bd)
  );
  LUT5 #(
    .INIT ( 32'h6F969A9A ))
  blk000005be (
    .I0(sig0000040a),
    .I1(sig0000040e),
    .I2(sig0000040b),
    .I3(sig0000040c),
    .I4(sig0000040d),
    .O(sig000003d6)
  );
  LUT5 #(
    .INIT ( 32'h74F6E2E2 ))
  blk000005bf (
    .I0(sig0000040d),
    .I1(sig0000040c),
    .I2(sig0000040e),
    .I3(sig0000040a),
    .I4(sig0000040b),
    .O(sig000003d3)
  );
  LUT5 #(
    .INIT ( 32'h69B6EAB6 ))
  blk000005c0 (
    .I0(sig0000040d),
    .I1(sig0000040c),
    .I2(sig0000040e),
    .I3(sig0000040b),
    .I4(sig0000040a),
    .O(sig000003d4)
  );
  LUT5 #(
    .INIT ( 32'h7E3324A6 ))
  blk000005c1 (
    .I0(sig0000040c),
    .I1(sig0000040b),
    .I2(sig0000040a),
    .I3(sig0000040d),
    .I4(sig0000040e),
    .O(sig000003d5)
  );
  LUT5 #(
    .INIT ( 32'h662ED6EE ))
  blk000005c2 (
    .I0(sig0000040a),
    .I1(sig0000040e),
    .I2(sig0000040c),
    .I3(sig0000040d),
    .I4(sig0000040b),
    .O(sig000003d7)
  );
  LUT5 #(
    .INIT ( 32'h139EF356 ))
  blk000005c3 (
    .I0(sig0000040e),
    .I1(sig0000040d),
    .I2(sig0000040c),
    .I3(sig0000040b),
    .I4(sig0000040a),
    .O(sig000003d8)
  );
  LUT5 #(
    .INIT ( 32'h7EAAFAAA ))
  blk000005c4 (
    .I0(sig0000040e),
    .I1(sig0000040a),
    .I2(sig0000040c),
    .I3(sig0000040d),
    .I4(sig0000040b),
    .O(sig000003d2)
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  blk000005c5 (
    .I0(sig000002f6),
    .I1(sig00000416),
    .I2(sig00000415),
    .O(sig000003e8)
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  blk000005c6 (
    .I0(sig000002f6),
    .I1(sig000003f4),
    .I2(sig00000416),
    .O(sig000003ea)
  );
  LUT4 #(
    .INIT ( 16'hFF82 ))
  blk000005c7 (
    .I0(sig000003fe),
    .I1(sig000003ff),
    .I2(sig00000415),
    .I3(sig00000409),
    .O(sig000003f3)
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  blk000005c8 (
    .I0(sig0000040c),
    .I1(sig0000040e),
    .I2(sig0000040b),
    .I3(sig0000040d),
    .I4(sig0000040a),
    .O(sig000003d1)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk000005c9 (
    .I0(sig000002f7),
    .I1(sig000002fc),
    .O(sig000003e2)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk000005ca (
    .I0(sig000003f4),
    .I1(sig0000041b),
    .I2(sig00000417),
    .O(sig000003ef)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk000005cb (
    .I0(sig000003f4),
    .I1(sig0000041c),
    .I2(sig00000418),
    .O(sig000003f0)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk000005cc (
    .I0(sig000003f4),
    .I1(sig0000041d),
    .I2(sig00000419),
    .O(sig000003f1)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk000005cd (
    .I0(sig000003f4),
    .I1(sig0000041e),
    .I2(sig0000041a),
    .O(sig000003f2)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk000005ce (
    .I0(sig000002f6),
    .I1(sig00000414),
    .O(sig000003e7)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk000005cf (
    .I0(sig000002f6),
    .I1(sig00000415),
    .O(sig000003e9)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk000005d0 (
    .I0(sig000002f6),
    .I1(sig00000416),
    .O(sig000003eb)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk000005d1 (
    .I0(sig000002f6),
    .I1(sig000003f4),
    .O(sig000003ec)
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  blk000005d2 (
    .I0(sig00000413),
    .I1(sig00000412),
    .I2(sig00000411),
    .I3(sig00000410),
    .I4(sig0000040f),
    .O(sig000003ed)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  blk000005d3 (
    .I0(sig000002cf),
    .O(sig00000420)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  blk000005d4 (
    .I0(sig000002cf),
    .O(sig00000421)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  blk000005d5 (
    .I0(sig000002cf),
    .O(sig00000422)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk000005d6 (
    .I0(sig000002fa),
    .I1(sig000002fc),
    .O(sig00000423)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk000005d7 (
    .I0(sig000002f9),
    .I1(sig000002fc),
    .O(sig00000424)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk000005d8 (
    .I0(sig000002f8),
    .I1(sig000002fc),
    .O(sig00000425)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk000005d9 (
    .I0(sig000002fb),
    .I1(sig000002fc),
    .O(sig00000426)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk000005da (
    .I0(sig0000000c),
    .I1(sig0000003e),
    .I2(sig0000003f),
    .O(sig00000427)
  );
  FDS #(
    .INIT ( 1'b1 ))
  blk000005db (
    .C(clk),
    .D(sig00000427),
    .S(sig00000002),
    .Q(sig0000003f)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  blk000005dc (
    .I0(fwd_inv_we),
    .I1(fwd_inv),
    .I2(sig0000003e),
    .O(sig00000428)
  );
  FDS #(
    .INIT ( 1'b1 ))
  blk000005dd (
    .C(clk),
    .D(sig00000428),
    .S(sig00000002),
    .Q(sig0000003e)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000005de (
    .C(clk),
    .D(sig00000429),
    .Q(sig00000368)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000005df (
    .C(clk),
    .D(sig0000042a),
    .Q(sig00000372)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000005e0 (
    .C(clk),
    .D(sig0000042b),
    .Q(sig0000036e)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000005e1 (
    .C(clk),
    .D(sig0000042c),
    .Q(sig000002e7)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000005e2 (
    .C(clk),
    .D(sig0000042d),
    .Q(sig000002f1)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000005e3 (
    .C(clk),
    .D(sig0000042e),
    .Q(sig000003be)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000005e4 (
    .C(clk),
    .D(sig0000042f),
    .Q(sig00000005)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000005e5 (
    .C(clk),
    .D(sig00000430),
    .Q(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000005e6 (
    .I0(sig000002f8),
    .I1(sig000002fc),
    .O(sig000003dc)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000005e7 (
    .I0(sig000002f9),
    .I1(sig000002fc),
    .O(sig000003db)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000005e8 (
    .I0(sig000002fa),
    .I1(sig000002fc),
    .O(sig000003da)
  );
  LUT4 #(
    .INIT ( 16'hA8F8 ))
  blk000005e9 (
    .I0(sig00000003),
    .I1(start),
    .I2(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .I3(sig000002d7),
    .O(sig00000430)
  );
  LUT4 #(
    .INIT ( 16'h5444 ))
  blk000005ea (
    .I0(sig0000037d),
    .I1(sig0000000b),
    .I2(sig000002d6),
    .I3(sig000002e7),
    .O(sig00000429)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000005eb (
    .I0(sig000002fb),
    .I1(sig000002fc),
    .O(sig000003d9)
  );
  LUT4 #(
    .INIT ( 16'h5444 ))
  blk000005ec (
    .I0(sig00000366),
    .I1(sig0000036e),
    .I2(sig000002ff),
    .I3(sig000002d8),
    .O(sig0000042b)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk000005ed (
    .I0(sig000003c0),
    .I1(sig000003be),
    .O(sig0000042d)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk000005ee (
    .I0(sig000003c1),
    .I1(sig000002fd),
    .O(sig0000042e)
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  blk000005ef (
    .I0(sig000002d6),
    .I1(sig00000301),
    .I2(sig00000005),
    .O(sig0000042f)
  );
  LUT4 #(
    .INIT ( 16'h1454 ))
  blk000005f0 (
    .I0(sig00000397),
    .I1(sig00000395),
    .I2(sig00000396),
    .I3(sig00000394),
    .O(sig00000361)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk000005f1 (
    .I0(sig000002fd),
    .I1(sig000003c1),
    .I2(sig000003bf),
    .I3(sig0000013c),
    .O(sig0000027f)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk000005f2 (
    .I0(sig000002fd),
    .I1(sig000003c1),
    .I2(sig000003bf),
    .I3(sig0000013d),
    .O(sig00000280)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk000005f3 (
    .I0(sig000002fd),
    .I1(sig000003c1),
    .I2(sig000003bf),
    .I3(sig0000013e),
    .O(sig00000281)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk000005f4 (
    .I0(sig000002fd),
    .I1(sig000003c1),
    .I2(sig000003bf),
    .I3(sig0000013f),
    .O(sig00000282)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk000005f5 (
    .I0(sig000002fd),
    .I1(sig000003c1),
    .I2(sig000003bf),
    .I3(sig00000140),
    .O(sig00000283)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk000005f6 (
    .I0(sig000002fd),
    .I1(sig000003c1),
    .I2(sig000003bf),
    .I3(sig00000141),
    .O(sig00000284)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk000005f7 (
    .I0(sig000002fd),
    .I1(sig000003c1),
    .I2(sig000003bf),
    .I3(sig00000142),
    .O(sig00000285)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk000005f8 (
    .I0(sig000002fd),
    .I1(sig000003c1),
    .I2(sig000003bf),
    .I3(sig00000143),
    .O(sig00000286)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk000005f9 (
    .I0(sig000002fd),
    .I1(sig000003c1),
    .I2(sig000003bf),
    .I3(sig00000144),
    .O(sig00000287)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk000005fa (
    .I0(sig000002fd),
    .I1(sig000003c1),
    .I2(sig000003bf),
    .I3(sig00000145),
    .O(sig00000288)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk000005fb (
    .I0(sig000002fd),
    .I1(sig000003c1),
    .I2(sig000003bf),
    .I3(sig00000146),
    .O(sig00000289)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk000005fc (
    .I0(sig000002fd),
    .I1(sig000003c1),
    .I2(sig000003bf),
    .I3(sig00000147),
    .O(sig0000028a)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk000005fd (
    .I0(sig000002fd),
    .I1(sig000003c1),
    .I2(sig000003bf),
    .I3(sig00000148),
    .O(sig0000028b)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk000005fe (
    .I0(sig000002fd),
    .I1(sig000003c1),
    .I2(sig000003bf),
    .I3(sig00000149),
    .O(sig0000028c)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk000005ff (
    .I0(sig000002fd),
    .I1(sig000003c1),
    .I2(sig000003bf),
    .I3(sig0000014a),
    .O(sig0000028d)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk00000600 (
    .I0(sig000002fd),
    .I1(sig000003c1),
    .I2(sig000003bf),
    .I3(sig0000014b),
    .O(sig0000028e)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk00000601 (
    .I0(sig000002fd),
    .I1(sig000003c1),
    .I2(sig000003bf),
    .I3(sig0000014c),
    .O(sig0000028f)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk00000602 (
    .I0(sig000002fd),
    .I1(sig000003c1),
    .I2(sig000003bf),
    .I3(sig0000014d),
    .O(sig00000290)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk00000603 (
    .I0(sig000002fd),
    .I1(sig000003c1),
    .I2(sig000003bf),
    .I3(sig0000014e),
    .O(sig00000291)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk00000604 (
    .I0(sig000002fd),
    .I1(sig000003c1),
    .I2(sig000003bf),
    .I3(sig0000014f),
    .O(sig00000292)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk00000605 (
    .I0(sig000002fd),
    .I1(sig000003c1),
    .I2(sig000003bf),
    .I3(sig00000150),
    .O(sig00000293)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk00000606 (
    .I0(sig000002fd),
    .I1(sig000003c1),
    .I2(sig000003bf),
    .I3(sig00000151),
    .O(sig00000294)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk00000607 (
    .I0(sig000002fd),
    .I1(sig000003c1),
    .I2(sig000003bf),
    .I3(sig00000152),
    .O(sig00000295)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk00000608 (
    .I0(sig000002fd),
    .I1(sig000003c1),
    .I2(sig000003bf),
    .I3(sig00000153),
    .O(sig00000296)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk00000609 (
    .I0(sig000002fd),
    .I1(sig000003c1),
    .I2(sig000003bf),
    .I3(sig00000154),
    .O(sig00000297)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk0000060a (
    .I0(sig000002fd),
    .I1(sig000003c1),
    .I2(sig000003bf),
    .I3(sig00000155),
    .O(sig00000298)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk0000060b (
    .I0(sig000002fd),
    .I1(sig000003c1),
    .I2(sig000003bf),
    .I3(sig00000156),
    .O(sig00000299)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk0000060c (
    .I0(sig000002fd),
    .I1(sig000003c1),
    .I2(sig000003bf),
    .I3(sig00000157),
    .O(sig0000029a)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk0000060d (
    .I0(sig000002fd),
    .I1(sig000003c1),
    .I2(sig000003bf),
    .I3(sig00000158),
    .O(sig0000029b)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk0000060e (
    .I0(sig000002fd),
    .I1(sig000003c1),
    .I2(sig000003bf),
    .I3(sig00000159),
    .O(sig0000029c)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk0000060f (
    .I0(sig000002fd),
    .I1(sig000003c1),
    .I2(sig000003bf),
    .I3(sig0000015a),
    .O(sig0000029d)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk00000610 (
    .I0(sig000002fd),
    .I1(sig000003c1),
    .I2(sig000003bf),
    .I3(sig0000015b),
    .O(sig0000029e)
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  blk00000611 (
    .I0(sig0000037d),
    .I1(sig0000000b),
    .I2(sig000002e7),
    .O(sig0000042c)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAACAAAAAAAA ))
  blk00000612 (
    .I0(sig000002df),
    .I1(sig000002d5),
    .I2(sig000002ff),
    .I3(sig0000000b),
    .I4(sig00000303),
    .I5(sig00000302),
    .O(sig0000001d)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAACAAAAAAAA ))
  blk00000613 (
    .I0(sig000002de),
    .I1(sig000002d4),
    .I2(sig000002ff),
    .I3(sig0000000b),
    .I4(sig00000303),
    .I5(sig00000302),
    .O(sig0000001e)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAACAAAAAAAA ))
  blk00000614 (
    .I0(sig000002dd),
    .I1(sig000002d3),
    .I2(sig000002ff),
    .I3(sig0000000b),
    .I4(sig00000303),
    .I5(sig00000302),
    .O(sig0000001f)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAACAAAAAAAA ))
  blk00000615 (
    .I0(sig000002dc),
    .I1(sig000002d2),
    .I2(sig000002ff),
    .I3(sig0000000b),
    .I4(sig00000303),
    .I5(sig00000302),
    .O(sig00000020)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAACAAAAAAAA ))
  blk00000616 (
    .I0(sig000002db),
    .I1(sig000002d1),
    .I2(sig000002ff),
    .I3(sig0000000b),
    .I4(sig00000303),
    .I5(sig00000302),
    .O(sig00000021)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAACAAAAAAAA ))
  blk00000617 (
    .I0(sig000002da),
    .I1(sig000002d0),
    .I2(sig000002ff),
    .I3(sig0000000b),
    .I4(sig00000303),
    .I5(sig00000302),
    .O(sig00000022)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAACAAAAAAAA ))
  blk00000618 (
    .I0(sig000002d9),
    .I1(sig000002cf),
    .I2(sig000002ff),
    .I3(sig0000000b),
    .I4(sig00000303),
    .I5(sig00000302),
    .O(sig00000023)
  );
  LUT5 #(
    .INIT ( 32'h10101000 ))
  blk00000619 (
    .I0(sig000002ff),
    .I1(sig0000000b),
    .I2(sig0000037c),
    .I3(sig000002fe),
    .I4(sig00000301),
    .O(sig0000042a)
  );
  LUT4 #(
    .INIT ( 16'hABA8 ))
  blk0000061a (
    .I0(sig000002ee),
    .I1(sig000002ff),
    .I2(sig0000000b),
    .I3(sig000002e6),
    .O(sig00000024)
  );
  LUT4 #(
    .INIT ( 16'hABA8 ))
  blk0000061b (
    .I0(sig000002ed),
    .I1(sig000002ff),
    .I2(sig0000000b),
    .I3(sig000002e5),
    .O(sig00000025)
  );
  LUT4 #(
    .INIT ( 16'hABA8 ))
  blk0000061c (
    .I0(sig000002ec),
    .I1(sig000002ff),
    .I2(sig0000000b),
    .I3(sig000002e4),
    .O(sig00000026)
  );
  LUT4 #(
    .INIT ( 16'hABA8 ))
  blk0000061d (
    .I0(sig000002eb),
    .I1(sig000002ff),
    .I2(sig0000000b),
    .I3(sig000002e3),
    .O(sig00000027)
  );
  LUT4 #(
    .INIT ( 16'hABA8 ))
  blk0000061e (
    .I0(sig000002ea),
    .I1(sig000002ff),
    .I2(sig0000000b),
    .I3(sig000002e2),
    .O(sig00000028)
  );
  LUT4 #(
    .INIT ( 16'hABA8 ))
  blk0000061f (
    .I0(sig000002e9),
    .I1(sig000002ff),
    .I2(sig0000000b),
    .I3(sig000002e1),
    .O(sig00000029)
  );
  LUT4 #(
    .INIT ( 16'hABA8 ))
  blk00000620 (
    .I0(sig000002e8),
    .I1(sig000002ff),
    .I2(sig0000000b),
    .I3(sig000002e0),
    .O(sig0000002a)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  blk00000621 (
    .I0(sig000002f7),
    .O(sig00000431)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  blk00000622 (
    .I0(sig000002f7),
    .O(sig00000432)
  );
  INV   blk00000623 (
    .I(sig000000fa),
    .O(sig0000002b)
  );
  INV   blk00000624 (
    .I(sig0000011b),
    .O(sig0000002f)
  );
  INV   blk00000625 (
    .I(sig000002d5),
    .O(sig00000363)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk00000626 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000008f),
    .Q(sig00000433),
    .Q15(NLW_blk00000626_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000627 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000433),
    .Q(sig0000026a)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk00000628 (
    .A0(sig00000001),
    .A1(sig00000001),
    .A2(sig00000002),
    .A3(sig00000001),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000036b),
    .Q(sig00000434),
    .Q15(NLW_blk00000628_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000629 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000434),
    .Q(sig00000435)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk0000062a (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000215),
    .Q(sig00000436),
    .Q15(NLW_blk0000062a_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000062b (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000436),
    .Q(sig000001e0)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk0000062c (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig000002d5),
    .Q(sig00000437),
    .Q15(NLW_blk0000062c_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000062d (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000437),
    .Q(sig000002e8)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk0000062e (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig000002d4),
    .Q(sig00000438),
    .Q15(NLW_blk0000062e_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000062f (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000438),
    .Q(sig000002e9)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk00000630 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig000002d1),
    .Q(sig00000439),
    .Q15(NLW_blk00000630_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000631 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000439),
    .Q(sig000002ec)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk00000632 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig000002d3),
    .Q(sig0000043a),
    .Q15(NLW_blk00000632_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000633 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000043a),
    .Q(sig000002ea)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk00000634 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig000002d2),
    .Q(sig0000043b),
    .Q15(NLW_blk00000634_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000635 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000043b),
    .Q(sig000002eb)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk00000636 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig000002d0),
    .Q(sig0000043c),
    .Q15(NLW_blk00000636_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000637 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000043c),
    .Q(sig000002ed)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk00000638 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig000002cf),
    .Q(sig0000043d),
    .Q15(NLW_blk00000638_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000639 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000043d),
    .Q(sig000002ee)
  );
  FDRE   blk0000063a (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000001),
    .R(sig00000002),
    .Q(sig0000043e)
  );
  FDRE   blk0000063b (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000043e),
    .R(sig00000002),
    .Q(sig0000043f)
  );
  FDRE   blk0000063c (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000043f),
    .R(sig00000002),
    .Q(sig00000440)
  );
  FDRE   blk0000063d (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000440),
    .R(sig00000002),
    .Q(sig00000441)
  );
  FDRE   blk0000063e (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000441),
    .R(sig00000002),
    .Q(sig00000442)
  );
  FDRE   blk0000063f (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000442),
    .R(sig00000002),
    .Q(sig00000443)
  );
  FDRE   blk00000640 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000443),
    .R(sig00000002),
    .Q(sig00000444)
  );
  FDRE   blk00000641 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000444),
    .R(sig00000002),
    .Q(sig00000445)
  );
  FDRE   blk00000642 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000445),
    .R(sig00000002),
    .Q(sig00000446)
  );
  FDRE   blk00000643 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000446),
    .R(sig00000002),
    .Q(sig00000447)
  );
  FDRE   blk00000644 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000447),
    .R(sig00000002),
    .Q(sig00000448)
  );
  FDRE   blk00000645 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000448),
    .R(sig00000002),
    .Q(sig00000449)
  );
  FDRE   blk00000646 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000449),
    .R(sig00000002),
    .Q(sig0000044a)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk00000647 (
    .I0(sig00000435),
    .I1(sig0000044a),
    .O(sig0000044b)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000648 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000044b),
    .R(sig00000002),
    .Q(sig0000008e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk0000008f/blk00000090/blk000000b2  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk0000008f/blk00000090/sig000004a2 ),
    .Q(sig000001df)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk0000008f/blk00000090/blk000000b1  (
    .A0(\blk0000008f/blk00000090/sig00000492 ),
    .A1(\blk0000008f/blk00000090/sig00000491 ),
    .A2(\blk0000008f/blk00000090/sig00000491 ),
    .A3(\blk0000008f/blk00000090/sig00000491 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_re[15]),
    .Q(\blk0000008f/blk00000090/sig000004a2 ),
    .Q15(\NLW_blk0000008f/blk00000090/blk000000b1_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk0000008f/blk00000090/blk000000b0  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk0000008f/blk00000090/sig000004a1 ),
    .Q(sig000001de)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk0000008f/blk00000090/blk000000af  (
    .A0(\blk0000008f/blk00000090/sig00000492 ),
    .A1(\blk0000008f/blk00000090/sig00000491 ),
    .A2(\blk0000008f/blk00000090/sig00000491 ),
    .A3(\blk0000008f/blk00000090/sig00000491 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_re[14]),
    .Q(\blk0000008f/blk00000090/sig000004a1 ),
    .Q15(\NLW_blk0000008f/blk00000090/blk000000af_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk0000008f/blk00000090/blk000000ae  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk0000008f/blk00000090/sig000004a0 ),
    .Q(sig000001dd)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk0000008f/blk00000090/blk000000ad  (
    .A0(\blk0000008f/blk00000090/sig00000492 ),
    .A1(\blk0000008f/blk00000090/sig00000491 ),
    .A2(\blk0000008f/blk00000090/sig00000491 ),
    .A3(\blk0000008f/blk00000090/sig00000491 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_re[13]),
    .Q(\blk0000008f/blk00000090/sig000004a0 ),
    .Q15(\NLW_blk0000008f/blk00000090/blk000000ad_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk0000008f/blk00000090/blk000000ac  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk0000008f/blk00000090/sig0000049f ),
    .Q(sig000001dc)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk0000008f/blk00000090/blk000000ab  (
    .A0(\blk0000008f/blk00000090/sig00000492 ),
    .A1(\blk0000008f/blk00000090/sig00000491 ),
    .A2(\blk0000008f/blk00000090/sig00000491 ),
    .A3(\blk0000008f/blk00000090/sig00000491 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_re[12]),
    .Q(\blk0000008f/blk00000090/sig0000049f ),
    .Q15(\NLW_blk0000008f/blk00000090/blk000000ab_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk0000008f/blk00000090/blk000000aa  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk0000008f/blk00000090/sig0000049e ),
    .Q(sig000001db)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk0000008f/blk00000090/blk000000a9  (
    .A0(\blk0000008f/blk00000090/sig00000492 ),
    .A1(\blk0000008f/blk00000090/sig00000491 ),
    .A2(\blk0000008f/blk00000090/sig00000491 ),
    .A3(\blk0000008f/blk00000090/sig00000491 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_re[11]),
    .Q(\blk0000008f/blk00000090/sig0000049e ),
    .Q15(\NLW_blk0000008f/blk00000090/blk000000a9_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk0000008f/blk00000090/blk000000a8  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk0000008f/blk00000090/sig0000049d ),
    .Q(sig000001da)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk0000008f/blk00000090/blk000000a7  (
    .A0(\blk0000008f/blk00000090/sig00000492 ),
    .A1(\blk0000008f/blk00000090/sig00000491 ),
    .A2(\blk0000008f/blk00000090/sig00000491 ),
    .A3(\blk0000008f/blk00000090/sig00000491 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_re[10]),
    .Q(\blk0000008f/blk00000090/sig0000049d ),
    .Q15(\NLW_blk0000008f/blk00000090/blk000000a7_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk0000008f/blk00000090/blk000000a6  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk0000008f/blk00000090/sig0000049c ),
    .Q(sig000001d9)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk0000008f/blk00000090/blk000000a5  (
    .A0(\blk0000008f/blk00000090/sig00000492 ),
    .A1(\blk0000008f/blk00000090/sig00000491 ),
    .A2(\blk0000008f/blk00000090/sig00000491 ),
    .A3(\blk0000008f/blk00000090/sig00000491 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_re[9]),
    .Q(\blk0000008f/blk00000090/sig0000049c ),
    .Q15(\NLW_blk0000008f/blk00000090/blk000000a5_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk0000008f/blk00000090/blk000000a4  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk0000008f/blk00000090/sig0000049b ),
    .Q(sig000001d8)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk0000008f/blk00000090/blk000000a3  (
    .A0(\blk0000008f/blk00000090/sig00000492 ),
    .A1(\blk0000008f/blk00000090/sig00000491 ),
    .A2(\blk0000008f/blk00000090/sig00000491 ),
    .A3(\blk0000008f/blk00000090/sig00000491 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_re[8]),
    .Q(\blk0000008f/blk00000090/sig0000049b ),
    .Q15(\NLW_blk0000008f/blk00000090/blk000000a3_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk0000008f/blk00000090/blk000000a2  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk0000008f/blk00000090/sig0000049a ),
    .Q(sig000001d7)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk0000008f/blk00000090/blk000000a1  (
    .A0(\blk0000008f/blk00000090/sig00000492 ),
    .A1(\blk0000008f/blk00000090/sig00000491 ),
    .A2(\blk0000008f/blk00000090/sig00000491 ),
    .A3(\blk0000008f/blk00000090/sig00000491 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_re[7]),
    .Q(\blk0000008f/blk00000090/sig0000049a ),
    .Q15(\NLW_blk0000008f/blk00000090/blk000000a1_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk0000008f/blk00000090/blk000000a0  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk0000008f/blk00000090/sig00000499 ),
    .Q(sig000001d6)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk0000008f/blk00000090/blk0000009f  (
    .A0(\blk0000008f/blk00000090/sig00000492 ),
    .A1(\blk0000008f/blk00000090/sig00000491 ),
    .A2(\blk0000008f/blk00000090/sig00000491 ),
    .A3(\blk0000008f/blk00000090/sig00000491 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_re[6]),
    .Q(\blk0000008f/blk00000090/sig00000499 ),
    .Q15(\NLW_blk0000008f/blk00000090/blk0000009f_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk0000008f/blk00000090/blk0000009e  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk0000008f/blk00000090/sig00000498 ),
    .Q(sig000001d5)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk0000008f/blk00000090/blk0000009d  (
    .A0(\blk0000008f/blk00000090/sig00000492 ),
    .A1(\blk0000008f/blk00000090/sig00000491 ),
    .A2(\blk0000008f/blk00000090/sig00000491 ),
    .A3(\blk0000008f/blk00000090/sig00000491 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_re[5]),
    .Q(\blk0000008f/blk00000090/sig00000498 ),
    .Q15(\NLW_blk0000008f/blk00000090/blk0000009d_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk0000008f/blk00000090/blk0000009c  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk0000008f/blk00000090/sig00000497 ),
    .Q(sig000001d4)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk0000008f/blk00000090/blk0000009b  (
    .A0(\blk0000008f/blk00000090/sig00000492 ),
    .A1(\blk0000008f/blk00000090/sig00000491 ),
    .A2(\blk0000008f/blk00000090/sig00000491 ),
    .A3(\blk0000008f/blk00000090/sig00000491 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_re[4]),
    .Q(\blk0000008f/blk00000090/sig00000497 ),
    .Q15(\NLW_blk0000008f/blk00000090/blk0000009b_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk0000008f/blk00000090/blk0000009a  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk0000008f/blk00000090/sig00000496 ),
    .Q(sig000001d3)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk0000008f/blk00000090/blk00000099  (
    .A0(\blk0000008f/blk00000090/sig00000492 ),
    .A1(\blk0000008f/blk00000090/sig00000491 ),
    .A2(\blk0000008f/blk00000090/sig00000491 ),
    .A3(\blk0000008f/blk00000090/sig00000491 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_re[3]),
    .Q(\blk0000008f/blk00000090/sig00000496 ),
    .Q15(\NLW_blk0000008f/blk00000090/blk00000099_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk0000008f/blk00000090/blk00000098  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk0000008f/blk00000090/sig00000495 ),
    .Q(sig000001d2)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk0000008f/blk00000090/blk00000097  (
    .A0(\blk0000008f/blk00000090/sig00000492 ),
    .A1(\blk0000008f/blk00000090/sig00000491 ),
    .A2(\blk0000008f/blk00000090/sig00000491 ),
    .A3(\blk0000008f/blk00000090/sig00000491 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_re[2]),
    .Q(\blk0000008f/blk00000090/sig00000495 ),
    .Q15(\NLW_blk0000008f/blk00000090/blk00000097_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk0000008f/blk00000090/blk00000096  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk0000008f/blk00000090/sig00000494 ),
    .Q(sig000001d1)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk0000008f/blk00000090/blk00000095  (
    .A0(\blk0000008f/blk00000090/sig00000492 ),
    .A1(\blk0000008f/blk00000090/sig00000491 ),
    .A2(\blk0000008f/blk00000090/sig00000491 ),
    .A3(\blk0000008f/blk00000090/sig00000491 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_re[1]),
    .Q(\blk0000008f/blk00000090/sig00000494 ),
    .Q15(\NLW_blk0000008f/blk00000090/blk00000095_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk0000008f/blk00000090/blk00000094  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk0000008f/blk00000090/sig00000493 ),
    .Q(sig000001d0)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk0000008f/blk00000090/blk00000093  (
    .A0(\blk0000008f/blk00000090/sig00000492 ),
    .A1(\blk0000008f/blk00000090/sig00000491 ),
    .A2(\blk0000008f/blk00000090/sig00000491 ),
    .A3(\blk0000008f/blk00000090/sig00000491 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_re[0]),
    .Q(\blk0000008f/blk00000090/sig00000493 ),
    .Q15(\NLW_blk0000008f/blk00000090/blk00000093_Q15_UNCONNECTED )
  );
  VCC   \blk0000008f/blk00000090/blk00000092  (
    .P(\blk0000008f/blk00000090/sig00000492 )
  );
  GND   \blk0000008f/blk00000090/blk00000091  (
    .G(\blk0000008f/blk00000090/sig00000491 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000b3/blk000000b4/blk000000d6  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000000b3/blk000000b4/sig000004f9 ),
    .Q(sig000001cf)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000000b3/blk000000b4/blk000000d5  (
    .A0(\blk000000b3/blk000000b4/sig000004e9 ),
    .A1(\blk000000b3/blk000000b4/sig000004e8 ),
    .A2(\blk000000b3/blk000000b4/sig000004e8 ),
    .A3(\blk000000b3/blk000000b4/sig000004e8 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_im[15]),
    .Q(\blk000000b3/blk000000b4/sig000004f9 ),
    .Q15(\NLW_blk000000b3/blk000000b4/blk000000d5_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000b3/blk000000b4/blk000000d4  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000000b3/blk000000b4/sig000004f8 ),
    .Q(sig000001ce)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000000b3/blk000000b4/blk000000d3  (
    .A0(\blk000000b3/blk000000b4/sig000004e9 ),
    .A1(\blk000000b3/blk000000b4/sig000004e8 ),
    .A2(\blk000000b3/blk000000b4/sig000004e8 ),
    .A3(\blk000000b3/blk000000b4/sig000004e8 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_im[14]),
    .Q(\blk000000b3/blk000000b4/sig000004f8 ),
    .Q15(\NLW_blk000000b3/blk000000b4/blk000000d3_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000b3/blk000000b4/blk000000d2  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000000b3/blk000000b4/sig000004f7 ),
    .Q(sig000001cd)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000000b3/blk000000b4/blk000000d1  (
    .A0(\blk000000b3/blk000000b4/sig000004e9 ),
    .A1(\blk000000b3/blk000000b4/sig000004e8 ),
    .A2(\blk000000b3/blk000000b4/sig000004e8 ),
    .A3(\blk000000b3/blk000000b4/sig000004e8 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_im[13]),
    .Q(\blk000000b3/blk000000b4/sig000004f7 ),
    .Q15(\NLW_blk000000b3/blk000000b4/blk000000d1_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000b3/blk000000b4/blk000000d0  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000000b3/blk000000b4/sig000004f6 ),
    .Q(sig000001cc)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000000b3/blk000000b4/blk000000cf  (
    .A0(\blk000000b3/blk000000b4/sig000004e9 ),
    .A1(\blk000000b3/blk000000b4/sig000004e8 ),
    .A2(\blk000000b3/blk000000b4/sig000004e8 ),
    .A3(\blk000000b3/blk000000b4/sig000004e8 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_im[12]),
    .Q(\blk000000b3/blk000000b4/sig000004f6 ),
    .Q15(\NLW_blk000000b3/blk000000b4/blk000000cf_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000b3/blk000000b4/blk000000ce  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000000b3/blk000000b4/sig000004f5 ),
    .Q(sig000001cb)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000000b3/blk000000b4/blk000000cd  (
    .A0(\blk000000b3/blk000000b4/sig000004e9 ),
    .A1(\blk000000b3/blk000000b4/sig000004e8 ),
    .A2(\blk000000b3/blk000000b4/sig000004e8 ),
    .A3(\blk000000b3/blk000000b4/sig000004e8 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_im[11]),
    .Q(\blk000000b3/blk000000b4/sig000004f5 ),
    .Q15(\NLW_blk000000b3/blk000000b4/blk000000cd_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000b3/blk000000b4/blk000000cc  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000000b3/blk000000b4/sig000004f4 ),
    .Q(sig000001ca)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000000b3/blk000000b4/blk000000cb  (
    .A0(\blk000000b3/blk000000b4/sig000004e9 ),
    .A1(\blk000000b3/blk000000b4/sig000004e8 ),
    .A2(\blk000000b3/blk000000b4/sig000004e8 ),
    .A3(\blk000000b3/blk000000b4/sig000004e8 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_im[10]),
    .Q(\blk000000b3/blk000000b4/sig000004f4 ),
    .Q15(\NLW_blk000000b3/blk000000b4/blk000000cb_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000b3/blk000000b4/blk000000ca  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000000b3/blk000000b4/sig000004f3 ),
    .Q(sig000001c9)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000000b3/blk000000b4/blk000000c9  (
    .A0(\blk000000b3/blk000000b4/sig000004e9 ),
    .A1(\blk000000b3/blk000000b4/sig000004e8 ),
    .A2(\blk000000b3/blk000000b4/sig000004e8 ),
    .A3(\blk000000b3/blk000000b4/sig000004e8 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_im[9]),
    .Q(\blk000000b3/blk000000b4/sig000004f3 ),
    .Q15(\NLW_blk000000b3/blk000000b4/blk000000c9_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000b3/blk000000b4/blk000000c8  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000000b3/blk000000b4/sig000004f2 ),
    .Q(sig000001c8)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000000b3/blk000000b4/blk000000c7  (
    .A0(\blk000000b3/blk000000b4/sig000004e9 ),
    .A1(\blk000000b3/blk000000b4/sig000004e8 ),
    .A2(\blk000000b3/blk000000b4/sig000004e8 ),
    .A3(\blk000000b3/blk000000b4/sig000004e8 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_im[8]),
    .Q(\blk000000b3/blk000000b4/sig000004f2 ),
    .Q15(\NLW_blk000000b3/blk000000b4/blk000000c7_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000b3/blk000000b4/blk000000c6  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000000b3/blk000000b4/sig000004f1 ),
    .Q(sig000001c7)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000000b3/blk000000b4/blk000000c5  (
    .A0(\blk000000b3/blk000000b4/sig000004e9 ),
    .A1(\blk000000b3/blk000000b4/sig000004e8 ),
    .A2(\blk000000b3/blk000000b4/sig000004e8 ),
    .A3(\blk000000b3/blk000000b4/sig000004e8 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_im[7]),
    .Q(\blk000000b3/blk000000b4/sig000004f1 ),
    .Q15(\NLW_blk000000b3/blk000000b4/blk000000c5_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000b3/blk000000b4/blk000000c4  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000000b3/blk000000b4/sig000004f0 ),
    .Q(sig000001c6)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000000b3/blk000000b4/blk000000c3  (
    .A0(\blk000000b3/blk000000b4/sig000004e9 ),
    .A1(\blk000000b3/blk000000b4/sig000004e8 ),
    .A2(\blk000000b3/blk000000b4/sig000004e8 ),
    .A3(\blk000000b3/blk000000b4/sig000004e8 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_im[6]),
    .Q(\blk000000b3/blk000000b4/sig000004f0 ),
    .Q15(\NLW_blk000000b3/blk000000b4/blk000000c3_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000b3/blk000000b4/blk000000c2  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000000b3/blk000000b4/sig000004ef ),
    .Q(sig000001c5)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000000b3/blk000000b4/blk000000c1  (
    .A0(\blk000000b3/blk000000b4/sig000004e9 ),
    .A1(\blk000000b3/blk000000b4/sig000004e8 ),
    .A2(\blk000000b3/blk000000b4/sig000004e8 ),
    .A3(\blk000000b3/blk000000b4/sig000004e8 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_im[5]),
    .Q(\blk000000b3/blk000000b4/sig000004ef ),
    .Q15(\NLW_blk000000b3/blk000000b4/blk000000c1_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000b3/blk000000b4/blk000000c0  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000000b3/blk000000b4/sig000004ee ),
    .Q(sig000001c4)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000000b3/blk000000b4/blk000000bf  (
    .A0(\blk000000b3/blk000000b4/sig000004e9 ),
    .A1(\blk000000b3/blk000000b4/sig000004e8 ),
    .A2(\blk000000b3/blk000000b4/sig000004e8 ),
    .A3(\blk000000b3/blk000000b4/sig000004e8 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_im[4]),
    .Q(\blk000000b3/blk000000b4/sig000004ee ),
    .Q15(\NLW_blk000000b3/blk000000b4/blk000000bf_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000b3/blk000000b4/blk000000be  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000000b3/blk000000b4/sig000004ed ),
    .Q(sig000001c3)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000000b3/blk000000b4/blk000000bd  (
    .A0(\blk000000b3/blk000000b4/sig000004e9 ),
    .A1(\blk000000b3/blk000000b4/sig000004e8 ),
    .A2(\blk000000b3/blk000000b4/sig000004e8 ),
    .A3(\blk000000b3/blk000000b4/sig000004e8 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_im[3]),
    .Q(\blk000000b3/blk000000b4/sig000004ed ),
    .Q15(\NLW_blk000000b3/blk000000b4/blk000000bd_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000b3/blk000000b4/blk000000bc  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000000b3/blk000000b4/sig000004ec ),
    .Q(sig000001c2)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000000b3/blk000000b4/blk000000bb  (
    .A0(\blk000000b3/blk000000b4/sig000004e9 ),
    .A1(\blk000000b3/blk000000b4/sig000004e8 ),
    .A2(\blk000000b3/blk000000b4/sig000004e8 ),
    .A3(\blk000000b3/blk000000b4/sig000004e8 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_im[2]),
    .Q(\blk000000b3/blk000000b4/sig000004ec ),
    .Q15(\NLW_blk000000b3/blk000000b4/blk000000bb_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000b3/blk000000b4/blk000000ba  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000000b3/blk000000b4/sig000004eb ),
    .Q(sig000001c1)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000000b3/blk000000b4/blk000000b9  (
    .A0(\blk000000b3/blk000000b4/sig000004e9 ),
    .A1(\blk000000b3/blk000000b4/sig000004e8 ),
    .A2(\blk000000b3/blk000000b4/sig000004e8 ),
    .A3(\blk000000b3/blk000000b4/sig000004e8 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_im[1]),
    .Q(\blk000000b3/blk000000b4/sig000004eb ),
    .Q15(\NLW_blk000000b3/blk000000b4/blk000000b9_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000b3/blk000000b4/blk000000b8  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000000b3/blk000000b4/sig000004ea ),
    .Q(sig000001c0)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000000b3/blk000000b4/blk000000b7  (
    .A0(\blk000000b3/blk000000b4/sig000004e9 ),
    .A1(\blk000000b3/blk000000b4/sig000004e8 ),
    .A2(\blk000000b3/blk000000b4/sig000004e8 ),
    .A3(\blk000000b3/blk000000b4/sig000004e8 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(xn_im[0]),
    .Q(\blk000000b3/blk000000b4/sig000004ea ),
    .Q15(\NLW_blk000000b3/blk000000b4/blk000000b7_Q15_UNCONNECTED )
  );
  VCC   \blk000000b3/blk000000b4/blk000000b6  (
    .P(\blk000000b3/blk000000b4/sig000004e9 )
  );
  GND   \blk000000b3/blk000000b4/blk000000b5  (
    .G(\blk000000b3/blk000000b4/sig000004e8 )
  );
  RAM128X1D #(
    .INIT ( 128'h00000000000000000000000000000000 ))
  \blk00000148/blk00000188  (
    .WCLK(clk),
    .D(sig000000af),
    .WE(sig0000002c),
    .SPO(\NLW_blk00000148/blk00000188_SPO_UNCONNECTED ),
    .DPO(\blk00000148/sig00000549 ),
    .A({sig000001b1, sig000001b0, sig000001af, sig000001ae, sig000001ad, sig000001ac, sig000001ab}),
    .DPRA({sig000001aa, sig000001a9, sig000001a8, sig000001a7, sig000001a6, sig000001a5, sig000001a4})
  );
  RAM128X1D #(
    .INIT ( 128'h00000000000000000000000000000000 ))
  \blk00000148/blk00000187  (
    .WCLK(clk),
    .D(sig000000ae),
    .WE(sig0000002c),
    .SPO(\NLW_blk00000148/blk00000187_SPO_UNCONNECTED ),
    .DPO(\blk00000148/sig00000548 ),
    .A({sig000001b1, sig000001b0, sig000001af, sig000001ae, sig000001ad, sig000001ac, sig000001ab}),
    .DPRA({sig000001aa, sig000001a9, sig000001a8, sig000001a7, sig000001a6, sig000001a5, sig000001a4})
  );
  RAM128X1D #(
    .INIT ( 128'h00000000000000000000000000000000 ))
  \blk00000148/blk00000186  (
    .WCLK(clk),
    .D(sig000000ad),
    .WE(sig0000002c),
    .SPO(\NLW_blk00000148/blk00000186_SPO_UNCONNECTED ),
    .DPO(\blk00000148/sig00000547 ),
    .A({sig000001b1, sig000001b0, sig000001af, sig000001ae, sig000001ad, sig000001ac, sig000001ab}),
    .DPRA({sig000001aa, sig000001a9, sig000001a8, sig000001a7, sig000001a6, sig000001a5, sig000001a4})
  );
  RAM128X1D #(
    .INIT ( 128'h00000000000000000000000000000000 ))
  \blk00000148/blk00000185  (
    .WCLK(clk),
    .D(sig000000ac),
    .WE(sig0000002c),
    .SPO(\NLW_blk00000148/blk00000185_SPO_UNCONNECTED ),
    .DPO(\blk00000148/sig00000546 ),
    .A({sig000001b1, sig000001b0, sig000001af, sig000001ae, sig000001ad, sig000001ac, sig000001ab}),
    .DPRA({sig000001aa, sig000001a9, sig000001a8, sig000001a7, sig000001a6, sig000001a5, sig000001a4})
  );
  RAM128X1D #(
    .INIT ( 128'h00000000000000000000000000000000 ))
  \blk00000148/blk00000184  (
    .WCLK(clk),
    .D(sig000000ab),
    .WE(sig0000002c),
    .SPO(\NLW_blk00000148/blk00000184_SPO_UNCONNECTED ),
    .DPO(\blk00000148/sig00000545 ),
    .A({sig000001b1, sig000001b0, sig000001af, sig000001ae, sig000001ad, sig000001ac, sig000001ab}),
    .DPRA({sig000001aa, sig000001a9, sig000001a8, sig000001a7, sig000001a6, sig000001a5, sig000001a4})
  );
  RAM128X1D #(
    .INIT ( 128'h00000000000000000000000000000000 ))
  \blk00000148/blk00000183  (
    .WCLK(clk),
    .D(sig000000aa),
    .WE(sig0000002c),
    .SPO(\NLW_blk00000148/blk00000183_SPO_UNCONNECTED ),
    .DPO(\blk00000148/sig00000544 ),
    .A({sig000001b1, sig000001b0, sig000001af, sig000001ae, sig000001ad, sig000001ac, sig000001ab}),
    .DPRA({sig000001aa, sig000001a9, sig000001a8, sig000001a7, sig000001a6, sig000001a5, sig000001a4})
  );
  RAM128X1D #(
    .INIT ( 128'h00000000000000000000000000000000 ))
  \blk00000148/blk00000182  (
    .WCLK(clk),
    .D(sig000000a9),
    .WE(sig0000002c),
    .SPO(\NLW_blk00000148/blk00000182_SPO_UNCONNECTED ),
    .DPO(\blk00000148/sig00000543 ),
    .A({sig000001b1, sig000001b0, sig000001af, sig000001ae, sig000001ad, sig000001ac, sig000001ab}),
    .DPRA({sig000001aa, sig000001a9, sig000001a8, sig000001a7, sig000001a6, sig000001a5, sig000001a4})
  );
  RAM128X1D #(
    .INIT ( 128'h00000000000000000000000000000000 ))
  \blk00000148/blk00000181  (
    .WCLK(clk),
    .D(sig000000a8),
    .WE(sig0000002c),
    .SPO(\NLW_blk00000148/blk00000181_SPO_UNCONNECTED ),
    .DPO(\blk00000148/sig00000542 ),
    .A({sig000001b1, sig000001b0, sig000001af, sig000001ae, sig000001ad, sig000001ac, sig000001ab}),
    .DPRA({sig000001aa, sig000001a9, sig000001a8, sig000001a7, sig000001a6, sig000001a5, sig000001a4})
  );
  RAM128X1D #(
    .INIT ( 128'h00000000000000000000000000000000 ))
  \blk00000148/blk00000180  (
    .WCLK(clk),
    .D(sig000000a7),
    .WE(sig0000002c),
    .SPO(\NLW_blk00000148/blk00000180_SPO_UNCONNECTED ),
    .DPO(\blk00000148/sig00000541 ),
    .A({sig000001b1, sig000001b0, sig000001af, sig000001ae, sig000001ad, sig000001ac, sig000001ab}),
    .DPRA({sig000001aa, sig000001a9, sig000001a8, sig000001a7, sig000001a6, sig000001a5, sig000001a4})
  );
  RAM128X1D #(
    .INIT ( 128'h00000000000000000000000000000000 ))
  \blk00000148/blk0000017f  (
    .WCLK(clk),
    .D(sig000000a6),
    .WE(sig0000002c),
    .SPO(\NLW_blk00000148/blk0000017f_SPO_UNCONNECTED ),
    .DPO(\blk00000148/sig00000540 ),
    .A({sig000001b1, sig000001b0, sig000001af, sig000001ae, sig000001ad, sig000001ac, sig000001ab}),
    .DPRA({sig000001aa, sig000001a9, sig000001a8, sig000001a7, sig000001a6, sig000001a5, sig000001a4})
  );
  RAM128X1D #(
    .INIT ( 128'h00000000000000000000000000000000 ))
  \blk00000148/blk0000017e  (
    .WCLK(clk),
    .D(sig000000a5),
    .WE(sig0000002c),
    .SPO(\NLW_blk00000148/blk0000017e_SPO_UNCONNECTED ),
    .DPO(\blk00000148/sig0000053f ),
    .A({sig000001b1, sig000001b0, sig000001af, sig000001ae, sig000001ad, sig000001ac, sig000001ab}),
    .DPRA({sig000001aa, sig000001a9, sig000001a8, sig000001a7, sig000001a6, sig000001a5, sig000001a4})
  );
  RAM128X1D #(
    .INIT ( 128'h00000000000000000000000000000000 ))
  \blk00000148/blk0000017d  (
    .WCLK(clk),
    .D(sig000000a4),
    .WE(sig0000002c),
    .SPO(\NLW_blk00000148/blk0000017d_SPO_UNCONNECTED ),
    .DPO(\blk00000148/sig0000053e ),
    .A({sig000001b1, sig000001b0, sig000001af, sig000001ae, sig000001ad, sig000001ac, sig000001ab}),
    .DPRA({sig000001aa, sig000001a9, sig000001a8, sig000001a7, sig000001a6, sig000001a5, sig000001a4})
  );
  RAM128X1D #(
    .INIT ( 128'h00000000000000000000000000000000 ))
  \blk00000148/blk0000017c  (
    .WCLK(clk),
    .D(sig000000a3),
    .WE(sig0000002c),
    .SPO(\NLW_blk00000148/blk0000017c_SPO_UNCONNECTED ),
    .DPO(\blk00000148/sig0000053d ),
    .A({sig000001b1, sig000001b0, sig000001af, sig000001ae, sig000001ad, sig000001ac, sig000001ab}),
    .DPRA({sig000001aa, sig000001a9, sig000001a8, sig000001a7, sig000001a6, sig000001a5, sig000001a4})
  );
  RAM128X1D #(
    .INIT ( 128'h00000000000000000000000000000000 ))
  \blk00000148/blk0000017b  (
    .WCLK(clk),
    .D(sig000000a2),
    .WE(sig0000002c),
    .SPO(\NLW_blk00000148/blk0000017b_SPO_UNCONNECTED ),
    .DPO(\blk00000148/sig0000053c ),
    .A({sig000001b1, sig000001b0, sig000001af, sig000001ae, sig000001ad, sig000001ac, sig000001ab}),
    .DPRA({sig000001aa, sig000001a9, sig000001a8, sig000001a7, sig000001a6, sig000001a5, sig000001a4})
  );
  RAM128X1D #(
    .INIT ( 128'h00000000000000000000000000000000 ))
  \blk00000148/blk0000017a  (
    .WCLK(clk),
    .D(sig000000a1),
    .WE(sig0000002c),
    .SPO(\NLW_blk00000148/blk0000017a_SPO_UNCONNECTED ),
    .DPO(\blk00000148/sig0000053b ),
    .A({sig000001b1, sig000001b0, sig000001af, sig000001ae, sig000001ad, sig000001ac, sig000001ab}),
    .DPRA({sig000001aa, sig000001a9, sig000001a8, sig000001a7, sig000001a6, sig000001a5, sig000001a4})
  );
  RAM128X1D #(
    .INIT ( 128'h00000000000000000000000000000000 ))
  \blk00000148/blk00000179  (
    .WCLK(clk),
    .D(sig000000a0),
    .WE(sig0000002c),
    .SPO(\NLW_blk00000148/blk00000179_SPO_UNCONNECTED ),
    .DPO(\blk00000148/sig0000053a ),
    .A({sig000001b1, sig000001b0, sig000001af, sig000001ae, sig000001ad, sig000001ac, sig000001ab}),
    .DPRA({sig000001aa, sig000001a9, sig000001a8, sig000001a7, sig000001a6, sig000001a5, sig000001a4})
  );
  RAM128X1D #(
    .INIT ( 128'h00000000000000000000000000000000 ))
  \blk00000148/blk00000178  (
    .WCLK(clk),
    .D(sig0000009f),
    .WE(sig0000002c),
    .SPO(\NLW_blk00000148/blk00000178_SPO_UNCONNECTED ),
    .DPO(\blk00000148/sig00000539 ),
    .A({sig000001b1, sig000001b0, sig000001af, sig000001ae, sig000001ad, sig000001ac, sig000001ab}),
    .DPRA({sig000001aa, sig000001a9, sig000001a8, sig000001a7, sig000001a6, sig000001a5, sig000001a4})
  );
  RAM128X1D #(
    .INIT ( 128'h00000000000000000000000000000000 ))
  \blk00000148/blk00000177  (
    .WCLK(clk),
    .D(sig0000009e),
    .WE(sig0000002c),
    .SPO(\NLW_blk00000148/blk00000177_SPO_UNCONNECTED ),
    .DPO(\blk00000148/sig00000538 ),
    .A({sig000001b1, sig000001b0, sig000001af, sig000001ae, sig000001ad, sig000001ac, sig000001ab}),
    .DPRA({sig000001aa, sig000001a9, sig000001a8, sig000001a7, sig000001a6, sig000001a5, sig000001a4})
  );
  RAM128X1D #(
    .INIT ( 128'h00000000000000000000000000000000 ))
  \blk00000148/blk00000176  (
    .WCLK(clk),
    .D(sig0000009d),
    .WE(sig0000002c),
    .SPO(\NLW_blk00000148/blk00000176_SPO_UNCONNECTED ),
    .DPO(\blk00000148/sig00000537 ),
    .A({sig000001b1, sig000001b0, sig000001af, sig000001ae, sig000001ad, sig000001ac, sig000001ab}),
    .DPRA({sig000001aa, sig000001a9, sig000001a8, sig000001a7, sig000001a6, sig000001a5, sig000001a4})
  );
  RAM128X1D #(
    .INIT ( 128'h00000000000000000000000000000000 ))
  \blk00000148/blk00000175  (
    .WCLK(clk),
    .D(sig0000009c),
    .WE(sig0000002c),
    .SPO(\NLW_blk00000148/blk00000175_SPO_UNCONNECTED ),
    .DPO(\blk00000148/sig00000536 ),
    .A({sig000001b1, sig000001b0, sig000001af, sig000001ae, sig000001ad, sig000001ac, sig000001ab}),
    .DPRA({sig000001aa, sig000001a9, sig000001a8, sig000001a7, sig000001a6, sig000001a5, sig000001a4})
  );
  RAM128X1D #(
    .INIT ( 128'h00000000000000000000000000000000 ))
  \blk00000148/blk00000174  (
    .WCLK(clk),
    .D(sig0000009b),
    .WE(sig0000002c),
    .SPO(\NLW_blk00000148/blk00000174_SPO_UNCONNECTED ),
    .DPO(\blk00000148/sig00000535 ),
    .A({sig000001b1, sig000001b0, sig000001af, sig000001ae, sig000001ad, sig000001ac, sig000001ab}),
    .DPRA({sig000001aa, sig000001a9, sig000001a8, sig000001a7, sig000001a6, sig000001a5, sig000001a4})
  );
  RAM128X1D #(
    .INIT ( 128'h00000000000000000000000000000000 ))
  \blk00000148/blk00000173  (
    .WCLK(clk),
    .D(sig0000009a),
    .WE(sig0000002c),
    .SPO(\NLW_blk00000148/blk00000173_SPO_UNCONNECTED ),
    .DPO(\blk00000148/sig00000534 ),
    .A({sig000001b1, sig000001b0, sig000001af, sig000001ae, sig000001ad, sig000001ac, sig000001ab}),
    .DPRA({sig000001aa, sig000001a9, sig000001a8, sig000001a7, sig000001a6, sig000001a5, sig000001a4})
  );
  RAM128X1D #(
    .INIT ( 128'h00000000000000000000000000000000 ))
  \blk00000148/blk00000172  (
    .WCLK(clk),
    .D(sig00000099),
    .WE(sig0000002c),
    .SPO(\NLW_blk00000148/blk00000172_SPO_UNCONNECTED ),
    .DPO(\blk00000148/sig00000533 ),
    .A({sig000001b1, sig000001b0, sig000001af, sig000001ae, sig000001ad, sig000001ac, sig000001ab}),
    .DPRA({sig000001aa, sig000001a9, sig000001a8, sig000001a7, sig000001a6, sig000001a5, sig000001a4})
  );
  RAM128X1D #(
    .INIT ( 128'h00000000000000000000000000000000 ))
  \blk00000148/blk00000171  (
    .WCLK(clk),
    .D(sig00000098),
    .WE(sig0000002c),
    .SPO(\NLW_blk00000148/blk00000171_SPO_UNCONNECTED ),
    .DPO(\blk00000148/sig00000532 ),
    .A({sig000001b1, sig000001b0, sig000001af, sig000001ae, sig000001ad, sig000001ac, sig000001ab}),
    .DPRA({sig000001aa, sig000001a9, sig000001a8, sig000001a7, sig000001a6, sig000001a5, sig000001a4})
  );
  RAM128X1D #(
    .INIT ( 128'h00000000000000000000000000000000 ))
  \blk00000148/blk00000170  (
    .WCLK(clk),
    .D(sig00000097),
    .WE(sig0000002c),
    .SPO(\NLW_blk00000148/blk00000170_SPO_UNCONNECTED ),
    .DPO(\blk00000148/sig00000531 ),
    .A({sig000001b1, sig000001b0, sig000001af, sig000001ae, sig000001ad, sig000001ac, sig000001ab}),
    .DPRA({sig000001aa, sig000001a9, sig000001a8, sig000001a7, sig000001a6, sig000001a5, sig000001a4})
  );
  RAM128X1D #(
    .INIT ( 128'h00000000000000000000000000000000 ))
  \blk00000148/blk0000016f  (
    .WCLK(clk),
    .D(sig00000096),
    .WE(sig0000002c),
    .SPO(\NLW_blk00000148/blk0000016f_SPO_UNCONNECTED ),
    .DPO(\blk00000148/sig00000530 ),
    .A({sig000001b1, sig000001b0, sig000001af, sig000001ae, sig000001ad, sig000001ac, sig000001ab}),
    .DPRA({sig000001aa, sig000001a9, sig000001a8, sig000001a7, sig000001a6, sig000001a5, sig000001a4})
  );
  RAM128X1D #(
    .INIT ( 128'h00000000000000000000000000000000 ))
  \blk00000148/blk0000016e  (
    .WCLK(clk),
    .D(sig00000095),
    .WE(sig0000002c),
    .SPO(\NLW_blk00000148/blk0000016e_SPO_UNCONNECTED ),
    .DPO(\blk00000148/sig0000052f ),
    .A({sig000001b1, sig000001b0, sig000001af, sig000001ae, sig000001ad, sig000001ac, sig000001ab}),
    .DPRA({sig000001aa, sig000001a9, sig000001a8, sig000001a7, sig000001a6, sig000001a5, sig000001a4})
  );
  RAM128X1D #(
    .INIT ( 128'h00000000000000000000000000000000 ))
  \blk00000148/blk0000016d  (
    .WCLK(clk),
    .D(sig00000094),
    .WE(sig0000002c),
    .SPO(\NLW_blk00000148/blk0000016d_SPO_UNCONNECTED ),
    .DPO(\blk00000148/sig0000052e ),
    .A({sig000001b1, sig000001b0, sig000001af, sig000001ae, sig000001ad, sig000001ac, sig000001ab}),
    .DPRA({sig000001aa, sig000001a9, sig000001a8, sig000001a7, sig000001a6, sig000001a5, sig000001a4})
  );
  RAM128X1D #(
    .INIT ( 128'h00000000000000000000000000000000 ))
  \blk00000148/blk0000016c  (
    .WCLK(clk),
    .D(sig00000093),
    .WE(sig0000002c),
    .SPO(\NLW_blk00000148/blk0000016c_SPO_UNCONNECTED ),
    .DPO(\blk00000148/sig0000052d ),
    .A({sig000001b1, sig000001b0, sig000001af, sig000001ae, sig000001ad, sig000001ac, sig000001ab}),
    .DPRA({sig000001aa, sig000001a9, sig000001a8, sig000001a7, sig000001a6, sig000001a5, sig000001a4})
  );
  RAM128X1D #(
    .INIT ( 128'h00000000000000000000000000000000 ))
  \blk00000148/blk0000016b  (
    .WCLK(clk),
    .D(sig00000092),
    .WE(sig0000002c),
    .SPO(\NLW_blk00000148/blk0000016b_SPO_UNCONNECTED ),
    .DPO(\blk00000148/sig0000052c ),
    .A({sig000001b1, sig000001b0, sig000001af, sig000001ae, sig000001ad, sig000001ac, sig000001ab}),
    .DPRA({sig000001aa, sig000001a9, sig000001a8, sig000001a7, sig000001a6, sig000001a5, sig000001a4})
  );
  RAM128X1D #(
    .INIT ( 128'h00000000000000000000000000000000 ))
  \blk00000148/blk0000016a  (
    .WCLK(clk),
    .D(sig00000091),
    .WE(sig0000002c),
    .SPO(\NLW_blk00000148/blk0000016a_SPO_UNCONNECTED ),
    .DPO(\blk00000148/sig0000052b ),
    .A({sig000001b1, sig000001b0, sig000001af, sig000001ae, sig000001ad, sig000001ac, sig000001ab}),
    .DPRA({sig000001aa, sig000001a9, sig000001a8, sig000001a7, sig000001a6, sig000001a5, sig000001a4})
  );
  RAM128X1D #(
    .INIT ( 128'h00000000000000000000000000000000 ))
  \blk00000148/blk00000169  (
    .WCLK(clk),
    .D(sig00000090),
    .WE(sig0000002c),
    .SPO(\NLW_blk00000148/blk00000169_SPO_UNCONNECTED ),
    .DPO(\blk00000148/sig0000052a ),
    .A({sig000001b1, sig000001b0, sig000001af, sig000001ae, sig000001ad, sig000001ac, sig000001ab}),
    .DPRA({sig000001aa, sig000001a9, sig000001a8, sig000001a7, sig000001a6, sig000001a5, sig000001a4})
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000148/blk00000168  (
    .C(clk),
    .D(\blk00000148/sig0000052a ),
    .Q(sig0000013c)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000148/blk00000167  (
    .C(clk),
    .D(\blk00000148/sig00000549 ),
    .Q(sig0000015b)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000148/blk00000166  (
    .C(clk),
    .D(\blk00000148/sig00000548 ),
    .Q(sig0000015a)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000148/blk00000165  (
    .C(clk),
    .D(\blk00000148/sig00000547 ),
    .Q(sig00000159)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000148/blk00000164  (
    .C(clk),
    .D(\blk00000148/sig00000546 ),
    .Q(sig00000158)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000148/blk00000163  (
    .C(clk),
    .D(\blk00000148/sig00000545 ),
    .Q(sig00000157)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000148/blk00000162  (
    .C(clk),
    .D(\blk00000148/sig00000544 ),
    .Q(sig00000156)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000148/blk00000161  (
    .C(clk),
    .D(\blk00000148/sig00000543 ),
    .Q(sig00000155)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000148/blk00000160  (
    .C(clk),
    .D(\blk00000148/sig00000542 ),
    .Q(sig00000154)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000148/blk0000015f  (
    .C(clk),
    .D(\blk00000148/sig00000541 ),
    .Q(sig00000153)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000148/blk0000015e  (
    .C(clk),
    .D(\blk00000148/sig00000540 ),
    .Q(sig00000152)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000148/blk0000015d  (
    .C(clk),
    .D(\blk00000148/sig0000053f ),
    .Q(sig00000151)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000148/blk0000015c  (
    .C(clk),
    .D(\blk00000148/sig0000053e ),
    .Q(sig00000150)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000148/blk0000015b  (
    .C(clk),
    .D(\blk00000148/sig0000053d ),
    .Q(sig0000014f)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000148/blk0000015a  (
    .C(clk),
    .D(\blk00000148/sig0000053c ),
    .Q(sig0000014e)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000148/blk00000159  (
    .C(clk),
    .D(\blk00000148/sig0000053b ),
    .Q(sig0000014d)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000148/blk00000158  (
    .C(clk),
    .D(\blk00000148/sig0000053a ),
    .Q(sig0000014c)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000148/blk00000157  (
    .C(clk),
    .D(\blk00000148/sig00000539 ),
    .Q(sig0000014b)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000148/blk00000156  (
    .C(clk),
    .D(\blk00000148/sig00000538 ),
    .Q(sig0000014a)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000148/blk00000155  (
    .C(clk),
    .D(\blk00000148/sig00000537 ),
    .Q(sig00000149)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000148/blk00000154  (
    .C(clk),
    .D(\blk00000148/sig00000536 ),
    .Q(sig00000148)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000148/blk00000153  (
    .C(clk),
    .D(\blk00000148/sig00000535 ),
    .Q(sig00000147)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000148/blk00000152  (
    .C(clk),
    .D(\blk00000148/sig00000534 ),
    .Q(sig00000146)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000148/blk00000151  (
    .C(clk),
    .D(\blk00000148/sig00000533 ),
    .Q(sig00000145)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000148/blk00000150  (
    .C(clk),
    .D(\blk00000148/sig00000532 ),
    .Q(sig00000144)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000148/blk0000014f  (
    .C(clk),
    .D(\blk00000148/sig00000531 ),
    .Q(sig00000143)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000148/blk0000014e  (
    .C(clk),
    .D(\blk00000148/sig00000530 ),
    .Q(sig00000142)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000148/blk0000014d  (
    .C(clk),
    .D(\blk00000148/sig0000052f ),
    .Q(sig00000141)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000148/blk0000014c  (
    .C(clk),
    .D(\blk00000148/sig0000052e ),
    .Q(sig00000140)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000148/blk0000014b  (
    .C(clk),
    .D(\blk00000148/sig0000052d ),
    .Q(sig0000013f)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000148/blk0000014a  (
    .C(clk),
    .D(\blk00000148/sig0000052c ),
    .Q(sig0000013e)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000148/blk00000149  (
    .C(clk),
    .D(\blk00000148/sig0000052b ),
    .Q(sig0000013d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001a9/blk000001aa/blk000001cb  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001a9/blk000001aa/sig000005bf ),
    .Q(sig0000013b)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001a9/blk000001aa/blk000001ca  (
    .A0(\blk000001a9/blk000001aa/sig000005af ),
    .A1(\blk000001a9/blk000001aa/sig000005af ),
    .A2(\blk000001a9/blk000001aa/sig000005af ),
    .A3(\blk000001a9/blk000001aa/sig000005af ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000015b),
    .Q(\blk000001a9/blk000001aa/sig000005bf ),
    .Q15(\NLW_blk000001a9/blk000001aa/blk000001ca_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001a9/blk000001aa/blk000001c9  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001a9/blk000001aa/sig000005be ),
    .Q(sig0000013a)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001a9/blk000001aa/blk000001c8  (
    .A0(\blk000001a9/blk000001aa/sig000005af ),
    .A1(\blk000001a9/blk000001aa/sig000005af ),
    .A2(\blk000001a9/blk000001aa/sig000005af ),
    .A3(\blk000001a9/blk000001aa/sig000005af ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000015a),
    .Q(\blk000001a9/blk000001aa/sig000005be ),
    .Q15(\NLW_blk000001a9/blk000001aa/blk000001c8_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001a9/blk000001aa/blk000001c7  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001a9/blk000001aa/sig000005bd ),
    .Q(sig00000139)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001a9/blk000001aa/blk000001c6  (
    .A0(\blk000001a9/blk000001aa/sig000005af ),
    .A1(\blk000001a9/blk000001aa/sig000005af ),
    .A2(\blk000001a9/blk000001aa/sig000005af ),
    .A3(\blk000001a9/blk000001aa/sig000005af ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000159),
    .Q(\blk000001a9/blk000001aa/sig000005bd ),
    .Q15(\NLW_blk000001a9/blk000001aa/blk000001c6_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001a9/blk000001aa/blk000001c5  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001a9/blk000001aa/sig000005bc ),
    .Q(sig00000138)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001a9/blk000001aa/blk000001c4  (
    .A0(\blk000001a9/blk000001aa/sig000005af ),
    .A1(\blk000001a9/blk000001aa/sig000005af ),
    .A2(\blk000001a9/blk000001aa/sig000005af ),
    .A3(\blk000001a9/blk000001aa/sig000005af ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000158),
    .Q(\blk000001a9/blk000001aa/sig000005bc ),
    .Q15(\NLW_blk000001a9/blk000001aa/blk000001c4_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001a9/blk000001aa/blk000001c3  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001a9/blk000001aa/sig000005bb ),
    .Q(sig00000137)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001a9/blk000001aa/blk000001c2  (
    .A0(\blk000001a9/blk000001aa/sig000005af ),
    .A1(\blk000001a9/blk000001aa/sig000005af ),
    .A2(\blk000001a9/blk000001aa/sig000005af ),
    .A3(\blk000001a9/blk000001aa/sig000005af ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000157),
    .Q(\blk000001a9/blk000001aa/sig000005bb ),
    .Q15(\NLW_blk000001a9/blk000001aa/blk000001c2_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001a9/blk000001aa/blk000001c1  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001a9/blk000001aa/sig000005ba ),
    .Q(sig00000136)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001a9/blk000001aa/blk000001c0  (
    .A0(\blk000001a9/blk000001aa/sig000005af ),
    .A1(\blk000001a9/blk000001aa/sig000005af ),
    .A2(\blk000001a9/blk000001aa/sig000005af ),
    .A3(\blk000001a9/blk000001aa/sig000005af ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000156),
    .Q(\blk000001a9/blk000001aa/sig000005ba ),
    .Q15(\NLW_blk000001a9/blk000001aa/blk000001c0_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001a9/blk000001aa/blk000001bf  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001a9/blk000001aa/sig000005b9 ),
    .Q(sig00000135)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001a9/blk000001aa/blk000001be  (
    .A0(\blk000001a9/blk000001aa/sig000005af ),
    .A1(\blk000001a9/blk000001aa/sig000005af ),
    .A2(\blk000001a9/blk000001aa/sig000005af ),
    .A3(\blk000001a9/blk000001aa/sig000005af ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000155),
    .Q(\blk000001a9/blk000001aa/sig000005b9 ),
    .Q15(\NLW_blk000001a9/blk000001aa/blk000001be_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001a9/blk000001aa/blk000001bd  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001a9/blk000001aa/sig000005b8 ),
    .Q(sig00000134)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001a9/blk000001aa/blk000001bc  (
    .A0(\blk000001a9/blk000001aa/sig000005af ),
    .A1(\blk000001a9/blk000001aa/sig000005af ),
    .A2(\blk000001a9/blk000001aa/sig000005af ),
    .A3(\blk000001a9/blk000001aa/sig000005af ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000154),
    .Q(\blk000001a9/blk000001aa/sig000005b8 ),
    .Q15(\NLW_blk000001a9/blk000001aa/blk000001bc_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001a9/blk000001aa/blk000001bb  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001a9/blk000001aa/sig000005b7 ),
    .Q(sig00000133)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001a9/blk000001aa/blk000001ba  (
    .A0(\blk000001a9/blk000001aa/sig000005af ),
    .A1(\blk000001a9/blk000001aa/sig000005af ),
    .A2(\blk000001a9/blk000001aa/sig000005af ),
    .A3(\blk000001a9/blk000001aa/sig000005af ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000153),
    .Q(\blk000001a9/blk000001aa/sig000005b7 ),
    .Q15(\NLW_blk000001a9/blk000001aa/blk000001ba_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001a9/blk000001aa/blk000001b9  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001a9/blk000001aa/sig000005b6 ),
    .Q(sig00000132)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001a9/blk000001aa/blk000001b8  (
    .A0(\blk000001a9/blk000001aa/sig000005af ),
    .A1(\blk000001a9/blk000001aa/sig000005af ),
    .A2(\blk000001a9/blk000001aa/sig000005af ),
    .A3(\blk000001a9/blk000001aa/sig000005af ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000152),
    .Q(\blk000001a9/blk000001aa/sig000005b6 ),
    .Q15(\NLW_blk000001a9/blk000001aa/blk000001b8_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001a9/blk000001aa/blk000001b7  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001a9/blk000001aa/sig000005b5 ),
    .Q(sig00000131)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001a9/blk000001aa/blk000001b6  (
    .A0(\blk000001a9/blk000001aa/sig000005af ),
    .A1(\blk000001a9/blk000001aa/sig000005af ),
    .A2(\blk000001a9/blk000001aa/sig000005af ),
    .A3(\blk000001a9/blk000001aa/sig000005af ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000151),
    .Q(\blk000001a9/blk000001aa/sig000005b5 ),
    .Q15(\NLW_blk000001a9/blk000001aa/blk000001b6_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001a9/blk000001aa/blk000001b5  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001a9/blk000001aa/sig000005b4 ),
    .Q(sig00000130)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001a9/blk000001aa/blk000001b4  (
    .A0(\blk000001a9/blk000001aa/sig000005af ),
    .A1(\blk000001a9/blk000001aa/sig000005af ),
    .A2(\blk000001a9/blk000001aa/sig000005af ),
    .A3(\blk000001a9/blk000001aa/sig000005af ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000150),
    .Q(\blk000001a9/blk000001aa/sig000005b4 ),
    .Q15(\NLW_blk000001a9/blk000001aa/blk000001b4_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001a9/blk000001aa/blk000001b3  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001a9/blk000001aa/sig000005b3 ),
    .Q(sig0000012f)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001a9/blk000001aa/blk000001b2  (
    .A0(\blk000001a9/blk000001aa/sig000005af ),
    .A1(\blk000001a9/blk000001aa/sig000005af ),
    .A2(\blk000001a9/blk000001aa/sig000005af ),
    .A3(\blk000001a9/blk000001aa/sig000005af ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000014f),
    .Q(\blk000001a9/blk000001aa/sig000005b3 ),
    .Q15(\NLW_blk000001a9/blk000001aa/blk000001b2_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001a9/blk000001aa/blk000001b1  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001a9/blk000001aa/sig000005b2 ),
    .Q(sig0000012e)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001a9/blk000001aa/blk000001b0  (
    .A0(\blk000001a9/blk000001aa/sig000005af ),
    .A1(\blk000001a9/blk000001aa/sig000005af ),
    .A2(\blk000001a9/blk000001aa/sig000005af ),
    .A3(\blk000001a9/blk000001aa/sig000005af ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000014e),
    .Q(\blk000001a9/blk000001aa/sig000005b2 ),
    .Q15(\NLW_blk000001a9/blk000001aa/blk000001b0_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001a9/blk000001aa/blk000001af  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001a9/blk000001aa/sig000005b1 ),
    .Q(sig0000012d)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001a9/blk000001aa/blk000001ae  (
    .A0(\blk000001a9/blk000001aa/sig000005af ),
    .A1(\blk000001a9/blk000001aa/sig000005af ),
    .A2(\blk000001a9/blk000001aa/sig000005af ),
    .A3(\blk000001a9/blk000001aa/sig000005af ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000014d),
    .Q(\blk000001a9/blk000001aa/sig000005b1 ),
    .Q15(\NLW_blk000001a9/blk000001aa/blk000001ae_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001a9/blk000001aa/blk000001ad  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001a9/blk000001aa/sig000005b0 ),
    .Q(sig0000012c)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001a9/blk000001aa/blk000001ac  (
    .A0(\blk000001a9/blk000001aa/sig000005af ),
    .A1(\blk000001a9/blk000001aa/sig000005af ),
    .A2(\blk000001a9/blk000001aa/sig000005af ),
    .A3(\blk000001a9/blk000001aa/sig000005af ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000014c),
    .Q(\blk000001a9/blk000001aa/sig000005b0 ),
    .Q15(\NLW_blk000001a9/blk000001aa/blk000001ac_Q15_UNCONNECTED )
  );
  GND   \blk000001a9/blk000001aa/blk000001ab  (
    .G(\blk000001a9/blk000001aa/sig000005af )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001cc/blk000001cd/blk000001ee  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001cc/blk000001cd/sig00000615 ),
    .Q(sig0000012b)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001cc/blk000001cd/blk000001ed  (
    .A0(\blk000001cc/blk000001cd/sig00000605 ),
    .A1(\blk000001cc/blk000001cd/sig00000605 ),
    .A2(\blk000001cc/blk000001cd/sig00000605 ),
    .A3(\blk000001cc/blk000001cd/sig00000605 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000014b),
    .Q(\blk000001cc/blk000001cd/sig00000615 ),
    .Q15(\NLW_blk000001cc/blk000001cd/blk000001ed_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001cc/blk000001cd/blk000001ec  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001cc/blk000001cd/sig00000614 ),
    .Q(sig0000012a)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001cc/blk000001cd/blk000001eb  (
    .A0(\blk000001cc/blk000001cd/sig00000605 ),
    .A1(\blk000001cc/blk000001cd/sig00000605 ),
    .A2(\blk000001cc/blk000001cd/sig00000605 ),
    .A3(\blk000001cc/blk000001cd/sig00000605 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000014a),
    .Q(\blk000001cc/blk000001cd/sig00000614 ),
    .Q15(\NLW_blk000001cc/blk000001cd/blk000001eb_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001cc/blk000001cd/blk000001ea  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001cc/blk000001cd/sig00000613 ),
    .Q(sig00000129)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001cc/blk000001cd/blk000001e9  (
    .A0(\blk000001cc/blk000001cd/sig00000605 ),
    .A1(\blk000001cc/blk000001cd/sig00000605 ),
    .A2(\blk000001cc/blk000001cd/sig00000605 ),
    .A3(\blk000001cc/blk000001cd/sig00000605 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000149),
    .Q(\blk000001cc/blk000001cd/sig00000613 ),
    .Q15(\NLW_blk000001cc/blk000001cd/blk000001e9_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001cc/blk000001cd/blk000001e8  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001cc/blk000001cd/sig00000612 ),
    .Q(sig00000128)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001cc/blk000001cd/blk000001e7  (
    .A0(\blk000001cc/blk000001cd/sig00000605 ),
    .A1(\blk000001cc/blk000001cd/sig00000605 ),
    .A2(\blk000001cc/blk000001cd/sig00000605 ),
    .A3(\blk000001cc/blk000001cd/sig00000605 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000148),
    .Q(\blk000001cc/blk000001cd/sig00000612 ),
    .Q15(\NLW_blk000001cc/blk000001cd/blk000001e7_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001cc/blk000001cd/blk000001e6  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001cc/blk000001cd/sig00000611 ),
    .Q(sig00000127)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001cc/blk000001cd/blk000001e5  (
    .A0(\blk000001cc/blk000001cd/sig00000605 ),
    .A1(\blk000001cc/blk000001cd/sig00000605 ),
    .A2(\blk000001cc/blk000001cd/sig00000605 ),
    .A3(\blk000001cc/blk000001cd/sig00000605 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000147),
    .Q(\blk000001cc/blk000001cd/sig00000611 ),
    .Q15(\NLW_blk000001cc/blk000001cd/blk000001e5_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001cc/blk000001cd/blk000001e4  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001cc/blk000001cd/sig00000610 ),
    .Q(sig00000126)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001cc/blk000001cd/blk000001e3  (
    .A0(\blk000001cc/blk000001cd/sig00000605 ),
    .A1(\blk000001cc/blk000001cd/sig00000605 ),
    .A2(\blk000001cc/blk000001cd/sig00000605 ),
    .A3(\blk000001cc/blk000001cd/sig00000605 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000146),
    .Q(\blk000001cc/blk000001cd/sig00000610 ),
    .Q15(\NLW_blk000001cc/blk000001cd/blk000001e3_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001cc/blk000001cd/blk000001e2  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001cc/blk000001cd/sig0000060f ),
    .Q(sig00000125)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001cc/blk000001cd/blk000001e1  (
    .A0(\blk000001cc/blk000001cd/sig00000605 ),
    .A1(\blk000001cc/blk000001cd/sig00000605 ),
    .A2(\blk000001cc/blk000001cd/sig00000605 ),
    .A3(\blk000001cc/blk000001cd/sig00000605 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000145),
    .Q(\blk000001cc/blk000001cd/sig0000060f ),
    .Q15(\NLW_blk000001cc/blk000001cd/blk000001e1_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001cc/blk000001cd/blk000001e0  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001cc/blk000001cd/sig0000060e ),
    .Q(sig00000124)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001cc/blk000001cd/blk000001df  (
    .A0(\blk000001cc/blk000001cd/sig00000605 ),
    .A1(\blk000001cc/blk000001cd/sig00000605 ),
    .A2(\blk000001cc/blk000001cd/sig00000605 ),
    .A3(\blk000001cc/blk000001cd/sig00000605 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000144),
    .Q(\blk000001cc/blk000001cd/sig0000060e ),
    .Q15(\NLW_blk000001cc/blk000001cd/blk000001df_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001cc/blk000001cd/blk000001de  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001cc/blk000001cd/sig0000060d ),
    .Q(sig00000123)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001cc/blk000001cd/blk000001dd  (
    .A0(\blk000001cc/blk000001cd/sig00000605 ),
    .A1(\blk000001cc/blk000001cd/sig00000605 ),
    .A2(\blk000001cc/blk000001cd/sig00000605 ),
    .A3(\blk000001cc/blk000001cd/sig00000605 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000143),
    .Q(\blk000001cc/blk000001cd/sig0000060d ),
    .Q15(\NLW_blk000001cc/blk000001cd/blk000001dd_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001cc/blk000001cd/blk000001dc  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001cc/blk000001cd/sig0000060c ),
    .Q(sig00000122)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001cc/blk000001cd/blk000001db  (
    .A0(\blk000001cc/blk000001cd/sig00000605 ),
    .A1(\blk000001cc/blk000001cd/sig00000605 ),
    .A2(\blk000001cc/blk000001cd/sig00000605 ),
    .A3(\blk000001cc/blk000001cd/sig00000605 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000142),
    .Q(\blk000001cc/blk000001cd/sig0000060c ),
    .Q15(\NLW_blk000001cc/blk000001cd/blk000001db_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001cc/blk000001cd/blk000001da  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001cc/blk000001cd/sig0000060b ),
    .Q(sig00000121)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001cc/blk000001cd/blk000001d9  (
    .A0(\blk000001cc/blk000001cd/sig00000605 ),
    .A1(\blk000001cc/blk000001cd/sig00000605 ),
    .A2(\blk000001cc/blk000001cd/sig00000605 ),
    .A3(\blk000001cc/blk000001cd/sig00000605 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000141),
    .Q(\blk000001cc/blk000001cd/sig0000060b ),
    .Q15(\NLW_blk000001cc/blk000001cd/blk000001d9_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001cc/blk000001cd/blk000001d8  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001cc/blk000001cd/sig0000060a ),
    .Q(sig00000120)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001cc/blk000001cd/blk000001d7  (
    .A0(\blk000001cc/blk000001cd/sig00000605 ),
    .A1(\blk000001cc/blk000001cd/sig00000605 ),
    .A2(\blk000001cc/blk000001cd/sig00000605 ),
    .A3(\blk000001cc/blk000001cd/sig00000605 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000140),
    .Q(\blk000001cc/blk000001cd/sig0000060a ),
    .Q15(\NLW_blk000001cc/blk000001cd/blk000001d7_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001cc/blk000001cd/blk000001d6  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001cc/blk000001cd/sig00000609 ),
    .Q(sig0000011f)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001cc/blk000001cd/blk000001d5  (
    .A0(\blk000001cc/blk000001cd/sig00000605 ),
    .A1(\blk000001cc/blk000001cd/sig00000605 ),
    .A2(\blk000001cc/blk000001cd/sig00000605 ),
    .A3(\blk000001cc/blk000001cd/sig00000605 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000013f),
    .Q(\blk000001cc/blk000001cd/sig00000609 ),
    .Q15(\NLW_blk000001cc/blk000001cd/blk000001d5_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001cc/blk000001cd/blk000001d4  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001cc/blk000001cd/sig00000608 ),
    .Q(sig0000011e)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001cc/blk000001cd/blk000001d3  (
    .A0(\blk000001cc/blk000001cd/sig00000605 ),
    .A1(\blk000001cc/blk000001cd/sig00000605 ),
    .A2(\blk000001cc/blk000001cd/sig00000605 ),
    .A3(\blk000001cc/blk000001cd/sig00000605 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000013e),
    .Q(\blk000001cc/blk000001cd/sig00000608 ),
    .Q15(\NLW_blk000001cc/blk000001cd/blk000001d3_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001cc/blk000001cd/blk000001d2  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001cc/blk000001cd/sig00000607 ),
    .Q(sig0000011d)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001cc/blk000001cd/blk000001d1  (
    .A0(\blk000001cc/blk000001cd/sig00000605 ),
    .A1(\blk000001cc/blk000001cd/sig00000605 ),
    .A2(\blk000001cc/blk000001cd/sig00000605 ),
    .A3(\blk000001cc/blk000001cd/sig00000605 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000013d),
    .Q(\blk000001cc/blk000001cd/sig00000607 ),
    .Q15(\NLW_blk000001cc/blk000001cd/blk000001d1_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001cc/blk000001cd/blk000001d0  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001cc/blk000001cd/sig00000606 ),
    .Q(sig0000011c)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001cc/blk000001cd/blk000001cf  (
    .A0(\blk000001cc/blk000001cd/sig00000605 ),
    .A1(\blk000001cc/blk000001cd/sig00000605 ),
    .A2(\blk000001cc/blk000001cd/sig00000605 ),
    .A3(\blk000001cc/blk000001cd/sig00000605 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000013c),
    .Q(\blk000001cc/blk000001cd/sig00000606 ),
    .Q15(\NLW_blk000001cc/blk000001cd/blk000001cf_Q15_UNCONNECTED )
  );
  GND   \blk000001cc/blk000001cd/blk000001ce  (
    .G(\blk000001cc/blk000001cd/sig00000605 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001ef/blk000001f0/blk000001f4  (
    .C(clk),
    .CE(\blk000001ef/blk000001f0/sig0000061d ),
    .D(\blk000001ef/blk000001f0/sig0000061e ),
    .Q(sig0000011b)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001ef/blk000001f0/blk000001f3  (
    .A0(\blk000001ef/blk000001f0/sig0000061c ),
    .A1(\blk000001ef/blk000001f0/sig0000061d ),
    .A2(\blk000001ef/blk000001f0/sig0000061c ),
    .A3(\blk000001ef/blk000001f0/sig0000061c ),
    .CE(\blk000001ef/blk000001f0/sig0000061d ),
    .CLK(clk),
    .D(sig0000000a),
    .Q(\blk000001ef/blk000001f0/sig0000061e ),
    .Q15(\NLW_blk000001ef/blk000001f0/blk000001f3_Q15_UNCONNECTED )
  );
  VCC   \blk000001ef/blk000001f0/blk000001f2  (
    .P(\blk000001ef/blk000001f0/sig0000061d )
  );
  GND   \blk000001ef/blk000001f0/blk000001f1  (
    .G(\blk000001ef/blk000001f0/sig0000061c )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001f5/blk000001f6/blk00000218  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001f5/blk000001f6/sig00000675 ),
    .Q(sig0000011a)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001f5/blk000001f6/blk00000217  (
    .A0(\blk000001f5/blk000001f6/sig00000664 ),
    .A1(\blk000001f5/blk000001f6/sig00000664 ),
    .A2(\blk000001f5/blk000001f6/sig00000665 ),
    .A3(\blk000001f5/blk000001f6/sig00000664 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000005f),
    .Q(\blk000001f5/blk000001f6/sig00000675 ),
    .Q15(\NLW_blk000001f5/blk000001f6/blk00000217_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001f5/blk000001f6/blk00000216  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001f5/blk000001f6/sig00000674 ),
    .Q(sig00000119)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001f5/blk000001f6/blk00000215  (
    .A0(\blk000001f5/blk000001f6/sig00000664 ),
    .A1(\blk000001f5/blk000001f6/sig00000664 ),
    .A2(\blk000001f5/blk000001f6/sig00000665 ),
    .A3(\blk000001f5/blk000001f6/sig00000664 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000005e),
    .Q(\blk000001f5/blk000001f6/sig00000674 ),
    .Q15(\NLW_blk000001f5/blk000001f6/blk00000215_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001f5/blk000001f6/blk00000214  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001f5/blk000001f6/sig00000673 ),
    .Q(sig00000118)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001f5/blk000001f6/blk00000213  (
    .A0(\blk000001f5/blk000001f6/sig00000664 ),
    .A1(\blk000001f5/blk000001f6/sig00000664 ),
    .A2(\blk000001f5/blk000001f6/sig00000665 ),
    .A3(\blk000001f5/blk000001f6/sig00000664 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000005d),
    .Q(\blk000001f5/blk000001f6/sig00000673 ),
    .Q15(\NLW_blk000001f5/blk000001f6/blk00000213_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001f5/blk000001f6/blk00000212  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001f5/blk000001f6/sig00000672 ),
    .Q(sig00000117)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001f5/blk000001f6/blk00000211  (
    .A0(\blk000001f5/blk000001f6/sig00000664 ),
    .A1(\blk000001f5/blk000001f6/sig00000664 ),
    .A2(\blk000001f5/blk000001f6/sig00000665 ),
    .A3(\blk000001f5/blk000001f6/sig00000664 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000005c),
    .Q(\blk000001f5/blk000001f6/sig00000672 ),
    .Q15(\NLW_blk000001f5/blk000001f6/blk00000211_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001f5/blk000001f6/blk00000210  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001f5/blk000001f6/sig00000671 ),
    .Q(sig00000116)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001f5/blk000001f6/blk0000020f  (
    .A0(\blk000001f5/blk000001f6/sig00000664 ),
    .A1(\blk000001f5/blk000001f6/sig00000664 ),
    .A2(\blk000001f5/blk000001f6/sig00000665 ),
    .A3(\blk000001f5/blk000001f6/sig00000664 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000005b),
    .Q(\blk000001f5/blk000001f6/sig00000671 ),
    .Q15(\NLW_blk000001f5/blk000001f6/blk0000020f_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001f5/blk000001f6/blk0000020e  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001f5/blk000001f6/sig00000670 ),
    .Q(sig00000115)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001f5/blk000001f6/blk0000020d  (
    .A0(\blk000001f5/blk000001f6/sig00000664 ),
    .A1(\blk000001f5/blk000001f6/sig00000664 ),
    .A2(\blk000001f5/blk000001f6/sig00000665 ),
    .A3(\blk000001f5/blk000001f6/sig00000664 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000005a),
    .Q(\blk000001f5/blk000001f6/sig00000670 ),
    .Q15(\NLW_blk000001f5/blk000001f6/blk0000020d_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001f5/blk000001f6/blk0000020c  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001f5/blk000001f6/sig0000066f ),
    .Q(sig00000114)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001f5/blk000001f6/blk0000020b  (
    .A0(\blk000001f5/blk000001f6/sig00000664 ),
    .A1(\blk000001f5/blk000001f6/sig00000664 ),
    .A2(\blk000001f5/blk000001f6/sig00000665 ),
    .A3(\blk000001f5/blk000001f6/sig00000664 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000059),
    .Q(\blk000001f5/blk000001f6/sig0000066f ),
    .Q15(\NLW_blk000001f5/blk000001f6/blk0000020b_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001f5/blk000001f6/blk0000020a  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001f5/blk000001f6/sig0000066e ),
    .Q(sig00000113)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001f5/blk000001f6/blk00000209  (
    .A0(\blk000001f5/blk000001f6/sig00000664 ),
    .A1(\blk000001f5/blk000001f6/sig00000664 ),
    .A2(\blk000001f5/blk000001f6/sig00000665 ),
    .A3(\blk000001f5/blk000001f6/sig00000664 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000058),
    .Q(\blk000001f5/blk000001f6/sig0000066e ),
    .Q15(\NLW_blk000001f5/blk000001f6/blk00000209_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001f5/blk000001f6/blk00000208  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001f5/blk000001f6/sig0000066d ),
    .Q(sig00000112)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001f5/blk000001f6/blk00000207  (
    .A0(\blk000001f5/blk000001f6/sig00000664 ),
    .A1(\blk000001f5/blk000001f6/sig00000664 ),
    .A2(\blk000001f5/blk000001f6/sig00000665 ),
    .A3(\blk000001f5/blk000001f6/sig00000664 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000057),
    .Q(\blk000001f5/blk000001f6/sig0000066d ),
    .Q15(\NLW_blk000001f5/blk000001f6/blk00000207_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001f5/blk000001f6/blk00000206  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001f5/blk000001f6/sig0000066c ),
    .Q(sig00000111)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001f5/blk000001f6/blk00000205  (
    .A0(\blk000001f5/blk000001f6/sig00000664 ),
    .A1(\blk000001f5/blk000001f6/sig00000664 ),
    .A2(\blk000001f5/blk000001f6/sig00000665 ),
    .A3(\blk000001f5/blk000001f6/sig00000664 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000056),
    .Q(\blk000001f5/blk000001f6/sig0000066c ),
    .Q15(\NLW_blk000001f5/blk000001f6/blk00000205_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001f5/blk000001f6/blk00000204  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001f5/blk000001f6/sig0000066b ),
    .Q(sig00000110)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001f5/blk000001f6/blk00000203  (
    .A0(\blk000001f5/blk000001f6/sig00000664 ),
    .A1(\blk000001f5/blk000001f6/sig00000664 ),
    .A2(\blk000001f5/blk000001f6/sig00000665 ),
    .A3(\blk000001f5/blk000001f6/sig00000664 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000055),
    .Q(\blk000001f5/blk000001f6/sig0000066b ),
    .Q15(\NLW_blk000001f5/blk000001f6/blk00000203_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001f5/blk000001f6/blk00000202  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001f5/blk000001f6/sig0000066a ),
    .Q(sig0000010f)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001f5/blk000001f6/blk00000201  (
    .A0(\blk000001f5/blk000001f6/sig00000664 ),
    .A1(\blk000001f5/blk000001f6/sig00000664 ),
    .A2(\blk000001f5/blk000001f6/sig00000665 ),
    .A3(\blk000001f5/blk000001f6/sig00000664 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000054),
    .Q(\blk000001f5/blk000001f6/sig0000066a ),
    .Q15(\NLW_blk000001f5/blk000001f6/blk00000201_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001f5/blk000001f6/blk00000200  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001f5/blk000001f6/sig00000669 ),
    .Q(sig0000010e)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001f5/blk000001f6/blk000001ff  (
    .A0(\blk000001f5/blk000001f6/sig00000664 ),
    .A1(\blk000001f5/blk000001f6/sig00000664 ),
    .A2(\blk000001f5/blk000001f6/sig00000665 ),
    .A3(\blk000001f5/blk000001f6/sig00000664 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000053),
    .Q(\blk000001f5/blk000001f6/sig00000669 ),
    .Q15(\NLW_blk000001f5/blk000001f6/blk000001ff_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001f5/blk000001f6/blk000001fe  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001f5/blk000001f6/sig00000668 ),
    .Q(sig0000010d)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001f5/blk000001f6/blk000001fd  (
    .A0(\blk000001f5/blk000001f6/sig00000664 ),
    .A1(\blk000001f5/blk000001f6/sig00000664 ),
    .A2(\blk000001f5/blk000001f6/sig00000665 ),
    .A3(\blk000001f5/blk000001f6/sig00000664 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000052),
    .Q(\blk000001f5/blk000001f6/sig00000668 ),
    .Q15(\NLW_blk000001f5/blk000001f6/blk000001fd_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001f5/blk000001f6/blk000001fc  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001f5/blk000001f6/sig00000667 ),
    .Q(sig0000010c)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001f5/blk000001f6/blk000001fb  (
    .A0(\blk000001f5/blk000001f6/sig00000664 ),
    .A1(\blk000001f5/blk000001f6/sig00000664 ),
    .A2(\blk000001f5/blk000001f6/sig00000665 ),
    .A3(\blk000001f5/blk000001f6/sig00000664 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000051),
    .Q(\blk000001f5/blk000001f6/sig00000667 ),
    .Q15(\NLW_blk000001f5/blk000001f6/blk000001fb_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000001f5/blk000001f6/blk000001fa  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000001f5/blk000001f6/sig00000666 ),
    .Q(sig0000010b)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000001f5/blk000001f6/blk000001f9  (
    .A0(\blk000001f5/blk000001f6/sig00000664 ),
    .A1(\blk000001f5/blk000001f6/sig00000664 ),
    .A2(\blk000001f5/blk000001f6/sig00000665 ),
    .A3(\blk000001f5/blk000001f6/sig00000664 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000050),
    .Q(\blk000001f5/blk000001f6/sig00000666 ),
    .Q15(\NLW_blk000001f5/blk000001f6/blk000001f9_Q15_UNCONNECTED )
  );
  VCC   \blk000001f5/blk000001f6/blk000001f8  (
    .P(\blk000001f5/blk000001f6/sig00000665 )
  );
  GND   \blk000001f5/blk000001f6/blk000001f7  (
    .G(\blk000001f5/blk000001f6/sig00000664 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000219/blk0000021a/blk0000023c  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000219/blk0000021a/sig000006cc ),
    .Q(sig0000010a)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000219/blk0000021a/blk0000023b  (
    .A0(\blk00000219/blk0000021a/sig000006bb ),
    .A1(\blk00000219/blk0000021a/sig000006bb ),
    .A2(\blk00000219/blk0000021a/sig000006bc ),
    .A3(\blk00000219/blk0000021a/sig000006bb ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000004f),
    .Q(\blk00000219/blk0000021a/sig000006cc ),
    .Q15(\NLW_blk00000219/blk0000021a/blk0000023b_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000219/blk0000021a/blk0000023a  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000219/blk0000021a/sig000006cb ),
    .Q(sig00000109)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000219/blk0000021a/blk00000239  (
    .A0(\blk00000219/blk0000021a/sig000006bb ),
    .A1(\blk00000219/blk0000021a/sig000006bb ),
    .A2(\blk00000219/blk0000021a/sig000006bc ),
    .A3(\blk00000219/blk0000021a/sig000006bb ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000004e),
    .Q(\blk00000219/blk0000021a/sig000006cb ),
    .Q15(\NLW_blk00000219/blk0000021a/blk00000239_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000219/blk0000021a/blk00000238  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000219/blk0000021a/sig000006ca ),
    .Q(sig00000108)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000219/blk0000021a/blk00000237  (
    .A0(\blk00000219/blk0000021a/sig000006bb ),
    .A1(\blk00000219/blk0000021a/sig000006bb ),
    .A2(\blk00000219/blk0000021a/sig000006bc ),
    .A3(\blk00000219/blk0000021a/sig000006bb ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000004d),
    .Q(\blk00000219/blk0000021a/sig000006ca ),
    .Q15(\NLW_blk00000219/blk0000021a/blk00000237_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000219/blk0000021a/blk00000236  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000219/blk0000021a/sig000006c9 ),
    .Q(sig00000107)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000219/blk0000021a/blk00000235  (
    .A0(\blk00000219/blk0000021a/sig000006bb ),
    .A1(\blk00000219/blk0000021a/sig000006bb ),
    .A2(\blk00000219/blk0000021a/sig000006bc ),
    .A3(\blk00000219/blk0000021a/sig000006bb ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000004c),
    .Q(\blk00000219/blk0000021a/sig000006c9 ),
    .Q15(\NLW_blk00000219/blk0000021a/blk00000235_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000219/blk0000021a/blk00000234  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000219/blk0000021a/sig000006c8 ),
    .Q(sig00000106)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000219/blk0000021a/blk00000233  (
    .A0(\blk00000219/blk0000021a/sig000006bb ),
    .A1(\blk00000219/blk0000021a/sig000006bb ),
    .A2(\blk00000219/blk0000021a/sig000006bc ),
    .A3(\blk00000219/blk0000021a/sig000006bb ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000004b),
    .Q(\blk00000219/blk0000021a/sig000006c8 ),
    .Q15(\NLW_blk00000219/blk0000021a/blk00000233_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000219/blk0000021a/blk00000232  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000219/blk0000021a/sig000006c7 ),
    .Q(sig00000105)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000219/blk0000021a/blk00000231  (
    .A0(\blk00000219/blk0000021a/sig000006bb ),
    .A1(\blk00000219/blk0000021a/sig000006bb ),
    .A2(\blk00000219/blk0000021a/sig000006bc ),
    .A3(\blk00000219/blk0000021a/sig000006bb ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig0000004a),
    .Q(\blk00000219/blk0000021a/sig000006c7 ),
    .Q15(\NLW_blk00000219/blk0000021a/blk00000231_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000219/blk0000021a/blk00000230  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000219/blk0000021a/sig000006c6 ),
    .Q(sig00000104)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000219/blk0000021a/blk0000022f  (
    .A0(\blk00000219/blk0000021a/sig000006bb ),
    .A1(\blk00000219/blk0000021a/sig000006bb ),
    .A2(\blk00000219/blk0000021a/sig000006bc ),
    .A3(\blk00000219/blk0000021a/sig000006bb ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000049),
    .Q(\blk00000219/blk0000021a/sig000006c6 ),
    .Q15(\NLW_blk00000219/blk0000021a/blk0000022f_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000219/blk0000021a/blk0000022e  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000219/blk0000021a/sig000006c5 ),
    .Q(sig00000103)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000219/blk0000021a/blk0000022d  (
    .A0(\blk00000219/blk0000021a/sig000006bb ),
    .A1(\blk00000219/blk0000021a/sig000006bb ),
    .A2(\blk00000219/blk0000021a/sig000006bc ),
    .A3(\blk00000219/blk0000021a/sig000006bb ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000048),
    .Q(\blk00000219/blk0000021a/sig000006c5 ),
    .Q15(\NLW_blk00000219/blk0000021a/blk0000022d_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000219/blk0000021a/blk0000022c  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000219/blk0000021a/sig000006c4 ),
    .Q(sig00000102)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000219/blk0000021a/blk0000022b  (
    .A0(\blk00000219/blk0000021a/sig000006bb ),
    .A1(\blk00000219/blk0000021a/sig000006bb ),
    .A2(\blk00000219/blk0000021a/sig000006bc ),
    .A3(\blk00000219/blk0000021a/sig000006bb ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000047),
    .Q(\blk00000219/blk0000021a/sig000006c4 ),
    .Q15(\NLW_blk00000219/blk0000021a/blk0000022b_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000219/blk0000021a/blk0000022a  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000219/blk0000021a/sig000006c3 ),
    .Q(sig00000101)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000219/blk0000021a/blk00000229  (
    .A0(\blk00000219/blk0000021a/sig000006bb ),
    .A1(\blk00000219/blk0000021a/sig000006bb ),
    .A2(\blk00000219/blk0000021a/sig000006bc ),
    .A3(\blk00000219/blk0000021a/sig000006bb ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000046),
    .Q(\blk00000219/blk0000021a/sig000006c3 ),
    .Q15(\NLW_blk00000219/blk0000021a/blk00000229_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000219/blk0000021a/blk00000228  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000219/blk0000021a/sig000006c2 ),
    .Q(sig00000100)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000219/blk0000021a/blk00000227  (
    .A0(\blk00000219/blk0000021a/sig000006bb ),
    .A1(\blk00000219/blk0000021a/sig000006bb ),
    .A2(\blk00000219/blk0000021a/sig000006bc ),
    .A3(\blk00000219/blk0000021a/sig000006bb ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000045),
    .Q(\blk00000219/blk0000021a/sig000006c2 ),
    .Q15(\NLW_blk00000219/blk0000021a/blk00000227_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000219/blk0000021a/blk00000226  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000219/blk0000021a/sig000006c1 ),
    .Q(sig000000ff)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000219/blk0000021a/blk00000225  (
    .A0(\blk00000219/blk0000021a/sig000006bb ),
    .A1(\blk00000219/blk0000021a/sig000006bb ),
    .A2(\blk00000219/blk0000021a/sig000006bc ),
    .A3(\blk00000219/blk0000021a/sig000006bb ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000044),
    .Q(\blk00000219/blk0000021a/sig000006c1 ),
    .Q15(\NLW_blk00000219/blk0000021a/blk00000225_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000219/blk0000021a/blk00000224  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000219/blk0000021a/sig000006c0 ),
    .Q(sig000000fe)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000219/blk0000021a/blk00000223  (
    .A0(\blk00000219/blk0000021a/sig000006bb ),
    .A1(\blk00000219/blk0000021a/sig000006bb ),
    .A2(\blk00000219/blk0000021a/sig000006bc ),
    .A3(\blk00000219/blk0000021a/sig000006bb ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000043),
    .Q(\blk00000219/blk0000021a/sig000006c0 ),
    .Q15(\NLW_blk00000219/blk0000021a/blk00000223_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000219/blk0000021a/blk00000222  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000219/blk0000021a/sig000006bf ),
    .Q(sig000000fd)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000219/blk0000021a/blk00000221  (
    .A0(\blk00000219/blk0000021a/sig000006bb ),
    .A1(\blk00000219/blk0000021a/sig000006bb ),
    .A2(\blk00000219/blk0000021a/sig000006bc ),
    .A3(\blk00000219/blk0000021a/sig000006bb ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000042),
    .Q(\blk00000219/blk0000021a/sig000006bf ),
    .Q15(\NLW_blk00000219/blk0000021a/blk00000221_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000219/blk0000021a/blk00000220  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000219/blk0000021a/sig000006be ),
    .Q(sig000000fc)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000219/blk0000021a/blk0000021f  (
    .A0(\blk00000219/blk0000021a/sig000006bb ),
    .A1(\blk00000219/blk0000021a/sig000006bb ),
    .A2(\blk00000219/blk0000021a/sig000006bc ),
    .A3(\blk00000219/blk0000021a/sig000006bb ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000041),
    .Q(\blk00000219/blk0000021a/sig000006be ),
    .Q15(\NLW_blk00000219/blk0000021a/blk0000021f_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000219/blk0000021a/blk0000021e  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000219/blk0000021a/sig000006bd ),
    .Q(sig000000fb)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000219/blk0000021a/blk0000021d  (
    .A0(\blk00000219/blk0000021a/sig000006bb ),
    .A1(\blk00000219/blk0000021a/sig000006bb ),
    .A2(\blk00000219/blk0000021a/sig000006bc ),
    .A3(\blk00000219/blk0000021a/sig000006bb ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000040),
    .Q(\blk00000219/blk0000021a/sig000006bd ),
    .Q15(\NLW_blk00000219/blk0000021a/blk0000021d_Q15_UNCONNECTED )
  );
  VCC   \blk00000219/blk0000021a/blk0000021c  (
    .P(\blk00000219/blk0000021a/sig000006bc )
  );
  GND   \blk00000219/blk0000021a/blk0000021b  (
    .G(\blk00000219/blk0000021a/sig000006bb )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk0000023d/blk0000023e/blk00000242  (
    .C(clk),
    .CE(\blk0000023d/blk0000023e/sig000006d4 ),
    .D(\blk0000023d/blk0000023e/sig000006d5 ),
    .Q(sig000000fa)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk0000023d/blk0000023e/blk00000241  (
    .A0(\blk0000023d/blk0000023e/sig000006d4 ),
    .A1(\blk0000023d/blk0000023e/sig000006d3 ),
    .A2(\blk0000023d/blk0000023e/sig000006d4 ),
    .A3(\blk0000023d/blk0000023e/sig000006d3 ),
    .CE(\blk0000023d/blk0000023e/sig000006d4 ),
    .CLK(clk),
    .D(sig0000008f),
    .Q(\blk0000023d/blk0000023e/sig000006d5 ),
    .Q15(\NLW_blk0000023d/blk0000023e/blk00000241_Q15_UNCONNECTED )
  );
  VCC   \blk0000023d/blk0000023e/blk00000240  (
    .P(\blk0000023d/blk0000023e/sig000006d4 )
  );
  GND   \blk0000023d/blk0000023e/blk0000023f  (
    .G(\blk0000023d/blk0000023e/sig000006d3 )
  );
  INV   \blk00000243/blk00000297  (
    .I(sig0000002b),
    .O(\blk00000243/sig00000753 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000243/blk00000296  (
    .I0(sig0000011a),
    .I1(sig000001a3),
    .I2(sig0000002b),
    .O(\blk00000243/sig00000754 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000243/blk00000295  (
    .I0(sig00000111),
    .I1(sig00000199),
    .I2(sig0000002b),
    .O(\blk00000243/sig00000735 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000243/blk00000294  (
    .I0(sig00000110),
    .I1(sig00000198),
    .I2(sig0000002b),
    .O(\blk00000243/sig00000736 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000243/blk00000293  (
    .I0(sig0000010f),
    .I1(sig00000197),
    .I2(sig0000002b),
    .O(\blk00000243/sig00000737 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000243/blk00000292  (
    .I0(sig0000010e),
    .I1(sig00000196),
    .I2(sig0000002b),
    .O(\blk00000243/sig00000738 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000243/blk00000291  (
    .I0(sig0000010d),
    .I1(sig00000195),
    .I2(sig0000002b),
    .O(\blk00000243/sig00000739 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000243/blk00000290  (
    .I0(sig0000010c),
    .I1(sig00000194),
    .I2(sig0000002b),
    .O(\blk00000243/sig0000073a )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000243/blk0000028f  (
    .I0(sig0000010b),
    .I1(sig00000193),
    .I2(sig0000002b),
    .O(\blk00000243/sig0000073b )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000243/blk0000028e  (
    .I0(sig00000192),
    .I1(sig0000002b),
    .O(\blk00000243/sig0000073c )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000243/blk0000028d  (
    .I0(sig00000191),
    .I1(sig0000002b),
    .O(\blk00000243/sig0000073d )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000243/blk0000028c  (
    .I0(sig0000011a),
    .I1(sig000001a3),
    .I2(sig0000002b),
    .O(\blk00000243/sig0000072b )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000243/blk0000028b  (
    .I0(sig0000011a),
    .I1(sig000001a2),
    .I2(sig0000002b),
    .O(\blk00000243/sig0000072c )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000243/blk0000028a  (
    .I0(sig00000119),
    .I1(sig000001a1),
    .I2(sig0000002b),
    .O(\blk00000243/sig0000072d )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000243/blk00000289  (
    .I0(sig00000118),
    .I1(sig000001a0),
    .I2(sig0000002b),
    .O(\blk00000243/sig0000072e )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000243/blk00000288  (
    .I0(sig00000117),
    .I1(sig0000019f),
    .I2(sig0000002b),
    .O(\blk00000243/sig0000072f )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000243/blk00000287  (
    .I0(sig00000116),
    .I1(sig0000019e),
    .I2(sig0000002b),
    .O(\blk00000243/sig00000730 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000243/blk00000286  (
    .I0(sig00000115),
    .I1(sig0000019d),
    .I2(sig0000002b),
    .O(\blk00000243/sig00000731 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000243/blk00000285  (
    .I0(sig00000114),
    .I1(sig0000019c),
    .I2(sig0000002b),
    .O(\blk00000243/sig00000732 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000243/blk00000284  (
    .I0(sig00000113),
    .I1(sig0000019b),
    .I2(sig0000002b),
    .O(\blk00000243/sig00000733 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000243/blk00000283  (
    .I0(sig00000112),
    .I1(sig0000019a),
    .I2(sig0000002b),
    .O(\blk00000243/sig00000734 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000243/blk00000282  (
    .I0(sig00000190),
    .I1(sig0000002b),
    .O(\blk00000243/sig0000073e )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000243/blk00000281  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000243/sig0000072a ),
    .Q(sig000000e5)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000243/blk00000280  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000243/sig00000729 ),
    .Q(sig000000e6)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000243/blk0000027f  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000243/sig00000728 ),
    .Q(sig000000e7)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000243/blk0000027e  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000243/sig00000727 ),
    .Q(sig000000e8)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000243/blk0000027d  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000243/sig00000726 ),
    .Q(sig000000e9)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000243/blk0000027c  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000243/sig00000725 ),
    .Q(sig000000ea)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000243/blk0000027b  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000243/sig00000724 ),
    .Q(sig000000eb)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000243/blk0000027a  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000243/sig00000723 ),
    .Q(sig000000ec)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000243/blk00000279  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000243/sig00000722 ),
    .Q(sig000000ed)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000243/blk00000278  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000243/sig00000721 ),
    .Q(sig000000ee)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000243/blk00000277  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000243/sig00000720 ),
    .Q(sig000000ef)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000243/blk00000276  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000243/sig0000071f ),
    .Q(sig000000f0)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000243/blk00000275  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000243/sig0000071e ),
    .Q(sig000000f1)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000243/blk00000274  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000243/sig0000071d ),
    .Q(sig000000f2)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000243/blk00000273  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000243/sig0000071c ),
    .Q(sig000000f3)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000243/blk00000272  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000243/sig0000071b ),
    .Q(sig000000f4)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000243/blk00000271  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000243/sig0000071a ),
    .Q(sig000000f5)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000243/blk00000270  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000243/sig00000719 ),
    .Q(sig000000f6)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000243/blk0000026f  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000243/sig00000718 ),
    .Q(sig000000f7)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000243/blk0000026e  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000243/sig00000717 ),
    .Q(sig000000f8)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000243/blk0000026d  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000243/sig00000716 ),
    .Q(sig000000f9)
  );
  MUXCY   \blk00000243/blk0000026c  (
    .CI(\blk00000243/sig00000753 ),
    .DI(sig00000002),
    .S(\blk00000243/sig0000073e ),
    .O(\blk00000243/sig00000752 )
  );
  MUXCY   \blk00000243/blk0000026b  (
    .CI(\blk00000243/sig00000752 ),
    .DI(sig00000002),
    .S(\blk00000243/sig0000073d ),
    .O(\blk00000243/sig00000751 )
  );
  MUXCY   \blk00000243/blk0000026a  (
    .CI(\blk00000243/sig00000751 ),
    .DI(sig00000002),
    .S(\blk00000243/sig0000073c ),
    .O(\blk00000243/sig00000750 )
  );
  MUXCY   \blk00000243/blk00000269  (
    .CI(\blk00000243/sig00000750 ),
    .DI(sig0000010b),
    .S(\blk00000243/sig0000073b ),
    .O(\blk00000243/sig0000074f )
  );
  MUXCY   \blk00000243/blk00000268  (
    .CI(\blk00000243/sig0000074f ),
    .DI(sig0000010c),
    .S(\blk00000243/sig0000073a ),
    .O(\blk00000243/sig0000074e )
  );
  MUXCY   \blk00000243/blk00000267  (
    .CI(\blk00000243/sig0000074e ),
    .DI(sig0000010d),
    .S(\blk00000243/sig00000739 ),
    .O(\blk00000243/sig0000074d )
  );
  MUXCY   \blk00000243/blk00000266  (
    .CI(\blk00000243/sig0000074d ),
    .DI(sig0000010e),
    .S(\blk00000243/sig00000738 ),
    .O(\blk00000243/sig0000074c )
  );
  MUXCY   \blk00000243/blk00000265  (
    .CI(\blk00000243/sig0000074c ),
    .DI(sig0000010f),
    .S(\blk00000243/sig00000737 ),
    .O(\blk00000243/sig0000074b )
  );
  MUXCY   \blk00000243/blk00000264  (
    .CI(\blk00000243/sig0000074b ),
    .DI(sig00000110),
    .S(\blk00000243/sig00000736 ),
    .O(\blk00000243/sig0000074a )
  );
  MUXCY   \blk00000243/blk00000263  (
    .CI(\blk00000243/sig0000074a ),
    .DI(sig00000111),
    .S(\blk00000243/sig00000735 ),
    .O(\blk00000243/sig00000749 )
  );
  MUXCY   \blk00000243/blk00000262  (
    .CI(\blk00000243/sig00000749 ),
    .DI(sig00000112),
    .S(\blk00000243/sig00000734 ),
    .O(\blk00000243/sig00000748 )
  );
  MUXCY   \blk00000243/blk00000261  (
    .CI(\blk00000243/sig00000748 ),
    .DI(sig00000113),
    .S(\blk00000243/sig00000733 ),
    .O(\blk00000243/sig00000747 )
  );
  MUXCY   \blk00000243/blk00000260  (
    .CI(\blk00000243/sig00000747 ),
    .DI(sig00000114),
    .S(\blk00000243/sig00000732 ),
    .O(\blk00000243/sig00000746 )
  );
  MUXCY   \blk00000243/blk0000025f  (
    .CI(\blk00000243/sig00000746 ),
    .DI(sig00000115),
    .S(\blk00000243/sig00000731 ),
    .O(\blk00000243/sig00000745 )
  );
  MUXCY   \blk00000243/blk0000025e  (
    .CI(\blk00000243/sig00000745 ),
    .DI(sig00000116),
    .S(\blk00000243/sig00000730 ),
    .O(\blk00000243/sig00000744 )
  );
  MUXCY   \blk00000243/blk0000025d  (
    .CI(\blk00000243/sig00000744 ),
    .DI(sig00000117),
    .S(\blk00000243/sig0000072f ),
    .O(\blk00000243/sig00000743 )
  );
  MUXCY   \blk00000243/blk0000025c  (
    .CI(\blk00000243/sig00000743 ),
    .DI(sig00000118),
    .S(\blk00000243/sig0000072e ),
    .O(\blk00000243/sig00000742 )
  );
  MUXCY   \blk00000243/blk0000025b  (
    .CI(\blk00000243/sig00000742 ),
    .DI(sig00000119),
    .S(\blk00000243/sig0000072d ),
    .O(\blk00000243/sig00000741 )
  );
  MUXCY   \blk00000243/blk0000025a  (
    .CI(\blk00000243/sig00000741 ),
    .DI(sig0000011a),
    .S(\blk00000243/sig0000072c ),
    .O(\blk00000243/sig00000740 )
  );
  MUXCY   \blk00000243/blk00000259  (
    .CI(\blk00000243/sig00000740 ),
    .DI(sig0000011a),
    .S(\blk00000243/sig00000754 ),
    .O(\blk00000243/sig0000073f )
  );
  XORCY   \blk00000243/blk00000258  (
    .CI(\blk00000243/sig00000753 ),
    .LI(\blk00000243/sig0000073e ),
    .O(\blk00000243/sig0000072a )
  );
  XORCY   \blk00000243/blk00000257  (
    .CI(\blk00000243/sig00000752 ),
    .LI(\blk00000243/sig0000073d ),
    .O(\blk00000243/sig00000729 )
  );
  XORCY   \blk00000243/blk00000256  (
    .CI(\blk00000243/sig00000751 ),
    .LI(\blk00000243/sig0000073c ),
    .O(\blk00000243/sig00000728 )
  );
  XORCY   \blk00000243/blk00000255  (
    .CI(\blk00000243/sig00000750 ),
    .LI(\blk00000243/sig0000073b ),
    .O(\blk00000243/sig00000727 )
  );
  XORCY   \blk00000243/blk00000254  (
    .CI(\blk00000243/sig0000074f ),
    .LI(\blk00000243/sig0000073a ),
    .O(\blk00000243/sig00000726 )
  );
  XORCY   \blk00000243/blk00000253  (
    .CI(\blk00000243/sig0000074e ),
    .LI(\blk00000243/sig00000739 ),
    .O(\blk00000243/sig00000725 )
  );
  XORCY   \blk00000243/blk00000252  (
    .CI(\blk00000243/sig0000074d ),
    .LI(\blk00000243/sig00000738 ),
    .O(\blk00000243/sig00000724 )
  );
  XORCY   \blk00000243/blk00000251  (
    .CI(\blk00000243/sig0000074c ),
    .LI(\blk00000243/sig00000737 ),
    .O(\blk00000243/sig00000723 )
  );
  XORCY   \blk00000243/blk00000250  (
    .CI(\blk00000243/sig0000074b ),
    .LI(\blk00000243/sig00000736 ),
    .O(\blk00000243/sig00000722 )
  );
  XORCY   \blk00000243/blk0000024f  (
    .CI(\blk00000243/sig0000074a ),
    .LI(\blk00000243/sig00000735 ),
    .O(\blk00000243/sig00000721 )
  );
  XORCY   \blk00000243/blk0000024e  (
    .CI(\blk00000243/sig00000749 ),
    .LI(\blk00000243/sig00000734 ),
    .O(\blk00000243/sig00000720 )
  );
  XORCY   \blk00000243/blk0000024d  (
    .CI(\blk00000243/sig00000748 ),
    .LI(\blk00000243/sig00000733 ),
    .O(\blk00000243/sig0000071f )
  );
  XORCY   \blk00000243/blk0000024c  (
    .CI(\blk00000243/sig00000747 ),
    .LI(\blk00000243/sig00000732 ),
    .O(\blk00000243/sig0000071e )
  );
  XORCY   \blk00000243/blk0000024b  (
    .CI(\blk00000243/sig00000746 ),
    .LI(\blk00000243/sig00000731 ),
    .O(\blk00000243/sig0000071d )
  );
  XORCY   \blk00000243/blk0000024a  (
    .CI(\blk00000243/sig00000745 ),
    .LI(\blk00000243/sig00000730 ),
    .O(\blk00000243/sig0000071c )
  );
  XORCY   \blk00000243/blk00000249  (
    .CI(\blk00000243/sig00000744 ),
    .LI(\blk00000243/sig0000072f ),
    .O(\blk00000243/sig0000071b )
  );
  XORCY   \blk00000243/blk00000248  (
    .CI(\blk00000243/sig00000743 ),
    .LI(\blk00000243/sig0000072e ),
    .O(\blk00000243/sig0000071a )
  );
  XORCY   \blk00000243/blk00000247  (
    .CI(\blk00000243/sig00000742 ),
    .LI(\blk00000243/sig0000072d ),
    .O(\blk00000243/sig00000719 )
  );
  XORCY   \blk00000243/blk00000246  (
    .CI(\blk00000243/sig00000741 ),
    .LI(\blk00000243/sig0000072c ),
    .O(\blk00000243/sig00000718 )
  );
  XORCY   \blk00000243/blk00000245  (
    .CI(\blk00000243/sig00000740 ),
    .LI(\blk00000243/sig00000754 ),
    .O(\blk00000243/sig00000717 )
  );
  XORCY   \blk00000243/blk00000244  (
    .CI(\blk00000243/sig0000073f ),
    .LI(\blk00000243/sig0000072b ),
    .O(\blk00000243/sig00000716 )
  );
  INV   \blk00000298/blk000002ec  (
    .I(sig0000002b),
    .O(\blk00000298/sig000007d2 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000298/blk000002eb  (
    .I0(sig0000010a),
    .I1(sig0000018f),
    .I2(sig0000002b),
    .O(\blk00000298/sig000007d3 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000298/blk000002ea  (
    .I0(sig00000101),
    .I1(sig00000185),
    .I2(sig0000002b),
    .O(\blk00000298/sig000007b4 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000298/blk000002e9  (
    .I0(sig00000100),
    .I1(sig00000184),
    .I2(sig0000002b),
    .O(\blk00000298/sig000007b5 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000298/blk000002e8  (
    .I0(sig000000ff),
    .I1(sig00000183),
    .I2(sig0000002b),
    .O(\blk00000298/sig000007b6 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000298/blk000002e7  (
    .I0(sig000000fe),
    .I1(sig00000182),
    .I2(sig0000002b),
    .O(\blk00000298/sig000007b7 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000298/blk000002e6  (
    .I0(sig000000fd),
    .I1(sig00000181),
    .I2(sig0000002b),
    .O(\blk00000298/sig000007b8 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000298/blk000002e5  (
    .I0(sig000000fc),
    .I1(sig00000180),
    .I2(sig0000002b),
    .O(\blk00000298/sig000007b9 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000298/blk000002e4  (
    .I0(sig000000fb),
    .I1(sig0000017f),
    .I2(sig0000002b),
    .O(\blk00000298/sig000007ba )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000298/blk000002e3  (
    .I0(sig0000017e),
    .I1(sig0000002b),
    .O(\blk00000298/sig000007bb )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000298/blk000002e2  (
    .I0(sig0000017d),
    .I1(sig0000002b),
    .O(\blk00000298/sig000007bc )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000298/blk000002e1  (
    .I0(sig0000010a),
    .I1(sig0000018f),
    .I2(sig0000002b),
    .O(\blk00000298/sig000007aa )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000298/blk000002e0  (
    .I0(sig0000010a),
    .I1(sig0000018e),
    .I2(sig0000002b),
    .O(\blk00000298/sig000007ab )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000298/blk000002df  (
    .I0(sig00000109),
    .I1(sig0000018d),
    .I2(sig0000002b),
    .O(\blk00000298/sig000007ac )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000298/blk000002de  (
    .I0(sig00000108),
    .I1(sig0000018c),
    .I2(sig0000002b),
    .O(\blk00000298/sig000007ad )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000298/blk000002dd  (
    .I0(sig00000107),
    .I1(sig0000018b),
    .I2(sig0000002b),
    .O(\blk00000298/sig000007ae )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000298/blk000002dc  (
    .I0(sig00000106),
    .I1(sig0000018a),
    .I2(sig0000002b),
    .O(\blk00000298/sig000007af )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000298/blk000002db  (
    .I0(sig00000105),
    .I1(sig00000189),
    .I2(sig0000002b),
    .O(\blk00000298/sig000007b0 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000298/blk000002da  (
    .I0(sig00000104),
    .I1(sig00000188),
    .I2(sig0000002b),
    .O(\blk00000298/sig000007b1 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000298/blk000002d9  (
    .I0(sig00000103),
    .I1(sig00000187),
    .I2(sig0000002b),
    .O(\blk00000298/sig000007b2 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000298/blk000002d8  (
    .I0(sig00000102),
    .I1(sig00000186),
    .I2(sig0000002b),
    .O(\blk00000298/sig000007b3 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000298/blk000002d7  (
    .I0(sig0000017c),
    .I1(sig0000002b),
    .O(\blk00000298/sig000007bd )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000298/blk000002d6  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000298/sig000007a9 ),
    .Q(sig000000d0)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000298/blk000002d5  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000298/sig000007a8 ),
    .Q(sig000000d1)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000298/blk000002d4  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000298/sig000007a7 ),
    .Q(sig000000d2)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000298/blk000002d3  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000298/sig000007a6 ),
    .Q(sig000000d3)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000298/blk000002d2  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000298/sig000007a5 ),
    .Q(sig000000d4)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000298/blk000002d1  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000298/sig000007a4 ),
    .Q(sig000000d5)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000298/blk000002d0  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000298/sig000007a3 ),
    .Q(sig000000d6)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000298/blk000002cf  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000298/sig000007a2 ),
    .Q(sig000000d7)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000298/blk000002ce  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000298/sig000007a1 ),
    .Q(sig000000d8)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000298/blk000002cd  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000298/sig000007a0 ),
    .Q(sig000000d9)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000298/blk000002cc  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000298/sig0000079f ),
    .Q(sig000000da)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000298/blk000002cb  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000298/sig0000079e ),
    .Q(sig000000db)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000298/blk000002ca  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000298/sig0000079d ),
    .Q(sig000000dc)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000298/blk000002c9  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000298/sig0000079c ),
    .Q(sig000000dd)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000298/blk000002c8  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000298/sig0000079b ),
    .Q(sig000000de)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000298/blk000002c7  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000298/sig0000079a ),
    .Q(sig000000df)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000298/blk000002c6  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000298/sig00000799 ),
    .Q(sig000000e0)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000298/blk000002c5  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000298/sig00000798 ),
    .Q(sig000000e1)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000298/blk000002c4  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000298/sig00000797 ),
    .Q(sig000000e2)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000298/blk000002c3  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000298/sig00000796 ),
    .Q(sig000000e3)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000298/blk000002c2  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk00000298/sig00000795 ),
    .Q(sig000000e4)
  );
  MUXCY   \blk00000298/blk000002c1  (
    .CI(\blk00000298/sig000007d2 ),
    .DI(sig00000002),
    .S(\blk00000298/sig000007bd ),
    .O(\blk00000298/sig000007d1 )
  );
  MUXCY   \blk00000298/blk000002c0  (
    .CI(\blk00000298/sig000007d1 ),
    .DI(sig00000002),
    .S(\blk00000298/sig000007bc ),
    .O(\blk00000298/sig000007d0 )
  );
  MUXCY   \blk00000298/blk000002bf  (
    .CI(\blk00000298/sig000007d0 ),
    .DI(sig00000002),
    .S(\blk00000298/sig000007bb ),
    .O(\blk00000298/sig000007cf )
  );
  MUXCY   \blk00000298/blk000002be  (
    .CI(\blk00000298/sig000007cf ),
    .DI(sig000000fb),
    .S(\blk00000298/sig000007ba ),
    .O(\blk00000298/sig000007ce )
  );
  MUXCY   \blk00000298/blk000002bd  (
    .CI(\blk00000298/sig000007ce ),
    .DI(sig000000fc),
    .S(\blk00000298/sig000007b9 ),
    .O(\blk00000298/sig000007cd )
  );
  MUXCY   \blk00000298/blk000002bc  (
    .CI(\blk00000298/sig000007cd ),
    .DI(sig000000fd),
    .S(\blk00000298/sig000007b8 ),
    .O(\blk00000298/sig000007cc )
  );
  MUXCY   \blk00000298/blk000002bb  (
    .CI(\blk00000298/sig000007cc ),
    .DI(sig000000fe),
    .S(\blk00000298/sig000007b7 ),
    .O(\blk00000298/sig000007cb )
  );
  MUXCY   \blk00000298/blk000002ba  (
    .CI(\blk00000298/sig000007cb ),
    .DI(sig000000ff),
    .S(\blk00000298/sig000007b6 ),
    .O(\blk00000298/sig000007ca )
  );
  MUXCY   \blk00000298/blk000002b9  (
    .CI(\blk00000298/sig000007ca ),
    .DI(sig00000100),
    .S(\blk00000298/sig000007b5 ),
    .O(\blk00000298/sig000007c9 )
  );
  MUXCY   \blk00000298/blk000002b8  (
    .CI(\blk00000298/sig000007c9 ),
    .DI(sig00000101),
    .S(\blk00000298/sig000007b4 ),
    .O(\blk00000298/sig000007c8 )
  );
  MUXCY   \blk00000298/blk000002b7  (
    .CI(\blk00000298/sig000007c8 ),
    .DI(sig00000102),
    .S(\blk00000298/sig000007b3 ),
    .O(\blk00000298/sig000007c7 )
  );
  MUXCY   \blk00000298/blk000002b6  (
    .CI(\blk00000298/sig000007c7 ),
    .DI(sig00000103),
    .S(\blk00000298/sig000007b2 ),
    .O(\blk00000298/sig000007c6 )
  );
  MUXCY   \blk00000298/blk000002b5  (
    .CI(\blk00000298/sig000007c6 ),
    .DI(sig00000104),
    .S(\blk00000298/sig000007b1 ),
    .O(\blk00000298/sig000007c5 )
  );
  MUXCY   \blk00000298/blk000002b4  (
    .CI(\blk00000298/sig000007c5 ),
    .DI(sig00000105),
    .S(\blk00000298/sig000007b0 ),
    .O(\blk00000298/sig000007c4 )
  );
  MUXCY   \blk00000298/blk000002b3  (
    .CI(\blk00000298/sig000007c4 ),
    .DI(sig00000106),
    .S(\blk00000298/sig000007af ),
    .O(\blk00000298/sig000007c3 )
  );
  MUXCY   \blk00000298/blk000002b2  (
    .CI(\blk00000298/sig000007c3 ),
    .DI(sig00000107),
    .S(\blk00000298/sig000007ae ),
    .O(\blk00000298/sig000007c2 )
  );
  MUXCY   \blk00000298/blk000002b1  (
    .CI(\blk00000298/sig000007c2 ),
    .DI(sig00000108),
    .S(\blk00000298/sig000007ad ),
    .O(\blk00000298/sig000007c1 )
  );
  MUXCY   \blk00000298/blk000002b0  (
    .CI(\blk00000298/sig000007c1 ),
    .DI(sig00000109),
    .S(\blk00000298/sig000007ac ),
    .O(\blk00000298/sig000007c0 )
  );
  MUXCY   \blk00000298/blk000002af  (
    .CI(\blk00000298/sig000007c0 ),
    .DI(sig0000010a),
    .S(\blk00000298/sig000007ab ),
    .O(\blk00000298/sig000007bf )
  );
  MUXCY   \blk00000298/blk000002ae  (
    .CI(\blk00000298/sig000007bf ),
    .DI(sig0000010a),
    .S(\blk00000298/sig000007d3 ),
    .O(\blk00000298/sig000007be )
  );
  XORCY   \blk00000298/blk000002ad  (
    .CI(\blk00000298/sig000007d2 ),
    .LI(\blk00000298/sig000007bd ),
    .O(\blk00000298/sig000007a9 )
  );
  XORCY   \blk00000298/blk000002ac  (
    .CI(\blk00000298/sig000007d1 ),
    .LI(\blk00000298/sig000007bc ),
    .O(\blk00000298/sig000007a8 )
  );
  XORCY   \blk00000298/blk000002ab  (
    .CI(\blk00000298/sig000007d0 ),
    .LI(\blk00000298/sig000007bb ),
    .O(\blk00000298/sig000007a7 )
  );
  XORCY   \blk00000298/blk000002aa  (
    .CI(\blk00000298/sig000007cf ),
    .LI(\blk00000298/sig000007ba ),
    .O(\blk00000298/sig000007a6 )
  );
  XORCY   \blk00000298/blk000002a9  (
    .CI(\blk00000298/sig000007ce ),
    .LI(\blk00000298/sig000007b9 ),
    .O(\blk00000298/sig000007a5 )
  );
  XORCY   \blk00000298/blk000002a8  (
    .CI(\blk00000298/sig000007cd ),
    .LI(\blk00000298/sig000007b8 ),
    .O(\blk00000298/sig000007a4 )
  );
  XORCY   \blk00000298/blk000002a7  (
    .CI(\blk00000298/sig000007cc ),
    .LI(\blk00000298/sig000007b7 ),
    .O(\blk00000298/sig000007a3 )
  );
  XORCY   \blk00000298/blk000002a6  (
    .CI(\blk00000298/sig000007cb ),
    .LI(\blk00000298/sig000007b6 ),
    .O(\blk00000298/sig000007a2 )
  );
  XORCY   \blk00000298/blk000002a5  (
    .CI(\blk00000298/sig000007ca ),
    .LI(\blk00000298/sig000007b5 ),
    .O(\blk00000298/sig000007a1 )
  );
  XORCY   \blk00000298/blk000002a4  (
    .CI(\blk00000298/sig000007c9 ),
    .LI(\blk00000298/sig000007b4 ),
    .O(\blk00000298/sig000007a0 )
  );
  XORCY   \blk00000298/blk000002a3  (
    .CI(\blk00000298/sig000007c8 ),
    .LI(\blk00000298/sig000007b3 ),
    .O(\blk00000298/sig0000079f )
  );
  XORCY   \blk00000298/blk000002a2  (
    .CI(\blk00000298/sig000007c7 ),
    .LI(\blk00000298/sig000007b2 ),
    .O(\blk00000298/sig0000079e )
  );
  XORCY   \blk00000298/blk000002a1  (
    .CI(\blk00000298/sig000007c6 ),
    .LI(\blk00000298/sig000007b1 ),
    .O(\blk00000298/sig0000079d )
  );
  XORCY   \blk00000298/blk000002a0  (
    .CI(\blk00000298/sig000007c5 ),
    .LI(\blk00000298/sig000007b0 ),
    .O(\blk00000298/sig0000079c )
  );
  XORCY   \blk00000298/blk0000029f  (
    .CI(\blk00000298/sig000007c4 ),
    .LI(\blk00000298/sig000007af ),
    .O(\blk00000298/sig0000079b )
  );
  XORCY   \blk00000298/blk0000029e  (
    .CI(\blk00000298/sig000007c3 ),
    .LI(\blk00000298/sig000007ae ),
    .O(\blk00000298/sig0000079a )
  );
  XORCY   \blk00000298/blk0000029d  (
    .CI(\blk00000298/sig000007c2 ),
    .LI(\blk00000298/sig000007ad ),
    .O(\blk00000298/sig00000799 )
  );
  XORCY   \blk00000298/blk0000029c  (
    .CI(\blk00000298/sig000007c1 ),
    .LI(\blk00000298/sig000007ac ),
    .O(\blk00000298/sig00000798 )
  );
  XORCY   \blk00000298/blk0000029b  (
    .CI(\blk00000298/sig000007c0 ),
    .LI(\blk00000298/sig000007ab ),
    .O(\blk00000298/sig00000797 )
  );
  XORCY   \blk00000298/blk0000029a  (
    .CI(\blk00000298/sig000007bf ),
    .LI(\blk00000298/sig000007d3 ),
    .O(\blk00000298/sig00000796 )
  );
  XORCY   \blk00000298/blk00000299  (
    .CI(\blk00000298/sig000007be ),
    .LI(\blk00000298/sig000007aa ),
    .O(\blk00000298/sig00000795 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000002ed/blk0000032b  (
    .I0(sig00000190),
    .O(\blk000002ed/sig00000825 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000002ed/blk0000032a  (
    .I0(sig00000191),
    .O(\blk000002ed/sig00000824 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000002ed/blk00000329  (
    .I0(sig00000192),
    .O(\blk000002ed/sig00000823 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000002ed/blk00000328  (
    .I0(sig0000011a),
    .I1(sig000001a3),
    .O(\blk000002ed/sig00000822 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000002ed/blk00000327  (
    .I0(sig00000111),
    .I1(sig00000199),
    .O(\blk000002ed/sig00000807 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000002ed/blk00000326  (
    .I0(sig00000110),
    .I1(sig00000198),
    .O(\blk000002ed/sig00000808 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000002ed/blk00000325  (
    .I0(sig0000010f),
    .I1(sig00000197),
    .O(\blk000002ed/sig00000809 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000002ed/blk00000324  (
    .I0(sig0000010e),
    .I1(sig00000196),
    .O(\blk000002ed/sig0000080a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000002ed/blk00000323  (
    .I0(sig0000010d),
    .I1(sig00000195),
    .O(\blk000002ed/sig0000080b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000002ed/blk00000322  (
    .I0(sig0000010c),
    .I1(sig00000194),
    .O(\blk000002ed/sig0000080c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000002ed/blk00000321  (
    .I0(sig0000010b),
    .I1(sig00000193),
    .O(\blk000002ed/sig0000080d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000002ed/blk00000320  (
    .I0(sig0000011a),
    .I1(sig000001a3),
    .O(\blk000002ed/sig000007fd )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000002ed/blk0000031f  (
    .I0(sig0000011a),
    .I1(sig000001a2),
    .O(\blk000002ed/sig000007fe )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000002ed/blk0000031e  (
    .I0(sig00000119),
    .I1(sig000001a1),
    .O(\blk000002ed/sig000007ff )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000002ed/blk0000031d  (
    .I0(sig00000118),
    .I1(sig000001a0),
    .O(\blk000002ed/sig00000800 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000002ed/blk0000031c  (
    .I0(sig00000117),
    .I1(sig0000019f),
    .O(\blk000002ed/sig00000801 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000002ed/blk0000031b  (
    .I0(sig00000116),
    .I1(sig0000019e),
    .O(\blk000002ed/sig00000802 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000002ed/blk0000031a  (
    .I0(sig00000115),
    .I1(sig0000019d),
    .O(\blk000002ed/sig00000803 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000002ed/blk00000319  (
    .I0(sig00000114),
    .I1(sig0000019c),
    .O(\blk000002ed/sig00000804 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000002ed/blk00000318  (
    .I0(sig00000113),
    .I1(sig0000019b),
    .O(\blk000002ed/sig00000805 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000002ed/blk00000317  (
    .I0(sig00000112),
    .I1(sig0000019a),
    .O(\blk000002ed/sig00000806 )
  );
  MUXCY   \blk000002ed/blk00000316  (
    .CI(sig00000002),
    .DI(sig00000002),
    .S(\blk000002ed/sig00000825 ),
    .O(\blk000002ed/sig00000821 )
  );
  XORCY   \blk000002ed/blk00000315  (
    .CI(sig00000002),
    .LI(\blk000002ed/sig00000825 ),
    .O(\NLW_blk000002ed/blk00000315_O_UNCONNECTED )
  );
  MUXCY   \blk000002ed/blk00000314  (
    .CI(\blk000002ed/sig00000821 ),
    .DI(sig00000002),
    .S(\blk000002ed/sig00000824 ),
    .O(\blk000002ed/sig00000820 )
  );
  MUXCY   \blk000002ed/blk00000313  (
    .CI(\blk000002ed/sig00000820 ),
    .DI(sig00000002),
    .S(\blk000002ed/sig00000823 ),
    .O(\blk000002ed/sig0000081f )
  );
  MUXCY   \blk000002ed/blk00000312  (
    .CI(\blk000002ed/sig0000081f ),
    .DI(sig0000010b),
    .S(\blk000002ed/sig0000080d ),
    .O(\blk000002ed/sig0000081e )
  );
  MUXCY   \blk000002ed/blk00000311  (
    .CI(\blk000002ed/sig0000081e ),
    .DI(sig0000010c),
    .S(\blk000002ed/sig0000080c ),
    .O(\blk000002ed/sig0000081d )
  );
  MUXCY   \blk000002ed/blk00000310  (
    .CI(\blk000002ed/sig0000081d ),
    .DI(sig0000010d),
    .S(\blk000002ed/sig0000080b ),
    .O(\blk000002ed/sig0000081c )
  );
  MUXCY   \blk000002ed/blk0000030f  (
    .CI(\blk000002ed/sig0000081c ),
    .DI(sig0000010e),
    .S(\blk000002ed/sig0000080a ),
    .O(\blk000002ed/sig0000081b )
  );
  MUXCY   \blk000002ed/blk0000030e  (
    .CI(\blk000002ed/sig0000081b ),
    .DI(sig0000010f),
    .S(\blk000002ed/sig00000809 ),
    .O(\blk000002ed/sig0000081a )
  );
  MUXCY   \blk000002ed/blk0000030d  (
    .CI(\blk000002ed/sig0000081a ),
    .DI(sig00000110),
    .S(\blk000002ed/sig00000808 ),
    .O(\blk000002ed/sig00000819 )
  );
  MUXCY   \blk000002ed/blk0000030c  (
    .CI(\blk000002ed/sig00000819 ),
    .DI(sig00000111),
    .S(\blk000002ed/sig00000807 ),
    .O(\blk000002ed/sig00000818 )
  );
  MUXCY   \blk000002ed/blk0000030b  (
    .CI(\blk000002ed/sig00000818 ),
    .DI(sig00000112),
    .S(\blk000002ed/sig00000806 ),
    .O(\blk000002ed/sig00000817 )
  );
  MUXCY   \blk000002ed/blk0000030a  (
    .CI(\blk000002ed/sig00000817 ),
    .DI(sig00000113),
    .S(\blk000002ed/sig00000805 ),
    .O(\blk000002ed/sig00000816 )
  );
  MUXCY   \blk000002ed/blk00000309  (
    .CI(\blk000002ed/sig00000816 ),
    .DI(sig00000114),
    .S(\blk000002ed/sig00000804 ),
    .O(\blk000002ed/sig00000815 )
  );
  MUXCY   \blk000002ed/blk00000308  (
    .CI(\blk000002ed/sig00000815 ),
    .DI(sig00000115),
    .S(\blk000002ed/sig00000803 ),
    .O(\blk000002ed/sig00000814 )
  );
  MUXCY   \blk000002ed/blk00000307  (
    .CI(\blk000002ed/sig00000814 ),
    .DI(sig00000116),
    .S(\blk000002ed/sig00000802 ),
    .O(\blk000002ed/sig00000813 )
  );
  MUXCY   \blk000002ed/blk00000306  (
    .CI(\blk000002ed/sig00000813 ),
    .DI(sig00000117),
    .S(\blk000002ed/sig00000801 ),
    .O(\blk000002ed/sig00000812 )
  );
  MUXCY   \blk000002ed/blk00000305  (
    .CI(\blk000002ed/sig00000812 ),
    .DI(sig00000118),
    .S(\blk000002ed/sig00000800 ),
    .O(\blk000002ed/sig00000811 )
  );
  MUXCY   \blk000002ed/blk00000304  (
    .CI(\blk000002ed/sig00000811 ),
    .DI(sig00000119),
    .S(\blk000002ed/sig000007ff ),
    .O(\blk000002ed/sig00000810 )
  );
  MUXCY   \blk000002ed/blk00000303  (
    .CI(\blk000002ed/sig00000810 ),
    .DI(sig0000011a),
    .S(\blk000002ed/sig000007fe ),
    .O(\blk000002ed/sig0000080f )
  );
  MUXCY   \blk000002ed/blk00000302  (
    .CI(\blk000002ed/sig0000080f ),
    .DI(sig0000011a),
    .S(\blk000002ed/sig00000822 ),
    .O(\blk000002ed/sig0000080e )
  );
  XORCY   \blk000002ed/blk00000301  (
    .CI(\blk000002ed/sig00000821 ),
    .LI(\blk000002ed/sig00000824 ),
    .O(\NLW_blk000002ed/blk00000301_O_UNCONNECTED )
  );
  XORCY   \blk000002ed/blk00000300  (
    .CI(\blk000002ed/sig00000820 ),
    .LI(\blk000002ed/sig00000823 ),
    .O(\NLW_blk000002ed/blk00000300_O_UNCONNECTED )
  );
  XORCY   \blk000002ed/blk000002ff  (
    .CI(\blk000002ed/sig0000081f ),
    .LI(\blk000002ed/sig0000080d ),
    .O(\NLW_blk000002ed/blk000002ff_O_UNCONNECTED )
  );
  XORCY   \blk000002ed/blk000002fe  (
    .CI(\blk000002ed/sig0000081e ),
    .LI(\blk000002ed/sig0000080c ),
    .O(\NLW_blk000002ed/blk000002fe_O_UNCONNECTED )
  );
  XORCY   \blk000002ed/blk000002fd  (
    .CI(\blk000002ed/sig0000081d ),
    .LI(\blk000002ed/sig0000080b ),
    .O(\NLW_blk000002ed/blk000002fd_O_UNCONNECTED )
  );
  XORCY   \blk000002ed/blk000002fc  (
    .CI(\blk000002ed/sig0000081c ),
    .LI(\blk000002ed/sig0000080a ),
    .O(\NLW_blk000002ed/blk000002fc_O_UNCONNECTED )
  );
  XORCY   \blk000002ed/blk000002fb  (
    .CI(\blk000002ed/sig0000081b ),
    .LI(\blk000002ed/sig00000809 ),
    .O(\NLW_blk000002ed/blk000002fb_O_UNCONNECTED )
  );
  XORCY   \blk000002ed/blk000002fa  (
    .CI(\blk000002ed/sig0000081a ),
    .LI(\blk000002ed/sig00000808 ),
    .O(\NLW_blk000002ed/blk000002fa_O_UNCONNECTED )
  );
  XORCY   \blk000002ed/blk000002f9  (
    .CI(\blk000002ed/sig00000819 ),
    .LI(\blk000002ed/sig00000807 ),
    .O(\NLW_blk000002ed/blk000002f9_O_UNCONNECTED )
  );
  XORCY   \blk000002ed/blk000002f8  (
    .CI(\blk000002ed/sig00000818 ),
    .LI(\blk000002ed/sig00000806 ),
    .O(\NLW_blk000002ed/blk000002f8_O_UNCONNECTED )
  );
  XORCY   \blk000002ed/blk000002f7  (
    .CI(\blk000002ed/sig00000817 ),
    .LI(\blk000002ed/sig00000805 ),
    .O(\NLW_blk000002ed/blk000002f7_O_UNCONNECTED )
  );
  XORCY   \blk000002ed/blk000002f6  (
    .CI(\blk000002ed/sig00000816 ),
    .LI(\blk000002ed/sig00000804 ),
    .O(\NLW_blk000002ed/blk000002f6_O_UNCONNECTED )
  );
  XORCY   \blk000002ed/blk000002f5  (
    .CI(\blk000002ed/sig00000815 ),
    .LI(\blk000002ed/sig00000803 ),
    .O(\NLW_blk000002ed/blk000002f5_O_UNCONNECTED )
  );
  XORCY   \blk000002ed/blk000002f4  (
    .CI(\blk000002ed/sig00000814 ),
    .LI(\blk000002ed/sig00000802 ),
    .O(\NLW_blk000002ed/blk000002f4_O_UNCONNECTED )
  );
  XORCY   \blk000002ed/blk000002f3  (
    .CI(\blk000002ed/sig00000813 ),
    .LI(\blk000002ed/sig00000801 ),
    .O(\NLW_blk000002ed/blk000002f3_O_UNCONNECTED )
  );
  XORCY   \blk000002ed/blk000002f2  (
    .CI(\blk000002ed/sig00000812 ),
    .LI(\blk000002ed/sig00000800 ),
    .O(\NLW_blk000002ed/blk000002f2_O_UNCONNECTED )
  );
  XORCY   \blk000002ed/blk000002f1  (
    .CI(\blk000002ed/sig00000811 ),
    .LI(\blk000002ed/sig000007ff ),
    .O(\NLW_blk000002ed/blk000002f1_O_UNCONNECTED )
  );
  XORCY   \blk000002ed/blk000002f0  (
    .CI(\blk000002ed/sig00000810 ),
    .LI(\blk000002ed/sig000007fe ),
    .O(\NLW_blk000002ed/blk000002f0_O_UNCONNECTED )
  );
  XORCY   \blk000002ed/blk000002ef  (
    .CI(\blk000002ed/sig0000080f ),
    .LI(\blk000002ed/sig00000822 ),
    .O(\NLW_blk000002ed/blk000002ef_O_UNCONNECTED )
  );
  XORCY   \blk000002ed/blk000002ee  (
    .CI(\blk000002ed/sig0000080e ),
    .LI(\blk000002ed/sig000007fd ),
    .O(\NLW_blk000002ed/blk000002ee_O_UNCONNECTED )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk0000032c/blk0000036a  (
    .I0(sig0000017c),
    .O(\blk0000032c/sig00000877 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk0000032c/blk00000369  (
    .I0(sig0000017d),
    .O(\blk0000032c/sig00000876 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk0000032c/blk00000368  (
    .I0(sig0000017e),
    .O(\blk0000032c/sig00000875 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk0000032c/blk00000367  (
    .I0(sig0000010a),
    .I1(sig0000018f),
    .O(\blk0000032c/sig00000874 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk0000032c/blk00000366  (
    .I0(sig00000101),
    .I1(sig00000185),
    .O(\blk0000032c/sig00000859 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk0000032c/blk00000365  (
    .I0(sig00000100),
    .I1(sig00000184),
    .O(\blk0000032c/sig0000085a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk0000032c/blk00000364  (
    .I0(sig000000ff),
    .I1(sig00000183),
    .O(\blk0000032c/sig0000085b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk0000032c/blk00000363  (
    .I0(sig000000fe),
    .I1(sig00000182),
    .O(\blk0000032c/sig0000085c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk0000032c/blk00000362  (
    .I0(sig000000fd),
    .I1(sig00000181),
    .O(\blk0000032c/sig0000085d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk0000032c/blk00000361  (
    .I0(sig000000fc),
    .I1(sig00000180),
    .O(\blk0000032c/sig0000085e )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk0000032c/blk00000360  (
    .I0(sig000000fb),
    .I1(sig0000017f),
    .O(\blk0000032c/sig0000085f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk0000032c/blk0000035f  (
    .I0(sig0000010a),
    .I1(sig0000018f),
    .O(\blk0000032c/sig0000084f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk0000032c/blk0000035e  (
    .I0(sig0000010a),
    .I1(sig0000018e),
    .O(\blk0000032c/sig00000850 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk0000032c/blk0000035d  (
    .I0(sig00000109),
    .I1(sig0000018d),
    .O(\blk0000032c/sig00000851 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk0000032c/blk0000035c  (
    .I0(sig00000108),
    .I1(sig0000018c),
    .O(\blk0000032c/sig00000852 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk0000032c/blk0000035b  (
    .I0(sig00000107),
    .I1(sig0000018b),
    .O(\blk0000032c/sig00000853 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk0000032c/blk0000035a  (
    .I0(sig00000106),
    .I1(sig0000018a),
    .O(\blk0000032c/sig00000854 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk0000032c/blk00000359  (
    .I0(sig00000105),
    .I1(sig00000189),
    .O(\blk0000032c/sig00000855 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk0000032c/blk00000358  (
    .I0(sig00000104),
    .I1(sig00000188),
    .O(\blk0000032c/sig00000856 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk0000032c/blk00000357  (
    .I0(sig00000103),
    .I1(sig00000187),
    .O(\blk0000032c/sig00000857 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk0000032c/blk00000356  (
    .I0(sig00000102),
    .I1(sig00000186),
    .O(\blk0000032c/sig00000858 )
  );
  MUXCY   \blk0000032c/blk00000355  (
    .CI(sig00000002),
    .DI(sig00000002),
    .S(\blk0000032c/sig00000877 ),
    .O(\blk0000032c/sig00000873 )
  );
  XORCY   \blk0000032c/blk00000354  (
    .CI(sig00000002),
    .LI(\blk0000032c/sig00000877 ),
    .O(\NLW_blk0000032c/blk00000354_O_UNCONNECTED )
  );
  MUXCY   \blk0000032c/blk00000353  (
    .CI(\blk0000032c/sig00000873 ),
    .DI(sig00000002),
    .S(\blk0000032c/sig00000876 ),
    .O(\blk0000032c/sig00000872 )
  );
  MUXCY   \blk0000032c/blk00000352  (
    .CI(\blk0000032c/sig00000872 ),
    .DI(sig00000002),
    .S(\blk0000032c/sig00000875 ),
    .O(\blk0000032c/sig00000871 )
  );
  MUXCY   \blk0000032c/blk00000351  (
    .CI(\blk0000032c/sig00000871 ),
    .DI(sig000000fb),
    .S(\blk0000032c/sig0000085f ),
    .O(\blk0000032c/sig00000870 )
  );
  MUXCY   \blk0000032c/blk00000350  (
    .CI(\blk0000032c/sig00000870 ),
    .DI(sig000000fc),
    .S(\blk0000032c/sig0000085e ),
    .O(\blk0000032c/sig0000086f )
  );
  MUXCY   \blk0000032c/blk0000034f  (
    .CI(\blk0000032c/sig0000086f ),
    .DI(sig000000fd),
    .S(\blk0000032c/sig0000085d ),
    .O(\blk0000032c/sig0000086e )
  );
  MUXCY   \blk0000032c/blk0000034e  (
    .CI(\blk0000032c/sig0000086e ),
    .DI(sig000000fe),
    .S(\blk0000032c/sig0000085c ),
    .O(\blk0000032c/sig0000086d )
  );
  MUXCY   \blk0000032c/blk0000034d  (
    .CI(\blk0000032c/sig0000086d ),
    .DI(sig000000ff),
    .S(\blk0000032c/sig0000085b ),
    .O(\blk0000032c/sig0000086c )
  );
  MUXCY   \blk0000032c/blk0000034c  (
    .CI(\blk0000032c/sig0000086c ),
    .DI(sig00000100),
    .S(\blk0000032c/sig0000085a ),
    .O(\blk0000032c/sig0000086b )
  );
  MUXCY   \blk0000032c/blk0000034b  (
    .CI(\blk0000032c/sig0000086b ),
    .DI(sig00000101),
    .S(\blk0000032c/sig00000859 ),
    .O(\blk0000032c/sig0000086a )
  );
  MUXCY   \blk0000032c/blk0000034a  (
    .CI(\blk0000032c/sig0000086a ),
    .DI(sig00000102),
    .S(\blk0000032c/sig00000858 ),
    .O(\blk0000032c/sig00000869 )
  );
  MUXCY   \blk0000032c/blk00000349  (
    .CI(\blk0000032c/sig00000869 ),
    .DI(sig00000103),
    .S(\blk0000032c/sig00000857 ),
    .O(\blk0000032c/sig00000868 )
  );
  MUXCY   \blk0000032c/blk00000348  (
    .CI(\blk0000032c/sig00000868 ),
    .DI(sig00000104),
    .S(\blk0000032c/sig00000856 ),
    .O(\blk0000032c/sig00000867 )
  );
  MUXCY   \blk0000032c/blk00000347  (
    .CI(\blk0000032c/sig00000867 ),
    .DI(sig00000105),
    .S(\blk0000032c/sig00000855 ),
    .O(\blk0000032c/sig00000866 )
  );
  MUXCY   \blk0000032c/blk00000346  (
    .CI(\blk0000032c/sig00000866 ),
    .DI(sig00000106),
    .S(\blk0000032c/sig00000854 ),
    .O(\blk0000032c/sig00000865 )
  );
  MUXCY   \blk0000032c/blk00000345  (
    .CI(\blk0000032c/sig00000865 ),
    .DI(sig00000107),
    .S(\blk0000032c/sig00000853 ),
    .O(\blk0000032c/sig00000864 )
  );
  MUXCY   \blk0000032c/blk00000344  (
    .CI(\blk0000032c/sig00000864 ),
    .DI(sig00000108),
    .S(\blk0000032c/sig00000852 ),
    .O(\blk0000032c/sig00000863 )
  );
  MUXCY   \blk0000032c/blk00000343  (
    .CI(\blk0000032c/sig00000863 ),
    .DI(sig00000109),
    .S(\blk0000032c/sig00000851 ),
    .O(\blk0000032c/sig00000862 )
  );
  MUXCY   \blk0000032c/blk00000342  (
    .CI(\blk0000032c/sig00000862 ),
    .DI(sig0000010a),
    .S(\blk0000032c/sig00000850 ),
    .O(\blk0000032c/sig00000861 )
  );
  MUXCY   \blk0000032c/blk00000341  (
    .CI(\blk0000032c/sig00000861 ),
    .DI(sig0000010a),
    .S(\blk0000032c/sig00000874 ),
    .O(\blk0000032c/sig00000860 )
  );
  XORCY   \blk0000032c/blk00000340  (
    .CI(\blk0000032c/sig00000873 ),
    .LI(\blk0000032c/sig00000876 ),
    .O(\NLW_blk0000032c/blk00000340_O_UNCONNECTED )
  );
  XORCY   \blk0000032c/blk0000033f  (
    .CI(\blk0000032c/sig00000872 ),
    .LI(\blk0000032c/sig00000875 ),
    .O(\NLW_blk0000032c/blk0000033f_O_UNCONNECTED )
  );
  XORCY   \blk0000032c/blk0000033e  (
    .CI(\blk0000032c/sig00000871 ),
    .LI(\blk0000032c/sig0000085f ),
    .O(\NLW_blk0000032c/blk0000033e_O_UNCONNECTED )
  );
  XORCY   \blk0000032c/blk0000033d  (
    .CI(\blk0000032c/sig00000870 ),
    .LI(\blk0000032c/sig0000085e ),
    .O(\NLW_blk0000032c/blk0000033d_O_UNCONNECTED )
  );
  XORCY   \blk0000032c/blk0000033c  (
    .CI(\blk0000032c/sig0000086f ),
    .LI(\blk0000032c/sig0000085d ),
    .O(\NLW_blk0000032c/blk0000033c_O_UNCONNECTED )
  );
  XORCY   \blk0000032c/blk0000033b  (
    .CI(\blk0000032c/sig0000086e ),
    .LI(\blk0000032c/sig0000085c ),
    .O(\NLW_blk0000032c/blk0000033b_O_UNCONNECTED )
  );
  XORCY   \blk0000032c/blk0000033a  (
    .CI(\blk0000032c/sig0000086d ),
    .LI(\blk0000032c/sig0000085b ),
    .O(\NLW_blk0000032c/blk0000033a_O_UNCONNECTED )
  );
  XORCY   \blk0000032c/blk00000339  (
    .CI(\blk0000032c/sig0000086c ),
    .LI(\blk0000032c/sig0000085a ),
    .O(\NLW_blk0000032c/blk00000339_O_UNCONNECTED )
  );
  XORCY   \blk0000032c/blk00000338  (
    .CI(\blk0000032c/sig0000086b ),
    .LI(\blk0000032c/sig00000859 ),
    .O(\NLW_blk0000032c/blk00000338_O_UNCONNECTED )
  );
  XORCY   \blk0000032c/blk00000337  (
    .CI(\blk0000032c/sig0000086a ),
    .LI(\blk0000032c/sig00000858 ),
    .O(\NLW_blk0000032c/blk00000337_O_UNCONNECTED )
  );
  XORCY   \blk0000032c/blk00000336  (
    .CI(\blk0000032c/sig00000869 ),
    .LI(\blk0000032c/sig00000857 ),
    .O(\NLW_blk0000032c/blk00000336_O_UNCONNECTED )
  );
  XORCY   \blk0000032c/blk00000335  (
    .CI(\blk0000032c/sig00000868 ),
    .LI(\blk0000032c/sig00000856 ),
    .O(\NLW_blk0000032c/blk00000335_O_UNCONNECTED )
  );
  XORCY   \blk0000032c/blk00000334  (
    .CI(\blk0000032c/sig00000867 ),
    .LI(\blk0000032c/sig00000855 ),
    .O(\NLW_blk0000032c/blk00000334_O_UNCONNECTED )
  );
  XORCY   \blk0000032c/blk00000333  (
    .CI(\blk0000032c/sig00000866 ),
    .LI(\blk0000032c/sig00000854 ),
    .O(\NLW_blk0000032c/blk00000333_O_UNCONNECTED )
  );
  XORCY   \blk0000032c/blk00000332  (
    .CI(\blk0000032c/sig00000865 ),
    .LI(\blk0000032c/sig00000853 ),
    .O(\NLW_blk0000032c/blk00000332_O_UNCONNECTED )
  );
  XORCY   \blk0000032c/blk00000331  (
    .CI(\blk0000032c/sig00000864 ),
    .LI(\blk0000032c/sig00000852 ),
    .O(\NLW_blk0000032c/blk00000331_O_UNCONNECTED )
  );
  XORCY   \blk0000032c/blk00000330  (
    .CI(\blk0000032c/sig00000863 ),
    .LI(\blk0000032c/sig00000851 ),
    .O(\NLW_blk0000032c/blk00000330_O_UNCONNECTED )
  );
  XORCY   \blk0000032c/blk0000032f  (
    .CI(\blk0000032c/sig00000862 ),
    .LI(\blk0000032c/sig00000850 ),
    .O(\NLW_blk0000032c/blk0000032f_O_UNCONNECTED )
  );
  XORCY   \blk0000032c/blk0000032e  (
    .CI(\blk0000032c/sig00000861 ),
    .LI(\blk0000032c/sig00000874 ),
    .O(\NLW_blk0000032c/blk0000032e_O_UNCONNECTED )
  );
  XORCY   \blk0000032c/blk0000032d  (
    .CI(\blk0000032c/sig00000860 ),
    .LI(\blk0000032c/sig0000084f ),
    .O(\NLW_blk0000032c/blk0000032d_O_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000003d0/blk000003d1/blk000003d5  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000003d0/blk000003d1/sig00000883 ),
    .Q(sig0000000c)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000003d0/blk000003d1/blk000003d4  (
    .A0(\blk000003d0/blk000003d1/sig00000882 ),
    .A1(\blk000003d0/blk000003d1/sig00000881 ),
    .A2(\blk000003d0/blk000003d1/sig00000881 ),
    .A3(\blk000003d0/blk000003d1/sig00000881 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig00000300),
    .Q(\blk000003d0/blk000003d1/sig00000883 ),
    .Q15(\NLW_blk000003d0/blk000003d1/blk000003d4_Q15_UNCONNECTED )
  );
  VCC   \blk000003d0/blk000003d1/blk000003d3  (
    .P(\blk000003d0/blk000003d1/sig00000882 )
  );
  GND   \blk000003d0/blk000003d1/blk000003d2  (
    .G(\blk000003d0/blk000003d1/sig00000881 )
  );
  INV   \blk000003fc/blk00000411  (
    .I(sig00000319),
    .O(\blk000003fc/sig0000089a )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000003fc/blk00000410  (
    .I0(sig0000031a),
    .O(\blk000003fc/sig0000089f )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000003fc/blk0000040f  (
    .I0(sig0000031b),
    .O(\blk000003fc/sig0000089e )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000003fc/blk0000040e  (
    .I0(sig0000031c),
    .O(\blk000003fc/sig0000089d )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000003fc/blk0000040d  (
    .I0(sig0000031d),
    .O(\blk000003fc/sig0000089c )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000003fc/blk0000040c  (
    .I0(sig0000031e),
    .O(\blk000003fc/sig0000089b )
  );
  MUXCY   \blk000003fc/blk0000040b  (
    .CI(\blk000003fc/sig00000893 ),
    .DI(\blk000003fc/sig00000892 ),
    .S(\blk000003fc/sig0000089a ),
    .O(\blk000003fc/sig00000899 )
  );
  XORCY   \blk000003fc/blk0000040a  (
    .CI(\blk000003fc/sig00000893 ),
    .LI(\blk000003fc/sig0000089a ),
    .O(sig0000030b)
  );
  XORCY   \blk000003fc/blk00000409  (
    .CI(\blk000003fc/sig00000894 ),
    .LI(sig0000031f),
    .O(sig00000311)
  );
  MUXCY   \blk000003fc/blk00000408  (
    .CI(\blk000003fc/sig00000899 ),
    .DI(\blk000003fc/sig00000893 ),
    .S(\blk000003fc/sig0000089f ),
    .O(\blk000003fc/sig00000898 )
  );
  XORCY   \blk000003fc/blk00000407  (
    .CI(\blk000003fc/sig00000899 ),
    .LI(\blk000003fc/sig0000089f ),
    .O(sig0000030c)
  );
  MUXCY   \blk000003fc/blk00000406  (
    .CI(\blk000003fc/sig00000898 ),
    .DI(\blk000003fc/sig00000893 ),
    .S(\blk000003fc/sig0000089e ),
    .O(\blk000003fc/sig00000897 )
  );
  XORCY   \blk000003fc/blk00000405  (
    .CI(\blk000003fc/sig00000898 ),
    .LI(\blk000003fc/sig0000089e ),
    .O(sig0000030d)
  );
  MUXCY   \blk000003fc/blk00000404  (
    .CI(\blk000003fc/sig00000897 ),
    .DI(\blk000003fc/sig00000893 ),
    .S(\blk000003fc/sig0000089d ),
    .O(\blk000003fc/sig00000896 )
  );
  XORCY   \blk000003fc/blk00000403  (
    .CI(\blk000003fc/sig00000897 ),
    .LI(\blk000003fc/sig0000089d ),
    .O(sig0000030e)
  );
  MUXCY   \blk000003fc/blk00000402  (
    .CI(\blk000003fc/sig00000896 ),
    .DI(\blk000003fc/sig00000893 ),
    .S(\blk000003fc/sig0000089c ),
    .O(\blk000003fc/sig00000895 )
  );
  XORCY   \blk000003fc/blk00000401  (
    .CI(\blk000003fc/sig00000896 ),
    .LI(\blk000003fc/sig0000089c ),
    .O(sig0000030f)
  );
  MUXCY   \blk000003fc/blk00000400  (
    .CI(\blk000003fc/sig00000895 ),
    .DI(\blk000003fc/sig00000893 ),
    .S(\blk000003fc/sig0000089b ),
    .O(\blk000003fc/sig00000894 )
  );
  XORCY   \blk000003fc/blk000003ff  (
    .CI(\blk000003fc/sig00000895 ),
    .LI(\blk000003fc/sig0000089b ),
    .O(sig00000310)
  );
  GND   \blk000003fc/blk000003fe  (
    .G(\blk000003fc/sig00000893 )
  );
  VCC   \blk000003fc/blk000003fd  (
    .P(\blk000003fc/sig00000892 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk0000048a/blk0000048b/blk0000049b  (
    .C(clk),
    .CE(\blk0000048a/blk0000048b/sig000008bf ),
    .D(\blk0000048a/blk0000048b/sig000008c6 ),
    .Q(sig000002e1)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk0000048a/blk0000048b/blk0000049a  (
    .A0(\blk0000048a/blk0000048b/sig000008bf ),
    .A1(\blk0000048a/blk0000048b/sig000008be ),
    .A2(\blk0000048a/blk0000048b/sig000008bf ),
    .A3(\blk0000048a/blk0000048b/sig000008bf ),
    .CE(\blk0000048a/blk0000048b/sig000008bf ),
    .CLK(clk),
    .D(sig0000039d),
    .Q(\blk0000048a/blk0000048b/sig000008c6 ),
    .Q15(\NLW_blk0000048a/blk0000048b/blk0000049a_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk0000048a/blk0000048b/blk00000499  (
    .C(clk),
    .CE(\blk0000048a/blk0000048b/sig000008bf ),
    .D(\blk0000048a/blk0000048b/sig000008c5 ),
    .Q(sig000002e2)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk0000048a/blk0000048b/blk00000498  (
    .A0(\blk0000048a/blk0000048b/sig000008bf ),
    .A1(\blk0000048a/blk0000048b/sig000008be ),
    .A2(\blk0000048a/blk0000048b/sig000008bf ),
    .A3(\blk0000048a/blk0000048b/sig000008bf ),
    .CE(\blk0000048a/blk0000048b/sig000008bf ),
    .CLK(clk),
    .D(sig0000039c),
    .Q(\blk0000048a/blk0000048b/sig000008c5 ),
    .Q15(\NLW_blk0000048a/blk0000048b/blk00000498_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk0000048a/blk0000048b/blk00000497  (
    .C(clk),
    .CE(\blk0000048a/blk0000048b/sig000008bf ),
    .D(\blk0000048a/blk0000048b/sig000008c4 ),
    .Q(sig000002e0)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk0000048a/blk0000048b/blk00000496  (
    .A0(\blk0000048a/blk0000048b/sig000008bf ),
    .A1(\blk0000048a/blk0000048b/sig000008be ),
    .A2(\blk0000048a/blk0000048b/sig000008bf ),
    .A3(\blk0000048a/blk0000048b/sig000008bf ),
    .CE(\blk0000048a/blk0000048b/sig000008bf ),
    .CLK(clk),
    .D(sig0000039e),
    .Q(\blk0000048a/blk0000048b/sig000008c4 ),
    .Q15(\NLW_blk0000048a/blk0000048b/blk00000496_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk0000048a/blk0000048b/blk00000495  (
    .C(clk),
    .CE(\blk0000048a/blk0000048b/sig000008bf ),
    .D(\blk0000048a/blk0000048b/sig000008c3 ),
    .Q(sig000002e3)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk0000048a/blk0000048b/blk00000494  (
    .A0(\blk0000048a/blk0000048b/sig000008bf ),
    .A1(\blk0000048a/blk0000048b/sig000008be ),
    .A2(\blk0000048a/blk0000048b/sig000008bf ),
    .A3(\blk0000048a/blk0000048b/sig000008bf ),
    .CE(\blk0000048a/blk0000048b/sig000008bf ),
    .CLK(clk),
    .D(sig0000039b),
    .Q(\blk0000048a/blk0000048b/sig000008c3 ),
    .Q15(\NLW_blk0000048a/blk0000048b/blk00000494_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk0000048a/blk0000048b/blk00000493  (
    .C(clk),
    .CE(\blk0000048a/blk0000048b/sig000008bf ),
    .D(\blk0000048a/blk0000048b/sig000008c2 ),
    .Q(sig000002e4)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk0000048a/blk0000048b/blk00000492  (
    .A0(\blk0000048a/blk0000048b/sig000008bf ),
    .A1(\blk0000048a/blk0000048b/sig000008be ),
    .A2(\blk0000048a/blk0000048b/sig000008bf ),
    .A3(\blk0000048a/blk0000048b/sig000008bf ),
    .CE(\blk0000048a/blk0000048b/sig000008bf ),
    .CLK(clk),
    .D(sig0000039a),
    .Q(\blk0000048a/blk0000048b/sig000008c2 ),
    .Q15(\NLW_blk0000048a/blk0000048b/blk00000492_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk0000048a/blk0000048b/blk00000491  (
    .C(clk),
    .CE(\blk0000048a/blk0000048b/sig000008bf ),
    .D(\blk0000048a/blk0000048b/sig000008c1 ),
    .Q(sig000002e5)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk0000048a/blk0000048b/blk00000490  (
    .A0(\blk0000048a/blk0000048b/sig000008bf ),
    .A1(\blk0000048a/blk0000048b/sig000008be ),
    .A2(\blk0000048a/blk0000048b/sig000008bf ),
    .A3(\blk0000048a/blk0000048b/sig000008bf ),
    .CE(\blk0000048a/blk0000048b/sig000008bf ),
    .CLK(clk),
    .D(sig00000399),
    .Q(\blk0000048a/blk0000048b/sig000008c1 ),
    .Q15(\NLW_blk0000048a/blk0000048b/blk00000490_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk0000048a/blk0000048b/blk0000048f  (
    .C(clk),
    .CE(\blk0000048a/blk0000048b/sig000008bf ),
    .D(\blk0000048a/blk0000048b/sig000008c0 ),
    .Q(sig000002e6)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk0000048a/blk0000048b/blk0000048e  (
    .A0(\blk0000048a/blk0000048b/sig000008bf ),
    .A1(\blk0000048a/blk0000048b/sig000008be ),
    .A2(\blk0000048a/blk0000048b/sig000008bf ),
    .A3(\blk0000048a/blk0000048b/sig000008bf ),
    .CE(\blk0000048a/blk0000048b/sig000008bf ),
    .CLK(clk),
    .D(sig00000398),
    .Q(\blk0000048a/blk0000048b/sig000008c0 ),
    .Q15(\NLW_blk0000048a/blk0000048b/blk0000048e_Q15_UNCONNECTED )
  );
  VCC   \blk0000048a/blk0000048b/blk0000048d  (
    .P(\blk0000048a/blk0000048b/sig000008bf )
  );
  GND   \blk0000048a/blk0000048b/blk0000048c  (
    .G(\blk0000048a/blk0000048b/sig000008be )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk0000049c/blk0000049d/blk000004a1  (
    .C(clk),
    .CE(\blk0000049c/blk0000049d/sig000008ce ),
    .D(\blk0000049c/blk0000049d/sig000008cf ),
    .Q(sig0000037c)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk0000049c/blk0000049d/blk000004a0  (
    .A0(\blk0000049c/blk0000049d/sig000008cd ),
    .A1(\blk0000049c/blk0000049d/sig000008cd ),
    .A2(\blk0000049c/blk0000049d/sig000008cd ),
    .A3(\blk0000049c/blk0000049d/sig000008ce ),
    .CE(\blk0000049c/blk0000049d/sig000008ce ),
    .CLK(clk),
    .D(sig00000373),
    .Q(\blk0000049c/blk0000049d/sig000008cf ),
    .Q15(\NLW_blk0000049c/blk0000049d/blk000004a0_Q15_UNCONNECTED )
  );
  VCC   \blk0000049c/blk0000049d/blk0000049f  (
    .P(\blk0000049c/blk0000049d/sig000008ce )
  );
  GND   \blk0000049c/blk0000049d/blk0000049e  (
    .G(\blk0000049c/blk0000049d/sig000008cd )
  );
  INV   \blk000004a2/blk000004ae  (
    .I(sig00000349),
    .O(\blk000004a2/sig000008dd )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000004a2/blk000004ad  (
    .I0(sig0000034a),
    .O(\blk000004a2/sig000008df )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000004a2/blk000004ac  (
    .I0(sig0000034b),
    .O(\blk000004a2/sig000008de )
  );
  MUXCY   \blk000004a2/blk000004ab  (
    .CI(\blk000004a2/sig000008d9 ),
    .DI(\blk000004a2/sig000008d8 ),
    .S(\blk000004a2/sig000008dd ),
    .O(\blk000004a2/sig000008dc )
  );
  XORCY   \blk000004a2/blk000004aa  (
    .CI(\blk000004a2/sig000008d9 ),
    .LI(\blk000004a2/sig000008dd ),
    .O(sig0000033a)
  );
  XORCY   \blk000004a2/blk000004a9  (
    .CI(\blk000004a2/sig000008da ),
    .LI(sig0000034c),
    .O(sig0000033d)
  );
  MUXCY   \blk000004a2/blk000004a8  (
    .CI(\blk000004a2/sig000008dc ),
    .DI(\blk000004a2/sig000008d9 ),
    .S(\blk000004a2/sig000008df ),
    .O(\blk000004a2/sig000008db )
  );
  XORCY   \blk000004a2/blk000004a7  (
    .CI(\blk000004a2/sig000008dc ),
    .LI(\blk000004a2/sig000008df ),
    .O(sig0000033b)
  );
  MUXCY   \blk000004a2/blk000004a6  (
    .CI(\blk000004a2/sig000008db ),
    .DI(\blk000004a2/sig000008d9 ),
    .S(\blk000004a2/sig000008de ),
    .O(\blk000004a2/sig000008da )
  );
  XORCY   \blk000004a2/blk000004a5  (
    .CI(\blk000004a2/sig000008db ),
    .LI(\blk000004a2/sig000008de ),
    .O(sig0000033c)
  );
  GND   \blk000004a2/blk000004a4  (
    .G(\blk000004a2/sig000008d9 )
  );
  VCC   \blk000004a2/blk000004a3  (
    .P(\blk000004a2/sig000008d8 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000004af/blk000004b0/blk000004b4  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000004af/blk000004b0/sig000008eb ),
    .Q(sig000002f2)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000004af/blk000004b0/blk000004b3  (
    .A0(\blk000004af/blk000004b0/sig000008ea ),
    .A1(\blk000004af/blk000004b0/sig000008e9 ),
    .A2(\blk000004af/blk000004b0/sig000008e9 ),
    .A3(\blk000004af/blk000004b0/sig000008e9 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(sig000003bd),
    .Q(\blk000004af/blk000004b0/sig000008eb ),
    .Q15(\NLW_blk000004af/blk000004b0/blk000004b3_Q15_UNCONNECTED )
  );
  VCC   \blk000004af/blk000004b0/blk000004b2  (
    .P(\blk000004af/blk000004b0/sig000008ea )
  );
  GND   \blk000004af/blk000004b0/blk000004b1  (
    .G(\blk000004af/blk000004b0/sig000008e9 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000004b5/blk000004b6/blk000004ba  (
    .C(clk),
    .CE(sig00000001),
    .D(\blk000004b5/blk000004b6/sig000008f7 ),
    .Q(sig00000006)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000004b5/blk000004b6/blk000004b9  (
    .A0(\blk000004b5/blk000004b6/sig000008f6 ),
    .A1(\blk000004b5/blk000004b6/sig000008f5 ),
    .A2(\blk000004b5/blk000004b6/sig000008f5 ),
    .A3(\blk000004b5/blk000004b6/sig000008f5 ),
    .CE(sig00000001),
    .CLK(clk),
    .D(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .Q(\blk000004b5/blk000004b6/sig000008f7 ),
    .Q15(\NLW_blk000004b5/blk000004b6/blk000004b9_Q15_UNCONNECTED )
  );
  VCC   \blk000004b5/blk000004b6/blk000004b8  (
    .P(\blk000004b5/blk000004b6/sig000008f6 )
  );
  GND   \blk000004b5/blk000004b6/blk000004b7  (
    .G(\blk000004b5/blk000004b6/sig000008f5 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000004c5/blk000004c6/blk000004d6  (
    .C(clk),
    .CE(\blk000004c5/blk000004c6/sig00000917 ),
    .D(\blk000004c5/blk000004c6/sig0000091e ),
    .Q(sig000003c7)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000004c5/blk000004c6/blk000004d5  (
    .A0(\blk000004c5/blk000004c6/sig00000916 ),
    .A1(\blk000004c5/blk000004c6/sig00000916 ),
    .A2(\blk000004c5/blk000004c6/sig00000916 ),
    .A3(\blk000004c5/blk000004c6/sig00000916 ),
    .CE(\blk000004c5/blk000004c6/sig00000917 ),
    .CLK(clk),
    .D(sig000002d0),
    .Q(\blk000004c5/blk000004c6/sig0000091e ),
    .Q15(\NLW_blk000004c5/blk000004c6/blk000004d5_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000004c5/blk000004c6/blk000004d4  (
    .C(clk),
    .CE(\blk000004c5/blk000004c6/sig00000917 ),
    .D(\blk000004c5/blk000004c6/sig0000091d ),
    .Q(sig000003c6)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000004c5/blk000004c6/blk000004d3  (
    .A0(\blk000004c5/blk000004c6/sig00000916 ),
    .A1(\blk000004c5/blk000004c6/sig00000916 ),
    .A2(\blk000004c5/blk000004c6/sig00000916 ),
    .A3(\blk000004c5/blk000004c6/sig00000916 ),
    .CE(\blk000004c5/blk000004c6/sig00000917 ),
    .CLK(clk),
    .D(sig000002d1),
    .Q(\blk000004c5/blk000004c6/sig0000091d ),
    .Q15(\NLW_blk000004c5/blk000004c6/blk000004d3_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000004c5/blk000004c6/blk000004d2  (
    .C(clk),
    .CE(\blk000004c5/blk000004c6/sig00000917 ),
    .D(\blk000004c5/blk000004c6/sig0000091c ),
    .Q(sig000003c8)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000004c5/blk000004c6/blk000004d1  (
    .A0(\blk000004c5/blk000004c6/sig00000916 ),
    .A1(\blk000004c5/blk000004c6/sig00000916 ),
    .A2(\blk000004c5/blk000004c6/sig00000916 ),
    .A3(\blk000004c5/blk000004c6/sig00000916 ),
    .CE(\blk000004c5/blk000004c6/sig00000917 ),
    .CLK(clk),
    .D(sig000002cf),
    .Q(\blk000004c5/blk000004c6/sig0000091c ),
    .Q15(\NLW_blk000004c5/blk000004c6/blk000004d1_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000004c5/blk000004c6/blk000004d0  (
    .C(clk),
    .CE(\blk000004c5/blk000004c6/sig00000917 ),
    .D(\blk000004c5/blk000004c6/sig0000091b ),
    .Q(sig000003c5)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000004c5/blk000004c6/blk000004cf  (
    .A0(\blk000004c5/blk000004c6/sig00000916 ),
    .A1(\blk000004c5/blk000004c6/sig00000916 ),
    .A2(\blk000004c5/blk000004c6/sig00000916 ),
    .A3(\blk000004c5/blk000004c6/sig00000916 ),
    .CE(\blk000004c5/blk000004c6/sig00000917 ),
    .CLK(clk),
    .D(sig000002d2),
    .Q(\blk000004c5/blk000004c6/sig0000091b ),
    .Q15(\NLW_blk000004c5/blk000004c6/blk000004cf_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000004c5/blk000004c6/blk000004ce  (
    .C(clk),
    .CE(\blk000004c5/blk000004c6/sig00000917 ),
    .D(\blk000004c5/blk000004c6/sig0000091a ),
    .Q(sig000003c4)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000004c5/blk000004c6/blk000004cd  (
    .A0(\blk000004c5/blk000004c6/sig00000916 ),
    .A1(\blk000004c5/blk000004c6/sig00000916 ),
    .A2(\blk000004c5/blk000004c6/sig00000916 ),
    .A3(\blk000004c5/blk000004c6/sig00000916 ),
    .CE(\blk000004c5/blk000004c6/sig00000917 ),
    .CLK(clk),
    .D(sig000002d3),
    .Q(\blk000004c5/blk000004c6/sig0000091a ),
    .Q15(\NLW_blk000004c5/blk000004c6/blk000004cd_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000004c5/blk000004c6/blk000004cc  (
    .C(clk),
    .CE(\blk000004c5/blk000004c6/sig00000917 ),
    .D(\blk000004c5/blk000004c6/sig00000919 ),
    .Q(sig000003c3)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000004c5/blk000004c6/blk000004cb  (
    .A0(\blk000004c5/blk000004c6/sig00000916 ),
    .A1(\blk000004c5/blk000004c6/sig00000916 ),
    .A2(\blk000004c5/blk000004c6/sig00000916 ),
    .A3(\blk000004c5/blk000004c6/sig00000916 ),
    .CE(\blk000004c5/blk000004c6/sig00000917 ),
    .CLK(clk),
    .D(sig000002d4),
    .Q(\blk000004c5/blk000004c6/sig00000919 ),
    .Q15(\NLW_blk000004c5/blk000004c6/blk000004cb_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000004c5/blk000004c6/blk000004ca  (
    .C(clk),
    .CE(\blk000004c5/blk000004c6/sig00000917 ),
    .D(\blk000004c5/blk000004c6/sig00000918 ),
    .Q(sig000003c2)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000004c5/blk000004c6/blk000004c9  (
    .A0(\blk000004c5/blk000004c6/sig00000916 ),
    .A1(\blk000004c5/blk000004c6/sig00000916 ),
    .A2(\blk000004c5/blk000004c6/sig00000916 ),
    .A3(\blk000004c5/blk000004c6/sig00000916 ),
    .CE(\blk000004c5/blk000004c6/sig00000917 ),
    .CLK(clk),
    .D(sig000002d5),
    .Q(\blk000004c5/blk000004c6/sig00000918 ),
    .Q15(\NLW_blk000004c5/blk000004c6/blk000004c9_Q15_UNCONNECTED )
  );
  VCC   \blk000004c5/blk000004c6/blk000004c8  (
    .P(\blk000004c5/blk000004c6/sig00000917 )
  );
  GND   \blk000004c5/blk000004c6/blk000004c7  (
    .G(\blk000004c5/blk000004c6/sig00000916 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000004d7/blk000004d8/blk000004dc  (
    .C(clk),
    .CE(\blk000004d7/blk000004d8/sig00000926 ),
    .D(\blk000004d7/blk000004d8/sig00000927 ),
    .Q(sig000003c1)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000004d7/blk000004d8/blk000004db  (
    .A0(\blk000004d7/blk000004d8/sig00000925 ),
    .A1(\blk000004d7/blk000004d8/sig00000925 ),
    .A2(\blk000004d7/blk000004d8/sig00000925 ),
    .A3(\blk000004d7/blk000004d8/sig00000925 ),
    .CE(\blk000004d7/blk000004d8/sig00000926 ),
    .CLK(clk),
    .D(sig00000005),
    .Q(\blk000004d7/blk000004d8/sig00000927 ),
    .Q15(\NLW_blk000004d7/blk000004d8/blk000004db_Q15_UNCONNECTED )
  );
  VCC   \blk000004d7/blk000004d8/blk000004da  (
    .P(\blk000004d7/blk000004d8/sig00000926 )
  );
  GND   \blk000004d7/blk000004d8/blk000004d9  (
    .G(\blk000004d7/blk000004d8/sig00000925 )
  );
  INV   \blk000004dd/blk000004f9  (
    .I(sig000003b5),
    .O(\blk000004dd/sig00000947 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000004dd/blk000004f8  (
    .I0(sig000003b6),
    .O(\blk000004dd/sig0000094c )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000004dd/blk000004f7  (
    .I0(sig000003b7),
    .O(\blk000004dd/sig0000094b )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000004dd/blk000004f6  (
    .I0(sig000003b8),
    .O(\blk000004dd/sig0000094a )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000004dd/blk000004f5  (
    .I0(sig000003b9),
    .O(\blk000004dd/sig00000949 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000004dd/blk000004f4  (
    .I0(sig000003ba),
    .O(\blk000004dd/sig00000948 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk000004dd/blk000004f3  (
    .C(clk),
    .CE(\blk000004dd/sig00000938 ),
    .D(\blk000004dd/sig00000945 ),
    .R(sig00000002),
    .Q(NlwRenamedSig_OI_xn_index[0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk000004dd/blk000004f2  (
    .C(clk),
    .CE(\blk000004dd/sig00000938 ),
    .D(\blk000004dd/sig00000942 ),
    .R(sig00000002),
    .Q(NlwRenamedSig_OI_xn_index[1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk000004dd/blk000004f1  (
    .C(clk),
    .CE(\blk000004dd/sig00000938 ),
    .D(\blk000004dd/sig00000940 ),
    .R(sig00000002),
    .Q(NlwRenamedSig_OI_xn_index[2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk000004dd/blk000004f0  (
    .C(clk),
    .CE(\blk000004dd/sig00000938 ),
    .D(\blk000004dd/sig0000093e ),
    .R(sig00000002),
    .Q(NlwRenamedSig_OI_xn_index[3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk000004dd/blk000004ef  (
    .C(clk),
    .CE(\blk000004dd/sig00000938 ),
    .D(\blk000004dd/sig0000093c ),
    .R(sig00000002),
    .Q(NlwRenamedSig_OI_xn_index[4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk000004dd/blk000004ee  (
    .C(clk),
    .CE(\blk000004dd/sig00000938 ),
    .D(\blk000004dd/sig0000093a ),
    .R(sig00000002),
    .Q(NlwRenamedSig_OI_xn_index[5])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk000004dd/blk000004ed  (
    .C(clk),
    .CE(\blk000004dd/sig00000938 ),
    .D(\blk000004dd/sig00000944 ),
    .R(sig00000002),
    .Q(NlwRenamedSig_OI_xn_index[6])
  );
  MUXCY   \blk000004dd/blk000004ec  (
    .CI(\blk000004dd/sig00000939 ),
    .DI(\blk000004dd/sig00000938 ),
    .S(\blk000004dd/sig00000947 ),
    .O(\blk000004dd/sig00000946 )
  );
  XORCY   \blk000004dd/blk000004eb  (
    .CI(\blk000004dd/sig00000939 ),
    .LI(\blk000004dd/sig00000947 ),
    .O(\blk000004dd/sig00000945 )
  );
  XORCY   \blk000004dd/blk000004ea  (
    .CI(\blk000004dd/sig0000093b ),
    .LI(sig000003bb),
    .O(\blk000004dd/sig00000944 )
  );
  MUXCY   \blk000004dd/blk000004e9  (
    .CI(\blk000004dd/sig00000946 ),
    .DI(\blk000004dd/sig00000939 ),
    .S(\blk000004dd/sig0000094c ),
    .O(\blk000004dd/sig00000943 )
  );
  XORCY   \blk000004dd/blk000004e8  (
    .CI(\blk000004dd/sig00000946 ),
    .LI(\blk000004dd/sig0000094c ),
    .O(\blk000004dd/sig00000942 )
  );
  MUXCY   \blk000004dd/blk000004e7  (
    .CI(\blk000004dd/sig00000943 ),
    .DI(\blk000004dd/sig00000939 ),
    .S(\blk000004dd/sig0000094b ),
    .O(\blk000004dd/sig00000941 )
  );
  XORCY   \blk000004dd/blk000004e6  (
    .CI(\blk000004dd/sig00000943 ),
    .LI(\blk000004dd/sig0000094b ),
    .O(\blk000004dd/sig00000940 )
  );
  MUXCY   \blk000004dd/blk000004e5  (
    .CI(\blk000004dd/sig00000941 ),
    .DI(\blk000004dd/sig00000939 ),
    .S(\blk000004dd/sig0000094a ),
    .O(\blk000004dd/sig0000093f )
  );
  XORCY   \blk000004dd/blk000004e4  (
    .CI(\blk000004dd/sig00000941 ),
    .LI(\blk000004dd/sig0000094a ),
    .O(\blk000004dd/sig0000093e )
  );
  MUXCY   \blk000004dd/blk000004e3  (
    .CI(\blk000004dd/sig0000093f ),
    .DI(\blk000004dd/sig00000939 ),
    .S(\blk000004dd/sig00000949 ),
    .O(\blk000004dd/sig0000093d )
  );
  XORCY   \blk000004dd/blk000004e2  (
    .CI(\blk000004dd/sig0000093f ),
    .LI(\blk000004dd/sig00000949 ),
    .O(\blk000004dd/sig0000093c )
  );
  MUXCY   \blk000004dd/blk000004e1  (
    .CI(\blk000004dd/sig0000093d ),
    .DI(\blk000004dd/sig00000939 ),
    .S(\blk000004dd/sig00000948 ),
    .O(\blk000004dd/sig0000093b )
  );
  XORCY   \blk000004dd/blk000004e0  (
    .CI(\blk000004dd/sig0000093d ),
    .LI(\blk000004dd/sig00000948 ),
    .O(\blk000004dd/sig0000093a )
  );
  GND   \blk000004dd/blk000004df  (
    .G(\blk000004dd/sig00000939 )
  );
  VCC   \blk000004dd/blk000004de  (
    .P(\blk000004dd/sig00000938 )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
