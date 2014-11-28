# 
# Synthesis run script generated by Vivado
# 

  set_param gui.test TreeTableDev
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z020clg484-1
set_property target_language Verilog [current_project]
set_property board_part em.avnet.com:zed:part0:1.0 [current_project]
set_param project.compositeFile.enableAutoGeneration 0
set_property default_lib xil_defaultlib [current_project]
read_vhdl -library xil_defaultlib {
  {Z:/Option ISIA/Wang-Smith/Nunchuck/Nunchuck.srcs/sources_1/new/SCLGenerator.vhd}
  {Z:/Option ISIA/Wang-Smith/Nunchuck/Nunchuck.srcs/sources_1/new/FSMWrite.vhd}
  {Z:/Option ISIA/Wang-Smith/Nunchuck/Nunchuck.srcs/sources_1/new/FSMRead.vhd}
  {Z:/Option ISIA/Wang-Smith/Nunchuck/Nunchuck.srcs/sources_1/new/FSMI2C.vhd}
  {Z:/Option ISIA/Wang-Smith/Nunchuck/Nunchuck.srcs/sources_1/new/FSMAddress.vhd}
  {Z:/Option ISIA/Wang-Smith/Nunchuck/Nunchuck.srcs/sources_1/new/ClockGenerator.vhd}
  {Z:/Option ISIA/Wang-Smith/Nunchuck/Nunchuck.srcs/sources_1/new/I2CController.vhd}
}
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir {Z:/Option ISIA/Wang-Smith/Nunchuck/Nunchuck.cache/wt} [current_project]
set_property parent.project_dir {Z:/Option ISIA/Wang-Smith/Nunchuck} [current_project]
catch { write_hwdef -file I2CController.hwdef }
synth_design -top I2CController -part xc7z020clg484-1
write_checkpoint I2CController.dcp
report_utilization -file I2CController_utilization_synth.rpt -pb I2CController_utilization_synth.pb
