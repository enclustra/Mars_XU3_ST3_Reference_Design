# ----------------------------------------------------------------------------------
# Copyright (c) 2020 by Enclustra GmbH, Switzerland.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of
# this hardware, software, firmware, and associated documentation files (the
# "Product"), to deal in the Product without restriction, including without
# limitation the rights to use, copy, modify, merge, publish, distribute,
# sublicense, and/or sell copies of the Product, and to permit persons to whom the
# Product is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Product.
#
# THE PRODUCT IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
# INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
# PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
# HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
# PRODUCT OR THE USE OR OTHER DEALINGS IN THE PRODUCT.
# ----------------------------------------------------------------------------------

create_bd_design $module


create_bd_cell -type ip -vlnv xilinx.com:ip:zynq_ultra_ps_e zynq_ultra_ps_e
set_property -dict [ list \
  CONFIG.PSU_BANK_0_IO_STANDARD {LVCMOS18} \
  CONFIG.PSU_BANK_1_IO_STANDARD {LVCMOS18} \
  CONFIG.PSU_BANK_2_IO_STANDARD {LVCMOS18} \
  CONFIG.PSU_BANK_3_IO_STANDARD {LVCMOS18} \
] [get_bd_cells zynq_ultra_ps_e]
set_property -dict [ list \
  CONFIG.PSU__DISPLAYPORT__PERIPHERAL__ENABLE {1} \
  CONFIG.PSU__DP__REF_CLK_SEL {Ref Clk3} \
  CONFIG.PSU__DP__LANE_SEL {Dual Lower} \
  CONFIG.PSU__CRF_APB__TOPSW_MAIN_CTRL__SRCSEL {DPLL} \
  CONFIG.PSU__CRF_APB__DP_VIDEO_REF_CTRL__SRCSEL {VPLL} \
  CONFIG.PSU__CRF_APB__DP_AUDIO_REF_CTRL__SRCSEL {DPLL} \
  CONFIG.PSU__CRF_APB__DP_STC_REF_CTRL__SRCSEL {DPLL} \
] [get_bd_cells zynq_ultra_ps_e]
set_property -dict [ list \
  CONFIG.PSU__QSPI__PERIPHERAL__ENABLE {1} \
  CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__FREQMHZ {200} \
  CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__SRCSEL {RPLL} \
  CONFIG.PSU__QSPI__GRP_FBCLK__ENABLE {1} \
  CONFIG.PSU__QSPI__PERIPHERAL__DATA_MODE {x4} \
  CONFIG.PSU__SD0__PERIPHERAL__ENABLE {1} \
  CONFIG.PSU__SD0__SLOT_TYPE {eMMC} \
  CONFIG.PSU__SD1__PERIPHERAL__ENABLE {1} \
  CONFIG.PSU__SD1__SLOT_TYPE {SD 2.0} \
  CONFIG.PSU__SD1__PERIPHERAL__IO {MIO 46 .. 51} \
  CONFIG.PSU__SD1__GRP_CD__ENABLE {1} \
  CONFIG.PSU__I2C0__PERIPHERAL__ENABLE {1} \
  CONFIG.PSU__I2C0__PERIPHERAL__IO {MIO 10 .. 11} \
  CONFIG.PSU__UART0__PERIPHERAL__ENABLE {1} \
  CONFIG.PSU__UART0__PERIPHERAL__IO {MIO 38 .. 39} \
  CONFIG.PSU__TTC0__PERIPHERAL__ENABLE {1} \
  CONFIG.PSU__ENET3__GRP_MDIO__ENABLE {1} \
  CONFIG.PSU__ENET3__PERIPHERAL__ENABLE {1} \
  CONFIG.PSU__FPGA_PL1_ENABLE {1} \
  CONFIG.PSU__CRL_APB__PL1_REF_CTRL__FREQMHZ {50} \
  CONFIG.PSU__GPIO0_MIO__PERIPHERAL__ENABLE {1} \
  CONFIG.PSU__GPIO1_MIO__PERIPHERAL__ENABLE {1} \
  CONFIG.PSU_MIO_0_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_1_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_2_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_3_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_4_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_5_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_6_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_7_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_8_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_9_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_10_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_11_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_12_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_13_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_14_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_15_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_16_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_17_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_18_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_19_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_20_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_21_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_22_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_23_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_24_PULLUPDOWN {pullup} \
  CONFIG.PSU_MIO_25_PULLUPDOWN {pullup} \
  CONFIG.PSU_MIO_26_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_27_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_28_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_29_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_30_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_31_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_32_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_33_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_34_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_35_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_36_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_37_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_38_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_39_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_40_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_41_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_42_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_43_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_44_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_45_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_46_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_47_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_48_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_49_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_50_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_51_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_52_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_53_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_54_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_55_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_56_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_57_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_58_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_59_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_60_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_61_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_62_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_63_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_64_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_65_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_66_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_67_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_68_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_69_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_70_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_71_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_72_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_73_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_74_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_75_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_76_PULLUPDOWN {disable} \
  CONFIG.PSU_MIO_77_PULLUPDOWN {disable} \
  CONFIG.PSU__SD1__GRP_CD__ENABLE {1} \
  CONFIG.PSU__USB0__PERIPHERAL__ENABLE {1} \
] [get_bd_cells zynq_ultra_ps_e]

create_bd_cell -type ip -vlnv xilinx.com:ip:system_management_wiz system_management_wiz
set_property -dict [ list \
  CONFIG.CHANNEL_ENABLE_VP_VN {false} \
] [get_bd_cells system_management_wiz]

if { $PS_DDR == "D10"} {
  set_property -dict [ list \
    CONFIG.PSU__DDRC__SPEED_BIN {DDR4_1600J} \
    CONFIG.PSU__CRF_APB__DDR_CTRL__FREQMHZ {533} \
    CONFIG.PSU__DDRC__CWL {9} \
    CONFIG.PSU__DDRC__T_FAW {30} \
    CONFIG.PSU__DDRC__DEVICE_CAPACITY {4096 MBits} \
    CONFIG.PSU__DDRC__DRAM_WIDTH {16 Bits} \
    CONFIG.PSU__DDRC__ROW_ADDR_COUNT {15} \
    CONFIG.PSU__DDRC__BG_ADDR_COUNT {1} \
    CONFIG.PSU__DDRC__ECC {Disabled} \
    CONFIG.PSU__DDRC__PARITY_ENABLE {1} \
    CONFIG.PSU__DDRC__BUS_WIDTH {32 Bit} \
  ] [get_bd_cells zynq_ultra_ps_e]
}

if { $PS_DDR == "D11"} {
  set_property -dict [ list \
    CONFIG.PSU__DDRC__SPEED_BIN {DDR4_1600J} \
    CONFIG.PSU__CRF_APB__DDR_CTRL__FREQMHZ {533} \
    CONFIG.PSU__DDRC__CWL {9} \
    CONFIG.PSU__DDRC__T_FAW {30} \
    CONFIG.PSU__DDRC__DEVICE_CAPACITY {8192 MBits} \
    CONFIG.PSU__DDRC__DRAM_WIDTH {16 Bits} \
    CONFIG.PSU__DDRC__ROW_ADDR_COUNT {16} \
    CONFIG.PSU__DDRC__BG_ADDR_COUNT {1} \
    CONFIG.PSU__DDRC__ECC {Disabled} \
    CONFIG.PSU__DDRC__PARITY_ENABLE {1} \
    CONFIG.PSU__DDRC__BUS_WIDTH {32 Bit} \
  ] [get_bd_cells zynq_ultra_ps_e]
}

create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 led
set_property -dict [ list \
  CONFIG.C_GPIO_WIDTH {1} \
  CONFIG.C_ALL_OUTPUTS {1} \
  CONFIG.C_DOUT_DEFAULT {0x00000001} \
] [get_bd_cells led]
set_property -dict [ list \
  CONFIG.PSU__USB3_0__PERIPHERAL__ENABLE {1} \
  CONFIG.PSU__USB3_0__PERIPHERAL__IO {GT Lane2} \
  CONFIG.PSU__USB0__REF_CLK_SEL {Ref Clk2} \
  CONFIG.PSU__USB0__REF_CLK_FREQ {100} \
] [get_bd_cells zynq_ultra_ps_e]

create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 smartconnect_0
set_property -dict [list CONFIG.NUM_MI {2} CONFIG.NUM_CLKS {1} CONFIG.NUM_SI {1}] [get_bd_cells smartconnect_0]
connect_bd_intf_net [get_bd_intf_pins zynq_ultra_ps_e/M_AXI_HPM0_LPD] [get_bd_intf_pins smartconnect_0/S00_AXI]
connect_bd_intf_net [get_bd_intf_pins smartconnect_0/M00_AXI] [get_bd_intf_pins system_management_wiz/S_AXI_LITE]
connect_bd_net [get_bd_pins smartconnect_0/aclk] [get_bd_pins zynq_ultra_ps_e/pl_clk0]
connect_bd_net [get_bd_pins zynq_ultra_ps_e/maxihpm0_lpd_aclk] [get_bd_pins zynq_ultra_ps_e/pl_clk0]
connect_bd_net [get_bd_pins system_management_wiz/s_axi_aclk] [get_bd_pins zynq_ultra_ps_e/pl_clk0]
create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 ps_sys_rst
connect_bd_net [get_bd_pins ps_sys_rst/slowest_sync_clk] [get_bd_pins zynq_ultra_ps_e/pl_clk0]
connect_bd_net [get_bd_pins ps_sys_rst/peripheral_aresetn] [get_bd_pins system_management_wiz/s_axi_aresetn]
connect_bd_net [get_bd_pins ps_sys_rst/ext_reset_in] [get_bd_pins zynq_ultra_ps_e/pl_resetn0]
connect_bd_net [get_bd_pins ps_sys_rst/interconnect_aresetn] [get_bd_pins smartconnect_0/aresetn]
connect_bd_intf_net [get_bd_intf_pins smartconnect_0/M01_AXI] [get_bd_intf_pins led/S_AXI]
connect_bd_net [get_bd_pins led/s_axi_aclk] [get_bd_pins zynq_ultra_ps_e/pl_clk0]
connect_bd_net [get_bd_pins led/s_axi_aresetn] [get_bd_pins ps_sys_rst/peripheral_aresetn]

set DP_AUX_OUT [ create_bd_port -dir O DP_AUX_OUT]
connect_bd_net [get_bd_ports DP_AUX_OUT] [get_bd_pins zynq_ultra_ps_e/dp_aux_data_out]
set DP_AUX_OE [ create_bd_port -dir O DP_AUX_OE]
connect_bd_net [get_bd_ports DP_AUX_OE] [get_bd_pins zynq_ultra_ps_e/dp_aux_data_oe_n]
set DP_AUX_IN [ create_bd_port -dir I DP_AUX_IN]
connect_bd_net [get_bd_ports DP_AUX_IN] [get_bd_pins zynq_ultra_ps_e/dp_aux_data_in]
set DP_HPD [ create_bd_port -dir I DP_HPD]
connect_bd_net [get_bd_ports DP_HPD] [get_bd_pins zynq_ultra_ps_e/dp_hot_plug_detect]
set Clk100 [ create_bd_port -dir O -type clk Clk100]
connect_bd_net [get_bd_ports Clk100] [get_bd_pins zynq_ultra_ps_e/pl_clk0]
set Clk50 [ create_bd_port -dir O -type clk Clk50]
connect_bd_net [get_bd_ports Clk50] [get_bd_pins zynq_ultra_ps_e/pl_clk1]
set Rst_N [ create_bd_port -dir O -type rst Rst_N]
connect_bd_net [get_bd_ports Rst_N] [get_bd_pins zynq_ultra_ps_e/pl_resetn0]
set LED1_N [ create_bd_port -dir O LED1_N]
connect_bd_net [get_bd_ports LED1_N] [get_bd_pins led/gpio_io_o]
assign_bd_address
save_bd_design
validate_bd_design
save_bd_design
