transcript on
if ![file isdirectory HFFrequencySynthesis_iputf_libs] {
	file mkdir HFFrequencySynthesis_iputf_libs
}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

###### Libraries for IPUTF cores 
###### End libraries for IPUTF cores 
###### MIF file copy and HDL compilation commands for IPUTF cores 


vcom "Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/PLL_OUT_sim/PLL_OUT.vho"

vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/PLL_OUT.vho}
vlog -vlog01compat -work work +incdir+Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/baseline_c5gx.v}
vlib PLL_OUT
vmap PLL_OUT PLL_OUT
vlog -vlog01compat -work PLL_OUT +incdir+Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/PLL_OUT {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/PLL_OUT/PLL_OUT_0002.v}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/NewSignalGenerator/SimpleDualPortRAM_generic.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/NewSignalGenerator/SDFCommutator9.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/NewSignalGenerator/SDFCommutator8.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/NewSignalGenerator/SDFCommutator7.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/NewSignalGenerator/SDFCommutator6.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/NewSignalGenerator/SDFCommutator5.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/NewSignalGenerator/SDFCommutator4.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/NewSignalGenerator/SDFCommutator3.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/NewSignalGenerator/SDFCommutator2.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/NewSignalGenerator/SDFCommutator1.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/NewSignalGenerator/RADIX22FFT_CTRL1_8.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/NewSignalGenerator/RADIX22FFT_CTRL1_7.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/NewSignalGenerator/RADIX22FFT_CTRL1_6.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/NewSignalGenerator/RADIX22FFT_CTRL1_5.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/NewSignalGenerator/RADIX22FFT_CTRL1_4.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/NewSignalGenerator/RADIX22FFT_CTRL1_3.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/NewSignalGenerator/RADIX22FFT_CTRL1_2.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/NewSignalGenerator/RADIX22FFT_CTRL1_1_block.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/NewSignalGenerator/RADIX22FFT_CTRL1_1.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/NewSignalGenerator/RADIX2FFT_bitNatural.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/NewSignalGenerator/NewSignalGenerator_pkg.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/NewSignalGenerator/Complex4Multiply_block2.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/NewSignalGenerator/Complex4Multiply_block1.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/NewSignalGenerator/Complex4Multiply_block.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/NewSignalGenerator/Complex4Multiply.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/MainFSM.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/ConfigureADC.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/ConfigROM.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/DDROUT.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/NewSignalGenerator/TWDLROM_9_1.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/NewSignalGenerator/TWDLROM_7_1.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/NewSignalGenerator/TWDLROM_5_1.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/NewSignalGenerator/TWDLROM_3_1.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/NewSignalGenerator/RADIX22FFT_SDF2_8.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/NewSignalGenerator/RADIX22FFT_SDF2_6.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/NewSignalGenerator/RADIX22FFT_SDF2_4.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/NewSignalGenerator/RADIX22FFT_SDF2_2.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/NewSignalGenerator/RADIX22FFT_SDF1_9.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/NewSignalGenerator/RADIX22FFT_SDF1_7.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/NewSignalGenerator/RADIX22FFT_SDF1_5.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/NewSignalGenerator/RADIX22FFT_SDF1_3.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/NewSignalGenerator/RADIX22FFT_SDF1_1.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/NewSignalGenerator/NewSignalGenerator.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/NewSignalGenerator/IFFT.vhd}

