// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Jun 16 12:45:57 2022
// Host        : TOR00094 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_AXI_reset_0_sim_netlist.v
// Design      : design_1_AXI_reset_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync
   (lpf_asr_reg,
    scndry_out,
    aux_reset_in,
    lpf_asr,
    lpf_asr_reg_0,
    asr_lpf,
    p_2_in,
    p_1_in,
    lpf_asr_reg_1,
    lpf_asr_reg_2,
    lpf_asr_reg_3,
    slowest_sync_clk);
  output lpf_asr_reg;
  output scndry_out;
  input aux_reset_in;
  input lpf_asr;
  input lpf_asr_reg_0;
  input [0:0]asr_lpf;
  input p_2_in;
  input p_1_in;
  input lpf_asr_reg_1;
  input lpf_asr_reg_2;
  input lpf_asr_reg_3;
  input slowest_sync_clk;

  wire asr_d1;
  wire [0:0]asr_lpf;
  wire asr_nand;
  wire aux_reset_in;
  wire lpf_asr;
  wire lpf_asr_i_2_n_0;
  wire lpf_asr_reg;
  wire lpf_asr_reg_0;
  wire lpf_asr_reg_1;
  wire lpf_asr_reg_2;
  wire lpf_asr_reg_3;
  wire p_1_in;
  wire p_2_in;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire scndry_out;
  wire slowest_sync_clk;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(asr_d1),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_i_1__0 
       (.I0(aux_reset_in),
        .O(asr_d1));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(scndry_out),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hBA)) 
    lpf_asr_i_1
       (.I0(lpf_asr_i_2_n_0),
        .I1(asr_nand),
        .I2(lpf_asr),
        .O(lpf_asr_reg));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    lpf_asr_i_2
       (.I0(lpf_asr_reg_0),
        .I1(asr_lpf),
        .I2(scndry_out),
        .I3(p_2_in),
        .I4(p_1_in),
        .I5(lpf_asr_reg_1),
        .O(lpf_asr_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    lpf_asr_i_3
       (.I0(lpf_asr_reg_2),
        .I1(asr_lpf),
        .I2(scndry_out),
        .I3(p_2_in),
        .I4(p_1_in),
        .I5(lpf_asr_reg_3),
        .O(asr_nand));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync_0
   (lpf_exr_reg,
    scndry_out,
    mb_debug_sys_rst,
    ext_reset_in,
    lpf_exr,
    p_15_out,
    lpf_exr_reg_0,
    lpf_exr_reg_1,
    slowest_sync_clk);
  output lpf_exr_reg;
  output scndry_out;
  input mb_debug_sys_rst;
  input ext_reset_in;
  input lpf_exr;
  input [8:0]p_15_out;
  input lpf_exr_reg_0;
  input lpf_exr_reg_1;
  input slowest_sync_clk;

  wire exr_d1;
  wire exr_nand;
  wire ext_reset_in;
  wire lpf_exr;
  wire lpf_exr_i_2_n_0;
  wire lpf_exr_i_4_n_0;
  wire lpf_exr_i_6_n_0;
  wire lpf_exr_reg;
  wire lpf_exr_reg_0;
  wire lpf_exr_reg_1;
  wire mb_debug_sys_rst;
  wire [8:0]p_15_out;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire scndry_out;
  wire slowest_sync_clk;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(exr_d1),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_i_1 
       (.I0(mb_debug_sys_rst),
        .I1(ext_reset_in),
        .O(exr_d1));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(scndry_out),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hBA)) 
    lpf_exr_i_1
       (.I0(lpf_exr_i_2_n_0),
        .I1(exr_nand),
        .I2(lpf_exr),
        .O(lpf_exr_reg));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    lpf_exr_i_2
       (.I0(lpf_exr_i_4_n_0),
        .I1(p_15_out[1]),
        .I2(p_15_out[0]),
        .I3(p_15_out[3]),
        .I4(p_15_out[2]),
        .I5(lpf_exr_reg_0),
        .O(lpf_exr_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    lpf_exr_i_3
       (.I0(lpf_exr_i_6_n_0),
        .I1(p_15_out[1]),
        .I2(p_15_out[0]),
        .I3(p_15_out[3]),
        .I4(p_15_out[2]),
        .I5(lpf_exr_reg_1),
        .O(exr_nand));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    lpf_exr_i_4
       (.I0(p_15_out[6]),
        .I1(p_15_out[7]),
        .I2(p_15_out[4]),
        .I3(p_15_out[5]),
        .I4(scndry_out),
        .I5(p_15_out[8]),
        .O(lpf_exr_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    lpf_exr_i_6
       (.I0(p_15_out[6]),
        .I1(p_15_out[7]),
        .I2(p_15_out[4]),
        .I3(p_15_out[5]),
        .I4(scndry_out),
        .I5(p_15_out[8]),
        .O(lpf_exr_i_6_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_AXI_reset_0,proc_sys_reset,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "proc_sys_reset,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clock CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clock, ASSOCIATED_RESET mb_reset:bus_struct_reset:interconnect_aresetn:peripheral_aresetn:peripheral_reset, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_CLK_COMMON_0_axi_periph_clk, INSERT_VIP 0" *) input slowest_sync_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ext_reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME ext_reset, BOARD.ASSOCIATED_PARAM RESET_BOARD_INTERFACE, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ext_reset_in;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aux_reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aux_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aux_reset_in;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 dbg_reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME dbg_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input mb_debug_sys_rst;
  input dcm_locked;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 mb_rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME mb_rst, POLARITY ACTIVE_HIGH, TYPE PROCESSOR, INSERT_VIP 0" *) output mb_reset;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 bus_struct_reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME bus_struct_reset, POLARITY ACTIVE_HIGH, TYPE INTERCONNECT, INSERT_VIP 0" *) output [0:0]bus_struct_reset;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 peripheral_high_rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME peripheral_high_rst, POLARITY ACTIVE_HIGH, TYPE PERIPHERAL, INSERT_VIP 0" *) output [0:0]peripheral_reset;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 interconnect_low_rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME interconnect_low_rst, POLARITY ACTIVE_LOW, TYPE INTERCONNECT, INSERT_VIP 0" *) output [0:0]interconnect_aresetn;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 peripheral_low_rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME peripheral_low_rst, POLARITY ACTIVE_LOW, TYPE PERIPHERAL, INSERT_VIP 0" *) output [0:0]peripheral_aresetn;

  wire aux_reset_in;
  wire [0:0]bus_struct_reset;
  wire dcm_locked;
  wire ext_reset_in;
  wire [0:0]interconnect_aresetn;
  wire mb_debug_sys_rst;
  wire mb_reset;
  wire [0:0]peripheral_aresetn;
  wire [0:0]peripheral_reset;
  wire slowest_sync_clk;

  (* C_AUX_RESET_HIGH = "1'b0" *) 
  (* C_AUX_RST_WIDTH = "16" *) 
  (* C_EXT_RESET_HIGH = "1'b0" *) 
  (* C_EXT_RST_WIDTH = "16" *) 
  (* C_FAMILY = "kintex7" *) 
  (* C_NUM_BUS_RST = "1" *) 
  (* C_NUM_INTERCONNECT_ARESETN = "1" *) 
  (* C_NUM_PERP_ARESETN = "1" *) 
  (* C_NUM_PERP_RST = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_proc_sys_reset U0
       (.aux_reset_in(aux_reset_in),
        .bus_struct_reset(bus_struct_reset),
        .dcm_locked(dcm_locked),
        .ext_reset_in(ext_reset_in),
        .interconnect_aresetn(interconnect_aresetn),
        .mb_debug_sys_rst(mb_debug_sys_rst),
        .mb_reset(mb_reset),
        .peripheral_aresetn(peripheral_aresetn),
        .peripheral_reset(peripheral_reset),
        .slowest_sync_clk(slowest_sync_clk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lpf
   (lpf_int,
    slowest_sync_clk,
    dcm_locked,
    mb_debug_sys_rst,
    ext_reset_in,
    aux_reset_in);
  output lpf_int;
  input slowest_sync_clk;
  input dcm_locked;
  input mb_debug_sys_rst;
  input ext_reset_in;
  input aux_reset_in;

  wire \ACTIVE_LOW_AUX.ACT_LO_AUX_n_0 ;
  wire \ACTIVE_LOW_EXT.ACT_LO_EXT_n_0 ;
  wire Q;
  wire [0:0]asr_lpf;
  wire aux_reset_in;
  wire dcm_locked;
  wire ext_reset_in;
  wire lpf_asr;
  wire lpf_asr_i_4_n_0;
  wire lpf_asr_i_5_n_0;
  wire lpf_asr_i_6_n_0;
  wire lpf_asr_i_7_n_0;
  wire lpf_exr;
  wire lpf_exr_i_5_n_0;
  wire lpf_exr_i_7_n_0;
  wire lpf_int;
  wire lpf_int0__0;
  wire mb_debug_sys_rst;
  wire p_10_in;
  wire p_11_in;
  wire p_12_in;
  wire p_13_in;
  wire p_14_in;
  wire p_15_in1_in;
  wire [15:0]p_15_out;
  wire p_1_in;
  wire p_2_in;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in;
  wire p_6_in;
  wire p_7_in;
  wire p_8_in;
  wire p_9_in;
  wire slowest_sync_clk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync \ACTIVE_LOW_AUX.ACT_LO_AUX 
       (.asr_lpf(asr_lpf),
        .aux_reset_in(aux_reset_in),
        .lpf_asr(lpf_asr),
        .lpf_asr_reg(\ACTIVE_LOW_AUX.ACT_LO_AUX_n_0 ),
        .lpf_asr_reg_0(lpf_asr_i_4_n_0),
        .lpf_asr_reg_1(lpf_asr_i_5_n_0),
        .lpf_asr_reg_2(lpf_asr_i_6_n_0),
        .lpf_asr_reg_3(lpf_asr_i_7_n_0),
        .p_1_in(p_1_in),
        .p_2_in(p_2_in),
        .scndry_out(p_15_in1_in),
        .slowest_sync_clk(slowest_sync_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync_0 \ACTIVE_LOW_EXT.ACT_LO_EXT 
       (.ext_reset_in(ext_reset_in),
        .lpf_exr(lpf_exr),
        .lpf_exr_reg(\ACTIVE_LOW_EXT.ACT_LO_EXT_n_0 ),
        .lpf_exr_reg_0(lpf_exr_i_5_n_0),
        .lpf_exr_reg_1(lpf_exr_i_7_n_0),
        .mb_debug_sys_rst(mb_debug_sys_rst),
        .p_15_out({p_15_out[14:10],p_15_out[3:0]}),
        .scndry_out(p_15_out[15]),
        .slowest_sync_clk(slowest_sync_clk));
  FDRE #(
    .INIT(1'b0)) 
    \AUX_LPF[10].asr_lpf_reg[10] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_6_in),
        .Q(p_5_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AUX_LPF[11].asr_lpf_reg[11] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_5_in),
        .Q(p_4_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AUX_LPF[12].asr_lpf_reg[12] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_4_in),
        .Q(p_3_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AUX_LPF[13].asr_lpf_reg[13] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_3_in),
        .Q(p_2_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AUX_LPF[14].asr_lpf_reg[14] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_2_in),
        .Q(p_1_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AUX_LPF[15].asr_lpf_reg[15] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_1_in),
        .Q(asr_lpf),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AUX_LPF[1].asr_lpf_reg[1] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_15_in1_in),
        .Q(p_14_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AUX_LPF[2].asr_lpf_reg[2] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_14_in),
        .Q(p_13_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AUX_LPF[3].asr_lpf_reg[3] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_13_in),
        .Q(p_12_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AUX_LPF[4].asr_lpf_reg[4] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_12_in),
        .Q(p_11_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AUX_LPF[5].asr_lpf_reg[5] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_11_in),
        .Q(p_10_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AUX_LPF[6].asr_lpf_reg[6] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_10_in),
        .Q(p_9_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AUX_LPF[7].asr_lpf_reg[7] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_9_in),
        .Q(p_8_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AUX_LPF[8].asr_lpf_reg[8] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_8_in),
        .Q(p_7_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AUX_LPF[9].asr_lpf_reg[9] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_7_in),
        .Q(p_6_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \EXT_LPF[10].exr_lpf_reg[10] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_15_out[6]),
        .Q(p_15_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \EXT_LPF[11].exr_lpf_reg[11] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_15_out[5]),
        .Q(p_15_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \EXT_LPF[12].exr_lpf_reg[12] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_15_out[4]),
        .Q(p_15_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \EXT_LPF[13].exr_lpf_reg[13] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_15_out[3]),
        .Q(p_15_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \EXT_LPF[14].exr_lpf_reg[14] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_15_out[2]),
        .Q(p_15_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \EXT_LPF[15].exr_lpf_reg[15] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_15_out[1]),
        .Q(p_15_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \EXT_LPF[1].exr_lpf_reg[1] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_15_out[15]),
        .Q(p_15_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \EXT_LPF[2].exr_lpf_reg[2] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_15_out[14]),
        .Q(p_15_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \EXT_LPF[3].exr_lpf_reg[3] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_15_out[13]),
        .Q(p_15_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \EXT_LPF[4].exr_lpf_reg[4] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_15_out[12]),
        .Q(p_15_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \EXT_LPF[5].exr_lpf_reg[5] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_15_out[11]),
        .Q(p_15_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \EXT_LPF[6].exr_lpf_reg[6] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_15_out[10]),
        .Q(p_15_out[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \EXT_LPF[7].exr_lpf_reg[7] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_15_out[9]),
        .Q(p_15_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \EXT_LPF[8].exr_lpf_reg[8] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_15_out[8]),
        .Q(p_15_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \EXT_LPF[9].exr_lpf_reg[9] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_15_out[7]),
        .Q(p_15_out[6]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "SRL16" *) 
  (* box_type = "PRIMITIVE" *) 
  (* srl_name = "U0/\EXT_LPF/POR_SRL_I " *) 
  SRL16E #(
    .INIT(16'hFFFF)) 
    POR_SRL_I
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(slowest_sync_clk),
        .D(1'b0),
        .Q(Q));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    lpf_asr_i_4
       (.I0(p_11_in),
        .I1(p_12_in),
        .I2(p_9_in),
        .I3(p_10_in),
        .I4(p_14_in),
        .I5(p_13_in),
        .O(lpf_asr_i_4_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    lpf_asr_i_5
       (.I0(p_5_in),
        .I1(p_6_in),
        .I2(p_3_in),
        .I3(p_4_in),
        .I4(p_8_in),
        .I5(p_7_in),
        .O(lpf_asr_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    lpf_asr_i_6
       (.I0(p_11_in),
        .I1(p_12_in),
        .I2(p_9_in),
        .I3(p_10_in),
        .I4(p_14_in),
        .I5(p_13_in),
        .O(lpf_asr_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    lpf_asr_i_7
       (.I0(p_5_in),
        .I1(p_6_in),
        .I2(p_3_in),
        .I3(p_4_in),
        .I4(p_8_in),
        .I5(p_7_in),
        .O(lpf_asr_i_7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    lpf_asr_reg
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(\ACTIVE_LOW_AUX.ACT_LO_AUX_n_0 ),
        .Q(lpf_asr),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    lpf_exr_i_5
       (.I0(p_15_out[6]),
        .I1(p_15_out[7]),
        .I2(p_15_out[4]),
        .I3(p_15_out[5]),
        .I4(p_15_out[9]),
        .I5(p_15_out[8]),
        .O(lpf_exr_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    lpf_exr_i_7
       (.I0(p_15_out[6]),
        .I1(p_15_out[7]),
        .I2(p_15_out[4]),
        .I3(p_15_out[5]),
        .I4(p_15_out[9]),
        .I5(p_15_out[8]),
        .O(lpf_exr_i_7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    lpf_exr_reg
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(\ACTIVE_LOW_EXT.ACT_LO_EXT_n_0 ),
        .Q(lpf_exr),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    lpf_int0
       (.I0(dcm_locked),
        .I1(lpf_exr),
        .I2(lpf_asr),
        .I3(Q),
        .O(lpf_int0__0));
  FDRE #(
    .INIT(1'b0)) 
    lpf_int_reg
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(lpf_int0__0),
        .Q(lpf_int),
        .R(1'b0));
endmodule

(* C_AUX_RESET_HIGH = "1'b0" *) (* C_AUX_RST_WIDTH = "16" *) (* C_EXT_RESET_HIGH = "1'b0" *) 
(* C_EXT_RST_WIDTH = "16" *) (* C_FAMILY = "kintex7" *) (* C_NUM_BUS_RST = "1" *) 
(* C_NUM_INTERCONNECT_ARESETN = "1" *) (* C_NUM_PERP_ARESETN = "1" *) (* C_NUM_PERP_RST = "1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_proc_sys_reset
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  input slowest_sync_clk;
  input ext_reset_in;
  input aux_reset_in;
  input mb_debug_sys_rst;
  input dcm_locked;
  output mb_reset;
  output [0:0]bus_struct_reset;
  output [0:0]peripheral_reset;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;

  wire Bsr_out;
  wire MB_out;
  wire Pr_out;
  wire SEQ_n_3;
  wire SEQ_n_4;
  wire aux_reset_in;
  wire [0:0]bus_struct_reset;
  wire dcm_locked;
  wire ext_reset_in;
  wire [0:0]interconnect_aresetn;
  wire lpf_int;
  wire mb_debug_sys_rst;
  wire mb_reset;
  wire [0:0]peripheral_aresetn;
  wire [0:0]peripheral_reset;
  wire slowest_sync_clk;

  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ACTIVE_LOW_BSR_OUT_DFF[0].FDRE_BSR_N 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(SEQ_n_3),
        .Q(interconnect_aresetn),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ACTIVE_LOW_PR_OUT_DFF[0].FDRE_PER_N 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(SEQ_n_4),
        .Q(peripheral_aresetn),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \BSR_OUT_DFF[0].FDRE_BSR 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(Bsr_out),
        .Q(bus_struct_reset),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lpf EXT_LPF
       (.aux_reset_in(aux_reset_in),
        .dcm_locked(dcm_locked),
        .ext_reset_in(ext_reset_in),
        .lpf_int(lpf_int),
        .mb_debug_sys_rst(mb_debug_sys_rst),
        .slowest_sync_clk(slowest_sync_clk));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    FDRE_inst
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(MB_out),
        .Q(mb_reset),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PR_OUT_DFF[0].FDRE_PER 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(Pr_out),
        .Q(peripheral_reset),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sequence_psr SEQ
       (.Bsr_out(Bsr_out),
        .MB_out(MB_out),
        .Pr_out(Pr_out),
        .bsr_reg_0(SEQ_n_3),
        .lpf_int(lpf_int),
        .pr_reg_0(SEQ_n_4),
        .slowest_sync_clk(slowest_sync_clk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sequence_psr
   (MB_out,
    Bsr_out,
    Pr_out,
    bsr_reg_0,
    pr_reg_0,
    lpf_int,
    slowest_sync_clk);
  output MB_out;
  output Bsr_out;
  output Pr_out;
  output bsr_reg_0;
  output pr_reg_0;
  input lpf_int;
  input slowest_sync_clk;

  wire Bsr_out;
  wire Core_i_1_n_0;
  wire MB_out;
  wire Pr_out;
  wire \bsr_dec_reg_n_0_[0] ;
  wire \bsr_dec_reg_n_0_[2] ;
  wire bsr_i_1_n_0;
  wire bsr_reg_0;
  wire \core_dec[0]_i_1_n_0 ;
  wire \core_dec[2]_i_1_n_0 ;
  wire \core_dec_reg_n_0_[0] ;
  wire \core_dec_reg_n_0_[1] ;
  wire from_sys_i_1_n_0;
  wire lpf_int;
  wire p_0_in;
  wire [2:0]p_3_out;
  wire [2:0]p_5_out;
  wire pr_dec0__0;
  wire \pr_dec_reg_n_0_[0] ;
  wire \pr_dec_reg_n_0_[2] ;
  wire pr_i_1_n_0;
  wire pr_reg_0;
  wire seq_clr;
  wire [5:0]seq_cnt;
  wire seq_cnt_en;
  wire slowest_sync_clk;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \ACTIVE_LOW_BSR_OUT_DFF[0].FDRE_BSR_N_i_1 
       (.I0(Bsr_out),
        .O(bsr_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \ACTIVE_LOW_PR_OUT_DFF[0].FDRE_PER_N_i_1 
       (.I0(Pr_out),
        .O(pr_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    Core_i_1
       (.I0(MB_out),
        .I1(p_0_in),
        .O(Core_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    Core_reg
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(Core_i_1_n_0),
        .Q(MB_out),
        .S(lpf_int));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_upcnt_n SEQ_COUNTER
       (.Q(seq_cnt),
        .seq_clr(seq_clr),
        .seq_cnt_en(seq_cnt_en),
        .slowest_sync_clk(slowest_sync_clk));
  LUT4 #(
    .INIT(16'h0090)) 
    \bsr_dec[0]_i_1 
       (.I0(seq_cnt_en),
        .I1(seq_cnt[4]),
        .I2(seq_cnt[3]),
        .I3(seq_cnt[5]),
        .O(p_5_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bsr_dec[2]_i_1 
       (.I0(\core_dec_reg_n_0_[1] ),
        .I1(\bsr_dec_reg_n_0_[0] ),
        .O(p_5_out[2]));
  FDRE #(
    .INIT(1'b0)) 
    \bsr_dec_reg[0] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_5_out[0]),
        .Q(\bsr_dec_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bsr_dec_reg[2] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_5_out[2]),
        .Q(\bsr_dec_reg_n_0_[2] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    bsr_i_1
       (.I0(Bsr_out),
        .I1(\bsr_dec_reg_n_0_[2] ),
        .O(bsr_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    bsr_reg
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(bsr_i_1_n_0),
        .Q(Bsr_out),
        .S(lpf_int));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h9000)) 
    \core_dec[0]_i_1 
       (.I0(seq_cnt_en),
        .I1(seq_cnt[4]),
        .I2(seq_cnt[3]),
        .I3(seq_cnt[5]),
        .O(\core_dec[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \core_dec[2]_i_1 
       (.I0(\core_dec_reg_n_0_[1] ),
        .I1(\core_dec_reg_n_0_[0] ),
        .O(\core_dec[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \core_dec_reg[0] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(\core_dec[0]_i_1_n_0 ),
        .Q(\core_dec_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \core_dec_reg[1] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(pr_dec0__0),
        .Q(\core_dec_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \core_dec_reg[2] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(\core_dec[2]_i_1_n_0 ),
        .Q(p_0_in),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    from_sys_i_1
       (.I0(MB_out),
        .I1(seq_cnt_en),
        .O(from_sys_i_1_n_0));
  FDSE #(
    .INIT(1'b0)) 
    from_sys_reg
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(from_sys_i_1_n_0),
        .Q(seq_cnt_en),
        .S(lpf_int));
  LUT4 #(
    .INIT(16'h0018)) 
    pr_dec0
       (.I0(seq_cnt_en),
        .I1(seq_cnt[0]),
        .I2(seq_cnt[2]),
        .I3(seq_cnt[1]),
        .O(pr_dec0__0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0480)) 
    \pr_dec[0]_i_1 
       (.I0(seq_cnt_en),
        .I1(seq_cnt[3]),
        .I2(seq_cnt[5]),
        .I3(seq_cnt[4]),
        .O(p_3_out[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \pr_dec[2]_i_1 
       (.I0(\core_dec_reg_n_0_[1] ),
        .I1(\pr_dec_reg_n_0_[0] ),
        .O(p_3_out[2]));
  FDRE #(
    .INIT(1'b0)) 
    \pr_dec_reg[0] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_3_out[0]),
        .Q(\pr_dec_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pr_dec_reg[2] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_3_out[2]),
        .Q(\pr_dec_reg_n_0_[2] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    pr_i_1
       (.I0(Pr_out),
        .I1(\pr_dec_reg_n_0_[2] ),
        .O(pr_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    pr_reg
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(pr_i_1_n_0),
        .Q(Pr_out),
        .S(lpf_int));
  FDRE #(
    .INIT(1'b0)) 
    seq_clr_reg
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(seq_clr),
        .R(lpf_int));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_upcnt_n
   (Q,
    seq_clr,
    seq_cnt_en,
    slowest_sync_clk);
  output [5:0]Q;
  input seq_clr;
  input seq_cnt_en;
  input slowest_sync_clk;

  wire [5:0]Q;
  wire clear;
  wire [5:0]q_int0;
  wire seq_clr;
  wire seq_cnt_en;
  wire slowest_sync_clk;

  LUT1 #(
    .INIT(2'h1)) 
    \q_int[0]_i_1 
       (.I0(Q[0]),
        .O(q_int0[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q_int[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(q_int0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \q_int[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(q_int0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \q_int[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(q_int0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \q_int[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(q_int0[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \q_int[5]_i_1 
       (.I0(seq_clr),
        .O(clear));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \q_int[5]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(q_int0[5]));
  FDRE #(
    .INIT(1'b1)) 
    \q_int_reg[0] 
       (.C(slowest_sync_clk),
        .CE(seq_cnt_en),
        .D(q_int0[0]),
        .Q(Q[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \q_int_reg[1] 
       (.C(slowest_sync_clk),
        .CE(seq_cnt_en),
        .D(q_int0[1]),
        .Q(Q[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \q_int_reg[2] 
       (.C(slowest_sync_clk),
        .CE(seq_cnt_en),
        .D(q_int0[2]),
        .Q(Q[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \q_int_reg[3] 
       (.C(slowest_sync_clk),
        .CE(seq_cnt_en),
        .D(q_int0[3]),
        .Q(Q[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \q_int_reg[4] 
       (.C(slowest_sync_clk),
        .CE(seq_cnt_en),
        .D(q_int0[4]),
        .Q(Q[4]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \q_int_reg[5] 
       (.C(slowest_sync_clk),
        .CE(seq_cnt_en),
        .D(q_int0[5]),
        .Q(Q[5]),
        .R(clear));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
