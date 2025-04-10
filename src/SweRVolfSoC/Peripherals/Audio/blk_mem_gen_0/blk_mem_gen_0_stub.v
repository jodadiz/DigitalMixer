// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Tue May 12 11:41:46 2020
// Host        : linux running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/matthew/Matthew/UCT/2020/Embedded3/Embedded_Prac5/arpeggiator/arpeggiator.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_stub.v
// Design      : blk_mem_gen_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_3_6,Vivado 2017.2" *)
module blk_mem_gen_0(clka, ena, wea, addra, dina, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[7:0],dina[10:0],douta[10:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [7:0]addra;
  input [10:0]dina;
  output [10:0]douta;
endmodule
