## High Frequency Multi-tone signal generation

This project aims to achieve a high frequency multi-tone signal generator using the DAC34SH84EVM digital-to-analog converter evaluation board with an Altera Cyclone V GX Starter kit.

### Interface

 - LEDR9 - Serial communication internal clock
 - LEDR[2..0] - Serial communication state machine state encoded
 - LEDG7 - Serial communication output clock
 - LEDG6 - Serial communication output data
 - LEDG5 - Serial communication enable line
 - LEDG2 - Off -> Write to chip - ON -> Read from the chip
 - LEDG0 - Configuration done indicator
 - Button KEY3 - Reset
 - Button KEY1 - Select write/read to/from the chip
 - Button KEY0 - Run configuration
 - GPIO 0 - Serial data
 - GPIO 1 - Serial enable
 - GPIO 2 - Serial clock

### Steps to compile:
 1.  Clone git repository
 2.  Open project file with Quartus Prime 18.1 Lite Edition
 3.  Start compilation
 4.  Use programmer to program the FPGA
