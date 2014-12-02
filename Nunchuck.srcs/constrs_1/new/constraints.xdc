set_property IOSTANDARD LVCMOS33 [get_ports Clk]
set_property IOSTANDARD LVCMOS33 [get_ports SCL]

set_property IOSTANDARD LVCMOS33 [get_ports {ButtonStates[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ButtonStates[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ButtonStates[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ButtonStates[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ButtonStates[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ButtonStates[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports SDA]
set_property PACKAGE_PIN Y9 [get_ports Clk]
set_property PACKAGE_PIN W8 [get_ports SCL]
set_property PACKAGE_PIN V5 [get_ports SDA]





set_property PULLUP true [get_ports SCL]
set_property PULLUP true [get_ports SDA]


set_property OFFCHIP_TERM NONE [get_ports {SCL}]
set_property OFFCHIP_TERM NONE [get_ports {SDA}]
