// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Sep 24 12:12:33 2020
// Host        : LAPTOP-706OML5B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_fifo_16_1024_0_0_stub.v
// Design      : design_1_fifo_16_1024_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "fifo_16_1024,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk_65m, clk_100m, rstn_i, wr_start, rd_en, Din, 
  dout)
/* synthesis syn_black_box black_box_pad_pin="clk_65m,clk_100m,rstn_i,wr_start,rd_en,Din[11:0],dout[15:0]" */;
  input clk_65m;
  input clk_100m;
  input rstn_i;
  input wr_start;
  output rd_en;
  input [11:0]Din;
  output [15:0]dout;
endmodule
