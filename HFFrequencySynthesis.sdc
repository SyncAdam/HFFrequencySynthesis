## Generated SDC file "HFFrequencySynthesis.sdc"

## Copyright (C) 2018  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Intel Program License 
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel FPGA IP License Agreement, or other applicable license
## agreement, including, without limitation, that your use is for
## the sole purpose of programming logic devices manufactured by
## Intel and sold by Intel or its authorized distributors.  Please
## refer to the applicable agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

## DATE    "Mon Jul 06 14:49:00 2026"

##
## DEVICE  "5CGXFC5C6F27C7"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {Parallel_Data_CLK_IN} -period 6.510 -waveform { 0.000 3.255 } [get_ports { Parallel_Data_CLK_IN }]
create_clock -name {ConfigureDAC:inst9|sclk_reg} -period 20.000 -waveform { 0.000 10.000 } [get_registers { ConfigureDAC:inst9|sclk_reg }]
create_clock -name {ConfigureDAC:inst9|internalClock} -period 20.000 -waveform { 0.000 10.000 } [get_registers { ConfigureDAC:inst9|internalClock }]
create_clock -name {Clock} -period 20.000 -waveform { 0.000 10.000 } [get_ports { Clock }]


#**************************************************************
# Create Generated Clock
#**************************************************************

create_generated_clock -name {inst1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]} -source [get_pins {inst1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|refclkin}] -duty_cycle 50/1 -multiply_by 4 -divide_by 2 -master_clock {Parallel_Data_CLK_IN} [get_pins {inst1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] 
create_generated_clock -name {inst1|pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk} -source [get_pins {inst1|pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|vco0ph[0]}] -duty_cycle 50/1 -multiply_by 1 -divide_by 2 -phase 19536/217 -master_clock {inst1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]} [get_pins {inst1|pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] 


#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {ConfigureDAC:inst9|internalClock}] -rise_to [get_clocks {ConfigureDAC:inst9|internalClock}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {ConfigureDAC:inst9|internalClock}] -fall_to [get_clocks {ConfigureDAC:inst9|internalClock}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {ConfigureDAC:inst9|internalClock}] -rise_to [get_clocks {Clock}]  0.330  
set_clock_uncertainty -rise_from [get_clocks {ConfigureDAC:inst9|internalClock}] -fall_to [get_clocks {Clock}]  0.330  
set_clock_uncertainty -rise_from [get_clocks {ConfigureDAC:inst9|internalClock}] -rise_to [get_clocks {ConfigureDAC:inst9|sclk_reg}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {ConfigureDAC:inst9|internalClock}] -fall_to [get_clocks {ConfigureDAC:inst9|sclk_reg}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {ConfigureDAC:inst9|internalClock}] -rise_to [get_clocks {ConfigureDAC:inst9|internalClock}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {ConfigureDAC:inst9|internalClock}] -fall_to [get_clocks {ConfigureDAC:inst9|internalClock}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {ConfigureDAC:inst9|internalClock}] -rise_to [get_clocks {Clock}]  0.330  
set_clock_uncertainty -fall_from [get_clocks {ConfigureDAC:inst9|internalClock}] -fall_to [get_clocks {Clock}]  0.330  
set_clock_uncertainty -fall_from [get_clocks {ConfigureDAC:inst9|internalClock}] -rise_to [get_clocks {ConfigureDAC:inst9|sclk_reg}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {ConfigureDAC:inst9|internalClock}] -fall_to [get_clocks {ConfigureDAC:inst9|sclk_reg}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Clock}] -rise_to [get_clocks {ConfigureDAC:inst9|internalClock}]  0.330  
set_clock_uncertainty -rise_from [get_clocks {Clock}] -fall_to [get_clocks {ConfigureDAC:inst9|internalClock}]  0.330  
set_clock_uncertainty -rise_from [get_clocks {Clock}] -rise_to [get_clocks {Clock}] -setup 0.280  
set_clock_uncertainty -rise_from [get_clocks {Clock}] -rise_to [get_clocks {Clock}] -hold 0.270  
set_clock_uncertainty -rise_from [get_clocks {Clock}] -fall_to [get_clocks {Clock}] -setup 0.280  
set_clock_uncertainty -rise_from [get_clocks {Clock}] -fall_to [get_clocks {Clock}] -hold 0.270  
set_clock_uncertainty -fall_from [get_clocks {Clock}] -rise_to [get_clocks {ConfigureDAC:inst9|internalClock}]  0.330  
set_clock_uncertainty -fall_from [get_clocks {Clock}] -fall_to [get_clocks {ConfigureDAC:inst9|internalClock}]  0.330  
set_clock_uncertainty -fall_from [get_clocks {Clock}] -rise_to [get_clocks {Clock}] -setup 0.280  
set_clock_uncertainty -fall_from [get_clocks {Clock}] -rise_to [get_clocks {Clock}] -hold 0.270  
set_clock_uncertainty -fall_from [get_clocks {Clock}] -fall_to [get_clocks {Clock}] -setup 0.280  
set_clock_uncertainty -fall_from [get_clocks {Clock}] -fall_to [get_clocks {Clock}] -hold 0.270  
set_clock_uncertainty -rise_from [get_clocks {ConfigureDAC:inst9|sclk_reg}] -rise_to [get_clocks {ConfigureDAC:inst9|internalClock}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {ConfigureDAC:inst9|sclk_reg}] -fall_to [get_clocks {ConfigureDAC:inst9|internalClock}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {ConfigureDAC:inst9|sclk_reg}] -rise_to [get_clocks {ConfigureDAC:inst9|sclk_reg}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {ConfigureDAC:inst9|sclk_reg}] -fall_to [get_clocks {ConfigureDAC:inst9|sclk_reg}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {ConfigureDAC:inst9|sclk_reg}] -rise_to [get_clocks {ConfigureDAC:inst9|internalClock}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {ConfigureDAC:inst9|sclk_reg}] -fall_to [get_clocks {ConfigureDAC:inst9|internalClock}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {ConfigureDAC:inst9|sclk_reg}] -rise_to [get_clocks {ConfigureDAC:inst9|sclk_reg}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {ConfigureDAC:inst9|sclk_reg}] -fall_to [get_clocks {ConfigureDAC:inst9|sclk_reg}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {Parallel_Data_CLK_IN}] -rise_to [get_clocks {Parallel_Data_CLK_IN}] -setup 0.100  
set_clock_uncertainty -rise_from [get_clocks {Parallel_Data_CLK_IN}] -rise_to [get_clocks {Parallel_Data_CLK_IN}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {Parallel_Data_CLK_IN}] -fall_to [get_clocks {Parallel_Data_CLK_IN}] -setup 0.100  
set_clock_uncertainty -rise_from [get_clocks {Parallel_Data_CLK_IN}] -fall_to [get_clocks {Parallel_Data_CLK_IN}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {Parallel_Data_CLK_IN}] -rise_to [get_clocks {Parallel_Data_CLK_IN}] -setup 0.100  
set_clock_uncertainty -fall_from [get_clocks {Parallel_Data_CLK_IN}] -rise_to [get_clocks {Parallel_Data_CLK_IN}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {Parallel_Data_CLK_IN}] -fall_to [get_clocks {Parallel_Data_CLK_IN}] -setup 0.100  
set_clock_uncertainty -fall_from [get_clocks {Parallel_Data_CLK_IN}] -fall_to [get_clocks {Parallel_Data_CLK_IN}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {Parallel_Data_CLK_IN}] -rise_to [get_clocks {inst1|pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -setup 0.090  
set_clock_uncertainty -rise_from [get_clocks {Parallel_Data_CLK_IN}] -rise_to [get_clocks {inst1|pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -hold 0.030  
set_clock_uncertainty -rise_from [get_clocks {Parallel_Data_CLK_IN}] -fall_to [get_clocks {inst1|pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -setup 0.090  
set_clock_uncertainty -rise_from [get_clocks {Parallel_Data_CLK_IN}] -fall_to [get_clocks {inst1|pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -hold 0.030  
set_clock_uncertainty -fall_from [get_clocks {Parallel_Data_CLK_IN}] -rise_to [get_clocks {inst1|pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -setup 0.090  
set_clock_uncertainty -fall_from [get_clocks {Parallel_Data_CLK_IN}] -rise_to [get_clocks {inst1|pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -hold 0.030  
set_clock_uncertainty -fall_from [get_clocks {Parallel_Data_CLK_IN}] -fall_to [get_clocks {inst1|pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -setup 0.090  
set_clock_uncertainty -fall_from [get_clocks {Parallel_Data_CLK_IN}] -fall_to [get_clocks {inst1|pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -hold 0.030  


#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************


#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

