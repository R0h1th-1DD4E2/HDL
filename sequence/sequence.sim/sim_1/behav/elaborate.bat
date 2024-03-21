@echo off
set xv_path=D:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 59fca78b5eac41f8837460e6a2115c84 -m64 --debug typical --relax -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot tb_sequence_1010_behav xil_defaultlib.tb_sequence_1010 xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
