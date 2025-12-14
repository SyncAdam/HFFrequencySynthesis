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

-- DATE "12/14/2025 13:44:30"

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
	output : BUFFER std_logic_vector(15 DOWNTO 0);
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
-- output[0]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[7]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[8]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[9]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[10]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[11]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[12]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[13]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[14]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[15]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- sdenb	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_output : std_logic_vector(15 DOWNTO 0);
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
SIGNAL \configurator|Add4~1_sumout\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \configurator|Add4~2\ : std_logic;
SIGNAL \configurator|Add4~9_sumout\ : std_logic;
SIGNAL \configurator|Add4~10\ : std_logic;
SIGNAL \configurator|Add4~29_sumout\ : std_logic;
SIGNAL \configurator|Add4~30\ : std_logic;
SIGNAL \configurator|Add4~33_sumout\ : std_logic;
SIGNAL \configurator|Add4~34\ : std_logic;
SIGNAL \configurator|Add4~37_sumout\ : std_logic;
SIGNAL \configurator|Add4~38\ : std_logic;
SIGNAL \configurator|Add4~41_sumout\ : std_logic;
SIGNAL \configurator|Add4~42\ : std_logic;
SIGNAL \configurator|Add4~45_sumout\ : std_logic;
SIGNAL \configurator|Add4~46\ : std_logic;
SIGNAL \configurator|Add4~5_sumout\ : std_logic;
SIGNAL \configurator|Equal0~1_combout\ : std_logic;
SIGNAL \configurator|Add4~6\ : std_logic;
SIGNAL \configurator|Add4~25_sumout\ : std_logic;
SIGNAL \configurator|Add4~26\ : std_logic;
SIGNAL \configurator|Add4~21_sumout\ : std_logic;
SIGNAL \configurator|Add4~22\ : std_logic;
SIGNAL \configurator|Add4~17_sumout\ : std_logic;
SIGNAL \configurator|Add4~18\ : std_logic;
SIGNAL \configurator|Add4~13_sumout\ : std_logic;
SIGNAL \configurator|Equal0~0_combout\ : std_logic;
SIGNAL \configurator|clockDividerBuffer[1]~0_combout\ : std_logic;
SIGNAL \configurator|internalClock~0_combout\ : std_logic;
SIGNAL \configurator|internalClock~q\ : std_logic;
SIGNAL \configurator|Add3~1_sumout\ : std_logic;
SIGNAL \configurator|counter[6]~0_combout\ : std_logic;
SIGNAL \configurator|Add2~29_sumout\ : std_logic;
SIGNAL \configurator|Add2~10\ : std_logic;
SIGNAL \configurator|Add2~5_sumout\ : std_logic;
SIGNAL \configurator|dataIndex[2]~1_combout\ : std_logic;
SIGNAL \configurator|Add2~6\ : std_logic;
SIGNAL \configurator|Add2~1_sumout\ : std_logic;
SIGNAL \configurator|Add2~2\ : std_logic;
SIGNAL \configurator|Add2~25_sumout\ : std_logic;
SIGNAL \configurator|Add2~26\ : std_logic;
SIGNAL \configurator|Add2~21_sumout\ : std_logic;
SIGNAL \configurator|Add2~22\ : std_logic;
SIGNAL \configurator|Add2~17_sumout\ : std_logic;
SIGNAL \configurator|LessThan0~0_combout\ : std_logic;
SIGNAL \configurator|dataIndex[2]~0_combout\ : std_logic;
SIGNAL \configurator|Add2~30\ : std_logic;
SIGNAL \configurator|Add2~13_sumout\ : std_logic;
SIGNAL \configurator|Add2~14\ : std_logic;
SIGNAL \configurator|Add2~9_sumout\ : std_logic;
SIGNAL \configurator|LessThan1~0_combout\ : std_logic;
SIGNAL \configurator|counter[6]~1_combout\ : std_logic;
SIGNAL \configurator|Add3~2\ : std_logic;
SIGNAL \configurator|Add3~5_sumout\ : std_logic;
SIGNAL \configurator|Add3~6\ : std_logic;
SIGNAL \configurator|Add3~17_sumout\ : std_logic;
SIGNAL \configurator|Add3~18\ : std_logic;
SIGNAL \configurator|Add3~21_sumout\ : std_logic;
SIGNAL \configurator|Add3~22\ : std_logic;
SIGNAL \configurator|Add3~9_sumout\ : std_logic;
SIGNAL \configurator|Add3~10\ : std_logic;
SIGNAL \configurator|Add3~13_sumout\ : std_logic;
SIGNAL \configurator|Add3~14\ : std_logic;
SIGNAL \configurator|Add3~25_sumout\ : std_logic;
SIGNAL \configurator|counter[6]~2_combout\ : std_logic;
SIGNAL \configurator|configOK~0_combout\ : std_logic;
SIGNAL \configurator|configOK~reg0feeder_combout\ : std_logic;
SIGNAL \configurator|configOK~reg0_q\ : std_logic;
SIGNAL \writeconfig~input_o\ : std_logic;
SIGNAL \configurator|waiting~0_combout\ : std_logic;
SIGNAL \configurator|waiting~q\ : std_logic;
SIGNAL \configurator|waitingBuffer~3_combout\ : std_logic;
SIGNAL \configurator|waitingBuffer[3]~1_combout\ : std_logic;
SIGNAL \configurator|waitingBuffer~2_combout\ : std_logic;
SIGNAL \configurator|waitingBuffer~0_combout\ : std_logic;
SIGNAL \configurator|waitingDone~0_combout\ : std_logic;
SIGNAL \configurator|waitingDone~q\ : std_logic;
SIGNAL \configurator|Selector1~0_combout\ : std_logic;
SIGNAL \configurator|nextState.INTER~q\ : std_logic;
SIGNAL \configurator|state~9_combout\ : std_logic;
SIGNAL \configurator|state.INTER~q\ : std_logic;
SIGNAL \configurator|discardBuffer~0_combout\ : std_logic;
SIGNAL \configurator|discardBuffer~reg0feeder_combout\ : std_logic;
SIGNAL \configurator|discardBuffer~reg0DUPLICATE_q\ : std_logic;
SIGNAL \configurator|discarded~0_combout\ : std_logic;
SIGNAL \configurator|discarded~feeder_combout\ : std_logic;
SIGNAL \configurator|discarded~q\ : std_logic;
SIGNAL \configurator|nextState~7_combout\ : std_logic;
SIGNAL \configurator|nextState.IDLE~q\ : std_logic;
SIGNAL \configurator|state~13_combout\ : std_logic;
SIGNAL \configurator|state.IDLE~q\ : std_logic;
SIGNAL \configurator|Selector2~0_combout\ : std_logic;
SIGNAL \configurator|nextState.DISCARD~q\ : std_logic;
SIGNAL \configurator|state~10_combout\ : std_logic;
SIGNAL \configurator|state.DISCARD~q\ : std_logic;
SIGNAL \configurator|discarding~0_combout\ : std_logic;
SIGNAL \configurator|discarding~q\ : std_logic;
SIGNAL \configurator|needWait~0_combout\ : std_logic;
SIGNAL \configurator|needWait~feeder_combout\ : std_logic;
SIGNAL \configurator|needWait~q\ : std_logic;
SIGNAL \configurator|Selector0~0_combout\ : std_logic;
SIGNAL \configurator|nextState.SEND~q\ : std_logic;
SIGNAL \configurator|state~11_combout\ : std_logic;
SIGNAL \configurator|state.SEND~q\ : std_logic;
SIGNAL \configurator|sendData~0_combout\ : std_logic;
SIGNAL \configurator|outputClock~q\ : std_logic;
SIGNAL \configurator|SCLK~0_combout\ : std_logic;
SIGNAL \configurator|SDENB~0_combout\ : std_logic;
SIGNAL \configurator|SDENB~reg0_q\ : std_logic;
SIGNAL \configurator|discardBuffer~reg0_q\ : std_logic;
SIGNAL \configurator|Mux0~0_combout\ : std_logic;
SIGNAL \configurator|SDIO~4_combout\ : std_logic;
SIGNAL \configurator|LessThan0~1_combout\ : std_logic;
SIGNAL \configurator|Mux1~1_combout\ : std_logic;
SIGNAL \configurator|Mux1~0_combout\ : std_logic;
SIGNAL \configurator|SDIO~0_combout\ : std_logic;
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
SIGNAL \configurator|dataIndex\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \configurator|counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \configurator|clockDividerBuffer\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \configurator|waitingBuffer\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \configurator|ALT_INV_state.IDLE~q\ : std_logic;
SIGNAL \configurator|ALT_INV_discarded~q\ : std_logic;
SIGNAL \configurator|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_outputClock~q\ : std_logic;
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
SIGNAL \configurator|ALT_INV_SDIO~4_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_configOK~reg0_q\ : std_logic;
SIGNAL \configurator|ALT_INV_needWait~q\ : std_logic;
SIGNAL \configurator|ALT_INV_waitingDone~q\ : std_logic;
SIGNAL \configurator|ALT_INV_clockDividerBuffer\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \configurator|ALT_INV_counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \configurator|ALT_INV_dataIndex\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \configurator|ALT_INV_nextState.DONE~q\ : std_logic;
SIGNAL \configurator|ALT_INV_nextState.SEND~q\ : std_logic;
SIGNAL \configurator|ALT_INV_nextState.INTER~q\ : std_logic;
SIGNAL \configurator|ALT_INV_nextState.DISCARD~q\ : std_logic;
SIGNAL \configurator|ALT_INV_internalClock~q\ : std_logic;
SIGNAL \configurator|ALT_INV_SDIO~q\ : std_logic;
SIGNAL \configurator|ALT_INV_discardBuffer~reg0DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_writeconfig~input_o\ : std_logic;
SIGNAL \ALT_INV_resetn~input_o\ : std_logic;
SIGNAL \configurator|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_discardBuffer~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_configOK~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_counter[6]~2_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_needWait~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_discarding~q\ : std_logic;
SIGNAL \configurator|ALT_INV_nextState.IDLE~q\ : std_logic;
SIGNAL \configurator|ALT_INV_waiting~q\ : std_logic;
SIGNAL \configurator|ALT_INV_waitingBuffer\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \configurator|ALT_INV_discarded~0_combout\ : std_logic;

BEGIN

output <= ww_output;
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
\configurator|ALT_INV_state.IDLE~q\ <= NOT \configurator|state.IDLE~q\;
\configurator|ALT_INV_discarded~q\ <= NOT \configurator|discarded~q\;
\configurator|ALT_INV_Equal0~1_combout\ <= NOT \configurator|Equal0~1_combout\;
\configurator|ALT_INV_Equal0~0_combout\ <= NOT \configurator|Equal0~0_combout\;
\configurator|ALT_INV_LessThan0~1_combout\ <= NOT \configurator|LessThan0~1_combout\;
\configurator|ALT_INV_Mux0~0_combout\ <= NOT \configurator|Mux0~0_combout\;
\configurator|ALT_INV_Mux1~0_combout\ <= NOT \configurator|Mux1~0_combout\;
\configurator|ALT_INV_LessThan0~0_combout\ <= NOT \configurator|LessThan0~0_combout\;
\configurator|ALT_INV_LessThan1~0_combout\ <= NOT \configurator|LessThan1~0_combout\;
\configurator|ALT_INV_outputClock~q\ <= NOT \configurator|outputClock~q\;
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
\configurator|ALT_INV_SDIO~4_combout\ <= NOT \configurator|SDIO~4_combout\;
\configurator|ALT_INV_configOK~reg0_q\ <= NOT \configurator|configOK~reg0_q\;
\configurator|ALT_INV_needWait~q\ <= NOT \configurator|needWait~q\;
\configurator|ALT_INV_waitingDone~q\ <= NOT \configurator|waitingDone~q\;
\configurator|ALT_INV_clockDividerBuffer\(6) <= NOT \configurator|clockDividerBuffer\(6);
\configurator|ALT_INV_clockDividerBuffer\(5) <= NOT \configurator|clockDividerBuffer\(5);
\configurator|ALT_INV_clockDividerBuffer\(4) <= NOT \configurator|clockDividerBuffer\(4);
\configurator|ALT_INV_clockDividerBuffer\(3) <= NOT \configurator|clockDividerBuffer\(3);
\configurator|ALT_INV_clockDividerBuffer\(2) <= NOT \configurator|clockDividerBuffer\(2);
\configurator|ALT_INV_clockDividerBuffer\(8) <= NOT \configurator|clockDividerBuffer\(8);
\configurator|ALT_INV_clockDividerBuffer\(9) <= NOT \configurator|clockDividerBuffer\(9);
\configurator|ALT_INV_clockDividerBuffer\(10) <= NOT \configurator|clockDividerBuffer\(10);
\configurator|ALT_INV_clockDividerBuffer\(11) <= NOT \configurator|clockDividerBuffer\(11);
\configurator|ALT_INV_clockDividerBuffer\(1) <= NOT \configurator|clockDividerBuffer\(1);
\configurator|ALT_INV_clockDividerBuffer\(7) <= NOT \configurator|clockDividerBuffer\(7);
\configurator|ALT_INV_clockDividerBuffer\(0) <= NOT \configurator|clockDividerBuffer\(0);
\configurator|ALT_INV_counter\(6) <= NOT \configurator|counter\(6);
\configurator|ALT_INV_counter\(3) <= NOT \configurator|counter\(3);
\configurator|ALT_INV_counter\(2) <= NOT \configurator|counter\(2);
\configurator|ALT_INV_counter\(5) <= NOT \configurator|counter\(5);
\configurator|ALT_INV_counter\(4) <= NOT \configurator|counter\(4);
\configurator|ALT_INV_counter\(1) <= NOT \configurator|counter\(1);
\configurator|ALT_INV_counter\(0) <= NOT \configurator|counter\(0);
\configurator|ALT_INV_dataIndex\(0) <= NOT \configurator|dataIndex\(0);
\configurator|ALT_INV_dataIndex\(5) <= NOT \configurator|dataIndex\(5);
\configurator|ALT_INV_dataIndex\(6) <= NOT \configurator|dataIndex\(6);
\configurator|ALT_INV_dataIndex\(7) <= NOT \configurator|dataIndex\(7);
\configurator|ALT_INV_dataIndex\(1) <= NOT \configurator|dataIndex\(1);
\configurator|ALT_INV_dataIndex\(2) <= NOT \configurator|dataIndex\(2);
\configurator|ALT_INV_dataIndex\(3) <= NOT \configurator|dataIndex\(3);
\configurator|ALT_INV_dataIndex\(4) <= NOT \configurator|dataIndex\(4);
\configurator|ALT_INV_nextState.DONE~q\ <= NOT \configurator|nextState.DONE~q\;
\configurator|ALT_INV_nextState.SEND~q\ <= NOT \configurator|nextState.SEND~q\;
\configurator|ALT_INV_nextState.INTER~q\ <= NOT \configurator|nextState.INTER~q\;
\configurator|ALT_INV_nextState.DISCARD~q\ <= NOT \configurator|nextState.DISCARD~q\;
\configurator|ALT_INV_internalClock~q\ <= NOT \configurator|internalClock~q\;
\configurator|ALT_INV_SDIO~q\ <= NOT \configurator|SDIO~q\;
\configurator|ALT_INV_discardBuffer~reg0DUPLICATE_q\ <= NOT \configurator|discardBuffer~reg0DUPLICATE_q\;
\ALT_INV_writeconfig~input_o\ <= NOT \writeconfig~input_o\;
\ALT_INV_resetn~input_o\ <= NOT \resetn~input_o\;
\configurator|ALT_INV_Mux1~1_combout\ <= NOT \configurator|Mux1~1_combout\;
\configurator|ALT_INV_discardBuffer~0_combout\ <= NOT \configurator|discardBuffer~0_combout\;
\configurator|ALT_INV_configOK~0_combout\ <= NOT \configurator|configOK~0_combout\;
\configurator|ALT_INV_counter[6]~2_combout\ <= NOT \configurator|counter[6]~2_combout\;
\configurator|ALT_INV_needWait~0_combout\ <= NOT \configurator|needWait~0_combout\;
\configurator|ALT_INV_discarding~q\ <= NOT \configurator|discarding~q\;
\configurator|ALT_INV_nextState.IDLE~q\ <= NOT \configurator|nextState.IDLE~q\;
\configurator|ALT_INV_waiting~q\ <= NOT \configurator|waiting~q\;
\configurator|ALT_INV_waitingBuffer\(0) <= NOT \configurator|waitingBuffer\(0);
\configurator|ALT_INV_waitingBuffer\(1) <= NOT \configurator|waitingBuffer\(1);
\configurator|ALT_INV_waitingBuffer\(2) <= NOT \configurator|waitingBuffer\(2);
\configurator|ALT_INV_discarded~0_combout\ <= NOT \configurator|discarded~0_combout\;

-- Location: IOOBUF_X7_Y0_N2
\output[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output(0));

-- Location: IOOBUF_X6_Y0_N2
\output[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output(1));

-- Location: IOOBUF_X57_Y61_N2
\output[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output(2));

-- Location: IOOBUF_X21_Y61_N19
\output[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output(3));

-- Location: IOOBUF_X59_Y0_N53
\output[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output(4));

-- Location: IOOBUF_X64_Y0_N53
\output[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output(5));

-- Location: IOOBUF_X36_Y61_N19
\output[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output(6));

-- Location: IOOBUF_X10_Y0_N59
\output[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output(7));

-- Location: IOOBUF_X61_Y61_N19
\output[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output(8));

-- Location: IOOBUF_X68_Y12_N39
\output[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output(9));

-- Location: IOOBUF_X10_Y0_N42
\output[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output(10));

-- Location: IOOBUF_X18_Y61_N53
\output[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output(11));

-- Location: IOOBUF_X68_Y35_N56
\output[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output(12));

-- Location: IOOBUF_X42_Y0_N36
\output[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output(13));

-- Location: IOOBUF_X50_Y61_N53
\output[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output(14));

-- Location: IOOBUF_X55_Y61_N42
\output[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_output(15));

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

-- Location: IOOBUF_X14_Y61_N2
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

-- Location: LABCELL_X28_Y51_N0
\configurator|Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~1_sumout\ = SUM(( \configurator|clockDividerBuffer\(0) ) + ( VCC ) + ( !VCC ))
-- \configurator|Add4~2\ = CARRY(( \configurator|clockDividerBuffer\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_clockDividerBuffer\(0),
	cin => GND,
	sumout => \configurator|Add4~1_sumout\,
	cout => \configurator|Add4~2\);

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

-- Location: LABCELL_X28_Y51_N3
\configurator|Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~9_sumout\ = SUM(( \configurator|clockDividerBuffer\(1) ) + ( GND ) + ( \configurator|Add4~2\ ))
-- \configurator|Add4~10\ = CARRY(( \configurator|clockDividerBuffer\(1) ) + ( GND ) + ( \configurator|Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_clockDividerBuffer\(1),
	cin => \configurator|Add4~2\,
	sumout => \configurator|Add4~9_sumout\,
	cout => \configurator|Add4~10\);

-- Location: FF_X28_Y51_N5
\configurator|clockDividerBuffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \configurator|Add4~9_sumout\,
	sclr => \configurator|clockDividerBuffer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(1));

-- Location: LABCELL_X28_Y51_N6
\configurator|Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~29_sumout\ = SUM(( \configurator|clockDividerBuffer\(2) ) + ( GND ) + ( \configurator|Add4~10\ ))
-- \configurator|Add4~30\ = CARRY(( \configurator|clockDividerBuffer\(2) ) + ( GND ) + ( \configurator|Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_clockDividerBuffer\(2),
	cin => \configurator|Add4~10\,
	sumout => \configurator|Add4~29_sumout\,
	cout => \configurator|Add4~30\);

-- Location: FF_X28_Y51_N8
\configurator|clockDividerBuffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \configurator|Add4~29_sumout\,
	sclr => \configurator|clockDividerBuffer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(2));

-- Location: LABCELL_X28_Y51_N9
\configurator|Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~33_sumout\ = SUM(( \configurator|clockDividerBuffer\(3) ) + ( GND ) + ( \configurator|Add4~30\ ))
-- \configurator|Add4~34\ = CARRY(( \configurator|clockDividerBuffer\(3) ) + ( GND ) + ( \configurator|Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_clockDividerBuffer\(3),
	cin => \configurator|Add4~30\,
	sumout => \configurator|Add4~33_sumout\,
	cout => \configurator|Add4~34\);

-- Location: FF_X28_Y51_N11
\configurator|clockDividerBuffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \configurator|Add4~33_sumout\,
	sclr => \configurator|clockDividerBuffer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(3));

-- Location: LABCELL_X28_Y51_N12
\configurator|Add4~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~37_sumout\ = SUM(( \configurator|clockDividerBuffer\(4) ) + ( GND ) + ( \configurator|Add4~34\ ))
-- \configurator|Add4~38\ = CARRY(( \configurator|clockDividerBuffer\(4) ) + ( GND ) + ( \configurator|Add4~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_clockDividerBuffer\(4),
	cin => \configurator|Add4~34\,
	sumout => \configurator|Add4~37_sumout\,
	cout => \configurator|Add4~38\);

-- Location: FF_X28_Y51_N14
\configurator|clockDividerBuffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \configurator|Add4~37_sumout\,
	sclr => \configurator|clockDividerBuffer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(4));

-- Location: LABCELL_X28_Y51_N15
\configurator|Add4~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~41_sumout\ = SUM(( \configurator|clockDividerBuffer\(5) ) + ( GND ) + ( \configurator|Add4~38\ ))
-- \configurator|Add4~42\ = CARRY(( \configurator|clockDividerBuffer\(5) ) + ( GND ) + ( \configurator|Add4~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_clockDividerBuffer\(5),
	cin => \configurator|Add4~38\,
	sumout => \configurator|Add4~41_sumout\,
	cout => \configurator|Add4~42\);

-- Location: FF_X28_Y51_N17
\configurator|clockDividerBuffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \configurator|Add4~41_sumout\,
	sclr => \configurator|clockDividerBuffer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(5));

-- Location: LABCELL_X28_Y51_N18
\configurator|Add4~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~45_sumout\ = SUM(( \configurator|clockDividerBuffer\(6) ) + ( GND ) + ( \configurator|Add4~42\ ))
-- \configurator|Add4~46\ = CARRY(( \configurator|clockDividerBuffer\(6) ) + ( GND ) + ( \configurator|Add4~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_clockDividerBuffer\(6),
	cin => \configurator|Add4~42\,
	sumout => \configurator|Add4~45_sumout\,
	cout => \configurator|Add4~46\);

-- Location: FF_X28_Y51_N20
\configurator|clockDividerBuffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \configurator|Add4~45_sumout\,
	sclr => \configurator|clockDividerBuffer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(6));

-- Location: LABCELL_X28_Y51_N21
\configurator|Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~5_sumout\ = SUM(( \configurator|clockDividerBuffer\(7) ) + ( GND ) + ( \configurator|Add4~46\ ))
-- \configurator|Add4~6\ = CARRY(( \configurator|clockDividerBuffer\(7) ) + ( GND ) + ( \configurator|Add4~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_clockDividerBuffer\(7),
	cin => \configurator|Add4~46\,
	sumout => \configurator|Add4~5_sumout\,
	cout => \configurator|Add4~6\);

-- Location: FF_X28_Y51_N23
\configurator|clockDividerBuffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \configurator|Add4~5_sumout\,
	sclr => \configurator|clockDividerBuffer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(7));

-- Location: LABCELL_X28_Y51_N57
\configurator|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Equal0~1_combout\ = ( \configurator|clockDividerBuffer\(4) & ( \configurator|clockDividerBuffer\(3) & ( (\configurator|clockDividerBuffer\(5) & (\configurator|clockDividerBuffer\(2) & \configurator|clockDividerBuffer\(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_clockDividerBuffer\(5),
	datac => \configurator|ALT_INV_clockDividerBuffer\(2),
	datad => \configurator|ALT_INV_clockDividerBuffer\(6),
	datae => \configurator|ALT_INV_clockDividerBuffer\(4),
	dataf => \configurator|ALT_INV_clockDividerBuffer\(3),
	combout => \configurator|Equal0~1_combout\);

-- Location: LABCELL_X28_Y51_N24
\configurator|Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~25_sumout\ = SUM(( \configurator|clockDividerBuffer\(8) ) + ( GND ) + ( \configurator|Add4~6\ ))
-- \configurator|Add4~26\ = CARRY(( \configurator|clockDividerBuffer\(8) ) + ( GND ) + ( \configurator|Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_clockDividerBuffer\(8),
	cin => \configurator|Add4~6\,
	sumout => \configurator|Add4~25_sumout\,
	cout => \configurator|Add4~26\);

-- Location: FF_X28_Y51_N26
\configurator|clockDividerBuffer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \configurator|Add4~25_sumout\,
	sclr => \configurator|clockDividerBuffer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(8));

-- Location: LABCELL_X28_Y51_N27
\configurator|Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~21_sumout\ = SUM(( \configurator|clockDividerBuffer\(9) ) + ( GND ) + ( \configurator|Add4~26\ ))
-- \configurator|Add4~22\ = CARRY(( \configurator|clockDividerBuffer\(9) ) + ( GND ) + ( \configurator|Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_clockDividerBuffer\(9),
	cin => \configurator|Add4~26\,
	sumout => \configurator|Add4~21_sumout\,
	cout => \configurator|Add4~22\);

-- Location: FF_X28_Y51_N29
\configurator|clockDividerBuffer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \configurator|Add4~21_sumout\,
	sclr => \configurator|clockDividerBuffer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(9));

-- Location: LABCELL_X28_Y51_N30
\configurator|Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~17_sumout\ = SUM(( \configurator|clockDividerBuffer\(10) ) + ( GND ) + ( \configurator|Add4~22\ ))
-- \configurator|Add4~18\ = CARRY(( \configurator|clockDividerBuffer\(10) ) + ( GND ) + ( \configurator|Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_clockDividerBuffer\(10),
	cin => \configurator|Add4~22\,
	sumout => \configurator|Add4~17_sumout\,
	cout => \configurator|Add4~18\);

-- Location: FF_X28_Y51_N32
\configurator|clockDividerBuffer[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \configurator|Add4~17_sumout\,
	sclr => \configurator|clockDividerBuffer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(10));

-- Location: LABCELL_X28_Y51_N33
\configurator|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~13_sumout\ = SUM(( \configurator|clockDividerBuffer\(11) ) + ( GND ) + ( \configurator|Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_clockDividerBuffer\(11),
	cin => \configurator|Add4~18\,
	sumout => \configurator|Add4~13_sumout\);

-- Location: FF_X28_Y51_N35
\configurator|clockDividerBuffer[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \configurator|Add4~13_sumout\,
	sclr => \configurator|clockDividerBuffer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(11));

-- Location: LABCELL_X28_Y51_N48
\configurator|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Equal0~0_combout\ = ( \configurator|clockDividerBuffer\(1) & ( \configurator|clockDividerBuffer\(11) & ( (\configurator|clockDividerBuffer\(8) & (\configurator|clockDividerBuffer\(9) & \configurator|clockDividerBuffer\(10))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_clockDividerBuffer\(8),
	datac => \configurator|ALT_INV_clockDividerBuffer\(9),
	datad => \configurator|ALT_INV_clockDividerBuffer\(10),
	datae => \configurator|ALT_INV_clockDividerBuffer\(1),
	dataf => \configurator|ALT_INV_clockDividerBuffer\(11),
	combout => \configurator|Equal0~0_combout\);

-- Location: LABCELL_X28_Y51_N42
\configurator|clockDividerBuffer[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|clockDividerBuffer[1]~0_combout\ = ( \configurator|Equal0~1_combout\ & ( \configurator|Equal0~0_combout\ & ( (!\resetn~input_o\) # ((\configurator|clockDividerBuffer\(0) & \configurator|clockDividerBuffer\(7))) ) ) ) # ( 
-- !\configurator|Equal0~1_combout\ & ( \configurator|Equal0~0_combout\ & ( !\resetn~input_o\ ) ) ) # ( \configurator|Equal0~1_combout\ & ( !\configurator|Equal0~0_combout\ & ( !\resetn~input_o\ ) ) ) # ( !\configurator|Equal0~1_combout\ & ( 
-- !\configurator|Equal0~0_combout\ & ( !\resetn~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_clockDividerBuffer\(0),
	datab => \ALT_INV_resetn~input_o\,
	datac => \configurator|ALT_INV_clockDividerBuffer\(7),
	datae => \configurator|ALT_INV_Equal0~1_combout\,
	dataf => \configurator|ALT_INV_Equal0~0_combout\,
	combout => \configurator|clockDividerBuffer[1]~0_combout\);

-- Location: FF_X28_Y51_N2
\configurator|clockDividerBuffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \configurator|Add4~1_sumout\,
	sclr => \configurator|clockDividerBuffer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(0));

-- Location: LABCELL_X28_Y51_N39
\configurator|internalClock~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|internalClock~0_combout\ = ( \configurator|Equal0~0_combout\ & ( \configurator|internalClock~q\ & ( (!\configurator|clockDividerBuffer\(0)) # ((!\configurator|Equal0~1_combout\) # (!\configurator|clockDividerBuffer\(7))) ) ) ) # ( 
-- !\configurator|Equal0~0_combout\ & ( \configurator|internalClock~q\ ) ) # ( \configurator|Equal0~0_combout\ & ( !\configurator|internalClock~q\ & ( (\configurator|clockDividerBuffer\(0) & (\configurator|Equal0~1_combout\ & 
-- \configurator|clockDividerBuffer\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001111111111111111111111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_clockDividerBuffer\(0),
	datac => \configurator|ALT_INV_Equal0~1_combout\,
	datad => \configurator|ALT_INV_clockDividerBuffer\(7),
	datae => \configurator|ALT_INV_Equal0~0_combout\,
	dataf => \configurator|ALT_INV_internalClock~q\,
	combout => \configurator|internalClock~0_combout\);

-- Location: FF_X27_Y51_N14
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

-- Location: LABCELL_X23_Y50_N0
\configurator|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add3~1_sumout\ = SUM(( \configurator|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \configurator|Add3~2\ = CARRY(( \configurator|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_counter\(0),
	cin => GND,
	sumout => \configurator|Add3~1_sumout\,
	cout => \configurator|Add3~2\);

-- Location: LABCELL_X23_Y50_N57
\configurator|counter[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|counter[6]~0_combout\ = ( \configurator|counter\(5) & ( \configurator|counter\(6) ) ) # ( !\configurator|counter\(5) & ( \configurator|counter\(6) ) ) # ( \configurator|counter\(5) & ( !\configurator|counter\(6) & ( (!\resetn~input_o\) # 
-- (\configurator|counter\(4)) ) ) ) # ( !\configurator|counter\(5) & ( !\configurator|counter\(6) & ( !\resetn~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_resetn~input_o\,
	datad => \configurator|ALT_INV_counter\(4),
	datae => \configurator|ALT_INV_counter\(5),
	dataf => \configurator|ALT_INV_counter\(6),
	combout => \configurator|counter[6]~0_combout\);

-- Location: LABCELL_X22_Y50_N30
\configurator|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~29_sumout\ = SUM(( \configurator|dataIndex\(0) ) + ( VCC ) + ( !VCC ))
-- \configurator|Add2~30\ = CARRY(( \configurator|dataIndex\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_dataIndex\(0),
	cin => GND,
	sumout => \configurator|Add2~29_sumout\,
	cout => \configurator|Add2~30\);

-- Location: LABCELL_X22_Y50_N36
\configurator|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~9_sumout\ = SUM(( \configurator|dataIndex\(2) ) + ( GND ) + ( \configurator|Add2~14\ ))
-- \configurator|Add2~10\ = CARRY(( \configurator|dataIndex\(2) ) + ( GND ) + ( \configurator|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_dataIndex\(2),
	cin => \configurator|Add2~14\,
	sumout => \configurator|Add2~9_sumout\,
	cout => \configurator|Add2~10\);

-- Location: LABCELL_X22_Y50_N39
\configurator|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~5_sumout\ = SUM(( \configurator|dataIndex\(3) ) + ( GND ) + ( \configurator|Add2~10\ ))
-- \configurator|Add2~6\ = CARRY(( \configurator|dataIndex\(3) ) + ( GND ) + ( \configurator|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_dataIndex\(3),
	cin => \configurator|Add2~10\,
	sumout => \configurator|Add2~5_sumout\,
	cout => \configurator|Add2~6\);

-- Location: LABCELL_X22_Y50_N21
\configurator|dataIndex[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|dataIndex[2]~1_combout\ = ( \configurator|outputClock~q\ ) # ( !\configurator|outputClock~q\ & ( !\resetn~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_resetn~input_o\,
	dataf => \configurator|ALT_INV_outputClock~q\,
	combout => \configurator|dataIndex[2]~1_combout\);

-- Location: FF_X22_Y50_N8
\configurator|dataIndex[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	asdata => \configurator|Add2~5_sumout\,
	sclr => \configurator|dataIndex[2]~0_combout\,
	sload => VCC,
	ena => \configurator|dataIndex[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(3));

-- Location: LABCELL_X22_Y50_N42
\configurator|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~1_sumout\ = SUM(( \configurator|dataIndex\(4) ) + ( GND ) + ( \configurator|Add2~6\ ))
-- \configurator|Add2~2\ = CARRY(( \configurator|dataIndex\(4) ) + ( GND ) + ( \configurator|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_dataIndex\(4),
	cin => \configurator|Add2~6\,
	sumout => \configurator|Add2~1_sumout\,
	cout => \configurator|Add2~2\);

-- Location: FF_X22_Y50_N17
\configurator|dataIndex[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	asdata => \configurator|Add2~1_sumout\,
	sclr => \configurator|dataIndex[2]~0_combout\,
	sload => VCC,
	ena => \configurator|dataIndex[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(4));

-- Location: LABCELL_X22_Y50_N45
\configurator|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~25_sumout\ = SUM(( \configurator|dataIndex\(5) ) + ( GND ) + ( \configurator|Add2~2\ ))
-- \configurator|Add2~26\ = CARRY(( \configurator|dataIndex\(5) ) + ( GND ) + ( \configurator|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(5),
	cin => \configurator|Add2~2\,
	sumout => \configurator|Add2~25_sumout\,
	cout => \configurator|Add2~26\);

-- Location: FF_X22_Y50_N56
\configurator|dataIndex[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	asdata => \configurator|Add2~25_sumout\,
	sclr => \configurator|dataIndex[2]~0_combout\,
	sload => VCC,
	ena => \configurator|dataIndex[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(5));

-- Location: LABCELL_X22_Y50_N48
\configurator|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~21_sumout\ = SUM(( \configurator|dataIndex\(6) ) + ( GND ) + ( \configurator|Add2~26\ ))
-- \configurator|Add2~22\ = CARRY(( \configurator|dataIndex\(6) ) + ( GND ) + ( \configurator|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_dataIndex\(6),
	cin => \configurator|Add2~26\,
	sumout => \configurator|Add2~21_sumout\,
	cout => \configurator|Add2~22\);

-- Location: FF_X22_Y50_N14
\configurator|dataIndex[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	asdata => \configurator|Add2~21_sumout\,
	sclr => \configurator|dataIndex[2]~0_combout\,
	sload => VCC,
	ena => \configurator|dataIndex[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(6));

-- Location: LABCELL_X22_Y50_N51
\configurator|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~17_sumout\ = SUM(( \configurator|dataIndex\(7) ) + ( GND ) + ( \configurator|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_dataIndex\(7),
	cin => \configurator|Add2~22\,
	sumout => \configurator|Add2~17_sumout\);

-- Location: FF_X22_Y50_N11
\configurator|dataIndex[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	asdata => \configurator|Add2~17_sumout\,
	sclr => \configurator|dataIndex[2]~0_combout\,
	sload => VCC,
	ena => \configurator|dataIndex[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(7));

-- Location: LABCELL_X22_Y50_N9
\configurator|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|LessThan0~0_combout\ = ( !\configurator|dataIndex\(5) & ( (!\configurator|dataIndex\(6) & !\configurator|dataIndex\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_dataIndex\(6),
	datad => \configurator|ALT_INV_dataIndex\(7),
	dataf => \configurator|ALT_INV_dataIndex\(5),
	combout => \configurator|LessThan0~0_combout\);

-- Location: LABCELL_X22_Y50_N6
\configurator|dataIndex[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|dataIndex[2]~0_combout\ = ( \configurator|LessThan1~0_combout\ & ( (!\configurator|LessThan0~0_combout\) # (!\resetn~input_o\) ) ) # ( !\configurator|LessThan1~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111100111111001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_LessThan0~0_combout\,
	datac => \ALT_INV_resetn~input_o\,
	dataf => \configurator|ALT_INV_LessThan1~0_combout\,
	combout => \configurator|dataIndex[2]~0_combout\);

-- Location: FF_X22_Y50_N20
\configurator|dataIndex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	asdata => \configurator|Add2~29_sumout\,
	sclr => \configurator|dataIndex[2]~0_combout\,
	sload => VCC,
	ena => \configurator|dataIndex[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(0));

-- Location: LABCELL_X22_Y50_N33
\configurator|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~13_sumout\ = SUM(( \configurator|dataIndex\(1) ) + ( GND ) + ( \configurator|Add2~30\ ))
-- \configurator|Add2~14\ = CARRY(( \configurator|dataIndex\(1) ) + ( GND ) + ( \configurator|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(1),
	cin => \configurator|Add2~30\,
	sumout => \configurator|Add2~13_sumout\,
	cout => \configurator|Add2~14\);

-- Location: FF_X22_Y50_N26
\configurator|dataIndex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	asdata => \configurator|Add2~13_sumout\,
	sclr => \configurator|dataIndex[2]~0_combout\,
	sload => VCC,
	ena => \configurator|dataIndex[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(1));

-- Location: FF_X22_Y50_N23
\configurator|dataIndex[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	asdata => \configurator|Add2~9_sumout\,
	sclr => \configurator|dataIndex[2]~0_combout\,
	sload => VCC,
	ena => \configurator|dataIndex[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(2));

-- Location: LABCELL_X22_Y50_N18
\configurator|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|LessThan1~0_combout\ = ( \configurator|dataIndex\(1) & ( (!\configurator|dataIndex\(4)) # ((!\configurator|dataIndex\(2) & !\configurator|dataIndex\(3))) ) ) # ( !\configurator|dataIndex\(1) & ( (!\configurator|dataIndex\(3)) # 
-- (!\configurator|dataIndex\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100111111001111110011111000111110001111100011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(2),
	datab => \configurator|ALT_INV_dataIndex\(3),
	datac => \configurator|ALT_INV_dataIndex\(4),
	dataf => \configurator|ALT_INV_dataIndex\(1),
	combout => \configurator|LessThan1~0_combout\);

-- Location: LABCELL_X23_Y50_N51
\configurator|counter[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|counter[6]~1_combout\ = ( \configurator|LessThan0~0_combout\ & ( (!\resetn~input_o\) # ((!\configurator|LessThan1~0_combout\ & \configurator|outputClock~q\)) ) ) # ( !\configurator|LessThan0~0_combout\ & ( (!\resetn~input_o\) # 
-- (\configurator|outputClock~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111110011001111111111001100111111001100110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_resetn~input_o\,
	datac => \configurator|ALT_INV_LessThan1~0_combout\,
	datad => \configurator|ALT_INV_outputClock~q\,
	dataf => \configurator|ALT_INV_LessThan0~0_combout\,
	combout => \configurator|counter[6]~1_combout\);

-- Location: FF_X23_Y50_N53
\configurator|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	asdata => \configurator|Add3~1_sumout\,
	sclr => \configurator|counter[6]~0_combout\,
	sload => VCC,
	ena => \configurator|counter[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|counter\(0));

-- Location: LABCELL_X23_Y50_N3
\configurator|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add3~5_sumout\ = SUM(( \configurator|counter\(1) ) + ( GND ) + ( \configurator|Add3~2\ ))
-- \configurator|Add3~6\ = CARRY(( \configurator|counter\(1) ) + ( GND ) + ( \configurator|Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(1),
	cin => \configurator|Add3~2\,
	sumout => \configurator|Add3~5_sumout\,
	cout => \configurator|Add3~6\);

-- Location: FF_X23_Y50_N26
\configurator|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	asdata => \configurator|Add3~5_sumout\,
	sclr => \configurator|counter[6]~0_combout\,
	sload => VCC,
	ena => \configurator|counter[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|counter\(1));

-- Location: LABCELL_X23_Y50_N6
\configurator|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add3~17_sumout\ = SUM(( \configurator|counter\(2) ) + ( GND ) + ( \configurator|Add3~6\ ))
-- \configurator|Add3~18\ = CARRY(( \configurator|counter\(2) ) + ( GND ) + ( \configurator|Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_counter\(2),
	cin => \configurator|Add3~6\,
	sumout => \configurator|Add3~17_sumout\,
	cout => \configurator|Add3~18\);

-- Location: FF_X23_Y50_N29
\configurator|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	asdata => \configurator|Add3~17_sumout\,
	sclr => \configurator|counter[6]~0_combout\,
	sload => VCC,
	ena => \configurator|counter[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|counter\(2));

-- Location: LABCELL_X23_Y50_N9
\configurator|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add3~21_sumout\ = SUM(( \configurator|counter\(3) ) + ( GND ) + ( \configurator|Add3~18\ ))
-- \configurator|Add3~22\ = CARRY(( \configurator|counter\(3) ) + ( GND ) + ( \configurator|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_counter\(3),
	cin => \configurator|Add3~18\,
	sumout => \configurator|Add3~21_sumout\,
	cout => \configurator|Add3~22\);

-- Location: FF_X23_Y50_N41
\configurator|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	asdata => \configurator|Add3~21_sumout\,
	sclr => \configurator|counter[6]~0_combout\,
	sload => VCC,
	ena => \configurator|counter[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|counter\(3));

-- Location: LABCELL_X23_Y50_N12
\configurator|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add3~9_sumout\ = SUM(( \configurator|counter\(4) ) + ( GND ) + ( \configurator|Add3~22\ ))
-- \configurator|Add3~10\ = CARRY(( \configurator|counter\(4) ) + ( GND ) + ( \configurator|Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_counter\(4),
	cin => \configurator|Add3~22\,
	sumout => \configurator|Add3~9_sumout\,
	cout => \configurator|Add3~10\);

-- Location: FF_X23_Y50_N50
\configurator|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	asdata => \configurator|Add3~9_sumout\,
	sclr => \configurator|counter[6]~0_combout\,
	sload => VCC,
	ena => \configurator|counter[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|counter\(4));

-- Location: LABCELL_X23_Y50_N15
\configurator|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add3~13_sumout\ = SUM(( \configurator|counter\(5) ) + ( GND ) + ( \configurator|Add3~10\ ))
-- \configurator|Add3~14\ = CARRY(( \configurator|counter\(5) ) + ( GND ) + ( \configurator|Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(5),
	cin => \configurator|Add3~10\,
	sumout => \configurator|Add3~13_sumout\,
	cout => \configurator|Add3~14\);

-- Location: FF_X23_Y50_N56
\configurator|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	asdata => \configurator|Add3~13_sumout\,
	sclr => \configurator|counter[6]~0_combout\,
	sload => VCC,
	ena => \configurator|counter[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|counter\(5));

-- Location: LABCELL_X23_Y50_N18
\configurator|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add3~25_sumout\ = SUM(( \configurator|counter\(6) ) + ( GND ) + ( \configurator|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_counter\(6),
	cin => \configurator|Add3~14\,
	sumout => \configurator|Add3~25_sumout\);

-- Location: FF_X23_Y50_N32
\configurator|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	asdata => \configurator|Add3~25_sumout\,
	sclr => \configurator|counter[6]~0_combout\,
	sload => VCC,
	ena => \configurator|counter[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|counter\(6));

-- Location: LABCELL_X23_Y50_N24
\configurator|counter[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|counter[6]~2_combout\ = ( !\configurator|counter\(5) & ( \configurator|counter\(4) & ( !\configurator|counter\(6) ) ) ) # ( \configurator|counter\(5) & ( !\configurator|counter\(4) & ( !\configurator|counter\(6) ) ) ) # ( 
-- !\configurator|counter\(5) & ( !\configurator|counter\(4) & ( !\configurator|counter\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_counter\(6),
	datae => \configurator|ALT_INV_counter\(5),
	dataf => \configurator|ALT_INV_counter\(4),
	combout => \configurator|counter[6]~2_combout\);

-- Location: MLABCELL_X25_Y51_N33
\configurator|configOK~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|configOK~0_combout\ = ( \configurator|configOK~reg0_q\ & ( \configurator|LessThan0~0_combout\ & ( (!\configurator|outputClock~q\) # (!\configurator|LessThan1~0_combout\) ) ) ) # ( !\configurator|configOK~reg0_q\ & ( 
-- \configurator|LessThan0~0_combout\ & ( (\configurator|outputClock~q\ & (!\configurator|counter[6]~2_combout\ & !\configurator|LessThan1~0_combout\)) ) ) ) # ( \configurator|configOK~reg0_q\ & ( !\configurator|LessThan0~0_combout\ ) ) # ( 
-- !\configurator|configOK~reg0_q\ & ( !\configurator|LessThan0~0_combout\ & ( (\configurator|outputClock~q\ & !\configurator|counter[6]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000111111111111111100110000000000001111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_outputClock~q\,
	datac => \configurator|ALT_INV_counter[6]~2_combout\,
	datad => \configurator|ALT_INV_LessThan1~0_combout\,
	datae => \configurator|ALT_INV_configOK~reg0_q\,
	dataf => \configurator|ALT_INV_LessThan0~0_combout\,
	combout => \configurator|configOK~0_combout\);

-- Location: MLABCELL_X25_Y51_N57
\configurator|configOK~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|configOK~reg0feeder_combout\ = ( \configurator|configOK~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \configurator|ALT_INV_configOK~0_combout\,
	combout => \configurator|configOK~reg0feeder_combout\);

-- Location: FF_X25_Y51_N59
\configurator|configOK~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	d => \configurator|configOK~reg0feeder_combout\,
	sclr => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|configOK~reg0_q\);

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

-- Location: LABCELL_X27_Y51_N54
\configurator|waiting~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|waiting~0_combout\ = ( \resetn~input_o\ & ( \configurator|state.INTER~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_state.INTER~q\,
	datae => \ALT_INV_resetn~input_o\,
	combout => \configurator|waiting~0_combout\);

-- Location: FF_X27_Y51_N56
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

-- Location: LABCELL_X23_Y51_N51
\configurator|waitingBuffer~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|waitingBuffer~3_combout\ = ( !\configurator|waitingBuffer\(0) & ( \resetn~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \configurator|ALT_INV_waitingBuffer\(0),
	dataf => \ALT_INV_resetn~input_o\,
	combout => \configurator|waitingBuffer~3_combout\);

-- Location: LABCELL_X23_Y51_N0
\configurator|waitingBuffer[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|waitingBuffer[3]~1_combout\ = ( \resetn~input_o\ & ( \configurator|waiting~q\ & ( \configurator|internalClock~q\ ) ) ) # ( !\resetn~input_o\ & ( \configurator|waiting~q\ ) ) # ( !\resetn~input_o\ & ( !\configurator|waiting~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_internalClock~q\,
	datae => \ALT_INV_resetn~input_o\,
	dataf => \configurator|ALT_INV_waiting~q\,
	combout => \configurator|waitingBuffer[3]~1_combout\);

-- Location: FF_X23_Y51_N53
\configurator|waitingBuffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \configurator|waitingBuffer~3_combout\,
	ena => \configurator|waitingBuffer[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|waitingBuffer\(0));

-- Location: LABCELL_X23_Y51_N15
\configurator|waitingBuffer~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|waitingBuffer~2_combout\ = ( !\configurator|waitingBuffer\(1) & ( \configurator|waitingBuffer\(0) & ( \resetn~input_o\ ) ) ) # ( \configurator|waitingBuffer\(1) & ( !\configurator|waitingBuffer\(0) & ( \resetn~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_resetn~input_o\,
	datae => \configurator|ALT_INV_waitingBuffer\(1),
	dataf => \configurator|ALT_INV_waitingBuffer\(0),
	combout => \configurator|waitingBuffer~2_combout\);

-- Location: FF_X23_Y51_N17
\configurator|waitingBuffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \configurator|waitingBuffer~2_combout\,
	ena => \configurator|waitingBuffer[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|waitingBuffer\(1));

-- Location: LABCELL_X23_Y51_N6
\configurator|waitingBuffer~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|waitingBuffer~0_combout\ = ( \configurator|waitingBuffer\(1) & ( (\resetn~input_o\ & (!\configurator|waitingBuffer\(0) $ (!\configurator|waitingBuffer\(2)))) ) ) # ( !\configurator|waitingBuffer\(1) & ( (\resetn~input_o\ & 
-- \configurator|waitingBuffer\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000011001100000000001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_resetn~input_o\,
	datac => \configurator|ALT_INV_waitingBuffer\(0),
	datad => \configurator|ALT_INV_waitingBuffer\(2),
	dataf => \configurator|ALT_INV_waitingBuffer\(1),
	combout => \configurator|waitingBuffer~0_combout\);

-- Location: FF_X23_Y51_N7
\configurator|waitingBuffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \configurator|waitingBuffer~0_combout\,
	ena => \configurator|waitingBuffer[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|waitingBuffer\(2));

-- Location: LABCELL_X23_Y51_N24
\configurator|waitingDone~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|waitingDone~0_combout\ = ( \configurator|waitingDone~q\ & ( \configurator|waitingBuffer\(2) & ( (!\configurator|internalClock~q\) # ((!\configurator|waiting~q\) # ((\configurator|waitingBuffer\(0) & \configurator|waitingBuffer\(1)))) ) ) ) # 
-- ( !\configurator|waitingDone~q\ & ( \configurator|waitingBuffer\(2) & ( (\configurator|internalClock~q\ & (\configurator|waiting~q\ & (\configurator|waitingBuffer\(0) & \configurator|waitingBuffer\(1)))) ) ) ) # ( \configurator|waitingDone~q\ & ( 
-- !\configurator|waitingBuffer\(2) & ( (!\configurator|internalClock~q\) # (!\configurator|waiting~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011101110111000000000000000011110111011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_internalClock~q\,
	datab => \configurator|ALT_INV_waiting~q\,
	datac => \configurator|ALT_INV_waitingBuffer\(0),
	datad => \configurator|ALT_INV_waitingBuffer\(1),
	datae => \configurator|ALT_INV_waitingDone~q\,
	dataf => \configurator|ALT_INV_waitingBuffer\(2),
	combout => \configurator|waitingDone~0_combout\);

-- Location: FF_X23_Y51_N26
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

-- Location: LABCELL_X23_Y51_N36
\configurator|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Selector1~0_combout\ = ( \configurator|needWait~q\ & ( \configurator|waitingDone~q\ & ( (\configurator|state.SEND~q\ & (!\configurator|configOK~reg0_q\ & !\writeconfig~input_o\)) ) ) ) # ( \configurator|needWait~q\ & ( 
-- !\configurator|waitingDone~q\ & ( ((\configurator|state.SEND~q\ & (!\configurator|configOK~reg0_q\ & !\writeconfig~input_o\))) # (\configurator|state.INTER~q\) ) ) ) # ( !\configurator|needWait~q\ & ( !\configurator|waitingDone~q\ & ( 
-- \configurator|state.INTER~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101011101010101010100000000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_state.INTER~q\,
	datab => \configurator|ALT_INV_state.SEND~q\,
	datac => \configurator|ALT_INV_configOK~reg0_q\,
	datad => \ALT_INV_writeconfig~input_o\,
	datae => \configurator|ALT_INV_needWait~q\,
	dataf => \configurator|ALT_INV_waitingDone~q\,
	combout => \configurator|Selector1~0_combout\);

-- Location: FF_X23_Y51_N38
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

-- Location: LABCELL_X27_Y51_N39
\configurator|state~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|state~9_combout\ = ( \configurator|nextState.INTER~q\ & ( \resetn~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_resetn~input_o\,
	dataf => \configurator|ALT_INV_nextState.INTER~q\,
	combout => \configurator|state~9_combout\);

-- Location: FF_X27_Y51_N41
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

-- Location: LABCELL_X27_Y51_N3
\configurator|discardBuffer~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|discardBuffer~0_combout\ = ( \configurator|discarding~q\ & ( !\configurator|discardBuffer~reg0DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_discardBuffer~reg0DUPLICATE_q\,
	dataf => \configurator|ALT_INV_discarding~q\,
	combout => \configurator|discardBuffer~0_combout\);

-- Location: LABCELL_X27_Y51_N51
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

-- Location: FF_X27_Y51_N52
\configurator|discardBuffer~reg0DUPLICATE\ : dffeas
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
	q => \configurator|discardBuffer~reg0DUPLICATE_q\);

-- Location: LABCELL_X27_Y51_N9
\configurator|discarded~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|discarded~0_combout\ = ( \configurator|discardBuffer~reg0DUPLICATE_q\ ) # ( !\configurator|discardBuffer~reg0DUPLICATE_q\ & ( \configurator|discarded~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_discarded~q\,
	dataf => \configurator|ALT_INV_discardBuffer~reg0DUPLICATE_q\,
	combout => \configurator|discarded~0_combout\);

-- Location: LABCELL_X27_Y51_N18
\configurator|discarded~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|discarded~feeder_combout\ = \configurator|discarded~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_discarded~0_combout\,
	combout => \configurator|discarded~feeder_combout\);

-- Location: FF_X27_Y51_N19
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

-- Location: MLABCELL_X25_Y51_N42
\configurator|nextState~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|nextState~7_combout\ = ( \configurator|state.INTER~q\ & ( \configurator|state.DISCARD~q\ & ( \resetn~input_o\ ) ) ) # ( !\configurator|state.INTER~q\ & ( \configurator|state.DISCARD~q\ & ( \resetn~input_o\ ) ) ) # ( 
-- \configurator|state.INTER~q\ & ( !\configurator|state.DISCARD~q\ & ( \resetn~input_o\ ) ) ) # ( !\configurator|state.INTER~q\ & ( !\configurator|state.DISCARD~q\ & ( (\resetn~input_o\ & !\writeconfig~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetn~input_o\,
	datac => \ALT_INV_writeconfig~input_o\,
	datae => \configurator|ALT_INV_state.INTER~q\,
	dataf => \configurator|ALT_INV_state.DISCARD~q\,
	combout => \configurator|nextState~7_combout\);

-- Location: FF_X25_Y51_N43
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

-- Location: LABCELL_X27_Y51_N33
\configurator|state~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|state~13_combout\ = ( \configurator|nextState.IDLE~q\ & ( \resetn~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_resetn~input_o\,
	dataf => \configurator|ALT_INV_nextState.IDLE~q\,
	combout => \configurator|state~13_combout\);

-- Location: FF_X27_Y51_N35
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

-- Location: LABCELL_X23_Y51_N21
\configurator|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Selector2~0_combout\ = ( \writeconfig~input_o\ & ( \configurator|waitingDone~q\ & ( ((\configurator|state.DISCARD~q\ & !\configurator|discarded~q\)) # (\configurator|state.INTER~q\) ) ) ) # ( !\writeconfig~input_o\ & ( 
-- \configurator|waitingDone~q\ & ( ((!\configurator|state.IDLE~q\) # ((\configurator|state.DISCARD~q\ & !\configurator|discarded~q\))) # (\configurator|state.INTER~q\) ) ) ) # ( \writeconfig~input_o\ & ( !\configurator|waitingDone~q\ & ( 
-- (\configurator|state.DISCARD~q\ & !\configurator|discarded~q\) ) ) ) # ( !\writeconfig~input_o\ & ( !\configurator|waitingDone~q\ & ( (!\configurator|state.IDLE~q\) # ((\configurator|state.DISCARD~q\ & !\configurator|discarded~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110000001100000011000011111111011101010111010101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_state.INTER~q\,
	datab => \configurator|ALT_INV_state.DISCARD~q\,
	datac => \configurator|ALT_INV_discarded~q\,
	datad => \configurator|ALT_INV_state.IDLE~q\,
	datae => \ALT_INV_writeconfig~input_o\,
	dataf => \configurator|ALT_INV_waitingDone~q\,
	combout => \configurator|Selector2~0_combout\);

-- Location: FF_X23_Y51_N23
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

-- Location: LABCELL_X27_Y51_N45
\configurator|state~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|state~10_combout\ = ( \configurator|nextState.DISCARD~q\ & ( \resetn~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_resetn~input_o\,
	dataf => \configurator|ALT_INV_nextState.DISCARD~q\,
	combout => \configurator|state~10_combout\);

-- Location: FF_X27_Y51_N47
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

-- Location: LABCELL_X27_Y51_N24
\configurator|discarding~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|discarding~0_combout\ = (\configurator|state.DISCARD~q\ & \resetn~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_state.DISCARD~q\,
	datab => \ALT_INV_resetn~input_o\,
	combout => \configurator|discarding~0_combout\);

-- Location: FF_X27_Y51_N26
\configurator|discarding\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	d => \configurator|discarding~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|discarding~q\);

-- Location: MLABCELL_X25_Y51_N48
\configurator|needWait~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|needWait~0_combout\ = ( \configurator|needWait~q\ & ( \configurator|LessThan0~0_combout\ & ( (!\configurator|discarding~q\ & ((!\configurator|outputClock~q\) # (!\configurator|LessThan1~0_combout\))) ) ) ) # ( !\configurator|needWait~q\ & ( 
-- \configurator|LessThan0~0_combout\ & ( (!\configurator|discarding~q\ & (\configurator|outputClock~q\ & !\configurator|LessThan1~0_combout\)) ) ) ) # ( \configurator|needWait~q\ & ( !\configurator|LessThan0~0_combout\ & ( !\configurator|discarding~q\ ) ) ) 
-- # ( !\configurator|needWait~q\ & ( !\configurator|LessThan0~0_combout\ & ( (!\configurator|discarding~q\ & \configurator|outputClock~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010101010101010101000100000001000001010100010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_discarding~q\,
	datab => \configurator|ALT_INV_outputClock~q\,
	datac => \configurator|ALT_INV_LessThan1~0_combout\,
	datae => \configurator|ALT_INV_needWait~q\,
	dataf => \configurator|ALT_INV_LessThan0~0_combout\,
	combout => \configurator|needWait~0_combout\);

-- Location: MLABCELL_X25_Y51_N3
\configurator|needWait~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|needWait~feeder_combout\ = ( \configurator|needWait~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \configurator|ALT_INV_needWait~0_combout\,
	combout => \configurator|needWait~feeder_combout\);

-- Location: FF_X25_Y51_N5
\configurator|needWait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	d => \configurator|needWait~feeder_combout\,
	sclr => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|needWait~q\);

-- Location: MLABCELL_X25_Y51_N27
\configurator|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Selector0~0_combout\ = ( \configurator|configOK~reg0_q\ & ( \configurator|state.DISCARD~q\ & ( \configurator|discarded~q\ ) ) ) # ( !\configurator|configOK~reg0_q\ & ( \configurator|state.DISCARD~q\ & ( ((\configurator|state.SEND~q\ & 
-- (!\configurator|needWait~q\ & !\writeconfig~input_o\))) # (\configurator|discarded~q\) ) ) ) # ( !\configurator|configOK~reg0_q\ & ( !\configurator|state.DISCARD~q\ & ( (\configurator|state.SEND~q\ & (!\configurator|needWait~q\ & !\writeconfig~input_o\)) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000000000000000000001001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_state.SEND~q\,
	datab => \configurator|ALT_INV_needWait~q\,
	datac => \configurator|ALT_INV_discarded~q\,
	datad => \ALT_INV_writeconfig~input_o\,
	datae => \configurator|ALT_INV_configOK~reg0_q\,
	dataf => \configurator|ALT_INV_state.DISCARD~q\,
	combout => \configurator|Selector0~0_combout\);

-- Location: FF_X25_Y51_N29
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

-- Location: LABCELL_X27_Y51_N27
\configurator|state~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|state~11_combout\ = ( \configurator|nextState.SEND~q\ & ( \resetn~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_resetn~input_o\,
	dataf => \configurator|ALT_INV_nextState.SEND~q\,
	combout => \configurator|state~11_combout\);

-- Location: FF_X27_Y51_N29
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

-- Location: LABCELL_X27_Y51_N42
\configurator|sendData~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|sendData~0_combout\ = ( \configurator|state.SEND~q\ & ( \resetn~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_resetn~input_o\,
	dataf => \configurator|ALT_INV_state.SEND~q\,
	combout => \configurator|sendData~0_combout\);

-- Location: FF_X27_Y51_N44
\configurator|outputClock\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	d => \configurator|sendData~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|outputClock~q\);

-- Location: LABCELL_X23_Y50_N36
\configurator|SCLK~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|SCLK~0_combout\ = (\configurator|outputClock~q\ & (\configurator|internalClock~q\ & \resetn~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_outputClock~q\,
	datac => \configurator|ALT_INV_internalClock~q\,
	datad => \ALT_INV_resetn~input_o\,
	combout => \configurator|SCLK~0_combout\);

-- Location: LABCELL_X27_Y51_N30
\configurator|SDENB~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|SDENB~0_combout\ = ( \configurator|state.SEND~q\ ) # ( !\configurator|state.SEND~q\ & ( \configurator|state.DISCARD~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_state.DISCARD~q\,
	dataf => \configurator|ALT_INV_state.SEND~q\,
	combout => \configurator|SDENB~0_combout\);

-- Location: FF_X27_Y51_N31
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

-- Location: FF_X27_Y51_N53
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

-- Location: LABCELL_X22_Y50_N15
\configurator|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux0~0_combout\ = ( \configurator|counter\(2) & ( \configurator|counter\(0) & ( (!\configurator|dataIndex\(0)) # ((!\configurator|dataIndex\(1) & ((\configurator|counter\(1)))) # (\configurator|dataIndex\(1) & (\configurator|counter\(3)))) ) 
-- ) ) # ( !\configurator|counter\(2) & ( \configurator|counter\(0) & ( (!\configurator|dataIndex\(1) & (((\configurator|counter\(1) & \configurator|dataIndex\(0))))) # (\configurator|dataIndex\(1) & (((!\configurator|dataIndex\(0))) # 
-- (\configurator|counter\(3)))) ) ) ) # ( \configurator|counter\(2) & ( !\configurator|counter\(0) & ( (!\configurator|dataIndex\(1) & (((!\configurator|dataIndex\(0)) # (\configurator|counter\(1))))) # (\configurator|dataIndex\(1) & 
-- (\configurator|counter\(3) & ((\configurator|dataIndex\(0))))) ) ) ) # ( !\configurator|counter\(2) & ( !\configurator|counter\(0) & ( (\configurator|dataIndex\(0) & ((!\configurator|dataIndex\(1) & ((\configurator|counter\(1)))) # 
-- (\configurator|dataIndex\(1) & (\configurator|counter\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011101010100001101101010101000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(1),
	datab => \configurator|ALT_INV_counter\(3),
	datac => \configurator|ALT_INV_counter\(1),
	datad => \configurator|ALT_INV_dataIndex\(0),
	datae => \configurator|ALT_INV_counter\(2),
	dataf => \configurator|ALT_INV_counter\(0),
	combout => \configurator|Mux0~0_combout\);

-- Location: LABCELL_X22_Y50_N3
\configurator|SDIO~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|SDIO~4_combout\ = ( !\configurator|dataIndex\(0) & ( (!\configurator|dataIndex\(2) & ((!\configurator|dataIndex\(1) & (\configurator|counter\(6))) # (\configurator|dataIndex\(1) & (((\configurator|counter\(4))))))) # 
-- (\configurator|dataIndex\(2) & ((((\configurator|Mux0~0_combout\))))) ) ) # ( \configurator|dataIndex\(0) & ( (!\configurator|dataIndex\(1) & (((!\configurator|dataIndex\(2) & (\configurator|counter\(5))) # (\configurator|dataIndex\(2) & 
-- ((\configurator|Mux0~0_combout\)))))) # (\configurator|dataIndex\(1) & ((((!\configurator|dataIndex\(2) & \configurator|Mux0~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010011100000000000010100000000000100111111111110101111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(1),
	datab => \configurator|ALT_INV_counter\(6),
	datac => \configurator|ALT_INV_counter\(5),
	datad => \configurator|ALT_INV_dataIndex\(2),
	datae => \configurator|ALT_INV_dataIndex\(0),
	dataf => \configurator|ALT_INV_Mux0~0_combout\,
	datag => \configurator|ALT_INV_counter\(4),
	combout => \configurator|SDIO~4_combout\);

-- Location: LABCELL_X22_Y50_N27
\configurator|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|LessThan0~1_combout\ = ( \configurator|dataIndex\(2) & ( \configurator|LessThan0~0_combout\ & ( (!\configurator|dataIndex\(4) & (!\configurator|dataIndex\(3) & ((!\configurator|dataIndex\(1)) # (!\configurator|dataIndex\(0))))) ) ) ) # ( 
-- !\configurator|dataIndex\(2) & ( \configurator|LessThan0~0_combout\ & ( (!\configurator|dataIndex\(4) & !\configurator|dataIndex\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(1),
	datab => \configurator|ALT_INV_dataIndex\(4),
	datac => \configurator|ALT_INV_dataIndex\(3),
	datad => \configurator|ALT_INV_dataIndex\(0),
	datae => \configurator|ALT_INV_dataIndex\(2),
	dataf => \configurator|ALT_INV_LessThan0~0_combout\,
	combout => \configurator|LessThan0~1_combout\);

-- Location: LABCELL_X23_Y50_N45
\configurator|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~1_combout\ = ( \configurator|dataIndex\(0) & ( \configurator|dataIndex\(2) & ( (!\configurator|counter\(5) & ((!\configurator|counter\(0) & (\configurator|dataIndex\(1) & \configurator|dataIndex\(3))) # (\configurator|counter\(0) & 
-- (!\configurator|dataIndex\(1) & !\configurator|dataIndex\(3))))) # (\configurator|counter\(5) & (!\configurator|counter\(0))) ) ) ) # ( !\configurator|dataIndex\(0) & ( \configurator|dataIndex\(2) & ( (!\configurator|counter\(5) & 
-- ((!\configurator|dataIndex\(1) & ((!\configurator|dataIndex\(3)))) # (\configurator|dataIndex\(1) & (!\configurator|counter\(0) & \configurator|dataIndex\(3))))) # (\configurator|counter\(5) & (!\configurator|counter\(0))) ) ) ) # ( 
-- \configurator|dataIndex\(0) & ( !\configurator|dataIndex\(2) & ( (!\configurator|counter\(5) & (((\configurator|dataIndex\(1) & !\configurator|dataIndex\(3))))) # (\configurator|counter\(5) & (!\configurator|counter\(0))) ) ) ) # ( 
-- !\configurator|dataIndex\(0) & ( !\configurator|dataIndex\(2) & ( (!\configurator|counter\(0) & (((\configurator|dataIndex\(1) & !\configurator|dataIndex\(3))) # (\configurator|counter\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001000100010011100100010011100100010011000110010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(5),
	datab => \configurator|ALT_INV_counter\(0),
	datac => \configurator|ALT_INV_dataIndex\(1),
	datad => \configurator|ALT_INV_dataIndex\(3),
	datae => \configurator|ALT_INV_dataIndex\(0),
	dataf => \configurator|ALT_INV_dataIndex\(2),
	combout => \configurator|Mux1~1_combout\);

-- Location: LABCELL_X22_Y50_N57
\configurator|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~0_combout\ = ( \configurator|counter\(4) & ( \configurator|Mux1~1_combout\ & ( (!\configurator|counter\(3) & (\configurator|counter\(5) & (!\configurator|counter\(1) & !\configurator|counter\(2)))) ) ) ) # ( !\configurator|counter\(4) & 
-- ( \configurator|Mux1~1_combout\ & ( (!\configurator|counter\(3) & (!\configurator|counter\(5) & (!\configurator|counter\(1) & !\configurator|counter\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(3),
	datab => \configurator|ALT_INV_counter\(5),
	datac => \configurator|ALT_INV_counter\(1),
	datad => \configurator|ALT_INV_counter\(2),
	datae => \configurator|ALT_INV_counter\(4),
	dataf => \configurator|ALT_INV_Mux1~1_combout\,
	combout => \configurator|Mux1~0_combout\);

-- Location: LABCELL_X21_Y50_N24
\configurator|SDIO~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|SDIO~0_combout\ = ( !\configurator|LessThan0~1_combout\ & ( (!\configurator|LessThan0~0_combout\ & ((((\configurator|SDIO~q\))))) # (\configurator|LessThan0~0_combout\ & ((!\configurator|outputClock~q\ & (((\configurator|SDIO~q\)))) # 
-- (\configurator|outputClock~q\ & ((!\configurator|LessThan1~0_combout\ & ((\configurator|SDIO~q\))) # (\configurator|LessThan1~0_combout\ & (\configurator|Mux1~0_combout\)))))) ) ) # ( \configurator|LessThan0~1_combout\ & ( ((!\configurator|outputClock~q\ 
-- & (((\configurator|SDIO~q\)))) # (\configurator|outputClock~q\ & (\configurator|SDIO~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011111111000000111100111100000001111011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_LessThan0~0_combout\,
	datab => \configurator|ALT_INV_outputClock~q\,
	datac => \configurator|ALT_INV_SDIO~4_combout\,
	datad => \configurator|ALT_INV_SDIO~q\,
	datae => \configurator|ALT_INV_LessThan0~1_combout\,
	dataf => \configurator|ALT_INV_LessThan1~0_combout\,
	datag => \configurator|ALT_INV_Mux1~0_combout\,
	combout => \configurator|SDIO~0_combout\);

-- Location: FF_X21_Y50_N26
\configurator|SDIO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	d => \configurator|SDIO~0_combout\,
	sclr => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|SDIO~q\);

-- Location: LABCELL_X21_Y51_N12
\configurator|CLKRECEIVED~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|CLKRECEIVED~0_combout\ = ( \configurator|internalClock~q\ & ( \resetn~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_resetn~input_o\,
	dataf => \configurator|ALT_INV_internalClock~q\,
	combout => \configurator|CLKRECEIVED~0_combout\);

-- Location: LABCELL_X21_Y51_N30
\configurator|writeConfigReceived~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|writeConfigReceived~0_combout\ = ( \resetn~input_o\ & ( \writeconfig~input_o\ ) ) # ( !\resetn~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_writeconfig~input_o\,
	datae => \ALT_INV_resetn~input_o\,
	combout => \configurator|writeConfigReceived~0_combout\);

-- Location: LABCELL_X23_Y51_N57
\configurator|stateRegOut[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|stateRegOut[0]~3_combout\ = ( \resetn~input_o\ & ( \configurator|state.INTER~q\ ) ) # ( !\resetn~input_o\ & ( \configurator|state.INTER~q\ ) ) # ( \resetn~input_o\ & ( !\configurator|state.INTER~q\ & ( \configurator|state.DISCARD~q\ ) ) ) # 
-- ( !\resetn~input_o\ & ( !\configurator|state.INTER~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_state.DISCARD~q\,
	datae => \ALT_INV_resetn~input_o\,
	dataf => \configurator|ALT_INV_state.INTER~q\,
	combout => \configurator|stateRegOut[0]~3_combout\);

-- Location: LABCELL_X23_Y51_N42
\configurator|stateRegOut[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|stateRegOut[1]~4_combout\ = ( \configurator|state.SEND~q\ & ( \resetn~input_o\ ) ) # ( \configurator|state.SEND~q\ & ( !\resetn~input_o\ ) ) # ( !\configurator|state.SEND~q\ & ( !\resetn~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \configurator|ALT_INV_state.SEND~q\,
	dataf => \ALT_INV_resetn~input_o\,
	combout => \configurator|stateRegOut[1]~4_combout\);

-- Location: MLABCELL_X25_Y51_N6
\configurator|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Selector3~0_combout\ = ( \configurator|state.DONE~q\ & ( \configurator|configOK~reg0_q\ & ( !\writeconfig~input_o\ ) ) ) # ( !\configurator|state.DONE~q\ & ( \configurator|configOK~reg0_q\ & ( (\configurator|state.SEND~q\ & 
-- !\writeconfig~input_o\) ) ) ) # ( \configurator|state.DONE~q\ & ( !\configurator|configOK~reg0_q\ & ( !\writeconfig~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000001010000010100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_state.SEND~q\,
	datac => \ALT_INV_writeconfig~input_o\,
	datae => \configurator|ALT_INV_state.DONE~q\,
	dataf => \configurator|ALT_INV_configOK~reg0_q\,
	combout => \configurator|Selector3~0_combout\);

-- Location: FF_X25_Y51_N8
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

-- Location: LABCELL_X27_Y51_N36
\configurator|state~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|state~12_combout\ = ( \configurator|nextState.DONE~q\ & ( \resetn~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_resetn~input_o\,
	dataf => \configurator|ALT_INV_nextState.DONE~q\,
	combout => \configurator|state~12_combout\);

-- Location: FF_X27_Y51_N38
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

-- Location: MLABCELL_X25_Y51_N15
\configurator|stateRegOut[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|stateRegOut[2]~5_combout\ = ( \resetn~input_o\ & ( (\configurator|state.DONE~q\) # (\configurator|state.INTER~q\) ) ) # ( !\resetn~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010111110101111111111111111111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_state.INTER~q\,
	datac => \configurator|ALT_INV_state.DONE~q\,
	datae => \ALT_INV_resetn~input_o\,
	combout => \configurator|stateRegOut[2]~5_combout\);

-- Location: LABCELL_X23_Y51_N9
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

-- Location: LABCELL_X21_Y51_N51
\configurator|nextStateRegOut[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|nextStateRegOut[1]~4_combout\ = ( \resetn~input_o\ & ( \configurator|nextState.SEND~q\ ) ) # ( !\resetn~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010101010101010111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_nextState.SEND~q\,
	datae => \ALT_INV_resetn~input_o\,
	combout => \configurator|nextStateRegOut[1]~4_combout\);

-- Location: LABCELL_X23_Y51_N30
\configurator|nextStateRegOut[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|nextStateRegOut[2]~5_combout\ = ( \resetn~input_o\ & ( (\configurator|nextState.DONE~q\) # (\configurator|nextState.INTER~q\) ) ) # ( !\resetn~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_nextState.INTER~q\,
	datac => \configurator|ALT_INV_nextState.DONE~q\,
	dataf => \ALT_INV_resetn~input_o\,
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

-- Location: IOIBUF_X14_Y61_N1
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

-- Location: MLABCELL_X42_Y4_N3
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


