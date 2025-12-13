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

-- DATE "12/13/2025 22:13:05"

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
	serialTimer : IN std_logic
	);
END MainFSM;

-- Design Ports Information
-- output[0]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[7]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[8]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[9]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[10]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[11]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[12]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[13]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[14]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[15]	=>  Location: PIN_AD23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdio	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sclk	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdenb	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- configok	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- serialTimer	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeconfig	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \sclk~input_o\ : std_logic;
SIGNAL \sdenb~input_o\ : std_logic;
SIGNAL \configok~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \serialTimer~input_o\ : std_logic;
SIGNAL \serialTimer~inputCLKENA0_outclk\ : std_logic;
SIGNAL \configurator|Add4~13_sumout\ : std_logic;
SIGNAL \configurator|clockDividerBuffer[6]~DUPLICATE_q\ : std_logic;
SIGNAL \configurator|Equal0~0_combout\ : std_logic;
SIGNAL \configurator|Equal0~1_combout\ : std_logic;
SIGNAL \configurator|Add4~14\ : std_logic;
SIGNAL \configurator|Add4~17_sumout\ : std_logic;
SIGNAL \configurator|Add4~18\ : std_logic;
SIGNAL \configurator|Add4~21_sumout\ : std_logic;
SIGNAL \configurator|Add4~22\ : std_logic;
SIGNAL \configurator|Add4~25_sumout\ : std_logic;
SIGNAL \configurator|Add4~26\ : std_logic;
SIGNAL \configurator|Add4~29_sumout\ : std_logic;
SIGNAL \configurator|Add4~30\ : std_logic;
SIGNAL \configurator|Add4~1_sumout\ : std_logic;
SIGNAL \configurator|Add4~2\ : std_logic;
SIGNAL \configurator|Add4~5_sumout\ : std_logic;
SIGNAL \configurator|Add4~6\ : std_logic;
SIGNAL \configurator|Add4~9_sumout\ : std_logic;
SIGNAL \configurator|internalClock~0_combout\ : std_logic;
SIGNAL \configurator|internalClock~q\ : std_logic;
SIGNAL \configurator|Add2~117_sumout\ : std_logic;
SIGNAL \configurator|LessThan1~0_combout\ : std_logic;
SIGNAL \configurator|SDIO~2_combout\ : std_logic;
SIGNAL \configurator|SDIO~3_combout\ : std_logic;
SIGNAL \configurator|SDIO~1_combout\ : std_logic;
SIGNAL \configurator|SDIO~0_combout\ : std_logic;
SIGNAL \configurator|SDIO~4_combout\ : std_logic;
SIGNAL \configurator|SDIO~7_combout\ : std_logic;
SIGNAL \writeconfig~input_o\ : std_logic;
SIGNAL \configurator|waiting~q\ : std_logic;
SIGNAL \configurator|Waiter~0_combout\ : std_logic;
SIGNAL \configurator|waitingBuffer[0]~1_combout\ : std_logic;
SIGNAL \configurator|Add5~1_combout\ : std_logic;
SIGNAL \configurator|Add5~0_combout\ : std_logic;
SIGNAL \configurator|waitingBuffer~0_combout\ : std_logic;
SIGNAL \configurator|Equal1~0_combout\ : std_logic;
SIGNAL \configurator|waitingDone~combout\ : std_logic;
SIGNAL \configurator|needWait~q\ : std_logic;
SIGNAL \configurator|Selector1~0_combout\ : std_logic;
SIGNAL \configurator|nextState.INTER~q\ : std_logic;
SIGNAL \configurator|state.INTER~q\ : std_logic;
SIGNAL \configurator|discarding~q\ : std_logic;
SIGNAL \configurator|discardBuffer[0]~0_combout\ : std_logic;
SIGNAL \configurator|discardBuffer[0]~1_combout\ : std_logic;
SIGNAL \configurator|comb~0_combout\ : std_logic;
SIGNAL \configurator|discarded~combout\ : std_logic;
SIGNAL \configurator|Selector2~0_combout\ : std_logic;
SIGNAL \configurator|nextState.DISCARD~q\ : std_logic;
SIGNAL \configurator|state.DISCARD~q\ : std_logic;
SIGNAL \configurator|nextState~9_combout\ : std_logic;
SIGNAL \configurator|nextState.IDLE~q\ : std_logic;
SIGNAL \configurator|state.IDLE~q\ : std_logic;
SIGNAL \configurator|Selector4~0_combout\ : std_logic;
SIGNAL \configurator|sendData~q\ : std_logic;
SIGNAL \configurator|Add2~118\ : std_logic;
SIGNAL \configurator|Add2~113_sumout\ : std_logic;
SIGNAL \configurator|Add2~114\ : std_logic;
SIGNAL \configurator|Add2~109_sumout\ : std_logic;
SIGNAL \configurator|Add2~110\ : std_logic;
SIGNAL \configurator|Add2~121_sumout\ : std_logic;
SIGNAL \configurator|Add2~122\ : std_logic;
SIGNAL \configurator|Add2~125_sumout\ : std_logic;
SIGNAL \configurator|Add2~126\ : std_logic;
SIGNAL \configurator|Add2~9_sumout\ : std_logic;
SIGNAL \configurator|Add2~10\ : std_logic;
SIGNAL \configurator|Add2~5_sumout\ : std_logic;
SIGNAL \configurator|Add2~6\ : std_logic;
SIGNAL \configurator|Add2~33_sumout\ : std_logic;
SIGNAL \configurator|Add2~34\ : std_logic;
SIGNAL \configurator|Add2~29_sumout\ : std_logic;
SIGNAL \configurator|Add2~30\ : std_logic;
SIGNAL \configurator|Add2~25_sumout\ : std_logic;
SIGNAL \configurator|Add2~26\ : std_logic;
SIGNAL \configurator|Add2~21_sumout\ : std_logic;
SIGNAL \configurator|Add2~22\ : std_logic;
SIGNAL \configurator|Add2~17_sumout\ : std_logic;
SIGNAL \configurator|Add2~18\ : std_logic;
SIGNAL \configurator|Add2~61_sumout\ : std_logic;
SIGNAL \configurator|Add2~62\ : std_logic;
SIGNAL \configurator|Add2~65_sumout\ : std_logic;
SIGNAL \configurator|Add2~66\ : std_logic;
SIGNAL \configurator|Add2~69_sumout\ : std_logic;
SIGNAL \configurator|Add2~70\ : std_logic;
SIGNAL \configurator|Add2~73_sumout\ : std_logic;
SIGNAL \configurator|Add2~74\ : std_logic;
SIGNAL \configurator|Add2~77_sumout\ : std_logic;
SIGNAL \configurator|Add2~78\ : std_logic;
SIGNAL \configurator|Add2~81_sumout\ : std_logic;
SIGNAL \configurator|Add2~82\ : std_logic;
SIGNAL \configurator|Add2~101_sumout\ : std_logic;
SIGNAL \configurator|Add2~102\ : std_logic;
SIGNAL \configurator|Add2~85_sumout\ : std_logic;
SIGNAL \configurator|Add2~86\ : std_logic;
SIGNAL \configurator|Add2~41_sumout\ : std_logic;
SIGNAL \configurator|Add2~42\ : std_logic;
SIGNAL \configurator|Add2~37_sumout\ : std_logic;
SIGNAL \configurator|Add2~38\ : std_logic;
SIGNAL \configurator|Add2~105_sumout\ : std_logic;
SIGNAL \configurator|Add2~106\ : std_logic;
SIGNAL \configurator|Add2~97_sumout\ : std_logic;
SIGNAL \configurator|Add2~98\ : std_logic;
SIGNAL \configurator|Add2~93_sumout\ : std_logic;
SIGNAL \configurator|Add2~94\ : std_logic;
SIGNAL \configurator|Add2~89_sumout\ : std_logic;
SIGNAL \configurator|Add2~90\ : std_logic;
SIGNAL \configurator|Add2~13_sumout\ : std_logic;
SIGNAL \configurator|Add2~14\ : std_logic;
SIGNAL \configurator|Add2~57_sumout\ : std_logic;
SIGNAL \configurator|Add2~58\ : std_logic;
SIGNAL \configurator|Add2~53_sumout\ : std_logic;
SIGNAL \configurator|Add2~54\ : std_logic;
SIGNAL \configurator|Add2~49_sumout\ : std_logic;
SIGNAL \configurator|Add2~50\ : std_logic;
SIGNAL \configurator|Add2~45_sumout\ : std_logic;
SIGNAL \configurator|Add2~46\ : std_logic;
SIGNAL \configurator|Add2~1_sumout\ : std_logic;
SIGNAL \configurator|Add3~1_sumout\ : std_logic;
SIGNAL \configurator|counter[4]~0_combout\ : std_logic;
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
SIGNAL \configurator|LessThan2~0_combout\ : std_logic;
SIGNAL \configurator|configOK~0_combout\ : std_logic;
SIGNAL \configurator|configOK~reg0_q\ : std_logic;
SIGNAL \configurator|Selector0~0_combout\ : std_logic;
SIGNAL \configurator|nextState.SEND~q\ : std_logic;
SIGNAL \configurator|state.SEND~feeder_combout\ : std_logic;
SIGNAL \configurator|state.SEND~q\ : std_logic;
SIGNAL \configurator|outputClock~q\ : std_logic;
SIGNAL \configurator|SCLK~0_combout\ : std_logic;
SIGNAL \configurator|SDENB~0_combout\ : std_logic;
SIGNAL \configurator|SDENB~reg0_q\ : std_logic;
SIGNAL \configurator|SDIO~6_combout\ : std_logic;
SIGNAL \configurator|LessThan0~0_combout\ : std_logic;
SIGNAL \configurator|Mux0~0_combout\ : std_logic;
SIGNAL \configurator|SDIO~8_combout\ : std_logic;
SIGNAL \configurator|ConfigMemory|Mux13~0_combout\ : std_logic;
SIGNAL \configurator|Mux1~3_combout\ : std_logic;
SIGNAL \configurator|ConfigMemory|Mux8~0_combout\ : std_logic;
SIGNAL \configurator|Mux1~9_combout\ : std_logic;
SIGNAL \configurator|Mux1~1_combout\ : std_logic;
SIGNAL \configurator|Mux1~0_combout\ : std_logic;
SIGNAL \configurator|Mux1~4_combout\ : std_logic;
SIGNAL \configurator|ConfigMemory|Mux14~0_combout\ : std_logic;
SIGNAL \configurator|Mux1~2_combout\ : std_logic;
SIGNAL \configurator|Mux1~5_combout\ : std_logic;
SIGNAL \configurator|SDIO~5_combout\ : std_logic;
SIGNAL \configurator|SDIO~combout\ : std_logic;
SIGNAL \configurator|dataIndex\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \configurator|counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \configurator|clockDividerBuffer\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \configurator|discardBuffer\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \configurator|waitingBuffer\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \configurator|ALT_INV_SDIO~6_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_sendData~q\ : std_logic;
SIGNAL \configurator|ALT_INV_SDIO~5_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_Mux1~4_combout\ : std_logic;
SIGNAL \configurator|ConfigMemory|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_Mux1~3_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \configurator|ConfigMemory|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \configurator|ConfigMemory|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_SDIO~4_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_SDIO~3_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_SDIO~2_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_SDIO~1_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_SDIO~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_Mux1~9_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_Mux1~5_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_SDIO~8_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_clockDividerBuffer\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \configurator|ALT_INV_configOK~reg0_q\ : std_logic;
SIGNAL \configurator|ALT_INV_counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \configurator|ALT_INV_dataIndex\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \configurator|ALT_INV_clockDividerBuffer[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_writeconfig~input_o\ : std_logic;
SIGNAL \configurator|ALT_INV_waitingBuffer\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \configurator|ALT_INV_waitingDone~combout\ : std_logic;
SIGNAL \configurator|ALT_INV_discardBuffer\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \configurator|ALT_INV_discarded~combout\ : std_logic;
SIGNAL \configurator|ALT_INV_SDIO~combout\ : std_logic;
SIGNAL \configurator|ALT_INV_waitingBuffer[0]~1_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_Add5~1_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_Add5~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_waitingBuffer~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_Waiter~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_discardBuffer[0]~1_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_discardBuffer[0]~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_discarding~q\ : std_logic;
SIGNAL \configurator|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_waiting~q\ : std_logic;
SIGNAL \configurator|ALT_INV_needWait~q\ : std_logic;
SIGNAL \configurator|ALT_INV_state.INTER~q\ : std_logic;
SIGNAL \configurator|ALT_INV_state.DISCARD~q\ : std_logic;
SIGNAL \configurator|ALT_INV_nextState.SEND~q\ : std_logic;
SIGNAL \configurator|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_outputClock~q\ : std_logic;
SIGNAL \configurator|ALT_INV_state.SEND~q\ : std_logic;
SIGNAL \configurator|ALT_INV_state.IDLE~q\ : std_logic;
SIGNAL \configurator|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_internalClock~q\ : std_logic;

BEGIN

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
\configurator|ALT_INV_SDIO~6_combout\ <= NOT \configurator|SDIO~6_combout\;
\configurator|ALT_INV_LessThan1~0_combout\ <= NOT \configurator|LessThan1~0_combout\;
\configurator|ALT_INV_sendData~q\ <= NOT \configurator|sendData~q\;
\configurator|ALT_INV_SDIO~5_combout\ <= NOT \configurator|SDIO~5_combout\;
\configurator|ALT_INV_Mux0~0_combout\ <= NOT \configurator|Mux0~0_combout\;
\configurator|ALT_INV_Mux1~4_combout\ <= NOT \configurator|Mux1~4_combout\;
\configurator|ConfigMemory|ALT_INV_Mux8~0_combout\ <= NOT \configurator|ConfigMemory|Mux8~0_combout\;
\configurator|ALT_INV_Mux1~3_combout\ <= NOT \configurator|Mux1~3_combout\;
\configurator|ALT_INV_Mux1~2_combout\ <= NOT \configurator|Mux1~2_combout\;
\configurator|ALT_INV_Mux1~1_combout\ <= NOT \configurator|Mux1~1_combout\;
\configurator|ConfigMemory|ALT_INV_Mux13~0_combout\ <= NOT \configurator|ConfigMemory|Mux13~0_combout\;
\configurator|ALT_INV_Mux1~0_combout\ <= NOT \configurator|Mux1~0_combout\;
\configurator|ConfigMemory|ALT_INV_Mux14~0_combout\ <= NOT \configurator|ConfigMemory|Mux14~0_combout\;
\configurator|ALT_INV_LessThan0~0_combout\ <= NOT \configurator|LessThan0~0_combout\;
\configurator|ALT_INV_SDIO~4_combout\ <= NOT \configurator|SDIO~4_combout\;
\configurator|ALT_INV_SDIO~3_combout\ <= NOT \configurator|SDIO~3_combout\;
\configurator|ALT_INV_SDIO~2_combout\ <= NOT \configurator|SDIO~2_combout\;
\configurator|ALT_INV_SDIO~1_combout\ <= NOT \configurator|SDIO~1_combout\;
\configurator|ALT_INV_SDIO~0_combout\ <= NOT \configurator|SDIO~0_combout\;
\configurator|ALT_INV_Mux1~9_combout\ <= NOT \configurator|Mux1~9_combout\;
\configurator|ALT_INV_Mux1~5_combout\ <= NOT \configurator|Mux1~5_combout\;
\configurator|ALT_INV_SDIO~8_combout\ <= NOT \configurator|SDIO~8_combout\;
\configurator|ALT_INV_clockDividerBuffer\(4) <= NOT \configurator|clockDividerBuffer\(4);
\configurator|ALT_INV_clockDividerBuffer\(3) <= NOT \configurator|clockDividerBuffer\(3);
\configurator|ALT_INV_clockDividerBuffer\(2) <= NOT \configurator|clockDividerBuffer\(2);
\configurator|ALT_INV_clockDividerBuffer\(1) <= NOT \configurator|clockDividerBuffer\(1);
\configurator|ALT_INV_clockDividerBuffer\(0) <= NOT \configurator|clockDividerBuffer\(0);
\configurator|ALT_INV_clockDividerBuffer\(7) <= NOT \configurator|clockDividerBuffer\(7);
\configurator|ALT_INV_clockDividerBuffer\(6) <= NOT \configurator|clockDividerBuffer\(6);
\configurator|ALT_INV_clockDividerBuffer\(5) <= NOT \configurator|clockDividerBuffer\(5);
\configurator|ALT_INV_configOK~reg0_q\ <= NOT \configurator|configOK~reg0_q\;
\configurator|ALT_INV_counter\(6) <= NOT \configurator|counter\(6);
\configurator|ALT_INV_counter\(3) <= NOT \configurator|counter\(3);
\configurator|ALT_INV_counter\(2) <= NOT \configurator|counter\(2);
\configurator|ALT_INV_counter\(5) <= NOT \configurator|counter\(5);
\configurator|ALT_INV_counter\(4) <= NOT \configurator|counter\(4);
\configurator|ALT_INV_counter\(1) <= NOT \configurator|counter\(1);
\configurator|ALT_INV_counter\(0) <= NOT \configurator|counter\(0);
\configurator|ALT_INV_dataIndex\(4) <= NOT \configurator|dataIndex\(4);
\configurator|ALT_INV_dataIndex\(3) <= NOT \configurator|dataIndex\(3);
\configurator|ALT_INV_dataIndex\(0) <= NOT \configurator|dataIndex\(0);
\configurator|ALT_INV_dataIndex\(1) <= NOT \configurator|dataIndex\(1);
\configurator|ALT_INV_dataIndex\(2) <= NOT \configurator|dataIndex\(2);
\configurator|ALT_INV_dataIndex\(22) <= NOT \configurator|dataIndex\(22);
\configurator|ALT_INV_dataIndex\(18) <= NOT \configurator|dataIndex\(18);
\configurator|ALT_INV_dataIndex\(23) <= NOT \configurator|dataIndex\(23);
\configurator|ALT_INV_dataIndex\(24) <= NOT \configurator|dataIndex\(24);
\configurator|ALT_INV_dataIndex\(25) <= NOT \configurator|dataIndex\(25);
\configurator|ALT_INV_dataIndex\(19) <= NOT \configurator|dataIndex\(19);
\configurator|ALT_INV_dataIndex\(17) <= NOT \configurator|dataIndex\(17);
\configurator|ALT_INV_dataIndex\(16) <= NOT \configurator|dataIndex\(16);
\configurator|ALT_INV_dataIndex\(15) <= NOT \configurator|dataIndex\(15);
\configurator|ALT_INV_dataIndex\(14) <= NOT \configurator|dataIndex\(14);
\configurator|ALT_INV_dataIndex\(13) <= NOT \configurator|dataIndex\(13);
\configurator|ALT_INV_dataIndex\(12) <= NOT \configurator|dataIndex\(12);
\configurator|ALT_INV_dataIndex\(27) <= NOT \configurator|dataIndex\(27);
\configurator|ALT_INV_dataIndex\(28) <= NOT \configurator|dataIndex\(28);
\configurator|ALT_INV_dataIndex\(29) <= NOT \configurator|dataIndex\(29);
\configurator|ALT_INV_dataIndex\(30) <= NOT \configurator|dataIndex\(30);
\configurator|ALT_INV_dataIndex\(20) <= NOT \configurator|dataIndex\(20);
\configurator|ALT_INV_dataIndex\(21) <= NOT \configurator|dataIndex\(21);
\configurator|ALT_INV_dataIndex\(7) <= NOT \configurator|dataIndex\(7);
\configurator|ALT_INV_dataIndex\(8) <= NOT \configurator|dataIndex\(8);
\configurator|ALT_INV_dataIndex\(9) <= NOT \configurator|dataIndex\(9);
\configurator|ALT_INV_dataIndex\(10) <= NOT \configurator|dataIndex\(10);
\configurator|ALT_INV_dataIndex\(11) <= NOT \configurator|dataIndex\(11);
\configurator|ALT_INV_dataIndex\(26) <= NOT \configurator|dataIndex\(26);
\configurator|ALT_INV_dataIndex\(5) <= NOT \configurator|dataIndex\(5);
\configurator|ALT_INV_dataIndex\(6) <= NOT \configurator|dataIndex\(6);
\configurator|ALT_INV_dataIndex\(31) <= NOT \configurator|dataIndex\(31);
\configurator|ALT_INV_clockDividerBuffer[6]~DUPLICATE_q\ <= NOT \configurator|clockDividerBuffer[6]~DUPLICATE_q\;
\ALT_INV_writeconfig~input_o\ <= NOT \writeconfig~input_o\;
\configurator|ALT_INV_waitingBuffer\(1) <= NOT \configurator|waitingBuffer\(1);
\configurator|ALT_INV_waitingBuffer\(2) <= NOT \configurator|waitingBuffer\(2);
\configurator|ALT_INV_waitingBuffer\(3) <= NOT \configurator|waitingBuffer\(3);
\configurator|ALT_INV_waitingDone~combout\ <= NOT \configurator|waitingDone~combout\;
\configurator|ALT_INV_discardBuffer\(0) <= NOT \configurator|discardBuffer\(0);
\configurator|ALT_INV_discarded~combout\ <= NOT \configurator|discarded~combout\;
\configurator|ALT_INV_SDIO~combout\ <= NOT \configurator|SDIO~combout\;
\configurator|ALT_INV_waitingBuffer[0]~1_combout\ <= NOT \configurator|waitingBuffer[0]~1_combout\;
\configurator|ALT_INV_Add5~1_combout\ <= NOT \configurator|Add5~1_combout\;
\configurator|ALT_INV_Add5~0_combout\ <= NOT \configurator|Add5~0_combout\;
\configurator|ALT_INV_waitingBuffer~0_combout\ <= NOT \configurator|waitingBuffer~0_combout\;
\configurator|ALT_INV_Waiter~0_combout\ <= NOT \configurator|Waiter~0_combout\;
\configurator|ALT_INV_Equal1~0_combout\ <= NOT \configurator|Equal1~0_combout\;
\configurator|ALT_INV_discardBuffer[0]~1_combout\ <= NOT \configurator|discardBuffer[0]~1_combout\;
\configurator|ALT_INV_discardBuffer[0]~0_combout\ <= NOT \configurator|discardBuffer[0]~0_combout\;
\configurator|ALT_INV_discarding~q\ <= NOT \configurator|discarding~q\;
\configurator|ALT_INV_comb~0_combout\ <= NOT \configurator|comb~0_combout\;
\configurator|ALT_INV_waiting~q\ <= NOT \configurator|waiting~q\;
\configurator|ALT_INV_needWait~q\ <= NOT \configurator|needWait~q\;
\configurator|ALT_INV_state.INTER~q\ <= NOT \configurator|state.INTER~q\;
\configurator|ALT_INV_state.DISCARD~q\ <= NOT \configurator|state.DISCARD~q\;
\configurator|ALT_INV_nextState.SEND~q\ <= NOT \configurator|nextState.SEND~q\;
\configurator|ALT_INV_Equal0~0_combout\ <= NOT \configurator|Equal0~0_combout\;
\configurator|ALT_INV_outputClock~q\ <= NOT \configurator|outputClock~q\;
\configurator|ALT_INV_state.SEND~q\ <= NOT \configurator|state.SEND~q\;
\configurator|ALT_INV_state.IDLE~q\ <= NOT \configurator|state.IDLE~q\;
\configurator|ALT_INV_LessThan2~0_combout\ <= NOT \configurator|LessThan2~0_combout\;
\configurator|ALT_INV_internalClock~q\ <= NOT \configurator|internalClock~q\;

-- Location: IOOBUF_X19_Y0_N53
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

-- Location: IOOBUF_X17_Y0_N59
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

-- Location: IOOBUF_X50_Y0_N2
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

-- Location: IOOBUF_X34_Y0_N53
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

-- Location: IOOBUF_X19_Y61_N2
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

-- Location: IOOBUF_X21_Y0_N36
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

-- Location: IOOBUF_X68_Y47_N96
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

-- Location: IOOBUF_X12_Y0_N2
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

-- Location: IOOBUF_X40_Y61_N76
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

-- Location: IOOBUF_X50_Y61_N2
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

-- Location: IOOBUF_X46_Y61_N53
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

-- Location: IOOBUF_X68_Y51_N5
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

-- Location: IOOBUF_X51_Y61_N2
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

-- Location: IOOBUF_X42_Y61_N36
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

-- Location: IOOBUF_X68_Y47_N62
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

-- Location: IOOBUF_X59_Y0_N36
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
	i => \configurator|SDIO~combout\,
	devoe => ww_devoe,
	o => ww_sdio);

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

-- Location: IOOBUF_X14_Y61_N53
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

-- Location: LABCELL_X21_Y57_N0
\configurator|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~13_sumout\ = SUM(( \configurator|clockDividerBuffer\(0) ) + ( VCC ) + ( !VCC ))
-- \configurator|Add4~14\ = CARRY(( \configurator|clockDividerBuffer\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_clockDividerBuffer\(0),
	cin => GND,
	sumout => \configurator|Add4~13_sumout\,
	cout => \configurator|Add4~14\);

-- Location: FF_X21_Y57_N19
\configurator|clockDividerBuffer[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \configurator|Add4~5_sumout\,
	sclr => \configurator|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer[6]~DUPLICATE_q\);

-- Location: LABCELL_X21_Y57_N48
\configurator|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Equal0~0_combout\ = ( \configurator|clockDividerBuffer\(2) & ( (\configurator|clockDividerBuffer\(3) & (\configurator|clockDividerBuffer\(4) & (\configurator|clockDividerBuffer\(0) & \configurator|clockDividerBuffer\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_clockDividerBuffer\(3),
	datab => \configurator|ALT_INV_clockDividerBuffer\(4),
	datac => \configurator|ALT_INV_clockDividerBuffer\(0),
	datad => \configurator|ALT_INV_clockDividerBuffer\(1),
	dataf => \configurator|ALT_INV_clockDividerBuffer\(2),
	combout => \configurator|Equal0~0_combout\);

-- Location: LABCELL_X21_Y57_N24
\configurator|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Equal0~1_combout\ = ( \configurator|Equal0~0_combout\ & ( (\configurator|clockDividerBuffer\(5) & (\configurator|clockDividerBuffer[6]~DUPLICATE_q\ & \configurator|clockDividerBuffer\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_clockDividerBuffer\(5),
	datac => \configurator|ALT_INV_clockDividerBuffer[6]~DUPLICATE_q\,
	datad => \configurator|ALT_INV_clockDividerBuffer\(7),
	dataf => \configurator|ALT_INV_Equal0~0_combout\,
	combout => \configurator|Equal0~1_combout\);

-- Location: FF_X21_Y57_N2
\configurator|clockDividerBuffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \configurator|Add4~13_sumout\,
	sclr => \configurator|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(0));

-- Location: LABCELL_X21_Y57_N3
\configurator|Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~17_sumout\ = SUM(( \configurator|clockDividerBuffer\(1) ) + ( GND ) + ( \configurator|Add4~14\ ))
-- \configurator|Add4~18\ = CARRY(( \configurator|clockDividerBuffer\(1) ) + ( GND ) + ( \configurator|Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_clockDividerBuffer\(1),
	cin => \configurator|Add4~14\,
	sumout => \configurator|Add4~17_sumout\,
	cout => \configurator|Add4~18\);

-- Location: FF_X21_Y57_N5
\configurator|clockDividerBuffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \configurator|Add4~17_sumout\,
	sclr => \configurator|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(1));

-- Location: LABCELL_X21_Y57_N6
\configurator|Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~21_sumout\ = SUM(( \configurator|clockDividerBuffer\(2) ) + ( GND ) + ( \configurator|Add4~18\ ))
-- \configurator|Add4~22\ = CARRY(( \configurator|clockDividerBuffer\(2) ) + ( GND ) + ( \configurator|Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_clockDividerBuffer\(2),
	cin => \configurator|Add4~18\,
	sumout => \configurator|Add4~21_sumout\,
	cout => \configurator|Add4~22\);

-- Location: FF_X21_Y57_N8
\configurator|clockDividerBuffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \configurator|Add4~21_sumout\,
	sclr => \configurator|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(2));

-- Location: LABCELL_X21_Y57_N9
\configurator|Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~25_sumout\ = SUM(( \configurator|clockDividerBuffer\(3) ) + ( GND ) + ( \configurator|Add4~22\ ))
-- \configurator|Add4~26\ = CARRY(( \configurator|clockDividerBuffer\(3) ) + ( GND ) + ( \configurator|Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_clockDividerBuffer\(3),
	cin => \configurator|Add4~22\,
	sumout => \configurator|Add4~25_sumout\,
	cout => \configurator|Add4~26\);

-- Location: FF_X21_Y57_N10
\configurator|clockDividerBuffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \configurator|Add4~25_sumout\,
	sclr => \configurator|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(3));

-- Location: LABCELL_X21_Y57_N12
\configurator|Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~29_sumout\ = SUM(( \configurator|clockDividerBuffer\(4) ) + ( GND ) + ( \configurator|Add4~26\ ))
-- \configurator|Add4~30\ = CARRY(( \configurator|clockDividerBuffer\(4) ) + ( GND ) + ( \configurator|Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_clockDividerBuffer\(4),
	cin => \configurator|Add4~26\,
	sumout => \configurator|Add4~29_sumout\,
	cout => \configurator|Add4~30\);

-- Location: FF_X21_Y57_N14
\configurator|clockDividerBuffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \configurator|Add4~29_sumout\,
	sclr => \configurator|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(4));

-- Location: LABCELL_X21_Y57_N15
\configurator|Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~1_sumout\ = SUM(( \configurator|clockDividerBuffer\(5) ) + ( GND ) + ( \configurator|Add4~30\ ))
-- \configurator|Add4~2\ = CARRY(( \configurator|clockDividerBuffer\(5) ) + ( GND ) + ( \configurator|Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_clockDividerBuffer\(5),
	cin => \configurator|Add4~30\,
	sumout => \configurator|Add4~1_sumout\,
	cout => \configurator|Add4~2\);

-- Location: FF_X21_Y57_N17
\configurator|clockDividerBuffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \configurator|Add4~1_sumout\,
	sclr => \configurator|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(5));

-- Location: LABCELL_X21_Y57_N18
\configurator|Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~5_sumout\ = SUM(( \configurator|clockDividerBuffer\(6) ) + ( GND ) + ( \configurator|Add4~2\ ))
-- \configurator|Add4~6\ = CARRY(( \configurator|clockDividerBuffer\(6) ) + ( GND ) + ( \configurator|Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_clockDividerBuffer\(6),
	cin => \configurator|Add4~2\,
	sumout => \configurator|Add4~5_sumout\,
	cout => \configurator|Add4~6\);

-- Location: FF_X21_Y57_N20
\configurator|clockDividerBuffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \configurator|Add4~5_sumout\,
	sclr => \configurator|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(6));

-- Location: LABCELL_X21_Y57_N21
\configurator|Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~9_sumout\ = SUM(( \configurator|clockDividerBuffer\(7) ) + ( GND ) + ( \configurator|Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_clockDividerBuffer\(7),
	cin => \configurator|Add4~6\,
	sumout => \configurator|Add4~9_sumout\);

-- Location: FF_X21_Y57_N23
\configurator|clockDividerBuffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \configurator|Add4~9_sumout\,
	sclr => \configurator|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(7));

-- Location: LABCELL_X21_Y57_N30
\configurator|internalClock~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|internalClock~0_combout\ = ( \configurator|internalClock~q\ & ( \configurator|Equal0~0_combout\ & ( (!\configurator|clockDividerBuffer\(7)) # ((!\configurator|clockDividerBuffer\(6)) # (!\configurator|clockDividerBuffer\(5))) ) ) ) # ( 
-- !\configurator|internalClock~q\ & ( \configurator|Equal0~0_combout\ & ( (\configurator|clockDividerBuffer\(7) & (\configurator|clockDividerBuffer\(6) & \configurator|clockDividerBuffer\(5))) ) ) ) # ( \configurator|internalClock~q\ & ( 
-- !\configurator|Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000001011111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_clockDividerBuffer\(7),
	datac => \configurator|ALT_INV_clockDividerBuffer\(6),
	datad => \configurator|ALT_INV_clockDividerBuffer\(5),
	datae => \configurator|ALT_INV_internalClock~q\,
	dataf => \configurator|ALT_INV_Equal0~0_combout\,
	combout => \configurator|internalClock~0_combout\);

-- Location: FF_X21_Y57_N35
\configurator|internalClock\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~input_o\,
	asdata => \configurator|internalClock~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|internalClock~q\);

-- Location: LABCELL_X22_Y59_N0
\configurator|Add2~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~117_sumout\ = SUM(( \configurator|dataIndex\(0) ) + ( VCC ) + ( !VCC ))
-- \configurator|Add2~118\ = CARRY(( \configurator|dataIndex\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_dataIndex\(0),
	cin => GND,
	sumout => \configurator|Add2~117_sumout\,
	cout => \configurator|Add2~118\);

-- Location: LABCELL_X23_Y59_N12
\configurator|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|LessThan1~0_combout\ = ( \configurator|dataIndex\(2) & ( \configurator|dataIndex\(1) & ( \configurator|dataIndex\(4) ) ) ) # ( !\configurator|dataIndex\(2) & ( \configurator|dataIndex\(1) & ( (\configurator|dataIndex\(3) & 
-- \configurator|dataIndex\(4)) ) ) ) # ( \configurator|dataIndex\(2) & ( !\configurator|dataIndex\(1) & ( (\configurator|dataIndex\(3) & \configurator|dataIndex\(4)) ) ) ) # ( !\configurator|dataIndex\(2) & ( !\configurator|dataIndex\(1) & ( 
-- (\configurator|dataIndex\(3) & \configurator|dataIndex\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_dataIndex\(3),
	datad => \configurator|ALT_INV_dataIndex\(4),
	datae => \configurator|ALT_INV_dataIndex\(2),
	dataf => \configurator|ALT_INV_dataIndex\(1),
	combout => \configurator|LessThan1~0_combout\);

-- Location: LABCELL_X23_Y59_N33
\configurator|SDIO~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|SDIO~2_combout\ = ( !\configurator|dataIndex\(13) & ( !\configurator|dataIndex\(14) & ( (!\configurator|dataIndex\(17) & (!\configurator|dataIndex\(12) & (!\configurator|dataIndex\(16) & !\configurator|dataIndex\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(17),
	datab => \configurator|ALT_INV_dataIndex\(12),
	datac => \configurator|ALT_INV_dataIndex\(16),
	datad => \configurator|ALT_INV_dataIndex\(15),
	datae => \configurator|ALT_INV_dataIndex\(13),
	dataf => \configurator|ALT_INV_dataIndex\(14),
	combout => \configurator|SDIO~2_combout\);

-- Location: LABCELL_X23_Y58_N36
\configurator|SDIO~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|SDIO~3_combout\ = ( !\configurator|dataIndex\(22) & ( !\configurator|dataIndex\(19) & ( (!\configurator|dataIndex\(18) & (!\configurator|dataIndex\(25) & (!\configurator|dataIndex\(23) & !\configurator|dataIndex\(24)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(18),
	datab => \configurator|ALT_INV_dataIndex\(25),
	datac => \configurator|ALT_INV_dataIndex\(23),
	datad => \configurator|ALT_INV_dataIndex\(24),
	datae => \configurator|ALT_INV_dataIndex\(22),
	dataf => \configurator|ALT_INV_dataIndex\(19),
	combout => \configurator|SDIO~3_combout\);

-- Location: LABCELL_X22_Y58_N54
\configurator|SDIO~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|SDIO~1_combout\ = ( !\configurator|dataIndex\(20) & ( !\configurator|dataIndex\(28) & ( (!\configurator|dataIndex\(21) & (!\configurator|dataIndex\(30) & (!\configurator|dataIndex\(27) & !\configurator|dataIndex\(29)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(21),
	datab => \configurator|ALT_INV_dataIndex\(30),
	datac => \configurator|ALT_INV_dataIndex\(27),
	datad => \configurator|ALT_INV_dataIndex\(29),
	datae => \configurator|ALT_INV_dataIndex\(20),
	dataf => \configurator|ALT_INV_dataIndex\(28),
	combout => \configurator|SDIO~1_combout\);

-- Location: LABCELL_X22_Y58_N48
\configurator|SDIO~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|SDIO~0_combout\ = ( !\configurator|dataIndex\(7) & ( !\configurator|dataIndex\(10) & ( (!\configurator|dataIndex\(26) & (!\configurator|dataIndex\(11) & (!\configurator|dataIndex\(9) & !\configurator|dataIndex\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(26),
	datab => \configurator|ALT_INV_dataIndex\(11),
	datac => \configurator|ALT_INV_dataIndex\(9),
	datad => \configurator|ALT_INV_dataIndex\(8),
	datae => \configurator|ALT_INV_dataIndex\(7),
	dataf => \configurator|ALT_INV_dataIndex\(10),
	combout => \configurator|SDIO~0_combout\);

-- Location: LABCELL_X22_Y58_N36
\configurator|SDIO~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|SDIO~4_combout\ = ( \configurator|SDIO~1_combout\ & ( \configurator|SDIO~0_combout\ & ( (!\configurator|dataIndex\(5) & (!\configurator|dataIndex\(6) & (\configurator|SDIO~2_combout\ & \configurator|SDIO~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(5),
	datab => \configurator|ALT_INV_dataIndex\(6),
	datac => \configurator|ALT_INV_SDIO~2_combout\,
	datad => \configurator|ALT_INV_SDIO~3_combout\,
	datae => \configurator|ALT_INV_SDIO~1_combout\,
	dataf => \configurator|ALT_INV_SDIO~0_combout\,
	combout => \configurator|SDIO~4_combout\);

-- Location: LABCELL_X22_Y58_N42
\configurator|SDIO~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|SDIO~7_combout\ = ( \configurator|SDIO~4_combout\ & ( (\configurator|LessThan1~0_combout\ & !\configurator|dataIndex\(31)) ) ) # ( !\configurator|SDIO~4_combout\ & ( !\configurator|dataIndex\(31) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_LessThan1~0_combout\,
	datac => \configurator|ALT_INV_dataIndex\(31),
	dataf => \configurator|ALT_INV_SDIO~4_combout\,
	combout => \configurator|SDIO~7_combout\);

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

-- Location: FF_X21_Y57_N56
\configurator|waiting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	asdata => \configurator|state.INTER~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|waiting~q\);

-- Location: LABCELL_X21_Y57_N54
\configurator|Waiter~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Waiter~0_combout\ = ( \configurator|internalClock~q\ & ( \configurator|waiting~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_waiting~q\,
	dataf => \configurator|ALT_INV_internalClock~q\,
	combout => \configurator|Waiter~0_combout\);

-- Location: LABCELL_X21_Y57_N42
\configurator|waitingBuffer[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|waitingBuffer[0]~1_combout\ = ( \configurator|internalClock~q\ & ( !\configurator|waitingBuffer[0]~1_combout\ $ (!\configurator|waiting~q\) ) ) # ( !\configurator|internalClock~q\ & ( \configurator|waitingBuffer[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_waitingBuffer[0]~1_combout\,
	datad => \configurator|ALT_INV_waiting~q\,
	dataf => \configurator|ALT_INV_internalClock~q\,
	combout => \configurator|waitingBuffer[0]~1_combout\);

-- Location: LABCELL_X21_Y57_N45
\configurator|Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add5~1_combout\ = ( \configurator|waitingBuffer\(1) & ( !\configurator|waitingBuffer[0]~1_combout\ ) ) # ( !\configurator|waitingBuffer\(1) & ( \configurator|waitingBuffer[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_waitingBuffer[0]~1_combout\,
	dataf => \configurator|ALT_INV_waitingBuffer\(1),
	combout => \configurator|Add5~1_combout\);

-- Location: LABCELL_X21_Y57_N57
\configurator|waitingBuffer[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|waitingBuffer\(1) = ( \configurator|waitingBuffer\(1) & ( (!\configurator|Waiter~0_combout\) # (\configurator|Add5~1_combout\) ) ) # ( !\configurator|waitingBuffer\(1) & ( (\configurator|Add5~1_combout\ & \configurator|Waiter~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_Add5~1_combout\,
	datad => \configurator|ALT_INV_Waiter~0_combout\,
	dataf => \configurator|ALT_INV_waitingBuffer\(1),
	combout => \configurator|waitingBuffer\(1));

-- Location: LABCELL_X21_Y57_N39
\configurator|Add5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add5~0_combout\ = ( \configurator|waitingBuffer\(1) & ( !\configurator|waitingBuffer\(2) $ (!\configurator|waitingBuffer[0]~1_combout\) ) ) # ( !\configurator|waitingBuffer\(1) & ( \configurator|waitingBuffer\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_waitingBuffer\(2),
	datac => \configurator|ALT_INV_waitingBuffer[0]~1_combout\,
	dataf => \configurator|ALT_INV_waitingBuffer\(1),
	combout => \configurator|Add5~0_combout\);

-- Location: LABCELL_X21_Y57_N36
\configurator|waitingBuffer[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|waitingBuffer\(2) = ( \configurator|Waiter~0_combout\ & ( \configurator|Add5~0_combout\ ) ) # ( !\configurator|Waiter~0_combout\ & ( \configurator|waitingBuffer\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_Add5~0_combout\,
	datad => \configurator|ALT_INV_waitingBuffer\(2),
	dataf => \configurator|ALT_INV_Waiter~0_combout\,
	combout => \configurator|waitingBuffer\(2));

-- Location: LABCELL_X21_Y57_N27
\configurator|waitingBuffer~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|waitingBuffer~0_combout\ = ( \configurator|waitingBuffer\(3) & ( (!\configurator|waitingBuffer[0]~1_combout\) # ((!\configurator|waitingBuffer\(2)) # (!\configurator|waitingBuffer\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111001111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_waitingBuffer[0]~1_combout\,
	datac => \configurator|ALT_INV_waitingBuffer\(2),
	datad => \configurator|ALT_INV_waitingBuffer\(1),
	dataf => \configurator|ALT_INV_waitingBuffer\(3),
	combout => \configurator|waitingBuffer~0_combout\);

-- Location: LABCELL_X21_Y57_N51
\configurator|waitingBuffer[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|waitingBuffer\(3) = ( \configurator|waitingBuffer\(3) & ( (!\configurator|Waiter~0_combout\) # (\configurator|waitingBuffer~0_combout\) ) ) # ( !\configurator|waitingBuffer\(3) & ( (\configurator|waitingBuffer~0_combout\ & 
-- \configurator|Waiter~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_waitingBuffer~0_combout\,
	datad => \configurator|ALT_INV_Waiter~0_combout\,
	dataf => \configurator|ALT_INV_waitingBuffer\(3),
	combout => \configurator|waitingBuffer\(3));

-- Location: LABCELL_X22_Y57_N0
\configurator|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Equal1~0_combout\ = ( \configurator|waitingBuffer\(1) & ( \configurator|waitingBuffer[0]~1_combout\ & ( (!\configurator|waitingBuffer\(3) & \configurator|waitingBuffer\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_waitingBuffer\(3),
	datad => \configurator|ALT_INV_waitingBuffer\(2),
	datae => \configurator|ALT_INV_waitingBuffer\(1),
	dataf => \configurator|ALT_INV_waitingBuffer[0]~1_combout\,
	combout => \configurator|Equal1~0_combout\);

-- Location: LABCELL_X22_Y57_N27
\configurator|waitingDone\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|waitingDone~combout\ = ( \configurator|Equal1~0_combout\ & ( (\configurator|waitingDone~combout\) # (\configurator|Waiter~0_combout\) ) ) # ( !\configurator|Equal1~0_combout\ & ( (!\configurator|Waiter~0_combout\ & 
-- \configurator|waitingDone~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_Waiter~0_combout\,
	datad => \configurator|ALT_INV_waitingDone~combout\,
	dataf => \configurator|ALT_INV_Equal1~0_combout\,
	combout => \configurator|waitingDone~combout\);

-- Location: FF_X22_Y58_N59
\configurator|needWait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	asdata => \configurator|SDIO~7_combout\,
	sload => VCC,
	ena => \configurator|sendData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|needWait~q\);

-- Location: LABCELL_X22_Y57_N36
\configurator|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Selector1~0_combout\ = ( \configurator|waitingDone~combout\ & ( \configurator|needWait~q\ & ( (!\writeconfig~input_o\ & (!\configurator|configOK~reg0_q\ & \configurator|state.SEND~q\)) ) ) ) # ( !\configurator|waitingDone~combout\ & ( 
-- \configurator|needWait~q\ & ( ((!\writeconfig~input_o\ & (!\configurator|configOK~reg0_q\ & \configurator|state.SEND~q\))) # (\configurator|state.INTER~q\) ) ) ) # ( !\configurator|waitingDone~combout\ & ( !\configurator|needWait~q\ & ( 
-- \configurator|state.INTER~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000001000111111110000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_writeconfig~input_o\,
	datab => \configurator|ALT_INV_configOK~reg0_q\,
	datac => \configurator|ALT_INV_state.SEND~q\,
	datad => \configurator|ALT_INV_state.INTER~q\,
	datae => \configurator|ALT_INV_waitingDone~combout\,
	dataf => \configurator|ALT_INV_needWait~q\,
	combout => \configurator|Selector1~0_combout\);

-- Location: FF_X22_Y57_N38
\configurator|nextState.INTER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \configurator|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|nextState.INTER~q\);

-- Location: FF_X22_Y57_N41
\configurator|state.INTER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	asdata => \configurator|nextState.INTER~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|state.INTER~q\);

-- Location: FF_X22_Y57_N53
\configurator|discarding\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	asdata => \configurator|state.DISCARD~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|discarding~q\);

-- Location: LABCELL_X22_Y57_N12
\configurator|discardBuffer[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|discardBuffer[0]~0_combout\ = ( \configurator|internalClock~q\ & ( \configurator|discarding~q\ & ( \configurator|discardBuffer\(0) ) ) ) # ( !\configurator|internalClock~q\ & ( \configurator|discarding~q\ ) ) # ( 
-- \configurator|internalClock~q\ & ( !\configurator|discarding~q\ ) ) # ( !\configurator|internalClock~q\ & ( !\configurator|discarding~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_discardBuffer\(0),
	datae => \configurator|ALT_INV_internalClock~q\,
	dataf => \configurator|ALT_INV_discarding~q\,
	combout => \configurator|discardBuffer[0]~0_combout\);

-- Location: LABCELL_X22_Y57_N42
\configurator|discardBuffer[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|discardBuffer[0]~1_combout\ = ( \configurator|discarding~q\ & ( ((\configurator|discardBuffer\(0) & \configurator|waiting~q\)) # (\configurator|internalClock~q\) ) ) # ( !\configurator|discarding~q\ & ( (\configurator|discardBuffer\(0) & 
-- \configurator|waiting~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_discardBuffer\(0),
	datac => \configurator|ALT_INV_waiting~q\,
	datad => \configurator|ALT_INV_internalClock~q\,
	dataf => \configurator|ALT_INV_discarding~q\,
	combout => \configurator|discardBuffer[0]~1_combout\);

-- Location: LABCELL_X22_Y57_N57
\configurator|discardBuffer[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|discardBuffer\(0) = ( \configurator|discardBuffer\(0) & ( \configurator|discardBuffer[0]~1_combout\ & ( !\configurator|discardBuffer[0]~0_combout\ ) ) ) # ( !\configurator|discardBuffer\(0) & ( \configurator|discardBuffer[0]~1_combout\ & ( 
-- !\configurator|discardBuffer[0]~0_combout\ ) ) ) # ( \configurator|discardBuffer\(0) & ( !\configurator|discardBuffer[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_discardBuffer[0]~0_combout\,
	datae => \configurator|ALT_INV_discardBuffer\(0),
	dataf => \configurator|ALT_INV_discardBuffer[0]~1_combout\,
	combout => \configurator|discardBuffer\(0));

-- Location: LABCELL_X22_Y57_N51
\configurator|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|comb~0_combout\ = ( \configurator|waiting~q\ & ( \configurator|discardBuffer\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_discardBuffer\(0),
	dataf => \configurator|ALT_INV_waiting~q\,
	combout => \configurator|comb~0_combout\);

-- Location: LABCELL_X22_Y57_N33
\configurator|discarded\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|discarded~combout\ = ( \configurator|discardBuffer\(0) & ( \configurator|discarded~combout\ & ( !\configurator|comb~0_combout\ ) ) ) # ( !\configurator|discardBuffer\(0) & ( \configurator|discarded~combout\ & ( !\configurator|comb~0_combout\ 
-- ) ) ) # ( \configurator|discardBuffer\(0) & ( !\configurator|discarded~combout\ & ( !\configurator|comb~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_comb~0_combout\,
	datae => \configurator|ALT_INV_discardBuffer\(0),
	dataf => \configurator|ALT_INV_discarded~combout\,
	combout => \configurator|discarded~combout\);

-- Location: LABCELL_X22_Y57_N6
\configurator|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Selector2~0_combout\ = ( \writeconfig~input_o\ & ( \configurator|state.IDLE~q\ & ( (!\configurator|waitingDone~combout\ & (\configurator|state.DISCARD~q\ & (!\configurator|discarded~combout\))) # (\configurator|waitingDone~combout\ & 
-- (((\configurator|state.DISCARD~q\ & !\configurator|discarded~combout\)) # (\configurator|state.INTER~q\))) ) ) ) # ( !\writeconfig~input_o\ & ( \configurator|state.IDLE~q\ & ( (!\configurator|waitingDone~combout\ & (\configurator|state.DISCARD~q\ & 
-- (!\configurator|discarded~combout\))) # (\configurator|waitingDone~combout\ & (((\configurator|state.DISCARD~q\ & !\configurator|discarded~combout\)) # (\configurator|state.INTER~q\))) ) ) ) # ( \writeconfig~input_o\ & ( !\configurator|state.IDLE~q\ & ( 
-- (!\configurator|waitingDone~combout\ & (\configurator|state.DISCARD~q\ & (!\configurator|discarded~combout\))) # (\configurator|waitingDone~combout\ & (((\configurator|state.DISCARD~q\ & !\configurator|discarded~combout\)) # 
-- (\configurator|state.INTER~q\))) ) ) ) # ( !\writeconfig~input_o\ & ( !\configurator|state.IDLE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001100000111010100110000011101010011000001110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_waitingDone~combout\,
	datab => \configurator|ALT_INV_state.DISCARD~q\,
	datac => \configurator|ALT_INV_discarded~combout\,
	datad => \configurator|ALT_INV_state.INTER~q\,
	datae => \ALT_INV_writeconfig~input_o\,
	dataf => \configurator|ALT_INV_state.IDLE~q\,
	combout => \configurator|Selector2~0_combout\);

-- Location: FF_X22_Y57_N7
\configurator|nextState.DISCARD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \configurator|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|nextState.DISCARD~q\);

-- Location: FF_X22_Y57_N17
\configurator|state.DISCARD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	asdata => \configurator|nextState.DISCARD~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|state.DISCARD~q\);

-- Location: LABCELL_X22_Y57_N24
\configurator|nextState~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|nextState~9_combout\ = ( \configurator|state.DISCARD~q\ ) # ( !\configurator|state.DISCARD~q\ & ( (!\writeconfig~input_o\) # (\configurator|state.INTER~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110011111111110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_state.INTER~q\,
	datad => \ALT_INV_writeconfig~input_o\,
	dataf => \configurator|ALT_INV_state.DISCARD~q\,
	combout => \configurator|nextState~9_combout\);

-- Location: FF_X22_Y57_N26
\configurator|nextState.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \configurator|nextState~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|nextState.IDLE~q\);

-- Location: FF_X23_Y58_N59
\configurator|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	asdata => \configurator|nextState.IDLE~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|state.IDLE~q\);

-- Location: LABCELL_X23_Y58_N27
\configurator|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Selector4~0_combout\ = ( \configurator|state.IDLE~q\ & ( \configurator|sendData~q\ & ( \configurator|state.SEND~q\ ) ) ) # ( !\configurator|state.IDLE~q\ & ( \configurator|sendData~q\ ) ) # ( \configurator|state.IDLE~q\ & ( 
-- !\configurator|sendData~q\ & ( \configurator|state.SEND~q\ ) ) ) # ( !\configurator|state.IDLE~q\ & ( !\configurator|sendData~q\ & ( \configurator|state.SEND~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_state.SEND~q\,
	datae => \configurator|ALT_INV_state.IDLE~q\,
	dataf => \configurator|ALT_INV_sendData~q\,
	combout => \configurator|Selector4~0_combout\);

-- Location: FF_X22_Y58_N44
\configurator|sendData\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	asdata => \configurator|Selector4~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|sendData~q\);

-- Location: FF_X22_Y59_N2
\configurator|dataIndex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	d => \configurator|Add2~117_sumout\,
	sclr => \configurator|SDIO~7_combout\,
	ena => \configurator|sendData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(0));

-- Location: LABCELL_X22_Y59_N3
\configurator|Add2~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~113_sumout\ = SUM(( \configurator|dataIndex\(1) ) + ( GND ) + ( \configurator|Add2~118\ ))
-- \configurator|Add2~114\ = CARRY(( \configurator|dataIndex\(1) ) + ( GND ) + ( \configurator|Add2~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(1),
	cin => \configurator|Add2~118\,
	sumout => \configurator|Add2~113_sumout\,
	cout => \configurator|Add2~114\);

-- Location: FF_X22_Y59_N5
\configurator|dataIndex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	d => \configurator|Add2~113_sumout\,
	sclr => \configurator|SDIO~7_combout\,
	ena => \configurator|sendData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(1));

-- Location: LABCELL_X22_Y59_N6
\configurator|Add2~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~109_sumout\ = SUM(( \configurator|dataIndex\(2) ) + ( GND ) + ( \configurator|Add2~114\ ))
-- \configurator|Add2~110\ = CARRY(( \configurator|dataIndex\(2) ) + ( GND ) + ( \configurator|Add2~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_dataIndex\(2),
	cin => \configurator|Add2~114\,
	sumout => \configurator|Add2~109_sumout\,
	cout => \configurator|Add2~110\);

-- Location: FF_X22_Y59_N8
\configurator|dataIndex[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	d => \configurator|Add2~109_sumout\,
	sclr => \configurator|SDIO~7_combout\,
	ena => \configurator|sendData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(2));

-- Location: LABCELL_X22_Y59_N9
\configurator|Add2~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~121_sumout\ = SUM(( \configurator|dataIndex\(3) ) + ( GND ) + ( \configurator|Add2~110\ ))
-- \configurator|Add2~122\ = CARRY(( \configurator|dataIndex\(3) ) + ( GND ) + ( \configurator|Add2~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(3),
	cin => \configurator|Add2~110\,
	sumout => \configurator|Add2~121_sumout\,
	cout => \configurator|Add2~122\);

-- Location: FF_X22_Y59_N11
\configurator|dataIndex[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	d => \configurator|Add2~121_sumout\,
	sclr => \configurator|SDIO~7_combout\,
	ena => \configurator|sendData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(3));

-- Location: LABCELL_X22_Y59_N12
\configurator|Add2~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~125_sumout\ = SUM(( \configurator|dataIndex\(4) ) + ( GND ) + ( \configurator|Add2~122\ ))
-- \configurator|Add2~126\ = CARRY(( \configurator|dataIndex\(4) ) + ( GND ) + ( \configurator|Add2~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_dataIndex\(4),
	cin => \configurator|Add2~122\,
	sumout => \configurator|Add2~125_sumout\,
	cout => \configurator|Add2~126\);

-- Location: FF_X22_Y59_N14
\configurator|dataIndex[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	d => \configurator|Add2~125_sumout\,
	sclr => \configurator|SDIO~7_combout\,
	ena => \configurator|sendData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(4));

-- Location: LABCELL_X22_Y59_N15
\configurator|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~9_sumout\ = SUM(( \configurator|dataIndex\(5) ) + ( GND ) + ( \configurator|Add2~126\ ))
-- \configurator|Add2~10\ = CARRY(( \configurator|dataIndex\(5) ) + ( GND ) + ( \configurator|Add2~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(5),
	cin => \configurator|Add2~126\,
	sumout => \configurator|Add2~9_sumout\,
	cout => \configurator|Add2~10\);

-- Location: FF_X22_Y59_N17
\configurator|dataIndex[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	d => \configurator|Add2~9_sumout\,
	sclr => \configurator|SDIO~7_combout\,
	ena => \configurator|sendData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(5));

-- Location: LABCELL_X22_Y59_N18
\configurator|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~5_sumout\ = SUM(( \configurator|dataIndex\(6) ) + ( GND ) + ( \configurator|Add2~10\ ))
-- \configurator|Add2~6\ = CARRY(( \configurator|dataIndex\(6) ) + ( GND ) + ( \configurator|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_dataIndex\(6),
	cin => \configurator|Add2~10\,
	sumout => \configurator|Add2~5_sumout\,
	cout => \configurator|Add2~6\);

-- Location: FF_X22_Y59_N20
\configurator|dataIndex[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	d => \configurator|Add2~5_sumout\,
	sclr => \configurator|SDIO~7_combout\,
	ena => \configurator|sendData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(6));

-- Location: LABCELL_X22_Y59_N21
\configurator|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~33_sumout\ = SUM(( \configurator|dataIndex\(7) ) + ( GND ) + ( \configurator|Add2~6\ ))
-- \configurator|Add2~34\ = CARRY(( \configurator|dataIndex\(7) ) + ( GND ) + ( \configurator|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(7),
	cin => \configurator|Add2~6\,
	sumout => \configurator|Add2~33_sumout\,
	cout => \configurator|Add2~34\);

-- Location: FF_X22_Y59_N23
\configurator|dataIndex[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	d => \configurator|Add2~33_sumout\,
	sclr => \configurator|SDIO~7_combout\,
	ena => \configurator|sendData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(7));

-- Location: LABCELL_X22_Y59_N24
\configurator|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~29_sumout\ = SUM(( \configurator|dataIndex\(8) ) + ( GND ) + ( \configurator|Add2~34\ ))
-- \configurator|Add2~30\ = CARRY(( \configurator|dataIndex\(8) ) + ( GND ) + ( \configurator|Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_dataIndex\(8),
	cin => \configurator|Add2~34\,
	sumout => \configurator|Add2~29_sumout\,
	cout => \configurator|Add2~30\);

-- Location: FF_X22_Y59_N26
\configurator|dataIndex[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	d => \configurator|Add2~29_sumout\,
	sclr => \configurator|SDIO~7_combout\,
	ena => \configurator|sendData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(8));

-- Location: LABCELL_X22_Y59_N27
\configurator|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~25_sumout\ = SUM(( \configurator|dataIndex\(9) ) + ( GND ) + ( \configurator|Add2~30\ ))
-- \configurator|Add2~26\ = CARRY(( \configurator|dataIndex\(9) ) + ( GND ) + ( \configurator|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(9),
	cin => \configurator|Add2~30\,
	sumout => \configurator|Add2~25_sumout\,
	cout => \configurator|Add2~26\);

-- Location: FF_X22_Y59_N29
\configurator|dataIndex[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	d => \configurator|Add2~25_sumout\,
	sclr => \configurator|SDIO~7_combout\,
	ena => \configurator|sendData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(9));

-- Location: LABCELL_X22_Y59_N30
\configurator|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~21_sumout\ = SUM(( \configurator|dataIndex\(10) ) + ( GND ) + ( \configurator|Add2~26\ ))
-- \configurator|Add2~22\ = CARRY(( \configurator|dataIndex\(10) ) + ( GND ) + ( \configurator|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_dataIndex\(10),
	cin => \configurator|Add2~26\,
	sumout => \configurator|Add2~21_sumout\,
	cout => \configurator|Add2~22\);

-- Location: FF_X22_Y59_N32
\configurator|dataIndex[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	d => \configurator|Add2~21_sumout\,
	sclr => \configurator|SDIO~7_combout\,
	ena => \configurator|sendData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(10));

-- Location: LABCELL_X22_Y59_N33
\configurator|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~17_sumout\ = SUM(( \configurator|dataIndex\(11) ) + ( GND ) + ( \configurator|Add2~22\ ))
-- \configurator|Add2~18\ = CARRY(( \configurator|dataIndex\(11) ) + ( GND ) + ( \configurator|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(11),
	cin => \configurator|Add2~22\,
	sumout => \configurator|Add2~17_sumout\,
	cout => \configurator|Add2~18\);

-- Location: FF_X22_Y59_N35
\configurator|dataIndex[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	d => \configurator|Add2~17_sumout\,
	sclr => \configurator|SDIO~7_combout\,
	ena => \configurator|sendData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(11));

-- Location: LABCELL_X22_Y59_N36
\configurator|Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~61_sumout\ = SUM(( \configurator|dataIndex\(12) ) + ( GND ) + ( \configurator|Add2~18\ ))
-- \configurator|Add2~62\ = CARRY(( \configurator|dataIndex\(12) ) + ( GND ) + ( \configurator|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_dataIndex\(12),
	cin => \configurator|Add2~18\,
	sumout => \configurator|Add2~61_sumout\,
	cout => \configurator|Add2~62\);

-- Location: FF_X22_Y59_N38
\configurator|dataIndex[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	d => \configurator|Add2~61_sumout\,
	sclr => \configurator|SDIO~7_combout\,
	ena => \configurator|sendData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(12));

-- Location: LABCELL_X22_Y59_N39
\configurator|Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~65_sumout\ = SUM(( \configurator|dataIndex\(13) ) + ( GND ) + ( \configurator|Add2~62\ ))
-- \configurator|Add2~66\ = CARRY(( \configurator|dataIndex\(13) ) + ( GND ) + ( \configurator|Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(13),
	cin => \configurator|Add2~62\,
	sumout => \configurator|Add2~65_sumout\,
	cout => \configurator|Add2~66\);

-- Location: FF_X22_Y59_N41
\configurator|dataIndex[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	d => \configurator|Add2~65_sumout\,
	sclr => \configurator|SDIO~7_combout\,
	ena => \configurator|sendData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(13));

-- Location: LABCELL_X22_Y59_N42
\configurator|Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~69_sumout\ = SUM(( \configurator|dataIndex\(14) ) + ( GND ) + ( \configurator|Add2~66\ ))
-- \configurator|Add2~70\ = CARRY(( \configurator|dataIndex\(14) ) + ( GND ) + ( \configurator|Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_dataIndex\(14),
	cin => \configurator|Add2~66\,
	sumout => \configurator|Add2~69_sumout\,
	cout => \configurator|Add2~70\);

-- Location: FF_X22_Y59_N44
\configurator|dataIndex[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	d => \configurator|Add2~69_sumout\,
	sclr => \configurator|SDIO~7_combout\,
	ena => \configurator|sendData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(14));

-- Location: LABCELL_X22_Y59_N45
\configurator|Add2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~73_sumout\ = SUM(( \configurator|dataIndex\(15) ) + ( GND ) + ( \configurator|Add2~70\ ))
-- \configurator|Add2~74\ = CARRY(( \configurator|dataIndex\(15) ) + ( GND ) + ( \configurator|Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(15),
	cin => \configurator|Add2~70\,
	sumout => \configurator|Add2~73_sumout\,
	cout => \configurator|Add2~74\);

-- Location: FF_X22_Y59_N47
\configurator|dataIndex[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	d => \configurator|Add2~73_sumout\,
	sclr => \configurator|SDIO~7_combout\,
	ena => \configurator|sendData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(15));

-- Location: LABCELL_X22_Y59_N48
\configurator|Add2~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~77_sumout\ = SUM(( \configurator|dataIndex\(16) ) + ( GND ) + ( \configurator|Add2~74\ ))
-- \configurator|Add2~78\ = CARRY(( \configurator|dataIndex\(16) ) + ( GND ) + ( \configurator|Add2~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(16),
	cin => \configurator|Add2~74\,
	sumout => \configurator|Add2~77_sumout\,
	cout => \configurator|Add2~78\);

-- Location: FF_X22_Y59_N50
\configurator|dataIndex[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	d => \configurator|Add2~77_sumout\,
	sclr => \configurator|SDIO~7_combout\,
	ena => \configurator|sendData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(16));

-- Location: LABCELL_X22_Y59_N51
\configurator|Add2~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~81_sumout\ = SUM(( \configurator|dataIndex\(17) ) + ( GND ) + ( \configurator|Add2~78\ ))
-- \configurator|Add2~82\ = CARRY(( \configurator|dataIndex\(17) ) + ( GND ) + ( \configurator|Add2~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_dataIndex\(17),
	cin => \configurator|Add2~78\,
	sumout => \configurator|Add2~81_sumout\,
	cout => \configurator|Add2~82\);

-- Location: FF_X22_Y59_N53
\configurator|dataIndex[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	d => \configurator|Add2~81_sumout\,
	sclr => \configurator|SDIO~7_combout\,
	ena => \configurator|sendData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(17));

-- Location: LABCELL_X22_Y59_N54
\configurator|Add2~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~101_sumout\ = SUM(( \configurator|dataIndex\(18) ) + ( GND ) + ( \configurator|Add2~82\ ))
-- \configurator|Add2~102\ = CARRY(( \configurator|dataIndex\(18) ) + ( GND ) + ( \configurator|Add2~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_dataIndex\(18),
	cin => \configurator|Add2~82\,
	sumout => \configurator|Add2~101_sumout\,
	cout => \configurator|Add2~102\);

-- Location: FF_X22_Y59_N56
\configurator|dataIndex[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	d => \configurator|Add2~101_sumout\,
	sclr => \configurator|SDIO~7_combout\,
	ena => \configurator|sendData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(18));

-- Location: LABCELL_X22_Y59_N57
\configurator|Add2~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~85_sumout\ = SUM(( \configurator|dataIndex\(19) ) + ( GND ) + ( \configurator|Add2~102\ ))
-- \configurator|Add2~86\ = CARRY(( \configurator|dataIndex\(19) ) + ( GND ) + ( \configurator|Add2~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(19),
	cin => \configurator|Add2~102\,
	sumout => \configurator|Add2~85_sumout\,
	cout => \configurator|Add2~86\);

-- Location: FF_X22_Y59_N59
\configurator|dataIndex[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	d => \configurator|Add2~85_sumout\,
	sclr => \configurator|SDIO~7_combout\,
	ena => \configurator|sendData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(19));

-- Location: LABCELL_X22_Y58_N0
\configurator|Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~41_sumout\ = SUM(( \configurator|dataIndex\(20) ) + ( GND ) + ( \configurator|Add2~86\ ))
-- \configurator|Add2~42\ = CARRY(( \configurator|dataIndex\(20) ) + ( GND ) + ( \configurator|Add2~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_dataIndex\(20),
	cin => \configurator|Add2~86\,
	sumout => \configurator|Add2~41_sumout\,
	cout => \configurator|Add2~42\);

-- Location: FF_X22_Y58_N2
\configurator|dataIndex[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	d => \configurator|Add2~41_sumout\,
	sclr => \configurator|SDIO~7_combout\,
	ena => \configurator|sendData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(20));

-- Location: LABCELL_X22_Y58_N3
\configurator|Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~37_sumout\ = SUM(( \configurator|dataIndex\(21) ) + ( GND ) + ( \configurator|Add2~42\ ))
-- \configurator|Add2~38\ = CARRY(( \configurator|dataIndex\(21) ) + ( GND ) + ( \configurator|Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_dataIndex\(21),
	cin => \configurator|Add2~42\,
	sumout => \configurator|Add2~37_sumout\,
	cout => \configurator|Add2~38\);

-- Location: FF_X22_Y58_N5
\configurator|dataIndex[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	d => \configurator|Add2~37_sumout\,
	sclr => \configurator|SDIO~7_combout\,
	ena => \configurator|sendData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(21));

-- Location: LABCELL_X22_Y58_N6
\configurator|Add2~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~105_sumout\ = SUM(( \configurator|dataIndex\(22) ) + ( GND ) + ( \configurator|Add2~38\ ))
-- \configurator|Add2~106\ = CARRY(( \configurator|dataIndex\(22) ) + ( GND ) + ( \configurator|Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_dataIndex\(22),
	cin => \configurator|Add2~38\,
	sumout => \configurator|Add2~105_sumout\,
	cout => \configurator|Add2~106\);

-- Location: FF_X22_Y58_N8
\configurator|dataIndex[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	d => \configurator|Add2~105_sumout\,
	sclr => \configurator|SDIO~7_combout\,
	ena => \configurator|sendData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(22));

-- Location: LABCELL_X22_Y58_N9
\configurator|Add2~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~97_sumout\ = SUM(( \configurator|dataIndex\(23) ) + ( GND ) + ( \configurator|Add2~106\ ))
-- \configurator|Add2~98\ = CARRY(( \configurator|dataIndex\(23) ) + ( GND ) + ( \configurator|Add2~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(23),
	cin => \configurator|Add2~106\,
	sumout => \configurator|Add2~97_sumout\,
	cout => \configurator|Add2~98\);

-- Location: FF_X22_Y58_N11
\configurator|dataIndex[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	d => \configurator|Add2~97_sumout\,
	sclr => \configurator|SDIO~7_combout\,
	ena => \configurator|sendData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(23));

-- Location: LABCELL_X22_Y58_N12
\configurator|Add2~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~93_sumout\ = SUM(( \configurator|dataIndex\(24) ) + ( GND ) + ( \configurator|Add2~98\ ))
-- \configurator|Add2~94\ = CARRY(( \configurator|dataIndex\(24) ) + ( GND ) + ( \configurator|Add2~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_dataIndex\(24),
	cin => \configurator|Add2~98\,
	sumout => \configurator|Add2~93_sumout\,
	cout => \configurator|Add2~94\);

-- Location: FF_X22_Y58_N14
\configurator|dataIndex[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	d => \configurator|Add2~93_sumout\,
	sclr => \configurator|SDIO~7_combout\,
	ena => \configurator|sendData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(24));

-- Location: LABCELL_X22_Y58_N15
\configurator|Add2~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~89_sumout\ = SUM(( \configurator|dataIndex\(25) ) + ( GND ) + ( \configurator|Add2~94\ ))
-- \configurator|Add2~90\ = CARRY(( \configurator|dataIndex\(25) ) + ( GND ) + ( \configurator|Add2~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(25),
	cin => \configurator|Add2~94\,
	sumout => \configurator|Add2~89_sumout\,
	cout => \configurator|Add2~90\);

-- Location: FF_X22_Y58_N17
\configurator|dataIndex[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	d => \configurator|Add2~89_sumout\,
	sclr => \configurator|SDIO~7_combout\,
	ena => \configurator|sendData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(25));

-- Location: LABCELL_X22_Y58_N18
\configurator|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~13_sumout\ = SUM(( \configurator|dataIndex\(26) ) + ( GND ) + ( \configurator|Add2~90\ ))
-- \configurator|Add2~14\ = CARRY(( \configurator|dataIndex\(26) ) + ( GND ) + ( \configurator|Add2~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_dataIndex\(26),
	cin => \configurator|Add2~90\,
	sumout => \configurator|Add2~13_sumout\,
	cout => \configurator|Add2~14\);

-- Location: FF_X22_Y58_N20
\configurator|dataIndex[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	d => \configurator|Add2~13_sumout\,
	sclr => \configurator|SDIO~7_combout\,
	ena => \configurator|sendData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(26));

-- Location: LABCELL_X22_Y58_N21
\configurator|Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~57_sumout\ = SUM(( \configurator|dataIndex\(27) ) + ( GND ) + ( \configurator|Add2~14\ ))
-- \configurator|Add2~58\ = CARRY(( \configurator|dataIndex\(27) ) + ( GND ) + ( \configurator|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_dataIndex\(27),
	cin => \configurator|Add2~14\,
	sumout => \configurator|Add2~57_sumout\,
	cout => \configurator|Add2~58\);

-- Location: FF_X22_Y58_N23
\configurator|dataIndex[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	d => \configurator|Add2~57_sumout\,
	sclr => \configurator|SDIO~7_combout\,
	ena => \configurator|sendData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(27));

-- Location: LABCELL_X22_Y58_N24
\configurator|Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~53_sumout\ = SUM(( \configurator|dataIndex\(28) ) + ( GND ) + ( \configurator|Add2~58\ ))
-- \configurator|Add2~54\ = CARRY(( \configurator|dataIndex\(28) ) + ( GND ) + ( \configurator|Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_dataIndex\(28),
	cin => \configurator|Add2~58\,
	sumout => \configurator|Add2~53_sumout\,
	cout => \configurator|Add2~54\);

-- Location: FF_X22_Y58_N26
\configurator|dataIndex[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	d => \configurator|Add2~53_sumout\,
	sclr => \configurator|SDIO~7_combout\,
	ena => \configurator|sendData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(28));

-- Location: LABCELL_X22_Y58_N27
\configurator|Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~49_sumout\ = SUM(( \configurator|dataIndex\(29) ) + ( GND ) + ( \configurator|Add2~54\ ))
-- \configurator|Add2~50\ = CARRY(( \configurator|dataIndex\(29) ) + ( GND ) + ( \configurator|Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(29),
	cin => \configurator|Add2~54\,
	sumout => \configurator|Add2~49_sumout\,
	cout => \configurator|Add2~50\);

-- Location: FF_X22_Y58_N29
\configurator|dataIndex[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	d => \configurator|Add2~49_sumout\,
	sclr => \configurator|SDIO~7_combout\,
	ena => \configurator|sendData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(29));

-- Location: LABCELL_X22_Y58_N30
\configurator|Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~45_sumout\ = SUM(( \configurator|dataIndex\(30) ) + ( GND ) + ( \configurator|Add2~50\ ))
-- \configurator|Add2~46\ = CARRY(( \configurator|dataIndex\(30) ) + ( GND ) + ( \configurator|Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_dataIndex\(30),
	cin => \configurator|Add2~50\,
	sumout => \configurator|Add2~45_sumout\,
	cout => \configurator|Add2~46\);

-- Location: FF_X22_Y58_N32
\configurator|dataIndex[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	d => \configurator|Add2~45_sumout\,
	sclr => \configurator|SDIO~7_combout\,
	ena => \configurator|sendData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(30));

-- Location: LABCELL_X22_Y58_N33
\configurator|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~1_sumout\ = SUM(( \configurator|dataIndex\(31) ) + ( GND ) + ( \configurator|Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(31),
	cin => \configurator|Add2~46\,
	sumout => \configurator|Add2~1_sumout\);

-- Location: FF_X22_Y58_N35
\configurator|dataIndex[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	d => \configurator|Add2~1_sumout\,
	sclr => \configurator|SDIO~7_combout\,
	ena => \configurator|sendData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(31));

-- Location: MLABCELL_X19_Y58_N0
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

-- Location: LABCELL_X22_Y58_N45
\configurator|counter[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|counter[4]~0_combout\ = ( \configurator|sendData~q\ & ( (!\configurator|dataIndex\(31) & ((!\configurator|SDIO~4_combout\) # (\configurator|LessThan1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010000010101010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(31),
	datac => \configurator|ALT_INV_LessThan1~0_combout\,
	datad => \configurator|ALT_INV_SDIO~4_combout\,
	dataf => \configurator|ALT_INV_sendData~q\,
	combout => \configurator|counter[4]~0_combout\);

-- Location: FF_X21_Y58_N14
\configurator|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	asdata => \configurator|Add3~1_sumout\,
	sclr => \configurator|LessThan2~0_combout\,
	sload => VCC,
	ena => \configurator|counter[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|counter\(0));

-- Location: MLABCELL_X19_Y58_N3
\configurator|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add3~5_sumout\ = SUM(( \configurator|counter\(1) ) + ( GND ) + ( \configurator|Add3~2\ ))
-- \configurator|Add3~6\ = CARRY(( \configurator|counter\(1) ) + ( GND ) + ( \configurator|Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_counter\(1),
	cin => \configurator|Add3~2\,
	sumout => \configurator|Add3~5_sumout\,
	cout => \configurator|Add3~6\);

-- Location: FF_X21_Y58_N41
\configurator|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	asdata => \configurator|Add3~5_sumout\,
	sclr => \configurator|LessThan2~0_combout\,
	sload => VCC,
	ena => \configurator|counter[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|counter\(1));

-- Location: MLABCELL_X19_Y58_N6
\configurator|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add3~17_sumout\ = SUM(( \configurator|counter\(2) ) + ( GND ) + ( \configurator|Add3~6\ ))
-- \configurator|Add3~18\ = CARRY(( \configurator|counter\(2) ) + ( GND ) + ( \configurator|Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_counter\(2),
	cin => \configurator|Add3~6\,
	sumout => \configurator|Add3~17_sumout\,
	cout => \configurator|Add3~18\);

-- Location: FF_X21_Y58_N50
\configurator|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	asdata => \configurator|Add3~17_sumout\,
	sclr => \configurator|LessThan2~0_combout\,
	sload => VCC,
	ena => \configurator|counter[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|counter\(2));

-- Location: MLABCELL_X19_Y58_N9
\configurator|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add3~21_sumout\ = SUM(( \configurator|counter\(3) ) + ( GND ) + ( \configurator|Add3~18\ ))
-- \configurator|Add3~22\ = CARRY(( \configurator|counter\(3) ) + ( GND ) + ( \configurator|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_counter\(3),
	cin => \configurator|Add3~18\,
	sumout => \configurator|Add3~21_sumout\,
	cout => \configurator|Add3~22\);

-- Location: FF_X21_Y58_N8
\configurator|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	asdata => \configurator|Add3~21_sumout\,
	sclr => \configurator|LessThan2~0_combout\,
	sload => VCC,
	ena => \configurator|counter[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|counter\(3));

-- Location: MLABCELL_X19_Y58_N12
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

-- Location: FF_X21_Y58_N56
\configurator|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	asdata => \configurator|Add3~9_sumout\,
	sclr => \configurator|LessThan2~0_combout\,
	sload => VCC,
	ena => \configurator|counter[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|counter\(4));

-- Location: MLABCELL_X19_Y58_N15
\configurator|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add3~13_sumout\ = SUM(( \configurator|counter\(5) ) + ( GND ) + ( \configurator|Add3~10\ ))
-- \configurator|Add3~14\ = CARRY(( \configurator|counter\(5) ) + ( GND ) + ( \configurator|Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_counter\(5),
	cin => \configurator|Add3~10\,
	sumout => \configurator|Add3~13_sumout\,
	cout => \configurator|Add3~14\);

-- Location: FF_X21_Y58_N5
\configurator|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	asdata => \configurator|Add3~13_sumout\,
	sclr => \configurator|LessThan2~0_combout\,
	sload => VCC,
	ena => \configurator|counter[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|counter\(5));

-- Location: MLABCELL_X19_Y58_N18
\configurator|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add3~25_sumout\ = SUM(( \configurator|counter\(6) ) + ( GND ) + ( \configurator|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_counter\(6),
	cin => \configurator|Add3~14\,
	sumout => \configurator|Add3~25_sumout\);

-- Location: FF_X21_Y58_N11
\configurator|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	asdata => \configurator|Add3~25_sumout\,
	sclr => \configurator|LessThan2~0_combout\,
	sload => VCC,
	ena => \configurator|counter[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|counter\(6));

-- Location: LABCELL_X21_Y58_N3
\configurator|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|LessThan2~0_combout\ = (\configurator|counter\(6) & \configurator|counter\(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(6),
	datad => \configurator|ALT_INV_counter\(5),
	combout => \configurator|LessThan2~0_combout\);

-- Location: LABCELL_X23_Y58_N9
\configurator|configOK~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|configOK~0_combout\ = ( \configurator|configOK~reg0_q\ & ( \configurator|SDIO~4_combout\ & ( (!\configurator|dataIndex\(31) & \configurator|LessThan1~0_combout\) ) ) ) # ( !\configurator|configOK~reg0_q\ & ( \configurator|SDIO~4_combout\ & ( 
-- (!\configurator|dataIndex\(31) & (\configurator|LessThan2~0_combout\ & \configurator|LessThan1~0_combout\)) ) ) ) # ( \configurator|configOK~reg0_q\ & ( !\configurator|SDIO~4_combout\ & ( !\configurator|dataIndex\(31) ) ) ) # ( 
-- !\configurator|configOK~reg0_q\ & ( !\configurator|SDIO~4_combout\ & ( (!\configurator|dataIndex\(31) & \configurator|LessThan2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010101010101010101000000000001000100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(31),
	datab => \configurator|ALT_INV_LessThan2~0_combout\,
	datad => \configurator|ALT_INV_LessThan1~0_combout\,
	datae => \configurator|ALT_INV_configOK~reg0_q\,
	dataf => \configurator|ALT_INV_SDIO~4_combout\,
	combout => \configurator|configOK~0_combout\);

-- Location: FF_X23_Y58_N11
\configurator|configOK~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	d => \configurator|configOK~0_combout\,
	asdata => \configurator|configOK~reg0_q\,
	sload => \configurator|ALT_INV_sendData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|configOK~reg0_q\);

-- Location: LABCELL_X22_Y57_N18
\configurator|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Selector0~0_combout\ = ( \writeconfig~input_o\ & ( \configurator|needWait~q\ & ( (\configurator|discarded~combout\ & \configurator|state.DISCARD~q\) ) ) ) # ( !\writeconfig~input_o\ & ( \configurator|needWait~q\ & ( 
-- (\configurator|discarded~combout\ & \configurator|state.DISCARD~q\) ) ) ) # ( \writeconfig~input_o\ & ( !\configurator|needWait~q\ & ( (\configurator|discarded~combout\ & \configurator|state.DISCARD~q\) ) ) ) # ( !\writeconfig~input_o\ & ( 
-- !\configurator|needWait~q\ & ( (!\configurator|state.SEND~q\ & (((\configurator|discarded~combout\ & \configurator|state.DISCARD~q\)))) # (\configurator|state.SEND~q\ & ((!\configurator|configOK~reg0_q\) # ((\configurator|discarded~combout\ & 
-- \configurator|state.DISCARD~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_state.SEND~q\,
	datab => \configurator|ALT_INV_configOK~reg0_q\,
	datac => \configurator|ALT_INV_discarded~combout\,
	datad => \configurator|ALT_INV_state.DISCARD~q\,
	datae => \ALT_INV_writeconfig~input_o\,
	dataf => \configurator|ALT_INV_needWait~q\,
	combout => \configurator|Selector0~0_combout\);

-- Location: FF_X22_Y57_N19
\configurator|nextState.SEND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \configurator|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|nextState.SEND~q\);

-- Location: LABCELL_X23_Y58_N12
\configurator|state.SEND~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|state.SEND~feeder_combout\ = ( \configurator|nextState.SEND~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \configurator|ALT_INV_nextState.SEND~q\,
	combout => \configurator|state.SEND~feeder_combout\);

-- Location: FF_X23_Y58_N14
\configurator|state.SEND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \configurator|state.SEND~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|state.SEND~q\);

-- Location: FF_X23_Y58_N56
\configurator|outputClock\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	asdata => \configurator|state.SEND~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|outputClock~q\);

-- Location: LABCELL_X23_Y58_N54
\configurator|SCLK~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|SCLK~0_combout\ = ( \configurator|outputClock~q\ & ( \configurator|internalClock~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_internalClock~q\,
	datae => \configurator|ALT_INV_outputClock~q\,
	combout => \configurator|SCLK~0_combout\);

-- Location: LABCELL_X22_Y57_N45
\configurator|SDENB~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|SDENB~0_combout\ = ( \configurator|state.DISCARD~q\ ) # ( !\configurator|state.DISCARD~q\ & ( \configurator|state.SEND~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_state.SEND~q\,
	dataf => \configurator|ALT_INV_state.DISCARD~q\,
	combout => \configurator|SDENB~0_combout\);

-- Location: FF_X22_Y57_N46
\configurator|SDENB~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \serialTimer~inputCLKENA0_outclk\,
	d => \configurator|SDENB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|SDENB~reg0_q\);

-- Location: LABCELL_X23_Y58_N3
\configurator|SDIO~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|SDIO~6_combout\ = ( \configurator|LessThan1~0_combout\ & ( (\configurator|dataIndex\(31) & \configurator|sendData~q\) ) ) # ( !\configurator|LessThan1~0_combout\ & ( (\configurator|sendData~q\ & ((\configurator|dataIndex\(31)) # 
-- (\configurator|SDIO~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_SDIO~4_combout\,
	datac => \configurator|ALT_INV_dataIndex\(31),
	datad => \configurator|ALT_INV_sendData~q\,
	dataf => \configurator|ALT_INV_LessThan1~0_combout\,
	combout => \configurator|SDIO~6_combout\);

-- Location: LABCELL_X21_Y59_N48
\configurator|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|LessThan0~0_combout\ = ( !\configurator|dataIndex\(3) & ( \configurator|dataIndex\(1) & ( (!\configurator|dataIndex\(4) & ((!\configurator|dataIndex\(2)) # (!\configurator|dataIndex\(0)))) ) ) ) # ( !\configurator|dataIndex\(3) & ( 
-- !\configurator|dataIndex\(1) & ( !\configurator|dataIndex\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000000000000011001000110010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(2),
	datab => \configurator|ALT_INV_dataIndex\(4),
	datac => \configurator|ALT_INV_dataIndex\(0),
	datae => \configurator|ALT_INV_dataIndex\(3),
	dataf => \configurator|ALT_INV_dataIndex\(1),
	combout => \configurator|LessThan0~0_combout\);

-- Location: LABCELL_X21_Y58_N9
\configurator|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux0~0_combout\ = ( \configurator|counter\(0) & ( \configurator|dataIndex\(0) & ( (!\configurator|dataIndex\(1) & (\configurator|counter\(1))) # (\configurator|dataIndex\(1) & ((\configurator|counter\(3)))) ) ) ) # ( 
-- !\configurator|counter\(0) & ( \configurator|dataIndex\(0) & ( (!\configurator|dataIndex\(1) & (\configurator|counter\(1))) # (\configurator|dataIndex\(1) & ((\configurator|counter\(3)))) ) ) ) # ( \configurator|counter\(0) & ( 
-- !\configurator|dataIndex\(0) & ( (\configurator|dataIndex\(1)) # (\configurator|counter\(2)) ) ) ) # ( !\configurator|counter\(0) & ( !\configurator|dataIndex\(0) & ( (\configurator|counter\(2) & !\configurator|dataIndex\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(2),
	datab => \configurator|ALT_INV_counter\(1),
	datac => \configurator|ALT_INV_dataIndex\(1),
	datad => \configurator|ALT_INV_counter\(3),
	datae => \configurator|ALT_INV_counter\(0),
	dataf => \configurator|ALT_INV_dataIndex\(0),
	combout => \configurator|Mux0~0_combout\);

-- Location: LABCELL_X21_Y58_N54
\configurator|SDIO~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|SDIO~8_combout\ = ( !\configurator|dataIndex\(0) & ( (!\configurator|dataIndex\(2) & ((!\configurator|dataIndex\(1) & (\configurator|counter\(6))) # (\configurator|dataIndex\(1) & (((\configurator|counter\(4))))))) # 
-- (\configurator|dataIndex\(2) & ((((\configurator|Mux0~0_combout\))))) ) ) # ( \configurator|dataIndex\(0) & ( ((!\configurator|dataIndex\(1) & ((!\configurator|dataIndex\(2) & (\configurator|counter\(5))) # (\configurator|dataIndex\(2) & 
-- ((\configurator|Mux0~0_combout\))))) # (\configurator|dataIndex\(1) & (((!\configurator|dataIndex\(2) & \configurator|Mux0~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100011100000000000011000000000001000111111111110011111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(6),
	datab => \configurator|ALT_INV_dataIndex\(1),
	datac => \configurator|ALT_INV_counter\(5),
	datad => \configurator|ALT_INV_dataIndex\(2),
	datae => \configurator|ALT_INV_dataIndex\(0),
	dataf => \configurator|ALT_INV_Mux0~0_combout\,
	datag => \configurator|ALT_INV_counter\(4),
	combout => \configurator|SDIO~8_combout\);

-- Location: LABCELL_X21_Y58_N18
\configurator|ConfigMemory|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|ConfigMemory|Mux13~0_combout\ = ( \configurator|counter\(1) ) # ( !\configurator|counter\(1) & ( (!\configurator|counter\(4) $ (!\configurator|counter\(5))) # (\configurator|counter\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111110101010111111111010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(2),
	datac => \configurator|ALT_INV_counter\(4),
	datad => \configurator|ALT_INV_counter\(5),
	dataf => \configurator|ALT_INV_counter\(1),
	combout => \configurator|ConfigMemory|Mux13~0_combout\);

-- Location: LABCELL_X21_Y58_N12
\configurator|Mux1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~3_combout\ = ( \configurator|dataIndex\(2) & ( (\configurator|counter\(4) & \configurator|counter\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(4),
	datac => \configurator|ALT_INV_counter\(5),
	dataf => \configurator|ALT_INV_dataIndex\(2),
	combout => \configurator|Mux1~3_combout\);

-- Location: LABCELL_X21_Y58_N48
\configurator|ConfigMemory|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|ConfigMemory|Mux8~0_combout\ = ( \configurator|counter\(0) ) # ( !\configurator|counter\(0) & ( (!\configurator|counter\(4) $ (!\configurator|counter\(5))) # (\configurator|counter\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111101101111011011110110111101111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(4),
	datab => \configurator|ALT_INV_counter\(1),
	datac => \configurator|ALT_INV_counter\(5),
	dataf => \configurator|ALT_INV_counter\(0),
	combout => \configurator|ConfigMemory|Mux8~0_combout\);

-- Location: LABCELL_X21_Y58_N30
\configurator|Mux1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~9_combout\ = ( !\configurator|dataIndex\(0) & ( ((!\configurator|counter\(3) & (!\configurator|dataIndex\(2) & (!\configurator|counter\(2) & !\configurator|ConfigMemory|Mux8~0_combout\)))) # (\configurator|Mux1~3_combout\) ) ) # ( 
-- \configurator|dataIndex\(0) & ( ((!\configurator|counter\(3) & (!\configurator|dataIndex\(2) & (!\configurator|ConfigMemory|Mux13~0_combout\)))) # (\configurator|Mux1~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1000000011111111100000001111111100000000111111111000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(3),
	datab => \configurator|ALT_INV_dataIndex\(2),
	datac => \configurator|ConfigMemory|ALT_INV_Mux13~0_combout\,
	datad => \configurator|ALT_INV_Mux1~3_combout\,
	datae => \configurator|ALT_INV_dataIndex\(0),
	dataf => \configurator|ConfigMemory|ALT_INV_Mux8~0_combout\,
	datag => \configurator|ALT_INV_counter\(2),
	combout => \configurator|Mux1~9_combout\);

-- Location: LABCELL_X21_Y58_N15
\configurator|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~1_combout\ = ( !\configurator|dataIndex\(2) & ( (\configurator|counter\(4) & \configurator|counter\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(4),
	datad => \configurator|ALT_INV_counter\(5),
	dataf => \configurator|ALT_INV_dataIndex\(2),
	combout => \configurator|Mux1~1_combout\);

-- Location: LABCELL_X21_Y58_N51
\configurator|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~0_combout\ = ( \configurator|dataIndex\(2) & ( !\configurator|counter\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_counter\(3),
	dataf => \configurator|ALT_INV_dataIndex\(2),
	combout => \configurator|Mux1~0_combout\);

-- Location: LABCELL_X21_Y58_N21
\configurator|Mux1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~4_combout\ = ( \configurator|Mux1~0_combout\ & ( ((!\configurator|counter\(2) & !\configurator|ConfigMemory|Mux8~0_combout\)) # (\configurator|Mux1~1_combout\) ) ) # ( !\configurator|Mux1~0_combout\ & ( \configurator|Mux1~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111001111000011111100111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_counter\(2),
	datac => \configurator|ALT_INV_Mux1~1_combout\,
	datad => \configurator|ConfigMemory|ALT_INV_Mux8~0_combout\,
	dataf => \configurator|ALT_INV_Mux1~0_combout\,
	combout => \configurator|Mux1~4_combout\);

-- Location: LABCELL_X21_Y58_N0
\configurator|ConfigMemory|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|ConfigMemory|Mux14~0_combout\ = ( \configurator|counter\(0) & ( (!\configurator|counter\(1) & (!\configurator|counter\(4) & !\configurator|counter\(5))) ) ) # ( !\configurator|counter\(0) & ( (!\configurator|counter\(1) & 
-- (\configurator|counter\(4) & \configurator|counter\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_counter\(1),
	datac => \configurator|ALT_INV_counter\(4),
	datad => \configurator|ALT_INV_counter\(5),
	dataf => \configurator|ALT_INV_counter\(0),
	combout => \configurator|ConfigMemory|Mux14~0_combout\);

-- Location: LABCELL_X21_Y58_N36
\configurator|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~2_combout\ = ( \configurator|ConfigMemory|Mux14~0_combout\ & ( \configurator|Mux1~0_combout\ & ( ((!\configurator|dataIndex\(0) & ((!\configurator|ConfigMemory|Mux13~0_combout\))) # (\configurator|dataIndex\(0) & 
-- (!\configurator|counter\(2)))) # (\configurator|Mux1~1_combout\) ) ) ) # ( !\configurator|ConfigMemory|Mux14~0_combout\ & ( \configurator|Mux1~0_combout\ & ( ((!\configurator|dataIndex\(0) & !\configurator|ConfigMemory|Mux13~0_combout\)) # 
-- (\configurator|Mux1~1_combout\) ) ) ) # ( \configurator|ConfigMemory|Mux14~0_combout\ & ( !\configurator|Mux1~0_combout\ & ( \configurator|Mux1~1_combout\ ) ) ) # ( !\configurator|ConfigMemory|Mux14~0_combout\ & ( !\configurator|Mux1~0_combout\ & ( 
-- \configurator|Mux1~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111000000111111111110001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(2),
	datab => \configurator|ALT_INV_dataIndex\(0),
	datac => \configurator|ConfigMemory|ALT_INV_Mux13~0_combout\,
	datad => \configurator|ALT_INV_Mux1~1_combout\,
	datae => \configurator|ConfigMemory|ALT_INV_Mux14~0_combout\,
	dataf => \configurator|ALT_INV_Mux1~0_combout\,
	combout => \configurator|Mux1~2_combout\);

-- Location: LABCELL_X21_Y58_N42
\configurator|Mux1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~5_combout\ = ( !\configurator|dataIndex\(3) & ( (!\configurator|dataIndex\(1) & (((\configurator|Mux1~2_combout\)))) # (\configurator|dataIndex\(1) & ((((\configurator|Mux1~9_combout\))))) ) ) # ( \configurator|dataIndex\(3) & ( 
-- (!\configurator|dataIndex\(1) & (\configurator|counter\(5) & (\configurator|counter\(4)))) # (\configurator|dataIndex\(1) & ((((\configurator|Mux1~4_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001011111000000100000001000001010010111110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(1),
	datab => \configurator|ALT_INV_counter\(5),
	datac => \configurator|ALT_INV_counter\(4),
	datad => \configurator|ALT_INV_Mux1~9_combout\,
	datae => \configurator|ALT_INV_dataIndex\(3),
	dataf => \configurator|ALT_INV_Mux1~4_combout\,
	datag => \configurator|ALT_INV_Mux1~2_combout\,
	combout => \configurator|Mux1~5_combout\);

-- Location: LABCELL_X21_Y58_N24
\configurator|SDIO~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|SDIO~5_combout\ = ( \configurator|Mux1~5_combout\ & ( ((!\configurator|dataIndex\(31) & ((!\configurator|LessThan0~0_combout\) # (!\configurator|SDIO~4_combout\)))) # (\configurator|SDIO~8_combout\) ) ) # ( !\configurator|Mux1~5_combout\ & ( 
-- (\configurator|SDIO~8_combout\ & (((\configurator|LessThan0~0_combout\ & \configurator|SDIO~4_combout\)) # (\configurator|dataIndex\(31)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011111000000000001111111100000111111111110000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_LessThan0~0_combout\,
	datab => \configurator|ALT_INV_SDIO~4_combout\,
	datac => \configurator|ALT_INV_dataIndex\(31),
	datad => \configurator|ALT_INV_SDIO~8_combout\,
	dataf => \configurator|ALT_INV_Mux1~5_combout\,
	combout => \configurator|SDIO~5_combout\);

-- Location: LABCELL_X21_Y58_N27
\configurator|SDIO\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|SDIO~combout\ = ( \configurator|SDIO~5_combout\ & ( (\configurator|SDIO~combout\) # (\configurator|SDIO~6_combout\) ) ) # ( !\configurator|SDIO~5_combout\ & ( (!\configurator|SDIO~6_combout\ & \configurator|SDIO~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_SDIO~6_combout\,
	datad => \configurator|ALT_INV_SDIO~combout\,
	dataf => \configurator|ALT_INV_SDIO~5_combout\,
	combout => \configurator|SDIO~combout\);

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

-- Location: IOIBUF_X14_Y61_N52
\configok~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_configok,
	o => \configok~input_o\);

-- Location: LABCELL_X11_Y19_N3
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


