@echo off
set xv_path=D:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xsim tb_q1_behav -key {Behavioral:sim_1:Functional:tb_q1} -tclbatch tb_q1.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
