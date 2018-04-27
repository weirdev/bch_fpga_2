-makelib ies_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5d3/hdl/sc_util_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/axi_protocol_checker_v2_0_0 -sv \
  "../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/d5c1/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/axi_vip_v1_1_0 -sv \
  "../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/8b42/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/processing_system7_vip_v1_0_2 -sv \
  "../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e0a2/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system_axo_axi/ip/system_axo_axi_processing_system7_0_0/sim/system_axo_axi_processing_system7_0_0.v" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_3_6 \
  "../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/2751/simulation/blk_mem_gen_v8_3.v" \
-endlib
-makelib ies_lib/axi_bram_ctrl_v4_0_12 \
  "../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ffa3/hdl/axi_bram_ctrl_v4_0_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system_axo_axi/ip/system_axo_axi_axi_bram_ctrl_0_0/sim/system_axo_axi_axi_bram_ctrl_0_0.vhd" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_0 \
  "../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/e50b/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system_axo_axi/ip/system_axo_axi_axi_bram_ctrl_0_bram_2/sim/system_axo_axi_axi_bram_ctrl_0_bram_2.v" \
  "../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/sim/bd_470a.v" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/786b/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_10/sim/bd_470a_s00a2s_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/92d2/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_16/sim/bd_470a_m00s2a_0.sv" \
  "../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_23/sim/bd_470a_m01s2a_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/fa70/hdl/sc_exit_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_29/sim/bd_470a_m01e_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/571c/hdl/sc_node_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
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
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/8ad6/hdl/sc_mmu_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_7/sim/bd_470a_s00mmu_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/0f5f/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_8/sim/bd_470a_s00tr_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/925a/hdl/sc_si_converter_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_9/sim/bd_470a_s00sic_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/1b0c/hdl/sc_switchboard_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_2/sim/bd_470a_arsw_0.sv" \
  "../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_3/sim/bd_470a_rsw_0.sv" \
  "../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_4/sim/bd_470a_awsw_0.sv" \
  "../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_5/sim/bd_470a_wsw_0.sv" \
  "../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_6/sim/bd_470a_bsw_0.sv" \
-endlib
-makelib ies_lib/xlconstant_v1_1_3 \
  "../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/0750/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_0/sim/bd_470a_one_0.v" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_12 \
  "../../../../bch_fpga_2.srcs/sources_1/bd/system_axo_axi/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/bd_0/ip/ip_1/sim/bd_470a_psr_aclk_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system_axo_axi/ip/system_axo_axi_axi_smc_1/sim/system_axo_axi_axi_smc_1.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system_axo_axi/ip/system_axo_axi_rst_ps7_0_50M_1/sim/system_axo_axi_rst_ps7_0_50M_1.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system_axo_axi/sim/system_axo_axi.v" \
  "../../../bd/system_axo_axi/ipshared/f4ed/hdl/ANDXOR_v1_0_S00_AXI.v" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/system_axo_axi/ipshared/f4ed/src/andxor.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system_axo_axi/ipshared/f4ed/hdl/ANDXOR_v1_0.v" \
  "../../../bd/system_axo_axi/ip/system_axo_axi_ANDXOR_0_0/sim/system_axo_axi_ANDXOR_0_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

