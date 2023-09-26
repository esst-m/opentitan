// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
// PLEASE DO NOT HAND-EDIT THIS FILE.
// It is generated by topgen.py.

module rstmgr_bind;
`ifndef GATE_LEVEL
  bind rstmgr tlul_assert #(
    .EndpointType("Device")
  ) tlul_assert_device (.clk_i, .rst_ni, .h2d(tl_i), .d2h(tl_o));

  bind rstmgr rstmgr_cascading_sva_if rstmgr_cascading_sva_if (
    .clk_i,
    .clk_aon_i,
    .clk_io_div4_i,
    .clk_io_div2_i,
    .clk_io_i,
    .clk_main_i,
    .clk_usb_i,
    .por_n_i,
    .scan_rst_ni,
    .scanmode_i,
    .resets_o,
    .rst_lc_req(pwr_i.rst_lc_req),
    .rst_sys_req(pwr_i.rst_sys_req),
    .rst_lc_src_n(pwr_o.rst_lc_src_n),
    .rst_sys_src_n(pwr_o.rst_sys_src_n)
  );

  bind rstmgr rstmgr_attrs_sva_if rstmgr_attrs_sva_if (
    .rst_ni,
    .actual_alert_info_attr(int'(hw2reg.alert_info_attr)),
    .actual_cpu_info_attr(int'(hw2reg.cpu_info_attr)),
    .expected_alert_info_attr(($bits(alert_dump_i) + 31) / 32),
    .expected_cpu_info_attr(($bits(cpu_dump_i) + 31) / 32)
  );
  bind rstmgr rstmgr_sw_rst_sva_if rstmgr_sw_rst_0_sva_if (
    .clk_i(clk_io_div4_i),
    .rst_ni,
    .parent_rst_n(rst_lc_src_n[1]),
    .ctrl_n(reg2hw.sw_rst_ctrl_n[0]),
    .rst_en(rst_en_o.spi_device[1] == prim_mubi_pkg::MuBi4True),
    .rst_n(resets_o.rst_spi_device_n[1])
  );
  bind rstmgr rstmgr_sw_rst_sva_if rstmgr_sw_rst_1_sva_if (
    .clk_i(clk_io_div4_i),
    .rst_ni,
    .parent_rst_n(rst_lc_src_n[1]),
    .ctrl_n(reg2hw.sw_rst_ctrl_n[1]),
    .rst_en(rst_en_o.spi_host0[1] == prim_mubi_pkg::MuBi4True),
    .rst_n(resets_o.rst_spi_host0_n[1])
  );
  bind rstmgr rstmgr_sw_rst_sva_if rstmgr_sw_rst_2_sva_if (
    .clk_i(clk_io_div2_i),
    .rst_ni,
    .parent_rst_n(rst_lc_src_n[1]),
    .ctrl_n(reg2hw.sw_rst_ctrl_n[2]),
    .rst_en(rst_en_o.spi_host1[1] == prim_mubi_pkg::MuBi4True),
    .rst_n(resets_o.rst_spi_host1_n[1])
  );
  bind rstmgr rstmgr_sw_rst_sva_if rstmgr_sw_rst_3_sva_if (
    .clk_i(clk_io_div4_i),
    .rst_ni,
    .parent_rst_n(rst_lc_src_n[1]),
    .ctrl_n(reg2hw.sw_rst_ctrl_n[3]),
    .rst_en(rst_en_o.i2c0[1] == prim_mubi_pkg::MuBi4True),
    .rst_n(resets_o.rst_i2c0_n[1])
  );
`endif
endmodule
