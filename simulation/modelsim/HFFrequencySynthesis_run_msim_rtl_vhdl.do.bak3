transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/MainFSM.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/SynthesisCircuitry.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/ConfigureADC.vhd}
vcom -93 -work work {Z:/dev/hw/DDS/fpga_vhdl/ter/HFFrequencySynthesis/ConfigROM.vhd}

