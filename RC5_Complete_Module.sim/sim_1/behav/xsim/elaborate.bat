@echo off
REM ****************************************************************************
REM Vivado (TM) v2021.1.1 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Fri Nov 12 13:29:58 -0500 2021
REM SW Build 3286242 on Wed Jul 28 13:10:47 MDT 2021
REM
REM IP Build 3279568 on Wed Jul 28 16:48:48 MDT 2021
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
REM elaborate design
echo "xelab -wto afb584096c9a49bd8534916cedbe9a58 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot RC5_TestBench_behav xil_defaultlib.RC5_TestBench -log elaborate.log"
call xelab  -wto afb584096c9a49bd8534916cedbe9a58 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot RC5_TestBench_behav xil_defaultlib.RC5_TestBench -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
