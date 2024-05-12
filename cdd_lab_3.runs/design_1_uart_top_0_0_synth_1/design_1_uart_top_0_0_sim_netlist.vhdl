-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Sun May 12 11:09:48 2024
-- Host        : billionaire-he-will-be running 64-bit Ubuntu 23.10
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_uart_top_0_0_sim_netlist.vhdl
-- Design      : design_1_uart_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mp_adder is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_rFSM_current_reg[2]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_rFSM_reg[4]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \rResult_reg[8]\ : out STD_LOGIC_VECTOR ( 16 downto 0 );
    \rCnt_reg[0]\ : out STD_LOGIC;
    iRst : in STD_LOGIC;
    iClk : in STD_LOGIC;
    rStartAdder_reg : in STD_LOGIC;
    rStartAdder_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_onehot_rFSM_reg[0]\ : in STD_LOGIC;
    \FSM_onehot_rFSM_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rResult_reg[0]\ : in STD_LOGIC;
    \regB_Q_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \regA_Q_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \FSM_onehot_rFSM_reg[4]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rStartAdder_reg_1 : in STD_LOGIC;
    \rResult_reg[16]\ : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mp_adder;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mp_adder is
  signal \^fsm_sequential_rfsm_current_reg[2]_0\ : STD_LOGIC;
  signal carry_out : STD_LOGIC;
  signal muxA_Out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal muxB_Out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rCnt_Current : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rFSM_current : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \regA_Q_reg_n_0_[0]\ : STD_LOGIC;
  signal \regA_Q_reg_n_0_[10]\ : STD_LOGIC;
  signal \regA_Q_reg_n_0_[11]\ : STD_LOGIC;
  signal \regA_Q_reg_n_0_[12]\ : STD_LOGIC;
  signal \regA_Q_reg_n_0_[13]\ : STD_LOGIC;
  signal \regA_Q_reg_n_0_[14]\ : STD_LOGIC;
  signal \regA_Q_reg_n_0_[15]\ : STD_LOGIC;
  signal \regA_Q_reg_n_0_[1]\ : STD_LOGIC;
  signal \regA_Q_reg_n_0_[2]\ : STD_LOGIC;
  signal \regA_Q_reg_n_0_[3]\ : STD_LOGIC;
  signal \regA_Q_reg_n_0_[4]\ : STD_LOGIC;
  signal \regA_Q_reg_n_0_[5]\ : STD_LOGIC;
  signal \regA_Q_reg_n_0_[6]\ : STD_LOGIC;
  signal \regA_Q_reg_n_0_[7]\ : STD_LOGIC;
  signal \regA_Q_reg_n_0_[8]\ : STD_LOGIC;
  signal \regA_Q_reg_n_0_[9]\ : STD_LOGIC;
  signal regB_Q : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \regB_Q_reg_n_0_[10]\ : STD_LOGIC;
  signal \regB_Q_reg_n_0_[11]\ : STD_LOGIC;
  signal \regB_Q_reg_n_0_[12]\ : STD_LOGIC;
  signal \regB_Q_reg_n_0_[13]\ : STD_LOGIC;
  signal \regB_Q_reg_n_0_[14]\ : STD_LOGIC;
  signal \regB_Q_reg_n_0_[15]\ : STD_LOGIC;
  signal \regB_Q_reg_n_0_[8]\ : STD_LOGIC;
  signal \regB_Q_reg_n_0_[9]\ : STD_LOGIC;
  signal regCout_i_2_n_0 : STD_LOGIC;
  signal regCout_i_3_n_0 : STD_LOGIC;
  signal regCout_i_4_n_0 : STD_LOGIC;
  signal regCout_i_5_n_0 : STD_LOGIC;
  signal regResult : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \regResult[10]_i_2_n_0\ : STD_LOGIC;
  signal \regResult[12]_i_2_n_0\ : STD_LOGIC;
  signal \regResult[15]_i_2_n_0\ : STD_LOGIC;
  signal \regResult[15]_i_3_n_0\ : STD_LOGIC;
  signal result : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal wCnt_next : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal wFSM_next : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal wResult : STD_LOGIC_VECTOR ( 16 to 16 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM[6]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_rFSM_current[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_sequential_rFSM_current[2]_i_1\ : label is "soft_lutpair6";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_rFSM_current_reg[0]\ : label is "s_ADD_FIRST:010,s_IDLE:000,s_STORE_OPS:001,s_DONE:100,s_ADD_WORDS:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rFSM_current_reg[1]\ : label is "s_ADD_FIRST:010,s_IDLE:000,s_STORE_OPS:001,s_DONE:100,s_ADD_WORDS:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rFSM_current_reg[2]\ : label is "s_ADD_FIRST:010,s_IDLE:000,s_STORE_OPS:001,s_DONE:100,s_ADD_WORDS:011";
  attribute SOFT_HLUTNM of \rCnt_Current[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rCnt_Current[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rResult[0]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \rResult[10]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \rResult[11]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rResult[12]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rResult[13]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rResult[14]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \rResult[15]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rResult[16]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rResult[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \rResult[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rResult[3]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rResult[4]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rResult[5]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \rResult[6]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rResult[7]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rResult[9]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \regA_Q[10]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \regA_Q[11]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \regA_Q[12]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \regA_Q[13]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \regA_Q[14]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \regA_Q[15]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \regA_Q[8]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \regA_Q[9]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \regB_Q[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \regB_Q[10]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \regB_Q[11]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \regB_Q[12]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \regB_Q[13]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \regB_Q[14]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \regB_Q[15]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \regB_Q[8]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \regB_Q[9]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of regCout_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of regCout_i_5 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \regResult[10]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \regResult[11]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \regResult[12]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \regResult[12]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \regResult[13]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \regResult[14]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \regResult[15]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \regResult[15]_i_3\ : label is "soft_lutpair3";
begin
  \FSM_sequential_rFSM_current_reg[2]_0\ <= \^fsm_sequential_rfsm_current_reg[2]_0\;
\FSM_onehot_rFSM[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444F44444444444"
    )
        port map (
      I0 => \^fsm_sequential_rfsm_current_reg[2]_0\,
      I1 => Q(1),
      I2 => \FSM_onehot_rFSM_reg[3]\(0),
      I3 => rStartAdder_reg,
      I4 => rStartAdder_reg_0,
      I5 => Q(0),
      O => D(0)
    );
\FSM_onehot_rFSM[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF020002000200"
    )
        port map (
      I0 => rFSM_current(2),
      I1 => rFSM_current(1),
      I2 => rFSM_current(0),
      I3 => Q(1),
      I4 => Q(3),
      I5 => \FSM_onehot_rFSM_reg[4]_0\(0),
      O => D(1)
    );
\FSM_onehot_rFSM[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFE00"
    )
        port map (
      I0 => rStartAdder_reg,
      I1 => rStartAdder_reg_0,
      I2 => \^fsm_sequential_rfsm_current_reg[2]_0\,
      I3 => Q(1),
      I4 => \FSM_onehot_rFSM_reg[0]\,
      O => E(0)
    );
\FSM_onehot_rFSM[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => rFSM_current(2),
      I1 => rFSM_current(1),
      I2 => rFSM_current(0),
      O => \^fsm_sequential_rfsm_current_reg[2]_0\
    );
\FSM_sequential_rFSM_current[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011FF00F0"
    )
        port map (
      I0 => rCnt_Current(0),
      I1 => rCnt_Current(1),
      I2 => rStartAdder_reg_1,
      I3 => rFSM_current(0),
      I4 => rFSM_current(1),
      I5 => rFSM_current(2),
      O => wFSM_next(0)
    );
\FSM_sequential_rFSM_current[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14141454"
    )
        port map (
      I0 => rFSM_current(2),
      I1 => rFSM_current(0),
      I2 => rFSM_current(1),
      I3 => rCnt_Current(0),
      I4 => rCnt_Current(1),
      O => wFSM_next(1)
    );
\FSM_sequential_rFSM_current[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E000"
    )
        port map (
      I0 => rCnt_Current(1),
      I1 => rCnt_Current(0),
      I2 => rFSM_current(0),
      I3 => rFSM_current(1),
      I4 => rFSM_current(2),
      O => wFSM_next(2)
    );
\FSM_sequential_rFSM_current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wFSM_next(0),
      Q => rFSM_current(0),
      R => iRst
    );
\FSM_sequential_rFSM_current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wFSM_next(1),
      Q => rFSM_current(1),
      R => iRst
    );
\FSM_sequential_rFSM_current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wFSM_next(2),
      Q => rFSM_current(2),
      R => iRst
    );
\rCnt_Current[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0054"
    )
        port map (
      I0 => rFSM_current(2),
      I1 => rFSM_current(0),
      I2 => rFSM_current(1),
      I3 => rCnt_Current(0),
      O => wCnt_next(0)
    );
\rCnt_Current[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06060600"
    )
        port map (
      I0 => rCnt_Current(1),
      I1 => rCnt_Current(0),
      I2 => rFSM_current(2),
      I3 => rFSM_current(0),
      I4 => rFSM_current(1),
      O => wCnt_next(1)
    );
\rCnt_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wCnt_next(0),
      Q => rCnt_Current(0),
      R => iRst
    );
\rCnt_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wCnt_next(1),
      Q => rCnt_Current(1),
      R => iRst
    );
\rResult[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => regResult(0),
      O => \rResult_reg[8]\(0)
    );
\rResult[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rResult_reg[16]\(2),
      I1 => Q(2),
      I2 => regResult(10),
      I3 => Q(1),
      O => \rResult_reg[8]\(10)
    );
\rResult[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rResult_reg[16]\(3),
      I1 => Q(2),
      I2 => regResult(11),
      I3 => Q(1),
      O => \rResult_reg[8]\(11)
    );
\rResult[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rResult_reg[16]\(4),
      I1 => Q(2),
      I2 => regResult(12),
      I3 => Q(1),
      O => \rResult_reg[8]\(12)
    );
\rResult[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rResult_reg[16]\(5),
      I1 => Q(2),
      I2 => regResult(13),
      I3 => Q(1),
      O => \rResult_reg[8]\(13)
    );
\rResult[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rResult_reg[16]\(6),
      I1 => Q(2),
      I2 => regResult(14),
      I3 => Q(1),
      O => \rResult_reg[8]\(14)
    );
\rResult[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rResult_reg[16]\(7),
      I1 => Q(2),
      I2 => regResult(15),
      I3 => Q(1),
      O => \rResult_reg[8]\(15)
    );
\rResult[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rResult_reg[16]\(8),
      I1 => Q(2),
      I2 => Q(1),
      I3 => wResult(16),
      O => \rResult_reg[8]\(16)
    );
\rResult[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => regResult(1),
      O => \rResult_reg[8]\(1)
    );
\rResult[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888F888888888"
    )
        port map (
      I0 => \rResult_reg[0]\,
      I1 => Q(2),
      I2 => rFSM_current(2),
      I3 => rFSM_current(1),
      I4 => rFSM_current(0),
      I5 => Q(1),
      O => \FSM_onehot_rFSM_reg[4]\(0)
    );
\rResult[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => regResult(2),
      O => \rResult_reg[8]\(2)
    );
\rResult[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => regResult(3),
      O => \rResult_reg[8]\(3)
    );
\rResult[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => regResult(4),
      O => \rResult_reg[8]\(4)
    );
\rResult[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => regResult(5),
      O => \rResult_reg[8]\(5)
    );
\rResult[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => regResult(6),
      O => \rResult_reg[8]\(6)
    );
\rResult[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => regResult(7),
      O => \rResult_reg[8]\(7)
    );
\rResult[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rResult_reg[16]\(0),
      I1 => Q(2),
      I2 => regResult(8),
      I3 => Q(1),
      O => \rResult_reg[8]\(8)
    );
\rResult[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rResult_reg[16]\(1),
      I1 => Q(2),
      I2 => regResult(9),
      I3 => Q(1),
      O => \rResult_reg[8]\(9)
    );
rStartAdder_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FF0100"
    )
        port map (
      I0 => rStartAdder_reg,
      I1 => rStartAdder_reg_0,
      I2 => \^fsm_sequential_rfsm_current_reg[2]_0\,
      I3 => Q(1),
      I4 => rStartAdder_reg_1,
      O => \rCnt_reg[0]\
    );
\regA_Q[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBAA08A"
    )
        port map (
      I0 => \regA_Q_reg[15]_0\(0),
      I1 => rFSM_current(0),
      I2 => rFSM_current(2),
      I3 => rFSM_current(1),
      I4 => \regA_Q_reg_n_0_[8]\,
      O => muxA_Out(0)
    );
\regA_Q[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A282"
    )
        port map (
      I0 => \regA_Q_reg[15]_0\(10),
      I1 => rFSM_current(1),
      I2 => rFSM_current(2),
      I3 => rFSM_current(0),
      O => muxA_Out(10)
    );
\regA_Q[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A282"
    )
        port map (
      I0 => \regA_Q_reg[15]_0\(11),
      I1 => rFSM_current(1),
      I2 => rFSM_current(2),
      I3 => rFSM_current(0),
      O => muxA_Out(11)
    );
\regA_Q[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A282"
    )
        port map (
      I0 => \regA_Q_reg[15]_0\(12),
      I1 => rFSM_current(1),
      I2 => rFSM_current(2),
      I3 => rFSM_current(0),
      O => muxA_Out(12)
    );
\regA_Q[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A282"
    )
        port map (
      I0 => \regA_Q_reg[15]_0\(13),
      I1 => rFSM_current(1),
      I2 => rFSM_current(2),
      I3 => rFSM_current(0),
      O => muxA_Out(13)
    );
\regA_Q[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A282"
    )
        port map (
      I0 => \regA_Q_reg[15]_0\(14),
      I1 => rFSM_current(1),
      I2 => rFSM_current(2),
      I3 => rFSM_current(0),
      O => muxA_Out(14)
    );
\regA_Q[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A282"
    )
        port map (
      I0 => \regA_Q_reg[15]_0\(15),
      I1 => rFSM_current(1),
      I2 => rFSM_current(2),
      I3 => rFSM_current(0),
      O => muxA_Out(15)
    );
\regA_Q[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBAA08A"
    )
        port map (
      I0 => \regA_Q_reg[15]_0\(1),
      I1 => rFSM_current(0),
      I2 => rFSM_current(2),
      I3 => rFSM_current(1),
      I4 => \regA_Q_reg_n_0_[9]\,
      O => muxA_Out(1)
    );
\regA_Q[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBAA08A"
    )
        port map (
      I0 => \regA_Q_reg[15]_0\(2),
      I1 => rFSM_current(0),
      I2 => rFSM_current(2),
      I3 => rFSM_current(1),
      I4 => \regA_Q_reg_n_0_[10]\,
      O => muxA_Out(2)
    );
\regA_Q[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBAA08A"
    )
        port map (
      I0 => \regA_Q_reg[15]_0\(3),
      I1 => rFSM_current(0),
      I2 => rFSM_current(2),
      I3 => rFSM_current(1),
      I4 => \regA_Q_reg_n_0_[11]\,
      O => muxA_Out(3)
    );
\regA_Q[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBAA08A"
    )
        port map (
      I0 => \regA_Q_reg[15]_0\(4),
      I1 => rFSM_current(0),
      I2 => rFSM_current(2),
      I3 => rFSM_current(1),
      I4 => \regA_Q_reg_n_0_[12]\,
      O => muxA_Out(4)
    );
\regA_Q[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBAA08A"
    )
        port map (
      I0 => \regA_Q_reg[15]_0\(5),
      I1 => rFSM_current(0),
      I2 => rFSM_current(2),
      I3 => rFSM_current(1),
      I4 => \regA_Q_reg_n_0_[13]\,
      O => muxA_Out(5)
    );
\regA_Q[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBAA08A"
    )
        port map (
      I0 => \regA_Q_reg[15]_0\(6),
      I1 => rFSM_current(0),
      I2 => rFSM_current(2),
      I3 => rFSM_current(1),
      I4 => \regA_Q_reg_n_0_[14]\,
      O => muxA_Out(6)
    );
\regA_Q[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBAA08A"
    )
        port map (
      I0 => \regA_Q_reg[15]_0\(7),
      I1 => rFSM_current(0),
      I2 => rFSM_current(2),
      I3 => rFSM_current(1),
      I4 => \regA_Q_reg_n_0_[15]\,
      O => muxA_Out(7)
    );
\regA_Q[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A282"
    )
        port map (
      I0 => \regA_Q_reg[15]_0\(8),
      I1 => rFSM_current(1),
      I2 => rFSM_current(2),
      I3 => rFSM_current(0),
      O => muxA_Out(8)
    );
\regA_Q[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A282"
    )
        port map (
      I0 => \regA_Q_reg[15]_0\(9),
      I1 => rFSM_current(1),
      I2 => rFSM_current(2),
      I3 => rFSM_current(0),
      O => muxA_Out(9)
    );
\regA_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxA_Out(0),
      Q => \regA_Q_reg_n_0_[0]\,
      R => iRst
    );
\regA_Q_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxA_Out(10),
      Q => \regA_Q_reg_n_0_[10]\,
      R => iRst
    );
\regA_Q_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxA_Out(11),
      Q => \regA_Q_reg_n_0_[11]\,
      R => iRst
    );
\regA_Q_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxA_Out(12),
      Q => \regA_Q_reg_n_0_[12]\,
      R => iRst
    );
\regA_Q_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxA_Out(13),
      Q => \regA_Q_reg_n_0_[13]\,
      R => iRst
    );
\regA_Q_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxA_Out(14),
      Q => \regA_Q_reg_n_0_[14]\,
      R => iRst
    );
\regA_Q_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxA_Out(15),
      Q => \regA_Q_reg_n_0_[15]\,
      R => iRst
    );
\regA_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxA_Out(1),
      Q => \regA_Q_reg_n_0_[1]\,
      R => iRst
    );
\regA_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxA_Out(2),
      Q => \regA_Q_reg_n_0_[2]\,
      R => iRst
    );
\regA_Q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxA_Out(3),
      Q => \regA_Q_reg_n_0_[3]\,
      R => iRst
    );
\regA_Q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxA_Out(4),
      Q => \regA_Q_reg_n_0_[4]\,
      R => iRst
    );
\regA_Q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxA_Out(5),
      Q => \regA_Q_reg_n_0_[5]\,
      R => iRst
    );
\regA_Q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxA_Out(6),
      Q => \regA_Q_reg_n_0_[6]\,
      R => iRst
    );
\regA_Q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxA_Out(7),
      Q => \regA_Q_reg_n_0_[7]\,
      R => iRst
    );
\regA_Q_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxA_Out(8),
      Q => \regA_Q_reg_n_0_[8]\,
      R => iRst
    );
\regA_Q_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxA_Out(9),
      Q => \regA_Q_reg_n_0_[9]\,
      R => iRst
    );
\regB_Q[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBAA08A"
    )
        port map (
      I0 => \regB_Q_reg[15]_0\(0),
      I1 => rFSM_current(0),
      I2 => rFSM_current(2),
      I3 => rFSM_current(1),
      I4 => \regB_Q_reg_n_0_[8]\,
      O => muxB_Out(0)
    );
\regB_Q[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A282"
    )
        port map (
      I0 => \regB_Q_reg[15]_0\(10),
      I1 => rFSM_current(1),
      I2 => rFSM_current(2),
      I3 => rFSM_current(0),
      O => muxB_Out(10)
    );
\regB_Q[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A282"
    )
        port map (
      I0 => \regB_Q_reg[15]_0\(11),
      I1 => rFSM_current(1),
      I2 => rFSM_current(2),
      I3 => rFSM_current(0),
      O => muxB_Out(11)
    );
\regB_Q[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A282"
    )
        port map (
      I0 => \regB_Q_reg[15]_0\(12),
      I1 => rFSM_current(1),
      I2 => rFSM_current(2),
      I3 => rFSM_current(0),
      O => muxB_Out(12)
    );
\regB_Q[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A282"
    )
        port map (
      I0 => \regB_Q_reg[15]_0\(13),
      I1 => rFSM_current(1),
      I2 => rFSM_current(2),
      I3 => rFSM_current(0),
      O => muxB_Out(13)
    );
\regB_Q[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A282"
    )
        port map (
      I0 => \regB_Q_reg[15]_0\(14),
      I1 => rFSM_current(1),
      I2 => rFSM_current(2),
      I3 => rFSM_current(0),
      O => muxB_Out(14)
    );
\regB_Q[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A282"
    )
        port map (
      I0 => \regB_Q_reg[15]_0\(15),
      I1 => rFSM_current(1),
      I2 => rFSM_current(2),
      I3 => rFSM_current(0),
      O => muxB_Out(15)
    );
\regB_Q[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBAA08A"
    )
        port map (
      I0 => \regB_Q_reg[15]_0\(1),
      I1 => rFSM_current(0),
      I2 => rFSM_current(2),
      I3 => rFSM_current(1),
      I4 => \regB_Q_reg_n_0_[9]\,
      O => muxB_Out(1)
    );
\regB_Q[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBAA08A"
    )
        port map (
      I0 => \regB_Q_reg[15]_0\(2),
      I1 => rFSM_current(0),
      I2 => rFSM_current(2),
      I3 => rFSM_current(1),
      I4 => \regB_Q_reg_n_0_[10]\,
      O => muxB_Out(2)
    );
\regB_Q[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBAA08A"
    )
        port map (
      I0 => \regB_Q_reg[15]_0\(3),
      I1 => rFSM_current(0),
      I2 => rFSM_current(2),
      I3 => rFSM_current(1),
      I4 => \regB_Q_reg_n_0_[11]\,
      O => muxB_Out(3)
    );
\regB_Q[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBAA08A"
    )
        port map (
      I0 => \regB_Q_reg[15]_0\(4),
      I1 => rFSM_current(0),
      I2 => rFSM_current(2),
      I3 => rFSM_current(1),
      I4 => \regB_Q_reg_n_0_[12]\,
      O => muxB_Out(4)
    );
\regB_Q[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBAA08A"
    )
        port map (
      I0 => \regB_Q_reg[15]_0\(5),
      I1 => rFSM_current(0),
      I2 => rFSM_current(2),
      I3 => rFSM_current(1),
      I4 => \regB_Q_reg_n_0_[13]\,
      O => muxB_Out(5)
    );
\regB_Q[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBAA08A"
    )
        port map (
      I0 => \regB_Q_reg[15]_0\(6),
      I1 => rFSM_current(0),
      I2 => rFSM_current(2),
      I3 => rFSM_current(1),
      I4 => \regB_Q_reg_n_0_[14]\,
      O => muxB_Out(6)
    );
\regB_Q[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBAA08A"
    )
        port map (
      I0 => \regB_Q_reg[15]_0\(7),
      I1 => rFSM_current(0),
      I2 => rFSM_current(2),
      I3 => rFSM_current(1),
      I4 => \regB_Q_reg_n_0_[15]\,
      O => muxB_Out(7)
    );
\regB_Q[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A282"
    )
        port map (
      I0 => \regB_Q_reg[15]_0\(8),
      I1 => rFSM_current(1),
      I2 => rFSM_current(2),
      I3 => rFSM_current(0),
      O => muxB_Out(8)
    );
\regB_Q[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A282"
    )
        port map (
      I0 => \regB_Q_reg[15]_0\(9),
      I1 => rFSM_current(1),
      I2 => rFSM_current(2),
      I3 => rFSM_current(0),
      O => muxB_Out(9)
    );
\regB_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxB_Out(0),
      Q => regB_Q(0),
      R => iRst
    );
\regB_Q_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxB_Out(10),
      Q => \regB_Q_reg_n_0_[10]\,
      R => iRst
    );
\regB_Q_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxB_Out(11),
      Q => \regB_Q_reg_n_0_[11]\,
      R => iRst
    );
\regB_Q_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxB_Out(12),
      Q => \regB_Q_reg_n_0_[12]\,
      R => iRst
    );
\regB_Q_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxB_Out(13),
      Q => \regB_Q_reg_n_0_[13]\,
      R => iRst
    );
\regB_Q_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxB_Out(14),
      Q => \regB_Q_reg_n_0_[14]\,
      R => iRst
    );
\regB_Q_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxB_Out(15),
      Q => \regB_Q_reg_n_0_[15]\,
      R => iRst
    );
\regB_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxB_Out(1),
      Q => regB_Q(1),
      R => iRst
    );
\regB_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxB_Out(2),
      Q => regB_Q(2),
      R => iRst
    );
\regB_Q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxB_Out(3),
      Q => regB_Q(3),
      R => iRst
    );
\regB_Q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxB_Out(4),
      Q => regB_Q(4),
      R => iRst
    );
\regB_Q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxB_Out(5),
      Q => regB_Q(5),
      R => iRst
    );
\regB_Q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxB_Out(6),
      Q => regB_Q(6),
      R => iRst
    );
\regB_Q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxB_Out(7),
      Q => regB_Q(7),
      R => iRst
    );
\regB_Q_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxB_Out(8),
      Q => \regB_Q_reg_n_0_[8]\,
      R => iRst
    );
\regB_Q_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => muxB_Out(9),
      Q => \regB_Q_reg_n_0_[9]\,
      R => iRst
    );
regCout_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \regA_Q_reg_n_0_[7]\,
      I1 => regB_Q(7),
      I2 => \regA_Q_reg_n_0_[6]\,
      I3 => regB_Q(6),
      I4 => regCout_i_2_n_0,
      O => carry_out
    );
regCout_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE8EEE8EEE8E888"
    )
        port map (
      I0 => \regA_Q_reg_n_0_[5]\,
      I1 => regB_Q(5),
      I2 => \regA_Q_reg_n_0_[4]\,
      I3 => regB_Q(4),
      I4 => regCout_i_3_n_0,
      I5 => regCout_i_4_n_0,
      O => regCout_i_2_n_0
    );
regCout_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \regA_Q_reg_n_0_[3]\,
      I1 => regB_Q(3),
      O => regCout_i_3_n_0
    );
regCout_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE8E80000000000"
    )
        port map (
      I0 => \regResult[10]_i_2_n_0\,
      I1 => regB_Q(1),
      I2 => \regA_Q_reg_n_0_[1]\,
      I3 => regB_Q(2),
      I4 => \regA_Q_reg_n_0_[2]\,
      I5 => regCout_i_5_n_0,
      O => regCout_i_4_n_0
    );
regCout_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \regA_Q_reg_n_0_[3]\,
      I1 => regB_Q(3),
      O => regCout_i_5_n_0
    );
regCout_reg: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => carry_out,
      Q => wResult(16),
      R => iRst
    );
\regResult[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \regResult[10]_i_2_n_0\,
      I1 => regB_Q(1),
      I2 => \regA_Q_reg_n_0_[1]\,
      I3 => regB_Q(2),
      I4 => \regA_Q_reg_n_0_[2]\,
      O => result(2)
    );
\regResult[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888E8E8888888"
    )
        port map (
      I0 => regB_Q(0),
      I1 => \regA_Q_reg_n_0_[0]\,
      I2 => wResult(16),
      I3 => rFSM_current(1),
      I4 => rFSM_current(0),
      I5 => rFSM_current(2),
      O => \regResult[10]_i_2_n_0\
    );
\regResult[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \regResult[12]_i_2_n_0\,
      I1 => regB_Q(3),
      I2 => \regA_Q_reg_n_0_[3]\,
      O => result(3)
    );
\regResult[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \regResult[12]_i_2_n_0\,
      I1 => regB_Q(3),
      I2 => \regA_Q_reg_n_0_[3]\,
      I3 => regB_Q(4),
      I4 => \regA_Q_reg_n_0_[4]\,
      O => result(4)
    );
\regResult[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \regA_Q_reg_n_0_[2]\,
      I1 => regB_Q(2),
      I2 => \regA_Q_reg_n_0_[1]\,
      I3 => regB_Q(1),
      I4 => \regResult[10]_i_2_n_0\,
      O => \regResult[12]_i_2_n_0\
    );
\regResult[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \regResult[15]_i_2_n_0\,
      I1 => regB_Q(5),
      I2 => \regA_Q_reg_n_0_[5]\,
      O => result(5)
    );
\regResult[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \regResult[15]_i_2_n_0\,
      I1 => regB_Q(5),
      I2 => \regA_Q_reg_n_0_[5]\,
      I3 => regB_Q(6),
      I4 => \regA_Q_reg_n_0_[6]\,
      O => result(6)
    );
\regResult[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001717FFFFE8E800"
    )
        port map (
      I0 => \regResult[15]_i_2_n_0\,
      I1 => regB_Q(5),
      I2 => \regA_Q_reg_n_0_[5]\,
      I3 => regB_Q(6),
      I4 => \regA_Q_reg_n_0_[6]\,
      I5 => \regResult[15]_i_3_n_0\,
      O => result(7)
    );
\regResult[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \regA_Q_reg_n_0_[4]\,
      I1 => regB_Q(4),
      I2 => \regA_Q_reg_n_0_[3]\,
      I3 => regB_Q(3),
      I4 => \regResult[12]_i_2_n_0\,
      O => \regResult[15]_i_2_n_0\
    );
\regResult[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \regA_Q_reg_n_0_[7]\,
      I1 => regB_Q(7),
      O => \regResult[15]_i_3_n_0\
    );
\regResult[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0280FD7FFD7F0280"
    )
        port map (
      I0 => wResult(16),
      I1 => rFSM_current(1),
      I2 => rFSM_current(0),
      I3 => rFSM_current(2),
      I4 => regB_Q(0),
      I5 => \regA_Q_reg_n_0_[0]\,
      O => result(0)
    );
\regResult[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \regResult[10]_i_2_n_0\,
      I1 => regB_Q(1),
      I2 => \regA_Q_reg_n_0_[1]\,
      O => result(1)
    );
\regResult_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => regResult(8),
      Q => regResult(0),
      R => iRst
    );
\regResult_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => result(2),
      Q => regResult(10),
      R => iRst
    );
\regResult_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => result(3),
      Q => regResult(11),
      R => iRst
    );
\regResult_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => result(4),
      Q => regResult(12),
      R => iRst
    );
\regResult_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => result(5),
      Q => regResult(13),
      R => iRst
    );
\regResult_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => result(6),
      Q => regResult(14),
      R => iRst
    );
\regResult_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => result(7),
      Q => regResult(15),
      R => iRst
    );
\regResult_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => regResult(9),
      Q => regResult(1),
      R => iRst
    );
\regResult_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => regResult(10),
      Q => regResult(2),
      R => iRst
    );
\regResult_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => regResult(11),
      Q => regResult(3),
      R => iRst
    );
\regResult_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => regResult(12),
      Q => regResult(4),
      R => iRst
    );
\regResult_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => regResult(13),
      Q => regResult(5),
      R => iRst
    );
\regResult_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => regResult(14),
      Q => regResult(6),
      R => iRst
    );
\regResult_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => regResult(15),
      Q => regResult(7),
      R => iRst
    );
\regResult_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => result(0),
      Q => regResult(8),
      R => iRst
    );
\regResult_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => result(1),
      Q => regResult(9),
      R => iRst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_receiver is
  port (
    rCnt : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_rFSM_reg[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \rCnt_reg[1]\ : out STD_LOGIC;
    \FSM_onehot_rCurrentState_reg[5]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \rBufferCurrent_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    iRx : in STD_LOGIC;
    iClk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \rCnt_reg[0]\ : in STD_LOGIC;
    \rCnt_reg[0]_0\ : in STD_LOGIC;
    \FSM_onehot_rFSM_reg[1]\ : in STD_LOGIC;
    \FSM_onehot_rFSM_reg[1]_0\ : in STD_LOGIC;
    iRst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_receiver;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_receiver is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_rCurrentState[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurrentState[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurrentState[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurrentState[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurrentState[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurrentState[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurrentState[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurrentState[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurrentState[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurrentState[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurrentState[4]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurrentState[4]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurrentState[4]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurrentState[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurrentState[5]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurrentState[5]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rCurrentState[5]_i_4_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_rcurrentstate_reg[5]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_rCurrentState_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_rCurrentState_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_rCurrentState_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_rCurrentState_reg_n_0_[4]\ : STD_LOGIC;
  signal \^fsm_onehot_rfsm_reg[2]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal data0 : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal rBitCountCurrent : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \rBitCountCurrent[0]_i_1_n_0\ : STD_LOGIC;
  signal \rBitCountCurrent[1]_i_1_n_0\ : STD_LOGIC;
  signal \rBitCountCurrent[2]_i_1_n_0\ : STD_LOGIC;
  signal \rBitCountCurrent[2]_i_3_n_0\ : STD_LOGIC;
  signal \^rbuffercurrent_reg[7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rCntClockCurrent : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \rCntClockCurrent[0]_i_1_n_0\ : STD_LOGIC;
  signal \rCntClockCurrent[10]_i_1_n_0\ : STD_LOGIC;
  signal \rCntClockCurrent[10]_i_2_n_0\ : STD_LOGIC;
  signal \rCntClockCurrent[10]_i_3_n_0\ : STD_LOGIC;
  signal \rCntClockCurrent[11]_i_1_n_0\ : STD_LOGIC;
  signal \rCntClockCurrent[11]_i_2_n_0\ : STD_LOGIC;
  signal \rCntClockCurrent[11]_i_3_n_0\ : STD_LOGIC;
  signal \rCntClockCurrent[11]_i_4_n_0\ : STD_LOGIC;
  signal \rCntClockCurrent[1]_i_1_n_0\ : STD_LOGIC;
  signal \rCntClockCurrent[2]_i_1_n_0\ : STD_LOGIC;
  signal \rCntClockCurrent[3]_i_1_n_0\ : STD_LOGIC;
  signal \rCntClockCurrent[4]_i_1_n_0\ : STD_LOGIC;
  signal \rCntClockCurrent[5]_i_1_n_0\ : STD_LOGIC;
  signal \rCntClockCurrent[6]_i_1_n_0\ : STD_LOGIC;
  signal \rCntClockCurrent[7]_i_1_n_0\ : STD_LOGIC;
  signal \rCntClockCurrent[8]_i_1_n_0\ : STD_LOGIC;
  signal \rCntClockCurrent[9]_i_1_n_0\ : STD_LOGIC;
  signal \rCntClockCurrent[9]_i_2_n_0\ : STD_LOGIC;
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
  attribute SOFT_HLUTNM of \FSM_onehot_rCurrentState[0]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \FSM_onehot_rCurrentState[1]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \FSM_onehot_rCurrentState[3]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \FSM_onehot_rCurrentState[4]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \FSM_onehot_rCurrentState[4]_i_5\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \FSM_onehot_rCurrentState[5]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \FSM_onehot_rCurrentState[5]_i_3\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \FSM_onehot_rCurrentState[5]_i_4\ : label is "soft_lutpair32";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rCurrentState_reg[0]\ : label is "SIDLE:000001,RXSTART:000010,RXSAMPLE:001000,RXDATA:000100,RXSTOP:010000,SDONE:100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rCurrentState_reg[1]\ : label is "SIDLE:000001,RXSTART:000010,RXSAMPLE:001000,RXDATA:000100,RXSTOP:010000,SDONE:100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rCurrentState_reg[2]\ : label is "SIDLE:000001,RXSTART:000010,RXSAMPLE:001000,RXDATA:000100,RXSTOP:010000,SDONE:100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rCurrentState_reg[3]\ : label is "SIDLE:000001,RXSTART:000010,RXSAMPLE:001000,RXDATA:000100,RXSTOP:010000,SDONE:100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rCurrentState_reg[4]\ : label is "SIDLE:000001,RXSTART:000010,RXSAMPLE:001000,RXDATA:000100,RXSTOP:010000,SDONE:100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rCurrentState_reg[5]\ : label is "SIDLE:000001,RXSTART:000010,RXSAMPLE:001000,RXDATA:000100,RXSTOP:010000,SDONE:100000";
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM[1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM[2]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \rA[15]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \rB[15]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \rBitCountCurrent[0]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \rBitCountCurrent[2]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \rBitCountCurrent[2]_i_3\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \rCntClockCurrent[10]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \rCntClockCurrent[10]_i_3\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \rCntClockCurrent[11]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \rCntClockCurrent[11]_i_3\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \rCntClockCurrent[11]_i_4\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \rCntClockCurrent[9]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \rCnt[0]_i_3\ : label is "soft_lutpair24";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of wCntClockNext0_carry : label is 35;
  attribute ADDER_THRESHOLD of \wCntClockNext0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \wCntClockNext0_carry__1\ : label is 35;
begin
  E(0) <= \^e\(0);
  \FSM_onehot_rCurrentState_reg[5]_0\(0) <= \^fsm_onehot_rcurrentstate_reg[5]_0\(0);
  \FSM_onehot_rFSM_reg[2]\(0) <= \^fsm_onehot_rfsm_reg[2]\(0);
  \rBufferCurrent_reg[7]_0\(7 downto 0) <= \^rbuffercurrent_reg[7]_0\(7 downto 0);
\FSM_onehot_rCurrentState[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \^fsm_onehot_rcurrentstate_reg[5]_0\(0),
      I1 => \FSM_onehot_rCurrentState_reg_n_0_[0]\,
      I2 => rDataCurrent2,
      O => \FSM_onehot_rCurrentState[0]_i_1_n_0\
    );
\FSM_onehot_rCurrentState[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \FSM_onehot_rCurrentState[2]_i_4_n_0\,
      I1 => \FSM_onehot_rCurrentState_reg_n_0_[1]\,
      I2 => rDataCurrent2,
      I3 => \FSM_onehot_rCurrentState_reg_n_0_[0]\,
      O => \FSM_onehot_rCurrentState[1]_i_1_n_0\
    );
\FSM_onehot_rCurrentState[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFD0D0D0"
    )
        port map (
      I0 => \FSM_onehot_rCurrentState[4]_i_2_n_0\,
      I1 => \FSM_onehot_rCurrentState[2]_i_2_n_0\,
      I2 => \FSM_onehot_rCurrentState[2]_i_3_n_0\,
      I3 => \FSM_onehot_rCurrentState_reg_n_0_[1]\,
      I4 => \FSM_onehot_rCurrentState[2]_i_4_n_0\,
      I5 => wBufferNext,
      O => \FSM_onehot_rCurrentState[2]_i_1_n_0\
    );
\FSM_onehot_rCurrentState[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => rBitCountCurrent(2),
      I1 => rBitCountCurrent(1),
      I2 => rBitCountCurrent(0),
      O => \FSM_onehot_rCurrentState[2]_i_2_n_0\
    );
\FSM_onehot_rCurrentState[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_rCurrentState_reg_n_0_[2]\,
      I1 => \FSM_onehot_rCurrentState[3]_i_2_n_0\,
      O => \FSM_onehot_rCurrentState[2]_i_3_n_0\
    );
\FSM_onehot_rCurrentState[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => \FSM_onehot_rCurrentState[5]_i_2_n_0\,
      I1 => rCntClockCurrent(1),
      I2 => rCntClockCurrent(0),
      I3 => rCntClockCurrent(3),
      I4 => rCntClockCurrent(2),
      I5 => rCntClockCurrent(4),
      O => \FSM_onehot_rCurrentState[2]_i_4_n_0\
    );
\FSM_onehot_rCurrentState[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_rCurrentState_reg_n_0_[2]\,
      I1 => \FSM_onehot_rCurrentState[3]_i_2_n_0\,
      O => \FSM_onehot_rCurrentState[3]_i_1_n_0\
    );
\FSM_onehot_rCurrentState[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => \FSM_onehot_rCurrentState[5]_i_3_n_0\,
      I1 => rCntClockCurrent(9),
      I2 => rCntClockCurrent(8),
      I3 => rCntClockCurrent(10),
      I4 => rCntClockCurrent(5),
      I5 => \FSM_onehot_rCurrentState[5]_i_4_n_0\,
      O => \FSM_onehot_rCurrentState[3]_i_2_n_0\
    );
\FSM_onehot_rCurrentState[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \FSM_onehot_rCurrentState[4]_i_2_n_0\,
      I1 => \FSM_onehot_rCurrentState_reg_n_0_[4]\,
      I2 => \FSM_onehot_rCurrentState[4]_i_3_n_0\,
      I3 => \FSM_onehot_rCurrentState_reg_n_0_[2]\,
      O => \FSM_onehot_rCurrentState[4]_i_1_n_0\
    );
\FSM_onehot_rCurrentState[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004000000"
    )
        port map (
      I0 => rCntClockCurrent(0),
      I1 => rCntClockCurrent(2),
      I2 => rCntClockCurrent(1),
      I3 => rCntClockCurrent(4),
      I4 => rCntClockCurrent(3),
      I5 => \FSM_onehot_rCurrentState[5]_i_2_n_0\,
      O => \FSM_onehot_rCurrentState[4]_i_2_n_0\
    );
\FSM_onehot_rCurrentState[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \FSM_onehot_rCurrentState[4]_i_4_n_0\,
      I1 => rCntClockCurrent(9),
      I2 => rCntClockCurrent(8),
      I3 => rCntClockCurrent(1),
      I4 => rCntClockCurrent(11),
      I5 => \FSM_onehot_rCurrentState[2]_i_2_n_0\,
      O => \FSM_onehot_rCurrentState[4]_i_3_n_0\
    );
\FSM_onehot_rCurrentState[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => rCntClockCurrent(5),
      I1 => rCntClockCurrent(4),
      I2 => rCntClockCurrent(2),
      I3 => rCntClockCurrent(3),
      I4 => \FSM_onehot_rCurrentState[4]_i_5_n_0\,
      O => \FSM_onehot_rCurrentState[4]_i_4_n_0\
    );
\FSM_onehot_rCurrentState[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => rCntClockCurrent(7),
      I1 => rCntClockCurrent(6),
      I2 => rCntClockCurrent(10),
      I3 => rCntClockCurrent(0),
      O => \FSM_onehot_rCurrentState[4]_i_5_n_0\
    );
\FSM_onehot_rCurrentState[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \FSM_onehot_rCurrentState_reg_n_0_[4]\,
      I1 => \FSM_onehot_rCurrentState[5]_i_2_n_0\,
      I2 => \FSM_onehot_rCurrentState[5]_i_3_n_0\,
      O => \FSM_onehot_rCurrentState[5]_i_1_n_0\
    );
\FSM_onehot_rCurrentState[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFFFF"
    )
        port map (
      I0 => \FSM_onehot_rCurrentState[5]_i_4_n_0\,
      I1 => rCntClockCurrent(8),
      I2 => rCntClockCurrent(9),
      I3 => rCntClockCurrent(5),
      I4 => rCntClockCurrent(10),
      O => \FSM_onehot_rCurrentState[5]_i_2_n_0\
    );
\FSM_onehot_rCurrentState[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => rCntClockCurrent(3),
      I1 => rCntClockCurrent(4),
      I2 => rCntClockCurrent(1),
      I3 => rCntClockCurrent(2),
      I4 => rCntClockCurrent(0),
      O => \FSM_onehot_rCurrentState[5]_i_3_n_0\
    );
\FSM_onehot_rCurrentState[5]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => rCntClockCurrent(11),
      I1 => rCntClockCurrent(7),
      I2 => rCntClockCurrent(6),
      O => \FSM_onehot_rCurrentState[5]_i_4_n_0\
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
      Q => \^fsm_onehot_rcurrentstate_reg[5]_0\(0),
      R => iRst
    );
\FSM_onehot_rFSM[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFAAAA"
    )
        port map (
      I0 => Q(0),
      I1 => \^fsm_onehot_rcurrentstate_reg[5]_0\(0),
      I2 => \FSM_onehot_rFSM_reg[1]_0\,
      I3 => \FSM_onehot_rFSM_reg[1]\,
      I4 => Q(1),
      O => D(0)
    );
\FSM_onehot_rFSM[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => Q(1),
      I1 => \^fsm_onehot_rcurrentstate_reg[5]_0\(0),
      I2 => \FSM_onehot_rFSM_reg[1]_0\,
      I3 => \FSM_onehot_rFSM_reg[1]\,
      I4 => Q(2),
      O => D(1)
    );
\rA[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(1),
      I1 => \^fsm_onehot_rcurrentstate_reg[5]_0\(0),
      I2 => \FSM_onehot_rFSM_reg[1]\,
      O => \^e\(0)
    );
\rB[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(2),
      I1 => \^fsm_onehot_rcurrentstate_reg[5]_0\(0),
      I2 => \FSM_onehot_rFSM_reg[1]\,
      O => \^fsm_onehot_rfsm_reg[2]\(0)
    );
\rBitCountCurrent[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8FA0"
    )
        port map (
      I0 => \FSM_onehot_rCurrentState_reg_n_0_[2]\,
      I1 => \FSM_onehot_rCurrentState[4]_i_3_n_0\,
      I2 => wBitCountNext,
      I3 => rBitCountCurrent(0),
      O => \rBitCountCurrent[0]_i_1_n_0\
    );
\rBitCountCurrent[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A0AFFFFA0A00000"
    )
        port map (
      I0 => \FSM_onehot_rCurrentState_reg_n_0_[2]\,
      I1 => \FSM_onehot_rCurrentState[4]_i_2_n_0\,
      I2 => rBitCountCurrent(0),
      I3 => rBitCountCurrent(2),
      I4 => wBitCountNext,
      I5 => rBitCountCurrent(1),
      O => \rBitCountCurrent[1]_i_1_n_0\
    );
\rBitCountCurrent[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA2AFFFFAA800000"
    )
        port map (
      I0 => \FSM_onehot_rCurrentState_reg_n_0_[2]\,
      I1 => rBitCountCurrent(1),
      I2 => rBitCountCurrent(0),
      I3 => \FSM_onehot_rCurrentState[4]_i_3_n_0\,
      I4 => wBitCountNext,
      I5 => rBitCountCurrent(2),
      O => \rBitCountCurrent[2]_i_1_n_0\
    );
\rBitCountCurrent[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAEAA"
    )
        port map (
      I0 => \rBitCountCurrent[2]_i_3_n_0\,
      I1 => \FSM_onehot_rCurrentState[5]_i_3_n_0\,
      I2 => \FSM_onehot_rCurrentState[5]_i_2_n_0\,
      I3 => \FSM_onehot_rCurrentState_reg_n_0_[2]\,
      I4 => \FSM_onehot_rCurrentState[3]_i_2_n_0\,
      O => wBitCountNext
    );
\rBitCountCurrent[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_rCurrentState_reg_n_0_[1]\,
      I1 => \FSM_onehot_rCurrentState_reg_n_0_[0]\,
      I2 => \^fsm_onehot_rcurrentstate_reg[5]_0\(0),
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
      D => \^rbuffercurrent_reg[7]_0\(1),
      Q => \^rbuffercurrent_reg[7]_0\(0),
      R => iRst
    );
\rBufferCurrent_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wBufferNext,
      D => \^rbuffercurrent_reg[7]_0\(2),
      Q => \^rbuffercurrent_reg[7]_0\(1),
      R => iRst
    );
\rBufferCurrent_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wBufferNext,
      D => \^rbuffercurrent_reg[7]_0\(3),
      Q => \^rbuffercurrent_reg[7]_0\(2),
      R => iRst
    );
\rBufferCurrent_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wBufferNext,
      D => \^rbuffercurrent_reg[7]_0\(4),
      Q => \^rbuffercurrent_reg[7]_0\(3),
      R => iRst
    );
\rBufferCurrent_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wBufferNext,
      D => \^rbuffercurrent_reg[7]_0\(5),
      Q => \^rbuffercurrent_reg[7]_0\(4),
      R => iRst
    );
\rBufferCurrent_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wBufferNext,
      D => \^rbuffercurrent_reg[7]_0\(6),
      Q => \^rbuffercurrent_reg[7]_0\(5),
      R => iRst
    );
\rBufferCurrent_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wBufferNext,
      D => \^rbuffercurrent_reg[7]_0\(7),
      Q => \^rbuffercurrent_reg[7]_0\(6),
      R => iRst
    );
\rBufferCurrent_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wBufferNext,
      D => rDataCurrent2,
      Q => \^rbuffercurrent_reg[7]_0\(7),
      R => iRst
    );
\rCntClockCurrent[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555454555554544"
    )
        port map (
      I0 => rCntClockCurrent(0),
      I1 => \rCntClockCurrent[11]_i_2_n_0\,
      I2 => \FSM_onehot_rCurrentState[4]_i_2_n_0\,
      I3 => \FSM_onehot_rCurrentState_reg_n_0_[2]\,
      I4 => wBufferNext,
      I5 => \FSM_onehot_rCurrentState_reg_n_0_[4]\,
      O => \rCntClockCurrent[0]_i_1_n_0\
    );
\rCntClockCurrent[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF20000"
    )
        port map (
      I0 => \rCntClockCurrent[10]_i_2_n_0\,
      I1 => \FSM_onehot_rCurrentState[3]_i_2_n_0\,
      I2 => \rCntClockCurrent[11]_i_2_n_0\,
      I3 => \rCntClockCurrent[10]_i_3_n_0\,
      I4 => data0(10),
      I5 => \FSM_onehot_rCurrentState[5]_i_1_n_0\,
      O => \rCntClockCurrent[10]_i_1_n_0\
    );
\rCntClockCurrent[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \FSM_onehot_rCurrentState_reg_n_0_[2]\,
      I1 => \FSM_onehot_rCurrentState[5]_i_2_n_0\,
      I2 => \FSM_onehot_rCurrentState[5]_i_3_n_0\,
      O => \rCntClockCurrent[10]_i_2_n_0\
    );
\rCntClockCurrent[10]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => wBufferNext,
      I1 => \FSM_onehot_rCurrentState_reg_n_0_[4]\,
      O => \rCntClockCurrent[10]_i_3_n_0\
    );
\rCntClockCurrent[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888A88AAAAAAAA"
    )
        port map (
      I0 => data0(11),
      I1 => \rCntClockCurrent[11]_i_2_n_0\,
      I2 => \FSM_onehot_rCurrentState[3]_i_2_n_0\,
      I3 => \FSM_onehot_rCurrentState_reg_n_0_[2]\,
      I4 => \FSM_onehot_rCurrentState[4]_i_2_n_0\,
      I5 => \rCntClockCurrent[11]_i_3_n_0\,
      O => \rCntClockCurrent[11]_i_1_n_0\
    );
\rCntClockCurrent[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \FSM_onehot_rCurrentState_reg_n_0_[1]\,
      I1 => \rCntClockCurrent[11]_i_4_n_0\,
      I2 => \FSM_onehot_rCurrentState[5]_i_2_n_0\,
      O => \rCntClockCurrent[11]_i_2_n_0\
    );
\rCntClockCurrent[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0455"
    )
        port map (
      I0 => wBufferNext,
      I1 => \FSM_onehot_rCurrentState[5]_i_3_n_0\,
      I2 => \FSM_onehot_rCurrentState[5]_i_2_n_0\,
      I3 => \FSM_onehot_rCurrentState_reg_n_0_[4]\,
      O => \rCntClockCurrent[11]_i_3_n_0\
    );
\rCntClockCurrent[11]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDFFFFF"
    )
        port map (
      I0 => rCntClockCurrent(4),
      I1 => rCntClockCurrent(2),
      I2 => rCntClockCurrent(3),
      I3 => rCntClockCurrent(0),
      I4 => rCntClockCurrent(1),
      O => \rCntClockCurrent[11]_i_4_n_0\
    );
\rCntClockCurrent[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888A88AAAAAAAA"
    )
        port map (
      I0 => data0(1),
      I1 => \rCntClockCurrent[11]_i_2_n_0\,
      I2 => \FSM_onehot_rCurrentState[3]_i_2_n_0\,
      I3 => \FSM_onehot_rCurrentState_reg_n_0_[2]\,
      I4 => \FSM_onehot_rCurrentState[4]_i_2_n_0\,
      I5 => \rCntClockCurrent[11]_i_3_n_0\,
      O => \rCntClockCurrent[1]_i_1_n_0\
    );
\rCntClockCurrent[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFAFEEAAEEAA"
    )
        port map (
      I0 => \FSM_onehot_rCurrentState[3]_i_1_n_0\,
      I1 => \FSM_onehot_rCurrentState[4]_i_2_n_0\,
      I2 => \rCntClockCurrent[9]_i_2_n_0\,
      I3 => \FSM_onehot_rCurrentState_reg_n_0_[4]\,
      I4 => wBufferNext,
      I5 => data0(2),
      O => \rCntClockCurrent[2]_i_1_n_0\
    );
\rCntClockCurrent[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFAFEEAAEEAA"
    )
        port map (
      I0 => \FSM_onehot_rCurrentState[3]_i_1_n_0\,
      I1 => \FSM_onehot_rCurrentState[4]_i_2_n_0\,
      I2 => \rCntClockCurrent[9]_i_2_n_0\,
      I3 => \FSM_onehot_rCurrentState_reg_n_0_[4]\,
      I4 => wBufferNext,
      I5 => data0(3),
      O => \rCntClockCurrent[3]_i_1_n_0\
    );
\rCntClockCurrent[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFD0FFF0FFD0"
    )
        port map (
      I0 => \rCntClockCurrent[9]_i_2_n_0\,
      I1 => wBufferNext,
      I2 => data0(4),
      I3 => \FSM_onehot_rCurrentState[3]_i_1_n_0\,
      I4 => \FSM_onehot_rCurrentState_reg_n_0_[4]\,
      I5 => \FSM_onehot_rCurrentState[4]_i_2_n_0\,
      O => \rCntClockCurrent[4]_i_1_n_0\
    );
\rCntClockCurrent[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFAEAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_rCurrentState[5]_i_1_n_0\,
      I1 => \rCntClockCurrent[10]_i_2_n_0\,
      I2 => \FSM_onehot_rCurrentState[3]_i_2_n_0\,
      I3 => \rCntClockCurrent[11]_i_2_n_0\,
      I4 => \rCntClockCurrent[10]_i_3_n_0\,
      I5 => data0(5),
      O => \rCntClockCurrent[5]_i_1_n_0\
    );
\rCntClockCurrent[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888A88AAAAAAAA"
    )
        port map (
      I0 => data0(6),
      I1 => \rCntClockCurrent[11]_i_2_n_0\,
      I2 => \FSM_onehot_rCurrentState[3]_i_2_n_0\,
      I3 => \FSM_onehot_rCurrentState_reg_n_0_[2]\,
      I4 => \FSM_onehot_rCurrentState[4]_i_2_n_0\,
      I5 => \rCntClockCurrent[11]_i_3_n_0\,
      O => \rCntClockCurrent[6]_i_1_n_0\
    );
\rCntClockCurrent[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888A88AAAAAAAA"
    )
        port map (
      I0 => data0(7),
      I1 => \rCntClockCurrent[11]_i_2_n_0\,
      I2 => \FSM_onehot_rCurrentState[3]_i_2_n_0\,
      I3 => \FSM_onehot_rCurrentState_reg_n_0_[2]\,
      I4 => \FSM_onehot_rCurrentState[4]_i_2_n_0\,
      I5 => \rCntClockCurrent[11]_i_3_n_0\,
      O => \rCntClockCurrent[7]_i_1_n_0\
    );
\rCntClockCurrent[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888A88AAAAAAAA"
    )
        port map (
      I0 => data0(8),
      I1 => \rCntClockCurrent[11]_i_2_n_0\,
      I2 => \FSM_onehot_rCurrentState[3]_i_2_n_0\,
      I3 => \FSM_onehot_rCurrentState_reg_n_0_[2]\,
      I4 => \FSM_onehot_rCurrentState[4]_i_2_n_0\,
      I5 => \rCntClockCurrent[11]_i_3_n_0\,
      O => \rCntClockCurrent[8]_i_1_n_0\
    );
\rCntClockCurrent[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAEFFFFAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_rCurrentState[3]_i_1_n_0\,
      I1 => \FSM_onehot_rCurrentState_reg_n_0_[4]\,
      I2 => \FSM_onehot_rCurrentState[4]_i_2_n_0\,
      I3 => wBufferNext,
      I4 => \rCntClockCurrent[9]_i_2_n_0\,
      I5 => data0(9),
      O => \rCntClockCurrent[9]_i_1_n_0\
    );
\rCntClockCurrent[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00703377"
    )
        port map (
      I0 => \rCntClockCurrent[11]_i_4_n_0\,
      I1 => \FSM_onehot_rCurrentState_reg_n_0_[1]\,
      I2 => \FSM_onehot_rCurrentState[5]_i_3_n_0\,
      I3 => \FSM_onehot_rCurrentState[5]_i_2_n_0\,
      I4 => \FSM_onehot_rCurrentState_reg_n_0_[2]\,
      O => \rCntClockCurrent[9]_i_2_n_0\
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
\rCnt[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10101000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg[1]\,
      I1 => \FSM_onehot_rFSM_reg[1]_0\,
      I2 => \^fsm_onehot_rcurrentstate_reg[5]_0\(0),
      I3 => Q(1),
      I4 => Q(2),
      O => \rCnt_reg[1]\
    );
\rCnt[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFA8"
    )
        port map (
      I0 => Q(3),
      I1 => \rCnt_reg[0]\,
      I2 => \rCnt_reg[0]_0\,
      I3 => Q(4),
      I4 => \^e\(0),
      I5 => \^fsm_onehot_rfsm_reg[2]\(0),
      O => rCnt
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_tx is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \FSM_onehot_rFSM_Current_reg[4]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_rFSM_reg[4]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_rFSM_reg[4]_0\ : out STD_LOGIC;
    \FSM_onehot_rFSM_Current_reg[0]_0\ : out STD_LOGIC;
    oTx : out STD_LOGIC;
    \FSM_onehot_rFSM_reg[4]_1\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \rTxByte_reg[0]\ : in STD_LOGIC;
    \rTxByte_reg[0]_0\ : in STD_LOGIC;
    rTxStart_reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rTxStart_reg_0 : in STD_LOGIC;
    \rTxData_Current_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    iRst : in STD_LOGIC;
    iClk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_tx;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_tx is
  signal \FSM_onehot_rFSM_Current[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[4]_i_3_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_rfsm_current_reg[0]_0\ : STD_LOGIC;
  signal \^fsm_onehot_rfsm_current_reg[4]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \FSM_onehot_rFSM_Current_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[3]\ : STD_LOGIC;
  signal in7 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal rBit_Current : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \rBit_Current[0]_i_1_n_0\ : STD_LOGIC;
  signal \rBit_Current[1]_i_1_n_0\ : STD_LOGIC;
  signal \rBit_Current[2]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[10]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[10]_i_2_n_0\ : STD_LOGIC;
  signal \rCnt_Current[10]_i_3_n_0\ : STD_LOGIC;
  signal \rCnt_Current[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[2]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[3]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[4]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[5]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[5]_i_2_n_0\ : STD_LOGIC;
  signal \rCnt_Current[6]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[7]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[8]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[8]_i_2_n_0\ : STD_LOGIC;
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
  signal \rTxData_Current[0]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[1]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[2]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[3]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[4]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[5]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[6]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[7]_i_2_n_0\ : STD_LOGIC;
  signal \rTxData_Current[7]_i_3_n_0\ : STD_LOGIC;
  signal \rTxData_Current_reg_n_0_[0]\ : STD_LOGIC;
  signal wBit_Next : STD_LOGIC;
  signal wTxData_Next : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM[6]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[1]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[4]_i_1\ : label is "soft_lutpair42";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[0]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[1]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[2]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[3]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[4]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute SOFT_HLUTNM of oTx_INST_0 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \rBit_Current[0]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \rBit_Current[1]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \rBit_Current[2]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \rCnt[0]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \rCnt_Current[0]_i_1__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \rCnt_Current[10]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \rCnt_Current[10]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \rCnt_Current[10]_i_3\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \rCnt_Current[1]_i_1__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \rCnt_Current[2]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \rCnt_Current[3]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \rCnt_Current[6]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \rCnt_Current[7]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \rCnt_Current[8]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \rCnt_Current[9]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \rResult[23]_i_3\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \rTxByte[0]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \rTxData_Current[7]_i_3\ : label is "soft_lutpair43";
begin
  \FSM_onehot_rFSM_Current_reg[0]_0\ <= \^fsm_onehot_rfsm_current_reg[0]_0\;
  \FSM_onehot_rFSM_Current_reg[4]_0\(1 downto 0) <= \^fsm_onehot_rfsm_current_reg[4]_0\(1 downto 0);
\FSM_onehot_rFSM[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F00FFFF3F002A00"
    )
        port map (
      I0 => \^fsm_onehot_rfsm_current_reg[4]_0\(0),
      I1 => \rTxByte_reg[0]_0\,
      I2 => \rTxByte_reg[0]\,
      I3 => rTxStart_reg(0),
      I4 => \^fsm_onehot_rfsm_current_reg[4]_0\(1),
      I5 => rTxStart_reg(1),
      O => \FSM_onehot_rFSM_reg[4]\(0)
    );
\FSM_onehot_rFSM[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"808080AA"
    )
        port map (
      I0 => rTxStart_reg(0),
      I1 => \rTxByte_reg[0]\,
      I2 => \rTxByte_reg[0]_0\,
      I3 => \^fsm_onehot_rfsm_current_reg[4]_0\(1),
      I4 => \^fsm_onehot_rfsm_current_reg[4]_0\(0),
      O => \FSM_onehot_rFSM_reg[4]\(1)
    );
\FSM_onehot_rFSM_Current[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^fsm_onehot_rfsm_current_reg[4]_0\(1),
      I1 => rTxStart_reg_0,
      I2 => \^fsm_onehot_rfsm_current_reg[4]_0\(0),
      O => \FSM_onehot_rFSM_Current[0]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => rTxStart_reg_0,
      I1 => \^fsm_onehot_rfsm_current_reg[4]_0\(0),
      I2 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \FSM_onehot_rFSM_Current[1]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF007F00FF00"
    )
        port map (
      I0 => rBit_Current(2),
      I1 => rBit_Current(0),
      I2 => rBit_Current(1),
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I4 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I5 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \FSM_onehot_rFSM_Current[2]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0000000AAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I2 => rBit_Current(2),
      I3 => rBit_Current(0),
      I4 => rBit_Current(1),
      I5 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      O => \FSM_onehot_rFSM_Current[3]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I1 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      O => \FSM_onehot_rFSM_Current[4]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA8AAAAAAAA"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[10]\,
      I1 => \rCnt_Current_reg_n_0_[7]\,
      I2 => \rCnt_Current_reg_n_0_[8]\,
      I3 => \rCnt_Current_reg_n_0_[6]\,
      I4 => \rCnt_Current_reg_n_0_[9]\,
      I5 => \FSM_onehot_rFSM_Current[4]_i_3_n_0\,
      O => \FSM_onehot_rFSM_Current[4]_i_2_n_0\
    );
\FSM_onehot_rFSM_Current[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[3]\,
      I1 => \rCnt_Current_reg_n_0_[5]\,
      I2 => \rCnt_Current_reg_n_0_[2]\,
      I3 => \rCnt_Current_reg_n_0_[4]\,
      O => \FSM_onehot_rFSM_Current[4]_i_3_n_0\
    );
\FSM_onehot_rFSM_Current_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_Current[0]_i_1_n_0\,
      Q => \^fsm_onehot_rfsm_current_reg[4]_0\(0),
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
      Q => \^fsm_onehot_rfsm_current_reg[4]_0\(1),
      R => iRst
    );
oTx_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => \rTxData_Current_reg_n_0_[0]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => oTx
    );
\rBit_Current[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"38"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => wBit_Next,
      I2 => rBit_Current(0),
      O => \rBit_Current[0]_i_1_n_0\
    );
\rBit_Current[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F80"
    )
        port map (
      I0 => rBit_Current(0),
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I2 => wBit_Next,
      I3 => rBit_Current(1),
      O => \rBit_Current[1]_i_1_n_0\
    );
\rBit_Current[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFF8000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => rBit_Current(0),
      I2 => rBit_Current(1),
      I3 => wBit_Next,
      I4 => rBit_Current(2),
      O => \rBit_Current[2]_i_1_n_0\
    );
\rBit_Current[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF8"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I2 => \^fsm_onehot_rfsm_current_reg[4]_0\(1),
      I3 => \^fsm_onehot_rfsm_current_reg[4]_0\(0),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I5 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      O => wBit_Next
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
\rCnt[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A2A00"
    )
        port map (
      I0 => rTxStart_reg(0),
      I1 => \rTxByte_reg[0]\,
      I2 => \rTxByte_reg[0]_0\,
      I3 => \^fsm_onehot_rfsm_current_reg[4]_0\(1),
      I4 => \^fsm_onehot_rfsm_current_reg[4]_0\(0),
      O => \FSM_onehot_rFSM_reg[4]_0\
    );
\rCnt_Current[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[0]\,
      O => \rCnt_Current[0]_i_1__0_n_0\
    );
\rCnt_Current[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA80"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current[10]_i_3_n_0\,
      I2 => \rCnt_Current_reg_n_0_[9]\,
      I3 => \rCnt_Current_reg_n_0_[10]\,
      O => \rCnt_Current[10]_i_1_n_0\
    );
\rCnt_Current[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5554"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \rCnt_Current[10]_i_2_n_0\
    );
\rCnt_Current[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[7]\,
      I1 => \rCnt_Current_reg_n_0_[6]\,
      I2 => \rCnt_Current[8]_i_2_n_0\,
      I3 => \rCnt_Current_reg_n_0_[8]\,
      O => \rCnt_Current[10]_i_3_n_0\
    );
\rCnt_Current[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[1]\,
      I2 => \rCnt_Current_reg_n_0_[0]\,
      O => \rCnt_Current[1]_i_1__0_n_0\
    );
\rCnt_Current[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[0]\,
      I2 => \rCnt_Current_reg_n_0_[1]\,
      I3 => \rCnt_Current_reg_n_0_[2]\,
      O => \rCnt_Current[2]_i_1_n_0\
    );
\rCnt_Current[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[1]\,
      I2 => \rCnt_Current_reg_n_0_[0]\,
      I3 => \rCnt_Current_reg_n_0_[2]\,
      I4 => \rCnt_Current_reg_n_0_[3]\,
      O => \rCnt_Current[3]_i_1_n_0\
    );
\rCnt_Current[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[2]\,
      I2 => \rCnt_Current_reg_n_0_[0]\,
      I3 => \rCnt_Current_reg_n_0_[1]\,
      I4 => \rCnt_Current_reg_n_0_[3]\,
      I5 => \rCnt_Current_reg_n_0_[4]\,
      O => \rCnt_Current[4]_i_1_n_0\
    );
\rCnt_Current[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[4]\,
      I2 => \rCnt_Current_reg_n_0_[3]\,
      I3 => \rCnt_Current[5]_i_2_n_0\,
      I4 => \rCnt_Current_reg_n_0_[2]\,
      I5 => \rCnt_Current_reg_n_0_[5]\,
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
\rCnt_Current[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current[8]_i_2_n_0\,
      I2 => \rCnt_Current_reg_n_0_[6]\,
      O => \rCnt_Current[6]_i_1_n_0\
    );
\rCnt_Current[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A208"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[6]\,
      I2 => \rCnt_Current[8]_i_2_n_0\,
      I3 => \rCnt_Current_reg_n_0_[7]\,
      O => \rCnt_Current[7]_i_1_n_0\
    );
\rCnt_Current[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82888888"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[8]\,
      I2 => \rCnt_Current[8]_i_2_n_0\,
      I3 => \rCnt_Current_reg_n_0_[6]\,
      I4 => \rCnt_Current_reg_n_0_[7]\,
      O => \rCnt_Current[8]_i_1_n_0\
    );
\rCnt_Current[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[4]\,
      I1 => \rCnt_Current_reg_n_0_[2]\,
      I2 => \rCnt_Current_reg_n_0_[5]\,
      I3 => \rCnt_Current_reg_n_0_[3]\,
      I4 => \rCnt_Current_reg_n_0_[1]\,
      I5 => \rCnt_Current_reg_n_0_[0]\,
      O => \rCnt_Current[8]_i_2_n_0\
    );
\rCnt_Current[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[9]\,
      I2 => \rCnt_Current[10]_i_3_n_0\,
      O => \rCnt_Current[9]_i_1_n_0\
    );
\rCnt_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[0]_i_1__0_n_0\,
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
      D => \rCnt_Current[1]_i_1__0_n_0\,
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
\rResult[23]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0EEE"
    )
        port map (
      I0 => \^fsm_onehot_rfsm_current_reg[4]_0\(0),
      I1 => \^fsm_onehot_rfsm_current_reg[4]_0\(1),
      I2 => \rTxByte_reg[0]_0\,
      I3 => \rTxByte_reg[0]\,
      O => \^fsm_onehot_rfsm_current_reg[0]_0\
    );
\rTxByte[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A2A00"
    )
        port map (
      I0 => Q(0),
      I1 => \rTxByte_reg[0]\,
      I2 => \rTxByte_reg[0]_0\,
      I3 => \^fsm_onehot_rfsm_current_reg[4]_0\(1),
      I4 => \^fsm_onehot_rfsm_current_reg[4]_0\(0),
      O => D(0)
    );
\rTxByte[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A2A00"
    )
        port map (
      I0 => Q(1),
      I1 => \rTxByte_reg[0]\,
      I2 => \rTxByte_reg[0]_0\,
      I3 => \^fsm_onehot_rfsm_current_reg[4]_0\(1),
      I4 => \^fsm_onehot_rfsm_current_reg[4]_0\(0),
      O => D(1)
    );
\rTxByte[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A2A00"
    )
        port map (
      I0 => Q(2),
      I1 => \rTxByte_reg[0]\,
      I2 => \rTxByte_reg[0]_0\,
      I3 => \^fsm_onehot_rfsm_current_reg[4]_0\(1),
      I4 => \^fsm_onehot_rfsm_current_reg[4]_0\(0),
      O => D(2)
    );
\rTxByte[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A2A00"
    )
        port map (
      I0 => Q(3),
      I1 => \rTxByte_reg[0]\,
      I2 => \rTxByte_reg[0]_0\,
      I3 => \^fsm_onehot_rfsm_current_reg[4]_0\(1),
      I4 => \^fsm_onehot_rfsm_current_reg[4]_0\(0),
      O => D(3)
    );
\rTxByte[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A2A00"
    )
        port map (
      I0 => Q(4),
      I1 => \rTxByte_reg[0]\,
      I2 => \rTxByte_reg[0]_0\,
      I3 => \^fsm_onehot_rfsm_current_reg[4]_0\(1),
      I4 => \^fsm_onehot_rfsm_current_reg[4]_0\(0),
      O => D(4)
    );
\rTxByte[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A2A00"
    )
        port map (
      I0 => Q(5),
      I1 => \rTxByte_reg[0]\,
      I2 => \rTxByte_reg[0]_0\,
      I3 => \^fsm_onehot_rfsm_current_reg[4]_0\(1),
      I4 => \^fsm_onehot_rfsm_current_reg[4]_0\(0),
      O => D(5)
    );
\rTxByte[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A2A00"
    )
        port map (
      I0 => Q(6),
      I1 => \rTxByte_reg[0]\,
      I2 => \rTxByte_reg[0]_0\,
      I3 => \^fsm_onehot_rfsm_current_reg[4]_0\(1),
      I4 => \^fsm_onehot_rfsm_current_reg[4]_0\(0),
      O => D(6)
    );
\rTxByte[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A2A00"
    )
        port map (
      I0 => Q(7),
      I1 => \rTxByte_reg[0]\,
      I2 => \rTxByte_reg[0]_0\,
      I3 => \^fsm_onehot_rfsm_current_reg[4]_0\(1),
      I4 => \^fsm_onehot_rfsm_current_reg[4]_0\(0),
      O => D(7)
    );
\rTxData_Current[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \rTxData_Current_reg[7]_0\(0),
      I1 => \^fsm_onehot_rfsm_current_reg[4]_0\(0),
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => in7(0),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rTxData_Current[0]_i_1_n_0\
    );
\rTxData_Current[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \rTxData_Current_reg[7]_0\(1),
      I1 => \^fsm_onehot_rfsm_current_reg[4]_0\(0),
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => in7(1),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rTxData_Current[1]_i_1_n_0\
    );
\rTxData_Current[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \rTxData_Current_reg[7]_0\(2),
      I1 => \^fsm_onehot_rfsm_current_reg[4]_0\(0),
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => in7(2),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rTxData_Current[2]_i_1_n_0\
    );
\rTxData_Current[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \rTxData_Current_reg[7]_0\(3),
      I1 => \^fsm_onehot_rfsm_current_reg[4]_0\(0),
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => in7(3),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rTxData_Current[3]_i_1_n_0\
    );
\rTxData_Current[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \rTxData_Current_reg[7]_0\(4),
      I1 => \^fsm_onehot_rfsm_current_reg[4]_0\(0),
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => in7(4),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rTxData_Current[4]_i_1_n_0\
    );
\rTxData_Current[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \rTxData_Current_reg[7]_0\(5),
      I1 => \^fsm_onehot_rfsm_current_reg[4]_0\(0),
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => in7(5),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rTxData_Current[5]_i_1_n_0\
    );
\rTxData_Current[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \rTxData_Current_reg[7]_0\(6),
      I1 => \^fsm_onehot_rfsm_current_reg[4]_0\(0),
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => in7(6),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rTxData_Current[6]_i_1_n_0\
    );
\rTxData_Current[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFFFFFF88888888"
    )
        port map (
      I0 => rTxStart_reg_0,
      I1 => \^fsm_onehot_rfsm_current_reg[4]_0\(0),
      I2 => rBit_Current(1),
      I3 => rBit_Current(0),
      I4 => rBit_Current(2),
      I5 => \rTxData_Current[7]_i_3_n_0\,
      O => wTxData_Next
    );
\rTxData_Current[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_rfsm_current_reg[4]_0\(0),
      I1 => \rTxData_Current_reg[7]_0\(7),
      O => \rTxData_Current[7]_i_2_n_0\
    );
\rTxData_Current[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \rTxData_Current[7]_i_3_n_0\
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
rTxStart_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BB8888"
    )
        port map (
      I0 => \^fsm_onehot_rfsm_current_reg[0]_0\,
      I1 => rTxStart_reg(0),
      I2 => \^fsm_onehot_rfsm_current_reg[4]_0\(1),
      I3 => rTxStart_reg(1),
      I4 => rTxStart_reg_0,
      O => \FSM_onehot_rFSM_reg[4]_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_top is
  port (
    oTx : out STD_LOGIC;
    iRst : in STD_LOGIC;
    iClk : in STD_LOGIC;
    iRx : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_top is
  signal \FSM_onehot_rFSM[6]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_reg_n_0_[6]\ : STD_LOGIC;
  signal MP_ADDER_INST_n_0 : STD_LOGIC;
  signal MP_ADDER_INST_n_1 : STD_LOGIC;
  signal MP_ADDER_INST_n_10 : STD_LOGIC;
  signal MP_ADDER_INST_n_11 : STD_LOGIC;
  signal MP_ADDER_INST_n_12 : STD_LOGIC;
  signal MP_ADDER_INST_n_13 : STD_LOGIC;
  signal MP_ADDER_INST_n_14 : STD_LOGIC;
  signal MP_ADDER_INST_n_15 : STD_LOGIC;
  signal MP_ADDER_INST_n_16 : STD_LOGIC;
  signal MP_ADDER_INST_n_17 : STD_LOGIC;
  signal MP_ADDER_INST_n_18 : STD_LOGIC;
  signal MP_ADDER_INST_n_19 : STD_LOGIC;
  signal MP_ADDER_INST_n_2 : STD_LOGIC;
  signal MP_ADDER_INST_n_20 : STD_LOGIC;
  signal MP_ADDER_INST_n_21 : STD_LOGIC;
  signal MP_ADDER_INST_n_22 : STD_LOGIC;
  signal MP_ADDER_INST_n_3 : STD_LOGIC;
  signal MP_ADDER_INST_n_5 : STD_LOGIC;
  signal MP_ADDER_INST_n_6 : STD_LOGIC;
  signal MP_ADDER_INST_n_7 : STD_LOGIC;
  signal MP_ADDER_INST_n_8 : STD_LOGIC;
  signal MP_ADDER_INST_n_9 : STD_LOGIC;
  signal UART_RX_INST_n_3 : STD_LOGIC;
  signal UART_RX_INST_n_5 : STD_LOGIC;
  signal UART_RX_INST_n_6 : STD_LOGIC;
  signal UART_TX_INST_n_0 : STD_LOGIC;
  signal UART_TX_INST_n_1 : STD_LOGIC;
  signal UART_TX_INST_n_10 : STD_LOGIC;
  signal UART_TX_INST_n_11 : STD_LOGIC;
  signal UART_TX_INST_n_12 : STD_LOGIC;
  signal UART_TX_INST_n_13 : STD_LOGIC;
  signal UART_TX_INST_n_15 : STD_LOGIC;
  signal UART_TX_INST_n_2 : STD_LOGIC;
  signal UART_TX_INST_n_3 : STD_LOGIC;
  signal UART_TX_INST_n_4 : STD_LOGIC;
  signal UART_TX_INST_n_5 : STD_LOGIC;
  signal UART_TX_INST_n_6 : STD_LOGIC;
  signal UART_TX_INST_n_7 : STD_LOGIC;
  signal UART_TX_INST_n_9 : STD_LOGIC;
  signal in9 : STD_LOGIC_VECTOR ( 23 downto 8 );
  signal rA : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rA_1 : STD_LOGIC;
  signal rB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rB_2 : STD_LOGIC;
  signal rBufferCurrent : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rCnt : STD_LOGIC;
  signal \rCnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt[1]_i_3_n_0\ : STD_LOGIC;
  signal \rCnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \rCnt_reg_n_0_[1]\ : STD_LOGIC;
  signal rResult : STD_LOGIC;
  signal \rResult[17]_i_1_n_0\ : STD_LOGIC;
  signal \rResult[18]_i_1_n_0\ : STD_LOGIC;
  signal \rResult[19]_i_1_n_0\ : STD_LOGIC;
  signal \rResult[20]_i_1_n_0\ : STD_LOGIC;
  signal \rResult[21]_i_1_n_0\ : STD_LOGIC;
  signal \rResult[22]_i_1_n_0\ : STD_LOGIC;
  signal \rResult[23]_i_2_n_0\ : STD_LOGIC;
  signal \rResult_reg_n_0_[16]\ : STD_LOGIC;
  signal \rResult_reg_n_0_[17]\ : STD_LOGIC;
  signal \rResult_reg_n_0_[18]\ : STD_LOGIC;
  signal \rResult_reg_n_0_[19]\ : STD_LOGIC;
  signal \rResult_reg_n_0_[20]\ : STD_LOGIC;
  signal \rResult_reg_n_0_[21]\ : STD_LOGIC;
  signal \rResult_reg_n_0_[22]\ : STD_LOGIC;
  signal \rResult_reg_n_0_[23]\ : STD_LOGIC;
  signal rStartAdder : STD_LOGIC;
  signal rStartAdder_reg_n_0 : STD_LOGIC;
  signal rTxByte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rTxByte_0 : STD_LOGIC;
  signal rTxStart_reg_n_0 : STD_LOGIC;
  signal wRxDone : STD_LOGIC;
  signal wTxDone : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_reg[0]\ : label is "s_IDLE:0000001,s_OP_A_RX:0000010,s_OP_B_RX:0000100,s_ADD_OPS:0001000,s_DONE:1000000,s_WAIT_TX:0100000,s_TX:0010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_reg[1]\ : label is "s_IDLE:0000001,s_OP_A_RX:0000010,s_OP_B_RX:0000100,s_ADD_OPS:0001000,s_DONE:1000000,s_WAIT_TX:0100000,s_TX:0010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_reg[2]\ : label is "s_IDLE:0000001,s_OP_A_RX:0000010,s_OP_B_RX:0000100,s_ADD_OPS:0001000,s_DONE:1000000,s_WAIT_TX:0100000,s_TX:0010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_reg[3]\ : label is "s_IDLE:0000001,s_OP_A_RX:0000010,s_OP_B_RX:0000100,s_ADD_OPS:0001000,s_DONE:1000000,s_WAIT_TX:0100000,s_TX:0010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_reg[4]\ : label is "s_IDLE:0000001,s_OP_A_RX:0000010,s_OP_B_RX:0000100,s_ADD_OPS:0001000,s_DONE:1000000,s_WAIT_TX:0100000,s_TX:0010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_reg[5]\ : label is "s_IDLE:0000001,s_OP_A_RX:0000010,s_OP_B_RX:0000100,s_ADD_OPS:0001000,s_DONE:1000000,s_WAIT_TX:0100000,s_TX:0010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_reg[6]\ : label is "s_IDLE:0000001,s_OP_A_RX:0000010,s_OP_B_RX:0000100,s_ADD_OPS:0001000,s_DONE:1000000,s_WAIT_TX:0100000,s_TX:0010000";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rResult[18]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \rResult[19]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \rResult[20]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \rResult[21]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \rResult[22]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \rResult[23]_i_2\ : label is "soft_lutpair46";
begin
\FSM_onehot_rFSM[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_reg_n_0_[2]\,
      I2 => \FSM_onehot_rFSM_reg_n_0_[5]\,
      I3 => \FSM_onehot_rFSM_reg_n_0_[6]\,
      I4 => rTxByte_0,
      I5 => \FSM_onehot_rFSM_reg_n_0_[0]\,
      O => \FSM_onehot_rFSM[6]_i_4_n_0\
    );
\FSM_onehot_rFSM_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => iClk,
      CE => MP_ADDER_INST_n_0,
      D => \FSM_onehot_rFSM_reg_n_0_[6]\,
      Q => \FSM_onehot_rFSM_reg_n_0_[0]\,
      S => iRst
    );
\FSM_onehot_rFSM_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => MP_ADDER_INST_n_0,
      D => UART_RX_INST_n_6,
      Q => \FSM_onehot_rFSM_reg_n_0_[1]\,
      R => iRst
    );
\FSM_onehot_rFSM_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => MP_ADDER_INST_n_0,
      D => UART_RX_INST_n_5,
      Q => \FSM_onehot_rFSM_reg_n_0_[2]\,
      R => iRst
    );
\FSM_onehot_rFSM_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => MP_ADDER_INST_n_0,
      D => MP_ADDER_INST_n_3,
      Q => rStartAdder,
      R => iRst
    );
\FSM_onehot_rFSM_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => MP_ADDER_INST_n_0,
      D => MP_ADDER_INST_n_2,
      Q => rTxByte_0,
      R => iRst
    );
\FSM_onehot_rFSM_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => MP_ADDER_INST_n_0,
      D => UART_TX_INST_n_11,
      Q => \FSM_onehot_rFSM_reg_n_0_[5]\,
      R => iRst
    );
\FSM_onehot_rFSM_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => MP_ADDER_INST_n_0,
      D => UART_TX_INST_n_10,
      Q => \FSM_onehot_rFSM_reg_n_0_[6]\,
      R => iRst
    );
MP_ADDER_INST: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mp_adder
     port map (
      D(1) => MP_ADDER_INST_n_2,
      D(0) => MP_ADDER_INST_n_3,
      E(0) => MP_ADDER_INST_n_0,
      \FSM_onehot_rFSM_reg[0]\ => \FSM_onehot_rFSM[6]_i_4_n_0\,
      \FSM_onehot_rFSM_reg[3]\(0) => wRxDone,
      \FSM_onehot_rFSM_reg[4]\(0) => rResult,
      \FSM_onehot_rFSM_reg[4]_0\(0) => wTxDone,
      \FSM_sequential_rFSM_current_reg[2]_0\ => MP_ADDER_INST_n_1,
      Q(3) => \FSM_onehot_rFSM_reg_n_0_[5]\,
      Q(2) => rTxByte_0,
      Q(1) => rStartAdder,
      Q(0) => \FSM_onehot_rFSM_reg_n_0_[2]\,
      iClk => iClk,
      iRst => iRst,
      \rCnt_reg[0]\ => MP_ADDER_INST_n_22,
      \rResult_reg[0]\ => UART_TX_INST_n_13,
      \rResult_reg[16]\(8 downto 0) => in9(16 downto 8),
      \rResult_reg[8]\(16) => MP_ADDER_INST_n_5,
      \rResult_reg[8]\(15) => MP_ADDER_INST_n_6,
      \rResult_reg[8]\(14) => MP_ADDER_INST_n_7,
      \rResult_reg[8]\(13) => MP_ADDER_INST_n_8,
      \rResult_reg[8]\(12) => MP_ADDER_INST_n_9,
      \rResult_reg[8]\(11) => MP_ADDER_INST_n_10,
      \rResult_reg[8]\(10) => MP_ADDER_INST_n_11,
      \rResult_reg[8]\(9) => MP_ADDER_INST_n_12,
      \rResult_reg[8]\(8) => MP_ADDER_INST_n_13,
      \rResult_reg[8]\(7) => MP_ADDER_INST_n_14,
      \rResult_reg[8]\(6) => MP_ADDER_INST_n_15,
      \rResult_reg[8]\(5) => MP_ADDER_INST_n_16,
      \rResult_reg[8]\(4) => MP_ADDER_INST_n_17,
      \rResult_reg[8]\(3) => MP_ADDER_INST_n_18,
      \rResult_reg[8]\(2) => MP_ADDER_INST_n_19,
      \rResult_reg[8]\(1) => MP_ADDER_INST_n_20,
      \rResult_reg[8]\(0) => MP_ADDER_INST_n_21,
      rStartAdder_reg => \rCnt_reg_n_0_[0]\,
      rStartAdder_reg_0 => \rCnt_reg_n_0_[1]\,
      rStartAdder_reg_1 => rStartAdder_reg_n_0,
      \regA_Q_reg[15]_0\(15 downto 0) => rA(15 downto 0),
      \regB_Q_reg[15]_0\(15 downto 0) => rB(15 downto 0)
    );
UART_RX_INST: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_receiver
     port map (
      D(1) => UART_RX_INST_n_5,
      D(0) => UART_RX_INST_n_6,
      E(0) => rA_1,
      \FSM_onehot_rCurrentState_reg[5]_0\(0) => wRxDone,
      \FSM_onehot_rFSM_reg[1]\ => \rCnt_reg_n_0_[1]\,
      \FSM_onehot_rFSM_reg[1]_0\ => \rCnt_reg_n_0_[0]\,
      \FSM_onehot_rFSM_reg[2]\(0) => rB_2,
      Q(4) => rTxByte_0,
      Q(3) => rStartAdder,
      Q(2) => \FSM_onehot_rFSM_reg_n_0_[2]\,
      Q(1) => \FSM_onehot_rFSM_reg_n_0_[1]\,
      Q(0) => \FSM_onehot_rFSM_reg_n_0_[0]\,
      iClk => iClk,
      iRst => iRst,
      iRx => iRx,
      \rBufferCurrent_reg[7]_0\(7 downto 0) => rBufferCurrent(7 downto 0),
      rCnt => rCnt,
      \rCnt_reg[0]\ => MP_ADDER_INST_n_1,
      \rCnt_reg[0]_0\ => \rCnt[1]_i_3_n_0\,
      \rCnt_reg[1]\ => UART_RX_INST_n_3
    );
UART_TX_INST: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_tx
     port map (
      D(7) => UART_TX_INST_n_0,
      D(6) => UART_TX_INST_n_1,
      D(5) => UART_TX_INST_n_2,
      D(4) => UART_TX_INST_n_3,
      D(3) => UART_TX_INST_n_4,
      D(2) => UART_TX_INST_n_5,
      D(1) => UART_TX_INST_n_6,
      D(0) => UART_TX_INST_n_7,
      \FSM_onehot_rFSM_Current_reg[0]_0\ => UART_TX_INST_n_13,
      \FSM_onehot_rFSM_Current_reg[4]_0\(1) => wTxDone,
      \FSM_onehot_rFSM_Current_reg[4]_0\(0) => UART_TX_INST_n_9,
      \FSM_onehot_rFSM_reg[4]\(1) => UART_TX_INST_n_10,
      \FSM_onehot_rFSM_reg[4]\(0) => UART_TX_INST_n_11,
      \FSM_onehot_rFSM_reg[4]_0\ => UART_TX_INST_n_12,
      \FSM_onehot_rFSM_reg[4]_1\ => UART_TX_INST_n_15,
      Q(7) => \rResult_reg_n_0_[23]\,
      Q(6) => \rResult_reg_n_0_[22]\,
      Q(5) => \rResult_reg_n_0_[21]\,
      Q(4) => \rResult_reg_n_0_[20]\,
      Q(3) => \rResult_reg_n_0_[19]\,
      Q(2) => \rResult_reg_n_0_[18]\,
      Q(1) => \rResult_reg_n_0_[17]\,
      Q(0) => \rResult_reg_n_0_[16]\,
      iClk => iClk,
      iRst => iRst,
      oTx => oTx,
      \rTxByte_reg[0]\ => \rCnt_reg_n_0_[1]\,
      \rTxByte_reg[0]_0\ => \rCnt_reg_n_0_[0]\,
      \rTxData_Current_reg[7]_0\(7 downto 0) => rTxByte(7 downto 0),
      rTxStart_reg(1) => \FSM_onehot_rFSM_reg_n_0_[5]\,
      rTxStart_reg(0) => rTxByte_0,
      rTxStart_reg_0 => rTxStart_reg_n_0
    );
\rA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rA_1,
      D => rBufferCurrent(0),
      Q => rA(0),
      R => iRst
    );
\rA_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rA_1,
      D => rA(2),
      Q => rA(10),
      R => iRst
    );
\rA_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rA_1,
      D => rA(3),
      Q => rA(11),
      R => iRst
    );
\rA_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rA_1,
      D => rA(4),
      Q => rA(12),
      R => iRst
    );
\rA_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rA_1,
      D => rA(5),
      Q => rA(13),
      R => iRst
    );
\rA_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rA_1,
      D => rA(6),
      Q => rA(14),
      R => iRst
    );
\rA_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rA_1,
      D => rA(7),
      Q => rA(15),
      R => iRst
    );
\rA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rA_1,
      D => rBufferCurrent(1),
      Q => rA(1),
      R => iRst
    );
\rA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rA_1,
      D => rBufferCurrent(2),
      Q => rA(2),
      R => iRst
    );
\rA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rA_1,
      D => rBufferCurrent(3),
      Q => rA(3),
      R => iRst
    );
\rA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rA_1,
      D => rBufferCurrent(4),
      Q => rA(4),
      R => iRst
    );
\rA_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rA_1,
      D => rBufferCurrent(5),
      Q => rA(5),
      R => iRst
    );
\rA_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rA_1,
      D => rBufferCurrent(6),
      Q => rA(6),
      R => iRst
    );
\rA_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rA_1,
      D => rBufferCurrent(7),
      Q => rA(7),
      R => iRst
    );
\rA_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rA_1,
      D => rA(0),
      Q => rA(8),
      R => iRst
    );
\rA_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rA_1,
      D => rA(1),
      Q => rA(9),
      R => iRst
    );
\rB_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rB_2,
      D => rBufferCurrent(0),
      Q => rB(0),
      R => iRst
    );
\rB_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rB_2,
      D => rB(2),
      Q => rB(10),
      R => iRst
    );
\rB_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rB_2,
      D => rB(3),
      Q => rB(11),
      R => iRst
    );
\rB_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rB_2,
      D => rB(4),
      Q => rB(12),
      R => iRst
    );
\rB_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rB_2,
      D => rB(5),
      Q => rB(13),
      R => iRst
    );
\rB_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rB_2,
      D => rB(6),
      Q => rB(14),
      R => iRst
    );
\rB_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rB_2,
      D => rB(7),
      Q => rB(15),
      R => iRst
    );
\rB_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rB_2,
      D => rBufferCurrent(1),
      Q => rB(1),
      R => iRst
    );
\rB_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rB_2,
      D => rBufferCurrent(2),
      Q => rB(2),
      R => iRst
    );
\rB_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rB_2,
      D => rBufferCurrent(3),
      Q => rB(3),
      R => iRst
    );
\rB_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rB_2,
      D => rBufferCurrent(4),
      Q => rB(4),
      R => iRst
    );
\rB_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rB_2,
      D => rBufferCurrent(5),
      Q => rB(5),
      R => iRst
    );
\rB_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rB_2,
      D => rBufferCurrent(6),
      Q => rB(6),
      R => iRst
    );
\rB_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rB_2,
      D => rBufferCurrent(7),
      Q => rB(7),
      R => iRst
    );
\rB_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rB_2,
      D => rB(0),
      Q => rB(8),
      R => iRst
    );
\rB_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rB_2,
      D => rB(1),
      Q => rB(9),
      R => iRst
    );
\rCnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0CFFFFFFAE0000"
    )
        port map (
      I0 => UART_TX_INST_n_12,
      I1 => rStartAdder,
      I2 => MP_ADDER_INST_n_1,
      I3 => UART_RX_INST_n_3,
      I4 => rCnt,
      I5 => \rCnt_reg_n_0_[0]\,
      O => \rCnt[0]_i_1_n_0\
    );
\rCnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E0FFFFE0000000"
    )
        port map (
      I0 => UART_TX_INST_n_9,
      I1 => wTxDone,
      I2 => rTxByte_0,
      I3 => \rCnt_reg_n_0_[0]\,
      I4 => rCnt,
      I5 => \rCnt_reg_n_0_[1]\,
      O => \rCnt[1]_i_1_n_0\
    );
\rCnt[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rCnt_reg_n_0_[1]\,
      I1 => \rCnt_reg_n_0_[0]\,
      O => \rCnt[1]_i_3_n_0\
    );
\rCnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt[0]_i_1_n_0\,
      Q => \rCnt_reg_n_0_[0]\,
      R => iRst
    );
\rCnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt[1]_i_1_n_0\,
      Q => \rCnt_reg_n_0_[1]\,
      R => iRst
    );
\rResult[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rTxByte_0,
      I1 => in9(17),
      O => \rResult[17]_i_1_n_0\
    );
\rResult[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rTxByte_0,
      I1 => in9(18),
      O => \rResult[18]_i_1_n_0\
    );
\rResult[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rTxByte_0,
      I1 => in9(19),
      O => \rResult[19]_i_1_n_0\
    );
\rResult[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rTxByte_0,
      I1 => in9(20),
      O => \rResult[20]_i_1_n_0\
    );
\rResult[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rTxByte_0,
      I1 => in9(21),
      O => \rResult[21]_i_1_n_0\
    );
\rResult[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rTxByte_0,
      I1 => in9(22),
      O => \rResult[22]_i_1_n_0\
    );
\rResult[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rTxByte_0,
      I1 => in9(23),
      O => \rResult[23]_i_2_n_0\
    );
\rResult_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rResult,
      D => MP_ADDER_INST_n_21,
      Q => in9(8),
      R => iRst
    );
\rResult_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rResult,
      D => MP_ADDER_INST_n_11,
      Q => in9(18),
      R => iRst
    );
\rResult_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rResult,
      D => MP_ADDER_INST_n_10,
      Q => in9(19),
      R => iRst
    );
\rResult_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rResult,
      D => MP_ADDER_INST_n_9,
      Q => in9(20),
      R => iRst
    );
\rResult_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rResult,
      D => MP_ADDER_INST_n_8,
      Q => in9(21),
      R => iRst
    );
\rResult_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rResult,
      D => MP_ADDER_INST_n_7,
      Q => in9(22),
      R => iRst
    );
\rResult_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rResult,
      D => MP_ADDER_INST_n_6,
      Q => in9(23),
      R => iRst
    );
\rResult_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rResult,
      D => MP_ADDER_INST_n_5,
      Q => \rResult_reg_n_0_[16]\,
      R => iRst
    );
\rResult_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rResult,
      D => \rResult[17]_i_1_n_0\,
      Q => \rResult_reg_n_0_[17]\,
      R => iRst
    );
\rResult_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rResult,
      D => \rResult[18]_i_1_n_0\,
      Q => \rResult_reg_n_0_[18]\,
      R => iRst
    );
\rResult_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rResult,
      D => \rResult[19]_i_1_n_0\,
      Q => \rResult_reg_n_0_[19]\,
      R => iRst
    );
\rResult_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rResult,
      D => MP_ADDER_INST_n_20,
      Q => in9(9),
      R => iRst
    );
\rResult_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rResult,
      D => \rResult[20]_i_1_n_0\,
      Q => \rResult_reg_n_0_[20]\,
      R => iRst
    );
\rResult_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rResult,
      D => \rResult[21]_i_1_n_0\,
      Q => \rResult_reg_n_0_[21]\,
      R => iRst
    );
\rResult_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rResult,
      D => \rResult[22]_i_1_n_0\,
      Q => \rResult_reg_n_0_[22]\,
      R => iRst
    );
\rResult_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rResult,
      D => \rResult[23]_i_2_n_0\,
      Q => \rResult_reg_n_0_[23]\,
      R => iRst
    );
\rResult_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rResult,
      D => MP_ADDER_INST_n_19,
      Q => in9(10),
      R => iRst
    );
\rResult_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rResult,
      D => MP_ADDER_INST_n_18,
      Q => in9(11),
      R => iRst
    );
\rResult_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rResult,
      D => MP_ADDER_INST_n_17,
      Q => in9(12),
      R => iRst
    );
\rResult_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rResult,
      D => MP_ADDER_INST_n_16,
      Q => in9(13),
      R => iRst
    );
\rResult_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rResult,
      D => MP_ADDER_INST_n_15,
      Q => in9(14),
      R => iRst
    );
\rResult_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rResult,
      D => MP_ADDER_INST_n_14,
      Q => in9(15),
      R => iRst
    );
\rResult_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rResult,
      D => MP_ADDER_INST_n_13,
      Q => in9(16),
      R => iRst
    );
\rResult_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rResult,
      D => MP_ADDER_INST_n_12,
      Q => in9(17),
      R => iRst
    );
rStartAdder_reg: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => MP_ADDER_INST_n_22,
      Q => rStartAdder_reg_n_0,
      R => iRst
    );
\rTxByte_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_0,
      D => UART_TX_INST_n_7,
      Q => rTxByte(0),
      R => iRst
    );
\rTxByte_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_0,
      D => UART_TX_INST_n_6,
      Q => rTxByte(1),
      R => iRst
    );
\rTxByte_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_0,
      D => UART_TX_INST_n_5,
      Q => rTxByte(2),
      R => iRst
    );
\rTxByte_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_0,
      D => UART_TX_INST_n_4,
      Q => rTxByte(3),
      R => iRst
    );
\rTxByte_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_0,
      D => UART_TX_INST_n_3,
      Q => rTxByte(4),
      R => iRst
    );
\rTxByte_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_0,
      D => UART_TX_INST_n_2,
      Q => rTxByte(5),
      R => iRst
    );
\rTxByte_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_0,
      D => UART_TX_INST_n_1,
      Q => rTxByte(6),
      R => iRst
    );
\rTxByte_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_0,
      D => UART_TX_INST_n_0,
      Q => rTxByte(7),
      R => iRst
    );
rTxStart_reg: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => UART_TX_INST_n_15,
      Q => rTxStart_reg_n_0,
      R => iRst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    iClk : in STD_LOGIC;
    iRst : in STD_LOGIC;
    iRx : in STD_LOGIC;
    oTx : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_uart_top_0_0,uart_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "uart_top,Vivado 2020.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_top
     port map (
      iClk => iClk,
      iRst => iRst,
      iRx => iRx,
      oTx => oTx
    );
end STRUCTURE;
