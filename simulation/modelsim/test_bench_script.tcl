quit -sim

vlib work;

vcom ../../SynthesisCircuitry.vhd
vcom ../../*.vhd

vsim work.testbench -Lf 220model -Lf altera_mf

do waves.tcl
run 5000 ns