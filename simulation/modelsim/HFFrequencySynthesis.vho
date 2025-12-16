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

-- DATE "12/16/2025 21:07:55"

-- 
-- Device: Altera 5CGXFC5C6F27C7 Package FBGA672
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
	output_p : BUFFER std_logic_vector(15 DOWNTO 0);
	sclk : BUFFER std_logic;
	sdenb : BUFFER std_logic;
	sdio : BUFFER std_logic;
	configok : BUFFER std_logic;
	writeconfig : IN std_logic;
	serialTimer : IN std_logic;
	ClkOUT : BUFFER std_logic;
	writeConfigReceived : BUFFER std_logic;
	stateRegOut : BUFFER std_logic_vector(2 DOWNTO 0);
	nextStateRegOut : BUFFER std_logic_vector(2 DOWNTO 0);
	clockBuffOut : BUFFER std_logic_vector(2 DOWNTO 0);
	resetn : BUFFER std_logic;
	discardBuffer : BUFFER std_logic
	);
END MainFSM;

-- Design Ports Information
-- output_p[0]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_p[1]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_p[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_p[3]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_p[4]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_p[5]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_p[6]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_p[7]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_p[8]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_p[9]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_p[10]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_p[11]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_p[12]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_p[13]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_p[14]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_p[15]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdio	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ClkOUT	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeConfigReceived	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stateRegOut[0]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stateRegOut[1]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stateRegOut[2]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextStateRegOut[0]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextStateRegOut[1]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextStateRegOut[2]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clockBuffOut[0]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clockBuffOut[1]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clockBuffOut[2]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sclk	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdenb	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- configok	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetn	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- discardBuffer	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeconfig	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- serialTimer	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_output_p : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_sclk : std_logic;
SIGNAL ww_sdenb : std_logic;
SIGNAL ww_sdio : std_logic;
SIGNAL ww_configok : std_logic;
SIGNAL ww_writeconfig : std_logic;
SIGNAL ww_serialTimer : std_logic;
SIGNAL ww_ClkOUT : std_logic;
SIGNAL ww_writeConfigReceived : std_logic;
SIGNAL ww_stateRegOut : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_nextStateRegOut : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_clockBuffOut : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_resetn : std_logic;
SIGNAL ww_discardBuffer : std_logic;
SIGNAL \clockBuffOut[0]~input_o\ : std_logic;
SIGNAL \clockBuffOut[1]~input_o\ : std_logic;
SIGNAL \clockBuffOut[2]~input_o\ : std_logic;
SIGNAL \sclk~input_o\ : std_logic;
SIGNAL \sdenb~input_o\ : std_logic;
SIGNAL \configok~input_o\ : std_logic;
SIGNAL \discardBuffer~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \serialTimer~input_o\ : std_logic;
SIGNAL \serialTimer~inputCLKENA0_outclk\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \configurator|clockDividerBuffer~2_combout\ : std_logic;
SIGNAL \configurator|clockDividerBuffer~1_combout\ : std_logic;
SIGNAL \configurator|clockDividerBuffer~0_combout\ : std_logic;
SIGNAL \configurator|internalClock~0_combout\ : std_logic;
SIGNAL \configurator|internalClock~q\ : std_logic;
SIGNAL \writeconfig~input_o\ : std_logic;
SIGNAL \configurator|LessThan1~0_combout\ : std_logic;
SIGNAL \configurator|Add2~1_sumout\ : std_logic;
SIGNAL \configurator|dataIndex~0_combout\ : std_logic;
SIGNAL \configurator|discarding~0_combout\ : std_logic;
SIGNAL \configurator|discarding~q\ : std_logic;
SIGNAL \configurator|needWait~0_combout\ : std_logic;
SIGNAL \configurator|needWait~1_combout\ : std_logic;
SIGNAL \configurator|Add2~2\ : std_logic;
SIGNAL \configurator|Add2~5_sumout\ : std_logic;
SIGNAL \configurator|dataIndex~1_combout\ : std_logic;
SIGNAL \configurator|Add2~6\ : std_logic;
SIGNAL \configurator|Add2~13_sumout\ : std_logic;
SIGNAL \configurator|dataIndex~3_combout\ : std_logic;
SIGNAL \configurator|Add2~14\ : std_logic;
SIGNAL \configurator|Add2~9_sumout\ : std_logic;
SIGNAL \configurator|dataIndex~2_combout\ : std_logic;
SIGNAL \configurator|Add2~10\ : std_logic;
SIGNAL \configurator|Add2~18\ : std_logic;
SIGNAL \configurator|Add2~29_sumout\ : std_logic;
SIGNAL \configurator|dataIndex~7_combout\ : std_logic;
SIGNAL \configurator|Add2~30\ : std_logic;
SIGNAL \configurator|Add2~25_sumout\ : std_logic;
SIGNAL \configurator|dataIndex~6_combout\ : std_logic;
SIGNAL \configurator|Add2~26\ : std_logic;
SIGNAL \configurator|Add2~21_sumout\ : std_logic;
SIGNAL \configurator|dataIndex~5_combout\ : std_logic;
SIGNAL \configurator|LessThan1~1_combout\ : std_logic;
SIGNAL \configurator|Add2~17_sumout\ : std_logic;
SIGNAL \configurator|dataIndex~4_combout\ : std_logic;
SIGNAL \configurator|needWait~2_combout\ : std_logic;
SIGNAL \configurator|needWait~q\ : std_logic;
SIGNAL \configurator|Add3~9_sumout\ : std_logic;
SIGNAL \configurator|Add3~22\ : std_logic;
SIGNAL \configurator|Add3~17_sumout\ : std_logic;
SIGNAL \configurator|counter[6]~1_combout\ : std_logic;
SIGNAL \configurator|Add3~18\ : std_logic;
SIGNAL \configurator|Add3~25_sumout\ : std_logic;
SIGNAL \configurator|counter[6]~0_combout\ : std_logic;
SIGNAL \configurator|Add3~10\ : std_logic;
SIGNAL \configurator|Add3~1_sumout\ : std_logic;
SIGNAL \configurator|Add3~2\ : std_logic;
SIGNAL \configurator|Add3~5_sumout\ : std_logic;
SIGNAL \configurator|Add3~6\ : std_logic;
SIGNAL \configurator|Add3~13_sumout\ : std_logic;
SIGNAL \configurator|Add3~14\ : std_logic;
SIGNAL \configurator|Add3~21_sumout\ : std_logic;
SIGNAL \configurator|counter[6]~2_combout\ : std_logic;
SIGNAL \configurator|configOK~0_combout\ : std_logic;
SIGNAL \configurator|configOK~reg0_q\ : std_logic;
SIGNAL \configurator|waitingBuffer~3_combout\ : std_logic;
SIGNAL \configurator|waiting~0_combout\ : std_logic;
SIGNAL \configurator|waiting~q\ : std_logic;
SIGNAL \configurator|waitingBuffer[0]~1_combout\ : std_logic;
SIGNAL \configurator|waitingBuffer~2_combout\ : std_logic;
SIGNAL \configurator|waitingBuffer~0_combout\ : std_logic;
SIGNAL \configurator|waitingDone~0_combout\ : std_logic;
SIGNAL \configurator|waitingDone~q\ : std_logic;
SIGNAL \configurator|Selector1~0_combout\ : std_logic;
SIGNAL \configurator|nextState.INTER~q\ : std_logic;
SIGNAL \configurator|state~9_combout\ : std_logic;
SIGNAL \configurator|state.INTER~q\ : std_logic;
SIGNAL \configurator|discarded~q\ : std_logic;
SIGNAL \configurator|discardBuffer~0_combout\ : std_logic;
SIGNAL \configurator|discardBuffer~reg0feeder_combout\ : std_logic;
SIGNAL \configurator|discardBuffer~reg0_q\ : std_logic;
SIGNAL \configurator|discarded~0_combout\ : std_logic;
SIGNAL \configurator|discarded~feeder_combout\ : std_logic;
SIGNAL \configurator|discarded~DUPLICATE_q\ : std_logic;
SIGNAL \configurator|nextState~7_combout\ : std_logic;
SIGNAL \configurator|nextState.IDLE~q\ : std_logic;
SIGNAL \configurator|state~13_combout\ : std_logic;
SIGNAL \configurator|state.IDLE~q\ : std_logic;
SIGNAL \configurator|Selector2~0_combout\ : std_logic;
SIGNAL \configurator|nextState.DISCARD~q\ : std_logic;
SIGNAL \configurator|state~10_combout\ : std_logic;
SIGNAL \configurator|state.DISCARD~q\ : std_logic;
SIGNAL \configurator|Selector0~0_combout\ : std_logic;
SIGNAL \configurator|nextState.SEND~q\ : std_logic;
SIGNAL \configurator|state~11_combout\ : std_logic;
SIGNAL \configurator|state.SEND~q\ : std_logic;
SIGNAL \configurator|sendData~0_combout\ : std_logic;
SIGNAL \configurator|outputClock~q\ : std_logic;
SIGNAL \configurator|SCLK~0_combout\ : std_logic;
SIGNAL \configurator|SDENB~0_combout\ : std_logic;
SIGNAL \configurator|SDENB~reg0_q\ : std_logic;
SIGNAL \snythesizer|Add0~1_sumout\ : std_logic;
SIGNAL \snythesizer|Add0~2\ : std_logic;
SIGNAL \snythesizer|Add0~117_sumout\ : std_logic;
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
SIGNAL \snythesizer|counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \snythesizer|counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \snythesizer|counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \snythesizer|counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \snythesizer|Mux11~0_combout\ : std_logic;
SIGNAL \snythesizer|Mux10~0_combout\ : std_logic;
SIGNAL \snythesizer|Mux9~0_combout\ : std_logic;
SIGNAL \snythesizer|Mux8~0_combout\ : std_logic;
SIGNAL \snythesizer|Mux2~0_combout\ : std_logic;
SIGNAL \snythesizer|Mux7~0_combout\ : std_logic;
SIGNAL \snythesizer|Mux6~0_combout\ : std_logic;
SIGNAL \snythesizer|Mux1~0_combout\ : std_logic;
SIGNAL \snythesizer|Mux5~0_combout\ : std_logic;
SIGNAL \snythesizer|Mux4~0_combout\ : std_logic;
SIGNAL \snythesizer|Mux3~0_combout\ : std_logic;
SIGNAL \snythesizer|output_p[13]~feeder_combout\ : std_logic;
SIGNAL \snythesizer|Mux0~0_combout\ : std_logic;
SIGNAL \configurator|SDIO~4_combout\ : std_logic;
SIGNAL \configurator|LessThan0~0_combout\ : std_logic;
SIGNAL \configurator|SDIO~3_combout\ : std_logic;
SIGNAL \configurator|SDIO~5_combout\ : std_logic;
SIGNAL \configurator|SDIO~1_combout\ : std_logic;
SIGNAL \configurator|SDIO~0_combout\ : std_logic;
SIGNAL \configurator|Mux1~13_combout\ : std_logic;
SIGNAL \configurator|Mux1~10_combout\ : std_logic;
SIGNAL \configurator|Mux1~11_combout\ : std_logic;
SIGNAL \configurator|Mux1~0_combout\ : std_logic;
SIGNAL \configurator|Mux1~2_combout\ : std_logic;
SIGNAL \configurator|Mux1~1_combout\ : std_logic;
SIGNAL \configurator|Mux1~3_combout\ : std_logic;
SIGNAL \configurator|Mux1~4_combout\ : std_logic;
SIGNAL \configurator|Mux1~5_combout\ : std_logic;
SIGNAL \configurator|Mux1~7_combout\ : std_logic;
SIGNAL \configurator|Mux1~6_combout\ : std_logic;
SIGNAL \configurator|Mux1~8_combout\ : std_logic;
SIGNAL \configurator|Mux1~9_combout\ : std_logic;
SIGNAL \configurator|Mux1~12_combout\ : std_logic;
SIGNAL \configurator|SDIO~2_combout\ : std_logic;
SIGNAL \configurator|SDIO~q\ : std_logic;
SIGNAL \configurator|CLKRECEIVED~0_combout\ : std_logic;
SIGNAL \configurator|writeConfigReceived~0_combout\ : std_logic;
SIGNAL \configurator|stateRegOut[0]~3_combout\ : std_logic;
SIGNAL \configurator|stateRegOut[1]~4_combout\ : std_logic;
SIGNAL \configurator|Selector3~0_combout\ : std_logic;
SIGNAL \configurator|nextState.DONE~q\ : std_logic;
SIGNAL \configurator|state~12_combout\ : std_logic;
SIGNAL \configurator|state.DONE~q\ : std_logic;
SIGNAL \configurator|stateRegOut[2]~5_combout\ : std_logic;
SIGNAL \configurator|nextStateRegOut[0]~3_combout\ : std_logic;
SIGNAL \configurator|nextStateRegOut[1]~4_combout\ : std_logic;
SIGNAL \configurator|nextStateRegOut[2]~5_combout\ : std_logic;
SIGNAL \configurator|clockDividerBuffer\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \snythesizer|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \configurator|dataIndex\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \snythesizer|output_p\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \configurator|counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \configurator|waitingBuffer\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \configurator|ALT_INV_configOK~reg0_q\ : std_logic;
SIGNAL \configurator|ALT_INV_needWait~q\ : std_logic;
SIGNAL \configurator|ALT_INV_waitingDone~q\ : std_logic;
SIGNAL \configurator|ALT_INV_clockDividerBuffer\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \configurator|ALT_INV_counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \configurator|ALT_INV_dataIndex\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \snythesizer|ALT_INV_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \configurator|ALT_INV_nextState.DONE~q\ : std_logic;
SIGNAL \configurator|ALT_INV_nextState.SEND~q\ : std_logic;
SIGNAL \configurator|ALT_INV_nextState.INTER~q\ : std_logic;
SIGNAL \configurator|ALT_INV_nextState.DISCARD~q\ : std_logic;
SIGNAL \configurator|ALT_INV_internalClock~q\ : std_logic;
SIGNAL \configurator|ALT_INV_discarded~DUPLICATE_q\ : std_logic;
SIGNAL \snythesizer|ALT_INV_counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \snythesizer|ALT_INV_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \snythesizer|ALT_INV_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \snythesizer|ALT_INV_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_writeconfig~input_o\ : std_logic;
SIGNAL \ALT_INV_resetn~input_o\ : std_logic;
SIGNAL \configurator|ALT_INV_SDIO~4_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_SDIO~3_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_Mux1~13_combout\ : std_logic;
SIGNAL \snythesizer|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \snythesizer|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_discardBuffer~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_counter[6]~2_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_nextState.IDLE~q\ : std_logic;
SIGNAL \configurator|ALT_INV_waitingBuffer\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \configurator|ALT_INV_discarded~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_discardBuffer~reg0_q\ : std_logic;
SIGNAL \configurator|ALT_INV_waiting~q\ : std_logic;
SIGNAL \snythesizer|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \snythesizer|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \snythesizer|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_state.IDLE~q\ : std_logic;
SIGNAL \configurator|ALT_INV_discarded~q\ : std_logic;
SIGNAL \configurator|ALT_INV_SDIO~1_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_SDIO~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_outputClock~q\ : std_logic;
SIGNAL \configurator|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_Mux1~12_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_Mux1~11_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_Mux1~10_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_Mux1~9_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_Mux1~8_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_Mux1~7_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_Mux1~6_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_Mux1~5_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_Mux1~4_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_Mux1~3_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_discarding~q\ : std_logic;
SIGNAL \snythesizer|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_nextStateRegOut[2]~5_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_nextStateRegOut[1]~4_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_nextStateRegOut[0]~3_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_stateRegOut[2]~5_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_state.DONE~q\ : std_logic;
SIGNAL \configurator|ALT_INV_stateRegOut[1]~4_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_state.SEND~q\ : std_logic;
SIGNAL \configurator|ALT_INV_stateRegOut[0]~3_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_state.DISCARD~q\ : std_logic;
SIGNAL \configurator|ALT_INV_state.INTER~q\ : std_logic;
SIGNAL \configurator|ALT_INV_SDIO~q\ : std_logic;
SIGNAL \configurator|ALT_INV_SDIO~5_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \configurator|ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \configurator|ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \configurator|ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \configurator|ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \configurator|ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \configurator|ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \configurator|ALT_INV_Add2~1_sumout\ : std_logic;

BEGIN

output_p <= ww_output_p;
sclk <= ww_sclk;
sdenb <= ww_sdenb;
sdio <= ww_sdio;
configok <= ww_configok;
ww_writeconfig <= writeconfig;
ww_serialTimer <= serialTimer;
ClkOUT <= ww_ClkOUT;
writeConfigReceived <= ww_writeConfigReceived;
stateRegOut <= ww_stateRegOut;
nextStateRegOut <= ww_nextStateRegOut;
clockBuffOut <= ww_clockBuffOut;
resetn <= ww_resetn;
discardBuffer <= ww_discardBuffer;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
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
\configurator|ALT_INV_configOK~reg0_q\ <= NOT \configurator|configOK~reg0_q\;
\configurator|ALT_INV_needWait~q\ <= NOT \configurator|needWait~q\;
\configurator|ALT_INV_waitingDone~q\ <= NOT \configurator|waitingDone~q\;
\configurator|ALT_INV_clockDividerBuffer\(1) <= NOT \configurator|clockDividerBuffer\(1);
\configurator|ALT_INV_counter\(6) <= NOT \configurator|counter\(6);
\configurator|ALT_INV_dataIndex\(5) <= NOT \configurator|dataIndex\(5);
\configurator|ALT_INV_dataIndex\(6) <= NOT \configurator|dataIndex\(6);
\configurator|ALT_INV_dataIndex\(7) <= NOT \configurator|dataIndex\(7);
\configurator|ALT_INV_dataIndex\(4) <= NOT \configurator|dataIndex\(4);
\configurator|ALT_INV_counter\(4) <= NOT \configurator|counter\(4);
\configurator|ALT_INV_counter\(5) <= NOT \configurator|counter\(5);
\configurator|ALT_INV_counter\(3) <= NOT \configurator|counter\(3);
\configurator|ALT_INV_counter\(0) <= NOT \configurator|counter\(0);
\configurator|ALT_INV_counter\(2) <= NOT \configurator|counter\(2);
\configurator|ALT_INV_dataIndex\(2) <= NOT \configurator|dataIndex\(2);
\configurator|ALT_INV_dataIndex\(3) <= NOT \configurator|dataIndex\(3);
\configurator|ALT_INV_dataIndex\(1) <= NOT \configurator|dataIndex\(1);
\configurator|ALT_INV_counter\(1) <= NOT \configurator|counter\(1);
\configurator|ALT_INV_dataIndex\(0) <= NOT \configurator|dataIndex\(0);
\snythesizer|ALT_INV_counter\(3) <= NOT \snythesizer|counter\(3);
\snythesizer|ALT_INV_counter\(2) <= NOT \snythesizer|counter\(2);
\snythesizer|ALT_INV_counter\(1) <= NOT \snythesizer|counter\(1);
\snythesizer|ALT_INV_counter\(0) <= NOT \snythesizer|counter\(0);
\configurator|ALT_INV_nextState.DONE~q\ <= NOT \configurator|nextState.DONE~q\;
\configurator|ALT_INV_nextState.SEND~q\ <= NOT \configurator|nextState.SEND~q\;
\configurator|ALT_INV_nextState.INTER~q\ <= NOT \configurator|nextState.INTER~q\;
\configurator|ALT_INV_nextState.DISCARD~q\ <= NOT \configurator|nextState.DISCARD~q\;
\configurator|ALT_INV_internalClock~q\ <= NOT \configurator|internalClock~q\;
\configurator|ALT_INV_discarded~DUPLICATE_q\ <= NOT \configurator|discarded~DUPLICATE_q\;
\snythesizer|ALT_INV_counter[3]~DUPLICATE_q\ <= NOT \snythesizer|counter[3]~DUPLICATE_q\;
\snythesizer|ALT_INV_counter[2]~DUPLICATE_q\ <= NOT \snythesizer|counter[2]~DUPLICATE_q\;
\snythesizer|ALT_INV_counter[1]~DUPLICATE_q\ <= NOT \snythesizer|counter[1]~DUPLICATE_q\;
\snythesizer|ALT_INV_counter[0]~DUPLICATE_q\ <= NOT \snythesizer|counter[0]~DUPLICATE_q\;
\ALT_INV_writeconfig~input_o\ <= NOT \writeconfig~input_o\;
\ALT_INV_resetn~input_o\ <= NOT \resetn~input_o\;
\configurator|ALT_INV_SDIO~4_combout\ <= NOT \configurator|SDIO~4_combout\;
\configurator|ALT_INV_SDIO~3_combout\ <= NOT \configurator|SDIO~3_combout\;
\configurator|ALT_INV_Mux1~13_combout\ <= NOT \configurator|Mux1~13_combout\;
\snythesizer|ALT_INV_LessThan0~5_combout\ <= NOT \snythesizer|LessThan0~5_combout\;
\snythesizer|ALT_INV_LessThan0~4_combout\ <= NOT \snythesizer|LessThan0~4_combout\;
\configurator|ALT_INV_discardBuffer~0_combout\ <= NOT \configurator|discardBuffer~0_combout\;
\configurator|ALT_INV_counter[6]~2_combout\ <= NOT \configurator|counter[6]~2_combout\;
\configurator|ALT_INV_nextState.IDLE~q\ <= NOT \configurator|nextState.IDLE~q\;
\configurator|ALT_INV_waitingBuffer\(0) <= NOT \configurator|waitingBuffer\(0);
\configurator|ALT_INV_waitingBuffer\(1) <= NOT \configurator|waitingBuffer\(1);
\configurator|ALT_INV_waitingBuffer\(2) <= NOT \configurator|waitingBuffer\(2);
\configurator|ALT_INV_discarded~0_combout\ <= NOT \configurator|discarded~0_combout\;
\configurator|ALT_INV_discardBuffer~reg0_q\ <= NOT \configurator|discardBuffer~reg0_q\;
\configurator|ALT_INV_waiting~q\ <= NOT \configurator|waiting~q\;
\snythesizer|ALT_INV_LessThan0~2_combout\ <= NOT \snythesizer|LessThan0~2_combout\;
\snythesizer|ALT_INV_LessThan0~1_combout\ <= NOT \snythesizer|LessThan0~1_combout\;
\snythesizer|ALT_INV_LessThan0~0_combout\ <= NOT \snythesizer|LessThan0~0_combout\;
\configurator|ALT_INV_state.IDLE~q\ <= NOT \configurator|state.IDLE~q\;
\configurator|ALT_INV_discarded~q\ <= NOT \configurator|discarded~q\;
\configurator|ALT_INV_clockDividerBuffer\(2) <= NOT \configurator|clockDividerBuffer\(2);
\configurator|ALT_INV_clockDividerBuffer\(0) <= NOT \configurator|clockDividerBuffer\(0);
\configurator|ALT_INV_SDIO~1_combout\ <= NOT \configurator|SDIO~1_combout\;
\configurator|ALT_INV_SDIO~0_combout\ <= NOT \configurator|SDIO~0_combout\;
\configurator|ALT_INV_LessThan0~0_combout\ <= NOT \configurator|LessThan0~0_combout\;
\configurator|ALT_INV_outputClock~q\ <= NOT \configurator|outputClock~q\;
\configurator|ALT_INV_LessThan1~1_combout\ <= NOT \configurator|LessThan1~1_combout\;
\configurator|ALT_INV_LessThan1~0_combout\ <= NOT \configurator|LessThan1~0_combout\;
\configurator|ALT_INV_Mux1~12_combout\ <= NOT \configurator|Mux1~12_combout\;
\configurator|ALT_INV_Mux1~11_combout\ <= NOT \configurator|Mux1~11_combout\;
\configurator|ALT_INV_Mux1~10_combout\ <= NOT \configurator|Mux1~10_combout\;
\configurator|ALT_INV_Mux1~9_combout\ <= NOT \configurator|Mux1~9_combout\;
\configurator|ALT_INV_Mux1~8_combout\ <= NOT \configurator|Mux1~8_combout\;
\configurator|ALT_INV_Mux1~7_combout\ <= NOT \configurator|Mux1~7_combout\;
\configurator|ALT_INV_Mux1~6_combout\ <= NOT \configurator|Mux1~6_combout\;
\configurator|ALT_INV_Mux1~5_combout\ <= NOT \configurator|Mux1~5_combout\;
\configurator|ALT_INV_Mux1~4_combout\ <= NOT \configurator|Mux1~4_combout\;
\configurator|ALT_INV_Mux1~3_combout\ <= NOT \configurator|Mux1~3_combout\;
\configurator|ALT_INV_Mux1~2_combout\ <= NOT \configurator|Mux1~2_combout\;
\configurator|ALT_INV_Mux1~1_combout\ <= NOT \configurator|Mux1~1_combout\;
\configurator|ALT_INV_Mux1~0_combout\ <= NOT \configurator|Mux1~0_combout\;
\configurator|ALT_INV_discarding~q\ <= NOT \configurator|discarding~q\;
\snythesizer|ALT_INV_Mux2~0_combout\ <= NOT \snythesizer|Mux2~0_combout\;
\configurator|ALT_INV_nextStateRegOut[2]~5_combout\ <= NOT \configurator|nextStateRegOut[2]~5_combout\;
\configurator|ALT_INV_nextStateRegOut[1]~4_combout\ <= NOT \configurator|nextStateRegOut[1]~4_combout\;
\configurator|ALT_INV_nextStateRegOut[0]~3_combout\ <= NOT \configurator|nextStateRegOut[0]~3_combout\;
\configurator|ALT_INV_stateRegOut[2]~5_combout\ <= NOT \configurator|stateRegOut[2]~5_combout\;
\configurator|ALT_INV_state.DONE~q\ <= NOT \configurator|state.DONE~q\;
\configurator|ALT_INV_stateRegOut[1]~4_combout\ <= NOT \configurator|stateRegOut[1]~4_combout\;
\configurator|ALT_INV_state.SEND~q\ <= NOT \configurator|state.SEND~q\;
\configurator|ALT_INV_stateRegOut[0]~3_combout\ <= NOT \configurator|stateRegOut[0]~3_combout\;
\configurator|ALT_INV_state.DISCARD~q\ <= NOT \configurator|state.DISCARD~q\;
\configurator|ALT_INV_state.INTER~q\ <= NOT \configurator|state.INTER~q\;
\configurator|ALT_INV_SDIO~q\ <= NOT \configurator|SDIO~q\;
\configurator|ALT_INV_SDIO~5_combout\ <= NOT \configurator|SDIO~5_combout\;
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
\configurator|ALT_INV_Add2~29_sumout\ <= NOT \configurator|Add2~29_sumout\;
\configurator|ALT_INV_Add2~25_sumout\ <= NOT \configurator|Add2~25_sumout\;
\configurator|ALT_INV_Add2~21_sumout\ <= NOT \configurator|Add2~21_sumout\;
\configurator|ALT_INV_Add2~17_sumout\ <= NOT \configurator|Add2~17_sumout\;
\configurator|ALT_INV_Add2~13_sumout\ <= NOT \configurator|Add2~13_sumout\;
\configurator|ALT_INV_Add2~9_sumout\ <= NOT \configurator|Add2~9_sumout\;
\configurator|ALT_INV_Add2~5_sumout\ <= NOT \configurator|Add2~5_sumout\;
\configurator|ALT_INV_Add2~1_sumout\ <= NOT \configurator|Add2~1_sumout\;

-- Location: IOOBUF_X40_Y61_N76
\output_p[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \snythesizer|output_p\(0),
	devoe => ww_devoe,
	o => ww_output_p(0));

-- Location: IOOBUF_X46_Y61_N36
\output_p[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \snythesizer|output_p\(1),
	devoe => ww_devoe,
	o => ww_output_p(1));

-- Location: IOOBUF_X44_Y61_N36
\output_p[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \snythesizer|output_p\(2),
	devoe => ww_devoe,
	o => ww_output_p(2));

-- Location: IOOBUF_X36_Y61_N36
\output_p[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \snythesizer|output_p\(3),
	devoe => ww_devoe,
	o => ww_output_p(3));

-- Location: IOOBUF_X42_Y61_N36
\output_p[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \snythesizer|output_p\(4),
	devoe => ww_devoe,
	o => ww_output_p(4));

-- Location: IOOBUF_X61_Y61_N36
\output_p[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \snythesizer|output_p\(5),
	devoe => ww_devoe,
	o => ww_output_p(5));

-- Location: IOOBUF_X50_Y61_N36
\output_p[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \snythesizer|output_p\(6),
	devoe => ww_devoe,
	o => ww_output_p(6));

-- Location: IOOBUF_X64_Y61_N36
\output_p[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \snythesizer|output_p\(7),
	devoe => ww_devoe,
	o => ww_output_p(7));

-- Location: IOOBUF_X34_Y61_N36
\output_p[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \snythesizer|output_p\(8),
	devoe => ww_devoe,
	o => ww_output_p(8));

-- Location: IOOBUF_X48_Y61_N76
\output_p[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \snythesizer|output_p\(9),
	devoe => ww_devoe,
	o => ww_output_p(9));

-- Location: IOOBUF_X38_Y61_N36
\output_p[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \snythesizer|output_p\(10),
	devoe => ww_devoe,
	o => ww_output_p(10));

-- Location: IOOBUF_X66_Y61_N36
\output_p[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \snythesizer|output_p\(11),
	devoe => ww_devoe,
	o => ww_output_p(11));

-- Location: IOOBUF_X51_Y61_N36
\output_p[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \snythesizer|output_p\(12),
	devoe => ww_devoe,
	o => ww_output_p(12));

-- Location: IOOBUF_X65_Y61_N36
\output_p[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \snythesizer|output_p\(13),
	devoe => ww_devoe,
	o => ww_output_p(13));

-- Location: IOOBUF_X53_Y61_N36
\output_p[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \snythesizer|output_p\(14),
	devoe => ww_devoe,
	o => ww_output_p(14));

-- Location: IOOBUF_X59_Y61_N36
\output_p[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \snythesizer|output_p\(15),
	devoe => ww_devoe,
	o => ww_output_p(15));

-- Location: IOOBUF_X68_Y37_N39
\sdio~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \configurator|SDIO~q\,
	devoe => ww_devoe,
	o => ww_sdio);

-- Location: IOOBUF_X12_Y61_N19
\ClkOUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \configurator|CLKRECEIVED~0_combout\,
	devoe => ww_devoe,
	o => ww_ClkOUT);

-- Location: IOOBUF_X10_Y61_N59
\writeConfigReceived~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \configurator|writeConfigReceived~0_combout\,
	devoe => ww_devoe,
	o => ww_writeConfigReceived);

-- Location: IOOBUF_X14_Y61_N53
\stateRegOut[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \configurator|ALT_INV_stateRegOut[0]~3_combout\,
	devoe => ww_devoe,
	o => ww_stateRegOut(0));

-- Location: IOOBUF_X15_Y61_N36
\stateRegOut[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \configurator|ALT_INV_stateRegOut[1]~4_combout\,
	devoe => ww_devoe,
	o => ww_stateRegOut(1));

-- Location: IOOBUF_X15_Y61_N53
\stateRegOut[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \configurator|ALT_INV_stateRegOut[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_stateRegOut(2));

-- Location: IOOBUF_X14_Y61_N19
\nextStateRegOut[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \configurator|ALT_INV_nextStateRegOut[0]~3_combout\,
	devoe => ww_devoe,
	o => ww_nextStateRegOut(0));

-- Location: IOOBUF_X12_Y61_N53
\nextStateRegOut[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \configurator|ALT_INV_nextStateRegOut[1]~4_combout\,
	devoe => ww_devoe,
	o => ww_nextStateRegOut(1));

-- Location: IOOBUF_X12_Y61_N2
\nextStateRegOut[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \configurator|ALT_INV_nextStateRegOut[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_nextStateRegOut(2));

-- Location: IOOBUF_X21_Y61_N53
\clockBuffOut[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_clockBuffOut(0));

-- Location: IOOBUF_X19_Y61_N2
\clockBuffOut[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_clockBuffOut(1));

-- Location: IOOBUF_X19_Y61_N19
\clockBuffOut[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_clockBuffOut(2));

-- Location: IOOBUF_X68_Y14_N45
\sclk~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \configurator|SCLK~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_sclk);

-- Location: IOOBUF_X68_Y40_N45
\sdenb~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \configurator|SDENB~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_sdenb);

-- Location: IOOBUF_X10_Y61_N42
\configok~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \configurator|configOK~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_configok);

-- Location: IOOBUF_X46_Y0_N2
\resetn~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_resetn);

-- Location: IOOBUF_X10_Y61_N76
\discardBuffer~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \configurator|discardBuffer~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_discardBuffer);

-- Location: IOIBUF_X38_Y61_N1
\serialTimer~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_serialTimer,
	o => \serialTimer~input_o\);

-- Location: CLKCTRL_G12
\serialTimer~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \serialTimer~input_o\,
	outclk => \serialTimer~inputCLKENA0_outclk\);

-- Location: IOIBUF_X46_Y0_N1
\resetn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resetn,
	o => \resetn~input_o\);

-- Location: LABCELL_X35_Y51_N45
\configurator|clockDividerBuffer~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|clockDividerBuffer~2_combout\ = ( \configurator|clockDividerBuffer\(0) & ( !\configurator|clockDividerBuffer\(1) ) ) # ( !\configurator|clockDividerBuffer\(0) & ( \configurator|clockDividerBuffer\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_clockDividerBuffer\(1),
	dataf => \configurator|ALT_INV_clockDividerBuffer\(0),
	combout => \configurator|clockDividerBuffer~2_combout\);

-- Location: FF_X35_Y51_N47
\configurator|clockDividerBuffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \configurator|clockDividerBuffer~2_combout\,
	sclr => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(1));

-- Location: LABCELL_X35_Y51_N0
\configurator|clockDividerBuffer~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|clockDividerBuffer~1_combout\ = ( \configurator|clockDividerBuffer\(0) & ( (\resetn~input_o\ & (!\configurator|clockDividerBuffer\(1) $ (!\configurator|clockDividerBuffer\(2)))) ) ) # ( !\configurator|clockDividerBuffer\(0) & ( 
-- (\resetn~input_o\ & (\configurator|clockDividerBuffer\(1) & \configurator|clockDividerBuffer\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000011001100000000001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_resetn~input_o\,
	datac => \configurator|ALT_INV_clockDividerBuffer\(1),
	datad => \configurator|ALT_INV_clockDividerBuffer\(2),
	dataf => \configurator|ALT_INV_clockDividerBuffer\(0),
	combout => \configurator|clockDividerBuffer~1_combout\);

-- Location: FF_X35_Y51_N2
\configurator|clockDividerBuffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \configurator|clockDividerBuffer~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(2));

-- Location: LABCELL_X35_Y51_N24
\configurator|clockDividerBuffer~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|clockDividerBuffer~0_combout\ = ( !\configurator|clockDividerBuffer\(0) & ( \configurator|clockDividerBuffer\(1) & ( \resetn~input_o\ ) ) ) # ( !\configurator|clockDividerBuffer\(0) & ( !\configurator|clockDividerBuffer\(1) & ( 
-- (\resetn~input_o\ & !\configurator|clockDividerBuffer\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000000000000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_resetn~input_o\,
	datac => \configurator|ALT_INV_clockDividerBuffer\(2),
	datae => \configurator|ALT_INV_clockDividerBuffer\(0),
	dataf => \configurator|ALT_INV_clockDividerBuffer\(1),
	combout => \configurator|clockDividerBuffer~0_combout\);

-- Location: FF_X35_Y51_N26
\configurator|clockDividerBuffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \configurator|clockDividerBuffer~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(0));

-- Location: LABCELL_X35_Y51_N39
\configurator|internalClock~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|internalClock~0_combout\ = ( \configurator|clockDividerBuffer\(1) & ( \configurator|internalClock~q\ ) ) # ( !\configurator|clockDividerBuffer\(1) & ( \configurator|internalClock~q\ & ( (!\configurator|clockDividerBuffer\(2)) # 
-- (\configurator|clockDividerBuffer\(0)) ) ) ) # ( !\configurator|clockDividerBuffer\(1) & ( !\configurator|internalClock~q\ & ( (!\configurator|clockDividerBuffer\(0) & \configurator|clockDividerBuffer\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000000000000011111111010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_clockDividerBuffer\(0),
	datad => \configurator|ALT_INV_clockDividerBuffer\(2),
	datae => \configurator|ALT_INV_clockDividerBuffer\(1),
	dataf => \configurator|ALT_INV_internalClock~q\,
	combout => \configurator|internalClock~0_combout\);

-- Location: FF_X35_Y51_N50
\configurator|internalClock\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~input_o\,
	asdata => \configurator|internalClock~0_combout\,
	sclr => \ALT_INV_resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|internalClock~q\);

-- Location: IOIBUF_X21_Y0_N1
\writeconfig~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writeconfig,
	o => \writeconfig~input_o\);

-- Location: LABCELL_X36_Y51_N42
\configurator|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|LessThan1~0_combout\ = ( \configurator|dataIndex\(3) & ( \configurator|dataIndex\(4) ) ) # ( !\configurator|dataIndex\(3) & ( (\configurator|dataIndex\(4) & (\configurator|dataIndex\(1) & \configurator|dataIndex\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_dataIndex\(4),
	datac => \configurator|ALT_INV_dataIndex\(1),
	datad => \configurator|ALT_INV_dataIndex\(2),
	dataf => \configurator|ALT_INV_dataIndex\(3),
	combout => \configurator|LessThan1~0_combout\);

-- Location: LABCELL_X36_Y51_N0
\configurator|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~1_sumout\ = SUM(( \configurator|dataIndex\(0) ) + ( VCC ) + ( !VCC ))
-- \configurator|Add2~2\ = CARRY(( \configurator|dataIndex\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_dataIndex\(0),
	cin => GND,
	sumout => \configurator|Add2~1_sumout\,
	cout => \configurator|Add2~2\);

-- Location: LABCELL_X36_Y51_N54
\configurator|dataIndex~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|dataIndex~0_combout\ = ( \configurator|LessThan1~1_combout\ & ( (!\configurator|LessThan1~0_combout\ & \configurator|Add2~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_LessThan1~0_combout\,
	datad => \configurator|ALT_INV_Add2~1_sumout\,
	dataf => \configurator|ALT_INV_LessThan1~1_combout\,
	combout => \configurator|dataIndex~0_combout\);

-- Location: LABCELL_X36_Y52_N51
\configurator|discarding~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|discarding~0_combout\ = (\resetn~input_o\ & \configurator|state.DISCARD~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_resetn~input_o\,
	datac => \configurator|ALT_INV_state.DISCARD~q\,
	combout => \configurator|discarding~0_combout\);

-- Location: FF_X36_Y51_N5
\configurator|discarding\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|discarding~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|discarding~q\);

-- Location: LABCELL_X35_Y51_N3
\configurator|needWait~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|needWait~0_combout\ = (!\resetn~input_o\) # (\configurator|discarding~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111110011001111111111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_resetn~input_o\,
	datad => \configurator|ALT_INV_discarding~q\,
	combout => \configurator|needWait~0_combout\);

-- Location: LABCELL_X35_Y51_N57
\configurator|needWait~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|needWait~1_combout\ = ( \resetn~input_o\ & ( \configurator|outputClock~q\ ) ) # ( !\resetn~input_o\ & ( \configurator|outputClock~q\ ) ) # ( \resetn~input_o\ & ( !\configurator|outputClock~q\ & ( \configurator|discarding~q\ ) ) ) # ( 
-- !\resetn~input_o\ & ( !\configurator|outputClock~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_discarding~q\,
	datae => \ALT_INV_resetn~input_o\,
	dataf => \configurator|ALT_INV_outputClock~q\,
	combout => \configurator|needWait~1_combout\);

-- Location: FF_X36_Y51_N56
\configurator|dataIndex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	d => \configurator|dataIndex~0_combout\,
	sclr => \configurator|needWait~0_combout\,
	ena => \configurator|needWait~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(0));

-- Location: LABCELL_X36_Y51_N3
\configurator|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~5_sumout\ = SUM(( \configurator|dataIndex\(1) ) + ( GND ) + ( \configurator|Add2~2\ ))
-- \configurator|Add2~6\ = CARRY(( \configurator|dataIndex\(1) ) + ( GND ) + ( \configurator|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(1),
	cin => \configurator|Add2~2\,
	sumout => \configurator|Add2~5_sumout\,
	cout => \configurator|Add2~6\);

-- Location: LABCELL_X35_Y51_N42
\configurator|dataIndex~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|dataIndex~1_combout\ = ( !\configurator|LessThan1~0_combout\ & ( (\configurator|Add2~5_sumout\ & \configurator|LessThan1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_Add2~5_sumout\,
	datad => \configurator|ALT_INV_LessThan1~1_combout\,
	dataf => \configurator|ALT_INV_LessThan1~0_combout\,
	combout => \configurator|dataIndex~1_combout\);

-- Location: FF_X36_Y51_N26
\configurator|dataIndex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|dataIndex~1_combout\,
	sclr => \configurator|needWait~0_combout\,
	sload => VCC,
	ena => \configurator|needWait~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(1));

-- Location: LABCELL_X36_Y51_N6
\configurator|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~13_sumout\ = SUM(( \configurator|dataIndex\(2) ) + ( GND ) + ( \configurator|Add2~6\ ))
-- \configurator|Add2~14\ = CARRY(( \configurator|dataIndex\(2) ) + ( GND ) + ( \configurator|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_dataIndex\(2),
	cin => \configurator|Add2~6\,
	sumout => \configurator|Add2~13_sumout\,
	cout => \configurator|Add2~14\);

-- Location: LABCELL_X35_Y51_N21
\configurator|dataIndex~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|dataIndex~3_combout\ = ( !\configurator|LessThan1~0_combout\ & ( (\configurator|Add2~13_sumout\ & \configurator|LessThan1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_Add2~13_sumout\,
	datad => \configurator|ALT_INV_LessThan1~1_combout\,
	dataf => \configurator|ALT_INV_LessThan1~0_combout\,
	combout => \configurator|dataIndex~3_combout\);

-- Location: FF_X36_Y51_N47
\configurator|dataIndex[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|dataIndex~3_combout\,
	sclr => \configurator|needWait~0_combout\,
	sload => VCC,
	ena => \configurator|needWait~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(2));

-- Location: LABCELL_X36_Y51_N9
\configurator|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~9_sumout\ = SUM(( \configurator|dataIndex\(3) ) + ( GND ) + ( \configurator|Add2~14\ ))
-- \configurator|Add2~10\ = CARRY(( \configurator|dataIndex\(3) ) + ( GND ) + ( \configurator|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_dataIndex\(3),
	cin => \configurator|Add2~14\,
	sumout => \configurator|Add2~9_sumout\,
	cout => \configurator|Add2~10\);

-- Location: LABCELL_X35_Y51_N12
\configurator|dataIndex~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|dataIndex~2_combout\ = ( \configurator|Add2~9_sumout\ & ( !\configurator|LessThan1~0_combout\ & ( \configurator|LessThan1~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_LessThan1~1_combout\,
	datae => \configurator|ALT_INV_Add2~9_sumout\,
	dataf => \configurator|ALT_INV_LessThan1~0_combout\,
	combout => \configurator|dataIndex~2_combout\);

-- Location: FF_X36_Y51_N38
\configurator|dataIndex[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|dataIndex~2_combout\,
	sclr => \configurator|needWait~0_combout\,
	sload => VCC,
	ena => \configurator|needWait~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(3));

-- Location: LABCELL_X36_Y51_N12
\configurator|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~17_sumout\ = SUM(( \configurator|dataIndex\(4) ) + ( GND ) + ( \configurator|Add2~10\ ))
-- \configurator|Add2~18\ = CARRY(( \configurator|dataIndex\(4) ) + ( GND ) + ( \configurator|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_dataIndex\(4),
	cin => \configurator|Add2~10\,
	sumout => \configurator|Add2~17_sumout\,
	cout => \configurator|Add2~18\);

-- Location: LABCELL_X36_Y51_N15
\configurator|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~29_sumout\ = SUM(( \configurator|dataIndex\(5) ) + ( GND ) + ( \configurator|Add2~18\ ))
-- \configurator|Add2~30\ = CARRY(( \configurator|dataIndex\(5) ) + ( GND ) + ( \configurator|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(5),
	cin => \configurator|Add2~18\,
	sumout => \configurator|Add2~29_sumout\,
	cout => \configurator|Add2~30\);

-- Location: LABCELL_X36_Y51_N27
\configurator|dataIndex~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|dataIndex~7_combout\ = (\configurator|LessThan1~1_combout\ & (\configurator|Add2~29_sumout\ & !\configurator|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_LessThan1~1_combout\,
	datac => \configurator|ALT_INV_Add2~29_sumout\,
	datad => \configurator|ALT_INV_LessThan1~0_combout\,
	combout => \configurator|dataIndex~7_combout\);

-- Location: FF_X36_Y51_N29
\configurator|dataIndex[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	d => \configurator|dataIndex~7_combout\,
	sclr => \configurator|needWait~0_combout\,
	ena => \configurator|needWait~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(5));

-- Location: LABCELL_X36_Y51_N18
\configurator|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~25_sumout\ = SUM(( \configurator|dataIndex\(6) ) + ( GND ) + ( \configurator|Add2~30\ ))
-- \configurator|Add2~26\ = CARRY(( \configurator|dataIndex\(6) ) + ( GND ) + ( \configurator|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_dataIndex\(6),
	cin => \configurator|Add2~30\,
	sumout => \configurator|Add2~25_sumout\,
	cout => \configurator|Add2~26\);

-- Location: LABCELL_X35_Y51_N18
\configurator|dataIndex~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|dataIndex~6_combout\ = ( !\configurator|LessThan1~0_combout\ & ( (\configurator|Add2~25_sumout\ & \configurator|LessThan1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_Add2~25_sumout\,
	datad => \configurator|ALT_INV_LessThan1~1_combout\,
	dataf => \configurator|ALT_INV_LessThan1~0_combout\,
	combout => \configurator|dataIndex~6_combout\);

-- Location: FF_X36_Y51_N53
\configurator|dataIndex[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|dataIndex~6_combout\,
	sclr => \configurator|needWait~0_combout\,
	sload => VCC,
	ena => \configurator|needWait~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(6));

-- Location: LABCELL_X36_Y51_N21
\configurator|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~21_sumout\ = SUM(( \configurator|dataIndex\(7) ) + ( GND ) + ( \configurator|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_dataIndex\(7),
	cin => \configurator|Add2~26\,
	sumout => \configurator|Add2~21_sumout\);

-- Location: LABCELL_X36_Y51_N45
\configurator|dataIndex~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|dataIndex~5_combout\ = ( !\configurator|LessThan1~0_combout\ & ( (\configurator|Add2~21_sumout\ & \configurator|LessThan1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_Add2~21_sumout\,
	datac => \configurator|ALT_INV_LessThan1~1_combout\,
	dataf => \configurator|ALT_INV_LessThan1~0_combout\,
	combout => \configurator|dataIndex~5_combout\);

-- Location: FF_X36_Y51_N41
\configurator|dataIndex[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|dataIndex~5_combout\,
	sclr => \configurator|needWait~0_combout\,
	sload => VCC,
	ena => \configurator|needWait~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(7));

-- Location: LABCELL_X36_Y51_N51
\configurator|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|LessThan1~1_combout\ = ( !\configurator|dataIndex\(5) & ( (!\configurator|dataIndex\(7) & !\configurator|dataIndex\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_dataIndex\(7),
	datad => \configurator|ALT_INV_dataIndex\(6),
	dataf => \configurator|ALT_INV_dataIndex\(5),
	combout => \configurator|LessThan1~1_combout\);

-- Location: LABCELL_X35_Y51_N9
\configurator|dataIndex~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|dataIndex~4_combout\ = ( !\configurator|LessThan1~0_combout\ & ( \configurator|Add2~17_sumout\ & ( \configurator|LessThan1~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_LessThan1~1_combout\,
	datae => \configurator|ALT_INV_LessThan1~0_combout\,
	dataf => \configurator|ALT_INV_Add2~17_sumout\,
	combout => \configurator|dataIndex~4_combout\);

-- Location: FF_X36_Y51_N59
\configurator|dataIndex[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|dataIndex~4_combout\,
	sclr => \configurator|needWait~0_combout\,
	sload => VCC,
	ena => \configurator|needWait~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(4));

-- Location: LABCELL_X38_Y51_N18
\configurator|needWait~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|needWait~2_combout\ = ( \configurator|dataIndex\(0) & ( \configurator|LessThan1~1_combout\ & ( (\configurator|dataIndex\(4) & ((\configurator|dataIndex\(3)) # (\configurator|dataIndex\(2)))) ) ) ) # ( !\configurator|dataIndex\(0) & ( 
-- \configurator|LessThan1~1_combout\ & ( (\configurator|dataIndex\(4) & (((\configurator|dataIndex\(1) & \configurator|dataIndex\(2))) # (\configurator|dataIndex\(3)))) ) ) ) # ( \configurator|dataIndex\(0) & ( !\configurator|LessThan1~1_combout\ ) ) # ( 
-- !\configurator|dataIndex\(0) & ( !\configurator|LessThan1~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000001010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(4),
	datab => \configurator|ALT_INV_dataIndex\(1),
	datac => \configurator|ALT_INV_dataIndex\(2),
	datad => \configurator|ALT_INV_dataIndex\(3),
	datae => \configurator|ALT_INV_dataIndex\(0),
	dataf => \configurator|ALT_INV_LessThan1~1_combout\,
	combout => \configurator|needWait~2_combout\);

-- Location: FF_X36_Y51_N8
\configurator|needWait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|needWait~2_combout\,
	sclr => \configurator|needWait~0_combout\,
	sload => VCC,
	ena => \configurator|needWait~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|needWait~q\);

-- Location: LABCELL_X38_Y51_N30
\configurator|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add3~9_sumout\ = SUM(( \configurator|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \configurator|Add3~10\ = CARRY(( \configurator|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_counter\(0),
	cin => GND,
	sumout => \configurator|Add3~9_sumout\,
	cout => \configurator|Add3~10\);

-- Location: LABCELL_X38_Y51_N42
\configurator|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add3~21_sumout\ = SUM(( \configurator|counter\(4) ) + ( GND ) + ( \configurator|Add3~14\ ))
-- \configurator|Add3~22\ = CARRY(( \configurator|counter\(4) ) + ( GND ) + ( \configurator|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_counter\(4),
	cin => \configurator|Add3~14\,
	sumout => \configurator|Add3~21_sumout\,
	cout => \configurator|Add3~22\);

-- Location: LABCELL_X38_Y51_N45
\configurator|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add3~17_sumout\ = SUM(( \configurator|counter\(5) ) + ( GND ) + ( \configurator|Add3~22\ ))
-- \configurator|Add3~18\ = CARRY(( \configurator|counter\(5) ) + ( GND ) + ( \configurator|Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_counter\(5),
	cin => \configurator|Add3~22\,
	sumout => \configurator|Add3~17_sumout\,
	cout => \configurator|Add3~18\);

-- Location: LABCELL_X35_Y51_N51
\configurator|counter[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|counter[6]~1_combout\ = ( \configurator|LessThan1~1_combout\ & ( (!\resetn~input_o\) # ((\configurator|LessThan1~0_combout\ & \configurator|outputClock~q\)) ) ) # ( !\configurator|LessThan1~1_combout\ & ( (!\resetn~input_o\) # 
-- (\configurator|outputClock~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111001111110000111111111111000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_LessThan1~0_combout\,
	datac => \ALT_INV_resetn~input_o\,
	datad => \configurator|ALT_INV_outputClock~q\,
	datae => \configurator|ALT_INV_LessThan1~1_combout\,
	combout => \configurator|counter[6]~1_combout\);

-- Location: FF_X37_Y51_N41
\configurator|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|Add3~17_sumout\,
	sclr => \configurator|counter[6]~0_combout\,
	sload => VCC,
	ena => \configurator|counter[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|counter\(5));

-- Location: LABCELL_X38_Y51_N48
\configurator|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add3~25_sumout\ = SUM(( \configurator|counter\(6) ) + ( GND ) + ( \configurator|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_counter\(6),
	cin => \configurator|Add3~18\,
	sumout => \configurator|Add3~25_sumout\);

-- Location: FF_X37_Y51_N5
\configurator|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|Add3~25_sumout\,
	sclr => \configurator|counter[6]~0_combout\,
	sload => VCC,
	ena => \configurator|counter[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|counter\(6));

-- Location: LABCELL_X36_Y51_N24
\configurator|counter[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|counter[6]~0_combout\ = ( \configurator|counter\(5) & ( ((!\resetn~input_o\) # (\configurator|counter\(6))) # (\configurator|counter\(4)) ) ) # ( !\configurator|counter\(5) & ( (!\resetn~input_o\) # (\configurator|counter\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111111110101111111111111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(4),
	datac => \ALT_INV_resetn~input_o\,
	datad => \configurator|ALT_INV_counter\(6),
	dataf => \configurator|ALT_INV_counter\(5),
	combout => \configurator|counter[6]~0_combout\);

-- Location: FF_X37_Y51_N20
\configurator|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|Add3~9_sumout\,
	sclr => \configurator|counter[6]~0_combout\,
	sload => VCC,
	ena => \configurator|counter[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|counter\(0));

-- Location: LABCELL_X38_Y51_N33
\configurator|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add3~1_sumout\ = SUM(( \configurator|counter\(1) ) + ( GND ) + ( \configurator|Add3~10\ ))
-- \configurator|Add3~2\ = CARRY(( \configurator|counter\(1) ) + ( GND ) + ( \configurator|Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(1),
	cin => \configurator|Add3~10\,
	sumout => \configurator|Add3~1_sumout\,
	cout => \configurator|Add3~2\);

-- Location: FF_X38_Y51_N20
\configurator|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|Add3~1_sumout\,
	sclr => \configurator|counter[6]~0_combout\,
	sload => VCC,
	ena => \configurator|counter[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|counter\(1));

-- Location: LABCELL_X38_Y51_N36
\configurator|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add3~5_sumout\ = SUM(( \configurator|counter\(2) ) + ( GND ) + ( \configurator|Add3~2\ ))
-- \configurator|Add3~6\ = CARRY(( \configurator|counter\(2) ) + ( GND ) + ( \configurator|Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_counter\(2),
	cin => \configurator|Add3~2\,
	sumout => \configurator|Add3~5_sumout\,
	cout => \configurator|Add3~6\);

-- Location: FF_X37_Y51_N26
\configurator|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|Add3~5_sumout\,
	sclr => \configurator|counter[6]~0_combout\,
	sload => VCC,
	ena => \configurator|counter[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|counter\(2));

-- Location: LABCELL_X38_Y51_N39
\configurator|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add3~13_sumout\ = SUM(( \configurator|counter\(3) ) + ( GND ) + ( \configurator|Add3~6\ ))
-- \configurator|Add3~14\ = CARRY(( \configurator|counter\(3) ) + ( GND ) + ( \configurator|Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_counter\(3),
	cin => \configurator|Add3~6\,
	sumout => \configurator|Add3~13_sumout\,
	cout => \configurator|Add3~14\);

-- Location: FF_X37_Y51_N8
\configurator|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|Add3~13_sumout\,
	sclr => \configurator|counter[6]~0_combout\,
	sload => VCC,
	ena => \configurator|counter[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|counter\(3));

-- Location: FF_X37_Y51_N14
\configurator|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|Add3~21_sumout\,
	sclr => \configurator|counter[6]~0_combout\,
	sload => VCC,
	ena => \configurator|counter[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|counter\(4));

-- Location: LABCELL_X38_Y51_N27
\configurator|counter[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|counter[6]~2_combout\ = ( !\configurator|counter\(6) & ( (!\configurator|counter\(4)) # (!\configurator|counter\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_counter\(4),
	datad => \configurator|ALT_INV_counter\(5),
	dataf => \configurator|ALT_INV_counter\(6),
	combout => \configurator|counter[6]~2_combout\);

-- Location: LABCELL_X35_Y51_N30
\configurator|configOK~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|configOK~0_combout\ = ( \configurator|LessThan1~0_combout\ & ( \configurator|outputClock~q\ & ( (!\configurator|counter[6]~2_combout\) # (\configurator|configOK~reg0_q\) ) ) ) # ( !\configurator|LessThan1~0_combout\ & ( 
-- \configurator|outputClock~q\ & ( ((!\configurator|counter[6]~2_combout\ & !\configurator|LessThan1~1_combout\)) # (\configurator|configOK~reg0_q\) ) ) ) # ( \configurator|LessThan1~0_combout\ & ( !\configurator|outputClock~q\ & ( 
-- \configurator|configOK~reg0_q\ ) ) ) # ( !\configurator|LessThan1~0_combout\ & ( !\configurator|outputClock~q\ & ( \configurator|configOK~reg0_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111110011001100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_configOK~reg0_q\,
	datac => \configurator|ALT_INV_counter[6]~2_combout\,
	datad => \configurator|ALT_INV_LessThan1~1_combout\,
	datae => \configurator|ALT_INV_LessThan1~0_combout\,
	dataf => \configurator|ALT_INV_outputClock~q\,
	combout => \configurator|configOK~0_combout\);

-- Location: FF_X35_Y52_N29
\configurator|configOK~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|configOK~0_combout\,
	sclr => \ALT_INV_resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|configOK~reg0_q\);

-- Location: LABCELL_X36_Y52_N45
\configurator|waitingBuffer~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|waitingBuffer~3_combout\ = (\resetn~input_o\ & !\configurator|waitingBuffer\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_resetn~input_o\,
	datad => \configurator|ALT_INV_waitingBuffer\(0),
	combout => \configurator|waitingBuffer~3_combout\);

-- Location: LABCELL_X36_Y52_N3
\configurator|waiting~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|waiting~0_combout\ = ( \configurator|state.INTER~q\ & ( \resetn~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_resetn~input_o\,
	dataf => \configurator|ALT_INV_state.INTER~q\,
	combout => \configurator|waiting~0_combout\);

-- Location: FF_X36_Y52_N5
\configurator|waiting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	d => \configurator|waiting~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|waiting~q\);

-- Location: LABCELL_X36_Y52_N9
\configurator|waitingBuffer[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|waitingBuffer[0]~1_combout\ = ( \configurator|internalClock~q\ & ( (!\resetn~input_o\) # (\configurator|waiting~q\) ) ) # ( !\configurator|internalClock~q\ & ( !\resetn~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_resetn~input_o\,
	datac => \configurator|ALT_INV_waiting~q\,
	dataf => \configurator|ALT_INV_internalClock~q\,
	combout => \configurator|waitingBuffer[0]~1_combout\);

-- Location: FF_X36_Y52_N47
\configurator|waitingBuffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \configurator|waitingBuffer~3_combout\,
	ena => \configurator|waitingBuffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|waitingBuffer\(0));

-- Location: LABCELL_X36_Y52_N6
\configurator|waitingBuffer~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|waitingBuffer~2_combout\ = ( \configurator|waitingBuffer\(0) & ( (\resetn~input_o\ & !\configurator|waitingBuffer\(1)) ) ) # ( !\configurator|waitingBuffer\(0) & ( (\resetn~input_o\ & \configurator|waitingBuffer\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_resetn~input_o\,
	datad => \configurator|ALT_INV_waitingBuffer\(1),
	dataf => \configurator|ALT_INV_waitingBuffer\(0),
	combout => \configurator|waitingBuffer~2_combout\);

-- Location: FF_X36_Y52_N8
\configurator|waitingBuffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \configurator|waitingBuffer~2_combout\,
	ena => \configurator|waitingBuffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|waitingBuffer\(1));

-- Location: LABCELL_X36_Y52_N30
\configurator|waitingBuffer~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|waitingBuffer~0_combout\ = ( \configurator|waitingBuffer\(2) & ( \configurator|waitingBuffer\(1) & ( (\resetn~input_o\ & !\configurator|waitingBuffer\(0)) ) ) ) # ( !\configurator|waitingBuffer\(2) & ( \configurator|waitingBuffer\(1) & ( 
-- (\resetn~input_o\ & \configurator|waitingBuffer\(0)) ) ) ) # ( \configurator|waitingBuffer\(2) & ( !\configurator|waitingBuffer\(1) & ( \resetn~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000001100110011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_resetn~input_o\,
	datad => \configurator|ALT_INV_waitingBuffer\(0),
	datae => \configurator|ALT_INV_waitingBuffer\(2),
	dataf => \configurator|ALT_INV_waitingBuffer\(1),
	combout => \configurator|waitingBuffer~0_combout\);

-- Location: FF_X36_Y52_N31
\configurator|waitingBuffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \configurator|waitingBuffer~0_combout\,
	ena => \configurator|waitingBuffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|waitingBuffer\(2));

-- Location: LABCELL_X36_Y52_N24
\configurator|waitingDone~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|waitingDone~0_combout\ = ( \configurator|waitingDone~q\ & ( \configurator|internalClock~q\ & ( (!\configurator|waiting~q\) # ((\configurator|waitingBuffer\(1) & (\configurator|waitingBuffer\(2) & \configurator|waitingBuffer\(0)))) ) ) ) # ( 
-- !\configurator|waitingDone~q\ & ( \configurator|internalClock~q\ & ( (\configurator|waitingBuffer\(1) & (\configurator|waiting~q\ & (\configurator|waitingBuffer\(2) & \configurator|waitingBuffer\(0)))) ) ) ) # ( \configurator|waitingDone~q\ & ( 
-- !\configurator|internalClock~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011100110011001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_waitingBuffer\(1),
	datab => \configurator|ALT_INV_waiting~q\,
	datac => \configurator|ALT_INV_waitingBuffer\(2),
	datad => \configurator|ALT_INV_waitingBuffer\(0),
	datae => \configurator|ALT_INV_waitingDone~q\,
	dataf => \configurator|ALT_INV_internalClock~q\,
	combout => \configurator|waitingDone~0_combout\);

-- Location: FF_X36_Y52_N26
\configurator|waitingDone\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \configurator|waitingDone~0_combout\,
	sclr => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|waitingDone~q\);

-- Location: LABCELL_X35_Y52_N30
\configurator|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Selector1~0_combout\ = ( !\writeconfig~input_o\ & ( \configurator|waitingDone~q\ & ( (\configurator|state.SEND~q\ & (\configurator|needWait~q\ & !\configurator|configOK~reg0_q\)) ) ) ) # ( \writeconfig~input_o\ & ( 
-- !\configurator|waitingDone~q\ & ( \configurator|state.INTER~q\ ) ) ) # ( !\writeconfig~input_o\ & ( !\configurator|waitingDone~q\ & ( ((\configurator|state.SEND~q\ & (\configurator|needWait~q\ & !\configurator|configOK~reg0_q\))) # 
-- (\configurator|state.INTER~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101010101010101010101010100000011000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_state.INTER~q\,
	datab => \configurator|ALT_INV_state.SEND~q\,
	datac => \configurator|ALT_INV_needWait~q\,
	datad => \configurator|ALT_INV_configOK~reg0_q\,
	datae => \ALT_INV_writeconfig~input_o\,
	dataf => \configurator|ALT_INV_waitingDone~q\,
	combout => \configurator|Selector1~0_combout\);

-- Location: FF_X35_Y52_N32
\configurator|nextState.INTER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	d => \configurator|Selector1~0_combout\,
	sclr => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|nextState.INTER~q\);

-- Location: LABCELL_X35_Y52_N48
\configurator|state~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|state~9_combout\ = ( \resetn~input_o\ & ( \configurator|nextState.INTER~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_nextState.INTER~q\,
	dataf => \ALT_INV_resetn~input_o\,
	combout => \configurator|state~9_combout\);

-- Location: FF_X35_Y52_N50
\configurator|state.INTER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	d => \configurator|state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|state.INTER~q\);

-- Location: FF_X36_Y52_N59
\configurator|discarded\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	d => \configurator|discarded~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|discarded~q\);

-- Location: LABCELL_X36_Y52_N36
\configurator|discardBuffer~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|discardBuffer~0_combout\ = ( \configurator|discarding~q\ & ( !\configurator|discardBuffer~reg0_q\ & ( !\configurator|waiting~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_waiting~q\,
	datae => \configurator|ALT_INV_discarding~q\,
	dataf => \configurator|ALT_INV_discardBuffer~reg0_q\,
	combout => \configurator|discardBuffer~0_combout\);

-- Location: LABCELL_X36_Y52_N21
\configurator|discardBuffer~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|discardBuffer~reg0feeder_combout\ = \configurator|discardBuffer~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_discardBuffer~0_combout\,
	combout => \configurator|discardBuffer~reg0feeder_combout\);

-- Location: FF_X36_Y52_N22
\configurator|discardBuffer~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	d => \configurator|discardBuffer~reg0feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|discardBuffer~reg0_q\);

-- Location: LABCELL_X36_Y52_N0
\configurator|discarded~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|discarded~0_combout\ = ( \configurator|discardBuffer~reg0_q\ & ( !\configurator|waiting~q\ ) ) # ( !\configurator|discardBuffer~reg0_q\ & ( (\configurator|discarded~q\ & !\configurator|waiting~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_discarded~q\,
	datad => \configurator|ALT_INV_waiting~q\,
	dataf => \configurator|ALT_INV_discardBuffer~reg0_q\,
	combout => \configurator|discarded~0_combout\);

-- Location: LABCELL_X36_Y52_N57
\configurator|discarded~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|discarded~feeder_combout\ = \configurator|discarded~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_discarded~0_combout\,
	combout => \configurator|discarded~feeder_combout\);

-- Location: FF_X36_Y52_N58
\configurator|discarded~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	d => \configurator|discarded~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|discarded~DUPLICATE_q\);

-- Location: LABCELL_X35_Y52_N54
\configurator|nextState~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|nextState~7_combout\ = ( \configurator|state.DISCARD~q\ & ( \resetn~input_o\ ) ) # ( !\configurator|state.DISCARD~q\ & ( (\resetn~input_o\ & ((!\writeconfig~input_o\) # (\configurator|state.INTER~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100110001001100010011000100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_state.INTER~q\,
	datab => \ALT_INV_resetn~input_o\,
	datac => \ALT_INV_writeconfig~input_o\,
	dataf => \configurator|ALT_INV_state.DISCARD~q\,
	combout => \configurator|nextState~7_combout\);

-- Location: FF_X35_Y52_N56
\configurator|nextState.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	d => \configurator|nextState~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|nextState.IDLE~q\);

-- Location: LABCELL_X35_Y52_N51
\configurator|state~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|state~13_combout\ = ( \resetn~input_o\ & ( \configurator|nextState.IDLE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_nextState.IDLE~q\,
	dataf => \ALT_INV_resetn~input_o\,
	combout => \configurator|state~13_combout\);

-- Location: FF_X35_Y52_N52
\configurator|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	d => \configurator|state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|state.IDLE~q\);

-- Location: LABCELL_X35_Y52_N0
\configurator|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Selector2~0_combout\ = ( \writeconfig~input_o\ & ( \configurator|waitingDone~q\ & ( ((\configurator|state.DISCARD~q\ & !\configurator|discarded~DUPLICATE_q\)) # (\configurator|state.INTER~q\) ) ) ) # ( !\writeconfig~input_o\ & ( 
-- \configurator|waitingDone~q\ & ( ((!\configurator|state.IDLE~q\) # ((\configurator|state.DISCARD~q\ & !\configurator|discarded~DUPLICATE_q\))) # (\configurator|state.INTER~q\) ) ) ) # ( \writeconfig~input_o\ & ( !\configurator|waitingDone~q\ & ( 
-- (\configurator|state.DISCARD~q\ & !\configurator|discarded~DUPLICATE_q\) ) ) ) # ( !\writeconfig~input_o\ & ( !\configurator|waitingDone~q\ & ( (!\configurator|state.IDLE~q\) # ((\configurator|state.DISCARD~q\ & !\configurator|discarded~DUPLICATE_q\)) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110000001100000011000011111111011101010111010101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_state.INTER~q\,
	datab => \configurator|ALT_INV_state.DISCARD~q\,
	datac => \configurator|ALT_INV_discarded~DUPLICATE_q\,
	datad => \configurator|ALT_INV_state.IDLE~q\,
	datae => \ALT_INV_writeconfig~input_o\,
	dataf => \configurator|ALT_INV_waitingDone~q\,
	combout => \configurator|Selector2~0_combout\);

-- Location: FF_X35_Y52_N2
\configurator|nextState.DISCARD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	d => \configurator|Selector2~0_combout\,
	sclr => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|nextState.DISCARD~q\);

-- Location: LABCELL_X35_Y52_N42
\configurator|state~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|state~10_combout\ = (\configurator|nextState.DISCARD~q\ & \resetn~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_nextState.DISCARD~q\,
	datab => \ALT_INV_resetn~input_o\,
	combout => \configurator|state~10_combout\);

-- Location: FF_X35_Y52_N44
\configurator|state.DISCARD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	d => \configurator|state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|state.DISCARD~q\);

-- Location: LABCELL_X35_Y52_N12
\configurator|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Selector0~0_combout\ = ( \configurator|state.SEND~q\ & ( \configurator|discarded~DUPLICATE_q\ & ( ((!\writeconfig~input_o\ & (!\configurator|needWait~q\ & !\configurator|configOK~reg0_q\))) # (\configurator|state.DISCARD~q\) ) ) ) # ( 
-- !\configurator|state.SEND~q\ & ( \configurator|discarded~DUPLICATE_q\ & ( \configurator|state.DISCARD~q\ ) ) ) # ( \configurator|state.SEND~q\ & ( !\configurator|discarded~DUPLICATE_q\ & ( (!\writeconfig~input_o\ & (!\configurator|needWait~q\ & 
-- !\configurator|configOK~reg0_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000000000000000110011001100111011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_writeconfig~input_o\,
	datab => \configurator|ALT_INV_state.DISCARD~q\,
	datac => \configurator|ALT_INV_needWait~q\,
	datad => \configurator|ALT_INV_configOK~reg0_q\,
	datae => \configurator|ALT_INV_state.SEND~q\,
	dataf => \configurator|ALT_INV_discarded~DUPLICATE_q\,
	combout => \configurator|Selector0~0_combout\);

-- Location: FF_X35_Y52_N14
\configurator|nextState.SEND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	d => \configurator|Selector0~0_combout\,
	sclr => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|nextState.SEND~q\);

-- Location: LABCELL_X35_Y52_N39
\configurator|state~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|state~11_combout\ = (\resetn~input_o\ & \configurator|nextState.SEND~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetn~input_o\,
	datab => \configurator|ALT_INV_nextState.SEND~q\,
	combout => \configurator|state~11_combout\);

-- Location: FF_X35_Y52_N41
\configurator|state.SEND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	d => \configurator|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|state.SEND~q\);

-- Location: LABCELL_X36_Y52_N42
\configurator|sendData~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|sendData~0_combout\ = ( \configurator|state.SEND~q\ & ( \resetn~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_resetn~input_o\,
	dataf => \configurator|ALT_INV_state.SEND~q\,
	combout => \configurator|sendData~0_combout\);

-- Location: FF_X36_Y51_N32
\configurator|outputClock\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|sendData~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|outputClock~q\);

-- Location: MLABCELL_X37_Y51_N45
\configurator|SCLK~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|SCLK~0_combout\ = ( \configurator|internalClock~q\ & ( (\configurator|outputClock~q\ & \resetn~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_outputClock~q\,
	datad => \ALT_INV_resetn~input_o\,
	dataf => \configurator|ALT_INV_internalClock~q\,
	combout => \configurator|SCLK~0_combout\);

-- Location: LABCELL_X36_Y52_N12
\configurator|SDENB~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|SDENB~0_combout\ = ( \configurator|state.SEND~q\ & ( \configurator|state.DISCARD~q\ ) ) # ( !\configurator|state.SEND~q\ & ( \configurator|state.DISCARD~q\ ) ) # ( \configurator|state.SEND~q\ & ( !\configurator|state.DISCARD~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \configurator|ALT_INV_state.SEND~q\,
	dataf => \configurator|ALT_INV_state.DISCARD~q\,
	combout => \configurator|SDENB~0_combout\);

-- Location: FF_X36_Y52_N13
\configurator|SDENB~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	d => \configurator|SDENB~0_combout\,
	sclr => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|SDENB~reg0_q\);

-- Location: MLABCELL_X37_Y60_N0
\snythesizer|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~1_sumout\ = SUM(( \snythesizer|counter[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \snythesizer|Add0~2\ = CARRY(( \snythesizer|counter[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \snythesizer|ALT_INV_counter[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \snythesizer|Add0~1_sumout\,
	cout => \snythesizer|Add0~2\);

-- Location: FF_X37_Y59_N16
\snythesizer|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	asdata => \snythesizer|Add0~9_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(29));

-- Location: MLABCELL_X37_Y60_N3
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

-- Location: FF_X37_Y60_N5
\snythesizer|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~117_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(1));

-- Location: MLABCELL_X37_Y60_N6
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

-- Location: FF_X37_Y60_N7
\snythesizer|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~121_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(2));

-- Location: MLABCELL_X37_Y60_N9
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

-- Location: FF_X37_Y60_N11
\snythesizer|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~125_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(3));

-- Location: MLABCELL_X37_Y60_N12
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

-- Location: FF_X37_Y60_N14
\snythesizer|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~101_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(4));

-- Location: MLABCELL_X37_Y60_N15
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

-- Location: FF_X37_Y60_N17
\snythesizer|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~105_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(5));

-- Location: MLABCELL_X37_Y60_N18
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

-- Location: FF_X37_Y60_N20
\snythesizer|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~109_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(6));

-- Location: MLABCELL_X37_Y60_N21
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

-- Location: FF_X37_Y60_N23
\snythesizer|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~113_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(7));

-- Location: MLABCELL_X37_Y60_N24
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

-- Location: FF_X37_Y60_N26
\snythesizer|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~81_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(8));

-- Location: MLABCELL_X37_Y60_N27
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

-- Location: FF_X37_Y60_N29
\snythesizer|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~85_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(9));

-- Location: MLABCELL_X37_Y60_N30
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

-- Location: FF_X37_Y60_N31
\snythesizer|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~41_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(10));

-- Location: MLABCELL_X37_Y60_N33
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

-- Location: FF_X37_Y60_N35
\snythesizer|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~45_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(11));

-- Location: MLABCELL_X37_Y60_N36
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

-- Location: FF_X37_Y60_N38
\snythesizer|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~49_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(12));

-- Location: MLABCELL_X37_Y60_N39
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

-- Location: FF_X37_Y60_N41
\snythesizer|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~53_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(13));

-- Location: MLABCELL_X37_Y60_N42
\snythesizer|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~57_sumout\ = SUM(( \snythesizer|counter\(14) ) + ( GND ) + ( \snythesizer|Add0~54\ ))
-- \snythesizer|Add0~58\ = CARRY(( \snythesizer|counter\(14) ) + ( GND ) + ( \snythesizer|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \snythesizer|ALT_INV_counter\(14),
	cin => \snythesizer|Add0~54\,
	sumout => \snythesizer|Add0~57_sumout\,
	cout => \snythesizer|Add0~58\);

-- Location: FF_X37_Y60_N43
\snythesizer|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~57_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(14));

-- Location: MLABCELL_X37_Y60_N45
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

-- Location: FF_X37_Y60_N47
\snythesizer|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~89_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(15));

-- Location: MLABCELL_X37_Y60_N48
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

-- Location: FF_X37_Y60_N50
\snythesizer|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~93_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(16));

-- Location: MLABCELL_X37_Y60_N51
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

-- Location: FF_X37_Y60_N52
\snythesizer|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~97_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(17));

-- Location: MLABCELL_X37_Y60_N54
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

-- Location: FF_X37_Y60_N56
\snythesizer|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~61_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(18));

-- Location: MLABCELL_X37_Y60_N57
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

-- Location: FF_X37_Y60_N59
\snythesizer|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~21_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(19));

-- Location: MLABCELL_X37_Y59_N0
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

-- Location: FF_X37_Y59_N38
\snythesizer|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	asdata => \snythesizer|Add0~65_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(20));

-- Location: MLABCELL_X37_Y59_N3
\snythesizer|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~25_sumout\ = SUM(( \snythesizer|counter\(21) ) + ( GND ) + ( \snythesizer|Add0~66\ ))
-- \snythesizer|Add0~26\ = CARRY(( \snythesizer|counter\(21) ) + ( GND ) + ( \snythesizer|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \snythesizer|ALT_INV_counter\(21),
	cin => \snythesizer|Add0~66\,
	sumout => \snythesizer|Add0~25_sumout\,
	cout => \snythesizer|Add0~26\);

-- Location: FF_X37_Y59_N44
\snythesizer|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	asdata => \snythesizer|Add0~25_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(21));

-- Location: MLABCELL_X37_Y59_N6
\snythesizer|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~29_sumout\ = SUM(( \snythesizer|counter\(22) ) + ( GND ) + ( \snythesizer|Add0~26\ ))
-- \snythesizer|Add0~30\ = CARRY(( \snythesizer|counter\(22) ) + ( GND ) + ( \snythesizer|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \snythesizer|ALT_INV_counter\(22),
	cin => \snythesizer|Add0~26\,
	sumout => \snythesizer|Add0~29_sumout\,
	cout => \snythesizer|Add0~30\);

-- Location: FF_X37_Y59_N56
\snythesizer|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	asdata => \snythesizer|Add0~29_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(22));

-- Location: MLABCELL_X37_Y59_N9
\snythesizer|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~33_sumout\ = SUM(( \snythesizer|counter\(23) ) + ( GND ) + ( \snythesizer|Add0~30\ ))
-- \snythesizer|Add0~34\ = CARRY(( \snythesizer|counter\(23) ) + ( GND ) + ( \snythesizer|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_counter\(23),
	cin => \snythesizer|Add0~30\,
	sumout => \snythesizer|Add0~33_sumout\,
	cout => \snythesizer|Add0~34\);

-- Location: FF_X37_Y59_N53
\snythesizer|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	asdata => \snythesizer|Add0~33_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(23));

-- Location: MLABCELL_X37_Y59_N12
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

-- Location: FF_X37_Y59_N40
\snythesizer|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	asdata => \snythesizer|Add0~37_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(24));

-- Location: MLABCELL_X37_Y59_N15
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

-- Location: FF_X37_Y59_N46
\snythesizer|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	asdata => \snythesizer|Add0~69_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(25));

-- Location: MLABCELL_X37_Y59_N18
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

-- Location: FF_X37_Y59_N59
\snythesizer|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	asdata => \snythesizer|Add0~73_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(26));

-- Location: MLABCELL_X37_Y59_N21
\snythesizer|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~77_sumout\ = SUM(( \snythesizer|counter\(27) ) + ( GND ) + ( \snythesizer|Add0~74\ ))
-- \snythesizer|Add0~78\ = CARRY(( \snythesizer|counter\(27) ) + ( GND ) + ( \snythesizer|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \snythesizer|ALT_INV_counter\(27),
	cin => \snythesizer|Add0~74\,
	sumout => \snythesizer|Add0~77_sumout\,
	cout => \snythesizer|Add0~78\);

-- Location: FF_X37_Y59_N49
\snythesizer|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	asdata => \snythesizer|Add0~77_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(27));

-- Location: MLABCELL_X37_Y59_N24
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

-- Location: FF_X37_Y59_N22
\snythesizer|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	asdata => \snythesizer|Add0~5_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(28));

-- Location: MLABCELL_X37_Y59_N27
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

-- Location: FF_X37_Y59_N28
\snythesizer|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	asdata => \snythesizer|Add0~13_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(30));

-- Location: MLABCELL_X37_Y59_N30
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

-- Location: FF_X37_Y59_N34
\snythesizer|counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~17_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(31));

-- Location: MLABCELL_X37_Y59_N33
\snythesizer|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~17_sumout\ = SUM(( \snythesizer|counter\(31) ) + ( GND ) + ( \snythesizer|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \snythesizer|ALT_INV_counter\(31),
	cin => \snythesizer|Add0~14\,
	sumout => \snythesizer|Add0~17_sumout\);

-- Location: LABCELL_X36_Y60_N6
\snythesizer|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|LessThan0~0_combout\ = ( !\snythesizer|Add0~57_sumout\ & ( !\snythesizer|Add0~53_sumout\ & ( (!\snythesizer|Add0~45_sumout\ & (!\snythesizer|Add0~41_sumout\ & !\snythesizer|Add0~49_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_Add0~45_sumout\,
	datac => \snythesizer|ALT_INV_Add0~41_sumout\,
	datad => \snythesizer|ALT_INV_Add0~49_sumout\,
	datae => \snythesizer|ALT_INV_Add0~57_sumout\,
	dataf => \snythesizer|ALT_INV_Add0~53_sumout\,
	combout => \snythesizer|LessThan0~0_combout\);

-- Location: MLABCELL_X37_Y59_N45
\snythesizer|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|LessThan0~1_combout\ = ( !\snythesizer|Add0~33_sumout\ & ( !\snythesizer|Add0~37_sumout\ & ( (!\snythesizer|Add0~25_sumout\ & (!\snythesizer|Add0~29_sumout\ & (\snythesizer|LessThan0~0_combout\ & !\snythesizer|Add0~21_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_Add0~25_sumout\,
	datab => \snythesizer|ALT_INV_Add0~29_sumout\,
	datac => \snythesizer|ALT_INV_LessThan0~0_combout\,
	datad => \snythesizer|ALT_INV_Add0~21_sumout\,
	datae => \snythesizer|ALT_INV_Add0~33_sumout\,
	dataf => \snythesizer|ALT_INV_Add0~37_sumout\,
	combout => \snythesizer|LessThan0~1_combout\);

-- Location: LABCELL_X36_Y60_N0
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

-- Location: MLABCELL_X37_Y59_N39
\snythesizer|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|LessThan0~5_combout\ = ( !\snythesizer|Add0~97_sumout\ & ( !\snythesizer|Add0~61_sumout\ & ( (!\snythesizer|Add0~89_sumout\ & !\snythesizer|Add0~93_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \snythesizer|ALT_INV_Add0~89_sumout\,
	datad => \snythesizer|ALT_INV_Add0~93_sumout\,
	datae => \snythesizer|ALT_INV_Add0~97_sumout\,
	dataf => \snythesizer|ALT_INV_Add0~61_sumout\,
	combout => \snythesizer|LessThan0~5_combout\);

-- Location: MLABCELL_X37_Y59_N48
\snythesizer|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|LessThan0~2_combout\ = ( !\snythesizer|Add0~77_sumout\ & ( \snythesizer|LessThan0~5_combout\ & ( (!\snythesizer|Add0~65_sumout\ & (\snythesizer|LessThan0~4_combout\ & (!\snythesizer|Add0~73_sumout\ & !\snythesizer|Add0~69_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_Add0~65_sumout\,
	datab => \snythesizer|ALT_INV_LessThan0~4_combout\,
	datac => \snythesizer|ALT_INV_Add0~73_sumout\,
	datad => \snythesizer|ALT_INV_Add0~69_sumout\,
	datae => \snythesizer|ALT_INV_Add0~77_sumout\,
	dataf => \snythesizer|ALT_INV_LessThan0~5_combout\,
	combout => \snythesizer|LessThan0~2_combout\);

-- Location: MLABCELL_X37_Y59_N57
\snythesizer|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|LessThan0~3_combout\ = ( \snythesizer|LessThan0~1_combout\ & ( \snythesizer|LessThan0~2_combout\ & ( (!\snythesizer|Add0~17_sumout\ & (((\snythesizer|Add0~13_sumout\) # (\snythesizer|Add0~5_sumout\)) # (\snythesizer|Add0~9_sumout\))) ) ) ) # 
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
	datab => \snythesizer|ALT_INV_Add0~5_sumout\,
	datac => \snythesizer|ALT_INV_Add0~13_sumout\,
	datad => \snythesizer|ALT_INV_Add0~17_sumout\,
	datae => \snythesizer|ALT_INV_LessThan0~1_combout\,
	dataf => \snythesizer|ALT_INV_LessThan0~2_combout\,
	combout => \snythesizer|LessThan0~3_combout\);

-- Location: FF_X37_Y60_N2
\snythesizer|counter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~1_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter[0]~DUPLICATE_q\);

-- Location: FF_X37_Y60_N8
\snythesizer|counter[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~121_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter[2]~DUPLICATE_q\);

-- Location: FF_X37_Y60_N4
\snythesizer|counter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~117_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter[1]~DUPLICATE_q\);

-- Location: FF_X37_Y60_N10
\snythesizer|counter[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~125_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter[3]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y60_N33
\snythesizer|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Mux11~0_combout\ = ( \snythesizer|counter[1]~DUPLICATE_q\ & ( \snythesizer|counter[3]~DUPLICATE_q\ & ( \snythesizer|counter[2]~DUPLICATE_q\ ) ) ) # ( !\snythesizer|counter[1]~DUPLICATE_q\ & ( \snythesizer|counter[3]~DUPLICATE_q\ & ( 
-- (!\snythesizer|counter[2]~DUPLICATE_q\) # (\snythesizer|counter[0]~DUPLICATE_q\) ) ) ) # ( \snythesizer|counter[1]~DUPLICATE_q\ & ( !\snythesizer|counter[3]~DUPLICATE_q\ & ( (\snythesizer|counter[2]~DUPLICATE_q\) # (\snythesizer|counter[0]~DUPLICATE_q\) ) 
-- ) ) # ( !\snythesizer|counter[1]~DUPLICATE_q\ & ( !\snythesizer|counter[3]~DUPLICATE_q\ & ( (!\snythesizer|counter[2]~DUPLICATE_q\) # (\snythesizer|counter[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101010101011111111111111111010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_counter[0]~DUPLICATE_q\,
	datad => \snythesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	datae => \snythesizer|ALT_INV_counter[1]~DUPLICATE_q\,
	dataf => \snythesizer|ALT_INV_counter[3]~DUPLICATE_q\,
	combout => \snythesizer|Mux11~0_combout\);

-- Location: FF_X36_Y60_N34
\snythesizer|output_p[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \snythesizer|Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output_p\(0));

-- Location: FF_X37_Y60_N1
\snythesizer|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \snythesizer|Add0~1_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(0));

-- Location: LABCELL_X46_Y60_N51
\snythesizer|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Mux10~0_combout\ = ( \snythesizer|counter\(0) & ( \snythesizer|counter[3]~DUPLICATE_q\ & ( (\snythesizer|counter[1]~DUPLICATE_q\ & \snythesizer|counter[2]~DUPLICATE_q\) ) ) ) # ( !\snythesizer|counter\(0) & ( 
-- \snythesizer|counter[3]~DUPLICATE_q\ ) ) # ( \snythesizer|counter\(0) & ( !\snythesizer|counter[3]~DUPLICATE_q\ & ( \snythesizer|counter[1]~DUPLICATE_q\ ) ) ) # ( !\snythesizer|counter\(0) & ( !\snythesizer|counter[3]~DUPLICATE_q\ & ( 
-- !\snythesizer|counter[1]~DUPLICATE_q\ $ (\snythesizer|counter[2]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011001100110011001111111111111111110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \snythesizer|ALT_INV_counter[1]~DUPLICATE_q\,
	datac => \snythesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	datae => \snythesizer|ALT_INV_counter\(0),
	dataf => \snythesizer|ALT_INV_counter[3]~DUPLICATE_q\,
	combout => \snythesizer|Mux10~0_combout\);

-- Location: FF_X46_Y60_N52
\snythesizer|output_p[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \snythesizer|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output_p\(1));

-- Location: LABCELL_X46_Y60_N6
\snythesizer|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Mux9~0_combout\ = ( \snythesizer|counter\(0) & ( \snythesizer|counter[3]~DUPLICATE_q\ & ( (!\snythesizer|counter[1]~DUPLICATE_q\) # (\snythesizer|counter[2]~DUPLICATE_q\) ) ) ) # ( !\snythesizer|counter\(0) & ( 
-- \snythesizer|counter[3]~DUPLICATE_q\ & ( !\snythesizer|counter[2]~DUPLICATE_q\ $ (!\snythesizer|counter[1]~DUPLICATE_q\) ) ) ) # ( \snythesizer|counter\(0) & ( !\snythesizer|counter[3]~DUPLICATE_q\ & ( \snythesizer|counter[1]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100110011110011001111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \snythesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	datad => \snythesizer|ALT_INV_counter[1]~DUPLICATE_q\,
	datae => \snythesizer|ALT_INV_counter\(0),
	dataf => \snythesizer|ALT_INV_counter[3]~DUPLICATE_q\,
	combout => \snythesizer|Mux9~0_combout\);

-- Location: FF_X46_Y60_N7
\snythesizer|output_p[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \snythesizer|Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output_p\(2));

-- Location: LABCELL_X36_Y60_N36
\snythesizer|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Mux8~0_combout\ = ( \snythesizer|counter[0]~DUPLICATE_q\ & ( \snythesizer|counter[3]~DUPLICATE_q\ & ( (!\snythesizer|counter[1]~DUPLICATE_q\) # (\snythesizer|counter[2]~DUPLICATE_q\) ) ) ) # ( !\snythesizer|counter[0]~DUPLICATE_q\ & ( 
-- \snythesizer|counter[3]~DUPLICATE_q\ & ( !\snythesizer|counter[2]~DUPLICATE_q\ $ (!\snythesizer|counter[1]~DUPLICATE_q\) ) ) ) # ( \snythesizer|counter[0]~DUPLICATE_q\ & ( !\snythesizer|counter[3]~DUPLICATE_q\ & ( \snythesizer|counter[1]~DUPLICATE_q\ ) ) 
-- ) # ( !\snythesizer|counter[0]~DUPLICATE_q\ & ( !\snythesizer|counter[3]~DUPLICATE_q\ & ( !\snythesizer|counter[2]~DUPLICATE_q\ $ (\snythesizer|counter[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101000011110000111101011010010110101111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	datac => \snythesizer|ALT_INV_counter[1]~DUPLICATE_q\,
	datae => \snythesizer|ALT_INV_counter[0]~DUPLICATE_q\,
	dataf => \snythesizer|ALT_INV_counter[3]~DUPLICATE_q\,
	combout => \snythesizer|Mux8~0_combout\);

-- Location: FF_X36_Y60_N52
\snythesizer|output_p[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	asdata => \snythesizer|Mux8~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output_p\(3));

-- Location: FF_X42_Y60_N52
\snythesizer|output_p[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	asdata => \snythesizer|Mux8~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output_p\(4));

-- Location: FF_X42_Y60_N22
\snythesizer|output_p[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	asdata => \snythesizer|Mux8~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output_p\(5));

-- Location: MLABCELL_X47_Y60_N12
\snythesizer|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Mux2~0_combout\ = ( \snythesizer|counter\(0) & ( \snythesizer|counter[3]~DUPLICATE_q\ & ( (!\snythesizer|counter[1]~DUPLICATE_q\) # (\snythesizer|counter[2]~DUPLICATE_q\) ) ) ) # ( \snythesizer|counter\(0) & ( 
-- !\snythesizer|counter[3]~DUPLICATE_q\ & ( \snythesizer|counter[1]~DUPLICATE_q\ ) ) ) # ( !\snythesizer|counter\(0) & ( !\snythesizer|counter[3]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001100110011001100000000000000001100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \snythesizer|ALT_INV_counter[1]~DUPLICATE_q\,
	datac => \snythesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	datae => \snythesizer|ALT_INV_counter\(0),
	dataf => \snythesizer|ALT_INV_counter[3]~DUPLICATE_q\,
	combout => \snythesizer|Mux2~0_combout\);

-- Location: FF_X47_Y60_N13
\snythesizer|output_p[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \snythesizer|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output_p\(6));

-- Location: MLABCELL_X47_Y60_N57
\snythesizer|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Mux7~0_combout\ = ( \snythesizer|counter\(0) & ( \snythesizer|counter[3]~DUPLICATE_q\ & ( (\snythesizer|counter[2]~DUPLICATE_q\ & \snythesizer|counter[1]~DUPLICATE_q\) ) ) ) # ( !\snythesizer|counter\(0) & ( 
-- \snythesizer|counter[3]~DUPLICATE_q\ & ( !\snythesizer|counter[2]~DUPLICATE_q\ $ (!\snythesizer|counter[1]~DUPLICATE_q\) ) ) ) # ( \snythesizer|counter\(0) & ( !\snythesizer|counter[3]~DUPLICATE_q\ ) ) # ( !\snythesizer|counter\(0) & ( 
-- !\snythesizer|counter[3]~DUPLICATE_q\ & ( !\snythesizer|counter[2]~DUPLICATE_q\ $ (\snythesizer|counter[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101111111111111111101011010010110100000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	datac => \snythesizer|ALT_INV_counter[1]~DUPLICATE_q\,
	datae => \snythesizer|ALT_INV_counter\(0),
	dataf => \snythesizer|ALT_INV_counter[3]~DUPLICATE_q\,
	combout => \snythesizer|Mux7~0_combout\);

-- Location: FF_X47_Y60_N58
\snythesizer|output_p[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \snythesizer|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output_p\(7));

-- Location: LABCELL_X36_Y60_N57
\snythesizer|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Mux6~0_combout\ = ( \snythesizer|counter[1]~DUPLICATE_q\ & ( \snythesizer|counter[3]~DUPLICATE_q\ & ( (!\snythesizer|counter[0]~DUPLICATE_q\) # (\snythesizer|counter[2]~DUPLICATE_q\) ) ) ) # ( !\snythesizer|counter[1]~DUPLICATE_q\ & ( 
-- \snythesizer|counter[3]~DUPLICATE_q\ ) ) # ( \snythesizer|counter[1]~DUPLICATE_q\ & ( !\snythesizer|counter[3]~DUPLICATE_q\ & ( \snythesizer|counter[0]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111111111111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_counter[0]~DUPLICATE_q\,
	datad => \snythesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	datae => \snythesizer|ALT_INV_counter[1]~DUPLICATE_q\,
	dataf => \snythesizer|ALT_INV_counter[3]~DUPLICATE_q\,
	combout => \snythesizer|Mux6~0_combout\);

-- Location: FF_X36_Y60_N59
\snythesizer|output_p[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \snythesizer|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output_p\(8));

-- Location: MLABCELL_X47_Y60_N36
\snythesizer|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Mux1~0_combout\ = ( \snythesizer|counter\(0) & ( \snythesizer|counter[3]~DUPLICATE_q\ & ( (\snythesizer|counter[1]~DUPLICATE_q\ & \snythesizer|counter[2]~DUPLICATE_q\) ) ) ) # ( !\snythesizer|counter\(0) & ( 
-- \snythesizer|counter[3]~DUPLICATE_q\ & ( !\snythesizer|counter[1]~DUPLICATE_q\ $ (\snythesizer|counter[2]~DUPLICATE_q\) ) ) ) # ( \snythesizer|counter\(0) & ( !\snythesizer|counter[3]~DUPLICATE_q\ ) ) # ( !\snythesizer|counter\(0) & ( 
-- !\snythesizer|counter[3]~DUPLICATE_q\ & ( !\snythesizer|counter[1]~DUPLICATE_q\ $ (!\snythesizer|counter[2]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100111111111111111111000011110000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \snythesizer|ALT_INV_counter[1]~DUPLICATE_q\,
	datac => \snythesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	datae => \snythesizer|ALT_INV_counter\(0),
	dataf => \snythesizer|ALT_INV_counter[3]~DUPLICATE_q\,
	combout => \snythesizer|Mux1~0_combout\);

-- Location: FF_X47_Y60_N40
\snythesizer|output_p[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	asdata => \snythesizer|Mux1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output_p\(9));

-- Location: LABCELL_X36_Y60_N27
\snythesizer|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Mux5~0_combout\ = ( \snythesizer|counter[1]~DUPLICATE_q\ & ( \snythesizer|counter[3]~DUPLICATE_q\ & ( \snythesizer|counter[2]~DUPLICATE_q\ ) ) ) # ( !\snythesizer|counter[1]~DUPLICATE_q\ & ( \snythesizer|counter[3]~DUPLICATE_q\ & ( 
-- (!\snythesizer|counter[2]~DUPLICATE_q\) # (\snythesizer|counter[0]~DUPLICATE_q\) ) ) ) # ( \snythesizer|counter[1]~DUPLICATE_q\ & ( !\snythesizer|counter[3]~DUPLICATE_q\ & ( (!\snythesizer|counter[2]~DUPLICATE_q\) # (\snythesizer|counter[0]~DUPLICATE_q\) 
-- ) ) ) # ( !\snythesizer|counter[1]~DUPLICATE_q\ & ( !\snythesizer|counter[3]~DUPLICATE_q\ & ( (!\snythesizer|counter[0]~DUPLICATE_q\ & \snythesizer|counter[2]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010111111110101010111111111010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_counter[0]~DUPLICATE_q\,
	datad => \snythesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	datae => \snythesizer|ALT_INV_counter[1]~DUPLICATE_q\,
	dataf => \snythesizer|ALT_INV_counter[3]~DUPLICATE_q\,
	combout => \snythesizer|Mux5~0_combout\);

-- Location: FF_X36_Y60_N28
\snythesizer|output_p[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \snythesizer|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output_p\(10));

-- Location: MLABCELL_X47_Y60_N42
\snythesizer|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Mux4~0_combout\ = ( \snythesizer|counter\(0) & ( \snythesizer|counter[3]~DUPLICATE_q\ & ( (\snythesizer|counter[1]~DUPLICATE_q\ & \snythesizer|counter[2]~DUPLICATE_q\) ) ) ) # ( !\snythesizer|counter\(0) & ( 
-- \snythesizer|counter[3]~DUPLICATE_q\ ) ) # ( \snythesizer|counter\(0) & ( !\snythesizer|counter[3]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \snythesizer|ALT_INV_counter[1]~DUPLICATE_q\,
	datac => \snythesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	datae => \snythesizer|ALT_INV_counter\(0),
	dataf => \snythesizer|ALT_INV_counter[3]~DUPLICATE_q\,
	combout => \snythesizer|Mux4~0_combout\);

-- Location: FF_X47_Y60_N43
\snythesizer|output_p[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \snythesizer|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output_p\(11));

-- Location: MLABCELL_X47_Y60_N24
\snythesizer|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Mux3~0_combout\ = ( \snythesizer|counter\(0) & ( \snythesizer|counter[3]~DUPLICATE_q\ & ( (\snythesizer|counter[1]~DUPLICATE_q\ & \snythesizer|counter[2]~DUPLICATE_q\) ) ) ) # ( \snythesizer|counter\(0) & ( 
-- !\snythesizer|counter[3]~DUPLICATE_q\ ) ) # ( !\snythesizer|counter\(0) & ( !\snythesizer|counter[3]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \snythesizer|ALT_INV_counter[1]~DUPLICATE_q\,
	datac => \snythesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	datae => \snythesizer|ALT_INV_counter\(0),
	dataf => \snythesizer|ALT_INV_counter[3]~DUPLICATE_q\,
	combout => \snythesizer|Mux3~0_combout\);

-- Location: FF_X47_Y60_N25
\snythesizer|output_p[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \snythesizer|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output_p\(12));

-- Location: LABCELL_X53_Y60_N39
\snythesizer|output_p[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|output_p[13]~feeder_combout\ = ( \snythesizer|Mux2~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \snythesizer|ALT_INV_Mux2~0_combout\,
	combout => \snythesizer|output_p[13]~feeder_combout\);

-- Location: FF_X53_Y60_N40
\snythesizer|output_p[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \snythesizer|output_p[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output_p\(13));

-- Location: FF_X47_Y60_N37
\snythesizer|output_p[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \snythesizer|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output_p\(14));

-- Location: MLABCELL_X47_Y60_N33
\snythesizer|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Mux0~0_combout\ = ( \snythesizer|counter\(0) & ( !\snythesizer|counter[3]~DUPLICATE_q\ & ( (!\snythesizer|counter[2]~DUPLICATE_q\) # (!\snythesizer|counter[1]~DUPLICATE_q\) ) ) ) # ( !\snythesizer|counter\(0) & ( 
-- !\snythesizer|counter[3]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110101111101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	datac => \snythesizer|ALT_INV_counter[1]~DUPLICATE_q\,
	datae => \snythesizer|ALT_INV_counter\(0),
	dataf => \snythesizer|ALT_INV_counter[3]~DUPLICATE_q\,
	combout => \snythesizer|Mux0~0_combout\);

-- Location: FF_X47_Y60_N34
\snythesizer|output_p[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \snythesizer|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output_p\(15));

-- Location: MLABCELL_X37_Y51_N48
\configurator|SDIO~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|SDIO~4_combout\ = ( \configurator|counter\(3) & ( (!\configurator|dataIndex\(1) & ((!\configurator|dataIndex\(2) & (\configurator|counter\(5))) # (\configurator|dataIndex\(2) & ((\configurator|counter\(1)))))) # (\configurator|dataIndex\(1) 
-- & (!\configurator|dataIndex\(2))) ) ) # ( !\configurator|counter\(3) & ( (!\configurator|dataIndex\(1) & ((!\configurator|dataIndex\(2) & (\configurator|counter\(5))) # (\configurator|dataIndex\(2) & ((\configurator|counter\(1)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001001100011011100100110001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(1),
	datab => \configurator|ALT_INV_dataIndex\(2),
	datac => \configurator|ALT_INV_counter\(5),
	datad => \configurator|ALT_INV_counter\(1),
	dataf => \configurator|ALT_INV_counter\(3),
	combout => \configurator|SDIO~4_combout\);

-- Location: LABCELL_X36_Y51_N57
\configurator|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|LessThan0~0_combout\ = ( !\configurator|dataIndex\(3) & ( (!\configurator|dataIndex\(4) & ((!\configurator|dataIndex\(0)) # ((!\configurator|dataIndex\(2)) # (!\configurator|dataIndex\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111000000000111111100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(0),
	datab => \configurator|ALT_INV_dataIndex\(2),
	datac => \configurator|ALT_INV_dataIndex\(1),
	datad => \configurator|ALT_INV_dataIndex\(4),
	dataf => \configurator|ALT_INV_dataIndex\(3),
	combout => \configurator|LessThan0~0_combout\);

-- Location: MLABCELL_X37_Y51_N27
\configurator|SDIO~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|SDIO~3_combout\ = ( \configurator|dataIndex\(1) & ( \configurator|counter\(0) & ( (\configurator|dataIndex\(2)) # (\configurator|counter\(4)) ) ) ) # ( !\configurator|dataIndex\(1) & ( \configurator|counter\(0) & ( 
-- (!\configurator|dataIndex\(2) & (\configurator|counter\(6))) # (\configurator|dataIndex\(2) & ((\configurator|counter\(2)))) ) ) ) # ( \configurator|dataIndex\(1) & ( !\configurator|counter\(0) & ( (\configurator|counter\(4) & 
-- !\configurator|dataIndex\(2)) ) ) ) # ( !\configurator|dataIndex\(1) & ( !\configurator|counter\(0) & ( (!\configurator|dataIndex\(2) & (\configurator|counter\(6))) # (\configurator|dataIndex\(2) & ((\configurator|counter\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111001100000011000001010000010111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(6),
	datab => \configurator|ALT_INV_counter\(4),
	datac => \configurator|ALT_INV_dataIndex\(2),
	datad => \configurator|ALT_INV_counter\(2),
	datae => \configurator|ALT_INV_dataIndex\(1),
	dataf => \configurator|ALT_INV_counter\(0),
	combout => \configurator|SDIO~3_combout\);

-- Location: MLABCELL_X37_Y51_N30
\configurator|SDIO~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|SDIO~5_combout\ = ( !\configurator|dataIndex\(0) & ( (\configurator|LessThan1~1_combout\ & (\configurator|outputClock~q\ & (\configurator|SDIO~3_combout\ & (\resetn~input_o\ & \configurator|LessThan0~0_combout\)))) ) ) # ( 
-- \configurator|dataIndex\(0) & ( (\configurator|LessThan1~1_combout\ & (\configurator|outputClock~q\ & (\configurator|SDIO~4_combout\ & (\resetn~input_o\ & \configurator|LessThan0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_LessThan1~1_combout\,
	datab => \configurator|ALT_INV_outputClock~q\,
	datac => \configurator|ALT_INV_SDIO~4_combout\,
	datad => \ALT_INV_resetn~input_o\,
	datae => \configurator|ALT_INV_dataIndex\(0),
	dataf => \configurator|ALT_INV_LessThan0~0_combout\,
	datag => \configurator|ALT_INV_SDIO~3_combout\,
	combout => \configurator|SDIO~5_combout\);

-- Location: LABCELL_X36_Y51_N33
\configurator|SDIO~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|SDIO~1_combout\ = ( \configurator|LessThan1~1_combout\ & ( \configurator|LessThan0~0_combout\ & ( (!\configurator|outputClock~q\ & (\configurator|SDIO~q\ & \resetn~input_o\)) ) ) ) # ( !\configurator|LessThan1~1_combout\ & ( 
-- \configurator|LessThan0~0_combout\ & ( (\configurator|SDIO~q\ & \resetn~input_o\) ) ) ) # ( \configurator|LessThan1~1_combout\ & ( !\configurator|LessThan0~0_combout\ & ( (\configurator|SDIO~q\ & (\resetn~input_o\ & ((!\configurator|outputClock~q\) # 
-- (\configurator|LessThan1~0_combout\)))) ) ) ) # ( !\configurator|LessThan1~1_combout\ & ( !\configurator|LessThan0~0_combout\ & ( (\configurator|SDIO~q\ & \resetn~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000010001100000000001100110000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_outputClock~q\,
	datab => \configurator|ALT_INV_SDIO~q\,
	datac => \configurator|ALT_INV_LessThan1~0_combout\,
	datad => \ALT_INV_resetn~input_o\,
	datae => \configurator|ALT_INV_LessThan1~1_combout\,
	dataf => \configurator|ALT_INV_LessThan0~0_combout\,
	combout => \configurator|SDIO~1_combout\);

-- Location: LABCELL_X36_Y51_N48
\configurator|SDIO~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|SDIO~0_combout\ = ( !\configurator|LessThan0~0_combout\ & ( (\resetn~input_o\ & (\configurator|outputClock~q\ & (\configurator|LessThan1~1_combout\ & !\configurator|LessThan1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetn~input_o\,
	datab => \configurator|ALT_INV_outputClock~q\,
	datac => \configurator|ALT_INV_LessThan1~1_combout\,
	datad => \configurator|ALT_INV_LessThan1~0_combout\,
	dataf => \configurator|ALT_INV_LessThan0~0_combout\,
	combout => \configurator|SDIO~0_combout\);

-- Location: LABCELL_X38_Y51_N6
\configurator|Mux1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~13_combout\ = ( \configurator|counter\(0) & ( \configurator|dataIndex\(3) & ( (!\configurator|dataIndex\(0) & ((!\configurator|counter\(1) & (\configurator|dataIndex\(2) & !\configurator|dataIndex\(1))) # (\configurator|counter\(1) & 
-- ((\configurator|dataIndex\(1)))))) ) ) ) # ( !\configurator|counter\(0) & ( \configurator|dataIndex\(3) & ( (\configurator|counter\(1) & (!\configurator|dataIndex\(0) & \configurator|dataIndex\(1))) ) ) ) # ( \configurator|counter\(0) & ( 
-- !\configurator|dataIndex\(3) & ( (!\configurator|dataIndex\(0) & (!\configurator|dataIndex\(2) & !\configurator|dataIndex\(1))) ) ) ) # ( !\configurator|counter\(0) & ( !\configurator|dataIndex\(3) & ( (\configurator|counter\(1) & 
-- ((!\configurator|dataIndex\(0) & ((\configurator|dataIndex\(1)))) # (\configurator|dataIndex\(0) & (!\configurator|dataIndex\(2) & !\configurator|dataIndex\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001000100110000000000000000000000010001000000100001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(1),
	datab => \configurator|ALT_INV_dataIndex\(0),
	datac => \configurator|ALT_INV_dataIndex\(2),
	datad => \configurator|ALT_INV_dataIndex\(1),
	datae => \configurator|ALT_INV_counter\(0),
	dataf => \configurator|ALT_INV_dataIndex\(3),
	combout => \configurator|Mux1~13_combout\);

-- Location: LABCELL_X38_Y51_N24
\configurator|Mux1~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~10_combout\ = ( \configurator|Mux1~13_combout\ & ( (\configurator|counter\(3) & (!\configurator|counter\(2) $ (((\configurator|counter\(1) & !\configurator|dataIndex\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001011000001000000101100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(1),
	datab => \configurator|ALT_INV_dataIndex\(0),
	datac => \configurator|ALT_INV_counter\(3),
	datad => \configurator|ALT_INV_counter\(2),
	dataf => \configurator|ALT_INV_Mux1~13_combout\,
	combout => \configurator|Mux1~10_combout\);

-- Location: LABCELL_X38_Y51_N3
\configurator|Mux1~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~11_combout\ = ( !\configurator|counter\(0) & ( !\configurator|counter\(2) & ( (!\configurator|counter\(1) & !\configurator|counter\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(1),
	datad => \configurator|ALT_INV_counter\(3),
	datae => \configurator|ALT_INV_counter\(0),
	dataf => \configurator|ALT_INV_counter\(2),
	combout => \configurator|Mux1~11_combout\);

-- Location: MLABCELL_X37_Y51_N36
\configurator|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~0_combout\ = ( \configurator|dataIndex\(0) & ( \configurator|counter\(1) & ( (!\configurator|counter\(2) & (!\configurator|dataIndex\(1) & (\configurator|dataIndex\(3) & !\configurator|dataIndex\(2)))) ) ) ) # ( 
-- !\configurator|dataIndex\(0) & ( \configurator|counter\(1) & ( (!\configurator|counter\(2) & (\configurator|dataIndex\(3) & !\configurator|dataIndex\(2))) ) ) ) # ( \configurator|dataIndex\(0) & ( !\configurator|counter\(1) & ( (!\configurator|counter\(2) 
-- & (\configurator|dataIndex\(1) & (!\configurator|dataIndex\(3) $ (\configurator|dataIndex\(2))))) ) ) ) # ( !\configurator|dataIndex\(0) & ( !\configurator|counter\(1) & ( (!\configurator|counter\(2) & ((!\configurator|dataIndex\(1) & 
-- ((\configurator|dataIndex\(2)))) # (\configurator|dataIndex\(1) & (!\configurator|dataIndex\(3) & !\configurator|dataIndex\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010001000001000000000001000001010000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(2),
	datab => \configurator|ALT_INV_dataIndex\(1),
	datac => \configurator|ALT_INV_dataIndex\(3),
	datad => \configurator|ALT_INV_dataIndex\(2),
	datae => \configurator|ALT_INV_dataIndex\(0),
	dataf => \configurator|ALT_INV_counter\(1),
	combout => \configurator|Mux1~0_combout\);

-- Location: MLABCELL_X37_Y51_N54
\configurator|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~2_combout\ = ( !\configurator|dataIndex\(1) & ( (\configurator|counter\(2) & (\configurator|dataIndex\(2) & (\configurator|dataIndex\(3) & !\configurator|dataIndex\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(2),
	datab => \configurator|ALT_INV_dataIndex\(2),
	datac => \configurator|ALT_INV_dataIndex\(3),
	datad => \configurator|ALT_INV_dataIndex\(0),
	dataf => \configurator|ALT_INV_dataIndex\(1),
	combout => \configurator|Mux1~2_combout\);

-- Location: LABCELL_X38_Y51_N57
\configurator|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~1_combout\ = ( \configurator|dataIndex\(3) & ( \configurator|counter\(2) & ( \configurator|counter\(1) ) ) ) # ( !\configurator|dataIndex\(3) & ( \configurator|counter\(2) & ( \configurator|counter\(1) ) ) ) # ( 
-- \configurator|dataIndex\(3) & ( !\configurator|counter\(2) & ( (!\configurator|counter\(1) & (!\configurator|dataIndex\(1) & (!\configurator|dataIndex\(0) & \configurator|dataIndex\(2)))) # (\configurator|counter\(1) & (!\configurator|dataIndex\(2) & 
-- ((!\configurator|dataIndex\(1)) # (!\configurator|dataIndex\(0))))) ) ) ) # ( !\configurator|dataIndex\(3) & ( !\configurator|counter\(2) & ( (!\configurator|dataIndex\(1) & (!\configurator|counter\(1) & ((\configurator|dataIndex\(2))))) # 
-- (\configurator|dataIndex\(1) & (\configurator|dataIndex\(0) & (!\configurator|counter\(1) $ (\configurator|dataIndex\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001001010101001000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(1),
	datab => \configurator|ALT_INV_dataIndex\(1),
	datac => \configurator|ALT_INV_dataIndex\(0),
	datad => \configurator|ALT_INV_dataIndex\(2),
	datae => \configurator|ALT_INV_dataIndex\(3),
	dataf => \configurator|ALT_INV_counter\(2),
	combout => \configurator|Mux1~1_combout\);

-- Location: LABCELL_X38_Y51_N12
\configurator|Mux1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~3_combout\ = ( !\configurator|dataIndex\(0) & ( \configurator|counter\(2) & ( (!\configurator|dataIndex\(1) & (\configurator|dataIndex\(2) & \configurator|dataIndex\(3))) ) ) ) # ( \configurator|dataIndex\(0) & ( 
-- !\configurator|counter\(2) & ( (!\configurator|counter\(1) & (\configurator|dataIndex\(1) & (\configurator|dataIndex\(2) & !\configurator|dataIndex\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(1),
	datab => \configurator|ALT_INV_dataIndex\(1),
	datac => \configurator|ALT_INV_dataIndex\(2),
	datad => \configurator|ALT_INV_dataIndex\(3),
	datae => \configurator|ALT_INV_dataIndex\(0),
	dataf => \configurator|ALT_INV_counter\(2),
	combout => \configurator|Mux1~3_combout\);

-- Location: MLABCELL_X37_Y51_N0
\configurator|Mux1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~4_combout\ = ( \configurator|Mux1~1_combout\ & ( \configurator|Mux1~3_combout\ & ( ((!\configurator|counter\(3) & (\configurator|Mux1~0_combout\)) # (\configurator|counter\(3) & ((\configurator|Mux1~2_combout\)))) # 
-- (\configurator|counter\(0)) ) ) ) # ( !\configurator|Mux1~1_combout\ & ( \configurator|Mux1~3_combout\ & ( (!\configurator|counter\(3) & (\configurator|Mux1~0_combout\ & ((!\configurator|counter\(0))))) # (\configurator|counter\(3) & 
-- (((\configurator|counter\(0)) # (\configurator|Mux1~2_combout\)))) ) ) ) # ( \configurator|Mux1~1_combout\ & ( !\configurator|Mux1~3_combout\ & ( (!\configurator|counter\(3) & (((\configurator|counter\(0))) # (\configurator|Mux1~0_combout\))) # 
-- (\configurator|counter\(3) & (((\configurator|Mux1~2_combout\ & !\configurator|counter\(0))))) ) ) ) # ( !\configurator|Mux1~1_combout\ & ( !\configurator|Mux1~3_combout\ & ( (!\configurator|counter\(0) & ((!\configurator|counter\(3) & 
-- (\configurator|Mux1~0_combout\)) # (\configurator|counter\(3) & ((\configurator|Mux1~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001111100110001000111001100110100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_Mux1~0_combout\,
	datab => \configurator|ALT_INV_counter\(3),
	datac => \configurator|ALT_INV_Mux1~2_combout\,
	datad => \configurator|ALT_INV_counter\(0),
	datae => \configurator|ALT_INV_Mux1~1_combout\,
	dataf => \configurator|ALT_INV_Mux1~3_combout\,
	combout => \configurator|Mux1~4_combout\);

-- Location: LABCELL_X36_Y51_N39
\configurator|Mux1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~5_combout\ = ( \configurator|dataIndex\(3) & ( \configurator|counter\(0) & ( (\configurator|counter\(2) & ((!\configurator|dataIndex\(2)) # ((!\configurator|dataIndex\(1) & \configurator|dataIndex\(0))))) ) ) ) # ( 
-- !\configurator|dataIndex\(3) & ( \configurator|counter\(0) & ( (\configurator|counter\(2) & ((!\configurator|dataIndex\(2)) # ((!\configurator|dataIndex\(1) & \configurator|dataIndex\(0))))) ) ) ) # ( \configurator|dataIndex\(3) & ( 
-- !\configurator|counter\(0) & ( (!\configurator|dataIndex\(1) & (!\configurator|counter\(2) & (!\configurator|dataIndex\(2) $ (!\configurator|dataIndex\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010001000000000110000001100100011000000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(1),
	datab => \configurator|ALT_INV_counter\(2),
	datac => \configurator|ALT_INV_dataIndex\(2),
	datad => \configurator|ALT_INV_dataIndex\(0),
	datae => \configurator|ALT_INV_dataIndex\(3),
	dataf => \configurator|ALT_INV_counter\(0),
	combout => \configurator|Mux1~5_combout\);

-- Location: MLABCELL_X37_Y51_N57
\configurator|Mux1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~7_combout\ = ( \configurator|counter\(0) & ( (\configurator|counter\(2) & (!\configurator|dataIndex\(0) & ((\configurator|dataIndex\(1)) # (\configurator|dataIndex\(2))))) ) ) # ( !\configurator|counter\(0) & ( 
-- (!\configurator|counter\(2) & (!\configurator|dataIndex\(1) $ (((\configurator|dataIndex\(2) & \configurator|dataIndex\(0)))))) # (\configurator|counter\(2) & ((!\configurator|dataIndex\(2) & (!\configurator|dataIndex\(0) $ (\configurator|dataIndex\(1)))) 
-- # (\configurator|dataIndex\(2) & (!\configurator|dataIndex\(0) & \configurator|dataIndex\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100000010110111010000001011000010000010100000001000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(2),
	datab => \configurator|ALT_INV_dataIndex\(2),
	datac => \configurator|ALT_INV_dataIndex\(0),
	datad => \configurator|ALT_INV_dataIndex\(1),
	dataf => \configurator|ALT_INV_counter\(0),
	combout => \configurator|Mux1~7_combout\);

-- Location: MLABCELL_X37_Y51_N21
\configurator|Mux1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~6_combout\ = ( \configurator|dataIndex\(1) & ( \configurator|dataIndex\(3) & ( (!\configurator|dataIndex\(2) & (!\configurator|counter\(2) & ((\configurator|counter\(0))))) # (\configurator|dataIndex\(2) & (!\configurator|counter\(0) & 
-- (!\configurator|counter\(2) $ (\configurator|dataIndex\(0))))) ) ) ) # ( !\configurator|dataIndex\(1) & ( \configurator|dataIndex\(3) & ( (!\configurator|dataIndex\(0) & (((!\configurator|counter\(0))))) # (\configurator|dataIndex\(0) & 
-- (\configurator|dataIndex\(2) & (!\configurator|counter\(2) $ (!\configurator|counter\(0))))) ) ) ) # ( \configurator|dataIndex\(1) & ( !\configurator|dataIndex\(3) & ( (!\configurator|dataIndex\(2) & (!\configurator|counter\(2) & 
-- ((\configurator|counter\(0))))) # (\configurator|dataIndex\(2) & (!\configurator|counter\(0) & (!\configurator|counter\(2) $ (\configurator|dataIndex\(0))))) ) ) ) # ( !\configurator|dataIndex\(1) & ( !\configurator|dataIndex\(3) & ( 
-- (!\configurator|dataIndex\(0) & ((!\configurator|counter\(0)) # ((\configurator|counter\(2) & \configurator|dataIndex\(2))))) # (\configurator|dataIndex\(0) & (\configurator|dataIndex\(2) & (!\configurator|counter\(2) $ (!\configurator|counter\(0))))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110100000110000010011010000011001101000000100000100110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(2),
	datab => \configurator|ALT_INV_dataIndex\(0),
	datac => \configurator|ALT_INV_dataIndex\(2),
	datad => \configurator|ALT_INV_counter\(0),
	datae => \configurator|ALT_INV_dataIndex\(1),
	dataf => \configurator|ALT_INV_dataIndex\(3),
	combout => \configurator|Mux1~6_combout\);

-- Location: MLABCELL_X37_Y51_N51
\configurator|Mux1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~8_combout\ = ( \configurator|counter\(0) & ( (\configurator|dataIndex\(0) & !\configurator|counter\(2)) ) ) # ( !\configurator|counter\(0) & ( (!\configurator|counter\(2) & ((!\configurator|dataIndex\(1) & (\configurator|dataIndex\(2))) 
-- # (\configurator|dataIndex\(1) & (!\configurator|dataIndex\(2) & !\configurator|dataIndex\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001000000000011000100000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(1),
	datab => \configurator|ALT_INV_dataIndex\(2),
	datac => \configurator|ALT_INV_dataIndex\(0),
	datad => \configurator|ALT_INV_counter\(2),
	dataf => \configurator|ALT_INV_counter\(0),
	combout => \configurator|Mux1~8_combout\);

-- Location: MLABCELL_X37_Y51_N9
\configurator|Mux1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~9_combout\ = ( \configurator|Mux1~6_combout\ & ( \configurator|Mux1~8_combout\ & ( ((!\configurator|counter\(1) & (\configurator|Mux1~5_combout\)) # (\configurator|counter\(1) & ((!\configurator|Mux1~7_combout\)))) # 
-- (\configurator|counter\(3)) ) ) ) # ( !\configurator|Mux1~6_combout\ & ( \configurator|Mux1~8_combout\ & ( (!\configurator|counter\(3) & ((!\configurator|counter\(1) & (\configurator|Mux1~5_combout\)) # (\configurator|counter\(1) & 
-- ((!\configurator|Mux1~7_combout\))))) # (\configurator|counter\(3) & (((\configurator|counter\(1))))) ) ) ) # ( \configurator|Mux1~6_combout\ & ( !\configurator|Mux1~8_combout\ & ( (!\configurator|counter\(3) & ((!\configurator|counter\(1) & 
-- (\configurator|Mux1~5_combout\)) # (\configurator|counter\(1) & ((!\configurator|Mux1~7_combout\))))) # (\configurator|counter\(3) & (((!\configurator|counter\(1))))) ) ) ) # ( !\configurator|Mux1~6_combout\ & ( !\configurator|Mux1~8_combout\ & ( 
-- (!\configurator|counter\(3) & ((!\configurator|counter\(1) & (\configurator|Mux1~5_combout\)) # (\configurator|counter\(1) & ((!\configurator|Mux1~7_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010100000011101111010000000100010111101010111011111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(3),
	datab => \configurator|ALT_INV_Mux1~5_combout\,
	datac => \configurator|ALT_INV_Mux1~7_combout\,
	datad => \configurator|ALT_INV_counter\(1),
	datae => \configurator|ALT_INV_Mux1~6_combout\,
	dataf => \configurator|ALT_INV_Mux1~8_combout\,
	combout => \configurator|Mux1~9_combout\);

-- Location: MLABCELL_X37_Y51_N15
\configurator|Mux1~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~12_combout\ = ( \configurator|Mux1~4_combout\ & ( \configurator|Mux1~9_combout\ & ( (!\configurator|counter\(4)) # ((!\configurator|counter\(5) & (\configurator|Mux1~10_combout\)) # (\configurator|counter\(5) & 
-- ((\configurator|Mux1~11_combout\)))) ) ) ) # ( !\configurator|Mux1~4_combout\ & ( \configurator|Mux1~9_combout\ & ( (!\configurator|counter\(4) & (((\configurator|counter\(5))))) # (\configurator|counter\(4) & ((!\configurator|counter\(5) & 
-- (\configurator|Mux1~10_combout\)) # (\configurator|counter\(5) & ((\configurator|Mux1~11_combout\))))) ) ) ) # ( \configurator|Mux1~4_combout\ & ( !\configurator|Mux1~9_combout\ & ( (!\configurator|counter\(4) & (((!\configurator|counter\(5))))) # 
-- (\configurator|counter\(4) & ((!\configurator|counter\(5) & (\configurator|Mux1~10_combout\)) # (\configurator|counter\(5) & ((\configurator|Mux1~11_combout\))))) ) ) ) # ( !\configurator|Mux1~4_combout\ & ( !\configurator|Mux1~9_combout\ & ( 
-- (\configurator|counter\(4) & ((!\configurator|counter\(5) & (\configurator|Mux1~10_combout\)) # (\configurator|counter\(5) & ((\configurator|Mux1~11_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101101100001011010100011010000111111011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(4),
	datab => \configurator|ALT_INV_Mux1~10_combout\,
	datac => \configurator|ALT_INV_counter\(5),
	datad => \configurator|ALT_INV_Mux1~11_combout\,
	datae => \configurator|ALT_INV_Mux1~4_combout\,
	dataf => \configurator|ALT_INV_Mux1~9_combout\,
	combout => \configurator|Mux1~12_combout\);

-- Location: MLABCELL_X37_Y51_N42
\configurator|SDIO~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|SDIO~2_combout\ = ( \configurator|Mux1~12_combout\ & ( (((\configurator|SDIO~0_combout\) # (\configurator|SDIO~1_combout\)) # (\configurator|SDIO~5_combout\)) # (\configurator|discarding~q\) ) ) # ( !\configurator|Mux1~12_combout\ & ( 
-- ((\configurator|SDIO~1_combout\) # (\configurator|SDIO~5_combout\)) # (\configurator|discarding~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111101111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_discarding~q\,
	datab => \configurator|ALT_INV_SDIO~5_combout\,
	datac => \configurator|ALT_INV_SDIO~1_combout\,
	datad => \configurator|ALT_INV_SDIO~0_combout\,
	dataf => \configurator|ALT_INV_Mux1~12_combout\,
	combout => \configurator|SDIO~2_combout\);

-- Location: FF_X37_Y51_N44
\configurator|SDIO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	d => \configurator|SDIO~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|SDIO~q\);

-- Location: LABCELL_X35_Y52_N9
\configurator|CLKRECEIVED~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|CLKRECEIVED~0_combout\ = ( \resetn~input_o\ & ( \configurator|internalClock~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_internalClock~q\,
	dataf => \ALT_INV_resetn~input_o\,
	combout => \configurator|CLKRECEIVED~0_combout\);

-- Location: LABCELL_X35_Y52_N21
\configurator|writeConfigReceived~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|writeConfigReceived~0_combout\ = (!\resetn~input_o\) # (\writeconfig~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111101010101111111110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetn~input_o\,
	datad => \ALT_INV_writeconfig~input_o\,
	combout => \configurator|writeConfigReceived~0_combout\);

-- Location: LABCELL_X36_Y52_N48
\configurator|stateRegOut[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|stateRegOut[0]~3_combout\ = ( \configurator|state.INTER~q\ ) # ( !\configurator|state.INTER~q\ & ( (!\resetn~input_o\) # (\configurator|state.DISCARD~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_state.DISCARD~q\,
	datab => \ALT_INV_resetn~input_o\,
	dataf => \configurator|ALT_INV_state.INTER~q\,
	combout => \configurator|stateRegOut[0]~3_combout\);

-- Location: LABCELL_X35_Y52_N27
\configurator|stateRegOut[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|stateRegOut[1]~4_combout\ = ( \configurator|state.SEND~q\ ) # ( !\configurator|state.SEND~q\ & ( !\resetn~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetn~input_o\,
	dataf => \configurator|ALT_INV_state.SEND~q\,
	combout => \configurator|stateRegOut[1]~4_combout\);

-- Location: LABCELL_X35_Y52_N6
\configurator|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Selector3~0_combout\ = ( \configurator|configOK~reg0_q\ & ( (!\writeconfig~input_o\ & ((\configurator|state.SEND~q\) # (\configurator|state.DONE~q\))) ) ) # ( !\configurator|configOK~reg0_q\ & ( (\configurator|state.DONE~q\ & 
-- !\writeconfig~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001110000011100000111000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_state.DONE~q\,
	datab => \configurator|ALT_INV_state.SEND~q\,
	datac => \ALT_INV_writeconfig~input_o\,
	dataf => \configurator|ALT_INV_configOK~reg0_q\,
	combout => \configurator|Selector3~0_combout\);

-- Location: FF_X35_Y52_N8
\configurator|nextState.DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	d => \configurator|Selector3~0_combout\,
	sclr => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|nextState.DONE~q\);

-- Location: LABCELL_X35_Y52_N24
\configurator|state~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|state~12_combout\ = (\resetn~input_o\ & \configurator|nextState.DONE~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetn~input_o\,
	datab => \configurator|ALT_INV_nextState.DONE~q\,
	combout => \configurator|state~12_combout\);

-- Location: FF_X35_Y52_N26
\configurator|state.DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	d => \configurator|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|state.DONE~q\);

-- Location: LABCELL_X35_Y52_N18
\configurator|stateRegOut[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|stateRegOut[2]~5_combout\ = ( \configurator|state.INTER~q\ ) # ( !\configurator|state.INTER~q\ & ( (!\resetn~input_o\) # (\configurator|state.DONE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111010111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetn~input_o\,
	datac => \configurator|ALT_INV_state.DONE~q\,
	dataf => \configurator|ALT_INV_state.INTER~q\,
	combout => \configurator|stateRegOut[2]~5_combout\);

-- Location: LABCELL_X35_Y52_N57
\configurator|nextStateRegOut[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|nextStateRegOut[0]~3_combout\ = ( \configurator|nextState.INTER~q\ ) # ( !\configurator|nextState.INTER~q\ & ( (!\resetn~input_o\) # (\configurator|nextState.DISCARD~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111110011001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_resetn~input_o\,
	datad => \configurator|ALT_INV_nextState.DISCARD~q\,
	dataf => \configurator|ALT_INV_nextState.INTER~q\,
	combout => \configurator|nextStateRegOut[0]~3_combout\);

-- Location: LABCELL_X35_Y52_N36
\configurator|nextStateRegOut[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|nextStateRegOut[1]~4_combout\ = (!\resetn~input_o\) # (\configurator|nextState.SEND~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetn~input_o\,
	datab => \configurator|ALT_INV_nextState.SEND~q\,
	combout => \configurator|nextStateRegOut[1]~4_combout\);

-- Location: LABCELL_X35_Y52_N45
\configurator|nextStateRegOut[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|nextStateRegOut[2]~5_combout\ = ( \configurator|nextState.DONE~q\ ) # ( !\configurator|nextState.DONE~q\ & ( (!\resetn~input_o\) # (\configurator|nextState.INTER~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_resetn~input_o\,
	datac => \configurator|ALT_INV_nextState.INTER~q\,
	dataf => \configurator|ALT_INV_nextState.DONE~q\,
	combout => \configurator|nextStateRegOut[2]~5_combout\);

-- Location: IOIBUF_X21_Y61_N52
\clockBuffOut[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clockBuffOut(0),
	o => \clockBuffOut[0]~input_o\);

-- Location: IOIBUF_X19_Y61_N1
\clockBuffOut[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clockBuffOut(1),
	o => \clockBuffOut[1]~input_o\);

-- Location: IOIBUF_X19_Y61_N18
\clockBuffOut[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clockBuffOut(2),
	o => \clockBuffOut[2]~input_o\);

-- Location: IOIBUF_X68_Y14_N44
\sclk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sclk,
	o => \sclk~input_o\);

-- Location: IOIBUF_X68_Y40_N44
\sdenb~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sdenb,
	o => \sdenb~input_o\);

-- Location: IOIBUF_X10_Y61_N41
\configok~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_configok,
	o => \configok~input_o\);

-- Location: IOIBUF_X10_Y61_N75
\discardBuffer~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_discardBuffer,
	o => \discardBuffer~input_o\);

-- Location: LABCELL_X46_Y44_N3
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


