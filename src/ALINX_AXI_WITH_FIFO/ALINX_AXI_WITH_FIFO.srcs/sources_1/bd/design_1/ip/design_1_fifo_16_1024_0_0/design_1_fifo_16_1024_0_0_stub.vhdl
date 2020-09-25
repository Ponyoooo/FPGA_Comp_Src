-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri Sep 25 20:54:12 2020
-- Host        : LAPTOP-706OML5B running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/Doc/Vivado2019_1/ALINX_AXI_WITH_FIFO/ALINX_AXI_WITH_FIFO.srcs/sources_1/bd/design_1/ip/design_1_fifo_16_1024_0_0/design_1_fifo_16_1024_0_0_stub.vhdl
-- Design      : design_1_fifo_16_1024_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_fifo_16_1024_0_0 is
  Port ( 
    clk_65m : in STD_LOGIC;
    clk_100m : in STD_LOGIC;
    rstn_i : in STD_LOGIC;
    wr_start : in STD_LOGIC;
    rd_en : out STD_LOGIC;
    Din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    burst_delay_flag : in STD_LOGIC
  );

end design_1_fifo_16_1024_0_0;

architecture stub of design_1_fifo_16_1024_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_65m,clk_100m,rstn_i,wr_start,rd_en,Din[11:0],dout[15:0],burst_delay_flag";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "fifo_16_1024,Vivado 2019.1";
begin
end;
