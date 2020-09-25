// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Sep 24 12:20:15 2020
// Host        : LAPTOP-706OML5B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_AD_Sample_0_0_sim_netlist.v
// Design      : design_1_AD_Sample_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AD_Sample
   (din,
    clk);
  output [11:0]din;
  input clk;

  wire clk;
  wire [11:0]din;
  wire \din[3]_i_2_n_0 ;
  wire \din_reg[11]_i_1_n_1 ;
  wire \din_reg[11]_i_1_n_2 ;
  wire \din_reg[11]_i_1_n_3 ;
  wire \din_reg[11]_i_1_n_4 ;
  wire \din_reg[11]_i_1_n_5 ;
  wire \din_reg[11]_i_1_n_6 ;
  wire \din_reg[11]_i_1_n_7 ;
  wire \din_reg[3]_i_1_n_0 ;
  wire \din_reg[3]_i_1_n_1 ;
  wire \din_reg[3]_i_1_n_2 ;
  wire \din_reg[3]_i_1_n_3 ;
  wire \din_reg[3]_i_1_n_4 ;
  wire \din_reg[3]_i_1_n_5 ;
  wire \din_reg[3]_i_1_n_6 ;
  wire \din_reg[3]_i_1_n_7 ;
  wire \din_reg[7]_i_1_n_0 ;
  wire \din_reg[7]_i_1_n_1 ;
  wire \din_reg[7]_i_1_n_2 ;
  wire \din_reg[7]_i_1_n_3 ;
  wire \din_reg[7]_i_1_n_4 ;
  wire \din_reg[7]_i_1_n_5 ;
  wire \din_reg[7]_i_1_n_6 ;
  wire \din_reg[7]_i_1_n_7 ;
  wire [3:3]\NLW_din_reg[11]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \din[3]_i_2 
       (.I0(din[0]),
        .O(\din[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\din_reg[3]_i_1_n_7 ),
        .Q(din[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\din_reg[11]_i_1_n_5 ),
        .Q(din[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\din_reg[11]_i_1_n_4 ),
        .Q(din[11]),
        .R(1'b0));
  CARRY4 \din_reg[11]_i_1 
       (.CI(\din_reg[7]_i_1_n_0 ),
        .CO({\NLW_din_reg[11]_i_1_CO_UNCONNECTED [3],\din_reg[11]_i_1_n_1 ,\din_reg[11]_i_1_n_2 ,\din_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\din_reg[11]_i_1_n_4 ,\din_reg[11]_i_1_n_5 ,\din_reg[11]_i_1_n_6 ,\din_reg[11]_i_1_n_7 }),
        .S(din[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\din_reg[3]_i_1_n_6 ),
        .Q(din[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\din_reg[3]_i_1_n_5 ),
        .Q(din[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\din_reg[3]_i_1_n_4 ),
        .Q(din[3]),
        .R(1'b0));
  CARRY4 \din_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\din_reg[3]_i_1_n_0 ,\din_reg[3]_i_1_n_1 ,\din_reg[3]_i_1_n_2 ,\din_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\din_reg[3]_i_1_n_4 ,\din_reg[3]_i_1_n_5 ,\din_reg[3]_i_1_n_6 ,\din_reg[3]_i_1_n_7 }),
        .S({din[3:1],\din[3]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\din_reg[7]_i_1_n_7 ),
        .Q(din[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\din_reg[7]_i_1_n_6 ),
        .Q(din[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\din_reg[7]_i_1_n_5 ),
        .Q(din[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\din_reg[7]_i_1_n_4 ),
        .Q(din[7]),
        .R(1'b0));
  CARRY4 \din_reg[7]_i_1 
       (.CI(\din_reg[3]_i_1_n_0 ),
        .CO({\din_reg[7]_i_1_n_0 ,\din_reg[7]_i_1_n_1 ,\din_reg[7]_i_1_n_2 ,\din_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\din_reg[7]_i_1_n_4 ,\din_reg[7]_i_1_n_5 ,\din_reg[7]_i_1_n_6 ,\din_reg[7]_i_1_n_7 }),
        .S(din[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\din_reg[11]_i_1_n_7 ),
        .Q(din[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\din_reg[11]_i_1_n_6 ),
        .Q(din[9]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_AD_Sample_0_0,AD_Sample,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "AD_Sample,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    din);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input clk;
  output [11:0]din;

  wire clk;
  wire [11:0]din;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AD_Sample inst
       (.clk(clk),
        .din(din));
endmodule
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
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
