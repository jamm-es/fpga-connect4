# james & syna's nexys a7 constraints (used for USC EE-354 final project)


# port values from https://digilent.com/reference/programmable-logic/nexys-a7/reference-manual
set_property PACKAGE_PIN E3 [get_ports {sysClk}]
set_property IOSTANDARD LVCMOS33 [get_ports {sysClk}]
create_clock -name sysClk -period 10.0 [get_ports {sysClk}]  # 100 MHz frequency = 10ns period


set_property PACKAGE_PIN A3 [get_ports {vgaRed[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vgaRed[0]}]

set_property PACKAGE_PIN B4 [get_ports {vgaRed[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vgaRed[1]}]

set_property PACKAGE_PIN C5 [get_ports {vgaRed[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vgaRed[2]}]

set_property PACKAGE_PIN A4 [get_ports {vgaRed[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vgaRed[3]}]


set_property PACKAGE_PIN C6 [get_ports {vgaGrn[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vgaGrn[0]}]

set_property PACKAGE_PIN A5 [get_ports {vgaGrn[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vgaGrn[1]}]

set_property PACKAGE_PIN B6 [get_ports {vgaGrn[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vgaGrn[2]}]

set_property PACKAGE_PIN A6 [get_ports {vgaGrn[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vgaGrn[3]}]


set_property PACKAGE_PIN B7 [get_ports {vgaBlu[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vgaBlu[0]}]

set_property PACKAGE_PIN C7 [get_ports {vgaBlu[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vgaBlu[1]}]

set_property PACKAGE_PIN D7 [get_ports {vgaBlu[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vgaBlu[2]}]

set_property PACKAGE_PIN D8 [get_ports {vgaBlu[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vgaBlu[3]}]


set_property PACKAGE_PIN B11 [get_ports {hSync}]
set_property IOSTANDARD LVCMOS33 [get_ports {hSync}]

set_property PACKAGE_PIN B12 [get_ports {vSync}]
set_property IOSTANDARD LVCMOS33 [get_ports {vSync}]

set_property PACKAGE_PIN N17 [get_ports BtnC]						
set_property IOSTANDARD LVCMOS33 [get_ports BtnC]
#Bank = 15, Pin name = IO_L14P_T2_SRCC_15,					Sch name = BTNU
set_property PACKAGE_PIN M18 [get_ports BtnU]						
set_property IOSTANDARD LVCMOS33 [get_ports BtnU]
#Bank = CONFIG, Pin name = IO_L15N_T2_DQS_DOUT_CSO_B_14,	Sch name = BTNL
set_property PACKAGE_PIN P17 [get_ports BtnL]						
set_property IOSTANDARD LVCMOS33 [get_ports BtnL]
#Bank = 14, Pin name = IO_25_14,							Sch name = BTNR
set_property PACKAGE_PIN M17 [get_ports BtnR]						
set_property IOSTANDARD LVCMOS33 [get_ports BtnR]
#Bank = 14, Pin name = IO_L21P_T3_DQS_14,					Sch name = BTND
set_property PACKAGE_PIN P18 [get_ports BtnD]						
set_property IOSTANDARD LVCMOS33 [get_ports BtnD]

set_property PACKAGE_PIN D8 [get_ports {vgaBlu[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vgaBlu[3]}]

set_property PACKAGE_PIN V10 [get_ports {switch15Debug}]
set_property IOSTANDARD LVCMOS33 [get_ports {switch15Debug}]

set_property PACKAGE_PIN C12 [get_ports {btnCPUReset}]
set_property IOSTANDARD LVCMOS33 [get_ports {btnCPUReset}]