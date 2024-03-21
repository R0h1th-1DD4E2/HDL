@echo off
set xv_path=D:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xsim tb_sequence_1010_behav -key {Behavioral:sim_1:Functional:tb_sequence_1010} -tclbatch tb_sequence_1010.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
