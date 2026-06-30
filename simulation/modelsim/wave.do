onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/clock
add wave -noupdate -format Analog-Step -height 74 -max 25303.0 -min -25841.0 -radix decimal /testbench/output_i
add wave -noupdate -format Analog-Step -height 74 -max 21910.999999999996 -min -21611.0 -radix decimal /testbench/output_q
add wave -noupdate -format Analog-Step -height 74 -max 7648.9999999999991 -radix unsigned /testbench/sinLUT_output
add wave -noupdate /testbench/SDENB
add wave -noupdate /testbench/SCLK
add wave -noupdate /testbench/SDIO
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {41856544 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {338206464 ps}
