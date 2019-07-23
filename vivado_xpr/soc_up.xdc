#set_property SEVERITY {Warning} [get_drc_checks RTSTAT-2]
#时钟信号连接
#create_clock -period 10.000 [get_ports clk]
set_property PACKAGE_PIN AC19 [get_ports clk]
set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets clk]
create_clock -period 10.000 -name clk -waveform {0.000 5.000} [get_ports clk]

#reset
set_property PACKAGE_PIN Y3 [get_ports resetn]

#GPIO
set_property PACKAGE_PIN M25 [get_ports {GPIO16_pins[0]}]
set_property PACKAGE_PIN P25 [get_ports {GPIO16_pins[1]}]
set_property PACKAGE_PIN R26 [get_ports {GPIO16_pins[2]}]
set_property PACKAGE_PIN K26 [get_ports {GPIO16_pins[3]}]
set_property PACKAGE_PIN N26 [get_ports {GPIO16_pins[4]}]
set_property PACKAGE_PIN R25 [get_ports {GPIO16_pins[5]}]
set_property PACKAGE_PIN K25 [get_ports {GPIO16_pins[6]}]
set_property PACKAGE_PIN M26 [get_ports {GPIO16_pins[7]}]
set_property PACKAGE_PIN P26 [get_ports {GPIO16_pins[8]}]
set_property PACKAGE_PIN T25 [get_ports {GPIO16_pins[9]}]
set_property PACKAGE_PIN L24 [get_ports {GPIO16_pins[10]}]
set_property PACKAGE_PIN L25 [get_ports {GPIO16_pins[11]}]
set_property PACKAGE_PIN L23 [get_ports {GPIO16_pins[12]}]
set_property PACKAGE_PIN L22 [get_ports {GPIO16_pins[13]}]
set_property PACKAGE_PIN M24 [get_ports {GPIO16_pins[14]}]
set_property PACKAGE_PIN L20 [get_ports {GPIO16_pins[15]}]

#GPIO Unused Pins FPGA_EXT_IO16-31
#set_property PACKAGE_PIN M22
#set_property PACKAGE_PIN N24
#set_property PACKAGE_PIN N23
#set_property PACKAGE_PIN N22
#set_property PACKAGE_PIN M21
#set_property PACKAGE_PIN N21
#set_property PACKAGE_PIN M20
#set_property PACKAGE_PIN N19
#set_property PACKAGE_PIN P24
#set_property PACKAGE_PIN P23
#set_property PACKAGE_PIN P21
#set_property PACKAGE_PIN R23
#set_property PACKAGE_PIN R22
#set_property PACKAGE_PIN T24
#set_property PACKAGE_PIN T23
#set_property PACKAGE_PIN T22

set_property IOSTANDARD LVCMOS33 [get_ports {GPIO16_pins[*]}]

#LCD & TS
set_property PACKAGE_PIN J25 [get_ports lcd_rst]
set_property PACKAGE_PIN H18 [get_ports lcd_cs]
set_property PACKAGE_PIN K16 [get_ports lcd_rs]
set_property PACKAGE_PIN L8 [get_ports lcd_wr]
set_property PACKAGE_PIN K8 [get_ports lcd_rd]
set_property PACKAGE_PIN J15 [get_ports lcd_bl_ctr]
set_property PACKAGE_PIN H9 [get_ports {lcd_data_io[0]}]
set_property PACKAGE_PIN K17 [get_ports {lcd_data_io[1]}]
set_property PACKAGE_PIN J20 [get_ports {lcd_data_io[2]}]
set_property PACKAGE_PIN M17 [get_ports {lcd_data_io[3]}]
set_property PACKAGE_PIN L17 [get_ports {lcd_data_io[4]}]
set_property PACKAGE_PIN L18 [get_ports {lcd_data_io[5]}]
set_property PACKAGE_PIN L15 [get_ports {lcd_data_io[6]}]
set_property PACKAGE_PIN M15 [get_ports {lcd_data_io[7]}]
set_property PACKAGE_PIN M16 [get_ports {lcd_data_io[8]}]
set_property PACKAGE_PIN L14 [get_ports {lcd_data_io[9]}]
set_property PACKAGE_PIN M14 [get_ports {lcd_data_io[10]}]
set_property PACKAGE_PIN F22 [get_ports {lcd_data_io[11]}]
set_property PACKAGE_PIN G22 [get_ports {lcd_data_io[12]}]
set_property PACKAGE_PIN G21 [get_ports {lcd_data_io[13]}]
set_property PACKAGE_PIN H24 [get_ports {lcd_data_io[14]}]
set_property PACKAGE_PIN J16 [get_ports {lcd_data_io[15]}]
set_property PACKAGE_PIN L19 [get_ports ct_int]
set_property PACKAGE_PIN J24 [get_ports ct_sda]
set_property PACKAGE_PIN H21 [get_ports ct_scl]
set_property PACKAGE_PIN G24 [get_ports ct_rstn]

#LED
set_property PACKAGE_PIN K23 [get_ports {led[0]}]
set_property PACKAGE_PIN J21 [get_ports {led[1]}]
set_property PACKAGE_PIN H23 [get_ports {led[2]}]
set_property PACKAGE_PIN J19 [get_ports {led[3]}]
set_property PACKAGE_PIN G9 [get_ports {led[4]}]
set_property PACKAGE_PIN J26 [get_ports {led[5]}]
set_property PACKAGE_PIN J23 [get_ports {led[6]}]
set_property PACKAGE_PIN J8 [get_ports {led[7]}]
set_property PACKAGE_PIN H8 [get_ports {led[8]}]
set_property PACKAGE_PIN G8 [get_ports {led[9]}]
set_property PACKAGE_PIN F7 [get_ports {led[10]}]
set_property PACKAGE_PIN A4 [get_ports {led[11]}]
set_property PACKAGE_PIN A5 [get_ports {led[12]}]
set_property PACKAGE_PIN A3 [get_ports {led[13]}]
set_property PACKAGE_PIN D5 [get_ports {led[14]}]
set_property PACKAGE_PIN H7 [get_ports {led[15]}]

#led_rg 0/1
set_property PACKAGE_PIN G7 [get_ports {led_rg0[0]}]
set_property PACKAGE_PIN F8 [get_ports {led_rg0[1]}]
set_property PACKAGE_PIN B5 [get_ports {led_rg1[0]}]
set_property PACKAGE_PIN D6 [get_ports {led_rg1[1]}]

#DOT
set_property PACKAGE_PIN F3 [get_ports {dot_r[0]}]
set_property PACKAGE_PIN F4 [get_ports {dot_r[1]}]
set_property PACKAGE_PIN C2 [get_ports {dot_r[2]}]
set_property PACKAGE_PIN F5 [get_ports {dot_r[3]}]
set_property PACKAGE_PIN H3 [get_ports {dot_r[4]}]
set_property PACKAGE_PIN B1 [get_ports {dot_r[5]}]
set_property PACKAGE_PIN G4 [get_ports {dot_r[6]}]
set_property PACKAGE_PIN J5 [get_ports {dot_r[7]}]

set_property PACKAGE_PIN G6 [get_ports {dot_c[0]}]
set_property PACKAGE_PIN G5 [get_ports {dot_c[1]}]
set_property PACKAGE_PIN H6 [get_ports {dot_c[2]}]
set_property PACKAGE_PIN J4 [get_ports {dot_c[3]}]
set_property PACKAGE_PIN J6 [get_ports {dot_c[4]}]
set_property PACKAGE_PIN E3 [get_ports {dot_c[5]}]
set_property PACKAGE_PIN C1 [get_ports {dot_c[6]}]
set_property PACKAGE_PIN H4 [get_ports {dot_c[7]}]

#NUM
set_property PACKAGE_PIN D3 [get_ports {num_csn[7]}]
set_property PACKAGE_PIN D25 [get_ports {num_csn[6]}]
set_property PACKAGE_PIN D26 [get_ports {num_csn[5]}]
set_property PACKAGE_PIN E25 [get_ports {num_csn[4]}]
set_property PACKAGE_PIN E26 [get_ports {num_csn[3]}]
set_property PACKAGE_PIN G25 [get_ports {num_csn[2]}]
set_property PACKAGE_PIN G26 [get_ports {num_csn[1]}]
set_property PACKAGE_PIN H26 [get_ports {num_csn[0]}]

set_property PACKAGE_PIN C3 [get_ports {num_a_g[0]}]
set_property PACKAGE_PIN E6 [get_ports {num_a_g[1]}]
set_property PACKAGE_PIN B2 [get_ports {num_a_g[2]}]
set_property PACKAGE_PIN B4 [get_ports {num_a_g[3]}]
set_property PACKAGE_PIN E5 [get_ports {num_a_g[4]}]
set_property PACKAGE_PIN D4 [get_ports {num_a_g[5]}]
set_property PACKAGE_PIN A2 [get_ports {num_a_g[6]}]
#set_property PACKAGE_PIN C4 :DP

#switch
set_property PACKAGE_PIN AC21 [get_ports {switch[7]}]
set_property PACKAGE_PIN AD24 [get_ports {switch[6]}]
set_property PACKAGE_PIN AC22 [get_ports {switch[5]}]
set_property PACKAGE_PIN AC23 [get_ports {switch[4]}]
set_property PACKAGE_PIN AB6 [get_ports {switch[3]}]
set_property PACKAGE_PIN W6 [get_ports {switch[2]}]
set_property PACKAGE_PIN AA7 [get_ports {switch[1]}]
set_property PACKAGE_PIN Y6 [get_ports {switch[0]}]

#btn_key
set_property PACKAGE_PIN V8 [get_ports {btn_key_col[0]}]
set_property PACKAGE_PIN V9 [get_ports {btn_key_col[1]}]
set_property PACKAGE_PIN Y8 [get_ports {btn_key_col[2]}]
set_property PACKAGE_PIN V7 [get_ports {btn_key_col[3]}]
set_property PACKAGE_PIN U7 [get_ports {btn_key_row[0]}]
set_property PACKAGE_PIN W8 [get_ports {btn_key_row[1]}]
set_property PACKAGE_PIN Y7 [get_ports {btn_key_row[2]}]
set_property PACKAGE_PIN AA8 [get_ports {btn_key_row[3]}]

#btn_step
set_property PACKAGE_PIN Y5 [get_ports {btn_step[0]}]
set_property PACKAGE_PIN V6 [get_ports {btn_step[1]}]

#SPI flash
set_property PACKAGE_PIN P20 [get_ports SPI_CLK]
set_property PACKAGE_PIN R20 [get_ports SPI_CS]
set_property PACKAGE_PIN P19 [get_ports SPI_MISO]
set_property PACKAGE_PIN N18 [get_ports SPI_MOSI]

#mac phy connect
set_property PACKAGE_PIN AB21 [get_ports mtxclk_0]
set_property PACKAGE_PIN AA19 [get_ports mrxclk_0]
set_property PACKAGE_PIN AA15 [get_ports mtxen_0]
set_property PACKAGE_PIN AF18 [get_ports {mtxd_0[0]}]
set_property PACKAGE_PIN AE18 [get_ports {mtxd_0[1]}]
set_property PACKAGE_PIN W15 [get_ports {mtxd_0[2]}]
set_property PACKAGE_PIN W14 [get_ports {mtxd_0[3]}]
set_property PACKAGE_PIN AB20 [get_ports mtxerr_0]
set_property PACKAGE_PIN AE22 [get_ports mrxdv_0]
set_property PACKAGE_PIN V1 [get_ports {mrxd_0[0]}]
set_property PACKAGE_PIN V4 [get_ports {mrxd_0[1]}]
set_property PACKAGE_PIN V2 [get_ports {mrxd_0[2]}]
set_property PACKAGE_PIN V3 [get_ports {mrxd_0[3]}]
set_property PACKAGE_PIN W16 [get_ports mrxerr_0]
set_property PACKAGE_PIN Y15 [get_ports mcoll_0]
set_property PACKAGE_PIN AF20 [get_ports mcrs_0]
set_property PACKAGE_PIN W3 [get_ports mdc_0]
set_property PACKAGE_PIN W1 [get_ports mdio_0]
set_property PACKAGE_PIN AE26 [get_ports phy_rstn]

#uart
set_property PACKAGE_PIN F23 [get_ports UART_RX]
set_property IOSTANDARD LVCMOS33 [get_ports UART_RX]
set_property PACKAGE_PIN H19 [get_ports UART_TX]
set_property IOSTANDARD LVCMOS33 [get_ports UART_TX]

#nand flash
set_property PACKAGE_PIN V19 [get_ports NAND_CLE]
set_property PACKAGE_PIN W20 [get_ports NAND_ALE]
set_property PACKAGE_PIN AA25 [get_ports NAND_RDY]
set_property PACKAGE_PIN AA24 [get_ports NAND_RD]
set_property PACKAGE_PIN AB24 [get_ports NAND_CE]
set_property PACKAGE_PIN AA22 [get_ports NAND_WR]
set_property PACKAGE_PIN W19 [get_ports {NAND_DATA[7]}]
set_property PACKAGE_PIN Y20 [get_ports {NAND_DATA[6]}]
set_property PACKAGE_PIN Y21 [get_ports {NAND_DATA[5]}]
set_property PACKAGE_PIN V18 [get_ports {NAND_DATA[4]}]
set_property PACKAGE_PIN U19 [get_ports {NAND_DATA[3]}]
set_property PACKAGE_PIN U20 [get_ports {NAND_DATA[2]}]
set_property PACKAGE_PIN W21 [get_ports {NAND_DATA[1]}]
set_property PACKAGE_PIN AC24 [get_ports {NAND_DATA[0]}]

#ejtag
set_property PACKAGE_PIN J18 [get_ports EJTAG_TRST]
set_property PACKAGE_PIN K18 [get_ports EJTAG_TCK]
set_property PACKAGE_PIN K20 [get_ports EJTAG_TDI]
set_property PACKAGE_PIN K22 [get_ports EJTAG_TMS]
set_property PACKAGE_PIN K21 [get_ports EJTAG_TDO]


set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports resetn]
set_property IOSTANDARD LVCMOS33 [get_ports {led[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_rg0[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_rg1[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dot_c[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dot_r[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {num_a_g[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {num_csn[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {switch[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {btn_key_col[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {btn_key_row[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {btn_step[*]}]

set_property IOSTANDARD LVCMOS33 [get_ports lcd_rst]
set_property IOSTANDARD LVCMOS33 [get_ports lcd_cs]
set_property IOSTANDARD LVCMOS33 [get_ports lcd_rs]
set_property IOSTANDARD LVCMOS33 [get_ports lcd_wr]
set_property IOSTANDARD LVCMOS33 [get_ports lcd_rd]
set_property IOSTANDARD LVCMOS33 [get_ports lcd_bl_ctr]
set_property IOSTANDARD LVCMOS33 [get_ports {lcd_data_io[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports ct_int]
set_property IOSTANDARD LVCMOS33 [get_ports ct_sda]
set_property IOSTANDARD LVCMOS33 [get_ports ct_scl]
set_property IOSTANDARD LVCMOS33 [get_ports ct_rstn]

set_property IOSTANDARD LVCMOS33 [get_ports SPI_MOSI]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_MISO]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_CS]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_CLK]

set_property IOSTANDARD LVCMOS33 [get_ports {mrxd_0[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mtxd_0[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports phy_rstn]
set_property IOSTANDARD LVCMOS33 [get_ports mtxerr_0]
set_property IOSTANDARD LVCMOS33 [get_ports mtxen_0]
set_property IOSTANDARD LVCMOS33 [get_ports mtxclk_0]
set_property IOSTANDARD LVCMOS33 [get_ports mrxerr_0]
set_property IOSTANDARD LVCMOS33 [get_ports mcoll_0]
set_property IOSTANDARD LVCMOS33 [get_ports mcrs_0]
set_property IOSTANDARD LVCMOS33 [get_ports mdc_0]
set_property IOSTANDARD LVCMOS33 [get_ports mdio_0]
set_property IOSTANDARD LVCMOS33 [get_ports mrxclk_0]
set_property IOSTANDARD LVCMOS33 [get_ports mrxdv_0]

set_property IOSTANDARD LVCMOS33 [get_ports NAND_CLE]
set_property IOSTANDARD LVCMOS33 [get_ports NAND_ALE]
set_property IOSTANDARD LVCMOS33 [get_ports NAND_RDY]
set_property IOSTANDARD LVCMOS33 [get_ports NAND_RD]
set_property IOSTANDARD LVCMOS33 [get_ports NAND_CE]
set_property IOSTANDARD LVCMOS33 [get_ports NAND_WR]
set_property IOSTANDARD LVCMOS33 [get_ports {NAND_DATA[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {NAND_DATA[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {NAND_DATA[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {NAND_DATA[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {NAND_DATA[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {NAND_DATA[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {NAND_DATA[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {NAND_DATA[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports EJTAG_TRST]
set_property IOSTANDARD LVCMOS33 [get_ports EJTAG_TCK]
set_property IOSTANDARD LVCMOS33 [get_ports EJTAG_TDI]
set_property IOSTANDARD LVCMOS33 [get_ports EJTAG_TMS]
set_property IOSTANDARD LVCMOS33 [get_ports EJTAG_TDO]
# set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets EJTAG_TCK_IBUF]

create_clock -period 40.000 -name mrxclk_0 -waveform {0.000 20.000} [get_ports mrxclk_0]
create_clock -period 40.000 -name mtxclk_0 -waveform {0.000 20.000} [get_ports mtxclk_0]

set_false_path -from [get_clocks clk_pll_i] -to [get_clocks clk_out1_clk_pll_33]
set_false_path -from [get_clocks mrxclk_0] -to [get_clocks clk_out1_clk_pll_33]
set_false_path -from [get_clocks mtxclk_0] -to [get_clocks clk_out1_clk_pll_33]
set_false_path -from [get_clocks clk_out1_clk_pll_33] -to [get_clocks mrxclk_0]
set_false_path -from [get_clocks clk_out1_clk_pll_33] -to [get_clocks mrxclk_0]
set_false_path -from [get_clocks clk_out1_clk_pll_33] -to [get_clocks mtxclk_0]
set_false_path -from [get_clocks clk_out1_clk_pll_33] -to [get_clocks mtxclk_0]










set_property MARK_DEBUG true [get_nets GPU/ts_ctrl/ct_sda_TRI]
connect_debug_port u_ila_0/probe3 [get_nets [list GPU/ts_ctrl/ct_sda_OBUF]]

set_property MARK_DEBUG true [get_nets GPU/ts_ctrl/clk]




connect_debug_port u_ila_0/probe0 [get_nets [list {cpu_mid/mips_core/pc/pc[0]} {cpu_mid/mips_core/pc/pc[1]} {cpu_mid/mips_core/pc/pc[2]} {cpu_mid/mips_core/pc/pc[3]} {cpu_mid/mips_core/pc/pc[4]} {cpu_mid/mips_core/pc/pc[5]} {cpu_mid/mips_core/pc/pc[6]} {cpu_mid/mips_core/pc/pc[7]} {cpu_mid/mips_core/pc/pc[8]} {cpu_mid/mips_core/pc/pc[9]} {cpu_mid/mips_core/pc/pc[10]} {cpu_mid/mips_core/pc/pc[11]} {cpu_mid/mips_core/pc/pc[12]} {cpu_mid/mips_core/pc/pc[13]} {cpu_mid/mips_core/pc/pc[14]} {cpu_mid/mips_core/pc/pc[15]} {cpu_mid/mips_core/pc/pc[16]} {cpu_mid/mips_core/pc/pc[17]} {cpu_mid/mips_core/pc/pc[18]} {cpu_mid/mips_core/pc/pc[19]} {cpu_mid/mips_core/pc/pc[20]} {cpu_mid/mips_core/pc/pc[21]} {cpu_mid/mips_core/pc/pc[22]} {cpu_mid/mips_core/pc/pc[23]} {cpu_mid/mips_core/pc/pc[24]} {cpu_mid/mips_core/pc/pc[25]} {cpu_mid/mips_core/pc/pc[26]} {cpu_mid/mips_core/pc/pc[27]} {cpu_mid/mips_core/pc/pc[28]} {cpu_mid/mips_core/pc/pc[29]} {cpu_mid/mips_core/pc/pc[30]} {cpu_mid/mips_core/pc/pc[31]}]]



connect_debug_port u_ila_0/probe12 [get_nets [list {single_gpio_araddr[0]} {single_gpio_araddr[1]} {single_gpio_araddr[2]} {single_gpio_araddr[3]} {single_gpio_araddr[4]} {single_gpio_araddr[5]} {single_gpio_araddr[6]} {single_gpio_araddr[7]} {single_gpio_araddr[8]}]]
connect_debug_port u_ila_0/probe28 [get_nets [list single_gpio_arvalid]]
connect_debug_port u_ila_0/probe29 [get_nets [list single_gpio_rready]]


connect_debug_port u_ila_0/probe5 [get_nets [list {single_gpio_io_i[0]} {single_gpio_io_i[1]} {single_gpio_io_i[2]} {single_gpio_io_i[3]} {single_gpio_io_i[4]} {single_gpio_io_i[5]} {single_gpio_io_i[6]} {single_gpio_io_i[7]} {single_gpio_io_i[8]} {single_gpio_io_i[9]} {single_gpio_io_i[10]} {single_gpio_io_i[11]} {single_gpio_io_i[12]} {single_gpio_io_i[13]} {single_gpio_io_i[14]} {single_gpio_io_i[15]}]]
connect_debug_port u_ila_0/probe6 [get_nets [list {single_gpio_io_o[0]} {single_gpio_io_o[1]} {single_gpio_io_o[2]} {single_gpio_io_o[3]} {single_gpio_io_o[4]} {single_gpio_io_o[5]} {single_gpio_io_o[6]} {single_gpio_io_o[7]} {single_gpio_io_o[8]} {single_gpio_io_o[9]} {single_gpio_io_o[10]} {single_gpio_io_o[11]} {single_gpio_io_o[12]} {single_gpio_io_o[13]} {single_gpio_io_o[14]} {single_gpio_io_o[15]}]]
connect_debug_port u_ila_0/probe7 [get_nets [list {single_gpio_io_t[0]} {single_gpio_io_t[1]} {single_gpio_io_t[2]} {single_gpio_io_t[3]} {single_gpio_io_t[4]} {single_gpio_io_t[5]} {single_gpio_io_t[6]} {single_gpio_io_t[7]} {single_gpio_io_t[8]} {single_gpio_io_t[9]} {single_gpio_io_t[10]} {single_gpio_io_t[11]} {single_gpio_io_t[12]} {single_gpio_io_t[13]} {single_gpio_io_t[14]} {single_gpio_io_t[15]}]]
connect_debug_port u_ila_0/probe8 [get_nets [list {cpu_mid/mips_core/mmu_data/vaddr[0]} {cpu_mid/mips_core/mmu_data/vaddr[1]} {cpu_mid/mips_core/mmu_data/vaddr[2]} {cpu_mid/mips_core/mmu_data/vaddr[3]} {cpu_mid/mips_core/mmu_data/vaddr[4]} {cpu_mid/mips_core/mmu_data/vaddr[5]} {cpu_mid/mips_core/mmu_data/vaddr[6]} {cpu_mid/mips_core/mmu_data/vaddr[7]} {cpu_mid/mips_core/mmu_data/vaddr[8]} {cpu_mid/mips_core/mmu_data/vaddr[9]} {cpu_mid/mips_core/mmu_data/vaddr[10]} {cpu_mid/mips_core/mmu_data/vaddr[11]} {cpu_mid/mips_core/mmu_data/vaddr[12]} {cpu_mid/mips_core/mmu_data/vaddr[13]} {cpu_mid/mips_core/mmu_data/vaddr[14]} {cpu_mid/mips_core/mmu_data/vaddr[15]} {cpu_mid/mips_core/mmu_data/vaddr[16]} {cpu_mid/mips_core/mmu_data/vaddr[17]} {cpu_mid/mips_core/mmu_data/vaddr[18]} {cpu_mid/mips_core/mmu_data/vaddr[19]} {cpu_mid/mips_core/mmu_data/vaddr[20]} {cpu_mid/mips_core/mmu_data/vaddr[21]} {cpu_mid/mips_core/mmu_data/vaddr[22]} {cpu_mid/mips_core/mmu_data/vaddr[23]} {cpu_mid/mips_core/mmu_data/vaddr[24]} {cpu_mid/mips_core/mmu_data/vaddr[25]} {cpu_mid/mips_core/mmu_data/vaddr[26]} {cpu_mid/mips_core/mmu_data/vaddr[27]} {cpu_mid/mips_core/mmu_data/vaddr[28]} {cpu_mid/mips_core/mmu_data/vaddr[29]} {cpu_mid/mips_core/mmu_data/vaddr[30]} {cpu_mid/mips_core/mmu_data/vaddr[31]}]]
connect_debug_port u_ila_0/probe9 [get_nets [list {cpu_mid/mips_core/mmu_inst/vaddr[0]} {cpu_mid/mips_core/mmu_inst/vaddr[1]} {cpu_mid/mips_core/mmu_inst/vaddr[2]} {cpu_mid/mips_core/mmu_inst/vaddr[3]} {cpu_mid/mips_core/mmu_inst/vaddr[4]} {cpu_mid/mips_core/mmu_inst/vaddr[5]} {cpu_mid/mips_core/mmu_inst/vaddr[6]} {cpu_mid/mips_core/mmu_inst/vaddr[7]} {cpu_mid/mips_core/mmu_inst/vaddr[8]} {cpu_mid/mips_core/mmu_inst/vaddr[9]} {cpu_mid/mips_core/mmu_inst/vaddr[10]} {cpu_mid/mips_core/mmu_inst/vaddr[11]} {cpu_mid/mips_core/mmu_inst/vaddr[12]} {cpu_mid/mips_core/mmu_inst/vaddr[13]} {cpu_mid/mips_core/mmu_inst/vaddr[14]} {cpu_mid/mips_core/mmu_inst/vaddr[15]} {cpu_mid/mips_core/mmu_inst/vaddr[16]} {cpu_mid/mips_core/mmu_inst/vaddr[17]} {cpu_mid/mips_core/mmu_inst/vaddr[18]} {cpu_mid/mips_core/mmu_inst/vaddr[19]} {cpu_mid/mips_core/mmu_inst/vaddr[20]} {cpu_mid/mips_core/mmu_inst/vaddr[21]} {cpu_mid/mips_core/mmu_inst/vaddr[22]} {cpu_mid/mips_core/mmu_inst/vaddr[23]} {cpu_mid/mips_core/mmu_inst/vaddr[24]} {cpu_mid/mips_core/mmu_inst/vaddr[25]} {cpu_mid/mips_core/mmu_inst/vaddr[26]} {cpu_mid/mips_core/mmu_inst/vaddr[27]} {cpu_mid/mips_core/mmu_inst/vaddr[28]} {cpu_mid/mips_core/mmu_inst/vaddr[29]} {cpu_mid/mips_core/mmu_inst/vaddr[30]} {cpu_mid/mips_core/mmu_inst/vaddr[31]}]]
connect_debug_port u_ila_0/probe10 [get_nets [list {cpu_mid/mips_core/mmu_data/rdata[0]} {cpu_mid/mips_core/mmu_data/rdata[1]} {cpu_mid/mips_core/mmu_data/rdata[2]} {cpu_mid/mips_core/mmu_data/rdata[3]} {cpu_mid/mips_core/mmu_data/rdata[4]} {cpu_mid/mips_core/mmu_data/rdata[5]} {cpu_mid/mips_core/mmu_data/rdata[6]} {cpu_mid/mips_core/mmu_data/rdata[7]} {cpu_mid/mips_core/mmu_data/rdata[8]} {cpu_mid/mips_core/mmu_data/rdata[9]} {cpu_mid/mips_core/mmu_data/rdata[10]} {cpu_mid/mips_core/mmu_data/rdata[11]} {cpu_mid/mips_core/mmu_data/rdata[12]} {cpu_mid/mips_core/mmu_data/rdata[13]} {cpu_mid/mips_core/mmu_data/rdata[14]} {cpu_mid/mips_core/mmu_data/rdata[15]} {cpu_mid/mips_core/mmu_data/rdata[16]} {cpu_mid/mips_core/mmu_data/rdata[17]} {cpu_mid/mips_core/mmu_data/rdata[18]} {cpu_mid/mips_core/mmu_data/rdata[19]} {cpu_mid/mips_core/mmu_data/rdata[20]} {cpu_mid/mips_core/mmu_data/rdata[21]} {cpu_mid/mips_core/mmu_data/rdata[22]} {cpu_mid/mips_core/mmu_data/rdata[23]} {cpu_mid/mips_core/mmu_data/rdata[24]} {cpu_mid/mips_core/mmu_data/rdata[25]} {cpu_mid/mips_core/mmu_data/rdata[26]} {cpu_mid/mips_core/mmu_data/rdata[27]} {cpu_mid/mips_core/mmu_data/rdata[28]} {cpu_mid/mips_core/mmu_data/rdata[29]} {cpu_mid/mips_core/mmu_data/rdata[30]} {cpu_mid/mips_core/mmu_data/rdata[31]}]]
connect_debug_port u_ila_0/probe11 [get_nets [list {cpu_mid/mips_core/mmu_inst/rdata[0]} {cpu_mid/mips_core/mmu_inst/rdata[1]} {cpu_mid/mips_core/mmu_inst/rdata[2]} {cpu_mid/mips_core/mmu_inst/rdata[3]} {cpu_mid/mips_core/mmu_inst/rdata[4]} {cpu_mid/mips_core/mmu_inst/rdata[5]} {cpu_mid/mips_core/mmu_inst/rdata[6]} {cpu_mid/mips_core/mmu_inst/rdata[7]} {cpu_mid/mips_core/mmu_inst/rdata[8]} {cpu_mid/mips_core/mmu_inst/rdata[9]} {cpu_mid/mips_core/mmu_inst/rdata[10]} {cpu_mid/mips_core/mmu_inst/rdata[11]} {cpu_mid/mips_core/mmu_inst/rdata[12]} {cpu_mid/mips_core/mmu_inst/rdata[13]} {cpu_mid/mips_core/mmu_inst/rdata[14]} {cpu_mid/mips_core/mmu_inst/rdata[15]} {cpu_mid/mips_core/mmu_inst/rdata[16]} {cpu_mid/mips_core/mmu_inst/rdata[17]} {cpu_mid/mips_core/mmu_inst/rdata[18]} {cpu_mid/mips_core/mmu_inst/rdata[19]} {cpu_mid/mips_core/mmu_inst/rdata[20]} {cpu_mid/mips_core/mmu_inst/rdata[21]} {cpu_mid/mips_core/mmu_inst/rdata[22]} {cpu_mid/mips_core/mmu_inst/rdata[23]} {cpu_mid/mips_core/mmu_inst/rdata[24]} {cpu_mid/mips_core/mmu_inst/rdata[25]} {cpu_mid/mips_core/mmu_inst/rdata[26]} {cpu_mid/mips_core/mmu_inst/rdata[27]} {cpu_mid/mips_core/mmu_inst/rdata[28]} {cpu_mid/mips_core/mmu_inst/rdata[29]} {cpu_mid/mips_core/mmu_inst/rdata[30]} {cpu_mid/mips_core/mmu_inst/rdata[31]}]]
connect_debug_port u_ila_0/probe12 [get_nets [list {cpu_mid/mips_core/mmu_data/wdata[0]} {cpu_mid/mips_core/mmu_data/wdata[1]} {cpu_mid/mips_core/mmu_data/wdata[2]} {cpu_mid/mips_core/mmu_data/wdata[3]} {cpu_mid/mips_core/mmu_data/wdata[4]} {cpu_mid/mips_core/mmu_data/wdata[5]} {cpu_mid/mips_core/mmu_data/wdata[6]} {cpu_mid/mips_core/mmu_data/wdata[7]} {cpu_mid/mips_core/mmu_data/wdata[8]} {cpu_mid/mips_core/mmu_data/wdata[9]} {cpu_mid/mips_core/mmu_data/wdata[10]} {cpu_mid/mips_core/mmu_data/wdata[11]} {cpu_mid/mips_core/mmu_data/wdata[12]} {cpu_mid/mips_core/mmu_data/wdata[13]} {cpu_mid/mips_core/mmu_data/wdata[14]} {cpu_mid/mips_core/mmu_data/wdata[15]} {cpu_mid/mips_core/mmu_data/wdata[16]} {cpu_mid/mips_core/mmu_data/wdata[17]} {cpu_mid/mips_core/mmu_data/wdata[18]} {cpu_mid/mips_core/mmu_data/wdata[19]} {cpu_mid/mips_core/mmu_data/wdata[20]} {cpu_mid/mips_core/mmu_data/wdata[21]} {cpu_mid/mips_core/mmu_data/wdata[22]} {cpu_mid/mips_core/mmu_data/wdata[23]} {cpu_mid/mips_core/mmu_data/wdata[24]} {cpu_mid/mips_core/mmu_data/wdata[25]} {cpu_mid/mips_core/mmu_data/wdata[26]} {cpu_mid/mips_core/mmu_data/wdata[27]} {cpu_mid/mips_core/mmu_data/wdata[28]} {cpu_mid/mips_core/mmu_data/wdata[29]} {cpu_mid/mips_core/mmu_data/wdata[30]} {cpu_mid/mips_core/mmu_data/wdata[31]}]]
connect_debug_port u_ila_0/probe13 [get_nets [list {cpu_mid/mips_core/mmu_data/wen[0]} {cpu_mid/mips_core/mmu_data/wen[1]} {cpu_mid/mips_core/mmu_data/wen[2]} {cpu_mid/mips_core/mmu_data/wen[3]}]]
connect_debug_port u_ila_0/probe14 [get_nets [list {cpu_mid/mips_core/mmu_inst/wen[0]} {cpu_mid/mips_core/mmu_inst/wen[1]} {cpu_mid/mips_core/mmu_inst/wen[2]} {cpu_mid/mips_core/mmu_inst/wen[3]}]]
connect_debug_port u_ila_0/probe15 [get_nets [list {cpu_mid/mips_core/mmu_inst/wdata[0]} {cpu_mid/mips_core/mmu_inst/wdata[1]} {cpu_mid/mips_core/mmu_inst/wdata[2]} {cpu_mid/mips_core/mmu_inst/wdata[3]} {cpu_mid/mips_core/mmu_inst/wdata[4]} {cpu_mid/mips_core/mmu_inst/wdata[5]} {cpu_mid/mips_core/mmu_inst/wdata[6]} {cpu_mid/mips_core/mmu_inst/wdata[7]} {cpu_mid/mips_core/mmu_inst/wdata[8]} {cpu_mid/mips_core/mmu_inst/wdata[9]} {cpu_mid/mips_core/mmu_inst/wdata[10]} {cpu_mid/mips_core/mmu_inst/wdata[11]} {cpu_mid/mips_core/mmu_inst/wdata[12]} {cpu_mid/mips_core/mmu_inst/wdata[13]} {cpu_mid/mips_core/mmu_inst/wdata[14]} {cpu_mid/mips_core/mmu_inst/wdata[15]} {cpu_mid/mips_core/mmu_inst/wdata[16]} {cpu_mid/mips_core/mmu_inst/wdata[17]} {cpu_mid/mips_core/mmu_inst/wdata[18]} {cpu_mid/mips_core/mmu_inst/wdata[19]} {cpu_mid/mips_core/mmu_inst/wdata[20]} {cpu_mid/mips_core/mmu_inst/wdata[21]} {cpu_mid/mips_core/mmu_inst/wdata[22]} {cpu_mid/mips_core/mmu_inst/wdata[23]} {cpu_mid/mips_core/mmu_inst/wdata[24]} {cpu_mid/mips_core/mmu_inst/wdata[25]} {cpu_mid/mips_core/mmu_inst/wdata[26]} {cpu_mid/mips_core/mmu_inst/wdata[27]} {cpu_mid/mips_core/mmu_inst/wdata[28]} {cpu_mid/mips_core/mmu_inst/wdata[29]} {cpu_mid/mips_core/mmu_inst/wdata[30]} {cpu_mid/mips_core/mmu_inst/wdata[31]}]]

create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 2 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL true [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list clk_pll_33/inst/clk_out1]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 32 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {cpu_mid/mips_core/reg_ex_mem/ex_m_wdata[0]} {cpu_mid/mips_core/reg_ex_mem/ex_m_wdata[1]} {cpu_mid/mips_core/reg_ex_mem/ex_m_wdata[2]} {cpu_mid/mips_core/reg_ex_mem/ex_m_wdata[3]} {cpu_mid/mips_core/reg_ex_mem/ex_m_wdata[4]} {cpu_mid/mips_core/reg_ex_mem/ex_m_wdata[5]} {cpu_mid/mips_core/reg_ex_mem/ex_m_wdata[6]} {cpu_mid/mips_core/reg_ex_mem/ex_m_wdata[7]} {cpu_mid/mips_core/reg_ex_mem/ex_m_wdata[8]} {cpu_mid/mips_core/reg_ex_mem/ex_m_wdata[9]} {cpu_mid/mips_core/reg_ex_mem/ex_m_wdata[10]} {cpu_mid/mips_core/reg_ex_mem/ex_m_wdata[11]} {cpu_mid/mips_core/reg_ex_mem/ex_m_wdata[12]} {cpu_mid/mips_core/reg_ex_mem/ex_m_wdata[13]} {cpu_mid/mips_core/reg_ex_mem/ex_m_wdata[14]} {cpu_mid/mips_core/reg_ex_mem/ex_m_wdata[15]} {cpu_mid/mips_core/reg_ex_mem/ex_m_wdata[16]} {cpu_mid/mips_core/reg_ex_mem/ex_m_wdata[17]} {cpu_mid/mips_core/reg_ex_mem/ex_m_wdata[18]} {cpu_mid/mips_core/reg_ex_mem/ex_m_wdata[19]} {cpu_mid/mips_core/reg_ex_mem/ex_m_wdata[20]} {cpu_mid/mips_core/reg_ex_mem/ex_m_wdata[21]} {cpu_mid/mips_core/reg_ex_mem/ex_m_wdata[22]} {cpu_mid/mips_core/reg_ex_mem/ex_m_wdata[23]} {cpu_mid/mips_core/reg_ex_mem/ex_m_wdata[24]} {cpu_mid/mips_core/reg_ex_mem/ex_m_wdata[25]} {cpu_mid/mips_core/reg_ex_mem/ex_m_wdata[26]} {cpu_mid/mips_core/reg_ex_mem/ex_m_wdata[27]} {cpu_mid/mips_core/reg_ex_mem/ex_m_wdata[28]} {cpu_mid/mips_core/reg_ex_mem/ex_m_wdata[29]} {cpu_mid/mips_core/reg_ex_mem/ex_m_wdata[30]} {cpu_mid/mips_core/reg_ex_mem/ex_m_wdata[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 5 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {cpu_mid/mips_core/regfile/r1addr[0]} {cpu_mid/mips_core/regfile/r1addr[1]} {cpu_mid/mips_core/regfile/r1addr[2]} {cpu_mid/mips_core/regfile/r1addr[3]} {cpu_mid/mips_core/regfile/r1addr[4]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 32 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {cpu_mid/mips_core/regfile/r1data[0]} {cpu_mid/mips_core/regfile/r1data[1]} {cpu_mid/mips_core/regfile/r1data[2]} {cpu_mid/mips_core/regfile/r1data[3]} {cpu_mid/mips_core/regfile/r1data[4]} {cpu_mid/mips_core/regfile/r1data[5]} {cpu_mid/mips_core/regfile/r1data[6]} {cpu_mid/mips_core/regfile/r1data[7]} {cpu_mid/mips_core/regfile/r1data[8]} {cpu_mid/mips_core/regfile/r1data[9]} {cpu_mid/mips_core/regfile/r1data[10]} {cpu_mid/mips_core/regfile/r1data[11]} {cpu_mid/mips_core/regfile/r1data[12]} {cpu_mid/mips_core/regfile/r1data[13]} {cpu_mid/mips_core/regfile/r1data[14]} {cpu_mid/mips_core/regfile/r1data[15]} {cpu_mid/mips_core/regfile/r1data[16]} {cpu_mid/mips_core/regfile/r1data[17]} {cpu_mid/mips_core/regfile/r1data[18]} {cpu_mid/mips_core/regfile/r1data[19]} {cpu_mid/mips_core/regfile/r1data[20]} {cpu_mid/mips_core/regfile/r1data[21]} {cpu_mid/mips_core/regfile/r1data[22]} {cpu_mid/mips_core/regfile/r1data[23]} {cpu_mid/mips_core/regfile/r1data[24]} {cpu_mid/mips_core/regfile/r1data[25]} {cpu_mid/mips_core/regfile/r1data[26]} {cpu_mid/mips_core/regfile/r1data[27]} {cpu_mid/mips_core/regfile/r1data[28]} {cpu_mid/mips_core/regfile/r1data[29]} {cpu_mid/mips_core/regfile/r1data[30]} {cpu_mid/mips_core/regfile/r1data[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 4 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {cpu_mid/mips_core/regfile/we[0]} {cpu_mid/mips_core/regfile/we[1]} {cpu_mid/mips_core/regfile/we[2]} {cpu_mid/mips_core/regfile/we[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 32 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {cpu_mid/mips_core/regfile/wdata[0]} {cpu_mid/mips_core/regfile/wdata[1]} {cpu_mid/mips_core/regfile/wdata[2]} {cpu_mid/mips_core/regfile/wdata[3]} {cpu_mid/mips_core/regfile/wdata[4]} {cpu_mid/mips_core/regfile/wdata[5]} {cpu_mid/mips_core/regfile/wdata[6]} {cpu_mid/mips_core/regfile/wdata[7]} {cpu_mid/mips_core/regfile/wdata[8]} {cpu_mid/mips_core/regfile/wdata[9]} {cpu_mid/mips_core/regfile/wdata[10]} {cpu_mid/mips_core/regfile/wdata[11]} {cpu_mid/mips_core/regfile/wdata[12]} {cpu_mid/mips_core/regfile/wdata[13]} {cpu_mid/mips_core/regfile/wdata[14]} {cpu_mid/mips_core/regfile/wdata[15]} {cpu_mid/mips_core/regfile/wdata[16]} {cpu_mid/mips_core/regfile/wdata[17]} {cpu_mid/mips_core/regfile/wdata[18]} {cpu_mid/mips_core/regfile/wdata[19]} {cpu_mid/mips_core/regfile/wdata[20]} {cpu_mid/mips_core/regfile/wdata[21]} {cpu_mid/mips_core/regfile/wdata[22]} {cpu_mid/mips_core/regfile/wdata[23]} {cpu_mid/mips_core/regfile/wdata[24]} {cpu_mid/mips_core/regfile/wdata[25]} {cpu_mid/mips_core/regfile/wdata[26]} {cpu_mid/mips_core/regfile/wdata[27]} {cpu_mid/mips_core/regfile/wdata[28]} {cpu_mid/mips_core/regfile/wdata[29]} {cpu_mid/mips_core/regfile/wdata[30]} {cpu_mid/mips_core/regfile/wdata[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 32 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {cpu_mid/mips_core/reg_ex_mem/ex_pc[0]} {cpu_mid/mips_core/reg_ex_mem/ex_pc[1]} {cpu_mid/mips_core/reg_ex_mem/ex_pc[2]} {cpu_mid/mips_core/reg_ex_mem/ex_pc[3]} {cpu_mid/mips_core/reg_ex_mem/ex_pc[4]} {cpu_mid/mips_core/reg_ex_mem/ex_pc[5]} {cpu_mid/mips_core/reg_ex_mem/ex_pc[6]} {cpu_mid/mips_core/reg_ex_mem/ex_pc[7]} {cpu_mid/mips_core/reg_ex_mem/ex_pc[8]} {cpu_mid/mips_core/reg_ex_mem/ex_pc[9]} {cpu_mid/mips_core/reg_ex_mem/ex_pc[10]} {cpu_mid/mips_core/reg_ex_mem/ex_pc[11]} {cpu_mid/mips_core/reg_ex_mem/ex_pc[12]} {cpu_mid/mips_core/reg_ex_mem/ex_pc[13]} {cpu_mid/mips_core/reg_ex_mem/ex_pc[14]} {cpu_mid/mips_core/reg_ex_mem/ex_pc[15]} {cpu_mid/mips_core/reg_ex_mem/ex_pc[16]} {cpu_mid/mips_core/reg_ex_mem/ex_pc[17]} {cpu_mid/mips_core/reg_ex_mem/ex_pc[18]} {cpu_mid/mips_core/reg_ex_mem/ex_pc[19]} {cpu_mid/mips_core/reg_ex_mem/ex_pc[20]} {cpu_mid/mips_core/reg_ex_mem/ex_pc[21]} {cpu_mid/mips_core/reg_ex_mem/ex_pc[22]} {cpu_mid/mips_core/reg_ex_mem/ex_pc[23]} {cpu_mid/mips_core/reg_ex_mem/ex_pc[24]} {cpu_mid/mips_core/reg_ex_mem/ex_pc[25]} {cpu_mid/mips_core/reg_ex_mem/ex_pc[26]} {cpu_mid/mips_core/reg_ex_mem/ex_pc[27]} {cpu_mid/mips_core/reg_ex_mem/ex_pc[28]} {cpu_mid/mips_core/reg_ex_mem/ex_pc[29]} {cpu_mid/mips_core/reg_ex_mem/ex_pc[30]} {cpu_mid/mips_core/reg_ex_mem/ex_pc[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 32 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list {cpu_mid/mips_core/reg_ex_mem/ex_m_vaddr[0]} {cpu_mid/mips_core/reg_ex_mem/ex_m_vaddr[1]} {cpu_mid/mips_core/reg_ex_mem/ex_m_vaddr[2]} {cpu_mid/mips_core/reg_ex_mem/ex_m_vaddr[3]} {cpu_mid/mips_core/reg_ex_mem/ex_m_vaddr[4]} {cpu_mid/mips_core/reg_ex_mem/ex_m_vaddr[5]} {cpu_mid/mips_core/reg_ex_mem/ex_m_vaddr[6]} {cpu_mid/mips_core/reg_ex_mem/ex_m_vaddr[7]} {cpu_mid/mips_core/reg_ex_mem/ex_m_vaddr[8]} {cpu_mid/mips_core/reg_ex_mem/ex_m_vaddr[9]} {cpu_mid/mips_core/reg_ex_mem/ex_m_vaddr[10]} {cpu_mid/mips_core/reg_ex_mem/ex_m_vaddr[11]} {cpu_mid/mips_core/reg_ex_mem/ex_m_vaddr[12]} {cpu_mid/mips_core/reg_ex_mem/ex_m_vaddr[13]} {cpu_mid/mips_core/reg_ex_mem/ex_m_vaddr[14]} {cpu_mid/mips_core/reg_ex_mem/ex_m_vaddr[15]} {cpu_mid/mips_core/reg_ex_mem/ex_m_vaddr[16]} {cpu_mid/mips_core/reg_ex_mem/ex_m_vaddr[17]} {cpu_mid/mips_core/reg_ex_mem/ex_m_vaddr[18]} {cpu_mid/mips_core/reg_ex_mem/ex_m_vaddr[19]} {cpu_mid/mips_core/reg_ex_mem/ex_m_vaddr[20]} {cpu_mid/mips_core/reg_ex_mem/ex_m_vaddr[21]} {cpu_mid/mips_core/reg_ex_mem/ex_m_vaddr[22]} {cpu_mid/mips_core/reg_ex_mem/ex_m_vaddr[23]} {cpu_mid/mips_core/reg_ex_mem/ex_m_vaddr[24]} {cpu_mid/mips_core/reg_ex_mem/ex_m_vaddr[25]} {cpu_mid/mips_core/reg_ex_mem/ex_m_vaddr[26]} {cpu_mid/mips_core/reg_ex_mem/ex_m_vaddr[27]} {cpu_mid/mips_core/reg_ex_mem/ex_m_vaddr[28]} {cpu_mid/mips_core/reg_ex_mem/ex_m_vaddr[29]} {cpu_mid/mips_core/reg_ex_mem/ex_m_vaddr[30]} {cpu_mid/mips_core/reg_ex_mem/ex_m_vaddr[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 4 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list {cpu_mid/mips_core/reg_ex_mem/ex_m_wen[0]} {cpu_mid/mips_core/reg_ex_mem/ex_m_wen[1]} {cpu_mid/mips_core/reg_ex_mem/ex_m_wen[2]} {cpu_mid/mips_core/reg_ex_mem/ex_m_wen[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 5 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list {cpu_mid/mips_core/reg_ex_mem/ex_wraddr[0]} {cpu_mid/mips_core/reg_ex_mem/ex_wraddr[1]} {cpu_mid/mips_core/reg_ex_mem/ex_wraddr[2]} {cpu_mid/mips_core/reg_ex_mem/ex_wraddr[3]} {cpu_mid/mips_core/reg_ex_mem/ex_wraddr[4]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 32 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list {cpu_mid/mips_core/regfile/r2data[0]} {cpu_mid/mips_core/regfile/r2data[1]} {cpu_mid/mips_core/regfile/r2data[2]} {cpu_mid/mips_core/regfile/r2data[3]} {cpu_mid/mips_core/regfile/r2data[4]} {cpu_mid/mips_core/regfile/r2data[5]} {cpu_mid/mips_core/regfile/r2data[6]} {cpu_mid/mips_core/regfile/r2data[7]} {cpu_mid/mips_core/regfile/r2data[8]} {cpu_mid/mips_core/regfile/r2data[9]} {cpu_mid/mips_core/regfile/r2data[10]} {cpu_mid/mips_core/regfile/r2data[11]} {cpu_mid/mips_core/regfile/r2data[12]} {cpu_mid/mips_core/regfile/r2data[13]} {cpu_mid/mips_core/regfile/r2data[14]} {cpu_mid/mips_core/regfile/r2data[15]} {cpu_mid/mips_core/regfile/r2data[16]} {cpu_mid/mips_core/regfile/r2data[17]} {cpu_mid/mips_core/regfile/r2data[18]} {cpu_mid/mips_core/regfile/r2data[19]} {cpu_mid/mips_core/regfile/r2data[20]} {cpu_mid/mips_core/regfile/r2data[21]} {cpu_mid/mips_core/regfile/r2data[22]} {cpu_mid/mips_core/regfile/r2data[23]} {cpu_mid/mips_core/regfile/r2data[24]} {cpu_mid/mips_core/regfile/r2data[25]} {cpu_mid/mips_core/regfile/r2data[26]} {cpu_mid/mips_core/regfile/r2data[27]} {cpu_mid/mips_core/regfile/r2data[28]} {cpu_mid/mips_core/regfile/r2data[29]} {cpu_mid/mips_core/regfile/r2data[30]} {cpu_mid/mips_core/regfile/r2data[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 4 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list {cpu_mid/mips_core/reg_ex_mem/ex_wreg[0]} {cpu_mid/mips_core/reg_ex_mem/ex_wreg[1]} {cpu_mid/mips_core/reg_ex_mem/ex_wreg[2]} {cpu_mid/mips_core/reg_ex_mem/ex_wreg[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 5 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list {cpu_mid/mips_core/regfile/waddr[0]} {cpu_mid/mips_core/regfile/waddr[1]} {cpu_mid/mips_core/regfile/waddr[2]} {cpu_mid/mips_core/regfile/waddr[3]} {cpu_mid/mips_core/regfile/waddr[4]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
set_property port_width 5 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list {cpu_mid/mips_core/regfile/r2addr[0]} {cpu_mid/mips_core/regfile/r2addr[1]} {cpu_mid/mips_core/regfile/r2addr[2]} {cpu_mid/mips_core/regfile/r2addr[3]} {cpu_mid/mips_core/regfile/r2addr[4]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe13]
set_property port_width 32 [get_debug_ports u_ila_0/probe13]
connect_debug_port u_ila_0/probe13 [get_nets [list {cpu_mid/mips_core/reg_mem_wb/wb_pc[0]} {cpu_mid/mips_core/reg_mem_wb/wb_pc[1]} {cpu_mid/mips_core/reg_mem_wb/wb_pc[2]} {cpu_mid/mips_core/reg_mem_wb/wb_pc[3]} {cpu_mid/mips_core/reg_mem_wb/wb_pc[4]} {cpu_mid/mips_core/reg_mem_wb/wb_pc[5]} {cpu_mid/mips_core/reg_mem_wb/wb_pc[6]} {cpu_mid/mips_core/reg_mem_wb/wb_pc[7]} {cpu_mid/mips_core/reg_mem_wb/wb_pc[8]} {cpu_mid/mips_core/reg_mem_wb/wb_pc[9]} {cpu_mid/mips_core/reg_mem_wb/wb_pc[10]} {cpu_mid/mips_core/reg_mem_wb/wb_pc[11]} {cpu_mid/mips_core/reg_mem_wb/wb_pc[12]} {cpu_mid/mips_core/reg_mem_wb/wb_pc[13]} {cpu_mid/mips_core/reg_mem_wb/wb_pc[14]} {cpu_mid/mips_core/reg_mem_wb/wb_pc[15]} {cpu_mid/mips_core/reg_mem_wb/wb_pc[16]} {cpu_mid/mips_core/reg_mem_wb/wb_pc[17]} {cpu_mid/mips_core/reg_mem_wb/wb_pc[18]} {cpu_mid/mips_core/reg_mem_wb/wb_pc[19]} {cpu_mid/mips_core/reg_mem_wb/wb_pc[20]} {cpu_mid/mips_core/reg_mem_wb/wb_pc[21]} {cpu_mid/mips_core/reg_mem_wb/wb_pc[22]} {cpu_mid/mips_core/reg_mem_wb/wb_pc[23]} {cpu_mid/mips_core/reg_mem_wb/wb_pc[24]} {cpu_mid/mips_core/reg_mem_wb/wb_pc[25]} {cpu_mid/mips_core/reg_mem_wb/wb_pc[26]} {cpu_mid/mips_core/reg_mem_wb/wb_pc[27]} {cpu_mid/mips_core/reg_mem_wb/wb_pc[28]} {cpu_mid/mips_core/reg_mem_wb/wb_pc[29]} {cpu_mid/mips_core/reg_mem_wb/wb_pc[30]} {cpu_mid/mips_core/reg_mem_wb/wb_pc[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe14]
set_property port_width 32 [get_debug_ports u_ila_0/probe14]
connect_debug_port u_ila_0/probe14 [get_nets [list {cpu_mid/mips_core/reg_mem_wb/wb_m_rdata[0]} {cpu_mid/mips_core/reg_mem_wb/wb_m_rdata[1]} {cpu_mid/mips_core/reg_mem_wb/wb_m_rdata[2]} {cpu_mid/mips_core/reg_mem_wb/wb_m_rdata[3]} {cpu_mid/mips_core/reg_mem_wb/wb_m_rdata[4]} {cpu_mid/mips_core/reg_mem_wb/wb_m_rdata[5]} {cpu_mid/mips_core/reg_mem_wb/wb_m_rdata[6]} {cpu_mid/mips_core/reg_mem_wb/wb_m_rdata[7]} {cpu_mid/mips_core/reg_mem_wb/wb_m_rdata[8]} {cpu_mid/mips_core/reg_mem_wb/wb_m_rdata[9]} {cpu_mid/mips_core/reg_mem_wb/wb_m_rdata[10]} {cpu_mid/mips_core/reg_mem_wb/wb_m_rdata[11]} {cpu_mid/mips_core/reg_mem_wb/wb_m_rdata[12]} {cpu_mid/mips_core/reg_mem_wb/wb_m_rdata[13]} {cpu_mid/mips_core/reg_mem_wb/wb_m_rdata[14]} {cpu_mid/mips_core/reg_mem_wb/wb_m_rdata[15]} {cpu_mid/mips_core/reg_mem_wb/wb_m_rdata[16]} {cpu_mid/mips_core/reg_mem_wb/wb_m_rdata[17]} {cpu_mid/mips_core/reg_mem_wb/wb_m_rdata[18]} {cpu_mid/mips_core/reg_mem_wb/wb_m_rdata[19]} {cpu_mid/mips_core/reg_mem_wb/wb_m_rdata[20]} {cpu_mid/mips_core/reg_mem_wb/wb_m_rdata[21]} {cpu_mid/mips_core/reg_mem_wb/wb_m_rdata[22]} {cpu_mid/mips_core/reg_mem_wb/wb_m_rdata[23]} {cpu_mid/mips_core/reg_mem_wb/wb_m_rdata[24]} {cpu_mid/mips_core/reg_mem_wb/wb_m_rdata[25]} {cpu_mid/mips_core/reg_mem_wb/wb_m_rdata[26]} {cpu_mid/mips_core/reg_mem_wb/wb_m_rdata[27]} {cpu_mid/mips_core/reg_mem_wb/wb_m_rdata[28]} {cpu_mid/mips_core/reg_mem_wb/wb_m_rdata[29]} {cpu_mid/mips_core/reg_mem_wb/wb_m_rdata[30]} {cpu_mid/mips_core/reg_mem_wb/wb_m_rdata[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe15]
set_property port_width 4 [get_debug_ports u_ila_0/probe15]
connect_debug_port u_ila_0/probe15 [get_nets [list {cpu_mid/mips_core/reg_mem_wb/mem_wreg[0]} {cpu_mid/mips_core/reg_mem_wb/mem_wreg[1]} {cpu_mid/mips_core/reg_mem_wb/mem_wreg[2]} {cpu_mid/mips_core/reg_mem_wb/mem_wreg[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe16]
set_property port_width 32 [get_debug_ports u_ila_0/probe16]
connect_debug_port u_ila_0/probe16 [get_nets [list {cpu_mid/mips_core/reg_id_ex/id_pc[0]} {cpu_mid/mips_core/reg_id_ex/id_pc[1]} {cpu_mid/mips_core/reg_id_ex/id_pc[2]} {cpu_mid/mips_core/reg_id_ex/id_pc[3]} {cpu_mid/mips_core/reg_id_ex/id_pc[4]} {cpu_mid/mips_core/reg_id_ex/id_pc[5]} {cpu_mid/mips_core/reg_id_ex/id_pc[6]} {cpu_mid/mips_core/reg_id_ex/id_pc[7]} {cpu_mid/mips_core/reg_id_ex/id_pc[8]} {cpu_mid/mips_core/reg_id_ex/id_pc[9]} {cpu_mid/mips_core/reg_id_ex/id_pc[10]} {cpu_mid/mips_core/reg_id_ex/id_pc[11]} {cpu_mid/mips_core/reg_id_ex/id_pc[12]} {cpu_mid/mips_core/reg_id_ex/id_pc[13]} {cpu_mid/mips_core/reg_id_ex/id_pc[14]} {cpu_mid/mips_core/reg_id_ex/id_pc[15]} {cpu_mid/mips_core/reg_id_ex/id_pc[16]} {cpu_mid/mips_core/reg_id_ex/id_pc[17]} {cpu_mid/mips_core/reg_id_ex/id_pc[18]} {cpu_mid/mips_core/reg_id_ex/id_pc[19]} {cpu_mid/mips_core/reg_id_ex/id_pc[20]} {cpu_mid/mips_core/reg_id_ex/id_pc[21]} {cpu_mid/mips_core/reg_id_ex/id_pc[22]} {cpu_mid/mips_core/reg_id_ex/id_pc[23]} {cpu_mid/mips_core/reg_id_ex/id_pc[24]} {cpu_mid/mips_core/reg_id_ex/id_pc[25]} {cpu_mid/mips_core/reg_id_ex/id_pc[26]} {cpu_mid/mips_core/reg_id_ex/id_pc[27]} {cpu_mid/mips_core/reg_id_ex/id_pc[28]} {cpu_mid/mips_core/reg_id_ex/id_pc[29]} {cpu_mid/mips_core/reg_id_ex/id_pc[30]} {cpu_mid/mips_core/reg_id_ex/id_pc[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe17]
set_property port_width 5 [get_debug_ports u_ila_0/probe17]
connect_debug_port u_ila_0/probe17 [get_nets [list {cpu_mid/mips_core/reg_id_ex/id_wraddr[0]} {cpu_mid/mips_core/reg_id_ex/id_wraddr[1]} {cpu_mid/mips_core/reg_id_ex/id_wraddr[2]} {cpu_mid/mips_core/reg_id_ex/id_wraddr[3]} {cpu_mid/mips_core/reg_id_ex/id_wraddr[4]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe18]
set_property port_width 32 [get_debug_ports u_ila_0/probe18]
connect_debug_port u_ila_0/probe18 [get_nets [list {cpu_mid/mips_core/reg_mem_wb/mem_m_rdata[0]} {cpu_mid/mips_core/reg_mem_wb/mem_m_rdata[1]} {cpu_mid/mips_core/reg_mem_wb/mem_m_rdata[2]} {cpu_mid/mips_core/reg_mem_wb/mem_m_rdata[3]} {cpu_mid/mips_core/reg_mem_wb/mem_m_rdata[4]} {cpu_mid/mips_core/reg_mem_wb/mem_m_rdata[5]} {cpu_mid/mips_core/reg_mem_wb/mem_m_rdata[6]} {cpu_mid/mips_core/reg_mem_wb/mem_m_rdata[7]} {cpu_mid/mips_core/reg_mem_wb/mem_m_rdata[8]} {cpu_mid/mips_core/reg_mem_wb/mem_m_rdata[9]} {cpu_mid/mips_core/reg_mem_wb/mem_m_rdata[10]} {cpu_mid/mips_core/reg_mem_wb/mem_m_rdata[11]} {cpu_mid/mips_core/reg_mem_wb/mem_m_rdata[12]} {cpu_mid/mips_core/reg_mem_wb/mem_m_rdata[13]} {cpu_mid/mips_core/reg_mem_wb/mem_m_rdata[14]} {cpu_mid/mips_core/reg_mem_wb/mem_m_rdata[15]} {cpu_mid/mips_core/reg_mem_wb/mem_m_rdata[16]} {cpu_mid/mips_core/reg_mem_wb/mem_m_rdata[17]} {cpu_mid/mips_core/reg_mem_wb/mem_m_rdata[18]} {cpu_mid/mips_core/reg_mem_wb/mem_m_rdata[19]} {cpu_mid/mips_core/reg_mem_wb/mem_m_rdata[20]} {cpu_mid/mips_core/reg_mem_wb/mem_m_rdata[21]} {cpu_mid/mips_core/reg_mem_wb/mem_m_rdata[22]} {cpu_mid/mips_core/reg_mem_wb/mem_m_rdata[23]} {cpu_mid/mips_core/reg_mem_wb/mem_m_rdata[24]} {cpu_mid/mips_core/reg_mem_wb/mem_m_rdata[25]} {cpu_mid/mips_core/reg_mem_wb/mem_m_rdata[26]} {cpu_mid/mips_core/reg_mem_wb/mem_m_rdata[27]} {cpu_mid/mips_core/reg_mem_wb/mem_m_rdata[28]} {cpu_mid/mips_core/reg_mem_wb/mem_m_rdata[29]} {cpu_mid/mips_core/reg_mem_wb/mem_m_rdata[30]} {cpu_mid/mips_core/reg_mem_wb/mem_m_rdata[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe19]
set_property port_width 5 [get_debug_ports u_ila_0/probe19]
connect_debug_port u_ila_0/probe19 [get_nets [list {cpu_mid/mips_core/reg_mem_wb/mem_wraddr[0]} {cpu_mid/mips_core/reg_mem_wb/mem_wraddr[1]} {cpu_mid/mips_core/reg_mem_wb/mem_wraddr[2]} {cpu_mid/mips_core/reg_mem_wb/mem_wraddr[3]} {cpu_mid/mips_core/reg_mem_wb/mem_wraddr[4]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe20]
set_property port_width 32 [get_debug_ports u_ila_0/probe20]
connect_debug_port u_ila_0/probe20 [get_nets [list {cpu_mid/mips_core/reg_mem_wb/mem_pc[0]} {cpu_mid/mips_core/reg_mem_wb/mem_pc[1]} {cpu_mid/mips_core/reg_mem_wb/mem_pc[2]} {cpu_mid/mips_core/reg_mem_wb/mem_pc[3]} {cpu_mid/mips_core/reg_mem_wb/mem_pc[4]} {cpu_mid/mips_core/reg_mem_wb/mem_pc[5]} {cpu_mid/mips_core/reg_mem_wb/mem_pc[6]} {cpu_mid/mips_core/reg_mem_wb/mem_pc[7]} {cpu_mid/mips_core/reg_mem_wb/mem_pc[8]} {cpu_mid/mips_core/reg_mem_wb/mem_pc[9]} {cpu_mid/mips_core/reg_mem_wb/mem_pc[10]} {cpu_mid/mips_core/reg_mem_wb/mem_pc[11]} {cpu_mid/mips_core/reg_mem_wb/mem_pc[12]} {cpu_mid/mips_core/reg_mem_wb/mem_pc[13]} {cpu_mid/mips_core/reg_mem_wb/mem_pc[14]} {cpu_mid/mips_core/reg_mem_wb/mem_pc[15]} {cpu_mid/mips_core/reg_mem_wb/mem_pc[16]} {cpu_mid/mips_core/reg_mem_wb/mem_pc[17]} {cpu_mid/mips_core/reg_mem_wb/mem_pc[18]} {cpu_mid/mips_core/reg_mem_wb/mem_pc[19]} {cpu_mid/mips_core/reg_mem_wb/mem_pc[20]} {cpu_mid/mips_core/reg_mem_wb/mem_pc[21]} {cpu_mid/mips_core/reg_mem_wb/mem_pc[22]} {cpu_mid/mips_core/reg_mem_wb/mem_pc[23]} {cpu_mid/mips_core/reg_mem_wb/mem_pc[24]} {cpu_mid/mips_core/reg_mem_wb/mem_pc[25]} {cpu_mid/mips_core/reg_mem_wb/mem_pc[26]} {cpu_mid/mips_core/reg_mem_wb/mem_pc[27]} {cpu_mid/mips_core/reg_mem_wb/mem_pc[28]} {cpu_mid/mips_core/reg_mem_wb/mem_pc[29]} {cpu_mid/mips_core/reg_mem_wb/mem_pc[30]} {cpu_mid/mips_core/reg_mem_wb/mem_pc[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe21]
set_property port_width 4 [get_debug_ports u_ila_0/probe21]
connect_debug_port u_ila_0/probe21 [get_nets [list {cpu_mid/mips_core/reg_mem_wb/wb_wreg[0]} {cpu_mid/mips_core/reg_mem_wb/wb_wreg[1]} {cpu_mid/mips_core/reg_mem_wb/wb_wreg[2]} {cpu_mid/mips_core/reg_mem_wb/wb_wreg[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe22]
set_property port_width 32 [get_debug_ports u_ila_0/probe22]
connect_debug_port u_ila_0/probe22 [get_nets [list {cpu_mid/mips_core/reg_if_id/if_inst[0]} {cpu_mid/mips_core/reg_if_id/if_inst[1]} {cpu_mid/mips_core/reg_if_id/if_inst[2]} {cpu_mid/mips_core/reg_if_id/if_inst[3]} {cpu_mid/mips_core/reg_if_id/if_inst[4]} {cpu_mid/mips_core/reg_if_id/if_inst[5]} {cpu_mid/mips_core/reg_if_id/if_inst[6]} {cpu_mid/mips_core/reg_if_id/if_inst[7]} {cpu_mid/mips_core/reg_if_id/if_inst[8]} {cpu_mid/mips_core/reg_if_id/if_inst[9]} {cpu_mid/mips_core/reg_if_id/if_inst[10]} {cpu_mid/mips_core/reg_if_id/if_inst[11]} {cpu_mid/mips_core/reg_if_id/if_inst[12]} {cpu_mid/mips_core/reg_if_id/if_inst[13]} {cpu_mid/mips_core/reg_if_id/if_inst[14]} {cpu_mid/mips_core/reg_if_id/if_inst[15]} {cpu_mid/mips_core/reg_if_id/if_inst[16]} {cpu_mid/mips_core/reg_if_id/if_inst[17]} {cpu_mid/mips_core/reg_if_id/if_inst[18]} {cpu_mid/mips_core/reg_if_id/if_inst[19]} {cpu_mid/mips_core/reg_if_id/if_inst[20]} {cpu_mid/mips_core/reg_if_id/if_inst[21]} {cpu_mid/mips_core/reg_if_id/if_inst[22]} {cpu_mid/mips_core/reg_if_id/if_inst[23]} {cpu_mid/mips_core/reg_if_id/if_inst[24]} {cpu_mid/mips_core/reg_if_id/if_inst[25]} {cpu_mid/mips_core/reg_if_id/if_inst[26]} {cpu_mid/mips_core/reg_if_id/if_inst[27]} {cpu_mid/mips_core/reg_if_id/if_inst[28]} {cpu_mid/mips_core/reg_if_id/if_inst[29]} {cpu_mid/mips_core/reg_if_id/if_inst[30]} {cpu_mid/mips_core/reg_if_id/if_inst[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe23]
set_property port_width 32 [get_debug_ports u_ila_0/probe23]
connect_debug_port u_ila_0/probe23 [get_nets [list {cpu_mid/mips_core/reg_mem_wb/wb_m_vaddr[0]} {cpu_mid/mips_core/reg_mem_wb/wb_m_vaddr[1]} {cpu_mid/mips_core/reg_mem_wb/wb_m_vaddr[2]} {cpu_mid/mips_core/reg_mem_wb/wb_m_vaddr[3]} {cpu_mid/mips_core/reg_mem_wb/wb_m_vaddr[4]} {cpu_mid/mips_core/reg_mem_wb/wb_m_vaddr[5]} {cpu_mid/mips_core/reg_mem_wb/wb_m_vaddr[6]} {cpu_mid/mips_core/reg_mem_wb/wb_m_vaddr[7]} {cpu_mid/mips_core/reg_mem_wb/wb_m_vaddr[8]} {cpu_mid/mips_core/reg_mem_wb/wb_m_vaddr[9]} {cpu_mid/mips_core/reg_mem_wb/wb_m_vaddr[10]} {cpu_mid/mips_core/reg_mem_wb/wb_m_vaddr[11]} {cpu_mid/mips_core/reg_mem_wb/wb_m_vaddr[12]} {cpu_mid/mips_core/reg_mem_wb/wb_m_vaddr[13]} {cpu_mid/mips_core/reg_mem_wb/wb_m_vaddr[14]} {cpu_mid/mips_core/reg_mem_wb/wb_m_vaddr[15]} {cpu_mid/mips_core/reg_mem_wb/wb_m_vaddr[16]} {cpu_mid/mips_core/reg_mem_wb/wb_m_vaddr[17]} {cpu_mid/mips_core/reg_mem_wb/wb_m_vaddr[18]} {cpu_mid/mips_core/reg_mem_wb/wb_m_vaddr[19]} {cpu_mid/mips_core/reg_mem_wb/wb_m_vaddr[20]} {cpu_mid/mips_core/reg_mem_wb/wb_m_vaddr[21]} {cpu_mid/mips_core/reg_mem_wb/wb_m_vaddr[22]} {cpu_mid/mips_core/reg_mem_wb/wb_m_vaddr[23]} {cpu_mid/mips_core/reg_mem_wb/wb_m_vaddr[24]} {cpu_mid/mips_core/reg_mem_wb/wb_m_vaddr[25]} {cpu_mid/mips_core/reg_mem_wb/wb_m_vaddr[26]} {cpu_mid/mips_core/reg_mem_wb/wb_m_vaddr[27]} {cpu_mid/mips_core/reg_mem_wb/wb_m_vaddr[28]} {cpu_mid/mips_core/reg_mem_wb/wb_m_vaddr[29]} {cpu_mid/mips_core/reg_mem_wb/wb_m_vaddr[30]} {cpu_mid/mips_core/reg_mem_wb/wb_m_vaddr[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe24]
set_property port_width 5 [get_debug_ports u_ila_0/probe24]
connect_debug_port u_ila_0/probe24 [get_nets [list {cpu_mid/mips_core/reg_mem_wb/wb_wraddr[0]} {cpu_mid/mips_core/reg_mem_wb/wb_wraddr[1]} {cpu_mid/mips_core/reg_mem_wb/wb_wraddr[2]} {cpu_mid/mips_core/reg_mem_wb/wb_wraddr[3]} {cpu_mid/mips_core/reg_mem_wb/wb_wraddr[4]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe25]
set_property port_width 32 [get_debug_ports u_ila_0/probe25]
connect_debug_port u_ila_0/probe25 [get_nets [list {cpu_mid/mips_core/reg_mem_wb/mem_m_vaddr[0]} {cpu_mid/mips_core/reg_mem_wb/mem_m_vaddr[1]} {cpu_mid/mips_core/reg_mem_wb/mem_m_vaddr[2]} {cpu_mid/mips_core/reg_mem_wb/mem_m_vaddr[3]} {cpu_mid/mips_core/reg_mem_wb/mem_m_vaddr[4]} {cpu_mid/mips_core/reg_mem_wb/mem_m_vaddr[5]} {cpu_mid/mips_core/reg_mem_wb/mem_m_vaddr[6]} {cpu_mid/mips_core/reg_mem_wb/mem_m_vaddr[7]} {cpu_mid/mips_core/reg_mem_wb/mem_m_vaddr[8]} {cpu_mid/mips_core/reg_mem_wb/mem_m_vaddr[9]} {cpu_mid/mips_core/reg_mem_wb/mem_m_vaddr[10]} {cpu_mid/mips_core/reg_mem_wb/mem_m_vaddr[11]} {cpu_mid/mips_core/reg_mem_wb/mem_m_vaddr[12]} {cpu_mid/mips_core/reg_mem_wb/mem_m_vaddr[13]} {cpu_mid/mips_core/reg_mem_wb/mem_m_vaddr[14]} {cpu_mid/mips_core/reg_mem_wb/mem_m_vaddr[15]} {cpu_mid/mips_core/reg_mem_wb/mem_m_vaddr[16]} {cpu_mid/mips_core/reg_mem_wb/mem_m_vaddr[17]} {cpu_mid/mips_core/reg_mem_wb/mem_m_vaddr[18]} {cpu_mid/mips_core/reg_mem_wb/mem_m_vaddr[19]} {cpu_mid/mips_core/reg_mem_wb/mem_m_vaddr[20]} {cpu_mid/mips_core/reg_mem_wb/mem_m_vaddr[21]} {cpu_mid/mips_core/reg_mem_wb/mem_m_vaddr[22]} {cpu_mid/mips_core/reg_mem_wb/mem_m_vaddr[23]} {cpu_mid/mips_core/reg_mem_wb/mem_m_vaddr[24]} {cpu_mid/mips_core/reg_mem_wb/mem_m_vaddr[25]} {cpu_mid/mips_core/reg_mem_wb/mem_m_vaddr[26]} {cpu_mid/mips_core/reg_mem_wb/mem_m_vaddr[27]} {cpu_mid/mips_core/reg_mem_wb/mem_m_vaddr[28]} {cpu_mid/mips_core/reg_mem_wb/mem_m_vaddr[29]} {cpu_mid/mips_core/reg_mem_wb/mem_m_vaddr[30]} {cpu_mid/mips_core/reg_mem_wb/mem_m_vaddr[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe26]
set_property port_width 32 [get_debug_ports u_ila_0/probe26]
connect_debug_port u_ila_0/probe26 [get_nets [list {cpu_mid/mips_core/reg_if_id/if_pc[0]} {cpu_mid/mips_core/reg_if_id/if_pc[1]} {cpu_mid/mips_core/reg_if_id/if_pc[2]} {cpu_mid/mips_core/reg_if_id/if_pc[3]} {cpu_mid/mips_core/reg_if_id/if_pc[4]} {cpu_mid/mips_core/reg_if_id/if_pc[5]} {cpu_mid/mips_core/reg_if_id/if_pc[6]} {cpu_mid/mips_core/reg_if_id/if_pc[7]} {cpu_mid/mips_core/reg_if_id/if_pc[8]} {cpu_mid/mips_core/reg_if_id/if_pc[9]} {cpu_mid/mips_core/reg_if_id/if_pc[10]} {cpu_mid/mips_core/reg_if_id/if_pc[11]} {cpu_mid/mips_core/reg_if_id/if_pc[12]} {cpu_mid/mips_core/reg_if_id/if_pc[13]} {cpu_mid/mips_core/reg_if_id/if_pc[14]} {cpu_mid/mips_core/reg_if_id/if_pc[15]} {cpu_mid/mips_core/reg_if_id/if_pc[16]} {cpu_mid/mips_core/reg_if_id/if_pc[17]} {cpu_mid/mips_core/reg_if_id/if_pc[18]} {cpu_mid/mips_core/reg_if_id/if_pc[19]} {cpu_mid/mips_core/reg_if_id/if_pc[20]} {cpu_mid/mips_core/reg_if_id/if_pc[21]} {cpu_mid/mips_core/reg_if_id/if_pc[22]} {cpu_mid/mips_core/reg_if_id/if_pc[23]} {cpu_mid/mips_core/reg_if_id/if_pc[24]} {cpu_mid/mips_core/reg_if_id/if_pc[25]} {cpu_mid/mips_core/reg_if_id/if_pc[26]} {cpu_mid/mips_core/reg_if_id/if_pc[27]} {cpu_mid/mips_core/reg_if_id/if_pc[28]} {cpu_mid/mips_core/reg_if_id/if_pc[29]} {cpu_mid/mips_core/reg_if_id/if_pc[30]} {cpu_mid/mips_core/reg_if_id/if_pc[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe27]
set_property port_width 1 [get_debug_ports u_ila_0/probe27]
connect_debug_port u_ila_0/probe27 [get_nets [list cpu_mid/mips_core/reg_ex_mem/ex_m_en]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe28]
set_property port_width 1 [get_debug_ports u_ila_0/probe28]
connect_debug_port u_ila_0/probe28 [get_nets [list cpu_mid/mips_core/reg_id_ex/id_wreg]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe29]
set_property port_width 1 [get_debug_ports u_ila_0/probe29]
connect_debug_port u_ila_0/probe29 [get_nets [list cpu_mid/mips_core/regfile/re1]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe30]
set_property port_width 1 [get_debug_ports u_ila_0/probe30]
connect_debug_port u_ila_0/probe30 [get_nets [list cpu_mid/mips_core/regfile/re2]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe31]
set_property port_width 1 [get_debug_ports u_ila_0/probe31]
connect_debug_port u_ila_0/probe31 [get_nets [list cpu_mid/mips_core/reg_if_id/stall]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe32]
set_property port_width 1 [get_debug_ports u_ila_0/probe32]
connect_debug_port u_ila_0/probe32 [get_nets [list cpu_mid/mips_core/reg_mem_wb/stall]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe33]
set_property port_width 1 [get_debug_ports u_ila_0/probe33]
connect_debug_port u_ila_0/probe33 [get_nets [list cpu_mid/mips_core/reg_ex_mem/stall]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe34]
set_property port_width 1 [get_debug_ports u_ila_0/probe34]
connect_debug_port u_ila_0/probe34 [get_nets [list cpu_mid/mips_core/reg_id_ex/stall]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets aclk]
