#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2020.1 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Sat May 11 15:52:59 CEST 2024
# SW Build 2902540 on Wed May 27 19:54:35 MDT 2020
#
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xelab -wto 4756b1523ea54048863f0292b42e8cf6 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot uart_top_TB_behav xil_defaultlib.uart_top_TB xil_defaultlib.glbl -log elaborate.log"
xelab -wto 4756b1523ea54048863f0292b42e8cf6 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot uart_top_TB_behav xil_defaultlib.uart_top_TB xil_defaultlib.glbl -log elaborate.log

