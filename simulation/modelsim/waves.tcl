onerror {resume}

add wave -noupdate -label clk /TestBench/clock
add wave -noupdate -label Output /TestBench/outputValue

TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {10 ns} 0}
update