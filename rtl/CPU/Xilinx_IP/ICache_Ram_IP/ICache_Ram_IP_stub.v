// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Jul 22 16:23:56 2019
// Host        : CentralRC-17R5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/NSCSCC/Hypo_SoC/rtl/CPU/Xilinx_IP/ICache_Ram_IP/ICache_Ram_IP_stub.v
// Design      : ICache_Ram_IP
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_12,Vivado 2018.3" *)
module ICache_Ram_IP(a, d, dpra, clk, we, dpo)
/* synthesis syn_black_box black_box_pad_pin="a[11:0],d[31:0],dpra[11:0],clk,we,dpo[31:0]" */;
  input [11:0]a;
  input [31:0]d;
  input [11:0]dpra;
  input clk;
  input we;
  output [31:0]dpo;
endmodule
