// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Sun May 12 11:09:49 2024
// Host        : billionaire-he-will-be running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim
//               /home/sims0702/Documents/University/phase-3-courses/complex-digital-design/cdd_lab_3/cdd_lab_3.srcs/sources_1/bd/design_1/ip/design_1_uart_top_0_0/design_1_uart_top_0_0_sim_netlist.v
// Design      : design_1_uart_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_uart_top_0_0,uart_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "uart_top,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_uart_top_0_0
   (iClk,
    iRst,
    iRx,
    oTx);
  input iClk;
  input iRst;
  input iRx;
  output oTx;

  wire iClk;
  wire iRst;
  wire iRx;
  wire oTx;

  design_1_uart_top_0_0_uart_top inst
       (.iClk(iClk),
        .iRst(iRst),
        .iRx(iRx),
        .oTx(oTx));
endmodule

(* ORIG_REF_NAME = "mp_adder" *) 
module design_1_uart_top_0_0_mp_adder
   (E,
    \FSM_sequential_rFSM_current_reg[2]_0 ,
    D,
    \FSM_onehot_rFSM_reg[4] ,
    \rResult_reg[8] ,
    \rCnt_reg[0] ,
    iRst,
    iClk,
    rStartAdder_reg,
    rStartAdder_reg_0,
    Q,
    \FSM_onehot_rFSM_reg[0] ,
    \FSM_onehot_rFSM_reg[3] ,
    \rResult_reg[0] ,
    \regB_Q_reg[15]_0 ,
    \regA_Q_reg[15]_0 ,
    \FSM_onehot_rFSM_reg[4]_0 ,
    rStartAdder_reg_1,
    \rResult_reg[16] );
  output [0:0]E;
  output \FSM_sequential_rFSM_current_reg[2]_0 ;
  output [1:0]D;
  output [0:0]\FSM_onehot_rFSM_reg[4] ;
  output [16:0]\rResult_reg[8] ;
  output \rCnt_reg[0] ;
  input iRst;
  input iClk;
  input rStartAdder_reg;
  input rStartAdder_reg_0;
  input [3:0]Q;
  input \FSM_onehot_rFSM_reg[0] ;
  input [0:0]\FSM_onehot_rFSM_reg[3] ;
  input \rResult_reg[0] ;
  input [15:0]\regB_Q_reg[15]_0 ;
  input [15:0]\regA_Q_reg[15]_0 ;
  input [0:0]\FSM_onehot_rFSM_reg[4]_0 ;
  input rStartAdder_reg_1;
  input [8:0]\rResult_reg[16] ;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_rFSM_reg[0] ;
  wire [0:0]\FSM_onehot_rFSM_reg[3] ;
  wire [0:0]\FSM_onehot_rFSM_reg[4] ;
  wire [0:0]\FSM_onehot_rFSM_reg[4]_0 ;
  wire \FSM_sequential_rFSM_current_reg[2]_0 ;
  wire [3:0]Q;
  wire carry_out;
  wire iClk;
  wire iRst;
  wire [15:0]muxA_Out;
  wire [15:0]muxB_Out;
  wire [1:0]rCnt_Current;
  wire \rCnt_reg[0] ;
  wire [2:0]rFSM_current;
  wire \rResult_reg[0] ;
  wire [8:0]\rResult_reg[16] ;
  wire [16:0]\rResult_reg[8] ;
  wire rStartAdder_reg;
  wire rStartAdder_reg_0;
  wire rStartAdder_reg_1;
  wire [15:0]\regA_Q_reg[15]_0 ;
  wire \regA_Q_reg_n_0_[0] ;
  wire \regA_Q_reg_n_0_[10] ;
  wire \regA_Q_reg_n_0_[11] ;
  wire \regA_Q_reg_n_0_[12] ;
  wire \regA_Q_reg_n_0_[13] ;
  wire \regA_Q_reg_n_0_[14] ;
  wire \regA_Q_reg_n_0_[15] ;
  wire \regA_Q_reg_n_0_[1] ;
  wire \regA_Q_reg_n_0_[2] ;
  wire \regA_Q_reg_n_0_[3] ;
  wire \regA_Q_reg_n_0_[4] ;
  wire \regA_Q_reg_n_0_[5] ;
  wire \regA_Q_reg_n_0_[6] ;
  wire \regA_Q_reg_n_0_[7] ;
  wire \regA_Q_reg_n_0_[8] ;
  wire \regA_Q_reg_n_0_[9] ;
  wire [7:0]regB_Q;
  wire [15:0]\regB_Q_reg[15]_0 ;
  wire \regB_Q_reg_n_0_[10] ;
  wire \regB_Q_reg_n_0_[11] ;
  wire \regB_Q_reg_n_0_[12] ;
  wire \regB_Q_reg_n_0_[13] ;
  wire \regB_Q_reg_n_0_[14] ;
  wire \regB_Q_reg_n_0_[15] ;
  wire \regB_Q_reg_n_0_[8] ;
  wire \regB_Q_reg_n_0_[9] ;
  wire regCout_i_2_n_0;
  wire regCout_i_3_n_0;
  wire regCout_i_4_n_0;
  wire regCout_i_5_n_0;
  wire [15:0]regResult;
  wire \regResult[10]_i_2_n_0 ;
  wire \regResult[12]_i_2_n_0 ;
  wire \regResult[15]_i_2_n_0 ;
  wire \regResult[15]_i_3_n_0 ;
  wire [7:0]result;
  wire [1:0]wCnt_next;
  wire [2:0]wFSM_next;
  wire [16:16]wResult;

  LUT6 #(
    .INIT(64'h4444F44444444444)) 
    \FSM_onehot_rFSM[3]_i_1 
       (.I0(\FSM_sequential_rFSM_current_reg[2]_0 ),
        .I1(Q[1]),
        .I2(\FSM_onehot_rFSM_reg[3] ),
        .I3(rStartAdder_reg),
        .I4(rStartAdder_reg_0),
        .I5(Q[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFF020002000200)) 
    \FSM_onehot_rFSM[4]_i_1 
       (.I0(rFSM_current[2]),
        .I1(rFSM_current[1]),
        .I2(rFSM_current[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(\FSM_onehot_rFSM_reg[4]_0 ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hFFFFFE00)) 
    \FSM_onehot_rFSM[6]_i_1 
       (.I0(rStartAdder_reg),
        .I1(rStartAdder_reg_0),
        .I2(\FSM_sequential_rFSM_current_reg[2]_0 ),
        .I3(Q[1]),
        .I4(\FSM_onehot_rFSM_reg[0] ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_onehot_rFSM[6]_i_3 
       (.I0(rFSM_current[2]),
        .I1(rFSM_current[1]),
        .I2(rFSM_current[0]),
        .O(\FSM_sequential_rFSM_current_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h0000000011FF00F0)) 
    \FSM_sequential_rFSM_current[0]_i_1 
       (.I0(rCnt_Current[0]),
        .I1(rCnt_Current[1]),
        .I2(rStartAdder_reg_1),
        .I3(rFSM_current[0]),
        .I4(rFSM_current[1]),
        .I5(rFSM_current[2]),
        .O(wFSM_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h14141454)) 
    \FSM_sequential_rFSM_current[1]_i_1 
       (.I0(rFSM_current[2]),
        .I1(rFSM_current[0]),
        .I2(rFSM_current[1]),
        .I3(rCnt_Current[0]),
        .I4(rCnt_Current[1]),
        .O(wFSM_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h0000E000)) 
    \FSM_sequential_rFSM_current[2]_i_1 
       (.I0(rCnt_Current[1]),
        .I1(rCnt_Current[0]),
        .I2(rFSM_current[0]),
        .I3(rFSM_current[1]),
        .I4(rFSM_current[2]),
        .O(wFSM_next[2]));
  (* FSM_ENCODED_STATES = "s_ADD_FIRST:010,s_IDLE:000,s_STORE_OPS:001,s_DONE:100,s_ADD_WORDS:011" *) 
  FDRE \FSM_sequential_rFSM_current_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(wFSM_next[0]),
        .Q(rFSM_current[0]),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s_ADD_FIRST:010,s_IDLE:000,s_STORE_OPS:001,s_DONE:100,s_ADD_WORDS:011" *) 
  FDRE \FSM_sequential_rFSM_current_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(wFSM_next[1]),
        .Q(rFSM_current[1]),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s_ADD_FIRST:010,s_IDLE:000,s_STORE_OPS:001,s_DONE:100,s_ADD_WORDS:011" *) 
  FDRE \FSM_sequential_rFSM_current_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(wFSM_next[2]),
        .Q(rFSM_current[2]),
        .R(iRst));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0054)) 
    \rCnt_Current[0]_i_1 
       (.I0(rFSM_current[2]),
        .I1(rFSM_current[0]),
        .I2(rFSM_current[1]),
        .I3(rCnt_Current[0]),
        .O(wCnt_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h06060600)) 
    \rCnt_Current[1]_i_1 
       (.I0(rCnt_Current[1]),
        .I1(rCnt_Current[0]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[0]),
        .I4(rFSM_current[1]),
        .O(wCnt_next[1]));
  FDRE \rCnt_Current_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(wCnt_next[0]),
        .Q(rCnt_Current[0]),
        .R(iRst));
  FDRE \rCnt_Current_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(wCnt_next[1]),
        .Q(rCnt_Current[1]),
        .R(iRst));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rResult[0]_i_1 
       (.I0(Q[1]),
        .I1(regResult[0]),
        .O(\rResult_reg[8] [0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \rResult[10]_i_1 
       (.I0(\rResult_reg[16] [2]),
        .I1(Q[2]),
        .I2(regResult[10]),
        .I3(Q[1]),
        .O(\rResult_reg[8] [10]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \rResult[11]_i_1 
       (.I0(\rResult_reg[16] [3]),
        .I1(Q[2]),
        .I2(regResult[11]),
        .I3(Q[1]),
        .O(\rResult_reg[8] [11]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \rResult[12]_i_1 
       (.I0(\rResult_reg[16] [4]),
        .I1(Q[2]),
        .I2(regResult[12]),
        .I3(Q[1]),
        .O(\rResult_reg[8] [12]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \rResult[13]_i_1 
       (.I0(\rResult_reg[16] [5]),
        .I1(Q[2]),
        .I2(regResult[13]),
        .I3(Q[1]),
        .O(\rResult_reg[8] [13]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \rResult[14]_i_1 
       (.I0(\rResult_reg[16] [6]),
        .I1(Q[2]),
        .I2(regResult[14]),
        .I3(Q[1]),
        .O(\rResult_reg[8] [14]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \rResult[15]_i_1 
       (.I0(\rResult_reg[16] [7]),
        .I1(Q[2]),
        .I2(regResult[15]),
        .I3(Q[1]),
        .O(\rResult_reg[8] [15]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \rResult[16]_i_1 
       (.I0(\rResult_reg[16] [8]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(wResult),
        .O(\rResult_reg[8] [16]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rResult[1]_i_1 
       (.I0(Q[1]),
        .I1(regResult[1]),
        .O(\rResult_reg[8] [1]));
  LUT6 #(
    .INIT(64'h888888F888888888)) 
    \rResult[23]_i_1 
       (.I0(\rResult_reg[0] ),
        .I1(Q[2]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[1]),
        .I4(rFSM_current[0]),
        .I5(Q[1]),
        .O(\FSM_onehot_rFSM_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rResult[2]_i_1 
       (.I0(Q[1]),
        .I1(regResult[2]),
        .O(\rResult_reg[8] [2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rResult[3]_i_1 
       (.I0(Q[1]),
        .I1(regResult[3]),
        .O(\rResult_reg[8] [3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rResult[4]_i_1 
       (.I0(Q[1]),
        .I1(regResult[4]),
        .O(\rResult_reg[8] [4]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rResult[5]_i_1 
       (.I0(Q[1]),
        .I1(regResult[5]),
        .O(\rResult_reg[8] [5]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rResult[6]_i_1 
       (.I0(Q[1]),
        .I1(regResult[6]),
        .O(\rResult_reg[8] [6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rResult[7]_i_1 
       (.I0(Q[1]),
        .I1(regResult[7]),
        .O(\rResult_reg[8] [7]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rResult[8]_i_1 
       (.I0(\rResult_reg[16] [0]),
        .I1(Q[2]),
        .I2(regResult[8]),
        .I3(Q[1]),
        .O(\rResult_reg[8] [8]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \rResult[9]_i_1 
       (.I0(\rResult_reg[16] [1]),
        .I1(Q[2]),
        .I2(regResult[9]),
        .I3(Q[1]),
        .O(\rResult_reg[8] [9]));
  LUT5 #(
    .INIT(32'h01FF0100)) 
    rStartAdder_i_1
       (.I0(rStartAdder_reg),
        .I1(rStartAdder_reg_0),
        .I2(\FSM_sequential_rFSM_current_reg[2]_0 ),
        .I3(Q[1]),
        .I4(rStartAdder_reg_1),
        .O(\rCnt_reg[0] ));
  LUT5 #(
    .INIT(32'hAFBAA08A)) 
    \regA_Q[0]_i_1 
       (.I0(\regA_Q_reg[15]_0 [0]),
        .I1(rFSM_current[0]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[1]),
        .I4(\regA_Q_reg_n_0_[8] ),
        .O(muxA_Out[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hA282)) 
    \regA_Q[10]_i_1 
       (.I0(\regA_Q_reg[15]_0 [10]),
        .I1(rFSM_current[1]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[0]),
        .O(muxA_Out[10]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hA282)) 
    \regA_Q[11]_i_1 
       (.I0(\regA_Q_reg[15]_0 [11]),
        .I1(rFSM_current[1]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[0]),
        .O(muxA_Out[11]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hA282)) 
    \regA_Q[12]_i_1 
       (.I0(\regA_Q_reg[15]_0 [12]),
        .I1(rFSM_current[1]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[0]),
        .O(muxA_Out[12]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hA282)) 
    \regA_Q[13]_i_1 
       (.I0(\regA_Q_reg[15]_0 [13]),
        .I1(rFSM_current[1]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[0]),
        .O(muxA_Out[13]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hA282)) 
    \regA_Q[14]_i_1 
       (.I0(\regA_Q_reg[15]_0 [14]),
        .I1(rFSM_current[1]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[0]),
        .O(muxA_Out[14]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hA282)) 
    \regA_Q[15]_i_1 
       (.I0(\regA_Q_reg[15]_0 [15]),
        .I1(rFSM_current[1]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[0]),
        .O(muxA_Out[15]));
  LUT5 #(
    .INIT(32'hAFBAA08A)) 
    \regA_Q[1]_i_1 
       (.I0(\regA_Q_reg[15]_0 [1]),
        .I1(rFSM_current[0]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[1]),
        .I4(\regA_Q_reg_n_0_[9] ),
        .O(muxA_Out[1]));
  LUT5 #(
    .INIT(32'hAFBAA08A)) 
    \regA_Q[2]_i_1 
       (.I0(\regA_Q_reg[15]_0 [2]),
        .I1(rFSM_current[0]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[1]),
        .I4(\regA_Q_reg_n_0_[10] ),
        .O(muxA_Out[2]));
  LUT5 #(
    .INIT(32'hAFBAA08A)) 
    \regA_Q[3]_i_1 
       (.I0(\regA_Q_reg[15]_0 [3]),
        .I1(rFSM_current[0]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[1]),
        .I4(\regA_Q_reg_n_0_[11] ),
        .O(muxA_Out[3]));
  LUT5 #(
    .INIT(32'hAFBAA08A)) 
    \regA_Q[4]_i_1 
       (.I0(\regA_Q_reg[15]_0 [4]),
        .I1(rFSM_current[0]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[1]),
        .I4(\regA_Q_reg_n_0_[12] ),
        .O(muxA_Out[4]));
  LUT5 #(
    .INIT(32'hAFBAA08A)) 
    \regA_Q[5]_i_1 
       (.I0(\regA_Q_reg[15]_0 [5]),
        .I1(rFSM_current[0]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[1]),
        .I4(\regA_Q_reg_n_0_[13] ),
        .O(muxA_Out[5]));
  LUT5 #(
    .INIT(32'hAFBAA08A)) 
    \regA_Q[6]_i_1 
       (.I0(\regA_Q_reg[15]_0 [6]),
        .I1(rFSM_current[0]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[1]),
        .I4(\regA_Q_reg_n_0_[14] ),
        .O(muxA_Out[6]));
  LUT5 #(
    .INIT(32'hAFBAA08A)) 
    \regA_Q[7]_i_1 
       (.I0(\regA_Q_reg[15]_0 [7]),
        .I1(rFSM_current[0]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[1]),
        .I4(\regA_Q_reg_n_0_[15] ),
        .O(muxA_Out[7]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hA282)) 
    \regA_Q[8]_i_1 
       (.I0(\regA_Q_reg[15]_0 [8]),
        .I1(rFSM_current[1]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[0]),
        .O(muxA_Out[8]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hA282)) 
    \regA_Q[9]_i_1 
       (.I0(\regA_Q_reg[15]_0 [9]),
        .I1(rFSM_current[1]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[0]),
        .O(muxA_Out[9]));
  FDRE \regA_Q_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxA_Out[0]),
        .Q(\regA_Q_reg_n_0_[0] ),
        .R(iRst));
  FDRE \regA_Q_reg[10] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxA_Out[10]),
        .Q(\regA_Q_reg_n_0_[10] ),
        .R(iRst));
  FDRE \regA_Q_reg[11] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxA_Out[11]),
        .Q(\regA_Q_reg_n_0_[11] ),
        .R(iRst));
  FDRE \regA_Q_reg[12] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxA_Out[12]),
        .Q(\regA_Q_reg_n_0_[12] ),
        .R(iRst));
  FDRE \regA_Q_reg[13] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxA_Out[13]),
        .Q(\regA_Q_reg_n_0_[13] ),
        .R(iRst));
  FDRE \regA_Q_reg[14] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxA_Out[14]),
        .Q(\regA_Q_reg_n_0_[14] ),
        .R(iRst));
  FDRE \regA_Q_reg[15] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxA_Out[15]),
        .Q(\regA_Q_reg_n_0_[15] ),
        .R(iRst));
  FDRE \regA_Q_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxA_Out[1]),
        .Q(\regA_Q_reg_n_0_[1] ),
        .R(iRst));
  FDRE \regA_Q_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxA_Out[2]),
        .Q(\regA_Q_reg_n_0_[2] ),
        .R(iRst));
  FDRE \regA_Q_reg[3] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxA_Out[3]),
        .Q(\regA_Q_reg_n_0_[3] ),
        .R(iRst));
  FDRE \regA_Q_reg[4] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxA_Out[4]),
        .Q(\regA_Q_reg_n_0_[4] ),
        .R(iRst));
  FDRE \regA_Q_reg[5] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxA_Out[5]),
        .Q(\regA_Q_reg_n_0_[5] ),
        .R(iRst));
  FDRE \regA_Q_reg[6] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxA_Out[6]),
        .Q(\regA_Q_reg_n_0_[6] ),
        .R(iRst));
  FDRE \regA_Q_reg[7] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxA_Out[7]),
        .Q(\regA_Q_reg_n_0_[7] ),
        .R(iRst));
  FDRE \regA_Q_reg[8] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxA_Out[8]),
        .Q(\regA_Q_reg_n_0_[8] ),
        .R(iRst));
  FDRE \regA_Q_reg[9] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxA_Out[9]),
        .Q(\regA_Q_reg_n_0_[9] ),
        .R(iRst));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hAFBAA08A)) 
    \regB_Q[0]_i_1 
       (.I0(\regB_Q_reg[15]_0 [0]),
        .I1(rFSM_current[0]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[1]),
        .I4(\regB_Q_reg_n_0_[8] ),
        .O(muxB_Out[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hA282)) 
    \regB_Q[10]_i_1 
       (.I0(\regB_Q_reg[15]_0 [10]),
        .I1(rFSM_current[1]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[0]),
        .O(muxB_Out[10]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hA282)) 
    \regB_Q[11]_i_1 
       (.I0(\regB_Q_reg[15]_0 [11]),
        .I1(rFSM_current[1]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[0]),
        .O(muxB_Out[11]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hA282)) 
    \regB_Q[12]_i_1 
       (.I0(\regB_Q_reg[15]_0 [12]),
        .I1(rFSM_current[1]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[0]),
        .O(muxB_Out[12]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hA282)) 
    \regB_Q[13]_i_1 
       (.I0(\regB_Q_reg[15]_0 [13]),
        .I1(rFSM_current[1]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[0]),
        .O(muxB_Out[13]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hA282)) 
    \regB_Q[14]_i_1 
       (.I0(\regB_Q_reg[15]_0 [14]),
        .I1(rFSM_current[1]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[0]),
        .O(muxB_Out[14]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hA282)) 
    \regB_Q[15]_i_1 
       (.I0(\regB_Q_reg[15]_0 [15]),
        .I1(rFSM_current[1]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[0]),
        .O(muxB_Out[15]));
  LUT5 #(
    .INIT(32'hAFBAA08A)) 
    \regB_Q[1]_i_1 
       (.I0(\regB_Q_reg[15]_0 [1]),
        .I1(rFSM_current[0]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[1]),
        .I4(\regB_Q_reg_n_0_[9] ),
        .O(muxB_Out[1]));
  LUT5 #(
    .INIT(32'hAFBAA08A)) 
    \regB_Q[2]_i_1 
       (.I0(\regB_Q_reg[15]_0 [2]),
        .I1(rFSM_current[0]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[1]),
        .I4(\regB_Q_reg_n_0_[10] ),
        .O(muxB_Out[2]));
  LUT5 #(
    .INIT(32'hAFBAA08A)) 
    \regB_Q[3]_i_1 
       (.I0(\regB_Q_reg[15]_0 [3]),
        .I1(rFSM_current[0]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[1]),
        .I4(\regB_Q_reg_n_0_[11] ),
        .O(muxB_Out[3]));
  LUT5 #(
    .INIT(32'hAFBAA08A)) 
    \regB_Q[4]_i_1 
       (.I0(\regB_Q_reg[15]_0 [4]),
        .I1(rFSM_current[0]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[1]),
        .I4(\regB_Q_reg_n_0_[12] ),
        .O(muxB_Out[4]));
  LUT5 #(
    .INIT(32'hAFBAA08A)) 
    \regB_Q[5]_i_1 
       (.I0(\regB_Q_reg[15]_0 [5]),
        .I1(rFSM_current[0]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[1]),
        .I4(\regB_Q_reg_n_0_[13] ),
        .O(muxB_Out[5]));
  LUT5 #(
    .INIT(32'hAFBAA08A)) 
    \regB_Q[6]_i_1 
       (.I0(\regB_Q_reg[15]_0 [6]),
        .I1(rFSM_current[0]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[1]),
        .I4(\regB_Q_reg_n_0_[14] ),
        .O(muxB_Out[6]));
  LUT5 #(
    .INIT(32'hAFBAA08A)) 
    \regB_Q[7]_i_1 
       (.I0(\regB_Q_reg[15]_0 [7]),
        .I1(rFSM_current[0]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[1]),
        .I4(\regB_Q_reg_n_0_[15] ),
        .O(muxB_Out[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hA282)) 
    \regB_Q[8]_i_1 
       (.I0(\regB_Q_reg[15]_0 [8]),
        .I1(rFSM_current[1]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[0]),
        .O(muxB_Out[8]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hA282)) 
    \regB_Q[9]_i_1 
       (.I0(\regB_Q_reg[15]_0 [9]),
        .I1(rFSM_current[1]),
        .I2(rFSM_current[2]),
        .I3(rFSM_current[0]),
        .O(muxB_Out[9]));
  FDRE \regB_Q_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxB_Out[0]),
        .Q(regB_Q[0]),
        .R(iRst));
  FDRE \regB_Q_reg[10] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxB_Out[10]),
        .Q(\regB_Q_reg_n_0_[10] ),
        .R(iRst));
  FDRE \regB_Q_reg[11] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxB_Out[11]),
        .Q(\regB_Q_reg_n_0_[11] ),
        .R(iRst));
  FDRE \regB_Q_reg[12] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxB_Out[12]),
        .Q(\regB_Q_reg_n_0_[12] ),
        .R(iRst));
  FDRE \regB_Q_reg[13] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxB_Out[13]),
        .Q(\regB_Q_reg_n_0_[13] ),
        .R(iRst));
  FDRE \regB_Q_reg[14] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxB_Out[14]),
        .Q(\regB_Q_reg_n_0_[14] ),
        .R(iRst));
  FDRE \regB_Q_reg[15] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxB_Out[15]),
        .Q(\regB_Q_reg_n_0_[15] ),
        .R(iRst));
  FDRE \regB_Q_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxB_Out[1]),
        .Q(regB_Q[1]),
        .R(iRst));
  FDRE \regB_Q_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxB_Out[2]),
        .Q(regB_Q[2]),
        .R(iRst));
  FDRE \regB_Q_reg[3] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxB_Out[3]),
        .Q(regB_Q[3]),
        .R(iRst));
  FDRE \regB_Q_reg[4] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxB_Out[4]),
        .Q(regB_Q[4]),
        .R(iRst));
  FDRE \regB_Q_reg[5] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxB_Out[5]),
        .Q(regB_Q[5]),
        .R(iRst));
  FDRE \regB_Q_reg[6] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxB_Out[6]),
        .Q(regB_Q[6]),
        .R(iRst));
  FDRE \regB_Q_reg[7] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxB_Out[7]),
        .Q(regB_Q[7]),
        .R(iRst));
  FDRE \regB_Q_reg[8] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxB_Out[8]),
        .Q(\regB_Q_reg_n_0_[8] ),
        .R(iRst));
  FDRE \regB_Q_reg[9] 
       (.C(iClk),
        .CE(1'b1),
        .D(muxB_Out[9]),
        .Q(\regB_Q_reg_n_0_[9] ),
        .R(iRst));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    regCout_i_1
       (.I0(\regA_Q_reg_n_0_[7] ),
        .I1(regB_Q[7]),
        .I2(\regA_Q_reg_n_0_[6] ),
        .I3(regB_Q[6]),
        .I4(regCout_i_2_n_0),
        .O(carry_out));
  LUT6 #(
    .INIT(64'hEEE8EEE8EEE8E888)) 
    regCout_i_2
       (.I0(\regA_Q_reg_n_0_[5] ),
        .I1(regB_Q[5]),
        .I2(\regA_Q_reg_n_0_[4] ),
        .I3(regB_Q[4]),
        .I4(regCout_i_3_n_0),
        .I5(regCout_i_4_n_0),
        .O(regCout_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    regCout_i_3
       (.I0(\regA_Q_reg_n_0_[3] ),
        .I1(regB_Q[3]),
        .O(regCout_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFE8E80000000000)) 
    regCout_i_4
       (.I0(\regResult[10]_i_2_n_0 ),
        .I1(regB_Q[1]),
        .I2(\regA_Q_reg_n_0_[1] ),
        .I3(regB_Q[2]),
        .I4(\regA_Q_reg_n_0_[2] ),
        .I5(regCout_i_5_n_0),
        .O(regCout_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    regCout_i_5
       (.I0(\regA_Q_reg_n_0_[3] ),
        .I1(regB_Q[3]),
        .O(regCout_i_5_n_0));
  FDRE regCout_reg
       (.C(iClk),
        .CE(1'b1),
        .D(carry_out),
        .Q(wResult),
        .R(iRst));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \regResult[10]_i_1 
       (.I0(\regResult[10]_i_2_n_0 ),
        .I1(regB_Q[1]),
        .I2(\regA_Q_reg_n_0_[1] ),
        .I3(regB_Q[2]),
        .I4(\regA_Q_reg_n_0_[2] ),
        .O(result[2]));
  LUT6 #(
    .INIT(64'h888888E8E8888888)) 
    \regResult[10]_i_2 
       (.I0(regB_Q[0]),
        .I1(\regA_Q_reg_n_0_[0] ),
        .I2(wResult),
        .I3(rFSM_current[1]),
        .I4(rFSM_current[0]),
        .I5(rFSM_current[2]),
        .O(\regResult[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \regResult[11]_i_1 
       (.I0(\regResult[12]_i_2_n_0 ),
        .I1(regB_Q[3]),
        .I2(\regA_Q_reg_n_0_[3] ),
        .O(result[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \regResult[12]_i_1 
       (.I0(\regResult[12]_i_2_n_0 ),
        .I1(regB_Q[3]),
        .I2(\regA_Q_reg_n_0_[3] ),
        .I3(regB_Q[4]),
        .I4(\regA_Q_reg_n_0_[4] ),
        .O(result[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \regResult[12]_i_2 
       (.I0(\regA_Q_reg_n_0_[2] ),
        .I1(regB_Q[2]),
        .I2(\regA_Q_reg_n_0_[1] ),
        .I3(regB_Q[1]),
        .I4(\regResult[10]_i_2_n_0 ),
        .O(\regResult[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \regResult[13]_i_1 
       (.I0(\regResult[15]_i_2_n_0 ),
        .I1(regB_Q[5]),
        .I2(\regA_Q_reg_n_0_[5] ),
        .O(result[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \regResult[14]_i_1 
       (.I0(\regResult[15]_i_2_n_0 ),
        .I1(regB_Q[5]),
        .I2(\regA_Q_reg_n_0_[5] ),
        .I3(regB_Q[6]),
        .I4(\regA_Q_reg_n_0_[6] ),
        .O(result[6]));
  LUT6 #(
    .INIT(64'h001717FFFFE8E800)) 
    \regResult[15]_i_1 
       (.I0(\regResult[15]_i_2_n_0 ),
        .I1(regB_Q[5]),
        .I2(\regA_Q_reg_n_0_[5] ),
        .I3(regB_Q[6]),
        .I4(\regA_Q_reg_n_0_[6] ),
        .I5(\regResult[15]_i_3_n_0 ),
        .O(result[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \regResult[15]_i_2 
       (.I0(\regA_Q_reg_n_0_[4] ),
        .I1(regB_Q[4]),
        .I2(\regA_Q_reg_n_0_[3] ),
        .I3(regB_Q[3]),
        .I4(\regResult[12]_i_2_n_0 ),
        .O(\regResult[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \regResult[15]_i_3 
       (.I0(\regA_Q_reg_n_0_[7] ),
        .I1(regB_Q[7]),
        .O(\regResult[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0280FD7FFD7F0280)) 
    \regResult[8]_i_1 
       (.I0(wResult),
        .I1(rFSM_current[1]),
        .I2(rFSM_current[0]),
        .I3(rFSM_current[2]),
        .I4(regB_Q[0]),
        .I5(\regA_Q_reg_n_0_[0] ),
        .O(result[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \regResult[9]_i_1 
       (.I0(\regResult[10]_i_2_n_0 ),
        .I1(regB_Q[1]),
        .I2(\regA_Q_reg_n_0_[1] ),
        .O(result[1]));
  FDRE \regResult_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(regResult[8]),
        .Q(regResult[0]),
        .R(iRst));
  FDRE \regResult_reg[10] 
       (.C(iClk),
        .CE(1'b1),
        .D(result[2]),
        .Q(regResult[10]),
        .R(iRst));
  FDRE \regResult_reg[11] 
       (.C(iClk),
        .CE(1'b1),
        .D(result[3]),
        .Q(regResult[11]),
        .R(iRst));
  FDRE \regResult_reg[12] 
       (.C(iClk),
        .CE(1'b1),
        .D(result[4]),
        .Q(regResult[12]),
        .R(iRst));
  FDRE \regResult_reg[13] 
       (.C(iClk),
        .CE(1'b1),
        .D(result[5]),
        .Q(regResult[13]),
        .R(iRst));
  FDRE \regResult_reg[14] 
       (.C(iClk),
        .CE(1'b1),
        .D(result[6]),
        .Q(regResult[14]),
        .R(iRst));
  FDRE \regResult_reg[15] 
       (.C(iClk),
        .CE(1'b1),
        .D(result[7]),
        .Q(regResult[15]),
        .R(iRst));
  FDRE \regResult_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(regResult[9]),
        .Q(regResult[1]),
        .R(iRst));
  FDRE \regResult_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(regResult[10]),
        .Q(regResult[2]),
        .R(iRst));
  FDRE \regResult_reg[3] 
       (.C(iClk),
        .CE(1'b1),
        .D(regResult[11]),
        .Q(regResult[3]),
        .R(iRst));
  FDRE \regResult_reg[4] 
       (.C(iClk),
        .CE(1'b1),
        .D(regResult[12]),
        .Q(regResult[4]),
        .R(iRst));
  FDRE \regResult_reg[5] 
       (.C(iClk),
        .CE(1'b1),
        .D(regResult[13]),
        .Q(regResult[5]),
        .R(iRst));
  FDRE \regResult_reg[6] 
       (.C(iClk),
        .CE(1'b1),
        .D(regResult[14]),
        .Q(regResult[6]),
        .R(iRst));
  FDRE \regResult_reg[7] 
       (.C(iClk),
        .CE(1'b1),
        .D(regResult[15]),
        .Q(regResult[7]),
        .R(iRst));
  FDRE \regResult_reg[8] 
       (.C(iClk),
        .CE(1'b1),
        .D(result[0]),
        .Q(regResult[8]),
        .R(iRst));
  FDRE \regResult_reg[9] 
       (.C(iClk),
        .CE(1'b1),
        .D(result[1]),
        .Q(regResult[9]),
        .R(iRst));
endmodule

(* ORIG_REF_NAME = "uart_receiver" *) 
module design_1_uart_top_0_0_uart_receiver
   (rCnt,
    E,
    \FSM_onehot_rFSM_reg[2] ,
    \rCnt_reg[1] ,
    \FSM_onehot_rCurrentState_reg[5]_0 ,
    D,
    \rBufferCurrent_reg[7]_0 ,
    iRx,
    iClk,
    Q,
    \rCnt_reg[0] ,
    \rCnt_reg[0]_0 ,
    \FSM_onehot_rFSM_reg[1] ,
    \FSM_onehot_rFSM_reg[1]_0 ,
    iRst);
  output rCnt;
  output [0:0]E;
  output [0:0]\FSM_onehot_rFSM_reg[2] ;
  output \rCnt_reg[1] ;
  output [0:0]\FSM_onehot_rCurrentState_reg[5]_0 ;
  output [1:0]D;
  output [7:0]\rBufferCurrent_reg[7]_0 ;
  input iRx;
  input iClk;
  input [4:0]Q;
  input \rCnt_reg[0] ;
  input \rCnt_reg[0]_0 ;
  input \FSM_onehot_rFSM_reg[1] ;
  input \FSM_onehot_rFSM_reg[1]_0 ;
  input iRst;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_rCurrentState[0]_i_1_n_0 ;
  wire \FSM_onehot_rCurrentState[1]_i_1_n_0 ;
  wire \FSM_onehot_rCurrentState[2]_i_1_n_0 ;
  wire \FSM_onehot_rCurrentState[2]_i_2_n_0 ;
  wire \FSM_onehot_rCurrentState[2]_i_3_n_0 ;
  wire \FSM_onehot_rCurrentState[2]_i_4_n_0 ;
  wire \FSM_onehot_rCurrentState[3]_i_1_n_0 ;
  wire \FSM_onehot_rCurrentState[3]_i_2_n_0 ;
  wire \FSM_onehot_rCurrentState[4]_i_1_n_0 ;
  wire \FSM_onehot_rCurrentState[4]_i_2_n_0 ;
  wire \FSM_onehot_rCurrentState[4]_i_3_n_0 ;
  wire \FSM_onehot_rCurrentState[4]_i_4_n_0 ;
  wire \FSM_onehot_rCurrentState[4]_i_5_n_0 ;
  wire \FSM_onehot_rCurrentState[5]_i_1_n_0 ;
  wire \FSM_onehot_rCurrentState[5]_i_2_n_0 ;
  wire \FSM_onehot_rCurrentState[5]_i_3_n_0 ;
  wire \FSM_onehot_rCurrentState[5]_i_4_n_0 ;
  wire [0:0]\FSM_onehot_rCurrentState_reg[5]_0 ;
  wire \FSM_onehot_rCurrentState_reg_n_0_[0] ;
  wire \FSM_onehot_rCurrentState_reg_n_0_[1] ;
  wire \FSM_onehot_rCurrentState_reg_n_0_[2] ;
  wire \FSM_onehot_rCurrentState_reg_n_0_[4] ;
  wire \FSM_onehot_rFSM_reg[1] ;
  wire \FSM_onehot_rFSM_reg[1]_0 ;
  wire [0:0]\FSM_onehot_rFSM_reg[2] ;
  wire [4:0]Q;
  wire [11:1]data0;
  wire iClk;
  wire iRst;
  wire iRx;
  wire [2:0]rBitCountCurrent;
  wire \rBitCountCurrent[0]_i_1_n_0 ;
  wire \rBitCountCurrent[1]_i_1_n_0 ;
  wire \rBitCountCurrent[2]_i_1_n_0 ;
  wire \rBitCountCurrent[2]_i_3_n_0 ;
  wire [7:0]\rBufferCurrent_reg[7]_0 ;
  wire rCnt;
  wire [11:0]rCntClockCurrent;
  wire \rCntClockCurrent[0]_i_1_n_0 ;
  wire \rCntClockCurrent[10]_i_1_n_0 ;
  wire \rCntClockCurrent[10]_i_2_n_0 ;
  wire \rCntClockCurrent[10]_i_3_n_0 ;
  wire \rCntClockCurrent[11]_i_1_n_0 ;
  wire \rCntClockCurrent[11]_i_2_n_0 ;
  wire \rCntClockCurrent[11]_i_3_n_0 ;
  wire \rCntClockCurrent[11]_i_4_n_0 ;
  wire \rCntClockCurrent[1]_i_1_n_0 ;
  wire \rCntClockCurrent[2]_i_1_n_0 ;
  wire \rCntClockCurrent[3]_i_1_n_0 ;
  wire \rCntClockCurrent[4]_i_1_n_0 ;
  wire \rCntClockCurrent[5]_i_1_n_0 ;
  wire \rCntClockCurrent[6]_i_1_n_0 ;
  wire \rCntClockCurrent[7]_i_1_n_0 ;
  wire \rCntClockCurrent[8]_i_1_n_0 ;
  wire \rCntClockCurrent[9]_i_1_n_0 ;
  wire \rCntClockCurrent[9]_i_2_n_0 ;
  wire \rCnt_reg[0] ;
  wire \rCnt_reg[0]_0 ;
  wire \rCnt_reg[1] ;
  wire rDataCurrent1;
  wire rDataCurrent2;
  wire wBitCountNext;
  wire wBufferNext;
  wire wCntClockNext0_carry__0_n_0;
  wire wCntClockNext0_carry__0_n_1;
  wire wCntClockNext0_carry__0_n_2;
  wire wCntClockNext0_carry__0_n_3;
  wire wCntClockNext0_carry__1_n_2;
  wire wCntClockNext0_carry__1_n_3;
  wire wCntClockNext0_carry_n_0;
  wire wCntClockNext0_carry_n_1;
  wire wCntClockNext0_carry_n_2;
  wire wCntClockNext0_carry_n_3;
  wire [3:2]NLW_wCntClockNext0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_wCntClockNext0_carry__1_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_onehot_rCurrentState[0]_i_1 
       (.I0(\FSM_onehot_rCurrentState_reg[5]_0 ),
        .I1(\FSM_onehot_rCurrentState_reg_n_0_[0] ),
        .I2(rDataCurrent2),
        .O(\FSM_onehot_rCurrentState[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_rCurrentState[1]_i_1 
       (.I0(\FSM_onehot_rCurrentState[2]_i_4_n_0 ),
        .I1(\FSM_onehot_rCurrentState_reg_n_0_[1] ),
        .I2(rDataCurrent2),
        .I3(\FSM_onehot_rCurrentState_reg_n_0_[0] ),
        .O(\FSM_onehot_rCurrentState[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFD0D0D0)) 
    \FSM_onehot_rCurrentState[2]_i_1 
       (.I0(\FSM_onehot_rCurrentState[4]_i_2_n_0 ),
        .I1(\FSM_onehot_rCurrentState[2]_i_2_n_0 ),
        .I2(\FSM_onehot_rCurrentState[2]_i_3_n_0 ),
        .I3(\FSM_onehot_rCurrentState_reg_n_0_[1] ),
        .I4(\FSM_onehot_rCurrentState[2]_i_4_n_0 ),
        .I5(wBufferNext),
        .O(\FSM_onehot_rCurrentState[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_onehot_rCurrentState[2]_i_2 
       (.I0(rBitCountCurrent[2]),
        .I1(rBitCountCurrent[1]),
        .I2(rBitCountCurrent[0]),
        .O(\FSM_onehot_rCurrentState[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_rCurrentState[2]_i_3 
       (.I0(\FSM_onehot_rCurrentState_reg_n_0_[2] ),
        .I1(\FSM_onehot_rCurrentState[3]_i_2_n_0 ),
        .O(\FSM_onehot_rCurrentState[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \FSM_onehot_rCurrentState[2]_i_4 
       (.I0(\FSM_onehot_rCurrentState[5]_i_2_n_0 ),
        .I1(rCntClockCurrent[1]),
        .I2(rCntClockCurrent[0]),
        .I3(rCntClockCurrent[3]),
        .I4(rCntClockCurrent[2]),
        .I5(rCntClockCurrent[4]),
        .O(\FSM_onehot_rCurrentState[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_rCurrentState[3]_i_1 
       (.I0(\FSM_onehot_rCurrentState_reg_n_0_[2] ),
        .I1(\FSM_onehot_rCurrentState[3]_i_2_n_0 ),
        .O(\FSM_onehot_rCurrentState[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \FSM_onehot_rCurrentState[3]_i_2 
       (.I0(\FSM_onehot_rCurrentState[5]_i_3_n_0 ),
        .I1(rCntClockCurrent[9]),
        .I2(rCntClockCurrent[8]),
        .I3(rCntClockCurrent[10]),
        .I4(rCntClockCurrent[5]),
        .I5(\FSM_onehot_rCurrentState[5]_i_4_n_0 ),
        .O(\FSM_onehot_rCurrentState[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_rCurrentState[4]_i_1 
       (.I0(\FSM_onehot_rCurrentState[4]_i_2_n_0 ),
        .I1(\FSM_onehot_rCurrentState_reg_n_0_[4] ),
        .I2(\FSM_onehot_rCurrentState[4]_i_3_n_0 ),
        .I3(\FSM_onehot_rCurrentState_reg_n_0_[2] ),
        .O(\FSM_onehot_rCurrentState[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \FSM_onehot_rCurrentState[4]_i_2 
       (.I0(rCntClockCurrent[0]),
        .I1(rCntClockCurrent[2]),
        .I2(rCntClockCurrent[1]),
        .I3(rCntClockCurrent[4]),
        .I4(rCntClockCurrent[3]),
        .I5(\FSM_onehot_rCurrentState[5]_i_2_n_0 ),
        .O(\FSM_onehot_rCurrentState[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_onehot_rCurrentState[4]_i_3 
       (.I0(\FSM_onehot_rCurrentState[4]_i_4_n_0 ),
        .I1(rCntClockCurrent[9]),
        .I2(rCntClockCurrent[8]),
        .I3(rCntClockCurrent[1]),
        .I4(rCntClockCurrent[11]),
        .I5(\FSM_onehot_rCurrentState[2]_i_2_n_0 ),
        .O(\FSM_onehot_rCurrentState[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \FSM_onehot_rCurrentState[4]_i_4 
       (.I0(rCntClockCurrent[5]),
        .I1(rCntClockCurrent[4]),
        .I2(rCntClockCurrent[2]),
        .I3(rCntClockCurrent[3]),
        .I4(\FSM_onehot_rCurrentState[4]_i_5_n_0 ),
        .O(\FSM_onehot_rCurrentState[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \FSM_onehot_rCurrentState[4]_i_5 
       (.I0(rCntClockCurrent[7]),
        .I1(rCntClockCurrent[6]),
        .I2(rCntClockCurrent[10]),
        .I3(rCntClockCurrent[0]),
        .O(\FSM_onehot_rCurrentState[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \FSM_onehot_rCurrentState[5]_i_1 
       (.I0(\FSM_onehot_rCurrentState_reg_n_0_[4] ),
        .I1(\FSM_onehot_rCurrentState[5]_i_2_n_0 ),
        .I2(\FSM_onehot_rCurrentState[5]_i_3_n_0 ),
        .O(\FSM_onehot_rCurrentState[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    \FSM_onehot_rCurrentState[5]_i_2 
       (.I0(\FSM_onehot_rCurrentState[5]_i_4_n_0 ),
        .I1(rCntClockCurrent[8]),
        .I2(rCntClockCurrent[9]),
        .I3(rCntClockCurrent[5]),
        .I4(rCntClockCurrent[10]),
        .O(\FSM_onehot_rCurrentState[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \FSM_onehot_rCurrentState[5]_i_3 
       (.I0(rCntClockCurrent[3]),
        .I1(rCntClockCurrent[4]),
        .I2(rCntClockCurrent[1]),
        .I3(rCntClockCurrent[2]),
        .I4(rCntClockCurrent[0]),
        .O(\FSM_onehot_rCurrentState[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_rCurrentState[5]_i_4 
       (.I0(rCntClockCurrent[11]),
        .I1(rCntClockCurrent[7]),
        .I2(rCntClockCurrent[6]),
        .O(\FSM_onehot_rCurrentState[5]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "SIDLE:000001,RXSTART:000010,RXSAMPLE:001000,RXDATA:000100,RXSTOP:010000,SDONE:100000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_rCurrentState_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rCurrentState[0]_i_1_n_0 ),
        .Q(\FSM_onehot_rCurrentState_reg_n_0_[0] ),
        .S(iRst));
  (* FSM_ENCODED_STATES = "SIDLE:000001,RXSTART:000010,RXSAMPLE:001000,RXDATA:000100,RXSTOP:010000,SDONE:100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rCurrentState_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rCurrentState[1]_i_1_n_0 ),
        .Q(\FSM_onehot_rCurrentState_reg_n_0_[1] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "SIDLE:000001,RXSTART:000010,RXSAMPLE:001000,RXDATA:000100,RXSTOP:010000,SDONE:100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rCurrentState_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rCurrentState[2]_i_1_n_0 ),
        .Q(\FSM_onehot_rCurrentState_reg_n_0_[2] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "SIDLE:000001,RXSTART:000010,RXSAMPLE:001000,RXDATA:000100,RXSTOP:010000,SDONE:100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rCurrentState_reg[3] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rCurrentState[3]_i_1_n_0 ),
        .Q(wBufferNext),
        .R(iRst));
  (* FSM_ENCODED_STATES = "SIDLE:000001,RXSTART:000010,RXSAMPLE:001000,RXDATA:000100,RXSTOP:010000,SDONE:100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rCurrentState_reg[4] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rCurrentState[4]_i_1_n_0 ),
        .Q(\FSM_onehot_rCurrentState_reg_n_0_[4] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "SIDLE:000001,RXSTART:000010,RXSAMPLE:001000,RXDATA:000100,RXSTOP:010000,SDONE:100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rCurrentState_reg[5] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rCurrentState[5]_i_1_n_0 ),
        .Q(\FSM_onehot_rCurrentState_reg[5]_0 ),
        .R(iRst));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hFFBFAAAA)) 
    \FSM_onehot_rFSM[1]_i_1 
       (.I0(Q[0]),
        .I1(\FSM_onehot_rCurrentState_reg[5]_0 ),
        .I2(\FSM_onehot_rFSM_reg[1]_0 ),
        .I3(\FSM_onehot_rFSM_reg[1] ),
        .I4(Q[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \FSM_onehot_rFSM[2]_i_1 
       (.I0(Q[1]),
        .I1(\FSM_onehot_rCurrentState_reg[5]_0 ),
        .I2(\FSM_onehot_rFSM_reg[1]_0 ),
        .I3(\FSM_onehot_rFSM_reg[1] ),
        .I4(Q[2]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rA[15]_i_1 
       (.I0(Q[1]),
        .I1(\FSM_onehot_rCurrentState_reg[5]_0 ),
        .I2(\FSM_onehot_rFSM_reg[1] ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rB[15]_i_1 
       (.I0(Q[2]),
        .I1(\FSM_onehot_rCurrentState_reg[5]_0 ),
        .I2(\FSM_onehot_rFSM_reg[1] ),
        .O(\FSM_onehot_rFSM_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h8FA0)) 
    \rBitCountCurrent[0]_i_1 
       (.I0(\FSM_onehot_rCurrentState_reg_n_0_[2] ),
        .I1(\FSM_onehot_rCurrentState[4]_i_3_n_0 ),
        .I2(wBitCountNext),
        .I3(rBitCountCurrent[0]),
        .O(\rBitCountCurrent[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8A0AFFFFA0A00000)) 
    \rBitCountCurrent[1]_i_1 
       (.I0(\FSM_onehot_rCurrentState_reg_n_0_[2] ),
        .I1(\FSM_onehot_rCurrentState[4]_i_2_n_0 ),
        .I2(rBitCountCurrent[0]),
        .I3(rBitCountCurrent[2]),
        .I4(wBitCountNext),
        .I5(rBitCountCurrent[1]),
        .O(\rBitCountCurrent[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA2AFFFFAA800000)) 
    \rBitCountCurrent[2]_i_1 
       (.I0(\FSM_onehot_rCurrentState_reg_n_0_[2] ),
        .I1(rBitCountCurrent[1]),
        .I2(rBitCountCurrent[0]),
        .I3(\FSM_onehot_rCurrentState[4]_i_3_n_0 ),
        .I4(wBitCountNext),
        .I5(rBitCountCurrent[2]),
        .O(\rBitCountCurrent[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hAAAAAEAA)) 
    \rBitCountCurrent[2]_i_2 
       (.I0(\rBitCountCurrent[2]_i_3_n_0 ),
        .I1(\FSM_onehot_rCurrentState[5]_i_3_n_0 ),
        .I2(\FSM_onehot_rCurrentState[5]_i_2_n_0 ),
        .I3(\FSM_onehot_rCurrentState_reg_n_0_[2] ),
        .I4(\FSM_onehot_rCurrentState[3]_i_2_n_0 ),
        .O(wBitCountNext));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \rBitCountCurrent[2]_i_3 
       (.I0(\FSM_onehot_rCurrentState_reg_n_0_[1] ),
        .I1(\FSM_onehot_rCurrentState_reg_n_0_[0] ),
        .I2(\FSM_onehot_rCurrentState_reg[5]_0 ),
        .O(\rBitCountCurrent[2]_i_3_n_0 ));
  FDRE \rBitCountCurrent_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rBitCountCurrent[0]_i_1_n_0 ),
        .Q(rBitCountCurrent[0]),
        .R(iRst));
  FDRE \rBitCountCurrent_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rBitCountCurrent[1]_i_1_n_0 ),
        .Q(rBitCountCurrent[1]),
        .R(iRst));
  FDRE \rBitCountCurrent_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rBitCountCurrent[2]_i_1_n_0 ),
        .Q(rBitCountCurrent[2]),
        .R(iRst));
  FDRE \rBufferCurrent_reg[0] 
       (.C(iClk),
        .CE(wBufferNext),
        .D(\rBufferCurrent_reg[7]_0 [1]),
        .Q(\rBufferCurrent_reg[7]_0 [0]),
        .R(iRst));
  FDRE \rBufferCurrent_reg[1] 
       (.C(iClk),
        .CE(wBufferNext),
        .D(\rBufferCurrent_reg[7]_0 [2]),
        .Q(\rBufferCurrent_reg[7]_0 [1]),
        .R(iRst));
  FDRE \rBufferCurrent_reg[2] 
       (.C(iClk),
        .CE(wBufferNext),
        .D(\rBufferCurrent_reg[7]_0 [3]),
        .Q(\rBufferCurrent_reg[7]_0 [2]),
        .R(iRst));
  FDRE \rBufferCurrent_reg[3] 
       (.C(iClk),
        .CE(wBufferNext),
        .D(\rBufferCurrent_reg[7]_0 [4]),
        .Q(\rBufferCurrent_reg[7]_0 [3]),
        .R(iRst));
  FDRE \rBufferCurrent_reg[4] 
       (.C(iClk),
        .CE(wBufferNext),
        .D(\rBufferCurrent_reg[7]_0 [5]),
        .Q(\rBufferCurrent_reg[7]_0 [4]),
        .R(iRst));
  FDRE \rBufferCurrent_reg[5] 
       (.C(iClk),
        .CE(wBufferNext),
        .D(\rBufferCurrent_reg[7]_0 [6]),
        .Q(\rBufferCurrent_reg[7]_0 [5]),
        .R(iRst));
  FDRE \rBufferCurrent_reg[6] 
       (.C(iClk),
        .CE(wBufferNext),
        .D(\rBufferCurrent_reg[7]_0 [7]),
        .Q(\rBufferCurrent_reg[7]_0 [6]),
        .R(iRst));
  FDRE \rBufferCurrent_reg[7] 
       (.C(iClk),
        .CE(wBufferNext),
        .D(rDataCurrent2),
        .Q(\rBufferCurrent_reg[7]_0 [7]),
        .R(iRst));
  LUT6 #(
    .INIT(64'h5555454555554544)) 
    \rCntClockCurrent[0]_i_1 
       (.I0(rCntClockCurrent[0]),
        .I1(\rCntClockCurrent[11]_i_2_n_0 ),
        .I2(\FSM_onehot_rCurrentState[4]_i_2_n_0 ),
        .I3(\FSM_onehot_rCurrentState_reg_n_0_[2] ),
        .I4(wBufferNext),
        .I5(\FSM_onehot_rCurrentState_reg_n_0_[4] ),
        .O(\rCntClockCurrent[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF20000)) 
    \rCntClockCurrent[10]_i_1 
       (.I0(\rCntClockCurrent[10]_i_2_n_0 ),
        .I1(\FSM_onehot_rCurrentState[3]_i_2_n_0 ),
        .I2(\rCntClockCurrent[11]_i_2_n_0 ),
        .I3(\rCntClockCurrent[10]_i_3_n_0 ),
        .I4(data0[10]),
        .I5(\FSM_onehot_rCurrentState[5]_i_1_n_0 ),
        .O(\rCntClockCurrent[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \rCntClockCurrent[10]_i_2 
       (.I0(\FSM_onehot_rCurrentState_reg_n_0_[2] ),
        .I1(\FSM_onehot_rCurrentState[5]_i_2_n_0 ),
        .I2(\FSM_onehot_rCurrentState[5]_i_3_n_0 ),
        .O(\rCntClockCurrent[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rCntClockCurrent[10]_i_3 
       (.I0(wBufferNext),
        .I1(\FSM_onehot_rCurrentState_reg_n_0_[4] ),
        .O(\rCntClockCurrent[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88888A88AAAAAAAA)) 
    \rCntClockCurrent[11]_i_1 
       (.I0(data0[11]),
        .I1(\rCntClockCurrent[11]_i_2_n_0 ),
        .I2(\FSM_onehot_rCurrentState[3]_i_2_n_0 ),
        .I3(\FSM_onehot_rCurrentState_reg_n_0_[2] ),
        .I4(\FSM_onehot_rCurrentState[4]_i_2_n_0 ),
        .I5(\rCntClockCurrent[11]_i_3_n_0 ),
        .O(\rCntClockCurrent[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rCntClockCurrent[11]_i_2 
       (.I0(\FSM_onehot_rCurrentState_reg_n_0_[1] ),
        .I1(\rCntClockCurrent[11]_i_4_n_0 ),
        .I2(\FSM_onehot_rCurrentState[5]_i_2_n_0 ),
        .O(\rCntClockCurrent[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h0455)) 
    \rCntClockCurrent[11]_i_3 
       (.I0(wBufferNext),
        .I1(\FSM_onehot_rCurrentState[5]_i_3_n_0 ),
        .I2(\FSM_onehot_rCurrentState[5]_i_2_n_0 ),
        .I3(\FSM_onehot_rCurrentState_reg_n_0_[4] ),
        .O(\rCntClockCurrent[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hFFDFFFFF)) 
    \rCntClockCurrent[11]_i_4 
       (.I0(rCntClockCurrent[4]),
        .I1(rCntClockCurrent[2]),
        .I2(rCntClockCurrent[3]),
        .I3(rCntClockCurrent[0]),
        .I4(rCntClockCurrent[1]),
        .O(\rCntClockCurrent[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88888A88AAAAAAAA)) 
    \rCntClockCurrent[1]_i_1 
       (.I0(data0[1]),
        .I1(\rCntClockCurrent[11]_i_2_n_0 ),
        .I2(\FSM_onehot_rCurrentState[3]_i_2_n_0 ),
        .I3(\FSM_onehot_rCurrentState_reg_n_0_[2] ),
        .I4(\FSM_onehot_rCurrentState[4]_i_2_n_0 ),
        .I5(\rCntClockCurrent[11]_i_3_n_0 ),
        .O(\rCntClockCurrent[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFAFEEAAEEAA)) 
    \rCntClockCurrent[2]_i_1 
       (.I0(\FSM_onehot_rCurrentState[3]_i_1_n_0 ),
        .I1(\FSM_onehot_rCurrentState[4]_i_2_n_0 ),
        .I2(\rCntClockCurrent[9]_i_2_n_0 ),
        .I3(\FSM_onehot_rCurrentState_reg_n_0_[4] ),
        .I4(wBufferNext),
        .I5(data0[2]),
        .O(\rCntClockCurrent[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFAFEEAAEEAA)) 
    \rCntClockCurrent[3]_i_1 
       (.I0(\FSM_onehot_rCurrentState[3]_i_1_n_0 ),
        .I1(\FSM_onehot_rCurrentState[4]_i_2_n_0 ),
        .I2(\rCntClockCurrent[9]_i_2_n_0 ),
        .I3(\FSM_onehot_rCurrentState_reg_n_0_[4] ),
        .I4(wBufferNext),
        .I5(data0[3]),
        .O(\rCntClockCurrent[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFD0FFF0FFD0)) 
    \rCntClockCurrent[4]_i_1 
       (.I0(\rCntClockCurrent[9]_i_2_n_0 ),
        .I1(wBufferNext),
        .I2(data0[4]),
        .I3(\FSM_onehot_rCurrentState[3]_i_1_n_0 ),
        .I4(\FSM_onehot_rCurrentState_reg_n_0_[4] ),
        .I5(\FSM_onehot_rCurrentState[4]_i_2_n_0 ),
        .O(\rCntClockCurrent[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFAEAAAAAAAA)) 
    \rCntClockCurrent[5]_i_1 
       (.I0(\FSM_onehot_rCurrentState[5]_i_1_n_0 ),
        .I1(\rCntClockCurrent[10]_i_2_n_0 ),
        .I2(\FSM_onehot_rCurrentState[3]_i_2_n_0 ),
        .I3(\rCntClockCurrent[11]_i_2_n_0 ),
        .I4(\rCntClockCurrent[10]_i_3_n_0 ),
        .I5(data0[5]),
        .O(\rCntClockCurrent[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888A88AAAAAAAA)) 
    \rCntClockCurrent[6]_i_1 
       (.I0(data0[6]),
        .I1(\rCntClockCurrent[11]_i_2_n_0 ),
        .I2(\FSM_onehot_rCurrentState[3]_i_2_n_0 ),
        .I3(\FSM_onehot_rCurrentState_reg_n_0_[2] ),
        .I4(\FSM_onehot_rCurrentState[4]_i_2_n_0 ),
        .I5(\rCntClockCurrent[11]_i_3_n_0 ),
        .O(\rCntClockCurrent[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888A88AAAAAAAA)) 
    \rCntClockCurrent[7]_i_1 
       (.I0(data0[7]),
        .I1(\rCntClockCurrent[11]_i_2_n_0 ),
        .I2(\FSM_onehot_rCurrentState[3]_i_2_n_0 ),
        .I3(\FSM_onehot_rCurrentState_reg_n_0_[2] ),
        .I4(\FSM_onehot_rCurrentState[4]_i_2_n_0 ),
        .I5(\rCntClockCurrent[11]_i_3_n_0 ),
        .O(\rCntClockCurrent[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888A88AAAAAAAA)) 
    \rCntClockCurrent[8]_i_1 
       (.I0(data0[8]),
        .I1(\rCntClockCurrent[11]_i_2_n_0 ),
        .I2(\FSM_onehot_rCurrentState[3]_i_2_n_0 ),
        .I3(\FSM_onehot_rCurrentState_reg_n_0_[2] ),
        .I4(\FSM_onehot_rCurrentState[4]_i_2_n_0 ),
        .I5(\rCntClockCurrent[11]_i_3_n_0 ),
        .O(\rCntClockCurrent[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEFFFFAAAAAAAA)) 
    \rCntClockCurrent[9]_i_1 
       (.I0(\FSM_onehot_rCurrentState[3]_i_1_n_0 ),
        .I1(\FSM_onehot_rCurrentState_reg_n_0_[4] ),
        .I2(\FSM_onehot_rCurrentState[4]_i_2_n_0 ),
        .I3(wBufferNext),
        .I4(\rCntClockCurrent[9]_i_2_n_0 ),
        .I5(data0[9]),
        .O(\rCntClockCurrent[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h00703377)) 
    \rCntClockCurrent[9]_i_2 
       (.I0(\rCntClockCurrent[11]_i_4_n_0 ),
        .I1(\FSM_onehot_rCurrentState_reg_n_0_[1] ),
        .I2(\FSM_onehot_rCurrentState[5]_i_3_n_0 ),
        .I3(\FSM_onehot_rCurrentState[5]_i_2_n_0 ),
        .I4(\FSM_onehot_rCurrentState_reg_n_0_[2] ),
        .O(\rCntClockCurrent[9]_i_2_n_0 ));
  FDRE \rCntClockCurrent_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCntClockCurrent[0]_i_1_n_0 ),
        .Q(rCntClockCurrent[0]),
        .R(iRst));
  FDRE \rCntClockCurrent_reg[10] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCntClockCurrent[10]_i_1_n_0 ),
        .Q(rCntClockCurrent[10]),
        .R(iRst));
  FDRE \rCntClockCurrent_reg[11] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCntClockCurrent[11]_i_1_n_0 ),
        .Q(rCntClockCurrent[11]),
        .R(iRst));
  FDRE \rCntClockCurrent_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCntClockCurrent[1]_i_1_n_0 ),
        .Q(rCntClockCurrent[1]),
        .R(iRst));
  FDRE \rCntClockCurrent_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCntClockCurrent[2]_i_1_n_0 ),
        .Q(rCntClockCurrent[2]),
        .R(iRst));
  FDRE \rCntClockCurrent_reg[3] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCntClockCurrent[3]_i_1_n_0 ),
        .Q(rCntClockCurrent[3]),
        .R(iRst));
  FDRE \rCntClockCurrent_reg[4] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCntClockCurrent[4]_i_1_n_0 ),
        .Q(rCntClockCurrent[4]),
        .R(iRst));
  FDRE \rCntClockCurrent_reg[5] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCntClockCurrent[5]_i_1_n_0 ),
        .Q(rCntClockCurrent[5]),
        .R(iRst));
  FDRE \rCntClockCurrent_reg[6] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCntClockCurrent[6]_i_1_n_0 ),
        .Q(rCntClockCurrent[6]),
        .R(iRst));
  FDRE \rCntClockCurrent_reg[7] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCntClockCurrent[7]_i_1_n_0 ),
        .Q(rCntClockCurrent[7]),
        .R(iRst));
  FDRE \rCntClockCurrent_reg[8] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCntClockCurrent[8]_i_1_n_0 ),
        .Q(rCntClockCurrent[8]),
        .R(iRst));
  FDRE \rCntClockCurrent_reg[9] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCntClockCurrent[9]_i_1_n_0 ),
        .Q(rCntClockCurrent[9]),
        .R(iRst));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h10101000)) 
    \rCnt[0]_i_3 
       (.I0(\FSM_onehot_rFSM_reg[1] ),
        .I1(\FSM_onehot_rFSM_reg[1]_0 ),
        .I2(\FSM_onehot_rCurrentState_reg[5]_0 ),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(\rCnt_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFA8)) 
    \rCnt[1]_i_2 
       (.I0(Q[3]),
        .I1(\rCnt_reg[0] ),
        .I2(\rCnt_reg[0]_0 ),
        .I3(Q[4]),
        .I4(E),
        .I5(\FSM_onehot_rFSM_reg[2] ),
        .O(rCnt));
  FDRE rDataCurrent1_reg
       (.C(iClk),
        .CE(1'b1),
        .D(iRx),
        .Q(rDataCurrent1),
        .R(1'b0));
  FDRE rDataCurrent2_reg
       (.C(iClk),
        .CE(1'b1),
        .D(rDataCurrent1),
        .Q(rDataCurrent2),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 wCntClockNext0_carry
       (.CI(1'b0),
        .CO({wCntClockNext0_carry_n_0,wCntClockNext0_carry_n_1,wCntClockNext0_carry_n_2,wCntClockNext0_carry_n_3}),
        .CYINIT(rCntClockCurrent[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(rCntClockCurrent[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 wCntClockNext0_carry__0
       (.CI(wCntClockNext0_carry_n_0),
        .CO({wCntClockNext0_carry__0_n_0,wCntClockNext0_carry__0_n_1,wCntClockNext0_carry__0_n_2,wCntClockNext0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(rCntClockCurrent[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 wCntClockNext0_carry__1
       (.CI(wCntClockNext0_carry__0_n_0),
        .CO({NLW_wCntClockNext0_carry__1_CO_UNCONNECTED[3:2],wCntClockNext0_carry__1_n_2,wCntClockNext0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_wCntClockNext0_carry__1_O_UNCONNECTED[3],data0[11:9]}),
        .S({1'b0,rCntClockCurrent[11:9]}));
endmodule

(* ORIG_REF_NAME = "uart_top" *) 
module design_1_uart_top_0_0_uart_top
   (oTx,
    iRst,
    iClk,
    iRx);
  output oTx;
  input iRst;
  input iClk;
  input iRx;

  wire \FSM_onehot_rFSM[6]_i_4_n_0 ;
  wire \FSM_onehot_rFSM_reg_n_0_[0] ;
  wire \FSM_onehot_rFSM_reg_n_0_[1] ;
  wire \FSM_onehot_rFSM_reg_n_0_[2] ;
  wire \FSM_onehot_rFSM_reg_n_0_[5] ;
  wire \FSM_onehot_rFSM_reg_n_0_[6] ;
  wire MP_ADDER_INST_n_0;
  wire MP_ADDER_INST_n_1;
  wire MP_ADDER_INST_n_10;
  wire MP_ADDER_INST_n_11;
  wire MP_ADDER_INST_n_12;
  wire MP_ADDER_INST_n_13;
  wire MP_ADDER_INST_n_14;
  wire MP_ADDER_INST_n_15;
  wire MP_ADDER_INST_n_16;
  wire MP_ADDER_INST_n_17;
  wire MP_ADDER_INST_n_18;
  wire MP_ADDER_INST_n_19;
  wire MP_ADDER_INST_n_2;
  wire MP_ADDER_INST_n_20;
  wire MP_ADDER_INST_n_21;
  wire MP_ADDER_INST_n_22;
  wire MP_ADDER_INST_n_3;
  wire MP_ADDER_INST_n_5;
  wire MP_ADDER_INST_n_6;
  wire MP_ADDER_INST_n_7;
  wire MP_ADDER_INST_n_8;
  wire MP_ADDER_INST_n_9;
  wire UART_RX_INST_n_3;
  wire UART_RX_INST_n_5;
  wire UART_RX_INST_n_6;
  wire UART_TX_INST_n_0;
  wire UART_TX_INST_n_1;
  wire UART_TX_INST_n_10;
  wire UART_TX_INST_n_11;
  wire UART_TX_INST_n_12;
  wire UART_TX_INST_n_13;
  wire UART_TX_INST_n_15;
  wire UART_TX_INST_n_2;
  wire UART_TX_INST_n_3;
  wire UART_TX_INST_n_4;
  wire UART_TX_INST_n_5;
  wire UART_TX_INST_n_6;
  wire UART_TX_INST_n_7;
  wire UART_TX_INST_n_9;
  wire iClk;
  wire iRst;
  wire iRx;
  wire [23:8]in9;
  wire oTx;
  wire [15:0]rA;
  wire rA_1;
  wire [15:0]rB;
  wire rB_2;
  wire [7:0]rBufferCurrent;
  wire rCnt;
  wire \rCnt[0]_i_1_n_0 ;
  wire \rCnt[1]_i_1_n_0 ;
  wire \rCnt[1]_i_3_n_0 ;
  wire \rCnt_reg_n_0_[0] ;
  wire \rCnt_reg_n_0_[1] ;
  wire rResult;
  wire \rResult[17]_i_1_n_0 ;
  wire \rResult[18]_i_1_n_0 ;
  wire \rResult[19]_i_1_n_0 ;
  wire \rResult[20]_i_1_n_0 ;
  wire \rResult[21]_i_1_n_0 ;
  wire \rResult[22]_i_1_n_0 ;
  wire \rResult[23]_i_2_n_0 ;
  wire \rResult_reg_n_0_[16] ;
  wire \rResult_reg_n_0_[17] ;
  wire \rResult_reg_n_0_[18] ;
  wire \rResult_reg_n_0_[19] ;
  wire \rResult_reg_n_0_[20] ;
  wire \rResult_reg_n_0_[21] ;
  wire \rResult_reg_n_0_[22] ;
  wire \rResult_reg_n_0_[23] ;
  wire rStartAdder;
  wire rStartAdder_reg_n_0;
  wire [7:0]rTxByte;
  wire rTxByte_0;
  wire rTxStart_reg_n_0;
  wire wRxDone;
  wire wTxDone;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_rFSM[6]_i_4 
       (.I0(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_reg_n_0_[2] ),
        .I2(\FSM_onehot_rFSM_reg_n_0_[5] ),
        .I3(\FSM_onehot_rFSM_reg_n_0_[6] ),
        .I4(rTxByte_0),
        .I5(\FSM_onehot_rFSM_reg_n_0_[0] ),
        .O(\FSM_onehot_rFSM[6]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "s_IDLE:0000001,s_OP_A_RX:0000010,s_OP_B_RX:0000100,s_ADD_OPS:0001000,s_DONE:1000000,s_WAIT_TX:0100000,s_TX:0010000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_rFSM_reg[0] 
       (.C(iClk),
        .CE(MP_ADDER_INST_n_0),
        .D(\FSM_onehot_rFSM_reg_n_0_[6] ),
        .Q(\FSM_onehot_rFSM_reg_n_0_[0] ),
        .S(iRst));
  (* FSM_ENCODED_STATES = "s_IDLE:0000001,s_OP_A_RX:0000010,s_OP_B_RX:0000100,s_ADD_OPS:0001000,s_DONE:1000000,s_WAIT_TX:0100000,s_TX:0010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_reg[1] 
       (.C(iClk),
        .CE(MP_ADDER_INST_n_0),
        .D(UART_RX_INST_n_6),
        .Q(\FSM_onehot_rFSM_reg_n_0_[1] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s_IDLE:0000001,s_OP_A_RX:0000010,s_OP_B_RX:0000100,s_ADD_OPS:0001000,s_DONE:1000000,s_WAIT_TX:0100000,s_TX:0010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_reg[2] 
       (.C(iClk),
        .CE(MP_ADDER_INST_n_0),
        .D(UART_RX_INST_n_5),
        .Q(\FSM_onehot_rFSM_reg_n_0_[2] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s_IDLE:0000001,s_OP_A_RX:0000010,s_OP_B_RX:0000100,s_ADD_OPS:0001000,s_DONE:1000000,s_WAIT_TX:0100000,s_TX:0010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_reg[3] 
       (.C(iClk),
        .CE(MP_ADDER_INST_n_0),
        .D(MP_ADDER_INST_n_3),
        .Q(rStartAdder),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s_IDLE:0000001,s_OP_A_RX:0000010,s_OP_B_RX:0000100,s_ADD_OPS:0001000,s_DONE:1000000,s_WAIT_TX:0100000,s_TX:0010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_reg[4] 
       (.C(iClk),
        .CE(MP_ADDER_INST_n_0),
        .D(MP_ADDER_INST_n_2),
        .Q(rTxByte_0),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s_IDLE:0000001,s_OP_A_RX:0000010,s_OP_B_RX:0000100,s_ADD_OPS:0001000,s_DONE:1000000,s_WAIT_TX:0100000,s_TX:0010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_reg[5] 
       (.C(iClk),
        .CE(MP_ADDER_INST_n_0),
        .D(UART_TX_INST_n_11),
        .Q(\FSM_onehot_rFSM_reg_n_0_[5] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s_IDLE:0000001,s_OP_A_RX:0000010,s_OP_B_RX:0000100,s_ADD_OPS:0001000,s_DONE:1000000,s_WAIT_TX:0100000,s_TX:0010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_reg[6] 
       (.C(iClk),
        .CE(MP_ADDER_INST_n_0),
        .D(UART_TX_INST_n_10),
        .Q(\FSM_onehot_rFSM_reg_n_0_[6] ),
        .R(iRst));
  design_1_uart_top_0_0_mp_adder MP_ADDER_INST
       (.D({MP_ADDER_INST_n_2,MP_ADDER_INST_n_3}),
        .E(MP_ADDER_INST_n_0),
        .\FSM_onehot_rFSM_reg[0] (\FSM_onehot_rFSM[6]_i_4_n_0 ),
        .\FSM_onehot_rFSM_reg[3] (wRxDone),
        .\FSM_onehot_rFSM_reg[4] (rResult),
        .\FSM_onehot_rFSM_reg[4]_0 (wTxDone),
        .\FSM_sequential_rFSM_current_reg[2]_0 (MP_ADDER_INST_n_1),
        .Q({\FSM_onehot_rFSM_reg_n_0_[5] ,rTxByte_0,rStartAdder,\FSM_onehot_rFSM_reg_n_0_[2] }),
        .iClk(iClk),
        .iRst(iRst),
        .\rCnt_reg[0] (MP_ADDER_INST_n_22),
        .\rResult_reg[0] (UART_TX_INST_n_13),
        .\rResult_reg[16] (in9[16:8]),
        .\rResult_reg[8] ({MP_ADDER_INST_n_5,MP_ADDER_INST_n_6,MP_ADDER_INST_n_7,MP_ADDER_INST_n_8,MP_ADDER_INST_n_9,MP_ADDER_INST_n_10,MP_ADDER_INST_n_11,MP_ADDER_INST_n_12,MP_ADDER_INST_n_13,MP_ADDER_INST_n_14,MP_ADDER_INST_n_15,MP_ADDER_INST_n_16,MP_ADDER_INST_n_17,MP_ADDER_INST_n_18,MP_ADDER_INST_n_19,MP_ADDER_INST_n_20,MP_ADDER_INST_n_21}),
        .rStartAdder_reg(\rCnt_reg_n_0_[0] ),
        .rStartAdder_reg_0(\rCnt_reg_n_0_[1] ),
        .rStartAdder_reg_1(rStartAdder_reg_n_0),
        .\regA_Q_reg[15]_0 (rA),
        .\regB_Q_reg[15]_0 (rB));
  design_1_uart_top_0_0_uart_receiver UART_RX_INST
       (.D({UART_RX_INST_n_5,UART_RX_INST_n_6}),
        .E(rA_1),
        .\FSM_onehot_rCurrentState_reg[5]_0 (wRxDone),
        .\FSM_onehot_rFSM_reg[1] (\rCnt_reg_n_0_[1] ),
        .\FSM_onehot_rFSM_reg[1]_0 (\rCnt_reg_n_0_[0] ),
        .\FSM_onehot_rFSM_reg[2] (rB_2),
        .Q({rTxByte_0,rStartAdder,\FSM_onehot_rFSM_reg_n_0_[2] ,\FSM_onehot_rFSM_reg_n_0_[1] ,\FSM_onehot_rFSM_reg_n_0_[0] }),
        .iClk(iClk),
        .iRst(iRst),
        .iRx(iRx),
        .\rBufferCurrent_reg[7]_0 (rBufferCurrent),
        .rCnt(rCnt),
        .\rCnt_reg[0] (MP_ADDER_INST_n_1),
        .\rCnt_reg[0]_0 (\rCnt[1]_i_3_n_0 ),
        .\rCnt_reg[1] (UART_RX_INST_n_3));
  design_1_uart_top_0_0_uart_tx UART_TX_INST
       (.D({UART_TX_INST_n_0,UART_TX_INST_n_1,UART_TX_INST_n_2,UART_TX_INST_n_3,UART_TX_INST_n_4,UART_TX_INST_n_5,UART_TX_INST_n_6,UART_TX_INST_n_7}),
        .\FSM_onehot_rFSM_Current_reg[0]_0 (UART_TX_INST_n_13),
        .\FSM_onehot_rFSM_Current_reg[4]_0 ({wTxDone,UART_TX_INST_n_9}),
        .\FSM_onehot_rFSM_reg[4] ({UART_TX_INST_n_10,UART_TX_INST_n_11}),
        .\FSM_onehot_rFSM_reg[4]_0 (UART_TX_INST_n_12),
        .\FSM_onehot_rFSM_reg[4]_1 (UART_TX_INST_n_15),
        .Q({\rResult_reg_n_0_[23] ,\rResult_reg_n_0_[22] ,\rResult_reg_n_0_[21] ,\rResult_reg_n_0_[20] ,\rResult_reg_n_0_[19] ,\rResult_reg_n_0_[18] ,\rResult_reg_n_0_[17] ,\rResult_reg_n_0_[16] }),
        .iClk(iClk),
        .iRst(iRst),
        .oTx(oTx),
        .\rTxByte_reg[0] (\rCnt_reg_n_0_[1] ),
        .\rTxByte_reg[0]_0 (\rCnt_reg_n_0_[0] ),
        .\rTxData_Current_reg[7]_0 (rTxByte),
        .rTxStart_reg({\FSM_onehot_rFSM_reg_n_0_[5] ,rTxByte_0}),
        .rTxStart_reg_0(rTxStart_reg_n_0));
  FDRE \rA_reg[0] 
       (.C(iClk),
        .CE(rA_1),
        .D(rBufferCurrent[0]),
        .Q(rA[0]),
        .R(iRst));
  FDRE \rA_reg[10] 
       (.C(iClk),
        .CE(rA_1),
        .D(rA[2]),
        .Q(rA[10]),
        .R(iRst));
  FDRE \rA_reg[11] 
       (.C(iClk),
        .CE(rA_1),
        .D(rA[3]),
        .Q(rA[11]),
        .R(iRst));
  FDRE \rA_reg[12] 
       (.C(iClk),
        .CE(rA_1),
        .D(rA[4]),
        .Q(rA[12]),
        .R(iRst));
  FDRE \rA_reg[13] 
       (.C(iClk),
        .CE(rA_1),
        .D(rA[5]),
        .Q(rA[13]),
        .R(iRst));
  FDRE \rA_reg[14] 
       (.C(iClk),
        .CE(rA_1),
        .D(rA[6]),
        .Q(rA[14]),
        .R(iRst));
  FDRE \rA_reg[15] 
       (.C(iClk),
        .CE(rA_1),
        .D(rA[7]),
        .Q(rA[15]),
        .R(iRst));
  FDRE \rA_reg[1] 
       (.C(iClk),
        .CE(rA_1),
        .D(rBufferCurrent[1]),
        .Q(rA[1]),
        .R(iRst));
  FDRE \rA_reg[2] 
       (.C(iClk),
        .CE(rA_1),
        .D(rBufferCurrent[2]),
        .Q(rA[2]),
        .R(iRst));
  FDRE \rA_reg[3] 
       (.C(iClk),
        .CE(rA_1),
        .D(rBufferCurrent[3]),
        .Q(rA[3]),
        .R(iRst));
  FDRE \rA_reg[4] 
       (.C(iClk),
        .CE(rA_1),
        .D(rBufferCurrent[4]),
        .Q(rA[4]),
        .R(iRst));
  FDRE \rA_reg[5] 
       (.C(iClk),
        .CE(rA_1),
        .D(rBufferCurrent[5]),
        .Q(rA[5]),
        .R(iRst));
  FDRE \rA_reg[6] 
       (.C(iClk),
        .CE(rA_1),
        .D(rBufferCurrent[6]),
        .Q(rA[6]),
        .R(iRst));
  FDRE \rA_reg[7] 
       (.C(iClk),
        .CE(rA_1),
        .D(rBufferCurrent[7]),
        .Q(rA[7]),
        .R(iRst));
  FDRE \rA_reg[8] 
       (.C(iClk),
        .CE(rA_1),
        .D(rA[0]),
        .Q(rA[8]),
        .R(iRst));
  FDRE \rA_reg[9] 
       (.C(iClk),
        .CE(rA_1),
        .D(rA[1]),
        .Q(rA[9]),
        .R(iRst));
  FDRE \rB_reg[0] 
       (.C(iClk),
        .CE(rB_2),
        .D(rBufferCurrent[0]),
        .Q(rB[0]),
        .R(iRst));
  FDRE \rB_reg[10] 
       (.C(iClk),
        .CE(rB_2),
        .D(rB[2]),
        .Q(rB[10]),
        .R(iRst));
  FDRE \rB_reg[11] 
       (.C(iClk),
        .CE(rB_2),
        .D(rB[3]),
        .Q(rB[11]),
        .R(iRst));
  FDRE \rB_reg[12] 
       (.C(iClk),
        .CE(rB_2),
        .D(rB[4]),
        .Q(rB[12]),
        .R(iRst));
  FDRE \rB_reg[13] 
       (.C(iClk),
        .CE(rB_2),
        .D(rB[5]),
        .Q(rB[13]),
        .R(iRst));
  FDRE \rB_reg[14] 
       (.C(iClk),
        .CE(rB_2),
        .D(rB[6]),
        .Q(rB[14]),
        .R(iRst));
  FDRE \rB_reg[15] 
       (.C(iClk),
        .CE(rB_2),
        .D(rB[7]),
        .Q(rB[15]),
        .R(iRst));
  FDRE \rB_reg[1] 
       (.C(iClk),
        .CE(rB_2),
        .D(rBufferCurrent[1]),
        .Q(rB[1]),
        .R(iRst));
  FDRE \rB_reg[2] 
       (.C(iClk),
        .CE(rB_2),
        .D(rBufferCurrent[2]),
        .Q(rB[2]),
        .R(iRst));
  FDRE \rB_reg[3] 
       (.C(iClk),
        .CE(rB_2),
        .D(rBufferCurrent[3]),
        .Q(rB[3]),
        .R(iRst));
  FDRE \rB_reg[4] 
       (.C(iClk),
        .CE(rB_2),
        .D(rBufferCurrent[4]),
        .Q(rB[4]),
        .R(iRst));
  FDRE \rB_reg[5] 
       (.C(iClk),
        .CE(rB_2),
        .D(rBufferCurrent[5]),
        .Q(rB[5]),
        .R(iRst));
  FDRE \rB_reg[6] 
       (.C(iClk),
        .CE(rB_2),
        .D(rBufferCurrent[6]),
        .Q(rB[6]),
        .R(iRst));
  FDRE \rB_reg[7] 
       (.C(iClk),
        .CE(rB_2),
        .D(rBufferCurrent[7]),
        .Q(rB[7]),
        .R(iRst));
  FDRE \rB_reg[8] 
       (.C(iClk),
        .CE(rB_2),
        .D(rB[0]),
        .Q(rB[8]),
        .R(iRst));
  FDRE \rB_reg[9] 
       (.C(iClk),
        .CE(rB_2),
        .D(rB[1]),
        .Q(rB[9]),
        .R(iRst));
  LUT6 #(
    .INIT(64'hFF0CFFFFFFAE0000)) 
    \rCnt[0]_i_1 
       (.I0(UART_TX_INST_n_12),
        .I1(rStartAdder),
        .I2(MP_ADDER_INST_n_1),
        .I3(UART_RX_INST_n_3),
        .I4(rCnt),
        .I5(\rCnt_reg_n_0_[0] ),
        .O(\rCnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E0FFFFE0000000)) 
    \rCnt[1]_i_1 
       (.I0(UART_TX_INST_n_9),
        .I1(wTxDone),
        .I2(rTxByte_0),
        .I3(\rCnt_reg_n_0_[0] ),
        .I4(rCnt),
        .I5(\rCnt_reg_n_0_[1] ),
        .O(\rCnt[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \rCnt[1]_i_3 
       (.I0(\rCnt_reg_n_0_[1] ),
        .I1(\rCnt_reg_n_0_[0] ),
        .O(\rCnt[1]_i_3_n_0 ));
  FDRE \rCnt_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt[0]_i_1_n_0 ),
        .Q(\rCnt_reg_n_0_[0] ),
        .R(iRst));
  FDRE \rCnt_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt[1]_i_1_n_0 ),
        .Q(\rCnt_reg_n_0_[1] ),
        .R(iRst));
  LUT2 #(
    .INIT(4'h8)) 
    \rResult[17]_i_1 
       (.I0(rTxByte_0),
        .I1(in9[17]),
        .O(\rResult[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rResult[18]_i_1 
       (.I0(rTxByte_0),
        .I1(in9[18]),
        .O(\rResult[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rResult[19]_i_1 
       (.I0(rTxByte_0),
        .I1(in9[19]),
        .O(\rResult[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rResult[20]_i_1 
       (.I0(rTxByte_0),
        .I1(in9[20]),
        .O(\rResult[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rResult[21]_i_1 
       (.I0(rTxByte_0),
        .I1(in9[21]),
        .O(\rResult[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rResult[22]_i_1 
       (.I0(rTxByte_0),
        .I1(in9[22]),
        .O(\rResult[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rResult[23]_i_2 
       (.I0(rTxByte_0),
        .I1(in9[23]),
        .O(\rResult[23]_i_2_n_0 ));
  FDRE \rResult_reg[0] 
       (.C(iClk),
        .CE(rResult),
        .D(MP_ADDER_INST_n_21),
        .Q(in9[8]),
        .R(iRst));
  FDRE \rResult_reg[10] 
       (.C(iClk),
        .CE(rResult),
        .D(MP_ADDER_INST_n_11),
        .Q(in9[18]),
        .R(iRst));
  FDRE \rResult_reg[11] 
       (.C(iClk),
        .CE(rResult),
        .D(MP_ADDER_INST_n_10),
        .Q(in9[19]),
        .R(iRst));
  FDRE \rResult_reg[12] 
       (.C(iClk),
        .CE(rResult),
        .D(MP_ADDER_INST_n_9),
        .Q(in9[20]),
        .R(iRst));
  FDRE \rResult_reg[13] 
       (.C(iClk),
        .CE(rResult),
        .D(MP_ADDER_INST_n_8),
        .Q(in9[21]),
        .R(iRst));
  FDRE \rResult_reg[14] 
       (.C(iClk),
        .CE(rResult),
        .D(MP_ADDER_INST_n_7),
        .Q(in9[22]),
        .R(iRst));
  FDRE \rResult_reg[15] 
       (.C(iClk),
        .CE(rResult),
        .D(MP_ADDER_INST_n_6),
        .Q(in9[23]),
        .R(iRst));
  FDRE \rResult_reg[16] 
       (.C(iClk),
        .CE(rResult),
        .D(MP_ADDER_INST_n_5),
        .Q(\rResult_reg_n_0_[16] ),
        .R(iRst));
  FDRE \rResult_reg[17] 
       (.C(iClk),
        .CE(rResult),
        .D(\rResult[17]_i_1_n_0 ),
        .Q(\rResult_reg_n_0_[17] ),
        .R(iRst));
  FDRE \rResult_reg[18] 
       (.C(iClk),
        .CE(rResult),
        .D(\rResult[18]_i_1_n_0 ),
        .Q(\rResult_reg_n_0_[18] ),
        .R(iRst));
  FDRE \rResult_reg[19] 
       (.C(iClk),
        .CE(rResult),
        .D(\rResult[19]_i_1_n_0 ),
        .Q(\rResult_reg_n_0_[19] ),
        .R(iRst));
  FDRE \rResult_reg[1] 
       (.C(iClk),
        .CE(rResult),
        .D(MP_ADDER_INST_n_20),
        .Q(in9[9]),
        .R(iRst));
  FDRE \rResult_reg[20] 
       (.C(iClk),
        .CE(rResult),
        .D(\rResult[20]_i_1_n_0 ),
        .Q(\rResult_reg_n_0_[20] ),
        .R(iRst));
  FDRE \rResult_reg[21] 
       (.C(iClk),
        .CE(rResult),
        .D(\rResult[21]_i_1_n_0 ),
        .Q(\rResult_reg_n_0_[21] ),
        .R(iRst));
  FDRE \rResult_reg[22] 
       (.C(iClk),
        .CE(rResult),
        .D(\rResult[22]_i_1_n_0 ),
        .Q(\rResult_reg_n_0_[22] ),
        .R(iRst));
  FDRE \rResult_reg[23] 
       (.C(iClk),
        .CE(rResult),
        .D(\rResult[23]_i_2_n_0 ),
        .Q(\rResult_reg_n_0_[23] ),
        .R(iRst));
  FDRE \rResult_reg[2] 
       (.C(iClk),
        .CE(rResult),
        .D(MP_ADDER_INST_n_19),
        .Q(in9[10]),
        .R(iRst));
  FDRE \rResult_reg[3] 
       (.C(iClk),
        .CE(rResult),
        .D(MP_ADDER_INST_n_18),
        .Q(in9[11]),
        .R(iRst));
  FDRE \rResult_reg[4] 
       (.C(iClk),
        .CE(rResult),
        .D(MP_ADDER_INST_n_17),
        .Q(in9[12]),
        .R(iRst));
  FDRE \rResult_reg[5] 
       (.C(iClk),
        .CE(rResult),
        .D(MP_ADDER_INST_n_16),
        .Q(in9[13]),
        .R(iRst));
  FDRE \rResult_reg[6] 
       (.C(iClk),
        .CE(rResult),
        .D(MP_ADDER_INST_n_15),
        .Q(in9[14]),
        .R(iRst));
  FDRE \rResult_reg[7] 
       (.C(iClk),
        .CE(rResult),
        .D(MP_ADDER_INST_n_14),
        .Q(in9[15]),
        .R(iRst));
  FDRE \rResult_reg[8] 
       (.C(iClk),
        .CE(rResult),
        .D(MP_ADDER_INST_n_13),
        .Q(in9[16]),
        .R(iRst));
  FDRE \rResult_reg[9] 
       (.C(iClk),
        .CE(rResult),
        .D(MP_ADDER_INST_n_12),
        .Q(in9[17]),
        .R(iRst));
  FDRE rStartAdder_reg
       (.C(iClk),
        .CE(1'b1),
        .D(MP_ADDER_INST_n_22),
        .Q(rStartAdder_reg_n_0),
        .R(iRst));
  FDRE \rTxByte_reg[0] 
       (.C(iClk),
        .CE(rTxByte_0),
        .D(UART_TX_INST_n_7),
        .Q(rTxByte[0]),
        .R(iRst));
  FDRE \rTxByte_reg[1] 
       (.C(iClk),
        .CE(rTxByte_0),
        .D(UART_TX_INST_n_6),
        .Q(rTxByte[1]),
        .R(iRst));
  FDRE \rTxByte_reg[2] 
       (.C(iClk),
        .CE(rTxByte_0),
        .D(UART_TX_INST_n_5),
        .Q(rTxByte[2]),
        .R(iRst));
  FDRE \rTxByte_reg[3] 
       (.C(iClk),
        .CE(rTxByte_0),
        .D(UART_TX_INST_n_4),
        .Q(rTxByte[3]),
        .R(iRst));
  FDRE \rTxByte_reg[4] 
       (.C(iClk),
        .CE(rTxByte_0),
        .D(UART_TX_INST_n_3),
        .Q(rTxByte[4]),
        .R(iRst));
  FDRE \rTxByte_reg[5] 
       (.C(iClk),
        .CE(rTxByte_0),
        .D(UART_TX_INST_n_2),
        .Q(rTxByte[5]),
        .R(iRst));
  FDRE \rTxByte_reg[6] 
       (.C(iClk),
        .CE(rTxByte_0),
        .D(UART_TX_INST_n_1),
        .Q(rTxByte[6]),
        .R(iRst));
  FDRE \rTxByte_reg[7] 
       (.C(iClk),
        .CE(rTxByte_0),
        .D(UART_TX_INST_n_0),
        .Q(rTxByte[7]),
        .R(iRst));
  FDRE rTxStart_reg
       (.C(iClk),
        .CE(1'b1),
        .D(UART_TX_INST_n_15),
        .Q(rTxStart_reg_n_0),
        .R(iRst));
endmodule

(* ORIG_REF_NAME = "uart_tx" *) 
module design_1_uart_top_0_0_uart_tx
   (D,
    \FSM_onehot_rFSM_Current_reg[4]_0 ,
    \FSM_onehot_rFSM_reg[4] ,
    \FSM_onehot_rFSM_reg[4]_0 ,
    \FSM_onehot_rFSM_Current_reg[0]_0 ,
    oTx,
    \FSM_onehot_rFSM_reg[4]_1 ,
    Q,
    \rTxByte_reg[0] ,
    \rTxByte_reg[0]_0 ,
    rTxStart_reg,
    rTxStart_reg_0,
    \rTxData_Current_reg[7]_0 ,
    iRst,
    iClk);
  output [7:0]D;
  output [1:0]\FSM_onehot_rFSM_Current_reg[4]_0 ;
  output [1:0]\FSM_onehot_rFSM_reg[4] ;
  output \FSM_onehot_rFSM_reg[4]_0 ;
  output \FSM_onehot_rFSM_Current_reg[0]_0 ;
  output oTx;
  output \FSM_onehot_rFSM_reg[4]_1 ;
  input [7:0]Q;
  input \rTxByte_reg[0] ;
  input \rTxByte_reg[0]_0 ;
  input [1:0]rTxStart_reg;
  input rTxStart_reg_0;
  input [7:0]\rTxData_Current_reg[7]_0 ;
  input iRst;
  input iClk;

  wire [7:0]D;
  wire \FSM_onehot_rFSM_Current[0]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_Current[1]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_Current[2]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_Current[3]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_Current[4]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_Current[4]_i_2_n_0 ;
  wire \FSM_onehot_rFSM_Current[4]_i_3_n_0 ;
  wire \FSM_onehot_rFSM_Current_reg[0]_0 ;
  wire [1:0]\FSM_onehot_rFSM_Current_reg[4]_0 ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[1] ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[2] ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[3] ;
  wire [1:0]\FSM_onehot_rFSM_reg[4] ;
  wire \FSM_onehot_rFSM_reg[4]_0 ;
  wire \FSM_onehot_rFSM_reg[4]_1 ;
  wire [7:0]Q;
  wire iClk;
  wire iRst;
  wire [6:0]in7;
  wire oTx;
  wire [2:0]rBit_Current;
  wire \rBit_Current[0]_i_1_n_0 ;
  wire \rBit_Current[1]_i_1_n_0 ;
  wire \rBit_Current[2]_i_1_n_0 ;
  wire \rCnt_Current[0]_i_1__0_n_0 ;
  wire \rCnt_Current[10]_i_1_n_0 ;
  wire \rCnt_Current[10]_i_2_n_0 ;
  wire \rCnt_Current[10]_i_3_n_0 ;
  wire \rCnt_Current[1]_i_1__0_n_0 ;
  wire \rCnt_Current[2]_i_1_n_0 ;
  wire \rCnt_Current[3]_i_1_n_0 ;
  wire \rCnt_Current[4]_i_1_n_0 ;
  wire \rCnt_Current[5]_i_1_n_0 ;
  wire \rCnt_Current[5]_i_2_n_0 ;
  wire \rCnt_Current[6]_i_1_n_0 ;
  wire \rCnt_Current[7]_i_1_n_0 ;
  wire \rCnt_Current[8]_i_1_n_0 ;
  wire \rCnt_Current[8]_i_2_n_0 ;
  wire \rCnt_Current[9]_i_1_n_0 ;
  wire \rCnt_Current_reg_n_0_[0] ;
  wire \rCnt_Current_reg_n_0_[10] ;
  wire \rCnt_Current_reg_n_0_[1] ;
  wire \rCnt_Current_reg_n_0_[2] ;
  wire \rCnt_Current_reg_n_0_[3] ;
  wire \rCnt_Current_reg_n_0_[4] ;
  wire \rCnt_Current_reg_n_0_[5] ;
  wire \rCnt_Current_reg_n_0_[6] ;
  wire \rCnt_Current_reg_n_0_[7] ;
  wire \rCnt_Current_reg_n_0_[8] ;
  wire \rCnt_Current_reg_n_0_[9] ;
  wire \rTxByte_reg[0] ;
  wire \rTxByte_reg[0]_0 ;
  wire \rTxData_Current[0]_i_1_n_0 ;
  wire \rTxData_Current[1]_i_1_n_0 ;
  wire \rTxData_Current[2]_i_1_n_0 ;
  wire \rTxData_Current[3]_i_1_n_0 ;
  wire \rTxData_Current[4]_i_1_n_0 ;
  wire \rTxData_Current[5]_i_1_n_0 ;
  wire \rTxData_Current[6]_i_1_n_0 ;
  wire \rTxData_Current[7]_i_2_n_0 ;
  wire \rTxData_Current[7]_i_3_n_0 ;
  wire [7:0]\rTxData_Current_reg[7]_0 ;
  wire \rTxData_Current_reg_n_0_[0] ;
  wire [1:0]rTxStart_reg;
  wire rTxStart_reg_0;
  wire wBit_Next;
  wire wTxData_Next;

  LUT6 #(
    .INIT(64'h3F00FFFF3F002A00)) 
    \FSM_onehot_rFSM[5]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg[4]_0 [0]),
        .I1(\rTxByte_reg[0]_0 ),
        .I2(\rTxByte_reg[0] ),
        .I3(rTxStart_reg[0]),
        .I4(\FSM_onehot_rFSM_Current_reg[4]_0 [1]),
        .I5(rTxStart_reg[1]),
        .O(\FSM_onehot_rFSM_reg[4] [0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h808080AA)) 
    \FSM_onehot_rFSM[6]_i_2 
       (.I0(rTxStart_reg[0]),
        .I1(\rTxByte_reg[0] ),
        .I2(\rTxByte_reg[0]_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg[4]_0 [1]),
        .I4(\FSM_onehot_rFSM_Current_reg[4]_0 [0]),
        .O(\FSM_onehot_rFSM_reg[4] [1]));
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_rFSM_Current[0]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg[4]_0 [1]),
        .I1(rTxStart_reg_0),
        .I2(\FSM_onehot_rFSM_Current_reg[4]_0 [0]),
        .O(\FSM_onehot_rFSM_Current[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_rFSM_Current[1]_i_1 
       (.I0(rTxStart_reg_0),
        .I1(\FSM_onehot_rFSM_Current_reg[4]_0 [0]),
        .I2(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\FSM_onehot_rFSM_Current[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF007F00FF00)) 
    \FSM_onehot_rFSM_Current[2]_i_1 
       (.I0(rBit_Current[2]),
        .I1(rBit_Current[0]),
        .I2(rBit_Current[1]),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I4(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I5(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\FSM_onehot_rFSM_Current[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC0000000AAAAAAAA)) 
    \FSM_onehot_rFSM_Current[3]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I2(rBit_Current[2]),
        .I3(rBit_Current[0]),
        .I4(rBit_Current[1]),
        .I5(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .O(\FSM_onehot_rFSM_Current[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_rFSM_Current[4]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I1(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .O(\FSM_onehot_rFSM_Current[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \FSM_onehot_rFSM_Current[4]_i_2 
       (.I0(\rCnt_Current_reg_n_0_[10] ),
        .I1(\rCnt_Current_reg_n_0_[7] ),
        .I2(\rCnt_Current_reg_n_0_[8] ),
        .I3(\rCnt_Current_reg_n_0_[6] ),
        .I4(\rCnt_Current_reg_n_0_[9] ),
        .I5(\FSM_onehot_rFSM_Current[4]_i_3_n_0 ),
        .O(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_rFSM_Current[4]_i_3 
       (.I0(\rCnt_Current_reg_n_0_[3] ),
        .I1(\rCnt_Current_reg_n_0_[5] ),
        .I2(\rCnt_Current_reg_n_0_[2] ),
        .I3(\rCnt_Current_reg_n_0_[4] ),
        .O(\FSM_onehot_rFSM_Current[4]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_rFSM_Current_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_Current[0]_i_1_n_0 ),
        .Q(\FSM_onehot_rFSM_Current_reg[4]_0 [0]),
        .S(iRst));
  (* FSM_ENCODED_STATES = "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_Current_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_Current[1]_i_1_n_0 ),
        .Q(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_Current_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_Current[2]_i_1_n_0 ),
        .Q(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_Current_reg[3] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_Current[3]_i_1_n_0 ),
        .Q(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_Current_reg[4] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_Current[4]_i_1_n_0 ),
        .Q(\FSM_onehot_rFSM_Current_reg[4]_0 [1]),
        .R(iRst));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    oTx_INST_0
       (.I0(\rTxData_Current_reg_n_0_[0] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(oTx));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h38)) 
    \rBit_Current[0]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(wBit_Next),
        .I2(rBit_Current[0]),
        .O(\rBit_Current[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h4F80)) 
    \rBit_Current[1]_i_1 
       (.I0(rBit_Current[0]),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I2(wBit_Next),
        .I3(rBit_Current[1]),
        .O(\rBit_Current[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h2AFF8000)) 
    \rBit_Current[2]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(rBit_Current[0]),
        .I2(rBit_Current[1]),
        .I3(wBit_Next),
        .I4(rBit_Current[2]),
        .O(\rBit_Current[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \rBit_Current[2]_i_2 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I2(\FSM_onehot_rFSM_Current_reg[4]_0 [1]),
        .I3(\FSM_onehot_rFSM_Current_reg[4]_0 [0]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I5(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .O(wBit_Next));
  FDRE \rBit_Current_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rBit_Current[0]_i_1_n_0 ),
        .Q(rBit_Current[0]),
        .R(iRst));
  FDRE \rBit_Current_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rBit_Current[1]_i_1_n_0 ),
        .Q(rBit_Current[1]),
        .R(iRst));
  FDRE \rBit_Current_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rBit_Current[2]_i_1_n_0 ),
        .Q(rBit_Current[2]),
        .R(iRst));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h2A2A2A00)) 
    \rCnt[0]_i_2 
       (.I0(rTxStart_reg[0]),
        .I1(\rTxByte_reg[0] ),
        .I2(\rTxByte_reg[0]_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg[4]_0 [1]),
        .I4(\FSM_onehot_rFSM_Current_reg[4]_0 [0]),
        .O(\FSM_onehot_rFSM_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rCnt_Current[0]_i_1__0 
       (.I0(\rCnt_Current[10]_i_2_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[0] ),
        .O(\rCnt_Current[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hAA80)) 
    \rCnt_Current[10]_i_1 
       (.I0(\rCnt_Current[10]_i_2_n_0 ),
        .I1(\rCnt_Current[10]_i_3_n_0 ),
        .I2(\rCnt_Current_reg_n_0_[9] ),
        .I3(\rCnt_Current_reg_n_0_[10] ),
        .O(\rCnt_Current[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h5554)) 
    \rCnt_Current[10]_i_2 
       (.I0(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(\rCnt_Current[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \rCnt_Current[10]_i_3 
       (.I0(\rCnt_Current_reg_n_0_[7] ),
        .I1(\rCnt_Current_reg_n_0_[6] ),
        .I2(\rCnt_Current[8]_i_2_n_0 ),
        .I3(\rCnt_Current_reg_n_0_[8] ),
        .O(\rCnt_Current[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \rCnt_Current[1]_i_1__0 
       (.I0(\rCnt_Current[10]_i_2_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[1] ),
        .I2(\rCnt_Current_reg_n_0_[0] ),
        .O(\rCnt_Current[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \rCnt_Current[2]_i_1 
       (.I0(\rCnt_Current[10]_i_2_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[0] ),
        .I2(\rCnt_Current_reg_n_0_[1] ),
        .I3(\rCnt_Current_reg_n_0_[2] ),
        .O(\rCnt_Current[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \rCnt_Current[3]_i_1 
       (.I0(\rCnt_Current[10]_i_2_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[1] ),
        .I2(\rCnt_Current_reg_n_0_[0] ),
        .I3(\rCnt_Current_reg_n_0_[2] ),
        .I4(\rCnt_Current_reg_n_0_[3] ),
        .O(\rCnt_Current[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \rCnt_Current[4]_i_1 
       (.I0(\rCnt_Current[10]_i_2_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[2] ),
        .I2(\rCnt_Current_reg_n_0_[0] ),
        .I3(\rCnt_Current_reg_n_0_[1] ),
        .I4(\rCnt_Current_reg_n_0_[3] ),
        .I5(\rCnt_Current_reg_n_0_[4] ),
        .O(\rCnt_Current[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \rCnt_Current[5]_i_1 
       (.I0(\rCnt_Current[10]_i_2_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[4] ),
        .I2(\rCnt_Current_reg_n_0_[3] ),
        .I3(\rCnt_Current[5]_i_2_n_0 ),
        .I4(\rCnt_Current_reg_n_0_[2] ),
        .I5(\rCnt_Current_reg_n_0_[5] ),
        .O(\rCnt_Current[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rCnt_Current[5]_i_2 
       (.I0(\rCnt_Current_reg_n_0_[0] ),
        .I1(\rCnt_Current_reg_n_0_[1] ),
        .O(\rCnt_Current[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \rCnt_Current[6]_i_1 
       (.I0(\rCnt_Current[10]_i_2_n_0 ),
        .I1(\rCnt_Current[8]_i_2_n_0 ),
        .I2(\rCnt_Current_reg_n_0_[6] ),
        .O(\rCnt_Current[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hA208)) 
    \rCnt_Current[7]_i_1 
       (.I0(\rCnt_Current[10]_i_2_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[6] ),
        .I2(\rCnt_Current[8]_i_2_n_0 ),
        .I3(\rCnt_Current_reg_n_0_[7] ),
        .O(\rCnt_Current[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h82888888)) 
    \rCnt_Current[8]_i_1 
       (.I0(\rCnt_Current[10]_i_2_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[8] ),
        .I2(\rCnt_Current[8]_i_2_n_0 ),
        .I3(\rCnt_Current_reg_n_0_[6] ),
        .I4(\rCnt_Current_reg_n_0_[7] ),
        .O(\rCnt_Current[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \rCnt_Current[8]_i_2 
       (.I0(\rCnt_Current_reg_n_0_[4] ),
        .I1(\rCnt_Current_reg_n_0_[2] ),
        .I2(\rCnt_Current_reg_n_0_[5] ),
        .I3(\rCnt_Current_reg_n_0_[3] ),
        .I4(\rCnt_Current_reg_n_0_[1] ),
        .I5(\rCnt_Current_reg_n_0_[0] ),
        .O(\rCnt_Current[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \rCnt_Current[9]_i_1 
       (.I0(\rCnt_Current[10]_i_2_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[9] ),
        .I2(\rCnt_Current[10]_i_3_n_0 ),
        .O(\rCnt_Current[9]_i_1_n_0 ));
  FDRE \rCnt_Current_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[0]_i_1__0_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[0] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[10] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[10]_i_1_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[10] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[1]_i_1__0_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[1] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[2]_i_1_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[2] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[3] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[3]_i_1_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[3] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[4] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[4]_i_1_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[4] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[5] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[5]_i_1_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[5] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[6] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[6]_i_1_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[6] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[7] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[7]_i_1_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[7] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[8] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[8]_i_1_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[8] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[9] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[9]_i_1_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[9] ),
        .R(iRst));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h0EEE)) 
    \rResult[23]_i_3 
       (.I0(\FSM_onehot_rFSM_Current_reg[4]_0 [0]),
        .I1(\FSM_onehot_rFSM_Current_reg[4]_0 [1]),
        .I2(\rTxByte_reg[0]_0 ),
        .I3(\rTxByte_reg[0] ),
        .O(\FSM_onehot_rFSM_Current_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h2A2A2A00)) 
    \rTxByte[0]_i_1 
       (.I0(Q[0]),
        .I1(\rTxByte_reg[0] ),
        .I2(\rTxByte_reg[0]_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg[4]_0 [1]),
        .I4(\FSM_onehot_rFSM_Current_reg[4]_0 [0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h2A2A2A00)) 
    \rTxByte[1]_i_1 
       (.I0(Q[1]),
        .I1(\rTxByte_reg[0] ),
        .I2(\rTxByte_reg[0]_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg[4]_0 [1]),
        .I4(\FSM_onehot_rFSM_Current_reg[4]_0 [0]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h2A2A2A00)) 
    \rTxByte[2]_i_1 
       (.I0(Q[2]),
        .I1(\rTxByte_reg[0] ),
        .I2(\rTxByte_reg[0]_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg[4]_0 [1]),
        .I4(\FSM_onehot_rFSM_Current_reg[4]_0 [0]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h2A2A2A00)) 
    \rTxByte[3]_i_1 
       (.I0(Q[3]),
        .I1(\rTxByte_reg[0] ),
        .I2(\rTxByte_reg[0]_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg[4]_0 [1]),
        .I4(\FSM_onehot_rFSM_Current_reg[4]_0 [0]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h2A2A2A00)) 
    \rTxByte[4]_i_1 
       (.I0(Q[4]),
        .I1(\rTxByte_reg[0] ),
        .I2(\rTxByte_reg[0]_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg[4]_0 [1]),
        .I4(\FSM_onehot_rFSM_Current_reg[4]_0 [0]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h2A2A2A00)) 
    \rTxByte[5]_i_1 
       (.I0(Q[5]),
        .I1(\rTxByte_reg[0] ),
        .I2(\rTxByte_reg[0]_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg[4]_0 [1]),
        .I4(\FSM_onehot_rFSM_Current_reg[4]_0 [0]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'h2A2A2A00)) 
    \rTxByte[6]_i_1 
       (.I0(Q[6]),
        .I1(\rTxByte_reg[0] ),
        .I2(\rTxByte_reg[0]_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg[4]_0 [1]),
        .I4(\FSM_onehot_rFSM_Current_reg[4]_0 [0]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'h2A2A2A00)) 
    \rTxByte[7]_i_1 
       (.I0(Q[7]),
        .I1(\rTxByte_reg[0] ),
        .I2(\rTxByte_reg[0]_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg[4]_0 [1]),
        .I4(\FSM_onehot_rFSM_Current_reg[4]_0 [0]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \rTxData_Current[0]_i_1 
       (.I0(\rTxData_Current_reg[7]_0 [0]),
        .I1(\FSM_onehot_rFSM_Current_reg[4]_0 [0]),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(in7[0]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rTxData_Current[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \rTxData_Current[1]_i_1 
       (.I0(\rTxData_Current_reg[7]_0 [1]),
        .I1(\FSM_onehot_rFSM_Current_reg[4]_0 [0]),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(in7[1]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rTxData_Current[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \rTxData_Current[2]_i_1 
       (.I0(\rTxData_Current_reg[7]_0 [2]),
        .I1(\FSM_onehot_rFSM_Current_reg[4]_0 [0]),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(in7[2]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rTxData_Current[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \rTxData_Current[3]_i_1 
       (.I0(\rTxData_Current_reg[7]_0 [3]),
        .I1(\FSM_onehot_rFSM_Current_reg[4]_0 [0]),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(in7[3]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rTxData_Current[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \rTxData_Current[4]_i_1 
       (.I0(\rTxData_Current_reg[7]_0 [4]),
        .I1(\FSM_onehot_rFSM_Current_reg[4]_0 [0]),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(in7[4]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rTxData_Current[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \rTxData_Current[5]_i_1 
       (.I0(\rTxData_Current_reg[7]_0 [5]),
        .I1(\FSM_onehot_rFSM_Current_reg[4]_0 [0]),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(in7[5]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rTxData_Current[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \rTxData_Current[6]_i_1 
       (.I0(\rTxData_Current_reg[7]_0 [6]),
        .I1(\FSM_onehot_rFSM_Current_reg[4]_0 [0]),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(in7[6]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rTxData_Current[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8FFFFFFF88888888)) 
    \rTxData_Current[7]_i_1 
       (.I0(rTxStart_reg_0),
        .I1(\FSM_onehot_rFSM_Current_reg[4]_0 [0]),
        .I2(rBit_Current[1]),
        .I3(rBit_Current[0]),
        .I4(rBit_Current[2]),
        .I5(\rTxData_Current[7]_i_3_n_0 ),
        .O(wTxData_Next));
  LUT2 #(
    .INIT(4'h8)) 
    \rTxData_Current[7]_i_2 
       (.I0(\FSM_onehot_rFSM_Current_reg[4]_0 [0]),
        .I1(\rTxData_Current_reg[7]_0 [7]),
        .O(\rTxData_Current[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rTxData_Current[7]_i_3 
       (.I0(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(\rTxData_Current[7]_i_3_n_0 ));
  FDRE \rTxData_Current_reg[0] 
       (.C(iClk),
        .CE(wTxData_Next),
        .D(\rTxData_Current[0]_i_1_n_0 ),
        .Q(\rTxData_Current_reg_n_0_[0] ),
        .R(iRst));
  FDRE \rTxData_Current_reg[1] 
       (.C(iClk),
        .CE(wTxData_Next),
        .D(\rTxData_Current[1]_i_1_n_0 ),
        .Q(in7[0]),
        .R(iRst));
  FDRE \rTxData_Current_reg[2] 
       (.C(iClk),
        .CE(wTxData_Next),
        .D(\rTxData_Current[2]_i_1_n_0 ),
        .Q(in7[1]),
        .R(iRst));
  FDRE \rTxData_Current_reg[3] 
       (.C(iClk),
        .CE(wTxData_Next),
        .D(\rTxData_Current[3]_i_1_n_0 ),
        .Q(in7[2]),
        .R(iRst));
  FDRE \rTxData_Current_reg[4] 
       (.C(iClk),
        .CE(wTxData_Next),
        .D(\rTxData_Current[4]_i_1_n_0 ),
        .Q(in7[3]),
        .R(iRst));
  FDRE \rTxData_Current_reg[5] 
       (.C(iClk),
        .CE(wTxData_Next),
        .D(\rTxData_Current[5]_i_1_n_0 ),
        .Q(in7[4]),
        .R(iRst));
  FDRE \rTxData_Current_reg[6] 
       (.C(iClk),
        .CE(wTxData_Next),
        .D(\rTxData_Current[6]_i_1_n_0 ),
        .Q(in7[5]),
        .R(iRst));
  FDRE \rTxData_Current_reg[7] 
       (.C(iClk),
        .CE(wTxData_Next),
        .D(\rTxData_Current[7]_i_2_n_0 ),
        .Q(in7[6]),
        .R(iRst));
  LUT5 #(
    .INIT(32'hB8BB8888)) 
    rTxStart_i_1
       (.I0(\FSM_onehot_rFSM_Current_reg[0]_0 ),
        .I1(rTxStart_reg[0]),
        .I2(\FSM_onehot_rFSM_Current_reg[4]_0 [1]),
        .I3(rTxStart_reg[1]),
        .I4(rTxStart_reg_0),
        .O(\FSM_onehot_rFSM_reg[4]_1 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
