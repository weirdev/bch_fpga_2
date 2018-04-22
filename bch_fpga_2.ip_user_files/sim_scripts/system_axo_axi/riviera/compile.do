vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/smartconnect_v1_0
vlib riviera/axi_protocol_checker_v2_0_0
vlib riviera/axi_vip_v1_1_0
vlib riviera/processing_system7_vip_v1_0_2
vlib riviera/blk_mem_gen_v8_3_6
vlib riviera/axi_bram_ctrl_v4_0_12
vlib riviera/blk_mem_gen_v8_4_0
vlib riviera/xlconstant_v1_1_3
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_12

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_0 riviera/axi_protocol_checker_v2_0_0
vmap axi_vip_v1_1_0 riviera/axi_vip_v1_1_0
vmap processing_system7_vip_v1_0_2 riviera/processing_system7_vip_v1_0_2
vmap blk_mem_gen_v8_3_6 riviera/blk_mem_gen_v8_3_6
vmap axi_bram_ctrl_v4_0_12 riviera/axi_bram_ctrl_v4_0_12
vmap blk_mem_gen_v8_4_0 riviera/blk_mem_gen_v8_4_0
vmap xlconstant_v1_1_3 riviera/xlconstant_v1_1_3
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_12 riviera/proc_sys_reset_v5_0_12

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_0  -sv2k12 "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5c1/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_0  -sv2k12 "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/8b42/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_2  -sv2k12 "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../bd/system_axo_axi/ip/system_axo_axi_processing_system7_0_0/sim/system_axo_axi_processing_system7_0_0.v" \
"../../../bd/system_axo_axi/sim/system_axo_axi.v" \

vlog -work blk_mem_gen_v8_3_6  -v2k5 "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/2751/simulation/blk_mem_gen_v8_3.v" \

vcom -work axi_bram_ctrl_v4_0_12 -93 \
"../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ffa3/hdl/axi_bram_ctrl_v4_0_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system_axo_axi/ip/system_axo_axi_axi_bram_ctrl_0_0/sim/system_axo_axi_axi_bram_ctrl_0_0.vhd" \

vlog -work blk_mem_gen_v8_4_0  -v2k5 "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e50b/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../bd/system_axo_axi/ip/system_axo_axi_axi_bram_ctrl_0_bram_2/sim/system_axo_axi_axi_bram_ctrl_0_bram_2.v" \
"../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/sim/bd_470a.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/786b/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_10/sim/bd_470a_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/92d2/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_16/sim/bd_470a_m00s2a_0.sv" \
"../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_23/sim/bd_470a_m01s2a_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/fa70/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_29/sim/bd_470a_m01e_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_24/sim/bd_470a_m01arn_0.sv" \
"../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_25/sim/bd_470a_m01rn_0.sv" \
"../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_26/sim/bd_470a_m01awn_0.sv" \
"../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_27/sim/bd_470a_m01wn_0.sv" \
"../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_28/sim/bd_470a_m01bn_0.sv" \
"../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_22/sim/bd_470a_m00e_0.sv" \
"../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_17/sim/bd_470a_m00arn_0.sv" \
"../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_18/sim/bd_470a_m00rn_0.sv" \
"../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_19/sim/bd_470a_m00awn_0.sv" \
"../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_20/sim/bd_470a_m00wn_0.sv" \
"../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_21/sim/bd_470a_m00bn_0.sv" \
"../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_11/sim/bd_470a_sarn_0.sv" \
"../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_12/sim/bd_470a_srn_0.sv" \
"../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_13/sim/bd_470a_sawn_0.sv" \
"../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_14/sim/bd_470a_swn_0.sv" \
"../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_15/sim/bd_470a_sbn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/8ad6/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_7/sim/bd_470a_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/0f5f/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_8/sim/bd_470a_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/925a/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_9/sim/bd_470a_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/1b0c/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_2/sim/bd_470a_arsw_0.sv" \
"../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_3/sim/bd_470a_rsw_0.sv" \
"../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_4/sim/bd_470a_awsw_0.sv" \
"../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_5/sim/bd_470a_wsw_0.sv" \
"../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_6/sim/bd_470a_bsw_0.sv" \

vlog -work xlconstant_v1_1_3  -v2k5 "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/0750/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_0/sim/bd_470a_one_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_12 -93 \
"../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_1/sim/bd_470a_psr_aclk_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/sim/system_axo_axi_axi_smc_1.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/system_axo_axi/ip/system_axo_axi_rst_ps7_0_50M_1/sim/system_axo_axi_rst_ps7_0_50M_1.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../bd/system_axo_axi/ipshared/0d76/hdl/ANDXOR_v1_0_S00_AXI.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../bd/system_axo_axi/ipshared/0d76/src/andxor.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/verilog" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl" "+incdir+../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../bd/system_axo_axi/ipshared/0d76/hdl/ANDXOR_v1_0.v" \
"../../../bd/system_axo_axi/ip/system_axo_axi_ANDXOR_0_0/sim/system_axo_axi_ANDXOR_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

