############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project fir_hls_proj
set_top fir
add_files fir_hls_proj/solution1/.tcls/cpp_FIR.h
add_files fir_hls_proj/solution1/.tcls/cpp_FIR.inc
add_files fir_hls_proj/solution1/.tcls/fire_core.cpp
open_solution "solution1"
set_part {xc7z010clg400-1} -tool vivado
create_clock -period 100MHz -name default
#source "./fir_hls_proj/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
