onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+block_design -pli "/opt/Xilinx/Vivado/2016.2/lib/lnx64.o/libxil_vsim.so" -L unisims_ver -L unimacro_ver -L secureip -L processing_system7_bfm_v2_0_5 -L xil_defaultlib -L axi_i2s_adi_v1_00_a -L adi_common_v1_00_a -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_9 -L generic_baseblocks_v2_1_0 -L fifo_generator_v13_1_1 -L axi_data_fifo_v2_1_8 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_9 -L axi_protocol_converter_v2_1_9 -O5 xil_defaultlib.block_design xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {block_design.udo}

run -all

endsim

quit -force
