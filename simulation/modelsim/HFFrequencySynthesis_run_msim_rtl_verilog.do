transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+Z:/dev/hw/DDS/fpga_vhdl/ter/dds {Z:/dev/hw/DDS/fpga_vhdl/ter/dds/baseline_c5gx.v}

