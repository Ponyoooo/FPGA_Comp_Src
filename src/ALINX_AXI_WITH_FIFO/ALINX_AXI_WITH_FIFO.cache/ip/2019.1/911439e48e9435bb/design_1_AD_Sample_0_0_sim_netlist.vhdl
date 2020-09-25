-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Wed Sep 23 13:26:24 2020
-- Host        : LAPTOP-706OML5B running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_AD_Sample_0_0_sim_netlist.vhdl
-- Design      : design_1_AD_Sample_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AD_Sample is
  port (
    din : out STD_LOGIC_VECTOR ( 11 downto 0 );
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AD_Sample;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AD_Sample is
  signal \^din\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \din[3]_i_2_n_0\ : STD_LOGIC;
  signal \din_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \din_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \din_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \din_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \din_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \din_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \din_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \din_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \din_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \din_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \din_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \din_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \din_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \din_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \din_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \din_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \din_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \din_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \din_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \din_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \din_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \din_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \din_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_din_reg[11]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  din(11 downto 0) <= \^din\(11 downto 0);
\din[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^din\(0),
      O => \din[3]_i_2_n_0\
    );
\din_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \din_reg[3]_i_1_n_7\,
      Q => \^din\(0),
      R => '0'
    );
\din_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \din_reg[11]_i_1_n_5\,
      Q => \^din\(10),
      R => '0'
    );
\din_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \din_reg[11]_i_1_n_4\,
      Q => \^din\(11),
      R => '0'
    );
\din_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \din_reg[7]_i_1_n_0\,
      CO(3) => \NLW_din_reg[11]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \din_reg[11]_i_1_n_1\,
      CO(1) => \din_reg[11]_i_1_n_2\,
      CO(0) => \din_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \din_reg[11]_i_1_n_4\,
      O(2) => \din_reg[11]_i_1_n_5\,
      O(1) => \din_reg[11]_i_1_n_6\,
      O(0) => \din_reg[11]_i_1_n_7\,
      S(3 downto 0) => \^din\(11 downto 8)
    );
\din_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \din_reg[3]_i_1_n_6\,
      Q => \^din\(1),
      R => '0'
    );
\din_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \din_reg[3]_i_1_n_5\,
      Q => \^din\(2),
      R => '0'
    );
\din_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \din_reg[3]_i_1_n_4\,
      Q => \^din\(3),
      R => '0'
    );
\din_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \din_reg[3]_i_1_n_0\,
      CO(2) => \din_reg[3]_i_1_n_1\,
      CO(1) => \din_reg[3]_i_1_n_2\,
      CO(0) => \din_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \din_reg[3]_i_1_n_4\,
      O(2) => \din_reg[3]_i_1_n_5\,
      O(1) => \din_reg[3]_i_1_n_6\,
      O(0) => \din_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^din\(3 downto 1),
      S(0) => \din[3]_i_2_n_0\
    );
\din_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \din_reg[7]_i_1_n_7\,
      Q => \^din\(4),
      R => '0'
    );
\din_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \din_reg[7]_i_1_n_6\,
      Q => \^din\(5),
      R => '0'
    );
\din_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \din_reg[7]_i_1_n_5\,
      Q => \^din\(6),
      R => '0'
    );
\din_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \din_reg[7]_i_1_n_4\,
      Q => \^din\(7),
      R => '0'
    );
\din_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \din_reg[3]_i_1_n_0\,
      CO(3) => \din_reg[7]_i_1_n_0\,
      CO(2) => \din_reg[7]_i_1_n_1\,
      CO(1) => \din_reg[7]_i_1_n_2\,
      CO(0) => \din_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \din_reg[7]_i_1_n_4\,
      O(2) => \din_reg[7]_i_1_n_5\,
      O(1) => \din_reg[7]_i_1_n_6\,
      O(0) => \din_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^din\(7 downto 4)
    );
\din_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \din_reg[11]_i_1_n_7\,
      Q => \^din\(8),
      R => '0'
    );
\din_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \din_reg[11]_i_1_n_6\,
      Q => \^din\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    din : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_AD_Sample_0_0,AD_Sample,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "AD_Sample,Vivado 2019.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 64285713, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AD_Sample
     port map (
      clk => clk,
      din(11 downto 0) => din(11 downto 0)
    );
end STRUCTURE;
