-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "12/13/2025 16:33:01"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MainFSM IS
    PORT (
	clk : IN std_logic;
	output : BUFFER std_logic_vector(15 DOWNTO 0);
	sclk : BUFFER std_logic;
	sdenb : BUFFER std_logic;
	sdio : BUFFER std_logic;
	configok : BUFFER std_logic;
	writeconfig : IN std_logic;
	serialTimer : IN std_logic
	);
END MainFSM;

-- Design Ports Information
-- output[0]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[7]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[8]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[9]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[10]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[11]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[12]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[13]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[14]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[15]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdio	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeconfig	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- serialTimer	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sclk	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdenb	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- configok	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MainFSM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_output : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_sclk : std_logic;
SIGNAL ww_sdenb : std_logic;
SIGNAL ww_sdio : std_logic;
SIGNAL ww_configok : std_logic;
SIGNAL ww_writeconfig : std_logic;
SIGNAL ww_serialTimer : std_logic;
SIGNAL \writeconfig~input_o\ : std_logic;
SIGNAL \serialTimer~input_o\ : std_logic;
SIGNAL \sclk~input_o\ : std_logic;
SIGNAL \sdenb~input_o\ : std_logic;
SIGNAL \configok~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \snythesizer|Add0~1_sumout\ : std_logic;
SIGNAL \snythesizer|Add0~118\ : std_logic;
SIGNAL \snythesizer|Add0~121_sumout\ : std_logic;
SIGNAL \snythesizer|Add0~122\ : std_logic;
SIGNAL \snythesizer|Add0~125_sumout\ : std_logic;
SIGNAL \snythesizer|Add0~126\ : std_logic;
SIGNAL \snythesizer|Add0~101_sumout\ : std_logic;
SIGNAL \snythesizer|Add0~102\ : std_logic;
SIGNAL \snythesizer|Add0~105_sumout\ : std_logic;
SIGNAL \snythesizer|Add0~106\ : std_logic;
SIGNAL \snythesizer|Add0~109_sumout\ : std_logic;
SIGNAL \snythesizer|Add0~110\ : std_logic;
SIGNAL \snythesizer|Add0~113_sumout\ : std_logic;
SIGNAL \snythesizer|Add0~114\ : std_logic;
SIGNAL \snythesizer|Add0~81_sumout\ : std_logic;
SIGNAL \snythesizer|Add0~82\ : std_logic;
SIGNAL \snythesizer|Add0~85_sumout\ : std_logic;
SIGNAL \snythesizer|Add0~86\ : std_logic;
SIGNAL \snythesizer|Add0~41_sumout\ : std_logic;
SIGNAL \snythesizer|Add0~42\ : std_logic;
SIGNAL \snythesizer|Add0~45_sumout\ : std_logic;
SIGNAL \snythesizer|Add0~46\ : std_logic;
SIGNAL \snythesizer|Add0~49_sumout\ : std_logic;
SIGNAL \snythesizer|Add0~50\ : std_logic;
SIGNAL \snythesizer|Add0~53_sumout\ : std_logic;
SIGNAL \snythesizer|Add0~54\ : std_logic;
SIGNAL \snythesizer|Add0~57_sumout\ : std_logic;
SIGNAL \snythesizer|Add0~58\ : std_logic;
SIGNAL \snythesizer|Add0~89_sumout\ : std_logic;
SIGNAL \snythesizer|Add0~90\ : std_logic;
SIGNAL \snythesizer|Add0~93_sumout\ : std_logic;
SIGNAL \snythesizer|Add0~94\ : std_logic;
SIGNAL \snythesizer|Add0~97_sumout\ : std_logic;
SIGNAL \snythesizer|Add0~98\ : std_logic;
SIGNAL \snythesizer|Add0~61_sumout\ : std_logic;
SIGNAL \snythesizer|Add0~62\ : std_logic;
SIGNAL \snythesizer|Add0~21_sumout\ : std_logic;
SIGNAL \snythesizer|Add0~22\ : std_logic;
SIGNAL \snythesizer|Add0~65_sumout\ : std_logic;
SIGNAL \snythesizer|Add0~66\ : std_logic;
SIGNAL \snythesizer|Add0~25_sumout\ : std_logic;
SIGNAL \snythesizer|Add0~26\ : std_logic;
SIGNAL \snythesizer|Add0~29_sumout\ : std_logic;
SIGNAL \snythesizer|Add0~30\ : std_logic;
SIGNAL \snythesizer|Add0~33_sumout\ : std_logic;
SIGNAL \snythesizer|Add0~34\ : std_logic;
SIGNAL \snythesizer|Add0~37_sumout\ : std_logic;
SIGNAL \snythesizer|Add0~38\ : std_logic;
SIGNAL \snythesizer|Add0~69_sumout\ : std_logic;
SIGNAL \snythesizer|Add0~70\ : std_logic;
SIGNAL \snythesizer|Add0~73_sumout\ : std_logic;
SIGNAL \snythesizer|Add0~74\ : std_logic;
SIGNAL \snythesizer|Add0~77_sumout\ : std_logic;
SIGNAL \snythesizer|Add0~78\ : std_logic;
SIGNAL \snythesizer|Add0~5_sumout\ : std_logic;
SIGNAL \snythesizer|Add0~6\ : std_logic;
SIGNAL \snythesizer|Add0~9_sumout\ : std_logic;
SIGNAL \snythesizer|Add0~10\ : std_logic;
SIGNAL \snythesizer|Add0~13_sumout\ : std_logic;
SIGNAL \snythesizer|Add0~14\ : std_logic;
SIGNAL \snythesizer|Add0~17_sumout\ : std_logic;
SIGNAL \snythesizer|LessThan0~0_combout\ : std_logic;
SIGNAL \snythesizer|LessThan0~1_combout\ : std_logic;
SIGNAL \snythesizer|LessThan0~4_combout\ : std_logic;
SIGNAL \snythesizer|LessThan0~5_combout\ : std_logic;
SIGNAL \snythesizer|LessThan0~2_combout\ : std_logic;
SIGNAL \snythesizer|LessThan0~3_combout\ : std_logic;
SIGNAL \snythesizer|Add0~2\ : std_logic;
SIGNAL \snythesizer|Add0~117_sumout\ : std_logic;
SIGNAL \snythesizer|counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \snythesizer|counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \snythesizer|Mux11~0_combout\ : std_logic;
SIGNAL \snythesizer|Mux10~0_combout\ : std_logic;
SIGNAL \snythesizer|Mux9~0_combout\ : std_logic;
SIGNAL \snythesizer|Mux8~0_combout\ : std_logic;
SIGNAL \snythesizer|output[4]~feeder_combout\ : std_logic;
SIGNAL \snythesizer|Mux2~0_combout\ : std_logic;
SIGNAL \snythesizer|Mux7~0_combout\ : std_logic;
SIGNAL \snythesizer|Mux6~0_combout\ : std_logic;
SIGNAL \snythesizer|Mux1~0_combout\ : std_logic;
SIGNAL \snythesizer|Mux5~0_combout\ : std_logic;
SIGNAL \snythesizer|Mux4~0_combout\ : std_logic;
SIGNAL \snythesizer|Mux3~0_combout\ : std_logic;
SIGNAL \snythesizer|Mux0~0_combout\ : std_logic;
SIGNAL \snythesizer|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \snythesizer|output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \snythesizer|ALT_INV_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \snythesizer|ALT_INV_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \snythesizer|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \snythesizer|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \snythesizer|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \snythesizer|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \snythesizer|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \snythesizer|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \snythesizer|ALT_INV_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \snythesizer|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \snythesizer|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \snythesizer|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \snythesizer|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \snythesizer|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \snythesizer|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \snythesizer|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \snythesizer|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \snythesizer|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \snythesizer|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \snythesizer|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \snythesizer|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \snythesizer|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \snythesizer|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \snythesizer|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \snythesizer|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \snythesizer|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \snythesizer|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \snythesizer|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \snythesizer|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \snythesizer|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \snythesizer|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \snythesizer|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \snythesizer|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \snythesizer|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \snythesizer|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \snythesizer|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \snythesizer|ALT_INV_Add0~5_sumout\ : std_logic;

BEGIN

ww_clk <= clk;
output <= ww_output;
sclk <= ww_sclk;
sdenb <= ww_sdenb;
sdio <= ww_sdio;
configok <= ww_configok;
ww_writeconfig <= writeconfig;
ww_serialTimer <= serialTimer;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\snythesizer|ALT_INV_counter[2]~DUPLICATE_q\ <= NOT \snythesizer|counter[2]~DUPLICATE_q\;
\snythesizer|ALT_INV_counter[0]~DUPLICATE_q\ <= NOT \snythesizer|counter[0]~DUPLICATE_q\;
\snythesizer|ALT_INV_LessThan0~5_combout\ <= NOT \snythesizer|LessThan0~5_combout\;
\snythesizer|ALT_INV_LessThan0~4_combout\ <= NOT \snythesizer|LessThan0~4_combout\;
\snythesizer|ALT_INV_LessThan0~2_combout\ <= NOT \snythesizer|LessThan0~2_combout\;
\snythesizer|ALT_INV_LessThan0~1_combout\ <= NOT \snythesizer|LessThan0~1_combout\;
\snythesizer|ALT_INV_LessThan0~0_combout\ <= NOT \snythesizer|LessThan0~0_combout\;
\snythesizer|ALT_INV_Mux8~0_combout\ <= NOT \snythesizer|Mux8~0_combout\;
\snythesizer|ALT_INV_counter\(7) <= NOT \snythesizer|counter\(7);
\snythesizer|ALT_INV_counter\(6) <= NOT \snythesizer|counter\(6);
\snythesizer|ALT_INV_counter\(5) <= NOT \snythesizer|counter\(5);
\snythesizer|ALT_INV_counter\(4) <= NOT \snythesizer|counter\(4);
\snythesizer|ALT_INV_counter\(17) <= NOT \snythesizer|counter\(17);
\snythesizer|ALT_INV_counter\(16) <= NOT \snythesizer|counter\(16);
\snythesizer|ALT_INV_counter\(15) <= NOT \snythesizer|counter\(15);
\snythesizer|ALT_INV_counter\(9) <= NOT \snythesizer|counter\(9);
\snythesizer|ALT_INV_counter\(8) <= NOT \snythesizer|counter\(8);
\snythesizer|ALT_INV_counter\(27) <= NOT \snythesizer|counter\(27);
\snythesizer|ALT_INV_counter\(26) <= NOT \snythesizer|counter\(26);
\snythesizer|ALT_INV_counter\(25) <= NOT \snythesizer|counter\(25);
\snythesizer|ALT_INV_counter\(20) <= NOT \snythesizer|counter\(20);
\snythesizer|ALT_INV_counter\(18) <= NOT \snythesizer|counter\(18);
\snythesizer|ALT_INV_counter\(14) <= NOT \snythesizer|counter\(14);
\snythesizer|ALT_INV_counter\(13) <= NOT \snythesizer|counter\(13);
\snythesizer|ALT_INV_counter\(12) <= NOT \snythesizer|counter\(12);
\snythesizer|ALT_INV_counter\(11) <= NOT \snythesizer|counter\(11);
\snythesizer|ALT_INV_counter\(10) <= NOT \snythesizer|counter\(10);
\snythesizer|ALT_INV_counter\(24) <= NOT \snythesizer|counter\(24);
\snythesizer|ALT_INV_counter\(23) <= NOT \snythesizer|counter\(23);
\snythesizer|ALT_INV_counter\(22) <= NOT \snythesizer|counter\(22);
\snythesizer|ALT_INV_counter\(21) <= NOT \snythesizer|counter\(21);
\snythesizer|ALT_INV_counter\(19) <= NOT \snythesizer|counter\(19);
\snythesizer|ALT_INV_counter\(31) <= NOT \snythesizer|counter\(31);
\snythesizer|ALT_INV_counter\(30) <= NOT \snythesizer|counter\(30);
\snythesizer|ALT_INV_counter\(29) <= NOT \snythesizer|counter\(29);
\snythesizer|ALT_INV_counter\(28) <= NOT \snythesizer|counter\(28);
\snythesizer|ALT_INV_Add0~113_sumout\ <= NOT \snythesizer|Add0~113_sumout\;
\snythesizer|ALT_INV_Add0~109_sumout\ <= NOT \snythesizer|Add0~109_sumout\;
\snythesizer|ALT_INV_Add0~105_sumout\ <= NOT \snythesizer|Add0~105_sumout\;
\snythesizer|ALT_INV_Add0~101_sumout\ <= NOT \snythesizer|Add0~101_sumout\;
\snythesizer|ALT_INV_Add0~97_sumout\ <= NOT \snythesizer|Add0~97_sumout\;
\snythesizer|ALT_INV_Add0~93_sumout\ <= NOT \snythesizer|Add0~93_sumout\;
\snythesizer|ALT_INV_Add0~89_sumout\ <= NOT \snythesizer|Add0~89_sumout\;
\snythesizer|ALT_INV_Add0~85_sumout\ <= NOT \snythesizer|Add0~85_sumout\;
\snythesizer|ALT_INV_Add0~81_sumout\ <= NOT \snythesizer|Add0~81_sumout\;
\snythesizer|ALT_INV_Add0~77_sumout\ <= NOT \snythesizer|Add0~77_sumout\;
\snythesizer|ALT_INV_Add0~73_sumout\ <= NOT \snythesizer|Add0~73_sumout\;
\snythesizer|ALT_INV_Add0~69_sumout\ <= NOT \snythesizer|Add0~69_sumout\;
\snythesizer|ALT_INV_Add0~65_sumout\ <= NOT \snythesizer|Add0~65_sumout\;
\snythesizer|ALT_INV_Add0~61_sumout\ <= NOT \snythesizer|Add0~61_sumout\;
\snythesizer|ALT_INV_Add0~57_sumout\ <= NOT \snythesizer|Add0~57_sumout\;
\snythesizer|ALT_INV_Add0~53_sumout\ <= NOT \snythesizer|Add0~53_sumout\;
\snythesizer|ALT_INV_Add0~49_sumout\ <= NOT \snythesizer|Add0~49_sumout\;
\snythesizer|ALT_INV_Add0~45_sumout\ <= NOT \snythesizer|Add0~45_sumout\;
\snythesizer|ALT_INV_Add0~41_sumout\ <= NOT \snythesizer|Add0~41_sumout\;
\snythesizer|ALT_INV_Add0~37_sumout\ <= NOT \snythesizer|Add0~37_sumout\;
\snythesizer|ALT_INV_Add0~33_sumout\ <= NOT \snythesizer|Add0~33_sumout\;
\snythesizer|ALT_INV_Add0~29_sumout\ <= NOT \snythesizer|Add0~29_sumout\;
\snythesizer|ALT_INV_Add0~25_sumout\ <= NOT \snythesizer|Add0~25_sumout\;
\snythesizer|ALT_INV_Add0~21_sumout\ <= NOT \snythesizer|Add0~21_sumout\;
\snythesizer|ALT_INV_Add0~17_sumout\ <= NOT \snythesizer|Add0~17_sumout\;
\snythesizer|ALT_INV_Add0~13_sumout\ <= NOT \snythesizer|Add0~13_sumout\;
\snythesizer|ALT_INV_Add0~9_sumout\ <= NOT \snythesizer|Add0~9_sumout\;
\snythesizer|ALT_INV_Add0~5_sumout\ <= NOT \snythesizer|Add0~5_sumout\;
\snythesizer|ALT_INV_counter\(3) <= NOT \snythesizer|counter\(3);
\snythesizer|ALT_INV_counter\(2) <= NOT \snythesizer|counter\(2);
\snythesizer|ALT_INV_counter\(1) <= NOT \snythesizer|counter\(1);
\snythesizer|ALT_INV_counter\(0) <= NOT \snythesizer|counter\(0);

-- Location: IOOBUF_X89_Y35_N45
\output[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \snythesizer|output\(0),
	devoe => ww_devoe,
	o => ww_output(0));

-- Location: IOOBUF_X89_Y38_N39
\output[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \snythesizer|output\(1),
	devoe => ww_devoe,
	o => ww_output(1));

-- Location: IOOBUF_X89_Y38_N56
\output[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \snythesizer|output\(2),
	devoe => ww_devoe,
	o => ww_output(2));

-- Location: IOOBUF_X89_Y9_N39
\output[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \snythesizer|output\(3),
	devoe => ww_devoe,
	o => ww_output(3));

-- Location: IOOBUF_X89_Y35_N79
\output[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \snythesizer|output\(4),
	devoe => ww_devoe,
	o => ww_output(4));

-- Location: IOOBUF_X89_Y36_N5
\output[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \snythesizer|output\(5),
	devoe => ww_devoe,
	o => ww_output(5));

-- Location: IOOBUF_X89_Y37_N5
\output[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \snythesizer|output\(6),
	devoe => ww_devoe,
	o => ww_output(6));

-- Location: IOOBUF_X89_Y38_N22
\output[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \snythesizer|output\(7),
	devoe => ww_devoe,
	o => ww_output(7));

-- Location: IOOBUF_X89_Y36_N56
\output[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \snythesizer|output\(8),
	devoe => ww_devoe,
	o => ww_output(8));

-- Location: IOOBUF_X89_Y37_N22
\output[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \snythesizer|output\(9),
	devoe => ww_devoe,
	o => ww_output(9));

-- Location: IOOBUF_X89_Y37_N39
\output[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \snythesizer|output\(10),
	devoe => ww_devoe,
	o => ww_output(10));

-- Location: IOOBUF_X89_Y38_N5
\output[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \snythesizer|output\(11),
	devoe => ww_devoe,
	o => ww_output(11));

-- Location: IOOBUF_X89_Y35_N96
\output[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \snythesizer|output\(12),
	devoe => ww_devoe,
	o => ww_output(12));

-- Location: IOOBUF_X89_Y37_N56
\output[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \snythesizer|output\(13),
	devoe => ww_devoe,
	o => ww_output(13));

-- Location: IOOBUF_X89_Y36_N22
\output[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \snythesizer|output\(14),
	devoe => ww_devoe,
	o => ww_output(14));

-- Location: IOOBUF_X89_Y36_N39
\output[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \snythesizer|output\(15),
	devoe => ww_devoe,
	o => ww_output(15));

-- Location: IOOBUF_X6_Y0_N19
\sdio~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_sdio);

-- Location: IOOBUF_X8_Y0_N19
\sclk~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_sclk);

-- Location: IOOBUF_X32_Y81_N36
\sdenb~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_sdenb);

-- Location: IOOBUF_X28_Y81_N2
\configok~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_configok);

-- Location: IOIBUF_X89_Y35_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: LABCELL_X85_Y24_N0
\snythesizer|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~1_sumout\ = SUM(( \snythesizer|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \snythesizer|Add0~2\ = CARRY(( \snythesizer|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \snythesizer|ALT_INV_counter\(0),
	cin => GND,
	sumout => \snythesizer|Add0~1_sumout\,
	cout => \snythesizer|Add0~2\);

-- Location: FF_X85_Y23_N16
\snythesizer|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \snythesizer|Add0~9_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(29));

-- Location: LABCELL_X85_Y24_N3
\snythesizer|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~117_sumout\ = SUM(( \snythesizer|counter\(1) ) + ( GND ) + ( \snythesizer|Add0~2\ ))
-- \snythesizer|Add0~118\ = CARRY(( \snythesizer|counter\(1) ) + ( GND ) + ( \snythesizer|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \snythesizer|ALT_INV_counter\(1),
	cin => \snythesizer|Add0~2\,
	sumout => \snythesizer|Add0~117_sumout\,
	cout => \snythesizer|Add0~118\);

-- Location: LABCELL_X85_Y24_N6
\snythesizer|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~121_sumout\ = SUM(( \snythesizer|counter\(2) ) + ( GND ) + ( \snythesizer|Add0~118\ ))
-- \snythesizer|Add0~122\ = CARRY(( \snythesizer|counter\(2) ) + ( GND ) + ( \snythesizer|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \snythesizer|ALT_INV_counter\(2),
	cin => \snythesizer|Add0~118\,
	sumout => \snythesizer|Add0~121_sumout\,
	cout => \snythesizer|Add0~122\);

-- Location: FF_X85_Y24_N7
\snythesizer|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~121_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(2));

-- Location: LABCELL_X85_Y24_N9
\snythesizer|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~125_sumout\ = SUM(( \snythesizer|counter\(3) ) + ( GND ) + ( \snythesizer|Add0~122\ ))
-- \snythesizer|Add0~126\ = CARRY(( \snythesizer|counter\(3) ) + ( GND ) + ( \snythesizer|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \snythesizer|ALT_INV_counter\(3),
	cin => \snythesizer|Add0~122\,
	sumout => \snythesizer|Add0~125_sumout\,
	cout => \snythesizer|Add0~126\);

-- Location: FF_X85_Y24_N11
\snythesizer|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~125_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(3));

-- Location: LABCELL_X85_Y24_N12
\snythesizer|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~101_sumout\ = SUM(( \snythesizer|counter\(4) ) + ( GND ) + ( \snythesizer|Add0~126\ ))
-- \snythesizer|Add0~102\ = CARRY(( \snythesizer|counter\(4) ) + ( GND ) + ( \snythesizer|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \snythesizer|ALT_INV_counter\(4),
	cin => \snythesizer|Add0~126\,
	sumout => \snythesizer|Add0~101_sumout\,
	cout => \snythesizer|Add0~102\);

-- Location: FF_X85_Y24_N14
\snythesizer|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~101_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(4));

-- Location: LABCELL_X85_Y24_N15
\snythesizer|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~105_sumout\ = SUM(( \snythesizer|counter\(5) ) + ( GND ) + ( \snythesizer|Add0~102\ ))
-- \snythesizer|Add0~106\ = CARRY(( \snythesizer|counter\(5) ) + ( GND ) + ( \snythesizer|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \snythesizer|ALT_INV_counter\(5),
	cin => \snythesizer|Add0~102\,
	sumout => \snythesizer|Add0~105_sumout\,
	cout => \snythesizer|Add0~106\);

-- Location: FF_X85_Y24_N17
\snythesizer|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~105_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(5));

-- Location: LABCELL_X85_Y24_N18
\snythesizer|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~109_sumout\ = SUM(( \snythesizer|counter\(6) ) + ( GND ) + ( \snythesizer|Add0~106\ ))
-- \snythesizer|Add0~110\ = CARRY(( \snythesizer|counter\(6) ) + ( GND ) + ( \snythesizer|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \snythesizer|ALT_INV_counter\(6),
	cin => \snythesizer|Add0~106\,
	sumout => \snythesizer|Add0~109_sumout\,
	cout => \snythesizer|Add0~110\);

-- Location: FF_X85_Y24_N20
\snythesizer|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~109_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(6));

-- Location: LABCELL_X85_Y24_N21
\snythesizer|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~113_sumout\ = SUM(( \snythesizer|counter\(7) ) + ( GND ) + ( \snythesizer|Add0~110\ ))
-- \snythesizer|Add0~114\ = CARRY(( \snythesizer|counter\(7) ) + ( GND ) + ( \snythesizer|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \snythesizer|ALT_INV_counter\(7),
	cin => \snythesizer|Add0~110\,
	sumout => \snythesizer|Add0~113_sumout\,
	cout => \snythesizer|Add0~114\);

-- Location: FF_X85_Y24_N23
\snythesizer|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~113_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(7));

-- Location: LABCELL_X85_Y24_N24
\snythesizer|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~81_sumout\ = SUM(( \snythesizer|counter\(8) ) + ( GND ) + ( \snythesizer|Add0~114\ ))
-- \snythesizer|Add0~82\ = CARRY(( \snythesizer|counter\(8) ) + ( GND ) + ( \snythesizer|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \snythesizer|ALT_INV_counter\(8),
	cin => \snythesizer|Add0~114\,
	sumout => \snythesizer|Add0~81_sumout\,
	cout => \snythesizer|Add0~82\);

-- Location: FF_X85_Y24_N26
\snythesizer|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~81_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(8));

-- Location: LABCELL_X85_Y24_N27
\snythesizer|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~85_sumout\ = SUM(( \snythesizer|counter\(9) ) + ( GND ) + ( \snythesizer|Add0~82\ ))
-- \snythesizer|Add0~86\ = CARRY(( \snythesizer|counter\(9) ) + ( GND ) + ( \snythesizer|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \snythesizer|ALT_INV_counter\(9),
	cin => \snythesizer|Add0~82\,
	sumout => \snythesizer|Add0~85_sumout\,
	cout => \snythesizer|Add0~86\);

-- Location: FF_X85_Y24_N29
\snythesizer|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~85_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(9));

-- Location: LABCELL_X85_Y24_N30
\snythesizer|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~41_sumout\ = SUM(( \snythesizer|counter\(10) ) + ( GND ) + ( \snythesizer|Add0~86\ ))
-- \snythesizer|Add0~42\ = CARRY(( \snythesizer|counter\(10) ) + ( GND ) + ( \snythesizer|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \snythesizer|ALT_INV_counter\(10),
	cin => \snythesizer|Add0~86\,
	sumout => \snythesizer|Add0~41_sumout\,
	cout => \snythesizer|Add0~42\);

-- Location: FF_X85_Y24_N31
\snythesizer|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~41_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(10));

-- Location: LABCELL_X85_Y24_N33
\snythesizer|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~45_sumout\ = SUM(( \snythesizer|counter\(11) ) + ( GND ) + ( \snythesizer|Add0~42\ ))
-- \snythesizer|Add0~46\ = CARRY(( \snythesizer|counter\(11) ) + ( GND ) + ( \snythesizer|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_counter\(11),
	cin => \snythesizer|Add0~42\,
	sumout => \snythesizer|Add0~45_sumout\,
	cout => \snythesizer|Add0~46\);

-- Location: FF_X85_Y24_N35
\snythesizer|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~45_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(11));

-- Location: LABCELL_X85_Y24_N36
\snythesizer|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~49_sumout\ = SUM(( \snythesizer|counter\(12) ) + ( GND ) + ( \snythesizer|Add0~46\ ))
-- \snythesizer|Add0~50\ = CARRY(( \snythesizer|counter\(12) ) + ( GND ) + ( \snythesizer|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \snythesizer|ALT_INV_counter\(12),
	cin => \snythesizer|Add0~46\,
	sumout => \snythesizer|Add0~49_sumout\,
	cout => \snythesizer|Add0~50\);

-- Location: FF_X85_Y24_N38
\snythesizer|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~49_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(12));

-- Location: LABCELL_X85_Y24_N39
\snythesizer|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~53_sumout\ = SUM(( \snythesizer|counter\(13) ) + ( GND ) + ( \snythesizer|Add0~50\ ))
-- \snythesizer|Add0~54\ = CARRY(( \snythesizer|counter\(13) ) + ( GND ) + ( \snythesizer|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \snythesizer|ALT_INV_counter\(13),
	cin => \snythesizer|Add0~50\,
	sumout => \snythesizer|Add0~53_sumout\,
	cout => \snythesizer|Add0~54\);

-- Location: FF_X85_Y24_N41
\snythesizer|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~53_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(13));

-- Location: LABCELL_X85_Y24_N42
\snythesizer|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~57_sumout\ = SUM(( \snythesizer|counter\(14) ) + ( GND ) + ( \snythesizer|Add0~54\ ))
-- \snythesizer|Add0~58\ = CARRY(( \snythesizer|counter\(14) ) + ( GND ) + ( \snythesizer|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \snythesizer|ALT_INV_counter\(14),
	cin => \snythesizer|Add0~54\,
	sumout => \snythesizer|Add0~57_sumout\,
	cout => \snythesizer|Add0~58\);

-- Location: FF_X85_Y24_N44
\snythesizer|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~57_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(14));

-- Location: LABCELL_X85_Y24_N45
\snythesizer|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~89_sumout\ = SUM(( \snythesizer|counter\(15) ) + ( GND ) + ( \snythesizer|Add0~58\ ))
-- \snythesizer|Add0~90\ = CARRY(( \snythesizer|counter\(15) ) + ( GND ) + ( \snythesizer|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \snythesizer|ALT_INV_counter\(15),
	cin => \snythesizer|Add0~58\,
	sumout => \snythesizer|Add0~89_sumout\,
	cout => \snythesizer|Add0~90\);

-- Location: FF_X85_Y24_N47
\snythesizer|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~89_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(15));

-- Location: LABCELL_X85_Y24_N48
\snythesizer|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~93_sumout\ = SUM(( \snythesizer|counter\(16) ) + ( GND ) + ( \snythesizer|Add0~90\ ))
-- \snythesizer|Add0~94\ = CARRY(( \snythesizer|counter\(16) ) + ( GND ) + ( \snythesizer|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \snythesizer|ALT_INV_counter\(16),
	cin => \snythesizer|Add0~90\,
	sumout => \snythesizer|Add0~93_sumout\,
	cout => \snythesizer|Add0~94\);

-- Location: FF_X85_Y24_N50
\snythesizer|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~93_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(16));

-- Location: LABCELL_X85_Y24_N51
\snythesizer|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~97_sumout\ = SUM(( \snythesizer|counter\(17) ) + ( GND ) + ( \snythesizer|Add0~94\ ))
-- \snythesizer|Add0~98\ = CARRY(( \snythesizer|counter\(17) ) + ( GND ) + ( \snythesizer|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \snythesizer|ALT_INV_counter\(17),
	cin => \snythesizer|Add0~94\,
	sumout => \snythesizer|Add0~97_sumout\,
	cout => \snythesizer|Add0~98\);

-- Location: FF_X85_Y24_N52
\snythesizer|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~97_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(17));

-- Location: LABCELL_X85_Y24_N54
\snythesizer|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~61_sumout\ = SUM(( \snythesizer|counter\(18) ) + ( GND ) + ( \snythesizer|Add0~98\ ))
-- \snythesizer|Add0~62\ = CARRY(( \snythesizer|counter\(18) ) + ( GND ) + ( \snythesizer|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \snythesizer|ALT_INV_counter\(18),
	cin => \snythesizer|Add0~98\,
	sumout => \snythesizer|Add0~61_sumout\,
	cout => \snythesizer|Add0~62\);

-- Location: FF_X85_Y24_N56
\snythesizer|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~61_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(18));

-- Location: LABCELL_X85_Y24_N57
\snythesizer|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~21_sumout\ = SUM(( \snythesizer|counter\(19) ) + ( GND ) + ( \snythesizer|Add0~62\ ))
-- \snythesizer|Add0~22\ = CARRY(( \snythesizer|counter\(19) ) + ( GND ) + ( \snythesizer|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \snythesizer|ALT_INV_counter\(19),
	cin => \snythesizer|Add0~62\,
	sumout => \snythesizer|Add0~21_sumout\,
	cout => \snythesizer|Add0~22\);

-- Location: FF_X85_Y24_N59
\snythesizer|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~21_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(19));

-- Location: LABCELL_X85_Y23_N0
\snythesizer|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~65_sumout\ = SUM(( \snythesizer|counter\(20) ) + ( GND ) + ( \snythesizer|Add0~22\ ))
-- \snythesizer|Add0~66\ = CARRY(( \snythesizer|counter\(20) ) + ( GND ) + ( \snythesizer|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \snythesizer|ALT_INV_counter\(20),
	cin => \snythesizer|Add0~22\,
	sumout => \snythesizer|Add0~65_sumout\,
	cout => \snythesizer|Add0~66\);

-- Location: FF_X85_Y23_N55
\snythesizer|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \snythesizer|Add0~65_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(20));

-- Location: LABCELL_X85_Y23_N3
\snythesizer|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~25_sumout\ = SUM(( \snythesizer|counter\(21) ) + ( GND ) + ( \snythesizer|Add0~66\ ))
-- \snythesizer|Add0~26\ = CARRY(( \snythesizer|counter\(21) ) + ( GND ) + ( \snythesizer|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \snythesizer|ALT_INV_counter\(21),
	cin => \snythesizer|Add0~66\,
	sumout => \snythesizer|Add0~25_sumout\,
	cout => \snythesizer|Add0~26\);

-- Location: FF_X85_Y23_N38
\snythesizer|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \snythesizer|Add0~25_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(21));

-- Location: LABCELL_X85_Y23_N6
\snythesizer|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~29_sumout\ = SUM(( \snythesizer|counter\(22) ) + ( GND ) + ( \snythesizer|Add0~26\ ))
-- \snythesizer|Add0~30\ = CARRY(( \snythesizer|counter\(22) ) + ( GND ) + ( \snythesizer|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \snythesizer|ALT_INV_counter\(22),
	cin => \snythesizer|Add0~26\,
	sumout => \snythesizer|Add0~29_sumout\,
	cout => \snythesizer|Add0~30\);

-- Location: FF_X85_Y23_N50
\snythesizer|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \snythesizer|Add0~29_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(22));

-- Location: LABCELL_X85_Y23_N9
\snythesizer|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~33_sumout\ = SUM(( \snythesizer|counter\(23) ) + ( GND ) + ( \snythesizer|Add0~30\ ))
-- \snythesizer|Add0~34\ = CARRY(( \snythesizer|counter\(23) ) + ( GND ) + ( \snythesizer|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \snythesizer|ALT_INV_counter\(23),
	cin => \snythesizer|Add0~30\,
	sumout => \snythesizer|Add0~33_sumout\,
	cout => \snythesizer|Add0~34\);

-- Location: FF_X85_Y23_N47
\snythesizer|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \snythesizer|Add0~33_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(23));

-- Location: LABCELL_X85_Y23_N12
\snythesizer|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~37_sumout\ = SUM(( \snythesizer|counter\(24) ) + ( GND ) + ( \snythesizer|Add0~34\ ))
-- \snythesizer|Add0~38\ = CARRY(( \snythesizer|counter\(24) ) + ( GND ) + ( \snythesizer|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \snythesizer|ALT_INV_counter\(24),
	cin => \snythesizer|Add0~34\,
	sumout => \snythesizer|Add0~37_sumout\,
	cout => \snythesizer|Add0~38\);

-- Location: FF_X85_Y23_N59
\snythesizer|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \snythesizer|Add0~37_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(24));

-- Location: LABCELL_X85_Y23_N15
\snythesizer|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~69_sumout\ = SUM(( \snythesizer|counter\(25) ) + ( GND ) + ( \snythesizer|Add0~38\ ))
-- \snythesizer|Add0~70\ = CARRY(( \snythesizer|counter\(25) ) + ( GND ) + ( \snythesizer|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \snythesizer|ALT_INV_counter\(25),
	cin => \snythesizer|Add0~38\,
	sumout => \snythesizer|Add0~69_sumout\,
	cout => \snythesizer|Add0~70\);

-- Location: FF_X85_Y23_N40
\snythesizer|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \snythesizer|Add0~69_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(25));

-- Location: LABCELL_X85_Y23_N18
\snythesizer|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~73_sumout\ = SUM(( \snythesizer|counter\(26) ) + ( GND ) + ( \snythesizer|Add0~70\ ))
-- \snythesizer|Add0~74\ = CARRY(( \snythesizer|counter\(26) ) + ( GND ) + ( \snythesizer|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \snythesizer|ALT_INV_counter\(26),
	cin => \snythesizer|Add0~70\,
	sumout => \snythesizer|Add0~73_sumout\,
	cout => \snythesizer|Add0~74\);

-- Location: FF_X85_Y23_N53
\snythesizer|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \snythesizer|Add0~73_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(26));

-- Location: LABCELL_X85_Y23_N21
\snythesizer|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~77_sumout\ = SUM(( \snythesizer|counter\(27) ) + ( GND ) + ( \snythesizer|Add0~74\ ))
-- \snythesizer|Add0~78\ = CARRY(( \snythesizer|counter\(27) ) + ( GND ) + ( \snythesizer|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \snythesizer|ALT_INV_counter\(27),
	cin => \snythesizer|Add0~74\,
	sumout => \snythesizer|Add0~77_sumout\,
	cout => \snythesizer|Add0~78\);

-- Location: FF_X85_Y23_N43
\snythesizer|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \snythesizer|Add0~77_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(27));

-- Location: LABCELL_X85_Y23_N24
\snythesizer|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~5_sumout\ = SUM(( \snythesizer|counter\(28) ) + ( GND ) + ( \snythesizer|Add0~78\ ))
-- \snythesizer|Add0~6\ = CARRY(( \snythesizer|counter\(28) ) + ( GND ) + ( \snythesizer|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \snythesizer|ALT_INV_counter\(28),
	cin => \snythesizer|Add0~78\,
	sumout => \snythesizer|Add0~5_sumout\,
	cout => \snythesizer|Add0~6\);

-- Location: FF_X85_Y23_N22
\snythesizer|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \snythesizer|Add0~5_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(28));

-- Location: LABCELL_X85_Y23_N27
\snythesizer|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~9_sumout\ = SUM(( \snythesizer|counter\(29) ) + ( GND ) + ( \snythesizer|Add0~6\ ))
-- \snythesizer|Add0~10\ = CARRY(( \snythesizer|counter\(29) ) + ( GND ) + ( \snythesizer|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \snythesizer|ALT_INV_counter\(29),
	cin => \snythesizer|Add0~6\,
	sumout => \snythesizer|Add0~9_sumout\,
	cout => \snythesizer|Add0~10\);

-- Location: FF_X85_Y23_N28
\snythesizer|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \snythesizer|Add0~13_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(30));

-- Location: LABCELL_X85_Y23_N30
\snythesizer|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~13_sumout\ = SUM(( \snythesizer|counter\(30) ) + ( GND ) + ( \snythesizer|Add0~10\ ))
-- \snythesizer|Add0~14\ = CARRY(( \snythesizer|counter\(30) ) + ( GND ) + ( \snythesizer|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \snythesizer|ALT_INV_counter\(30),
	cin => \snythesizer|Add0~10\,
	sumout => \snythesizer|Add0~13_sumout\,
	cout => \snythesizer|Add0~14\);

-- Location: FF_X85_Y23_N34
\snythesizer|counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~17_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(31));

-- Location: LABCELL_X85_Y23_N33
\snythesizer|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~17_sumout\ = SUM(( \snythesizer|counter\(31) ) + ( GND ) + ( \snythesizer|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_counter\(31),
	cin => \snythesizer|Add0~14\,
	sumout => \snythesizer|Add0~17_sumout\);

-- Location: MLABCELL_X84_Y24_N0
\snythesizer|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|LessThan0~0_combout\ = ( !\snythesizer|Add0~57_sumout\ & ( !\snythesizer|Add0~53_sumout\ & ( (!\snythesizer|Add0~41_sumout\ & (!\snythesizer|Add0~45_sumout\ & !\snythesizer|Add0~49_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_Add0~41_sumout\,
	datac => \snythesizer|ALT_INV_Add0~45_sumout\,
	datad => \snythesizer|ALT_INV_Add0~49_sumout\,
	datae => \snythesizer|ALT_INV_Add0~57_sumout\,
	dataf => \snythesizer|ALT_INV_Add0~53_sumout\,
	combout => \snythesizer|LessThan0~0_combout\);

-- Location: LABCELL_X85_Y23_N57
\snythesizer|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|LessThan0~1_combout\ = ( !\snythesizer|Add0~37_sumout\ & ( \snythesizer|LessThan0~0_combout\ & ( (!\snythesizer|Add0~25_sumout\ & (!\snythesizer|Add0~29_sumout\ & (!\snythesizer|Add0~33_sumout\ & !\snythesizer|Add0~21_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_Add0~25_sumout\,
	datab => \snythesizer|ALT_INV_Add0~29_sumout\,
	datac => \snythesizer|ALT_INV_Add0~33_sumout\,
	datad => \snythesizer|ALT_INV_Add0~21_sumout\,
	datae => \snythesizer|ALT_INV_Add0~37_sumout\,
	dataf => \snythesizer|ALT_INV_LessThan0~0_combout\,
	combout => \snythesizer|LessThan0~1_combout\);

-- Location: MLABCELL_X84_Y24_N30
\snythesizer|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|LessThan0~4_combout\ = ( !\snythesizer|Add0~85_sumout\ & ( !\snythesizer|Add0~81_sumout\ & ( (!\snythesizer|Add0~105_sumout\ & (!\snythesizer|Add0~101_sumout\ & (!\snythesizer|Add0~113_sumout\ & !\snythesizer|Add0~109_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_Add0~105_sumout\,
	datab => \snythesizer|ALT_INV_Add0~101_sumout\,
	datac => \snythesizer|ALT_INV_Add0~113_sumout\,
	datad => \snythesizer|ALT_INV_Add0~109_sumout\,
	datae => \snythesizer|ALT_INV_Add0~85_sumout\,
	dataf => \snythesizer|ALT_INV_Add0~81_sumout\,
	combout => \snythesizer|LessThan0~4_combout\);

-- Location: LABCELL_X85_Y23_N42
\snythesizer|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|LessThan0~5_combout\ = ( !\snythesizer|Add0~97_sumout\ & ( !\snythesizer|Add0~61_sumout\ & ( (!\snythesizer|Add0~93_sumout\ & !\snythesizer|Add0~89_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \snythesizer|ALT_INV_Add0~93_sumout\,
	datad => \snythesizer|ALT_INV_Add0~89_sumout\,
	datae => \snythesizer|ALT_INV_Add0~97_sumout\,
	dataf => \snythesizer|ALT_INV_Add0~61_sumout\,
	combout => \snythesizer|LessThan0~5_combout\);

-- Location: LABCELL_X85_Y23_N39
\snythesizer|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|LessThan0~2_combout\ = ( !\snythesizer|Add0~77_sumout\ & ( \snythesizer|LessThan0~5_combout\ & ( (!\snythesizer|Add0~65_sumout\ & (\snythesizer|LessThan0~4_combout\ & (!\snythesizer|Add0~69_sumout\ & !\snythesizer|Add0~73_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_Add0~65_sumout\,
	datab => \snythesizer|ALT_INV_LessThan0~4_combout\,
	datac => \snythesizer|ALT_INV_Add0~69_sumout\,
	datad => \snythesizer|ALT_INV_Add0~73_sumout\,
	datae => \snythesizer|ALT_INV_Add0~77_sumout\,
	dataf => \snythesizer|ALT_INV_LessThan0~5_combout\,
	combout => \snythesizer|LessThan0~2_combout\);

-- Location: LABCELL_X85_Y23_N51
\snythesizer|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|LessThan0~3_combout\ = ( \snythesizer|LessThan0~1_combout\ & ( \snythesizer|LessThan0~2_combout\ & ( (!\snythesizer|Add0~17_sumout\ & (((\snythesizer|Add0~5_sumout\) # (\snythesizer|Add0~13_sumout\)) # (\snythesizer|Add0~9_sumout\))) ) ) ) # 
-- ( !\snythesizer|LessThan0~1_combout\ & ( \snythesizer|LessThan0~2_combout\ & ( !\snythesizer|Add0~17_sumout\ ) ) ) # ( \snythesizer|LessThan0~1_combout\ & ( !\snythesizer|LessThan0~2_combout\ & ( !\snythesizer|Add0~17_sumout\ ) ) ) # ( 
-- !\snythesizer|LessThan0~1_combout\ & ( !\snythesizer|LessThan0~2_combout\ & ( !\snythesizer|Add0~17_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000000111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_Add0~9_sumout\,
	datab => \snythesizer|ALT_INV_Add0~13_sumout\,
	datac => \snythesizer|ALT_INV_Add0~5_sumout\,
	datad => \snythesizer|ALT_INV_Add0~17_sumout\,
	datae => \snythesizer|ALT_INV_LessThan0~1_combout\,
	dataf => \snythesizer|ALT_INV_LessThan0~2_combout\,
	combout => \snythesizer|LessThan0~3_combout\);

-- Location: FF_X85_Y24_N2
\snythesizer|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~1_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(0));

-- Location: FF_X85_Y24_N5
\snythesizer|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~117_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(1));

-- Location: FF_X85_Y24_N8
\snythesizer|counter[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~121_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter[2]~DUPLICATE_q\);

-- Location: FF_X85_Y24_N1
\snythesizer|counter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~1_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter[0]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y24_N9
\snythesizer|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Mux11~0_combout\ = ( \snythesizer|counter\(3) & ( (!\snythesizer|counter\(1) & ((!\snythesizer|counter[2]~DUPLICATE_q\) # (\snythesizer|counter[0]~DUPLICATE_q\))) # (\snythesizer|counter\(1) & (\snythesizer|counter[2]~DUPLICATE_q\)) ) ) # ( 
-- !\snythesizer|counter\(3) & ( (!\snythesizer|counter\(1) $ (\snythesizer|counter[2]~DUPLICATE_q\)) # (\snythesizer|counter[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001111110011111100111111001111110011011100110111001101110011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_counter\(1),
	datab => \snythesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	datac => \snythesizer|ALT_INV_counter[0]~DUPLICATE_q\,
	dataf => \snythesizer|ALT_INV_counter\(3),
	combout => \snythesizer|Mux11~0_combout\);

-- Location: FF_X84_Y24_N10
\snythesizer|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \snythesizer|Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output\(0));

-- Location: MLABCELL_X84_Y24_N12
\snythesizer|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Mux10~0_combout\ = ( \snythesizer|counter[0]~DUPLICATE_q\ & ( (\snythesizer|counter\(1) & ((!\snythesizer|counter\(3)) # (\snythesizer|counter[2]~DUPLICATE_q\))) ) ) # ( !\snythesizer|counter[0]~DUPLICATE_q\ & ( (!\snythesizer|counter\(1) $ 
-- (\snythesizer|counter[2]~DUPLICATE_q\)) # (\snythesizer|counter\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001111110011111100111111001111101010001010100010101000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_counter\(1),
	datab => \snythesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	datac => \snythesizer|ALT_INV_counter\(3),
	dataf => \snythesizer|ALT_INV_counter[0]~DUPLICATE_q\,
	combout => \snythesizer|Mux10~0_combout\);

-- Location: FF_X84_Y24_N13
\snythesizer|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \snythesizer|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output\(1));

-- Location: MLABCELL_X84_Y24_N15
\snythesizer|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Mux9~0_combout\ = ( \snythesizer|counter\(3) & ( (!\snythesizer|counter\(1) & ((\snythesizer|counter[0]~DUPLICATE_q\) # (\snythesizer|counter[2]~DUPLICATE_q\))) # (\snythesizer|counter\(1) & (!\snythesizer|counter[2]~DUPLICATE_q\ $ 
-- (\snythesizer|counter[0]~DUPLICATE_q\))) ) ) # ( !\snythesizer|counter\(3) & ( (\snythesizer|counter\(1) & \snythesizer|counter[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101101011011010110110101101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_counter\(1),
	datab => \snythesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	datac => \snythesizer|ALT_INV_counter[0]~DUPLICATE_q\,
	dataf => \snythesizer|ALT_INV_counter\(3),
	combout => \snythesizer|Mux9~0_combout\);

-- Location: FF_X84_Y24_N17
\snythesizer|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \snythesizer|Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output\(2));

-- Location: MLABCELL_X84_Y24_N6
\snythesizer|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Mux8~0_combout\ = ( \snythesizer|counter[0]~DUPLICATE_q\ & ( (!\snythesizer|counter\(1) & ((\snythesizer|counter\(3)))) # (\snythesizer|counter\(1) & ((!\snythesizer|counter\(3)) # (\snythesizer|counter[2]~DUPLICATE_q\))) ) ) # ( 
-- !\snythesizer|counter[0]~DUPLICATE_q\ & ( !\snythesizer|counter[2]~DUPLICATE_q\ $ (!\snythesizer|counter\(1) $ (!\snythesizer|counter\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100111100110000110011110000001111111100110000111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \snythesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	datac => \snythesizer|ALT_INV_counter\(1),
	datad => \snythesizer|ALT_INV_counter\(3),
	dataf => \snythesizer|ALT_INV_counter[0]~DUPLICATE_q\,
	combout => \snythesizer|Mux8~0_combout\);

-- Location: FF_X84_Y24_N34
\snythesizer|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \snythesizer|Mux8~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output\(3));

-- Location: MLABCELL_X84_Y24_N18
\snythesizer|output[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|output[4]~feeder_combout\ = ( \snythesizer|Mux8~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \snythesizer|ALT_INV_Mux8~0_combout\,
	combout => \snythesizer|output[4]~feeder_combout\);

-- Location: FF_X84_Y24_N19
\snythesizer|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \snythesizer|output[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output\(4));

-- Location: FF_X84_Y24_N44
\snythesizer|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \snythesizer|Mux8~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output\(5));

-- Location: MLABCELL_X84_Y24_N54
\snythesizer|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Mux2~0_combout\ = ( \snythesizer|counter[0]~DUPLICATE_q\ & ( (!\snythesizer|counter\(1) & ((\snythesizer|counter\(3)))) # (\snythesizer|counter\(1) & ((!\snythesizer|counter\(3)) # (\snythesizer|counter[2]~DUPLICATE_q\))) ) ) # ( 
-- !\snythesizer|counter[0]~DUPLICATE_q\ & ( !\snythesizer|counter\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000001111111100110000111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \snythesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	datac => \snythesizer|ALT_INV_counter\(1),
	datad => \snythesizer|ALT_INV_counter\(3),
	dataf => \snythesizer|ALT_INV_counter[0]~DUPLICATE_q\,
	combout => \snythesizer|Mux2~0_combout\);

-- Location: FF_X84_Y24_N4
\snythesizer|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \snythesizer|Mux2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output\(6));

-- Location: MLABCELL_X84_Y24_N57
\snythesizer|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Mux7~0_combout\ = ( \snythesizer|counter\(3) & ( (!\snythesizer|counter\(1) & (\snythesizer|counter[2]~DUPLICATE_q\ & !\snythesizer|counter[0]~DUPLICATE_q\)) # (\snythesizer|counter\(1) & (!\snythesizer|counter[2]~DUPLICATE_q\ $ 
-- (\snythesizer|counter[0]~DUPLICATE_q\))) ) ) # ( !\snythesizer|counter\(3) & ( (!\snythesizer|counter\(1) $ (\snythesizer|counter[2]~DUPLICATE_q\)) # (\snythesizer|counter[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001111110011111100111111001111101100001011000010110000101100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_counter\(1),
	datab => \snythesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	datac => \snythesizer|ALT_INV_counter[0]~DUPLICATE_q\,
	dataf => \snythesizer|ALT_INV_counter\(3),
	combout => \snythesizer|Mux7~0_combout\);

-- Location: FF_X84_Y24_N59
\snythesizer|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \snythesizer|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output\(7));

-- Location: MLABCELL_X84_Y24_N48
\snythesizer|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Mux6~0_combout\ = ( \snythesizer|counter[0]~DUPLICATE_q\ & ( (!\snythesizer|counter\(1) & ((\snythesizer|counter\(3)))) # (\snythesizer|counter\(1) & ((!\snythesizer|counter\(3)) # (\snythesizer|counter[2]~DUPLICATE_q\))) ) ) # ( 
-- !\snythesizer|counter[0]~DUPLICATE_q\ & ( \snythesizer|counter\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101011011010110110101101101011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_counter\(1),
	datab => \snythesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	datac => \snythesizer|ALT_INV_counter\(3),
	dataf => \snythesizer|ALT_INV_counter[0]~DUPLICATE_q\,
	combout => \snythesizer|Mux6~0_combout\);

-- Location: FF_X84_Y24_N49
\snythesizer|output[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \snythesizer|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output\(8));

-- Location: MLABCELL_X84_Y24_N45
\snythesizer|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Mux1~0_combout\ = ( \snythesizer|counter\(1) & ( (!\snythesizer|counter[2]~DUPLICATE_q\ & ((!\snythesizer|counter\(3)))) # (\snythesizer|counter[2]~DUPLICATE_q\ & ((\snythesizer|counter\(3)) # (\snythesizer|counter[0]~DUPLICATE_q\))) ) ) # ( 
-- !\snythesizer|counter\(1) & ( !\snythesizer|counter\(3) $ (((!\snythesizer|counter[2]~DUPLICATE_q\ & !\snythesizer|counter[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111000000110011110011001100111111110000001100111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \snythesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	datac => \snythesizer|ALT_INV_counter[0]~DUPLICATE_q\,
	datad => \snythesizer|ALT_INV_counter\(3),
	datae => \snythesizer|ALT_INV_counter\(1),
	combout => \snythesizer|Mux1~0_combout\);

-- Location: FF_X84_Y24_N41
\snythesizer|output[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \snythesizer|Mux1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output\(9));

-- Location: MLABCELL_X84_Y24_N51
\snythesizer|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Mux5~0_combout\ = ( \snythesizer|counter\(3) & ( (!\snythesizer|counter\(1) & ((!\snythesizer|counter[2]~DUPLICATE_q\) # (\snythesizer|counter[0]~DUPLICATE_q\))) # (\snythesizer|counter\(1) & (\snythesizer|counter[2]~DUPLICATE_q\)) ) ) # ( 
-- !\snythesizer|counter\(3) & ( !\snythesizer|counter\(1) $ (((!\snythesizer|counter[2]~DUPLICATE_q\) # (\snythesizer|counter[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010101100101011001010110010110011011100110111001101110011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_counter\(1),
	datab => \snythesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	datac => \snythesizer|ALT_INV_counter[0]~DUPLICATE_q\,
	dataf => \snythesizer|ALT_INV_counter\(3),
	combout => \snythesizer|Mux5~0_combout\);

-- Location: FF_X84_Y24_N52
\snythesizer|output[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \snythesizer|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output\(10));

-- Location: MLABCELL_X84_Y24_N24
\snythesizer|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Mux4~0_combout\ = ( \snythesizer|counter[0]~DUPLICATE_q\ & ( (!\snythesizer|counter\(3)) # ((\snythesizer|counter\(1) & \snythesizer|counter[2]~DUPLICATE_q\)) ) ) # ( !\snythesizer|counter[0]~DUPLICATE_q\ & ( \snythesizer|counter\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110001111100011111000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_counter\(1),
	datab => \snythesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	datac => \snythesizer|ALT_INV_counter\(3),
	dataf => \snythesizer|ALT_INV_counter[0]~DUPLICATE_q\,
	combout => \snythesizer|Mux4~0_combout\);

-- Location: FF_X84_Y24_N25
\snythesizer|output[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \snythesizer|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output\(11));

-- Location: MLABCELL_X84_Y24_N27
\snythesizer|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Mux3~0_combout\ = ( \snythesizer|counter\(3) & ( (\snythesizer|counter\(1) & (\snythesizer|counter[2]~DUPLICATE_q\ & \snythesizer|counter[0]~DUPLICATE_q\)) ) ) # ( !\snythesizer|counter\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_counter\(1),
	datab => \snythesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	datac => \snythesizer|ALT_INV_counter[0]~DUPLICATE_q\,
	dataf => \snythesizer|ALT_INV_counter\(3),
	combout => \snythesizer|Mux3~0_combout\);

-- Location: FF_X84_Y24_N28
\snythesizer|output[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \snythesizer|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output\(12));

-- Location: FF_X84_Y24_N55
\snythesizer|output[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \snythesizer|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output\(13));

-- Location: FF_X84_Y24_N46
\snythesizer|output[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \snythesizer|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output\(14));

-- Location: MLABCELL_X84_Y24_N36
\snythesizer|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Mux0~0_combout\ = ( !\snythesizer|counter\(3) & ( \snythesizer|counter[0]~DUPLICATE_q\ & ( (!\snythesizer|counter\(1)) # (!\snythesizer|counter[2]~DUPLICATE_q\) ) ) ) # ( !\snythesizer|counter\(3) & ( !\snythesizer|counter[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011101110111011100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_counter\(1),
	datab => \snythesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	datae => \snythesizer|ALT_INV_counter\(3),
	dataf => \snythesizer|ALT_INV_counter[0]~DUPLICATE_q\,
	combout => \snythesizer|Mux0~0_combout\);

-- Location: FF_X84_Y24_N37
\snythesizer|output[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \snythesizer|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output\(15));

-- Location: IOIBUF_X88_Y81_N19
\writeconfig~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writeconfig,
	o => \writeconfig~input_o\);

-- Location: IOIBUF_X26_Y0_N41
\serialTimer~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_serialTimer,
	o => \serialTimer~input_o\);

-- Location: IOIBUF_X8_Y0_N18
\sclk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sclk,
	o => \sclk~input_o\);

-- Location: IOIBUF_X32_Y81_N35
\sdenb~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sdenb,
	o => \sdenb~input_o\);

-- Location: IOIBUF_X28_Y81_N1
\configok~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_configok,
	o => \configok~input_o\);

-- Location: MLABCELL_X72_Y2_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


