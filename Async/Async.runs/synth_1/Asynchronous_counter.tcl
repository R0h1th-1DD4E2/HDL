# 
# Synthesis run script generated by Vivado
# 

set_param gui.test TreeTableDev
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

create_project -in_memory -part xc7a35tcpg236-1
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir {D:/Rohit_V/Documents/Codes/VS Code/My Learnings/HDL/Async/Async.cache/wt} [current_project]
set_property parent.project_path {D:/Rohit_V/Documents/Codes/VS Code/My Learnings/HDL/Async/Async.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib {{D:/Rohit_V/Documents/Codes/VS Code/My Learnings/HDL/Async/Async.srcs/sources_1/new/Async_counter.v}}
catch { write_hwdef -file Asynchronous_counter.hwdef }
synth_design -top Asynchronous_counter -part xc7a35tcpg236-1
write_checkpoint -noxdef Asynchronous_counter.dcp
catch { report_utilization -file Asynchronous_counter_utilization_synth.rpt -pb Asynchronous_counter_utilization_synth.pb }