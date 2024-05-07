-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Wed Apr 17 12:11:26 2024
-- Host        : billionaire-he-will-be running 64-bit Ubuntu 23.10
-- Command     : write_vhdl -force -mode funcsim
--               /home/sims0702/cdd_lab_2/cdd_lab_2.srcs/sources_1/bd/design_1/ip/design_1_uart_top_0_0/design_1_uart_top_0_0_sim_netlist.vhdl
-- Design      : design_1_uart_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart_top_0_0_uart_receiver is
  port (
    rBuffer_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \rCnt_reg[3]\ : out STD_LOGIC;
    rBuffer : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    iRx : in STD_LOGIC;
    iClk : in STD_LOGIC;
    \rBuffer_reg[88]\ : in STD_LOGIC;
    \rBuffer_reg[88]_0\ : in STD_LOGIC;
    \rBuffer_reg[88]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_rFSM_reg[1]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    iRst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_uart_top_0_0_uart_receiver : entity is "uart_receiver";
end design_1_uart_top_0_0_uart_receiver;

architecture STRUCTURE of design_1_uart_top_0_0_uart_receiver is
  signal \FSM_onehot_rCurrentState[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurrentState[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurrentState[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurrentState[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurrentState[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurrentState[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurrentState[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurrentState[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurrentState[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurrentState[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurrentState[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurrentState[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurrentState[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurrentState[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurrentState[5]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurrentState[5]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurrentState_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_rCurrentState_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_rCurrentState_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_rCurrentState_reg_n_0_[4]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal data0 : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal rBitCountCurrent : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \rBitCountCurrent[0]_i_1_n_0\ : STD_LOGIC;
  signal \rBitCountCurrent[1]_i_1_n_0\ : STD_LOGIC;
  signal \rBitCountCurrent[2]_i_1_n_0\ : STD_LOGIC;
  signal \rBitCountCurrent[2]_i_3_n_0\ : STD_LOGIC;
  signal rBufferCurrent : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rCntClockCurrent : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \rCntClockCurrent[0]_i_1_n_0\ : STD_LOGIC;
  signal \rCntClockCurrent[0]_i_2_n_0\ : STD_LOGIC;
  signal \rCntClockCurrent[10]_i_1_n_0\ : STD_LOGIC;
  signal \rCntClockCurrent[10]_i_2_n_0\ : STD_LOGIC;
  signal \rCntClockCurrent[10]_i_3_n_0\ : STD_LOGIC;
  signal \rCntClockCurrent[10]_i_4_n_0\ : STD_LOGIC;
  signal \rCntClockCurrent[11]_i_1_n_0\ : STD_LOGIC;
  signal \rCntClockCurrent[11]_i_2_n_0\ : STD_LOGIC;
  signal \rCntClockCurrent[11]_i_3_n_0\ : STD_LOGIC;
  signal \rCntClockCurrent[11]_i_4_n_0\ : STD_LOGIC;
  signal \rCntClockCurrent[11]_i_5_n_0\ : STD_LOGIC;
  signal \rCntClockCurrent[1]_i_1_n_0\ : STD_LOGIC;
  signal \rCntClockCurrent[2]_i_1_n_0\ : STD_LOGIC;
  signal \rCntClockCurrent[3]_i_1_n_0\ : STD_LOGIC;
  signal \rCntClockCurrent[4]_i_1_n_0\ : STD_LOGIC;
  signal \rCntClockCurrent[4]_i_2_n_0\ : STD_LOGIC;
  signal \rCntClockCurrent[4]_i_3_n_0\ : STD_LOGIC;
  signal \rCntClockCurrent[5]_i_1_n_0\ : STD_LOGIC;
  signal \rCntClockCurrent[6]_i_1_n_0\ : STD_LOGIC;
  signal \rCntClockCurrent[7]_i_1_n_0\ : STD_LOGIC;
  signal \rCntClockCurrent[8]_i_1_n_0\ : STD_LOGIC;
  signal \rCntClockCurrent[9]_i_1_n_0\ : STD_LOGIC;
  signal \rCntClockCurrent[9]_i_2_n_0\ : STD_LOGIC;
  signal \rCntClockCurrent[9]_i_3_n_0\ : STD_LOGIC;
  signal rDataCurrent1 : STD_LOGIC;
  signal rDataCurrent2 : STD_LOGIC;
  signal wBitCountNext : STD_LOGIC;
  signal wBufferNext : STD_LOGIC;
  signal \wCntClockNext0_carry__0_n_0\ : STD_LOGIC;
  signal \wCntClockNext0_carry__0_n_1\ : STD_LOGIC;
  signal \wCntClockNext0_carry__0_n_2\ : STD_LOGIC;
  signal \wCntClockNext0_carry__0_n_3\ : STD_LOGIC;
  signal \wCntClockNext0_carry__1_n_2\ : STD_LOGIC;
  signal \wCntClockNext0_carry__1_n_3\ : STD_LOGIC;
  signal wCntClockNext0_carry_n_0 : STD_LOGIC;
  signal wCntClockNext0_carry_n_1 : STD_LOGIC;
  signal wCntClockNext0_carry_n_2 : STD_LOGIC;
  signal wCntClockNext0_carry_n_3 : STD_LOGIC;
  signal \NLW_wCntClockNext0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_wCntClockNext0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rCurrentState[1]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_rCurrentState[2]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_rCurrentState[2]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_rCurrentState[2]_i_5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_onehot_rCurrentState[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_rCurrentState[3]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_onehot_rCurrentState[5]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_rCurrentState[5]_i_3\ : label is "soft_lutpair3";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rCurrentState_reg[0]\ : label is "SIDLE:000001,RXSTART:000010,RXSAMPLE:001000,RXDATA:000100,RXSTOP:010000,SDONE:100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rCurrentState_reg[1]\ : label is "SIDLE:000001,RXSTART:000010,RXSAMPLE:001000,RXDATA:000100,RXSTOP:010000,SDONE:100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rCurrentState_reg[2]\ : label is "SIDLE:000001,RXSTART:000010,RXSAMPLE:001000,RXDATA:000100,RXSTOP:010000,SDONE:100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rCurrentState_reg[3]\ : label is "SIDLE:000001,RXSTART:000010,RXSAMPLE:001000,RXDATA:000100,RXSTOP:010000,SDONE:100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rCurrentState_reg[4]\ : label is "SIDLE:000001,RXSTART:000010,RXSAMPLE:001000,RXDATA:000100,RXSTOP:010000,SDONE:100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rCurrentState_reg[5]\ : label is "SIDLE:000001,RXSTART:000010,RXSAMPLE:001000,RXDATA:000100,RXSTOP:010000,SDONE:100000";
  attribute SOFT_HLUTNM of \rBitCountCurrent[2]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rBuffer_reg[72]_srl10___inst_rBuffer_reg_r_8_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rBuffer_reg[73]_srl10___inst_rBuffer_reg_r_8_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rBuffer_reg[74]_srl10___inst_rBuffer_reg_r_8_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rBuffer_reg[75]_srl10___inst_rBuffer_reg_r_8_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rBuffer_reg[76]_srl10___inst_rBuffer_reg_r_8_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rBuffer_reg[77]_srl10___inst_rBuffer_reg_r_8_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rBuffer_reg[78]_srl10___inst_rBuffer_reg_r_8_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rBuffer_reg[79]_srl10___inst_rBuffer_reg_r_8_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rCntClockCurrent[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rCntClockCurrent[0]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rCntClockCurrent[10]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rCntClockCurrent[11]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rCntClockCurrent[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rCntClockCurrent[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rCntClockCurrent[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rCntClockCurrent[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rCntClockCurrent[7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rCntClockCurrent[8]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rCntClockCurrent[9]_i_2\ : label is "soft_lutpair7";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of wCntClockNext0_carry : label is 35;
  attribute ADDER_THRESHOLD of \wCntClockNext0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \wCntClockNext0_carry__1\ : label is 35;
begin
  Q(0) <= \^q\(0);
\FSM_onehot_rCurrentState[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \FSM_onehot_rCurrentState_reg_n_0_[0]\,
      I1 => rDataCurrent2,
      I2 => \^q\(0),
      O => \FSM_onehot_rCurrentState[0]_i_1_n_0\
    );
\FSM_onehot_rCurrentState[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F4F4F4F4F444F4"
    )
        port map (
      I0 => rDataCurrent2,
      I1 => \FSM_onehot_rCurrentState_reg_n_0_[0]\,
      I2 => \FSM_onehot_rCurrentState_reg_n_0_[1]\,
      I3 => rCntClockCurrent(1),
      I4 => rCntClockCurrent(2),
      I5 => \FSM_onehot_rCurrentState[1]_i_2_n_0\,
      O => \FSM_onehot_rCurrentState[1]_i_1_n_0\
    );
\FSM_onehot_rCurrentState[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFFFFF"
    )
        port map (
      I0 => rCntClockCurrent(0),
      I1 => \FSM_onehot_rCurrentState[3]_i_3_n_0\,
      I2 => rCntClockCurrent(5),
      I3 => rCntClockCurrent(9),
      I4 => rCntClockCurrent(10),
      O => \FSM_onehot_rCurrentState[1]_i_2_n_0\
    );
\FSM_onehot_rCurrentState[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFBABABA"
    )
        port map (
      I0 => \FSM_onehot_rCurrentState[2]_i_2_n_0\,
      I1 => \FSM_onehot_rCurrentState[2]_i_3_n_0\,
      I2 => \FSM_onehot_rCurrentState_reg_n_0_[1]\,
      I3 => \FSM_onehot_rCurrentState[2]_i_4_n_0\,
      I4 => \FSM_onehot_rCurrentState_reg_n_0_[2]\,
      I5 => \FSM_onehot_rCurrentState[2]_i_5_n_0\,
      O => \FSM_onehot_rCurrentState[2]_i_1_n_0\
    );
\FSM_onehot_rCurrentState[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F0000007F00FF00"
    )
        port map (
      I0 => rBitCountCurrent(2),
      I1 => rBitCountCurrent(1),
      I2 => rBitCountCurrent(0),
      I3 => \FSM_onehot_rCurrentState_reg_n_0_[2]\,
      I4 => rCntClockCurrent(5),
      I5 => rCntClockCurrent(9),
      O => \FSM_onehot_rCurrentState[2]_i_2_n_0\
    );
\FSM_onehot_rCurrentState[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => rCntClockCurrent(1),
      I1 => rCntClockCurrent(2),
      I2 => \rCntClockCurrent[0]_i_2_n_0\,
      I3 => \FSM_onehot_rCurrentState[3]_i_3_n_0\,
      I4 => rCntClockCurrent(0),
      O => \FSM_onehot_rCurrentState[2]_i_3_n_0\
    );
\FSM_onehot_rCurrentState[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => rCntClockCurrent(0),
      I1 => \FSM_onehot_rCurrentState[3]_i_3_n_0\,
      I2 => rCntClockCurrent(2),
      I3 => rCntClockCurrent(1),
      O => \FSM_onehot_rCurrentState[2]_i_4_n_0\
    );
\FSM_onehot_rCurrentState[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8AA0"
    )
        port map (
      I0 => \FSM_onehot_rCurrentState_reg_n_0_[2]\,
      I1 => rCntClockCurrent(9),
      I2 => rCntClockCurrent(5),
      I3 => rCntClockCurrent(10),
      I4 => wBufferNext,
      O => \FSM_onehot_rCurrentState[2]_i_5_n_0\
    );
\FSM_onehot_rCurrentState[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \FSM_onehot_rCurrentState[3]_i_2_n_0\,
      I1 => rCntClockCurrent(1),
      I2 => rCntClockCurrent(2),
      I3 => \FSM_onehot_rCurrentState[3]_i_3_n_0\,
      I4 => rCntClockCurrent(0),
      O => \FSM_onehot_rCurrentState[3]_i_1_n_0\
    );
\FSM_onehot_rCurrentState[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => rCntClockCurrent(5),
      I1 => \FSM_onehot_rCurrentState_reg_n_0_[2]\,
      I2 => rCntClockCurrent(10),
      I3 => rCntClockCurrent(9),
      O => \FSM_onehot_rCurrentState[3]_i_2_n_0\
    );
\FSM_onehot_rCurrentState[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => rCntClockCurrent(8),
      I1 => rCntClockCurrent(11),
      I2 => rCntClockCurrent(6),
      I3 => rCntClockCurrent(7),
      I4 => rCntClockCurrent(4),
      I5 => rCntClockCurrent(3),
      O => \FSM_onehot_rCurrentState[3]_i_3_n_0\
    );
\FSM_onehot_rCurrentState[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAC0000000"
    )
        port map (
      I0 => \FSM_onehot_rCurrentState_reg_n_0_[4]\,
      I1 => rBitCountCurrent(2),
      I2 => rBitCountCurrent(1),
      I3 => rBitCountCurrent(0),
      I4 => \FSM_onehot_rCurrentState_reg_n_0_[2]\,
      I5 => \FSM_onehot_rCurrentState[4]_i_2_n_0\,
      O => \FSM_onehot_rCurrentState[4]_i_1_n_0\
    );
\FSM_onehot_rCurrentState[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFBFF"
    )
        port map (
      I0 => \FSM_onehot_rCurrentState[5]_i_3_n_0\,
      I1 => rCntClockCurrent(10),
      I2 => rCntClockCurrent(9),
      I3 => rCntClockCurrent(5),
      I4 => rCntClockCurrent(0),
      I5 => \FSM_onehot_rCurrentState[3]_i_3_n_0\,
      O => \FSM_onehot_rCurrentState[4]_i_2_n_0\
    );
\FSM_onehot_rCurrentState[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => \FSM_onehot_rCurrentState_reg_n_0_[4]\,
      I1 => \FSM_onehot_rCurrentState[5]_i_2_n_0\,
      I2 => rCntClockCurrent(5),
      I3 => rCntClockCurrent(9),
      I4 => rCntClockCurrent(10),
      I5 => \FSM_onehot_rCurrentState[5]_i_3_n_0\,
      O => \FSM_onehot_rCurrentState[5]_i_1_n_0\
    );
\FSM_onehot_rCurrentState[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_rCurrentState[3]_i_3_n_0\,
      I1 => rCntClockCurrent(0),
      O => \FSM_onehot_rCurrentState[5]_i_2_n_0\
    );
\FSM_onehot_rCurrentState[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => rCntClockCurrent(1),
      I1 => rCntClockCurrent(2),
      O => \FSM_onehot_rCurrentState[5]_i_3_n_0\
    );
\FSM_onehot_rCurrentState_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rCurrentState[0]_i_1_n_0\,
      Q => \FSM_onehot_rCurrentState_reg_n_0_[0]\,
      S => iRst
    );
\FSM_onehot_rCurrentState_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rCurrentState[1]_i_1_n_0\,
      Q => \FSM_onehot_rCurrentState_reg_n_0_[1]\,
      R => iRst
    );
\FSM_onehot_rCurrentState_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rCurrentState[2]_i_1_n_0\,
      Q => \FSM_onehot_rCurrentState_reg_n_0_[2]\,
      R => iRst
    );
\FSM_onehot_rCurrentState_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rCurrentState[3]_i_1_n_0\,
      Q => wBufferNext,
      R => iRst
    );
\FSM_onehot_rCurrentState_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rCurrentState[4]_i_1_n_0\,
      Q => \FSM_onehot_rCurrentState_reg_n_0_[4]\,
      R => iRst
    );
\FSM_onehot_rCurrentState_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rCurrentState[5]_i_1_n_0\,
      Q => \^q\(0),
      R => iRst
    );
\FSM_sequential_rFSM[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \FSM_sequential_rFSM_reg[1]\(2),
      I1 => \FSM_sequential_rFSM_reg[1]\(0),
      I2 => \FSM_sequential_rFSM_reg[1]\(1),
      I3 => \rBuffer_reg[88]_1\(0),
      I4 => \^q\(0),
      O => \rCnt_reg[3]\
    );
\rBitCountCurrent[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080FFFFF0F00000"
    )
        port map (
      I0 => rBitCountCurrent(1),
      I1 => rBitCountCurrent(2),
      I2 => \FSM_onehot_rCurrentState_reg_n_0_[2]\,
      I3 => \FSM_onehot_rCurrentState[4]_i_2_n_0\,
      I4 => wBitCountNext,
      I5 => rBitCountCurrent(0),
      O => \rBitCountCurrent[0]_i_1_n_0\
    );
\rBitCountCurrent[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30B0FFFFC0C00000"
    )
        port map (
      I0 => rBitCountCurrent(2),
      I1 => rBitCountCurrent(0),
      I2 => \FSM_onehot_rCurrentState_reg_n_0_[2]\,
      I3 => \FSM_onehot_rCurrentState[4]_i_2_n_0\,
      I4 => wBitCountNext,
      I5 => rBitCountCurrent(1),
      O => \rBitCountCurrent[1]_i_1_n_0\
    );
\rBitCountCurrent[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"70F0FFFF80800000"
    )
        port map (
      I0 => rBitCountCurrent(1),
      I1 => rBitCountCurrent(0),
      I2 => \FSM_onehot_rCurrentState_reg_n_0_[2]\,
      I3 => \FSM_onehot_rCurrentState[4]_i_2_n_0\,
      I4 => wBitCountNext,
      I5 => rBitCountCurrent(2),
      O => \rBitCountCurrent[2]_i_1_n_0\
    );
\rBitCountCurrent[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAAAE"
    )
        port map (
      I0 => \rBitCountCurrent[2]_i_3_n_0\,
      I1 => \FSM_onehot_rCurrentState_reg_n_0_[2]\,
      I2 => \FSM_onehot_rCurrentState[3]_i_3_n_0\,
      I3 => rCntClockCurrent(0),
      I4 => \rCntClockCurrent[10]_i_4_n_0\,
      I5 => \^q\(0),
      O => wBitCountNext
    );
\rBitCountCurrent[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_rCurrentState_reg_n_0_[0]\,
      I1 => \FSM_onehot_rCurrentState_reg_n_0_[1]\,
      O => \rBitCountCurrent[2]_i_3_n_0\
    );
\rBitCountCurrent_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rBitCountCurrent[0]_i_1_n_0\,
      Q => rBitCountCurrent(0),
      R => iRst
    );
\rBitCountCurrent_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rBitCountCurrent[1]_i_1_n_0\,
      Q => rBitCountCurrent(1),
      R => iRst
    );
\rBitCountCurrent_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rBitCountCurrent[2]_i_1_n_0\,
      Q => rBitCountCurrent(2),
      R => iRst
    );
\rBufferCurrent_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wBufferNext,
      D => rBufferCurrent(1),
      Q => rBufferCurrent(0),
      R => iRst
    );
\rBufferCurrent_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wBufferNext,
      D => rBufferCurrent(2),
      Q => rBufferCurrent(1),
      R => iRst
    );
\rBufferCurrent_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wBufferNext,
      D => rBufferCurrent(3),
      Q => rBufferCurrent(2),
      R => iRst
    );
\rBufferCurrent_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wBufferNext,
      D => rBufferCurrent(4),
      Q => rBufferCurrent(3),
      R => iRst
    );
\rBufferCurrent_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wBufferNext,
      D => rBufferCurrent(5),
      Q => rBufferCurrent(4),
      R => iRst
    );
\rBufferCurrent_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wBufferNext,
      D => rBufferCurrent(6),
      Q => rBufferCurrent(5),
      R => iRst
    );
\rBufferCurrent_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wBufferNext,
      D => rBufferCurrent(7),
      Q => rBufferCurrent(6),
      R => iRst
    );
\rBufferCurrent_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wBufferNext,
      D => rDataCurrent2,
      Q => rBufferCurrent(7),
      R => iRst
    );
rBuffer_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000044000F0000"
    )
        port map (
      I0 => \rBuffer_reg[88]\,
      I1 => \^q\(0),
      I2 => \rBuffer_reg[88]_0\,
      I3 => \rBuffer_reg[88]_1\(2),
      I4 => \rBuffer_reg[88]_1\(1),
      I5 => \rBuffer_reg[88]_1\(0),
      O => rBuffer_0
    );
\rBuffer_reg[72]_srl10___inst_rBuffer_reg_r_8_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \rBuffer_reg[88]_1\(1),
      I1 => rBufferCurrent(0),
      O => rBuffer(0)
    );
\rBuffer_reg[73]_srl10___inst_rBuffer_reg_r_8_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \rBuffer_reg[88]_1\(1),
      I1 => rBufferCurrent(1),
      O => rBuffer(1)
    );
\rBuffer_reg[74]_srl10___inst_rBuffer_reg_r_8_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \rBuffer_reg[88]_1\(1),
      I1 => rBufferCurrent(2),
      O => rBuffer(2)
    );
\rBuffer_reg[75]_srl10___inst_rBuffer_reg_r_8_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \rBuffer_reg[88]_1\(1),
      I1 => rBufferCurrent(3),
      O => rBuffer(3)
    );
\rBuffer_reg[76]_srl10___inst_rBuffer_reg_r_8_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \rBuffer_reg[88]_1\(1),
      I1 => rBufferCurrent(4),
      O => rBuffer(4)
    );
\rBuffer_reg[77]_srl10___inst_rBuffer_reg_r_8_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \rBuffer_reg[88]_1\(1),
      I1 => rBufferCurrent(5),
      O => rBuffer(5)
    );
\rBuffer_reg[78]_srl10___inst_rBuffer_reg_r_8_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \rBuffer_reg[88]_1\(1),
      I1 => rBufferCurrent(6),
      O => rBuffer(6)
    );
\rBuffer_reg[79]_srl10___inst_rBuffer_reg_r_8_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \rBuffer_reg[88]_1\(1),
      I1 => rBufferCurrent(7),
      O => rBuffer(7)
    );
\rCntClockCurrent[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FEAA"
    )
        port map (
      I0 => \rCntClockCurrent[9]_i_3_n_0\,
      I1 => \FSM_onehot_rCurrentState[3]_i_3_n_0\,
      I2 => \rCntClockCurrent[0]_i_2_n_0\,
      I3 => \rCntClockCurrent[9]_i_2_n_0\,
      I4 => rCntClockCurrent(0),
      O => \rCntClockCurrent[0]_i_1_n_0\
    );
\rCntClockCurrent[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => rCntClockCurrent(10),
      I1 => rCntClockCurrent(9),
      I2 => rCntClockCurrent(5),
      O => \rCntClockCurrent[0]_i_2_n_0\
    );
\rCntClockCurrent[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAFFA8A8A0A0"
    )
        port map (
      I0 => data0(10),
      I1 => \rCntClockCurrent[10]_i_2_n_0\,
      I2 => \rCntClockCurrent[10]_i_3_n_0\,
      I3 => \rCntClockCurrent[10]_i_4_n_0\,
      I4 => \FSM_onehot_rCurrentState[5]_i_2_n_0\,
      I5 => \FSM_onehot_rCurrentState_reg_n_0_[4]\,
      O => \rCntClockCurrent[10]_i_1_n_0\
    );
\rCntClockCurrent[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_rCurrentState_reg_n_0_[1]\,
      I1 => \FSM_onehot_rCurrentState_reg_n_0_[2]\,
      O => \rCntClockCurrent[10]_i_2_n_0\
    );
\rCntClockCurrent[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEE0EECEE"
    )
        port map (
      I0 => \FSM_onehot_rCurrentState_reg_n_0_[2]\,
      I1 => \FSM_onehot_rCurrentState_reg_n_0_[1]\,
      I2 => rCntClockCurrent(10),
      I3 => rCntClockCurrent(9),
      I4 => rCntClockCurrent(5),
      I5 => \rCntClockCurrent[11]_i_3_n_0\,
      O => \rCntClockCurrent[10]_i_3_n_0\
    );
\rCntClockCurrent[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFDFFF"
    )
        port map (
      I0 => rCntClockCurrent(5),
      I1 => rCntClockCurrent(9),
      I2 => rCntClockCurrent(10),
      I3 => rCntClockCurrent(2),
      I4 => rCntClockCurrent(1),
      O => \rCntClockCurrent[10]_i_4_n_0\
    );
\rCntClockCurrent[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rCntClockCurrent[11]_i_2_n_0\,
      I1 => data0(11),
      O => \rCntClockCurrent[11]_i_1_n_0\
    );
\rCntClockCurrent[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFEFEFEFE"
    )
        port map (
      I0 => \rCntClockCurrent[11]_i_3_n_0\,
      I1 => \rCntClockCurrent[11]_i_4_n_0\,
      I2 => \rCntClockCurrent[11]_i_5_n_0\,
      I3 => rCntClockCurrent(0),
      I4 => \FSM_onehot_rCurrentState[3]_i_3_n_0\,
      I5 => \rCntClockCurrent[9]_i_2_n_0\,
      O => \rCntClockCurrent[11]_i_2_n_0\
    );
\rCntClockCurrent[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFEAEE"
    )
        port map (
      I0 => wBufferNext,
      I1 => \FSM_onehot_rCurrentState_reg_n_0_[1]\,
      I2 => rCntClockCurrent(2),
      I3 => rCntClockCurrent(1),
      I4 => \FSM_onehot_rCurrentState_reg_n_0_[2]\,
      O => \rCntClockCurrent[11]_i_3_n_0\
    );
\rCntClockCurrent[11]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFDBDF00"
    )
        port map (
      I0 => rCntClockCurrent(5),
      I1 => rCntClockCurrent(9),
      I2 => rCntClockCurrent(10),
      I3 => \FSM_onehot_rCurrentState_reg_n_0_[1]\,
      I4 => \FSM_onehot_rCurrentState_reg_n_0_[2]\,
      O => \rCntClockCurrent[11]_i_4_n_0\
    );
\rCntClockCurrent[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00000000"
    )
        port map (
      I0 => rCntClockCurrent(1),
      I1 => rCntClockCurrent(2),
      I2 => rCntClockCurrent(10),
      I3 => rCntClockCurrent(9),
      I4 => rCntClockCurrent(5),
      I5 => \FSM_onehot_rCurrentState_reg_n_0_[4]\,
      O => \rCntClockCurrent[11]_i_5_n_0\
    );
\rCntClockCurrent[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rCntClockCurrent[11]_i_2_n_0\,
      I1 => data0(1),
      O => \rCntClockCurrent[1]_i_1_n_0\
    );
\rCntClockCurrent[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => data0(2),
      I1 => \rCntClockCurrent[4]_i_2_n_0\,
      I2 => \rCntClockCurrent[4]_i_3_n_0\,
      O => \rCntClockCurrent[2]_i_1_n_0\
    );
\rCntClockCurrent[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => data0(3),
      I1 => \rCntClockCurrent[4]_i_2_n_0\,
      I2 => \rCntClockCurrent[4]_i_3_n_0\,
      O => \rCntClockCurrent[3]_i_1_n_0\
    );
\rCntClockCurrent[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => data0(4),
      I1 => \rCntClockCurrent[4]_i_2_n_0\,
      I2 => \rCntClockCurrent[4]_i_3_n_0\,
      O => \rCntClockCurrent[4]_i_1_n_0\
    );
\rCntClockCurrent[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEAAAA"
    )
        port map (
      I0 => \FSM_onehot_rCurrentState_reg_n_0_[4]\,
      I1 => \rCntClockCurrent[0]_i_2_n_0\,
      I2 => \FSM_onehot_rCurrentState[3]_i_3_n_0\,
      I3 => rCntClockCurrent(0),
      I4 => \rCntClockCurrent[10]_i_2_n_0\,
      I5 => \rCntClockCurrent[11]_i_3_n_0\,
      O => \rCntClockCurrent[4]_i_2_n_0\
    );
\rCntClockCurrent[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000003302"
    )
        port map (
      I0 => \FSM_onehot_rCurrentState_reg_n_0_[4]\,
      I1 => \FSM_onehot_rCurrentState[5]_i_3_n_0\,
      I2 => \rCntClockCurrent[0]_i_2_n_0\,
      I3 => \FSM_onehot_rCurrentState[3]_i_2_n_0\,
      I4 => rCntClockCurrent(0),
      I5 => \FSM_onehot_rCurrentState[3]_i_3_n_0\,
      O => \rCntClockCurrent[4]_i_3_n_0\
    );
\rCntClockCurrent[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAFFA8A8A0A0"
    )
        port map (
      I0 => data0(5),
      I1 => \rCntClockCurrent[10]_i_2_n_0\,
      I2 => \rCntClockCurrent[10]_i_3_n_0\,
      I3 => \rCntClockCurrent[10]_i_4_n_0\,
      I4 => \FSM_onehot_rCurrentState[5]_i_2_n_0\,
      I5 => \FSM_onehot_rCurrentState_reg_n_0_[4]\,
      O => \rCntClockCurrent[5]_i_1_n_0\
    );
\rCntClockCurrent[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rCntClockCurrent[11]_i_2_n_0\,
      I1 => data0(6),
      O => \rCntClockCurrent[6]_i_1_n_0\
    );
\rCntClockCurrent[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rCntClockCurrent[11]_i_2_n_0\,
      I1 => data0(7),
      O => \rCntClockCurrent[7]_i_1_n_0\
    );
\rCntClockCurrent[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rCntClockCurrent[11]_i_2_n_0\,
      I1 => data0(8),
      O => \rCntClockCurrent[8]_i_1_n_0\
    );
\rCntClockCurrent[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAAEAAA"
    )
        port map (
      I0 => \FSM_onehot_rCurrentState[3]_i_1_n_0\,
      I1 => \rCntClockCurrent[9]_i_2_n_0\,
      I2 => \FSM_onehot_rCurrentState[1]_i_2_n_0\,
      I3 => data0(9),
      I4 => \rCntClockCurrent[9]_i_3_n_0\,
      O => \rCntClockCurrent[9]_i_1_n_0\
    );
\rCntClockCurrent[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_rCurrentState_reg_n_0_[2]\,
      I1 => \FSM_onehot_rCurrentState_reg_n_0_[1]\,
      I2 => \FSM_onehot_rCurrentState_reg_n_0_[4]\,
      O => \rCntClockCurrent[9]_i_2_n_0\
    );
\rCntClockCurrent[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEFE0EE"
    )
        port map (
      I0 => \FSM_onehot_rCurrentState_reg_n_0_[4]\,
      I1 => \FSM_onehot_rCurrentState_reg_n_0_[2]\,
      I2 => rCntClockCurrent(1),
      I3 => rCntClockCurrent(2),
      I4 => \FSM_onehot_rCurrentState_reg_n_0_[1]\,
      I5 => wBufferNext,
      O => \rCntClockCurrent[9]_i_3_n_0\
    );
\rCntClockCurrent_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCntClockCurrent[0]_i_1_n_0\,
      Q => rCntClockCurrent(0),
      R => iRst
    );
\rCntClockCurrent_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCntClockCurrent[10]_i_1_n_0\,
      Q => rCntClockCurrent(10),
      R => iRst
    );
\rCntClockCurrent_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCntClockCurrent[11]_i_1_n_0\,
      Q => rCntClockCurrent(11),
      R => iRst
    );
\rCntClockCurrent_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCntClockCurrent[1]_i_1_n_0\,
      Q => rCntClockCurrent(1),
      R => iRst
    );
\rCntClockCurrent_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCntClockCurrent[2]_i_1_n_0\,
      Q => rCntClockCurrent(2),
      R => iRst
    );
\rCntClockCurrent_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCntClockCurrent[3]_i_1_n_0\,
      Q => rCntClockCurrent(3),
      R => iRst
    );
\rCntClockCurrent_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCntClockCurrent[4]_i_1_n_0\,
      Q => rCntClockCurrent(4),
      R => iRst
    );
\rCntClockCurrent_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCntClockCurrent[5]_i_1_n_0\,
      Q => rCntClockCurrent(5),
      R => iRst
    );
\rCntClockCurrent_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCntClockCurrent[6]_i_1_n_0\,
      Q => rCntClockCurrent(6),
      R => iRst
    );
\rCntClockCurrent_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCntClockCurrent[7]_i_1_n_0\,
      Q => rCntClockCurrent(7),
      R => iRst
    );
\rCntClockCurrent_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCntClockCurrent[8]_i_1_n_0\,
      Q => rCntClockCurrent(8),
      R => iRst
    );
\rCntClockCurrent_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCntClockCurrent[9]_i_1_n_0\,
      Q => rCntClockCurrent(9),
      R => iRst
    );
\rCnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000F44"
    )
        port map (
      I0 => \rBuffer_reg[88]\,
      I1 => \^q\(0),
      I2 => \rBuffer_reg[88]_0\,
      I3 => \rBuffer_reg[88]_1\(1),
      I4 => \FSM_sequential_rFSM_reg[1]\(0),
      O => D(0)
    );
\rCnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000F40"
    )
        port map (
      I0 => \rBuffer_reg[88]\,
      I1 => \^q\(0),
      I2 => \rBuffer_reg[88]_1\(0),
      I3 => \rBuffer_reg[88]_1\(1),
      I4 => \rBuffer_reg[88]_1\(2),
      O => E(0)
    );
rDataCurrent1_reg: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => iRx,
      Q => rDataCurrent1,
      R => '0'
    );
rDataCurrent2_reg: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => rDataCurrent1,
      Q => rDataCurrent2,
      R => '0'
    );
wCntClockNext0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => wCntClockNext0_carry_n_0,
      CO(2) => wCntClockNext0_carry_n_1,
      CO(1) => wCntClockNext0_carry_n_2,
      CO(0) => wCntClockNext0_carry_n_3,
      CYINIT => rCntClockCurrent(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => rCntClockCurrent(4 downto 1)
    );
\wCntClockNext0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => wCntClockNext0_carry_n_0,
      CO(3) => \wCntClockNext0_carry__0_n_0\,
      CO(2) => \wCntClockNext0_carry__0_n_1\,
      CO(1) => \wCntClockNext0_carry__0_n_2\,
      CO(0) => \wCntClockNext0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => rCntClockCurrent(8 downto 5)
    );
\wCntClockNext0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wCntClockNext0_carry__0_n_0\,
      CO(3 downto 2) => \NLW_wCntClockNext0_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \wCntClockNext0_carry__1_n_2\,
      CO(0) => \wCntClockNext0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_wCntClockNext0_carry__1_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(11 downto 9),
      S(3) => '0',
      S(2 downto 0) => rCntClockCurrent(11 downto 9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart_top_0_0_uart_tx is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \FSM_sequential_rFSM_reg[0]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \rCnt_reg[2]\ : out STD_LOGIC;
    oTx : out STD_LOGIC;
    \rCnt_reg[4]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_onehot_rFSM_Current_reg[4]_0\ : out STD_LOGIC;
    rTxStart_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \rTxByte_reg[0]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \rCnt_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rCnt_reg[4]_0\ : in STD_LOGIC;
    \rTxByte_reg[0]_0\ : in STD_LOGIC;
    \rTxByte_reg[1]\ : in STD_LOGIC;
    \rTxByte_reg[2]\ : in STD_LOGIC;
    \rTxByte_reg[3]\ : in STD_LOGIC;
    \rTxByte_reg[4]\ : in STD_LOGIC;
    \rTxByte_reg[5]\ : in STD_LOGIC;
    \rTxByte_reg[6]\ : in STD_LOGIC;
    \rTxByte_reg[7]\ : in STD_LOGIC;
    \FSM_sequential_rFSM_reg[1]\ : in STD_LOGIC;
    \FSM_sequential_rFSM_reg[1]_0\ : in STD_LOGIC;
    \FSM_sequential_rFSM_reg[1]_1\ : in STD_LOGIC;
    \FSM_sequential_rFSM_reg[0]_0\ : in STD_LOGIC;
    \FSM_sequential_rFSM_reg[0]_1\ : in STD_LOGIC;
    \rTxData_Current_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    iRst : in STD_LOGIC;
    iClk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_uart_top_0_0_uart_tx : entity is "uart_tx";
end design_1_uart_top_0_0_uart_tx;

architecture STRUCTURE of design_1_uart_top_0_0_uart_tx is
  signal \FSM_onehot_rFSM_Current[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_sequential_rFSM[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rFSM[0]_i_3_n_0\ : STD_LOGIC;
  signal in7 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal rBit_Current : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \rBit_Current[0]_i_1_n_0\ : STD_LOGIC;
  signal \rBit_Current[0]_i_2_n_0\ : STD_LOGIC;
  signal \rBit_Current[0]_i_3_n_0\ : STD_LOGIC;
  signal \rBit_Current[1]_i_1_n_0\ : STD_LOGIC;
  signal \rBit_Current[2]_i_1_n_0\ : STD_LOGIC;
  signal \rBit_Current[2]_i_2_n_0\ : STD_LOGIC;
  signal \rBit_Current[2]_i_3_n_0\ : STD_LOGIC;
  signal \rCnt[4]_i_4_n_0\ : STD_LOGIC;
  signal \rCnt_Current[0]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[10]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[10]_i_2_n_0\ : STD_LOGIC;
  signal \rCnt_Current[10]_i_3_n_0\ : STD_LOGIC;
  signal \rCnt_Current[10]_i_4_n_0\ : STD_LOGIC;
  signal \rCnt_Current[1]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[2]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[3]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[4]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[5]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[5]_i_2_n_0\ : STD_LOGIC;
  signal \rCnt_Current[6]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[6]_i_2_n_0\ : STD_LOGIC;
  signal \rCnt_Current[7]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[8]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[9]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[0]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[10]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[1]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[2]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[3]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[4]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[5]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[6]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[7]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[8]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[9]\ : STD_LOGIC;
  signal \^rcnt_reg[2]\ : STD_LOGIC;
  signal \rTxData_Current[0]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[1]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[2]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[3]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[4]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[5]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[6]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[7]_i_2_n_0\ : STD_LOGIC;
  signal \rTxData_Current_reg_n_0_[0]\ : STD_LOGIC;
  signal wTxData_Next : STD_LOGIC;
  signal wTxDone : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[0]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[3]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[4]_i_2\ : label is "soft_lutpair17";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[0]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[1]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[2]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[3]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[4]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute SOFT_HLUTNM of \FSM_sequential_rFSM[2]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rBit_Current[0]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rBit_Current[0]_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \rBit_Current[2]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \rBit_Current[2]_i_3\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \rCnt[1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rCnt[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rCnt[3]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rCnt[4]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rCnt_Current[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \rCnt_Current[10]_i_4\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \rCnt_Current[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rCnt_Current[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rCnt_Current[3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rCnt_Current[6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rCnt_Current[7]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \rCnt_Current[8]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \rCnt_Current[9]_i_1\ : label is "soft_lutpair14";
begin
  \rCnt_reg[2]\ <= \^rcnt_reg[2]\;
\FSM_onehot_rFSM_Current[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => rTxStart_reg,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => wTxDone,
      O => \FSM_onehot_rFSM_Current[0]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I1 => rTxStart_reg,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I3 => \FSM_onehot_rFSM_Current[3]_i_3_n_0\,
      O => \FSM_onehot_rFSM_Current[1]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFC000EAAAC000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[3]_i_2_n_0\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I2 => \rCnt_Current_reg_n_0_[10]\,
      I3 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I5 => \FSM_onehot_rFSM_Current[3]_i_3_n_0\,
      O => \FSM_onehot_rFSM_Current[2]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF008000800080"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I2 => \rCnt_Current_reg_n_0_[10]\,
      I3 => \FSM_onehot_rFSM_Current[3]_i_2_n_0\,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I5 => \FSM_onehot_rFSM_Current[3]_i_3_n_0\,
      O => \FSM_onehot_rFSM_Current[3]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => rBit_Current(1),
      I1 => rBit_Current(0),
      I2 => rBit_Current(2),
      O => \FSM_onehot_rFSM_Current[3]_i_2_n_0\
    );
\FSM_onehot_rFSM_Current[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000002FFFFFFFF"
    )
        port map (
      I0 => \rCnt_Current[6]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[7]\,
      I2 => \rCnt_Current_reg_n_0_[6]\,
      I3 => \rCnt_Current_reg_n_0_[9]\,
      I4 => \rCnt_Current_reg_n_0_[8]\,
      I5 => \rCnt_Current_reg_n_0_[10]\,
      O => \FSM_onehot_rFSM_Current[3]_i_3_n_0\
    );
\FSM_onehot_rFSM_Current[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I1 => \rCnt_Current_reg_n_0_[10]\,
      I2 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      O => \FSM_onehot_rFSM_Current[4]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[7]\,
      I1 => \rCnt_Current_reg_n_0_[6]\,
      I2 => \rCnt_Current_reg_n_0_[9]\,
      I3 => \rCnt_Current_reg_n_0_[8]\,
      I4 => \rCnt_Current[6]_i_2_n_0\,
      O => \FSM_onehot_rFSM_Current[4]_i_2_n_0\
    );
\FSM_onehot_rFSM_Current_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_Current[0]_i_1_n_0\,
      Q => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      S => iRst
    );
\FSM_onehot_rFSM_Current_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_Current[1]_i_1_n_0\,
      Q => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      R => iRst
    );
\FSM_onehot_rFSM_Current_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_Current[2]_i_1_n_0\,
      Q => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      R => iRst
    );
\FSM_onehot_rFSM_Current_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_Current[3]_i_1_n_0\,
      Q => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      R => iRst
    );
\FSM_onehot_rFSM_Current_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_Current[4]_i_1_n_0\,
      Q => wTxDone,
      R => iRst
    );
\FSM_sequential_rFSM[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF02"
    )
        port map (
      I0 => \FSM_sequential_rFSM_reg[1]_0\,
      I1 => Q(2),
      I2 => Q(1),
      I3 => \FSM_sequential_rFSM[0]_i_2_n_0\,
      I4 => \FSM_sequential_rFSM[0]_i_3_n_0\,
      O => \FSM_sequential_rFSM_reg[0]\(0)
    );
\FSM_sequential_rFSM[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000E000E00FE000E"
    )
        port map (
      I0 => \rTxByte_reg[0]\(2),
      I1 => \rTxByte_reg[0]\(4),
      I2 => Q(1),
      I3 => Q(2),
      I4 => Q(0),
      I5 => wTxDone,
      O => \FSM_sequential_rFSM[0]_i_2_n_0\
    );
\FSM_sequential_rFSM[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000F88888888"
    )
        port map (
      I0 => \FSM_sequential_rFSM_reg[0]_0\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \FSM_sequential_rFSM_reg[0]_1\,
      I3 => Q(2),
      I4 => Q(0),
      I5 => wTxDone,
      O => \FSM_sequential_rFSM[0]_i_3_n_0\
    );
\FSM_sequential_rFSM[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF557500300030"
    )
        port map (
      I0 => \^rcnt_reg[2]\,
      I1 => \rTxByte_reg[0]\(2),
      I2 => \FSM_sequential_rFSM_reg[1]\,
      I3 => \FSM_sequential_rFSM_reg[1]_0\,
      I4 => Q(0),
      I5 => \FSM_sequential_rFSM_reg[1]_1\,
      O => \FSM_sequential_rFSM_reg[0]\(1)
    );
\FSM_sequential_rFSM[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => \^rcnt_reg[2]\,
      O => \FSM_sequential_rFSM_reg[0]\(2)
    );
\FSM_sequential_rFSM[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F8FF"
    )
        port map (
      I0 => \rTxByte_reg[0]\(2),
      I1 => \rTxByte_reg[0]\(3),
      I2 => \rTxByte_reg[0]\(4),
      I3 => wTxDone,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      O => \^rcnt_reg[2]\
    );
oTx_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => \rTxData_Current_reg_n_0_[0]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => oTx
    );
\rBit_Current[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01111111FEEE0000"
    )
        port map (
      I0 => \rBit_Current[0]_i_2_n_0\,
      I1 => \rBit_Current[0]_i_3_n_0\,
      I2 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I3 => \rCnt_Current_reg_n_0_[10]\,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I5 => rBit_Current(0),
      O => \rBit_Current[0]_i_1_n_0\
    );
\rBit_Current[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I1 => wTxDone,
      O => \rBit_Current[0]_i_2_n_0\
    );
\rBit_Current[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      O => \rBit_Current[0]_i_3_n_0\
    );
\rBit_Current[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"287828F028F028F0"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => rBit_Current(0),
      I2 => rBit_Current(1),
      I3 => \rBit_Current[2]_i_3_n_0\,
      I4 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I5 => \rCnt_Current_reg_n_0_[10]\,
      O => \rBit_Current[1]_i_1_n_0\
    );
\rBit_Current[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBB333354440000"
    )
        port map (
      I0 => \rBit_Current[2]_i_2_n_0\,
      I1 => \rBit_Current[2]_i_3_n_0\,
      I2 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I3 => \rCnt_Current_reg_n_0_[10]\,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I5 => rBit_Current(2),
      O => \rBit_Current[2]_i_1_n_0\
    );
\rBit_Current[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => rBit_Current(0),
      I1 => rBit_Current(1),
      O => \rBit_Current[2]_i_2_n_0\
    );
\rBit_Current[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I2 => wTxDone,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      O => \rBit_Current[2]_i_3_n_0\
    );
\rBit_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rBit_Current[0]_i_1_n_0\,
      Q => rBit_Current(0),
      R => iRst
    );
\rBit_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rBit_Current[1]_i_1_n_0\,
      Q => rBit_Current(1),
      R => iRst
    );
\rBit_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rBit_Current[2]_i_1_n_0\,
      Q => rBit_Current(2),
      R => iRst
    );
\rCnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0220"
    )
        port map (
      I0 => \rCnt[4]_i_4_n_0\,
      I1 => \rTxByte_reg[0]\(4),
      I2 => \rTxByte_reg[0]\(1),
      I3 => \rTxByte_reg[0]\(0),
      O => \rCnt_reg[4]\(0)
    );
\rCnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02202020"
    )
        port map (
      I0 => \rCnt[4]_i_4_n_0\,
      I1 => \rTxByte_reg[0]\(4),
      I2 => \rTxByte_reg[0]\(2),
      I3 => \rTxByte_reg[0]\(0),
      I4 => \rTxByte_reg[0]\(1),
      O => \rCnt_reg[4]\(1)
    );
\rCnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20200220"
    )
        port map (
      I0 => \rCnt[4]_i_4_n_0\,
      I1 => \rTxByte_reg[0]\(4),
      I2 => \rTxByte_reg[0]\(3),
      I3 => \rTxByte_reg[0]\(2),
      I4 => \rCnt_reg[4]_0\,
      O => \rCnt_reg[4]\(2)
    );
\rCnt[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \rCnt[4]_i_4_n_0\,
      I1 => \rTxByte_reg[0]\(4),
      I2 => \rCnt_reg[4]_0\,
      I3 => \rTxByte_reg[0]\(3),
      I4 => \rTxByte_reg[0]\(2),
      O => \rCnt_reg[4]\(3)
    );
\rCnt[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0DDD08880D8D0888"
    )
        port map (
      I0 => Q(1),
      I1 => \rBit_Current[0]_i_2_n_0\,
      I2 => \rTxByte_reg[0]\(3),
      I3 => \rTxByte_reg[0]\(2),
      I4 => \rCnt_reg[1]\(0),
      I5 => \rCnt_reg[4]_0\,
      O => \rCnt[4]_i_4_n_0\
    );
\rCnt_Current[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[0]\,
      O => \rCnt_Current[0]_i_1_n_0\
    );
\rCnt_Current[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[10]\,
      I2 => \rCnt_Current_reg_n_0_[7]\,
      I3 => \rCnt_Current_reg_n_0_[8]\,
      I4 => \rCnt_Current_reg_n_0_[9]\,
      I5 => \rCnt_Current[10]_i_3_n_0\,
      O => \rCnt_Current[10]_i_1_n_0\
    );
\rCnt_Current[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5D5D5D5D5D5D500"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[10]\,
      I1 => \rCnt_Current[10]_i_4_n_0\,
      I2 => \rCnt_Current[6]_i_2_n_0\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I5 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      O => \rCnt_Current[10]_i_2_n_0\
    );
\rCnt_Current[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[4]\,
      I1 => \rCnt_Current_reg_n_0_[2]\,
      I2 => \rCnt_Current_reg_n_0_[3]\,
      I3 => \rCnt_Current_reg_n_0_[5]\,
      I4 => \rCnt_Current[5]_i_2_n_0\,
      I5 => \rCnt_Current_reg_n_0_[6]\,
      O => \rCnt_Current[10]_i_3_n_0\
    );
\rCnt_Current[10]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[7]\,
      I1 => \rCnt_Current_reg_n_0_[6]\,
      I2 => \rCnt_Current_reg_n_0_[9]\,
      I3 => \rCnt_Current_reg_n_0_[8]\,
      O => \rCnt_Current[10]_i_4_n_0\
    );
\rCnt_Current[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[1]\,
      I2 => \rCnt_Current_reg_n_0_[0]\,
      O => \rCnt_Current[1]_i_1_n_0\
    );
\rCnt_Current[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[2]\,
      I2 => \rCnt_Current_reg_n_0_[0]\,
      I3 => \rCnt_Current_reg_n_0_[1]\,
      O => \rCnt_Current[2]_i_1_n_0\
    );
\rCnt_Current[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[3]\,
      I2 => \rCnt_Current_reg_n_0_[1]\,
      I3 => \rCnt_Current_reg_n_0_[0]\,
      I4 => \rCnt_Current_reg_n_0_[2]\,
      O => \rCnt_Current[3]_i_1_n_0\
    );
\rCnt_Current[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[4]\,
      I2 => \rCnt_Current_reg_n_0_[1]\,
      I3 => \rCnt_Current_reg_n_0_[0]\,
      I4 => \rCnt_Current_reg_n_0_[3]\,
      I5 => \rCnt_Current_reg_n_0_[2]\,
      O => \rCnt_Current[4]_i_1_n_0\
    );
\rCnt_Current[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[5]\,
      I2 => \rCnt_Current[5]_i_2_n_0\,
      I3 => \rCnt_Current_reg_n_0_[4]\,
      I4 => \rCnt_Current_reg_n_0_[2]\,
      I5 => \rCnt_Current_reg_n_0_[3]\,
      O => \rCnt_Current[5]_i_1_n_0\
    );
\rCnt_Current[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[0]\,
      I1 => \rCnt_Current_reg_n_0_[1]\,
      O => \rCnt_Current[5]_i_2_n_0\
    );
\rCnt_Current[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88882888"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[6]\,
      I2 => \rCnt_Current_reg_n_0_[1]\,
      I3 => \rCnt_Current_reg_n_0_[0]\,
      I4 => \rCnt_Current[6]_i_2_n_0\,
      O => \rCnt_Current[6]_i_1_n_0\
    );
\rCnt_Current[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[4]\,
      I1 => \rCnt_Current_reg_n_0_[2]\,
      I2 => \rCnt_Current_reg_n_0_[3]\,
      I3 => \rCnt_Current_reg_n_0_[5]\,
      O => \rCnt_Current[6]_i_2_n_0\
    );
\rCnt_Current[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[7]\,
      I2 => \rCnt_Current[10]_i_3_n_0\,
      O => \rCnt_Current[7]_i_1_n_0\
    );
\rCnt_Current[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[8]\,
      I2 => \rCnt_Current[10]_i_3_n_0\,
      I3 => \rCnt_Current_reg_n_0_[7]\,
      O => \rCnt_Current[8]_i_1_n_0\
    );
\rCnt_Current[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[9]\,
      I2 => \rCnt_Current_reg_n_0_[8]\,
      I3 => \rCnt_Current_reg_n_0_[7]\,
      I4 => \rCnt_Current[10]_i_3_n_0\,
      O => \rCnt_Current[9]_i_1_n_0\
    );
\rCnt_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[0]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[0]\,
      R => iRst
    );
\rCnt_Current_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[10]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[10]\,
      R => iRst
    );
\rCnt_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[1]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[1]\,
      R => iRst
    );
\rCnt_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[2]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[2]\,
      R => iRst
    );
\rCnt_Current_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[3]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[3]\,
      R => iRst
    );
\rCnt_Current_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[4]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[4]\,
      R => iRst
    );
\rCnt_Current_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[5]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[5]\,
      R => iRst
    );
\rCnt_Current_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[6]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[6]\,
      R => iRst
    );
\rCnt_Current_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[7]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[7]\,
      R => iRst
    );
\rCnt_Current_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[8]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[8]\,
      R => iRst
    );
\rCnt_Current_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[9]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[9]\,
      R => iRst
    );
\rTxByte[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000A800A800A8"
    )
        port map (
      I0 => \rTxByte_reg[0]_0\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => wTxDone,
      I3 => \rTxByte_reg[0]\(4),
      I4 => \rTxByte_reg[0]\(3),
      I5 => \rTxByte_reg[0]\(2),
      O => D(0)
    );
\rTxByte[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000A800A800A8"
    )
        port map (
      I0 => \rTxByte_reg[1]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => wTxDone,
      I3 => \rTxByte_reg[0]\(4),
      I4 => \rTxByte_reg[0]\(3),
      I5 => \rTxByte_reg[0]\(2),
      O => D(1)
    );
\rTxByte[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000A800A800A8"
    )
        port map (
      I0 => \rTxByte_reg[2]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => wTxDone,
      I3 => \rTxByte_reg[0]\(4),
      I4 => \rTxByte_reg[0]\(3),
      I5 => \rTxByte_reg[0]\(2),
      O => D(2)
    );
\rTxByte[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000A800A800A8"
    )
        port map (
      I0 => \rTxByte_reg[3]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => wTxDone,
      I3 => \rTxByte_reg[0]\(4),
      I4 => \rTxByte_reg[0]\(3),
      I5 => \rTxByte_reg[0]\(2),
      O => D(3)
    );
\rTxByte[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000A800A800A8"
    )
        port map (
      I0 => \rTxByte_reg[4]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => wTxDone,
      I3 => \rTxByte_reg[0]\(4),
      I4 => \rTxByte_reg[0]\(3),
      I5 => \rTxByte_reg[0]\(2),
      O => D(4)
    );
\rTxByte[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000A800A800A8"
    )
        port map (
      I0 => \rTxByte_reg[5]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => wTxDone,
      I3 => \rTxByte_reg[0]\(4),
      I4 => \rTxByte_reg[0]\(3),
      I5 => \rTxByte_reg[0]\(2),
      O => D(5)
    );
\rTxByte[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000A800A800A8"
    )
        port map (
      I0 => \rTxByte_reg[6]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => wTxDone,
      I3 => \rTxByte_reg[0]\(4),
      I4 => \rTxByte_reg[0]\(3),
      I5 => \rTxByte_reg[0]\(2),
      O => D(6)
    );
\rTxByte[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000A800A800A8"
    )
        port map (
      I0 => \rTxByte_reg[7]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => wTxDone,
      I3 => \rTxByte_reg[0]\(4),
      I4 => \rTxByte_reg[0]\(3),
      I5 => \rTxByte_reg[0]\(2),
      O => D(7)
    );
\rTxData_Current[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => in7(0),
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I4 => \rTxData_Current_reg[7]_0\(0),
      O => \rTxData_Current[0]_i_1_n_0\
    );
\rTxData_Current[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => in7(1),
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I4 => \rTxData_Current_reg[7]_0\(1),
      O => \rTxData_Current[1]_i_1_n_0\
    );
\rTxData_Current[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => in7(2),
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I4 => \rTxData_Current_reg[7]_0\(2),
      O => \rTxData_Current[2]_i_1_n_0\
    );
\rTxData_Current[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => in7(3),
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I4 => \rTxData_Current_reg[7]_0\(3),
      O => \rTxData_Current[3]_i_1_n_0\
    );
\rTxData_Current[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => in7(4),
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I4 => \rTxData_Current_reg[7]_0\(4),
      O => \rTxData_Current[4]_i_1_n_0\
    );
\rTxData_Current[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => in7(5),
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I4 => \rTxData_Current_reg[7]_0\(5),
      O => \rTxData_Current[5]_i_1_n_0\
    );
\rTxData_Current[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => in7(6),
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I4 => \rTxData_Current_reg[7]_0\(6),
      O => \rTxData_Current[6]_i_1_n_0\
    );
\rTxData_Current[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888888888888888"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I1 => rTxStart_reg,
      I2 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I4 => \rCnt_Current_reg_n_0_[10]\,
      I5 => \FSM_onehot_rFSM_Current[3]_i_2_n_0\,
      O => wTxData_Next
    );
\rTxData_Current[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rTxData_Current_reg[7]_0\(7),
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      O => \rTxData_Current[7]_i_2_n_0\
    );
\rTxData_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[0]_i_1_n_0\,
      Q => \rTxData_Current_reg_n_0_[0]\,
      R => iRst
    );
\rTxData_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[1]_i_1_n_0\,
      Q => in7(0),
      R => iRst
    );
\rTxData_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[2]_i_1_n_0\,
      Q => in7(1),
      R => iRst
    );
\rTxData_Current_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[3]_i_1_n_0\,
      Q => in7(2),
      R => iRst
    );
\rTxData_Current_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[4]_i_1_n_0\,
      Q => in7(3),
      R => iRst
    );
\rTxData_Current_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[5]_i_1_n_0\,
      Q => in7(4),
      R => iRst
    );
\rTxData_Current_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[6]_i_1_n_0\,
      Q => in7(5),
      R => iRst
    );
\rTxData_Current_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[7]_i_2_n_0\,
      Q => in7(6),
      R => iRst
    );
rTxStart_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFC5FF00000500"
    )
        port map (
      I0 => \^rcnt_reg[2]\,
      I1 => wTxDone,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => rTxStart_reg,
      O => \FSM_onehot_rFSM_Current_reg[4]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart_top_0_0_uart_top is
  port (
    oTx : out STD_LOGIC;
    iRst : in STD_LOGIC;
    iClk : in STD_LOGIC;
    iRx : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_uart_top_0_0_uart_top : entity is "uart_top";
end design_1_uart_top_0_0_uart_top;

architecture STRUCTURE of design_1_uart_top_0_0_uart_top is
  signal \FSM_sequential_rFSM[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rFSM[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rFSM[1]_i_4_n_0\ : STD_LOGIC;
  signal UART_RX_INST_n_12 : STD_LOGIC;
  signal UART_RX_INST_n_3 : STD_LOGIC;
  signal UART_TX_INST_n_11 : STD_LOGIC;
  signal UART_TX_INST_n_13 : STD_LOGIC;
  signal UART_TX_INST_n_14 : STD_LOGIC;
  signal UART_TX_INST_n_15 : STD_LOGIC;
  signal UART_TX_INST_n_16 : STD_LOGIC;
  signal UART_TX_INST_n_17 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rBuffer : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rBuffer_0 : STD_LOGIC;
  signal \rBuffer_reg[72]_srl10___inst_rBuffer_reg_r_8_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[73]_srl10___inst_rBuffer_reg_r_8_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[74]_srl10___inst_rBuffer_reg_r_8_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[75]_srl10___inst_rBuffer_reg_r_8_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[76]_srl10___inst_rBuffer_reg_r_8_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[77]_srl10___inst_rBuffer_reg_r_8_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[78]_srl10___inst_rBuffer_reg_r_8_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[79]_srl10___inst_rBuffer_reg_r_8_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[80]_inst_rBuffer_reg_r_9_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[81]_inst_rBuffer_reg_r_9_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[82]_inst_rBuffer_reg_r_9_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[83]_inst_rBuffer_reg_r_9_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[84]_inst_rBuffer_reg_r_9_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[85]_inst_rBuffer_reg_r_9_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[86]_inst_rBuffer_reg_r_9_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[87]_inst_rBuffer_reg_r_9_n_0\ : STD_LOGIC;
  signal \rBuffer_reg_gate__0_n_0\ : STD_LOGIC;
  signal \rBuffer_reg_gate__1_n_0\ : STD_LOGIC;
  signal \rBuffer_reg_gate__2_n_0\ : STD_LOGIC;
  signal \rBuffer_reg_gate__3_n_0\ : STD_LOGIC;
  signal \rBuffer_reg_gate__4_n_0\ : STD_LOGIC;
  signal \rBuffer_reg_gate__5_n_0\ : STD_LOGIC;
  signal \rBuffer_reg_gate__6_n_0\ : STD_LOGIC;
  signal rBuffer_reg_gate_n_0 : STD_LOGIC;
  signal \rBuffer_reg_n_0_[88]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[89]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[90]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[91]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[92]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[93]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[94]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[95]\ : STD_LOGIC;
  signal rBuffer_reg_r_0_n_0 : STD_LOGIC;
  signal rBuffer_reg_r_1_n_0 : STD_LOGIC;
  signal rBuffer_reg_r_2_n_0 : STD_LOGIC;
  signal rBuffer_reg_r_3_n_0 : STD_LOGIC;
  signal rBuffer_reg_r_4_n_0 : STD_LOGIC;
  signal rBuffer_reg_r_5_n_0 : STD_LOGIC;
  signal rBuffer_reg_r_6_n_0 : STD_LOGIC;
  signal rBuffer_reg_r_7_n_0 : STD_LOGIC;
  signal rBuffer_reg_r_8_n_0 : STD_LOGIC;
  signal rBuffer_reg_r_9_n_0 : STD_LOGIC;
  signal rBuffer_reg_r_n_0 : STD_LOGIC;
  signal rCnt : STD_LOGIC;
  signal \rCnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \rCnt[4]_i_5_n_0\ : STD_LOGIC;
  signal \rCnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \rCnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \rCnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \rCnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \rCnt_reg_n_0_[4]\ : STD_LOGIC;
  signal rFSM : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \rFSM__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rTxByte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rTxByte_1 : STD_LOGIC;
  signal rTxStart_reg_n_0 : STD_LOGIC;
  signal wRxDone : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_rFSM[0]_i_4\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \FSM_sequential_rFSM[1]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \FSM_sequential_rFSM[1]_i_4\ : label is "soft_lutpair30";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_rFSM_reg[0]\ : label is "s_IDLE:000,s_WAIT_RX:001,s_DONE:100,s_WAIT_TX:011,s_TX:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rFSM_reg[1]\ : label is "s_IDLE:000,s_WAIT_RX:001,s_DONE:100,s_WAIT_TX:011,s_TX:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rFSM_reg[2]\ : label is "s_IDLE:000,s_WAIT_RX:001,s_DONE:100,s_WAIT_TX:011,s_TX:010";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \rBuffer_reg[72]_srl10___inst_rBuffer_reg_r_8\ : label is "\inst/rBuffer_reg ";
  attribute srl_name : string;
  attribute srl_name of \rBuffer_reg[72]_srl10___inst_rBuffer_reg_r_8\ : label is "\inst/rBuffer_reg[72]_srl10___inst_rBuffer_reg_r_8 ";
  attribute srl_bus_name of \rBuffer_reg[73]_srl10___inst_rBuffer_reg_r_8\ : label is "\inst/rBuffer_reg ";
  attribute srl_name of \rBuffer_reg[73]_srl10___inst_rBuffer_reg_r_8\ : label is "\inst/rBuffer_reg[73]_srl10___inst_rBuffer_reg_r_8 ";
  attribute srl_bus_name of \rBuffer_reg[74]_srl10___inst_rBuffer_reg_r_8\ : label is "\inst/rBuffer_reg ";
  attribute srl_name of \rBuffer_reg[74]_srl10___inst_rBuffer_reg_r_8\ : label is "\inst/rBuffer_reg[74]_srl10___inst_rBuffer_reg_r_8 ";
  attribute srl_bus_name of \rBuffer_reg[75]_srl10___inst_rBuffer_reg_r_8\ : label is "\inst/rBuffer_reg ";
  attribute srl_name of \rBuffer_reg[75]_srl10___inst_rBuffer_reg_r_8\ : label is "\inst/rBuffer_reg[75]_srl10___inst_rBuffer_reg_r_8 ";
  attribute srl_bus_name of \rBuffer_reg[76]_srl10___inst_rBuffer_reg_r_8\ : label is "\inst/rBuffer_reg ";
  attribute srl_name of \rBuffer_reg[76]_srl10___inst_rBuffer_reg_r_8\ : label is "\inst/rBuffer_reg[76]_srl10___inst_rBuffer_reg_r_8 ";
  attribute srl_bus_name of \rBuffer_reg[77]_srl10___inst_rBuffer_reg_r_8\ : label is "\inst/rBuffer_reg ";
  attribute srl_name of \rBuffer_reg[77]_srl10___inst_rBuffer_reg_r_8\ : label is "\inst/rBuffer_reg[77]_srl10___inst_rBuffer_reg_r_8 ";
  attribute srl_bus_name of \rBuffer_reg[78]_srl10___inst_rBuffer_reg_r_8\ : label is "\inst/rBuffer_reg ";
  attribute srl_name of \rBuffer_reg[78]_srl10___inst_rBuffer_reg_r_8\ : label is "\inst/rBuffer_reg[78]_srl10___inst_rBuffer_reg_r_8 ";
  attribute srl_bus_name of \rBuffer_reg[79]_srl10___inst_rBuffer_reg_r_8\ : label is "\inst/rBuffer_reg ";
  attribute srl_name of \rBuffer_reg[79]_srl10___inst_rBuffer_reg_r_8\ : label is "\inst/rBuffer_reg[79]_srl10___inst_rBuffer_reg_r_8 ";
  attribute SOFT_HLUTNM of rBuffer_reg_gate : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \rBuffer_reg_gate__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \rBuffer_reg_gate__1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \rBuffer_reg_gate__2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \rBuffer_reg_gate__3\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \rBuffer_reg_gate__4\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \rBuffer_reg_gate__5\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \rBuffer_reg_gate__6\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \rCnt[4]_i_3\ : label is "soft_lutpair25";
begin
\FSM_sequential_rFSM[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000004F"
    )
        port map (
      I0 => \rCnt_reg_n_0_[2]\,
      I1 => rFSM(1),
      I2 => \rCnt_reg_n_0_[3]\,
      I3 => rFSM(2),
      I4 => \rCnt_reg_n_0_[4]\,
      O => \FSM_sequential_rFSM[0]_i_4_n_0\
    );
\FSM_sequential_rFSM[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rFSM(2),
      I1 => \rCnt_reg_n_0_[4]\,
      O => \FSM_sequential_rFSM[1]_i_2_n_0\
    );
\FSM_sequential_rFSM[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rFSM(1),
      I1 => rFSM(2),
      O => \FSM_sequential_rFSM[1]_i_4_n_0\
    );
\FSM_sequential_rFSM_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rFSM__0\(0),
      Q => rFSM(0),
      R => iRst
    );
\FSM_sequential_rFSM_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rFSM__0\(1),
      Q => rFSM(1),
      R => iRst
    );
\FSM_sequential_rFSM_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rFSM__0\(2),
      Q => rFSM(2),
      R => iRst
    );
UART_RX_INST: entity work.design_1_uart_top_0_0_uart_receiver
     port map (
      D(0) => UART_RX_INST_n_12,
      E(0) => rCnt,
      \FSM_sequential_rFSM_reg[1]\(2) => \rCnt_reg_n_0_[3]\,
      \FSM_sequential_rFSM_reg[1]\(1) => \rCnt_reg_n_0_[1]\,
      \FSM_sequential_rFSM_reg[1]\(0) => \rCnt_reg_n_0_[0]\,
      Q(0) => wRxDone,
      iClk => iClk,
      iRst => iRst,
      iRx => iRx,
      rBuffer(7 downto 0) => rBuffer(7 downto 0),
      rBuffer_0 => rBuffer_0,
      \rBuffer_reg[88]\ => \rCnt[4]_i_3_n_0\,
      \rBuffer_reg[88]_0\ => UART_TX_INST_n_11,
      \rBuffer_reg[88]_1\(2 downto 0) => rFSM(2 downto 0),
      \rCnt_reg[3]\ => UART_RX_INST_n_3
    );
UART_TX_INST: entity work.design_1_uart_top_0_0_uart_tx
     port map (
      D(7 downto 0) => p_0_in(7 downto 0),
      \FSM_onehot_rFSM_Current_reg[4]_0\ => UART_TX_INST_n_17,
      \FSM_sequential_rFSM_reg[0]\(2 downto 0) => \rFSM__0\(2 downto 0),
      \FSM_sequential_rFSM_reg[0]_0\ => \FSM_sequential_rFSM[0]_i_4_n_0\,
      \FSM_sequential_rFSM_reg[0]_1\ => \rCnt[4]_i_3_n_0\,
      \FSM_sequential_rFSM_reg[1]\ => \FSM_sequential_rFSM[1]_i_2_n_0\,
      \FSM_sequential_rFSM_reg[1]_0\ => UART_RX_INST_n_3,
      \FSM_sequential_rFSM_reg[1]_1\ => \FSM_sequential_rFSM[1]_i_4_n_0\,
      Q(2 downto 0) => rFSM(2 downto 0),
      iClk => iClk,
      iRst => iRst,
      oTx => oTx,
      \rCnt_reg[1]\(0) => wRxDone,
      \rCnt_reg[2]\ => UART_TX_INST_n_11,
      \rCnt_reg[4]\(3) => UART_TX_INST_n_13,
      \rCnt_reg[4]\(2) => UART_TX_INST_n_14,
      \rCnt_reg[4]\(1) => UART_TX_INST_n_15,
      \rCnt_reg[4]\(0) => UART_TX_INST_n_16,
      \rCnt_reg[4]_0\ => \rCnt[4]_i_5_n_0\,
      \rTxByte_reg[0]\(4) => \rCnt_reg_n_0_[4]\,
      \rTxByte_reg[0]\(3) => \rCnt_reg_n_0_[3]\,
      \rTxByte_reg[0]\(2) => \rCnt_reg_n_0_[2]\,
      \rTxByte_reg[0]\(1) => \rCnt_reg_n_0_[1]\,
      \rTxByte_reg[0]\(0) => \rCnt_reg_n_0_[0]\,
      \rTxByte_reg[0]_0\ => \rBuffer_reg_n_0_[88]\,
      \rTxByte_reg[1]\ => \rBuffer_reg_n_0_[89]\,
      \rTxByte_reg[2]\ => \rBuffer_reg_n_0_[90]\,
      \rTxByte_reg[3]\ => \rBuffer_reg_n_0_[91]\,
      \rTxByte_reg[4]\ => \rBuffer_reg_n_0_[92]\,
      \rTxByte_reg[5]\ => \rBuffer_reg_n_0_[93]\,
      \rTxByte_reg[6]\ => \rBuffer_reg_n_0_[94]\,
      \rTxByte_reg[7]\ => \rBuffer_reg_n_0_[95]\,
      \rTxData_Current_reg[7]_0\(7 downto 0) => rTxByte(7 downto 0),
      rTxStart_reg => rTxStart_reg_n_0
    );
\rBuffer_reg[72]_srl10___inst_rBuffer_reg_r_8\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '1',
      CE => rBuffer_0,
      CLK => iClk,
      D => rBuffer(0),
      Q => \rBuffer_reg[72]_srl10___inst_rBuffer_reg_r_8_n_0\
    );
\rBuffer_reg[73]_srl10___inst_rBuffer_reg_r_8\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '1',
      CE => rBuffer_0,
      CLK => iClk,
      D => rBuffer(1),
      Q => \rBuffer_reg[73]_srl10___inst_rBuffer_reg_r_8_n_0\
    );
\rBuffer_reg[74]_srl10___inst_rBuffer_reg_r_8\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '1',
      CE => rBuffer_0,
      CLK => iClk,
      D => rBuffer(2),
      Q => \rBuffer_reg[74]_srl10___inst_rBuffer_reg_r_8_n_0\
    );
\rBuffer_reg[75]_srl10___inst_rBuffer_reg_r_8\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '1',
      CE => rBuffer_0,
      CLK => iClk,
      D => rBuffer(3),
      Q => \rBuffer_reg[75]_srl10___inst_rBuffer_reg_r_8_n_0\
    );
\rBuffer_reg[76]_srl10___inst_rBuffer_reg_r_8\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '1',
      CE => rBuffer_0,
      CLK => iClk,
      D => rBuffer(4),
      Q => \rBuffer_reg[76]_srl10___inst_rBuffer_reg_r_8_n_0\
    );
\rBuffer_reg[77]_srl10___inst_rBuffer_reg_r_8\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '1',
      CE => rBuffer_0,
      CLK => iClk,
      D => rBuffer(5),
      Q => \rBuffer_reg[77]_srl10___inst_rBuffer_reg_r_8_n_0\
    );
\rBuffer_reg[78]_srl10___inst_rBuffer_reg_r_8\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '1',
      CE => rBuffer_0,
      CLK => iClk,
      D => rBuffer(6),
      Q => \rBuffer_reg[78]_srl10___inst_rBuffer_reg_r_8_n_0\
    );
\rBuffer_reg[79]_srl10___inst_rBuffer_reg_r_8\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '1',
      CE => rBuffer_0,
      CLK => iClk,
      D => rBuffer(7),
      Q => \rBuffer_reg[79]_srl10___inst_rBuffer_reg_r_8_n_0\
    );
\rBuffer_reg[80]_inst_rBuffer_reg_r_9\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => \rBuffer_reg[72]_srl10___inst_rBuffer_reg_r_8_n_0\,
      Q => \rBuffer_reg[80]_inst_rBuffer_reg_r_9_n_0\,
      R => '0'
    );
\rBuffer_reg[81]_inst_rBuffer_reg_r_9\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => \rBuffer_reg[73]_srl10___inst_rBuffer_reg_r_8_n_0\,
      Q => \rBuffer_reg[81]_inst_rBuffer_reg_r_9_n_0\,
      R => '0'
    );
\rBuffer_reg[82]_inst_rBuffer_reg_r_9\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => \rBuffer_reg[74]_srl10___inst_rBuffer_reg_r_8_n_0\,
      Q => \rBuffer_reg[82]_inst_rBuffer_reg_r_9_n_0\,
      R => '0'
    );
\rBuffer_reg[83]_inst_rBuffer_reg_r_9\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => \rBuffer_reg[75]_srl10___inst_rBuffer_reg_r_8_n_0\,
      Q => \rBuffer_reg[83]_inst_rBuffer_reg_r_9_n_0\,
      R => '0'
    );
\rBuffer_reg[84]_inst_rBuffer_reg_r_9\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => \rBuffer_reg[76]_srl10___inst_rBuffer_reg_r_8_n_0\,
      Q => \rBuffer_reg[84]_inst_rBuffer_reg_r_9_n_0\,
      R => '0'
    );
\rBuffer_reg[85]_inst_rBuffer_reg_r_9\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => \rBuffer_reg[77]_srl10___inst_rBuffer_reg_r_8_n_0\,
      Q => \rBuffer_reg[85]_inst_rBuffer_reg_r_9_n_0\,
      R => '0'
    );
\rBuffer_reg[86]_inst_rBuffer_reg_r_9\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => \rBuffer_reg[78]_srl10___inst_rBuffer_reg_r_8_n_0\,
      Q => \rBuffer_reg[86]_inst_rBuffer_reg_r_9_n_0\,
      R => '0'
    );
\rBuffer_reg[87]_inst_rBuffer_reg_r_9\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => \rBuffer_reg[79]_srl10___inst_rBuffer_reg_r_8_n_0\,
      Q => \rBuffer_reg[87]_inst_rBuffer_reg_r_9_n_0\,
      R => '0'
    );
\rBuffer_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => \rBuffer_reg_gate__6_n_0\,
      Q => \rBuffer_reg_n_0_[88]\,
      R => iRst
    );
\rBuffer_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => \rBuffer_reg_gate__5_n_0\,
      Q => \rBuffer_reg_n_0_[89]\,
      R => iRst
    );
\rBuffer_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => \rBuffer_reg_gate__4_n_0\,
      Q => \rBuffer_reg_n_0_[90]\,
      R => iRst
    );
\rBuffer_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => \rBuffer_reg_gate__3_n_0\,
      Q => \rBuffer_reg_n_0_[91]\,
      R => iRst
    );
\rBuffer_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => \rBuffer_reg_gate__2_n_0\,
      Q => \rBuffer_reg_n_0_[92]\,
      R => iRst
    );
\rBuffer_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => \rBuffer_reg_gate__1_n_0\,
      Q => \rBuffer_reg_n_0_[93]\,
      R => iRst
    );
\rBuffer_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => \rBuffer_reg_gate__0_n_0\,
      Q => \rBuffer_reg_n_0_[94]\,
      R => iRst
    );
\rBuffer_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer_reg_gate_n_0,
      Q => \rBuffer_reg_n_0_[95]\,
      R => iRst
    );
rBuffer_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rBuffer_reg[87]_inst_rBuffer_reg_r_9_n_0\,
      I1 => rBuffer_reg_r_9_n_0,
      O => rBuffer_reg_gate_n_0
    );
\rBuffer_reg_gate__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rBuffer_reg[86]_inst_rBuffer_reg_r_9_n_0\,
      I1 => rBuffer_reg_r_9_n_0,
      O => \rBuffer_reg_gate__0_n_0\
    );
\rBuffer_reg_gate__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rBuffer_reg[85]_inst_rBuffer_reg_r_9_n_0\,
      I1 => rBuffer_reg_r_9_n_0,
      O => \rBuffer_reg_gate__1_n_0\
    );
\rBuffer_reg_gate__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rBuffer_reg[84]_inst_rBuffer_reg_r_9_n_0\,
      I1 => rBuffer_reg_r_9_n_0,
      O => \rBuffer_reg_gate__2_n_0\
    );
\rBuffer_reg_gate__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rBuffer_reg[83]_inst_rBuffer_reg_r_9_n_0\,
      I1 => rBuffer_reg_r_9_n_0,
      O => \rBuffer_reg_gate__3_n_0\
    );
\rBuffer_reg_gate__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rBuffer_reg[82]_inst_rBuffer_reg_r_9_n_0\,
      I1 => rBuffer_reg_r_9_n_0,
      O => \rBuffer_reg_gate__4_n_0\
    );
\rBuffer_reg_gate__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rBuffer_reg[81]_inst_rBuffer_reg_r_9_n_0\,
      I1 => rBuffer_reg_r_9_n_0,
      O => \rBuffer_reg_gate__5_n_0\
    );
\rBuffer_reg_gate__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rBuffer_reg[80]_inst_rBuffer_reg_r_9_n_0\,
      I1 => rBuffer_reg_r_9_n_0,
      O => \rBuffer_reg_gate__6_n_0\
    );
rBuffer_reg_r: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => '1',
      Q => rBuffer_reg_r_n_0,
      R => iRst
    );
rBuffer_reg_r_0: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer_reg_r_n_0,
      Q => rBuffer_reg_r_0_n_0,
      R => iRst
    );
rBuffer_reg_r_1: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer_reg_r_0_n_0,
      Q => rBuffer_reg_r_1_n_0,
      R => iRst
    );
rBuffer_reg_r_2: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer_reg_r_1_n_0,
      Q => rBuffer_reg_r_2_n_0,
      R => iRst
    );
rBuffer_reg_r_3: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer_reg_r_2_n_0,
      Q => rBuffer_reg_r_3_n_0,
      R => iRst
    );
rBuffer_reg_r_4: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer_reg_r_3_n_0,
      Q => rBuffer_reg_r_4_n_0,
      R => iRst
    );
rBuffer_reg_r_5: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer_reg_r_4_n_0,
      Q => rBuffer_reg_r_5_n_0,
      R => iRst
    );
rBuffer_reg_r_6: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer_reg_r_5_n_0,
      Q => rBuffer_reg_r_6_n_0,
      R => iRst
    );
rBuffer_reg_r_7: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer_reg_r_6_n_0,
      Q => rBuffer_reg_r_7_n_0,
      R => iRst
    );
rBuffer_reg_r_8: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer_reg_r_7_n_0,
      Q => rBuffer_reg_r_8_n_0,
      R => iRst
    );
rBuffer_reg_r_9: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer_reg_r_8_n_0,
      Q => rBuffer_reg_r_9_n_0,
      R => iRst
    );
\rCnt[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \rCnt_reg_n_0_[4]\,
      I1 => \rCnt_reg_n_0_[3]\,
      I2 => \rCnt_reg_n_0_[2]\,
      O => \rCnt[4]_i_3_n_0\
    );
\rCnt[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \rCnt_reg_n_0_[0]\,
      I1 => \rCnt_reg_n_0_[1]\,
      O => \rCnt[4]_i_5_n_0\
    );
\rCnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt,
      D => UART_RX_INST_n_12,
      Q => \rCnt_reg_n_0_[0]\,
      R => iRst
    );
\rCnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt,
      D => UART_TX_INST_n_16,
      Q => \rCnt_reg_n_0_[1]\,
      R => iRst
    );
\rCnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt,
      D => UART_TX_INST_n_15,
      Q => \rCnt_reg_n_0_[2]\,
      R => iRst
    );
\rCnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt,
      D => UART_TX_INST_n_14,
      Q => \rCnt_reg_n_0_[3]\,
      R => iRst
    );
\rCnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt,
      D => UART_TX_INST_n_13,
      Q => \rCnt_reg_n_0_[4]\,
      R => iRst
    );
\rTxByte[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => rFSM(2),
      I1 => rFSM(1),
      I2 => rFSM(0),
      O => rTxByte_1
    );
\rTxByte_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_1,
      D => p_0_in(0),
      Q => rTxByte(0),
      R => iRst
    );
\rTxByte_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_1,
      D => p_0_in(1),
      Q => rTxByte(1),
      R => iRst
    );
\rTxByte_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_1,
      D => p_0_in(2),
      Q => rTxByte(2),
      R => iRst
    );
\rTxByte_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_1,
      D => p_0_in(3),
      Q => rTxByte(3),
      R => iRst
    );
\rTxByte_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_1,
      D => p_0_in(4),
      Q => rTxByte(4),
      R => iRst
    );
\rTxByte_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_1,
      D => p_0_in(5),
      Q => rTxByte(5),
      R => iRst
    );
\rTxByte_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_1,
      D => p_0_in(6),
      Q => rTxByte(6),
      R => iRst
    );
\rTxByte_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_1,
      D => p_0_in(7),
      Q => rTxByte(7),
      R => iRst
    );
rTxStart_reg: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => UART_TX_INST_n_17,
      Q => rTxStart_reg_n_0,
      R => iRst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart_top_0_0 is
  port (
    iClk : in STD_LOGIC;
    iRst : in STD_LOGIC;
    iRx : in STD_LOGIC;
    oTx : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_uart_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_uart_top_0_0 : entity is "design_1_uart_top_0_0,uart_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_uart_top_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_uart_top_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_uart_top_0_0 : entity is "uart_top,Vivado 2020.1";
end design_1_uart_top_0_0;

architecture STRUCTURE of design_1_uart_top_0_0 is
begin
inst: entity work.design_1_uart_top_0_0_uart_top
     port map (
      iClk => iClk,
      iRst => iRst,
      iRx => iRx,
      oTx => oTx
    );
end STRUCTURE;
