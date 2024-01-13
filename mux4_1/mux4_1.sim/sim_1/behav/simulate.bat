@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xsim tb_mux_gate_4_1_behav -key {Behavioral:sim_1:Functional:tb_mux_gate_4_1} -tclbatch tb_mux_gate_4_1.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
