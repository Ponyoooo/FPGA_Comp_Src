//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Fri Sep 25 21:10:40 2020
//Host        : LAPTOP-706OML5B running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=9,numReposBlks=9,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=2,da_ps7_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    adc_ch0_clk,
    adc_ch1_clk,
    adc_ch1_data,
    done,
    error,
    rst,
    wr_start);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;
  output [0:0]adc_ch0_clk;
  output [0:0]adc_ch1_clk;
  input [11:0]adc_ch1_data;
  output done;
  output error;
  input rst;
  input wr_start;

  wire [31:0]AXI_FIFOIN_0_M00_AXI_ARADDR;
  wire [1:0]AXI_FIFOIN_0_M00_AXI_ARBURST;
  wire [3:0]AXI_FIFOIN_0_M00_AXI_ARCACHE;
  wire [0:0]AXI_FIFOIN_0_M00_AXI_ARID;
  wire [7:0]AXI_FIFOIN_0_M00_AXI_ARLEN;
  wire AXI_FIFOIN_0_M00_AXI_ARLOCK;
  wire [2:0]AXI_FIFOIN_0_M00_AXI_ARPROT;
  wire [3:0]AXI_FIFOIN_0_M00_AXI_ARQOS;
  wire AXI_FIFOIN_0_M00_AXI_ARREADY;
  wire [2:0]AXI_FIFOIN_0_M00_AXI_ARSIZE;
  wire AXI_FIFOIN_0_M00_AXI_ARVALID;
  wire [31:0]AXI_FIFOIN_0_M00_AXI_AWADDR;
  wire [1:0]AXI_FIFOIN_0_M00_AXI_AWBURST;
  wire [3:0]AXI_FIFOIN_0_M00_AXI_AWCACHE;
  wire [0:0]AXI_FIFOIN_0_M00_AXI_AWID;
  wire [7:0]AXI_FIFOIN_0_M00_AXI_AWLEN;
  wire AXI_FIFOIN_0_M00_AXI_AWLOCK;
  wire [2:0]AXI_FIFOIN_0_M00_AXI_AWPROT;
  wire [3:0]AXI_FIFOIN_0_M00_AXI_AWQOS;
  wire AXI_FIFOIN_0_M00_AXI_AWREADY;
  wire [2:0]AXI_FIFOIN_0_M00_AXI_AWSIZE;
  wire AXI_FIFOIN_0_M00_AXI_AWVALID;
  wire [0:0]AXI_FIFOIN_0_M00_AXI_BID;
  wire AXI_FIFOIN_0_M00_AXI_BREADY;
  wire [1:0]AXI_FIFOIN_0_M00_AXI_BRESP;
  wire AXI_FIFOIN_0_M00_AXI_BVALID;
  wire [31:0]AXI_FIFOIN_0_M00_AXI_RDATA;
  wire [0:0]AXI_FIFOIN_0_M00_AXI_RID;
  wire AXI_FIFOIN_0_M00_AXI_RLAST;
  wire AXI_FIFOIN_0_M00_AXI_RREADY;
  wire [1:0]AXI_FIFOIN_0_M00_AXI_RRESP;
  wire AXI_FIFOIN_0_M00_AXI_RVALID;
  wire [31:0]AXI_FIFOIN_0_M00_AXI_WDATA;
  wire AXI_FIFOIN_0_M00_AXI_WLAST;
  wire AXI_FIFOIN_0_M00_AXI_WREADY;
  wire [3:0]AXI_FIFOIN_0_M00_AXI_WSTRB;
  wire AXI_FIFOIN_0_M00_AXI_WVALID;
  wire AXI_FIFOIN_0_WNEXT;
  wire AXI_FIFOIN_0_m00_axi_error;
  wire AXI_FIFOIN_0_m00_axi_txn_done;
  wire [11:0]Din_0_1;
  wire [31:0]axi_smc_M00_AXI_ARADDR;
  wire [1:0]axi_smc_M00_AXI_ARBURST;
  wire [3:0]axi_smc_M00_AXI_ARCACHE;
  wire [3:0]axi_smc_M00_AXI_ARLEN;
  wire [1:0]axi_smc_M00_AXI_ARLOCK;
  wire [2:0]axi_smc_M00_AXI_ARPROT;
  wire [3:0]axi_smc_M00_AXI_ARQOS;
  wire axi_smc_M00_AXI_ARREADY;
  wire [2:0]axi_smc_M00_AXI_ARSIZE;
  wire axi_smc_M00_AXI_ARVALID;
  wire [31:0]axi_smc_M00_AXI_AWADDR;
  wire [1:0]axi_smc_M00_AXI_AWBURST;
  wire [3:0]axi_smc_M00_AXI_AWCACHE;
  wire [3:0]axi_smc_M00_AXI_AWLEN;
  wire [1:0]axi_smc_M00_AXI_AWLOCK;
  wire [2:0]axi_smc_M00_AXI_AWPROT;
  wire [3:0]axi_smc_M00_AXI_AWQOS;
  wire axi_smc_M00_AXI_AWREADY;
  wire [2:0]axi_smc_M00_AXI_AWSIZE;
  wire axi_smc_M00_AXI_AWVALID;
  wire axi_smc_M00_AXI_BREADY;
  wire [1:0]axi_smc_M00_AXI_BRESP;
  wire axi_smc_M00_AXI_BVALID;
  wire [63:0]axi_smc_M00_AXI_RDATA;
  wire axi_smc_M00_AXI_RLAST;
  wire axi_smc_M00_AXI_RREADY;
  wire [1:0]axi_smc_M00_AXI_RRESP;
  wire axi_smc_M00_AXI_RVALID;
  wire [63:0]axi_smc_M00_AXI_WDATA;
  wire axi_smc_M00_AXI_WLAST;
  wire axi_smc_M00_AXI_WREADY;
  wire [7:0]axi_smc_M00_AXI_WSTRB;
  wire axi_smc_M00_AXI_WVALID;
  wire [15:0]fifo_16_1024_0_dout;
  wire fifo_16_1024_0_rd_en;
  wire [14:0]processing_system7_0_DDR_ADDR;
  wire [2:0]processing_system7_0_DDR_BA;
  wire processing_system7_0_DDR_CAS_N;
  wire processing_system7_0_DDR_CKE;
  wire processing_system7_0_DDR_CK_N;
  wire processing_system7_0_DDR_CK_P;
  wire processing_system7_0_DDR_CS_N;
  wire [3:0]processing_system7_0_DDR_DM;
  wire [31:0]processing_system7_0_DDR_DQ;
  wire [3:0]processing_system7_0_DDR_DQS_N;
  wire [3:0]processing_system7_0_DDR_DQS_P;
  wire processing_system7_0_DDR_ODT;
  wire processing_system7_0_DDR_RAS_N;
  wire processing_system7_0_DDR_RESET_N;
  wire processing_system7_0_DDR_WE_N;
  wire processing_system7_0_FCLK_CLK0;
  wire processing_system7_0_FCLK_CLK1;
  wire processing_system7_0_FCLK_RESET0_N;
  wire processing_system7_0_FIXED_IO_DDR_VRN;
  wire processing_system7_0_FIXED_IO_DDR_VRP;
  wire [53:0]processing_system7_0_FIXED_IO_MIO;
  wire processing_system7_0_FIXED_IO_PS_CLK;
  wire processing_system7_0_FIXED_IO_PS_PORB;
  wire processing_system7_0_FIXED_IO_PS_SRSTB;
  wire rst_1;
  wire [0:0]rst_ps7_0_100M_peripheral_aresetn;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [0:0]util_vector_logic_2_Res;
  wire [0:0]util_vector_logic_3_Res;
  wire wr_start_1;

  assign Din_0_1 = adc_ch1_data[11:0];
  assign adc_ch0_clk[0] = util_vector_logic_2_Res;
  assign adc_ch1_clk[0] = util_vector_logic_2_Res;
  assign done = AXI_FIFOIN_0_m00_axi_txn_done;
  assign error = AXI_FIFOIN_0_m00_axi_error;
  assign rst_1 = rst;
  assign wr_start_1 = wr_start;
  design_1_AXI_FIFOIN_0_0 AXI_FIFOIN_0
       (.InData(fifo_16_1024_0_dout),
        .WNEXT(AXI_FIFOIN_0_WNEXT),
        .m00_axi_aclk(processing_system7_0_FCLK_CLK1),
        .m00_axi_araddr(AXI_FIFOIN_0_M00_AXI_ARADDR),
        .m00_axi_arburst(AXI_FIFOIN_0_M00_AXI_ARBURST),
        .m00_axi_arcache(AXI_FIFOIN_0_M00_AXI_ARCACHE),
        .m00_axi_aresetn(rst_ps7_0_100M_peripheral_aresetn),
        .m00_axi_arid(AXI_FIFOIN_0_M00_AXI_ARID),
        .m00_axi_arlen(AXI_FIFOIN_0_M00_AXI_ARLEN),
        .m00_axi_arlock(AXI_FIFOIN_0_M00_AXI_ARLOCK),
        .m00_axi_arprot(AXI_FIFOIN_0_M00_AXI_ARPROT),
        .m00_axi_arqos(AXI_FIFOIN_0_M00_AXI_ARQOS),
        .m00_axi_arready(AXI_FIFOIN_0_M00_AXI_ARREADY),
        .m00_axi_arsize(AXI_FIFOIN_0_M00_AXI_ARSIZE),
        .m00_axi_arvalid(AXI_FIFOIN_0_M00_AXI_ARVALID),
        .m00_axi_awaddr(AXI_FIFOIN_0_M00_AXI_AWADDR),
        .m00_axi_awburst(AXI_FIFOIN_0_M00_AXI_AWBURST),
        .m00_axi_awcache(AXI_FIFOIN_0_M00_AXI_AWCACHE),
        .m00_axi_awid(AXI_FIFOIN_0_M00_AXI_AWID),
        .m00_axi_awlen(AXI_FIFOIN_0_M00_AXI_AWLEN),
        .m00_axi_awlock(AXI_FIFOIN_0_M00_AXI_AWLOCK),
        .m00_axi_awprot(AXI_FIFOIN_0_M00_AXI_AWPROT),
        .m00_axi_awqos(AXI_FIFOIN_0_M00_AXI_AWQOS),
        .m00_axi_awready(AXI_FIFOIN_0_M00_AXI_AWREADY),
        .m00_axi_awsize(AXI_FIFOIN_0_M00_AXI_AWSIZE),
        .m00_axi_awvalid(AXI_FIFOIN_0_M00_AXI_AWVALID),
        .m00_axi_bid(AXI_FIFOIN_0_M00_AXI_BID),
        .m00_axi_bready(AXI_FIFOIN_0_M00_AXI_BREADY),
        .m00_axi_bresp(AXI_FIFOIN_0_M00_AXI_BRESP),
        .m00_axi_bvalid(AXI_FIFOIN_0_M00_AXI_BVALID),
        .m00_axi_error(AXI_FIFOIN_0_m00_axi_error),
        .m00_axi_init_axi_txn(fifo_16_1024_0_rd_en),
        .m00_axi_rdata(AXI_FIFOIN_0_M00_AXI_RDATA),
        .m00_axi_rid(AXI_FIFOIN_0_M00_AXI_RID),
        .m00_axi_rlast(AXI_FIFOIN_0_M00_AXI_RLAST),
        .m00_axi_rready(AXI_FIFOIN_0_M00_AXI_RREADY),
        .m00_axi_rresp(AXI_FIFOIN_0_M00_AXI_RRESP),
        .m00_axi_rvalid(AXI_FIFOIN_0_M00_AXI_RVALID),
        .m00_axi_txn_done(AXI_FIFOIN_0_m00_axi_txn_done),
        .m00_axi_wdata(AXI_FIFOIN_0_M00_AXI_WDATA),
        .m00_axi_wlast(AXI_FIFOIN_0_M00_AXI_WLAST),
        .m00_axi_wready(AXI_FIFOIN_0_M00_AXI_WREADY),
        .m00_axi_wstrb(AXI_FIFOIN_0_M00_AXI_WSTRB),
        .m00_axi_wvalid(AXI_FIFOIN_0_M00_AXI_WVALID));
  design_1_axi_smc_0 axi_smc
       (.M00_AXI_araddr(axi_smc_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_smc_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_smc_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_smc_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_smc_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_smc_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_smc_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_smc_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_smc_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_smc_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_smc_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_smc_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_smc_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_smc_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_smc_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_smc_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_smc_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_smc_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_smc_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_smc_M00_AXI_RLAST),
        .M00_AXI_rready(axi_smc_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_smc_M00_AXI_WLAST),
        .M00_AXI_wready(axi_smc_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_smc_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_smc_M00_AXI_WVALID),
        .S00_AXI_araddr(AXI_FIFOIN_0_M00_AXI_ARADDR),
        .S00_AXI_arburst(AXI_FIFOIN_0_M00_AXI_ARBURST),
        .S00_AXI_arcache(AXI_FIFOIN_0_M00_AXI_ARCACHE),
        .S00_AXI_arid(AXI_FIFOIN_0_M00_AXI_ARID),
        .S00_AXI_arlen(AXI_FIFOIN_0_M00_AXI_ARLEN),
        .S00_AXI_arlock(AXI_FIFOIN_0_M00_AXI_ARLOCK),
        .S00_AXI_arprot(AXI_FIFOIN_0_M00_AXI_ARPROT),
        .S00_AXI_arqos(AXI_FIFOIN_0_M00_AXI_ARQOS),
        .S00_AXI_arready(AXI_FIFOIN_0_M00_AXI_ARREADY),
        .S00_AXI_arsize(AXI_FIFOIN_0_M00_AXI_ARSIZE),
        .S00_AXI_arvalid(AXI_FIFOIN_0_M00_AXI_ARVALID),
        .S00_AXI_awaddr(AXI_FIFOIN_0_M00_AXI_AWADDR),
        .S00_AXI_awburst(AXI_FIFOIN_0_M00_AXI_AWBURST),
        .S00_AXI_awcache(AXI_FIFOIN_0_M00_AXI_AWCACHE),
        .S00_AXI_awid(AXI_FIFOIN_0_M00_AXI_AWID),
        .S00_AXI_awlen(AXI_FIFOIN_0_M00_AXI_AWLEN),
        .S00_AXI_awlock(AXI_FIFOIN_0_M00_AXI_AWLOCK),
        .S00_AXI_awprot(AXI_FIFOIN_0_M00_AXI_AWPROT),
        .S00_AXI_awqos(AXI_FIFOIN_0_M00_AXI_AWQOS),
        .S00_AXI_awready(AXI_FIFOIN_0_M00_AXI_AWREADY),
        .S00_AXI_awsize(AXI_FIFOIN_0_M00_AXI_AWSIZE),
        .S00_AXI_awvalid(AXI_FIFOIN_0_M00_AXI_AWVALID),
        .S00_AXI_bid(AXI_FIFOIN_0_M00_AXI_BID),
        .S00_AXI_bready(AXI_FIFOIN_0_M00_AXI_BREADY),
        .S00_AXI_bresp(AXI_FIFOIN_0_M00_AXI_BRESP),
        .S00_AXI_bvalid(AXI_FIFOIN_0_M00_AXI_BVALID),
        .S00_AXI_rdata(AXI_FIFOIN_0_M00_AXI_RDATA),
        .S00_AXI_rid(AXI_FIFOIN_0_M00_AXI_RID),
        .S00_AXI_rlast(AXI_FIFOIN_0_M00_AXI_RLAST),
        .S00_AXI_rready(AXI_FIFOIN_0_M00_AXI_RREADY),
        .S00_AXI_rresp(AXI_FIFOIN_0_M00_AXI_RRESP),
        .S00_AXI_rvalid(AXI_FIFOIN_0_M00_AXI_RVALID),
        .S00_AXI_wdata(AXI_FIFOIN_0_M00_AXI_WDATA),
        .S00_AXI_wlast(AXI_FIFOIN_0_M00_AXI_WLAST),
        .S00_AXI_wready(AXI_FIFOIN_0_M00_AXI_WREADY),
        .S00_AXI_wstrb(AXI_FIFOIN_0_M00_AXI_WSTRB),
        .S00_AXI_wvalid(AXI_FIFOIN_0_M00_AXI_WVALID),
        .aclk(processing_system7_0_FCLK_CLK1),
        .aresetn(rst_ps7_0_100M_peripheral_aresetn));
  design_1_fifo_16_1024_0_0 fifo_16_1024_0
       (.Din(Din_0_1),
        .burst_delay_flag(AXI_FIFOIN_0_WNEXT),
        .clk_100m(util_vector_logic_3_Res),
        .clk_65m(processing_system7_0_FCLK_CLK0),
        .dout(fifo_16_1024_0_dout),
        .rd_en(fifo_16_1024_0_rd_en),
        .rstn_i(util_vector_logic_0_Res),
        .wr_start(util_vector_logic_1_Res));
  design_1_processing_system7_0_0 processing_system7_0
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK0(processing_system7_0_FCLK_CLK0),
        .FCLK_CLK1(processing_system7_0_FCLK_CLK1),
        .FCLK_RESET0_N(processing_system7_0_FCLK_RESET0_N),
        .MIO(FIXED_IO_mio[53:0]),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .S_AXI_HP0_ACLK(processing_system7_0_FCLK_CLK1),
        .S_AXI_HP0_ARADDR(axi_smc_M00_AXI_ARADDR),
        .S_AXI_HP0_ARBURST(axi_smc_M00_AXI_ARBURST),
        .S_AXI_HP0_ARCACHE(axi_smc_M00_AXI_ARCACHE),
        .S_AXI_HP0_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARLEN(axi_smc_M00_AXI_ARLEN),
        .S_AXI_HP0_ARLOCK(axi_smc_M00_AXI_ARLOCK),
        .S_AXI_HP0_ARPROT(axi_smc_M00_AXI_ARPROT),
        .S_AXI_HP0_ARQOS(axi_smc_M00_AXI_ARQOS),
        .S_AXI_HP0_ARREADY(axi_smc_M00_AXI_ARREADY),
        .S_AXI_HP0_ARSIZE(axi_smc_M00_AXI_ARSIZE),
        .S_AXI_HP0_ARVALID(axi_smc_M00_AXI_ARVALID),
        .S_AXI_HP0_AWADDR(axi_smc_M00_AXI_AWADDR),
        .S_AXI_HP0_AWBURST(axi_smc_M00_AXI_AWBURST),
        .S_AXI_HP0_AWCACHE(axi_smc_M00_AXI_AWCACHE),
        .S_AXI_HP0_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_AWLEN(axi_smc_M00_AXI_AWLEN),
        .S_AXI_HP0_AWLOCK(axi_smc_M00_AXI_AWLOCK),
        .S_AXI_HP0_AWPROT(axi_smc_M00_AXI_AWPROT),
        .S_AXI_HP0_AWQOS(axi_smc_M00_AXI_AWQOS),
        .S_AXI_HP0_AWREADY(axi_smc_M00_AXI_AWREADY),
        .S_AXI_HP0_AWSIZE(axi_smc_M00_AXI_AWSIZE),
        .S_AXI_HP0_AWVALID(axi_smc_M00_AXI_AWVALID),
        .S_AXI_HP0_BREADY(axi_smc_M00_AXI_BREADY),
        .S_AXI_HP0_BRESP(axi_smc_M00_AXI_BRESP),
        .S_AXI_HP0_BVALID(axi_smc_M00_AXI_BVALID),
        .S_AXI_HP0_RDATA(axi_smc_M00_AXI_RDATA),
        .S_AXI_HP0_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP0_RLAST(axi_smc_M00_AXI_RLAST),
        .S_AXI_HP0_RREADY(axi_smc_M00_AXI_RREADY),
        .S_AXI_HP0_RRESP(axi_smc_M00_AXI_RRESP),
        .S_AXI_HP0_RVALID(axi_smc_M00_AXI_RVALID),
        .S_AXI_HP0_WDATA(axi_smc_M00_AXI_WDATA),
        .S_AXI_HP0_WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_WLAST(axi_smc_M00_AXI_WLAST),
        .S_AXI_HP0_WREADY(axi_smc_M00_AXI_WREADY),
        .S_AXI_HP0_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP0_WSTRB(axi_smc_M00_AXI_WSTRB),
        .S_AXI_HP0_WVALID(axi_smc_M00_AXI_WVALID));
  design_1_rst_ps7_0_100M_0 rst_ps7_0_100M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ps7_0_100M_peripheral_aresetn),
        .slowest_sync_clk(processing_system7_0_FCLK_CLK1));
  design_1_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(rst_1),
        .Res(util_vector_logic_0_Res));
  design_1_util_vector_logic_0_1 util_vector_logic_1
       (.Op1(wr_start_1),
        .Res(util_vector_logic_1_Res));
  design_1_util_vector_logic_2_0 util_vector_logic_2
       (.Op1(processing_system7_0_FCLK_CLK0),
        .Res(util_vector_logic_2_Res));
  design_1_util_vector_logic_1_0 util_vector_logic_3
       (.Op1(processing_system7_0_FCLK_CLK1),
        .Res(util_vector_logic_3_Res));
endmodule
