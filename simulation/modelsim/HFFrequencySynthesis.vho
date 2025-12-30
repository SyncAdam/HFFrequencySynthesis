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

-- DATE "12/30/2025 18:05:57"

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
	\output_p[0](n)\ : OUT std_logic;
	\output_p[1](n)\ : OUT std_logic;
	\output_p[2](n)\ : OUT std_logic;
	\output_p[3](n)\ : OUT std_logic;
	\output_p[4](n)\ : OUT std_logic;
	\output_p[5](n)\ : OUT std_logic;
	\output_p[6](n)\ : OUT std_logic;
	\output_p[7](n)\ : OUT std_logic;
	\output_p[8](n)\ : OUT std_logic;
	\output_p[9](n)\ : OUT std_logic;
	\output_p[10](n)\ : OUT std_logic;
	\output_p[11](n)\ : OUT std_logic;
	\output_p[12](n)\ : OUT std_logic;
	\output_p[13](n)\ : OUT std_logic;
	\output_p[14](n)\ : OUT std_logic;
	\output_p[15](n)\ : OUT std_logic;
	\parallelDataClk_p(n)\ : OUT std_logic;
	output_p : BUFFER std_logic_vector(15 DOWNTO 0);
	parallelDataClk_p : BUFFER std_logic;
	sclk : BUFFER std_logic;
	sdenb : BUFFER std_logic;
	sdio : BUFFER std_logic;
	configok : BUFFER std_logic;
	writeconfig : IN std_logic;
	inputClock : IN std_logic;
	ClkOUT : BUFFER std_logic;
	writeConfigReceived : BUFFER std_logic;
	stateRegOut : BUFFER std_logic_vector(2 DOWNTO 0);
	nextStateRegOut : BUFFER std_logic_vector(2 DOWNTO 0);
	resetn : BUFFER std_logic;
	discardBuffer : BUFFER std_logic
	);
END MainFSM;

-- Design Ports Information
-- output_p[0]	=>  Location: PIN_E10,	 I/O Standard: LVDS,	 Current Strength: Default
-- output_p[1]	=>  Location: PIN_C9,	 I/O Standard: LVDS,	 Current Strength: Default
-- output_p[2]	=>  Location: PIN_D10,	 I/O Standard: LVDS,	 Current Strength: Default
-- output_p[3]	=>  Location: PIN_A12,	 I/O Standard: LVDS,	 Current Strength: Default
-- output_p[4]	=>  Location: PIN_B10,	 I/O Standard: LVDS,	 Current Strength: Default
-- output_p[5]	=>  Location: PIN_C20,	 I/O Standard: LVDS,	 Current Strength: Default
-- output_p[6]	=>  Location: PIN_B15,	 I/O Standard: LVDS,	 Current Strength: Default
-- output_p[7]	=>  Location: PIN_B22,	 I/O Standard: LVDS,	 Current Strength: Default
-- output_p[8]	=>  Location: PIN_C13,	 I/O Standard: LVDS,	 Current Strength: Default
-- output_p[9]	=>  Location: PIN_A8,	 I/O Standard: LVDS,	 Current Strength: Default
-- output_p[10]	=>  Location: PIN_B12,	 I/O Standard: LVDS,	 Current Strength: Default
-- output_p[11]	=>  Location: PIN_C23,	 I/O Standard: LVDS,	 Current Strength: Default
-- output_p[12]	=>  Location: PIN_A14,	 I/O Standard: LVDS,	 Current Strength: Default
-- output_p[13]	=>  Location: PIN_A23,	 I/O Standard: LVDS,	 Current Strength: Default
-- output_p[14]	=>  Location: PIN_C17,	 I/O Standard: LVDS,	 Current Strength: Default
-- output_p[15]	=>  Location: PIN_C19,	 I/O Standard: LVDS,	 Current Strength: Default
-- parallelDataClk_p	=>  Location: PIN_A19,	 I/O Standard: LVDS,	 Current Strength: Default
-- sdio	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ClkOUT	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeConfigReceived	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stateRegOut[0]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stateRegOut[1]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stateRegOut[2]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextStateRegOut[0]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextStateRegOut[1]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nextStateRegOut[2]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sclk	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdenb	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- configok	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetn	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- discardBuffer	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeconfig	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputClock	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_p[0](n)	=>  Location: PIN_E11,	 I/O Standard: LVDS,	 Current Strength: Default
-- output_p[1](n)	=>  Location: PIN_B9,	 I/O Standard: LVDS,	 Current Strength: Default
-- output_p[2](n)	=>  Location: PIN_C10,	 I/O Standard: LVDS,	 Current Strength: Default
-- output_p[3](n)	=>  Location: PIN_B11,	 I/O Standard: LVDS,	 Current Strength: Default
-- output_p[4](n)	=>  Location: PIN_A11,	 I/O Standard: LVDS,	 Current Strength: Default
-- output_p[5](n)	=>  Location: PIN_B19,	 I/O Standard: LVDS,	 Current Strength: Default
-- output_p[6](n)	=>  Location: PIN_C15,	 I/O Standard: LVDS,	 Current Strength: Default
-- output_p[7](n)	=>  Location: PIN_A21,	 I/O Standard: LVDS,	 Current Strength: Default
-- output_p[8](n)	=>  Location: PIN_C12,	 I/O Standard: LVDS,	 Current Strength: Default
-- output_p[9](n)	=>  Location: PIN_A9,	 I/O Standard: LVDS,	 Current Strength: Default
-- output_p[10](n)	=>  Location: PIN_A13,	 I/O Standard: LVDS,	 Current Strength: Default
-- output_p[11](n)	=>  Location: PIN_C22,	 I/O Standard: LVDS,	 Current Strength: Default
-- output_p[12](n)	=>  Location: PIN_B14,	 I/O Standard: LVDS,	 Current Strength: Default
-- output_p[13](n)	=>  Location: PIN_A22,	 I/O Standard: LVDS,	 Current Strength: Default
-- output_p[14](n)	=>  Location: PIN_B17,	 I/O Standard: LVDS,	 Current Strength: Default
-- output_p[15](n)	=>  Location: PIN_C18,	 I/O Standard: LVDS,	 Current Strength: Default
-- parallelDataClk_p(n)	=>  Location: PIN_A18,	 I/O Standard: LVDS,	 Current Strength: Default


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
SIGNAL \ww_output_p[0](n)\ : std_logic;
SIGNAL \ww_output_p[1](n)\ : std_logic;
SIGNAL \ww_output_p[2](n)\ : std_logic;
SIGNAL \ww_output_p[3](n)\ : std_logic;
SIGNAL \ww_output_p[4](n)\ : std_logic;
SIGNAL \ww_output_p[5](n)\ : std_logic;
SIGNAL \ww_output_p[6](n)\ : std_logic;
SIGNAL \ww_output_p[7](n)\ : std_logic;
SIGNAL \ww_output_p[8](n)\ : std_logic;
SIGNAL \ww_output_p[9](n)\ : std_logic;
SIGNAL \ww_output_p[10](n)\ : std_logic;
SIGNAL \ww_output_p[11](n)\ : std_logic;
SIGNAL \ww_output_p[12](n)\ : std_logic;
SIGNAL \ww_output_p[13](n)\ : std_logic;
SIGNAL \ww_output_p[14](n)\ : std_logic;
SIGNAL \ww_output_p[15](n)\ : std_logic;
SIGNAL \ww_parallelDataClk_p(n)\ : std_logic;
SIGNAL ww_output_p : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_parallelDataClk_p : std_logic;
SIGNAL ww_sclk : std_logic;
SIGNAL ww_sdenb : std_logic;
SIGNAL ww_sdio : std_logic;
SIGNAL ww_configok : std_logic;
SIGNAL ww_writeconfig : std_logic;
SIGNAL ww_inputClock : std_logic;
SIGNAL ww_ClkOUT : std_logic;
SIGNAL ww_writeConfigReceived : std_logic;
SIGNAL ww_stateRegOut : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_nextStateRegOut : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_resetn : std_logic;
SIGNAL ww_discardBuffer : std_logic;
SIGNAL \sclk~input_o\ : std_logic;
SIGNAL \sdenb~input_o\ : std_logic;
SIGNAL \configok~input_o\ : std_logic;
SIGNAL \discardBuffer~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \inputClock~input_o\ : std_logic;
SIGNAL \inputClock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \configurator|Add4~41_sumout\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \configurator|Equal0~1_combout\ : std_logic;
SIGNAL \configurator|Equal0~0_combout\ : std_logic;
SIGNAL \configurator|Add4~2\ : std_logic;
SIGNAL \configurator|Add4~49_sumout\ : std_logic;
SIGNAL \configurator|Add4~50\ : std_logic;
SIGNAL \configurator|Add4~45_sumout\ : std_logic;
SIGNAL \configurator|Equal0~2_combout\ : std_logic;
SIGNAL \configurator|clockDividerBuffer[5]~0_combout\ : std_logic;
SIGNAL \configurator|Add4~42\ : std_logic;
SIGNAL \configurator|Add4~53_sumout\ : std_logic;
SIGNAL \configurator|Add4~54\ : std_logic;
SIGNAL \configurator|Add4~37_sumout\ : std_logic;
SIGNAL \configurator|Add4~38\ : std_logic;
SIGNAL \configurator|Add4~33_sumout\ : std_logic;
SIGNAL \configurator|Add4~34\ : std_logic;
SIGNAL \configurator|Add4~29_sumout\ : std_logic;
SIGNAL \configurator|Add4~30\ : std_logic;
SIGNAL \configurator|Add4~25_sumout\ : std_logic;
SIGNAL \configurator|Add4~26\ : std_logic;
SIGNAL \configurator|Add4~21_sumout\ : std_logic;
SIGNAL \configurator|Add4~22\ : std_logic;
SIGNAL \configurator|Add4~17_sumout\ : std_logic;
SIGNAL \configurator|Add4~18\ : std_logic;
SIGNAL \configurator|Add4~13_sumout\ : std_logic;
SIGNAL \configurator|Add4~14\ : std_logic;
SIGNAL \configurator|Add4~9_sumout\ : std_logic;
SIGNAL \configurator|Add4~10\ : std_logic;
SIGNAL \configurator|Add4~5_sumout\ : std_logic;
SIGNAL \configurator|Add4~6\ : std_logic;
SIGNAL \configurator|Add4~61_sumout\ : std_logic;
SIGNAL \configurator|Add4~62\ : std_logic;
SIGNAL \configurator|Add4~57_sumout\ : std_logic;
SIGNAL \configurator|Add4~58\ : std_logic;
SIGNAL \configurator|Add4~1_sumout\ : std_logic;
SIGNAL \configurator|internalClock~0_combout\ : std_logic;
SIGNAL \configurator|internalClock~feeder_combout\ : std_logic;
SIGNAL \configurator|internalClock~q\ : std_logic;
SIGNAL \configurator|waitingBuffer[0]~2_combout\ : std_logic;
SIGNAL \configurator|waitingBuffer[1]~1_combout\ : std_logic;
SIGNAL \configurator|waitingBuffer[2]~0_combout\ : std_logic;
SIGNAL \configurator|waitingDone~0_combout\ : std_logic;
SIGNAL \configurator|waitingDone~q\ : std_logic;
SIGNAL \configurator|Add3~9_sumout\ : std_logic;
SIGNAL \configurator|Add3~18\ : std_logic;
SIGNAL \configurator|Add3~25_sumout\ : std_logic;
SIGNAL \configurator|Add2~1_sumout\ : std_logic;
SIGNAL \configurator|dataIndex[0]~feeder_combout\ : std_logic;
SIGNAL \configurator|LessThan1~1_combout\ : std_logic;
SIGNAL \writeconfig~input_o\ : std_logic;
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
SIGNAL \configurator|dataIndex[0]~0_combout\ : std_logic;
SIGNAL \configurator|dataIndex[0]~1_combout\ : std_logic;
SIGNAL \configurator|Add2~2\ : std_logic;
SIGNAL \configurator|Add2~5_sumout\ : std_logic;
SIGNAL \configurator|dataIndex[1]~feeder_combout\ : std_logic;
SIGNAL \configurator|Add2~6\ : std_logic;
SIGNAL \configurator|Add2~13_sumout\ : std_logic;
SIGNAL \configurator|Add2~14\ : std_logic;
SIGNAL \configurator|Add2~9_sumout\ : std_logic;
SIGNAL \configurator|dataIndex[3]~feeder_combout\ : std_logic;
SIGNAL \configurator|Add2~10\ : std_logic;
SIGNAL \configurator|Add2~17_sumout\ : std_logic;
SIGNAL \configurator|Add2~18\ : std_logic;
SIGNAL \configurator|Add2~21_sumout\ : std_logic;
SIGNAL \configurator|Add2~22\ : std_logic;
SIGNAL \configurator|Add2~25_sumout\ : std_logic;
SIGNAL \configurator|Add2~26\ : std_logic;
SIGNAL \configurator|Add2~29_sumout\ : std_logic;
SIGNAL \configurator|dataIndex[7]~feeder_combout\ : std_logic;
SIGNAL \configurator|LessThan0~0_combout\ : std_logic;
SIGNAL \configurator|counter[2]~1_combout\ : std_logic;
SIGNAL \configurator|counter[2]~0_combout\ : std_logic;
SIGNAL \configurator|Add3~10\ : std_logic;
SIGNAL \configurator|Add3~1_sumout\ : std_logic;
SIGNAL \configurator|Add3~2\ : std_logic;
SIGNAL \configurator|Add3~5_sumout\ : std_logic;
SIGNAL \configurator|Add3~6\ : std_logic;
SIGNAL \configurator|Add3~13_sumout\ : std_logic;
SIGNAL \configurator|Add3~14\ : std_logic;
SIGNAL \configurator|Add3~21_sumout\ : std_logic;
SIGNAL \configurator|Add3~22\ : std_logic;
SIGNAL \configurator|Add3~17_sumout\ : std_logic;
SIGNAL \configurator|counter[2]~2_combout\ : std_logic;
SIGNAL \configurator|configOK~0_combout\ : std_logic;
SIGNAL \configurator|configOK~reg0_q\ : std_logic;
SIGNAL \configurator|needWait~0_combout\ : std_logic;
SIGNAL \configurator|needWait~q\ : std_logic;
SIGNAL \configurator|Selector1~0_combout\ : std_logic;
SIGNAL \configurator|nextState.INTER~q\ : std_logic;
SIGNAL \configurator|state~9_combout\ : std_logic;
SIGNAL \configurator|state.INTER~q\ : std_logic;
SIGNAL \configurator|waiting~0_combout\ : std_logic;
SIGNAL \configurator|waiting~q\ : std_logic;
SIGNAL \configurator|discardBuffer~0_combout\ : std_logic;
SIGNAL \configurator|discardBuffer~reg0_q\ : std_logic;
SIGNAL \configurator|discarded~0_combout\ : std_logic;
SIGNAL \configurator|discarded~q\ : std_logic;
SIGNAL \configurator|Selector0~0_combout\ : std_logic;
SIGNAL \configurator|nextState.SEND~q\ : std_logic;
SIGNAL \configurator|state~11_combout\ : std_logic;
SIGNAL \configurator|state.SEND~q\ : std_logic;
SIGNAL \configurator|sendData~0_combout\ : std_logic;
SIGNAL \configurator|outputClock~q\ : std_logic;
SIGNAL \configurator|SCLK~0_combout\ : std_logic;
SIGNAL \configurator|SDENB~0_combout\ : std_logic;
SIGNAL \configurator|SDENB~reg0_q\ : std_logic;
SIGNAL \innerDataClock~0_combout\ : std_logic;
SIGNAL \innerDataClock~feeder_combout\ : std_logic;
SIGNAL \clockDivideBuffer[0]~0_combout\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \innerDataClock~q\ : std_logic;
SIGNAL \snythesizer|Add0~1_sumout\ : std_logic;
SIGNAL \snythesizer|Add0~118\ : std_logic;
SIGNAL \snythesizer|Add0~121_sumout\ : std_logic;
SIGNAL \snythesizer|Add0~122\ : std_logic;
SIGNAL \snythesizer|Add0~125_sumout\ : std_logic;
SIGNAL \snythesizer|counter[3]~DUPLICATE_q\ : std_logic;
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
SIGNAL \snythesizer|counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \snythesizer|Mux11~0_combout\ : std_logic;
SIGNAL \snythesizer|Mux10~0_combout\ : std_logic;
SIGNAL \snythesizer|Mux9~0_combout\ : std_logic;
SIGNAL \snythesizer|Mux8~0_combout\ : std_logic;
SIGNAL \snythesizer|Mux2~0_combout\ : std_logic;
SIGNAL \snythesizer|output_p[6]~feeder_combout\ : std_logic;
SIGNAL \snythesizer|Mux7~0_combout\ : std_logic;
SIGNAL \snythesizer|Mux6~0_combout\ : std_logic;
SIGNAL \snythesizer|Mux1~0_combout\ : std_logic;
SIGNAL \snythesizer|Mux5~0_combout\ : std_logic;
SIGNAL \snythesizer|Mux4~0_combout\ : std_logic;
SIGNAL \snythesizer|Mux3~0_combout\ : std_logic;
SIGNAL \snythesizer|Mux0~0_combout\ : std_logic;
SIGNAL \parallelDataClk_p~0_combout\ : std_logic;
SIGNAL \parallelDataClk_p~reg0_q\ : std_logic;
SIGNAL \configurator|LessThan1~0_combout\ : std_logic;
SIGNAL \configurator|SDIO~0_combout\ : std_logic;
SIGNAL \configurator|Mux1~2_combout\ : std_logic;
SIGNAL \configurator|Mux1~3_combout\ : std_logic;
SIGNAL \configurator|Mux1~0_combout\ : std_logic;
SIGNAL \configurator|Mux1~1_combout\ : std_logic;
SIGNAL \configurator|Mux1~4_combout\ : std_logic;
SIGNAL \configurator|Mux1~11_combout\ : std_logic;
SIGNAL \configurator|Mux1~13_combout\ : std_logic;
SIGNAL \configurator|Mux1~14_combout\ : std_logic;
SIGNAL \configurator|Mux1~10_combout\ : std_logic;
SIGNAL \configurator|Mux1~5_combout\ : std_logic;
SIGNAL \configurator|Mux1~7_combout\ : std_logic;
SIGNAL \configurator|Mux1~8_combout\ : std_logic;
SIGNAL \configurator|Mux1~6_combout\ : std_logic;
SIGNAL \configurator|Mux1~9_combout\ : std_logic;
SIGNAL \configurator|Mux1~12_combout\ : std_logic;
SIGNAL \configurator|Mux0~0_combout\ : std_logic;
SIGNAL \configurator|SDIO~3_combout\ : std_logic;
SIGNAL \configurator|SDIO~1_combout\ : std_logic;
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
SIGNAL clockDivideBuffer : std_logic_vector(7 DOWNTO 0);
SIGNAL \configurator|clockDividerBuffer\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \snythesizer|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \configurator|dataIndex\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \snythesizer|output_p\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \configurator|counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \configurator|waitingBuffer\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \configurator|ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \configurator|ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \configurator|ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \configurator|ALT_INV_Add2~1_sumout\ : std_logic;
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
SIGNAL \configurator|ALT_INV_discarded~q\ : std_logic;
SIGNAL \configurator|ALT_INV_clockDividerBuffer\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \configurator|ALT_INV_counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \configurator|ALT_INV_dataIndex\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \snythesizer|ALT_INV_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \configurator|ALT_INV_nextState.DONE~q\ : std_logic;
SIGNAL \configurator|ALT_INV_nextState.SEND~q\ : std_logic;
SIGNAL \configurator|ALT_INV_nextState.INTER~q\ : std_logic;
SIGNAL \configurator|ALT_INV_nextState.DISCARD~q\ : std_logic;
SIGNAL \configurator|ALT_INV_internalClock~q\ : std_logic;
SIGNAL \snythesizer|ALT_INV_counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \snythesizer|ALT_INV_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_inputClock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_writeconfig~input_o\ : std_logic;
SIGNAL \ALT_INV_resetn~input_o\ : std_logic;
SIGNAL \ALT_INV_innerDataClock~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_Mux1~14_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_Mux1~13_combout\ : std_logic;
SIGNAL \snythesizer|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \snythesizer|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_counter[2]~2_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_nextState.IDLE~q\ : std_logic;
SIGNAL \configurator|ALT_INV_waitingBuffer\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \configurator|ALT_INV_waiting~q\ : std_logic;
SIGNAL \configurator|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \snythesizer|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \snythesizer|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \snythesizer|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_state.IDLE~q\ : std_logic;
SIGNAL \configurator|ALT_INV_waitingDone~q\ : std_logic;
SIGNAL \configurator|ALT_INV_internalClock~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_SDIO~1_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_SDIO~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_outputClock~q\ : std_logic;
SIGNAL \configurator|ALT_INV_discarding~q\ : std_logic;
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
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL ALT_INV_clockDivideBuffer : std_logic_vector(7 DOWNTO 0);
SIGNAL \snythesizer|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_innerDataClock~q\ : std_logic;
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
SIGNAL \configurator|ALT_INV_SDIO~3_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_discardBuffer~reg0_q\ : std_logic;

BEGIN

\output_p[0](n)\ <= \ww_output_p[0](n)\;
\output_p[1](n)\ <= \ww_output_p[1](n)\;
\output_p[2](n)\ <= \ww_output_p[2](n)\;
\output_p[3](n)\ <= \ww_output_p[3](n)\;
\output_p[4](n)\ <= \ww_output_p[4](n)\;
\output_p[5](n)\ <= \ww_output_p[5](n)\;
\output_p[6](n)\ <= \ww_output_p[6](n)\;
\output_p[7](n)\ <= \ww_output_p[7](n)\;
\output_p[8](n)\ <= \ww_output_p[8](n)\;
\output_p[9](n)\ <= \ww_output_p[9](n)\;
\output_p[10](n)\ <= \ww_output_p[10](n)\;
\output_p[11](n)\ <= \ww_output_p[11](n)\;
\output_p[12](n)\ <= \ww_output_p[12](n)\;
\output_p[13](n)\ <= \ww_output_p[13](n)\;
\output_p[14](n)\ <= \ww_output_p[14](n)\;
\output_p[15](n)\ <= \ww_output_p[15](n)\;
\parallelDataClk_p(n)\ <= \ww_parallelDataClk_p(n)\;
output_p <= ww_output_p;
parallelDataClk_p <= ww_parallelDataClk_p;
sclk <= ww_sclk;
sdenb <= ww_sdenb;
sdio <= ww_sdio;
configok <= ww_configok;
ww_writeconfig <= writeconfig;
ww_inputClock <= inputClock;
ClkOUT <= ww_ClkOUT;
writeConfigReceived <= ww_writeConfigReceived;
stateRegOut <= ww_stateRegOut;
nextStateRegOut <= ww_nextStateRegOut;
resetn <= ww_resetn;
discardBuffer <= ww_discardBuffer;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\configurator|ALT_INV_Add2~29_sumout\ <= NOT \configurator|Add2~29_sumout\;
\configurator|ALT_INV_Add2~9_sumout\ <= NOT \configurator|Add2~9_sumout\;
\configurator|ALT_INV_Add2~5_sumout\ <= NOT \configurator|Add2~5_sumout\;
\configurator|ALT_INV_Add2~1_sumout\ <= NOT \configurator|Add2~1_sumout\;
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
\configurator|ALT_INV_discarded~q\ <= NOT \configurator|discarded~q\;
\configurator|ALT_INV_clockDividerBuffer\(11) <= NOT \configurator|clockDividerBuffer\(11);
\configurator|ALT_INV_clockDividerBuffer\(12) <= NOT \configurator|clockDividerBuffer\(12);
\configurator|ALT_INV_clockDividerBuffer\(1) <= NOT \configurator|clockDividerBuffer\(1);
\configurator|ALT_INV_clockDividerBuffer\(14) <= NOT \configurator|clockDividerBuffer\(14);
\configurator|ALT_INV_clockDividerBuffer\(15) <= NOT \configurator|clockDividerBuffer\(15);
\configurator|ALT_INV_clockDividerBuffer\(0) <= NOT \configurator|clockDividerBuffer\(0);
\configurator|ALT_INV_clockDividerBuffer\(2) <= NOT \configurator|clockDividerBuffer\(2);
\configurator|ALT_INV_clockDividerBuffer\(3) <= NOT \configurator|clockDividerBuffer\(3);
\configurator|ALT_INV_clockDividerBuffer\(4) <= NOT \configurator|clockDividerBuffer\(4);
\configurator|ALT_INV_clockDividerBuffer\(5) <= NOT \configurator|clockDividerBuffer\(5);
\configurator|ALT_INV_clockDividerBuffer\(6) <= NOT \configurator|clockDividerBuffer\(6);
\configurator|ALT_INV_clockDividerBuffer\(7) <= NOT \configurator|clockDividerBuffer\(7);
\configurator|ALT_INV_clockDividerBuffer\(8) <= NOT \configurator|clockDividerBuffer\(8);
\configurator|ALT_INV_clockDividerBuffer\(9) <= NOT \configurator|clockDividerBuffer\(9);
\configurator|ALT_INV_clockDividerBuffer\(10) <= NOT \configurator|clockDividerBuffer\(10);
\configurator|ALT_INV_clockDividerBuffer\(13) <= NOT \configurator|clockDividerBuffer\(13);
\configurator|ALT_INV_counter\(6) <= NOT \configurator|counter\(6);
\configurator|ALT_INV_dataIndex\(7) <= NOT \configurator|dataIndex\(7);
\configurator|ALT_INV_dataIndex\(6) <= NOT \configurator|dataIndex\(6);
\configurator|ALT_INV_dataIndex\(5) <= NOT \configurator|dataIndex\(5);
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
\snythesizer|ALT_INV_counter[3]~DUPLICATE_q\ <= NOT \snythesizer|counter[3]~DUPLICATE_q\;
\snythesizer|ALT_INV_counter[0]~DUPLICATE_q\ <= NOT \snythesizer|counter[0]~DUPLICATE_q\;
\ALT_INV_inputClock~inputCLKENA0_outclk\ <= NOT \inputClock~inputCLKENA0_outclk\;
\ALT_INV_writeconfig~input_o\ <= NOT \writeconfig~input_o\;
\ALT_INV_resetn~input_o\ <= NOT \resetn~input_o\;
\ALT_INV_innerDataClock~0_combout\ <= NOT \innerDataClock~0_combout\;
\configurator|ALT_INV_Mux1~14_combout\ <= NOT \configurator|Mux1~14_combout\;
\configurator|ALT_INV_Mux1~13_combout\ <= NOT \configurator|Mux1~13_combout\;
\snythesizer|ALT_INV_LessThan0~5_combout\ <= NOT \snythesizer|LessThan0~5_combout\;
\snythesizer|ALT_INV_LessThan0~4_combout\ <= NOT \snythesizer|LessThan0~4_combout\;
\configurator|ALT_INV_counter[2]~2_combout\ <= NOT \configurator|counter[2]~2_combout\;
\configurator|ALT_INV_nextState.IDLE~q\ <= NOT \configurator|nextState.IDLE~q\;
\configurator|ALT_INV_waitingBuffer\(0) <= NOT \configurator|waitingBuffer\(0);
\configurator|ALT_INV_waitingBuffer\(1) <= NOT \configurator|waitingBuffer\(1);
\configurator|ALT_INV_waitingBuffer\(2) <= NOT \configurator|waitingBuffer\(2);
\configurator|ALT_INV_waiting~q\ <= NOT \configurator|waiting~q\;
\configurator|ALT_INV_LessThan1~1_combout\ <= NOT \configurator|LessThan1~1_combout\;
\snythesizer|ALT_INV_LessThan0~2_combout\ <= NOT \snythesizer|LessThan0~2_combout\;
\snythesizer|ALT_INV_LessThan0~1_combout\ <= NOT \snythesizer|LessThan0~1_combout\;
\snythesizer|ALT_INV_LessThan0~0_combout\ <= NOT \snythesizer|LessThan0~0_combout\;
\configurator|ALT_INV_state.IDLE~q\ <= NOT \configurator|state.IDLE~q\;
\configurator|ALT_INV_waitingDone~q\ <= NOT \configurator|waitingDone~q\;
\configurator|ALT_INV_internalClock~0_combout\ <= NOT \configurator|internalClock~0_combout\;
\configurator|ALT_INV_Equal0~2_combout\ <= NOT \configurator|Equal0~2_combout\;
\configurator|ALT_INV_Equal0~1_combout\ <= NOT \configurator|Equal0~1_combout\;
\configurator|ALT_INV_Equal0~0_combout\ <= NOT \configurator|Equal0~0_combout\;
\configurator|ALT_INV_SDIO~1_combout\ <= NOT \configurator|SDIO~1_combout\;
\configurator|ALT_INV_Mux0~0_combout\ <= NOT \configurator|Mux0~0_combout\;
\configurator|ALT_INV_SDIO~0_combout\ <= NOT \configurator|SDIO~0_combout\;
\configurator|ALT_INV_LessThan0~0_combout\ <= NOT \configurator|LessThan0~0_combout\;
\configurator|ALT_INV_LessThan1~0_combout\ <= NOT \configurator|LessThan1~0_combout\;
\configurator|ALT_INV_outputClock~q\ <= NOT \configurator|outputClock~q\;
\configurator|ALT_INV_discarding~q\ <= NOT \configurator|discarding~q\;
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
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
ALT_INV_clockDivideBuffer(3) <= NOT clockDivideBuffer(3);
ALT_INV_clockDivideBuffer(2) <= NOT clockDivideBuffer(2);
ALT_INV_clockDivideBuffer(1) <= NOT clockDivideBuffer(1);
ALT_INV_clockDivideBuffer(0) <= NOT clockDivideBuffer(0);
ALT_INV_clockDivideBuffer(7) <= NOT clockDivideBuffer(7);
ALT_INV_clockDivideBuffer(6) <= NOT clockDivideBuffer(6);
ALT_INV_clockDivideBuffer(5) <= NOT clockDivideBuffer(5);
ALT_INV_clockDivideBuffer(4) <= NOT clockDivideBuffer(4);
\snythesizer|ALT_INV_Mux2~0_combout\ <= NOT \snythesizer|Mux2~0_combout\;
\ALT_INV_innerDataClock~q\ <= NOT \innerDataClock~q\;
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
\configurator|ALT_INV_SDIO~3_combout\ <= NOT \configurator|SDIO~3_combout\;
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
\configurator|ALT_INV_discardBuffer~reg0_q\ <= NOT \configurator|discardBuffer~reg0_q\;

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
	o => ww_output_p(0),
	obar => \ww_output_p[0](n)\);

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
	o => ww_output_p(1),
	obar => \ww_output_p[1](n)\);

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
	o => ww_output_p(2),
	obar => \ww_output_p[2](n)\);

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
	o => ww_output_p(3),
	obar => \ww_output_p[3](n)\);

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
	o => ww_output_p(4),
	obar => \ww_output_p[4](n)\);

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
	o => ww_output_p(5),
	obar => \ww_output_p[5](n)\);

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
	o => ww_output_p(6),
	obar => \ww_output_p[6](n)\);

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
	o => ww_output_p(7),
	obar => \ww_output_p[7](n)\);

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
	o => ww_output_p(8),
	obar => \ww_output_p[8](n)\);

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
	o => ww_output_p(9),
	obar => \ww_output_p[9](n)\);

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
	o => ww_output_p(10),
	obar => \ww_output_p[10](n)\);

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
	o => ww_output_p(11),
	obar => \ww_output_p[11](n)\);

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
	o => ww_output_p(12),
	obar => \ww_output_p[12](n)\);

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
	o => ww_output_p(13),
	obar => \ww_output_p[13](n)\);

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
	o => ww_output_p(14),
	obar => \ww_output_p[14](n)\);

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
	o => ww_output_p(15),
	obar => \ww_output_p[15](n)\);

-- Location: IOOBUF_X57_Y61_N36
\parallelDataClk_p~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \parallelDataClk_p~reg0_q\,
	devoe => ww_devoe,
	o => ww_parallelDataClk_p,
	obar => \ww_parallelDataClk_p(n)\);

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
\inputClock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputClock,
	o => \inputClock~input_o\);

-- Location: CLKCTRL_G12
\inputClock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \inputClock~input_o\,
	outclk => \inputClock~inputCLKENA0_outclk\);

-- Location: MLABCELL_X14_Y58_N0
\configurator|Add4~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~41_sumout\ = SUM(( \configurator|clockDividerBuffer\(0) ) + ( VCC ) + ( !VCC ))
-- \configurator|Add4~42\ = CARRY(( \configurator|clockDividerBuffer\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_clockDividerBuffer\(0),
	cin => GND,
	sumout => \configurator|Add4~41_sumout\,
	cout => \configurator|Add4~42\);

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

-- Location: MLABCELL_X14_Y58_N54
\configurator|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Equal0~1_combout\ = ( \configurator|clockDividerBuffer\(2) & ( \configurator|clockDividerBuffer\(3) & ( (\configurator|clockDividerBuffer\(5) & (\configurator|clockDividerBuffer\(0) & \configurator|clockDividerBuffer\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_clockDividerBuffer\(5),
	datac => \configurator|ALT_INV_clockDividerBuffer\(0),
	datad => \configurator|ALT_INV_clockDividerBuffer\(4),
	datae => \configurator|ALT_INV_clockDividerBuffer\(2),
	dataf => \configurator|ALT_INV_clockDividerBuffer\(3),
	combout => \configurator|Equal0~1_combout\);

-- Location: LABCELL_X15_Y58_N54
\configurator|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Equal0~0_combout\ = ( \configurator|clockDividerBuffer\(9) & ( \configurator|clockDividerBuffer\(8) & ( (\configurator|clockDividerBuffer\(6) & \configurator|clockDividerBuffer\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_clockDividerBuffer\(6),
	datad => \configurator|ALT_INV_clockDividerBuffer\(7),
	datae => \configurator|ALT_INV_clockDividerBuffer\(9),
	dataf => \configurator|ALT_INV_clockDividerBuffer\(8),
	combout => \configurator|Equal0~0_combout\);

-- Location: MLABCELL_X14_Y58_N39
\configurator|Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~1_sumout\ = SUM(( \configurator|clockDividerBuffer\(13) ) + ( GND ) + ( \configurator|Add4~58\ ))
-- \configurator|Add4~2\ = CARRY(( \configurator|clockDividerBuffer\(13) ) + ( GND ) + ( \configurator|Add4~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_clockDividerBuffer\(13),
	cin => \configurator|Add4~58\,
	sumout => \configurator|Add4~1_sumout\,
	cout => \configurator|Add4~2\);

-- Location: MLABCELL_X14_Y58_N42
\configurator|Add4~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~49_sumout\ = SUM(( \configurator|clockDividerBuffer\(14) ) + ( GND ) + ( \configurator|Add4~2\ ))
-- \configurator|Add4~50\ = CARRY(( \configurator|clockDividerBuffer\(14) ) + ( GND ) + ( \configurator|Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_clockDividerBuffer\(14),
	cin => \configurator|Add4~2\,
	sumout => \configurator|Add4~49_sumout\,
	cout => \configurator|Add4~50\);

-- Location: FF_X14_Y58_N44
\configurator|clockDividerBuffer[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \configurator|Add4~49_sumout\,
	sclr => \configurator|clockDividerBuffer[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(14));

-- Location: MLABCELL_X14_Y58_N45
\configurator|Add4~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~45_sumout\ = SUM(( \configurator|clockDividerBuffer\(15) ) + ( GND ) + ( \configurator|Add4~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_clockDividerBuffer\(15),
	cin => \configurator|Add4~50\,
	sumout => \configurator|Add4~45_sumout\);

-- Location: FF_X14_Y58_N47
\configurator|clockDividerBuffer[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \configurator|Add4~45_sumout\,
	sclr => \configurator|clockDividerBuffer[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(15));

-- Location: LABCELL_X15_Y58_N24
\configurator|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Equal0~2_combout\ = ( \configurator|clockDividerBuffer\(15) & ( \configurator|clockDividerBuffer\(14) & ( (\configurator|clockDividerBuffer\(11) & (\configurator|clockDividerBuffer\(1) & \configurator|clockDividerBuffer\(12))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_clockDividerBuffer\(11),
	datac => \configurator|ALT_INV_clockDividerBuffer\(1),
	datad => \configurator|ALT_INV_clockDividerBuffer\(12),
	datae => \configurator|ALT_INV_clockDividerBuffer\(15),
	dataf => \configurator|ALT_INV_clockDividerBuffer\(14),
	combout => \configurator|Equal0~2_combout\);

-- Location: MLABCELL_X14_Y58_N48
\configurator|clockDividerBuffer[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|clockDividerBuffer[5]~0_combout\ = ( \configurator|Equal0~0_combout\ & ( \configurator|Equal0~2_combout\ & ( (!\resetn~input_o\) # ((\configurator|clockDividerBuffer\(10) & (\configurator|Equal0~1_combout\ & 
-- \configurator|clockDividerBuffer\(13)))) ) ) ) # ( !\configurator|Equal0~0_combout\ & ( \configurator|Equal0~2_combout\ & ( !\resetn~input_o\ ) ) ) # ( \configurator|Equal0~0_combout\ & ( !\configurator|Equal0~2_combout\ & ( !\resetn~input_o\ ) ) ) # ( 
-- !\configurator|Equal0~0_combout\ & ( !\configurator|Equal0~2_combout\ & ( !\resetn~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetn~input_o\,
	datab => \configurator|ALT_INV_clockDividerBuffer\(10),
	datac => \configurator|ALT_INV_Equal0~1_combout\,
	datad => \configurator|ALT_INV_clockDividerBuffer\(13),
	datae => \configurator|ALT_INV_Equal0~0_combout\,
	dataf => \configurator|ALT_INV_Equal0~2_combout\,
	combout => \configurator|clockDividerBuffer[5]~0_combout\);

-- Location: FF_X14_Y58_N2
\configurator|clockDividerBuffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \configurator|Add4~41_sumout\,
	sclr => \configurator|clockDividerBuffer[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(0));

-- Location: MLABCELL_X14_Y58_N3
\configurator|Add4~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~53_sumout\ = SUM(( \configurator|clockDividerBuffer\(1) ) + ( GND ) + ( \configurator|Add4~42\ ))
-- \configurator|Add4~54\ = CARRY(( \configurator|clockDividerBuffer\(1) ) + ( GND ) + ( \configurator|Add4~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_clockDividerBuffer\(1),
	cin => \configurator|Add4~42\,
	sumout => \configurator|Add4~53_sumout\,
	cout => \configurator|Add4~54\);

-- Location: FF_X14_Y58_N5
\configurator|clockDividerBuffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \configurator|Add4~53_sumout\,
	sclr => \configurator|clockDividerBuffer[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(1));

-- Location: MLABCELL_X14_Y58_N6
\configurator|Add4~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~37_sumout\ = SUM(( \configurator|clockDividerBuffer\(2) ) + ( GND ) + ( \configurator|Add4~54\ ))
-- \configurator|Add4~38\ = CARRY(( \configurator|clockDividerBuffer\(2) ) + ( GND ) + ( \configurator|Add4~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_clockDividerBuffer\(2),
	cin => \configurator|Add4~54\,
	sumout => \configurator|Add4~37_sumout\,
	cout => \configurator|Add4~38\);

-- Location: FF_X14_Y58_N8
\configurator|clockDividerBuffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \configurator|Add4~37_sumout\,
	sclr => \configurator|clockDividerBuffer[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(2));

-- Location: MLABCELL_X14_Y58_N9
\configurator|Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~33_sumout\ = SUM(( \configurator|clockDividerBuffer\(3) ) + ( GND ) + ( \configurator|Add4~38\ ))
-- \configurator|Add4~34\ = CARRY(( \configurator|clockDividerBuffer\(3) ) + ( GND ) + ( \configurator|Add4~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_clockDividerBuffer\(3),
	cin => \configurator|Add4~38\,
	sumout => \configurator|Add4~33_sumout\,
	cout => \configurator|Add4~34\);

-- Location: FF_X14_Y58_N11
\configurator|clockDividerBuffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \configurator|Add4~33_sumout\,
	sclr => \configurator|clockDividerBuffer[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(3));

-- Location: MLABCELL_X14_Y58_N12
\configurator|Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~29_sumout\ = SUM(( \configurator|clockDividerBuffer\(4) ) + ( GND ) + ( \configurator|Add4~34\ ))
-- \configurator|Add4~30\ = CARRY(( \configurator|clockDividerBuffer\(4) ) + ( GND ) + ( \configurator|Add4~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_clockDividerBuffer\(4),
	cin => \configurator|Add4~34\,
	sumout => \configurator|Add4~29_sumout\,
	cout => \configurator|Add4~30\);

-- Location: FF_X14_Y58_N14
\configurator|clockDividerBuffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \configurator|Add4~29_sumout\,
	sclr => \configurator|clockDividerBuffer[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(4));

-- Location: MLABCELL_X14_Y58_N15
\configurator|Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~25_sumout\ = SUM(( \configurator|clockDividerBuffer\(5) ) + ( GND ) + ( \configurator|Add4~30\ ))
-- \configurator|Add4~26\ = CARRY(( \configurator|clockDividerBuffer\(5) ) + ( GND ) + ( \configurator|Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_clockDividerBuffer\(5),
	cin => \configurator|Add4~30\,
	sumout => \configurator|Add4~25_sumout\,
	cout => \configurator|Add4~26\);

-- Location: FF_X14_Y58_N17
\configurator|clockDividerBuffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \configurator|Add4~25_sumout\,
	sclr => \configurator|clockDividerBuffer[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(5));

-- Location: MLABCELL_X14_Y58_N18
\configurator|Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~21_sumout\ = SUM(( \configurator|clockDividerBuffer\(6) ) + ( GND ) + ( \configurator|Add4~26\ ))
-- \configurator|Add4~22\ = CARRY(( \configurator|clockDividerBuffer\(6) ) + ( GND ) + ( \configurator|Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_clockDividerBuffer\(6),
	cin => \configurator|Add4~26\,
	sumout => \configurator|Add4~21_sumout\,
	cout => \configurator|Add4~22\);

-- Location: FF_X14_Y58_N20
\configurator|clockDividerBuffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \configurator|Add4~21_sumout\,
	sclr => \configurator|clockDividerBuffer[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(6));

-- Location: MLABCELL_X14_Y58_N21
\configurator|Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~17_sumout\ = SUM(( \configurator|clockDividerBuffer\(7) ) + ( GND ) + ( \configurator|Add4~22\ ))
-- \configurator|Add4~18\ = CARRY(( \configurator|clockDividerBuffer\(7) ) + ( GND ) + ( \configurator|Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_clockDividerBuffer\(7),
	cin => \configurator|Add4~22\,
	sumout => \configurator|Add4~17_sumout\,
	cout => \configurator|Add4~18\);

-- Location: FF_X14_Y58_N23
\configurator|clockDividerBuffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \configurator|Add4~17_sumout\,
	sclr => \configurator|clockDividerBuffer[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(7));

-- Location: MLABCELL_X14_Y58_N24
\configurator|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~13_sumout\ = SUM(( \configurator|clockDividerBuffer\(8) ) + ( GND ) + ( \configurator|Add4~18\ ))
-- \configurator|Add4~14\ = CARRY(( \configurator|clockDividerBuffer\(8) ) + ( GND ) + ( \configurator|Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_clockDividerBuffer\(8),
	cin => \configurator|Add4~18\,
	sumout => \configurator|Add4~13_sumout\,
	cout => \configurator|Add4~14\);

-- Location: FF_X14_Y58_N26
\configurator|clockDividerBuffer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \configurator|Add4~13_sumout\,
	sclr => \configurator|clockDividerBuffer[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(8));

-- Location: MLABCELL_X14_Y58_N27
\configurator|Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~9_sumout\ = SUM(( \configurator|clockDividerBuffer\(9) ) + ( GND ) + ( \configurator|Add4~14\ ))
-- \configurator|Add4~10\ = CARRY(( \configurator|clockDividerBuffer\(9) ) + ( GND ) + ( \configurator|Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_clockDividerBuffer\(9),
	cin => \configurator|Add4~14\,
	sumout => \configurator|Add4~9_sumout\,
	cout => \configurator|Add4~10\);

-- Location: FF_X14_Y58_N29
\configurator|clockDividerBuffer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \configurator|Add4~9_sumout\,
	sclr => \configurator|clockDividerBuffer[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(9));

-- Location: MLABCELL_X14_Y58_N30
\configurator|Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~5_sumout\ = SUM(( \configurator|clockDividerBuffer\(10) ) + ( GND ) + ( \configurator|Add4~10\ ))
-- \configurator|Add4~6\ = CARRY(( \configurator|clockDividerBuffer\(10) ) + ( GND ) + ( \configurator|Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_clockDividerBuffer\(10),
	cin => \configurator|Add4~10\,
	sumout => \configurator|Add4~5_sumout\,
	cout => \configurator|Add4~6\);

-- Location: FF_X14_Y58_N32
\configurator|clockDividerBuffer[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \configurator|Add4~5_sumout\,
	sclr => \configurator|clockDividerBuffer[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(10));

-- Location: MLABCELL_X14_Y58_N33
\configurator|Add4~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~61_sumout\ = SUM(( \configurator|clockDividerBuffer\(11) ) + ( GND ) + ( \configurator|Add4~6\ ))
-- \configurator|Add4~62\ = CARRY(( \configurator|clockDividerBuffer\(11) ) + ( GND ) + ( \configurator|Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_clockDividerBuffer\(11),
	cin => \configurator|Add4~6\,
	sumout => \configurator|Add4~61_sumout\,
	cout => \configurator|Add4~62\);

-- Location: FF_X14_Y58_N35
\configurator|clockDividerBuffer[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \configurator|Add4~61_sumout\,
	sclr => \configurator|clockDividerBuffer[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(11));

-- Location: MLABCELL_X14_Y58_N36
\configurator|Add4~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~57_sumout\ = SUM(( \configurator|clockDividerBuffer\(12) ) + ( GND ) + ( \configurator|Add4~62\ ))
-- \configurator|Add4~58\ = CARRY(( \configurator|clockDividerBuffer\(12) ) + ( GND ) + ( \configurator|Add4~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_clockDividerBuffer\(12),
	cin => \configurator|Add4~62\,
	sumout => \configurator|Add4~57_sumout\,
	cout => \configurator|Add4~58\);

-- Location: FF_X14_Y58_N38
\configurator|clockDividerBuffer[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \configurator|Add4~57_sumout\,
	sclr => \configurator|clockDividerBuffer[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(12));

-- Location: FF_X14_Y58_N41
\configurator|clockDividerBuffer[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \configurator|Add4~1_sumout\,
	sclr => \configurator|clockDividerBuffer[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(13));

-- Location: LABCELL_X15_Y58_N15
\configurator|internalClock~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|internalClock~0_combout\ = ( \configurator|Equal0~0_combout\ & ( \configurator|internalClock~q\ & ( (!\configurator|clockDividerBuffer\(13)) # ((!\configurator|clockDividerBuffer\(10)) # ((!\configurator|Equal0~1_combout\) # 
-- (!\configurator|Equal0~2_combout\))) ) ) ) # ( !\configurator|Equal0~0_combout\ & ( \configurator|internalClock~q\ ) ) # ( \configurator|Equal0~0_combout\ & ( !\configurator|internalClock~q\ & ( (\configurator|clockDividerBuffer\(13) & 
-- (\configurator|clockDividerBuffer\(10) & (\configurator|Equal0~1_combout\ & \configurator|Equal0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000111111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_clockDividerBuffer\(13),
	datab => \configurator|ALT_INV_clockDividerBuffer\(10),
	datac => \configurator|ALT_INV_Equal0~1_combout\,
	datad => \configurator|ALT_INV_Equal0~2_combout\,
	datae => \configurator|ALT_INV_Equal0~0_combout\,
	dataf => \configurator|ALT_INV_internalClock~q\,
	combout => \configurator|internalClock~0_combout\);

-- Location: LABCELL_X15_Y58_N18
\configurator|internalClock~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|internalClock~feeder_combout\ = \configurator|internalClock~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_internalClock~0_combout\,
	combout => \configurator|internalClock~feeder_combout\);

-- Location: FF_X15_Y58_N20
\configurator|internalClock\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~input_o\,
	d => \configurator|internalClock~feeder_combout\,
	sclr => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|internalClock~q\);

-- Location: LABCELL_X15_Y57_N57
\configurator|waitingBuffer[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|waitingBuffer[0]~2_combout\ = ( !\configurator|waitingBuffer\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \configurator|ALT_INV_waitingBuffer\(0),
	combout => \configurator|waitingBuffer[0]~2_combout\);

-- Location: FF_X15_Y57_N56
\configurator|waitingBuffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|waitingBuffer[0]~2_combout\,
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \configurator|waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|waitingBuffer\(0));

-- Location: LABCELL_X15_Y57_N21
\configurator|waitingBuffer[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|waitingBuffer[1]~1_combout\ = ( \configurator|waiting~q\ & ( \configurator|waitingBuffer\(1) & ( !\configurator|waitingBuffer\(0) ) ) ) # ( !\configurator|waiting~q\ & ( \configurator|waitingBuffer\(1) ) ) # ( \configurator|waiting~q\ & ( 
-- !\configurator|waitingBuffer\(1) & ( \configurator|waitingBuffer\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111111111111111111010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_waitingBuffer\(0),
	datae => \configurator|ALT_INV_waiting~q\,
	dataf => \configurator|ALT_INV_waitingBuffer\(1),
	combout => \configurator|waitingBuffer[1]~1_combout\);

-- Location: FF_X15_Y57_N41
\configurator|waitingBuffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|waitingBuffer[1]~1_combout\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|waitingBuffer\(1));

-- Location: LABCELL_X15_Y57_N0
\configurator|waitingBuffer[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|waitingBuffer[2]~0_combout\ = ( \configurator|waiting~q\ & ( \configurator|waitingBuffer\(1) & ( !\configurator|waitingBuffer\(0) $ (!\configurator|waitingBuffer\(2)) ) ) ) # ( !\configurator|waiting~q\ & ( \configurator|waitingBuffer\(1) & 
-- ( \configurator|waitingBuffer\(2) ) ) ) # ( \configurator|waiting~q\ & ( !\configurator|waitingBuffer\(1) & ( \configurator|waitingBuffer\(2) ) ) ) # ( !\configurator|waiting~q\ & ( !\configurator|waitingBuffer\(1) & ( \configurator|waitingBuffer\(2) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_waitingBuffer\(0),
	datad => \configurator|ALT_INV_waitingBuffer\(2),
	datae => \configurator|ALT_INV_waiting~q\,
	dataf => \configurator|ALT_INV_waitingBuffer\(1),
	combout => \configurator|waitingBuffer[2]~0_combout\);

-- Location: FF_X15_Y57_N14
\configurator|waitingBuffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|waitingBuffer[2]~0_combout\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|waitingBuffer\(2));

-- Location: LABCELL_X15_Y57_N36
\configurator|waitingDone~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|waitingDone~0_combout\ = ( \configurator|waiting~q\ & ( \configurator|waitingBuffer\(2) & ( (\configurator|waitingBuffer\(1) & \configurator|waitingBuffer\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_waitingBuffer\(1),
	datab => \configurator|ALT_INV_waitingBuffer\(0),
	datae => \configurator|ALT_INV_waiting~q\,
	dataf => \configurator|ALT_INV_waitingBuffer\(2),
	combout => \configurator|waitingDone~0_combout\);

-- Location: FF_X15_Y57_N38
\configurator|waitingDone\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	d => \configurator|waitingDone~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|waitingDone~q\);

-- Location: LABCELL_X15_Y58_N30
\configurator|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add3~9_sumout\ = SUM(( \configurator|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \configurator|Add3~10\ = CARRY(( \configurator|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_counter\(0),
	cin => GND,
	sumout => \configurator|Add3~9_sumout\,
	cout => \configurator|Add3~10\);

-- Location: LABCELL_X15_Y58_N45
\configurator|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add3~17_sumout\ = SUM(( \configurator|counter\(5) ) + ( GND ) + ( \configurator|Add3~22\ ))
-- \configurator|Add3~18\ = CARRY(( \configurator|counter\(5) ) + ( GND ) + ( \configurator|Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_counter\(5),
	cin => \configurator|Add3~22\,
	sumout => \configurator|Add3~17_sumout\,
	cout => \configurator|Add3~18\);

-- Location: LABCELL_X15_Y58_N48
\configurator|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add3~25_sumout\ = SUM(( \configurator|counter\(6) ) + ( GND ) + ( \configurator|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_counter\(6),
	cin => \configurator|Add3~18\,
	sumout => \configurator|Add3~25_sumout\);

-- Location: LABCELL_X17_Y59_N30
\configurator|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~1_sumout\ = SUM(( \configurator|dataIndex\(0) ) + ( VCC ) + ( !VCC ))
-- \configurator|Add2~2\ = CARRY(( \configurator|dataIndex\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_dataIndex\(0),
	cin => GND,
	sumout => \configurator|Add2~1_sumout\,
	cout => \configurator|Add2~2\);

-- Location: LABCELL_X13_Y59_N6
\configurator|dataIndex[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|dataIndex[0]~feeder_combout\ = ( \configurator|Add2~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \configurator|ALT_INV_Add2~1_sumout\,
	combout => \configurator|dataIndex[0]~feeder_combout\);

-- Location: LABCELL_X17_Y59_N0
\configurator|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|LessThan1~1_combout\ = ( \configurator|dataIndex\(2) & ( \configurator|dataIndex\(1) & ( (\configurator|dataIndex\(4) & ((\configurator|dataIndex\(3)) # (\configurator|dataIndex\(0)))) ) ) ) # ( !\configurator|dataIndex\(2) & ( 
-- \configurator|dataIndex\(1) & ( (\configurator|dataIndex\(4) & \configurator|dataIndex\(3)) ) ) ) # ( \configurator|dataIndex\(2) & ( !\configurator|dataIndex\(1) & ( (\configurator|dataIndex\(4) & \configurator|dataIndex\(3)) ) ) ) # ( 
-- !\configurator|dataIndex\(2) & ( !\configurator|dataIndex\(1) & ( (\configurator|dataIndex\(4) & \configurator|dataIndex\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(0),
	datac => \configurator|ALT_INV_dataIndex\(4),
	datad => \configurator|ALT_INV_dataIndex\(3),
	datae => \configurator|ALT_INV_dataIndex\(2),
	dataf => \configurator|ALT_INV_dataIndex\(1),
	combout => \configurator|LessThan1~1_combout\);

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

-- Location: LABCELL_X17_Y57_N18
\configurator|nextState~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|nextState~7_combout\ = ( \configurator|state.INTER~q\ & ( \resetn~input_o\ ) ) # ( !\configurator|state.INTER~q\ & ( (\resetn~input_o\ & ((!\writeconfig~input_o\) # (\configurator|state.DISCARD~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100100011001000110010001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_writeconfig~input_o\,
	datab => \ALT_INV_resetn~input_o\,
	datac => \configurator|ALT_INV_state.DISCARD~q\,
	dataf => \configurator|ALT_INV_state.INTER~q\,
	combout => \configurator|nextState~7_combout\);

-- Location: FF_X17_Y57_N20
\configurator|nextState.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inputClock~inputCLKENA0_outclk\,
	d => \configurator|nextState~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|nextState.IDLE~q\);

-- Location: LABCELL_X17_Y57_N54
\configurator|state~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|state~13_combout\ = ( \configurator|nextState.IDLE~q\ & ( \resetn~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_resetn~input_o\,
	dataf => \configurator|ALT_INV_nextState.IDLE~q\,
	combout => \configurator|state~13_combout\);

-- Location: FF_X17_Y57_N56
\configurator|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \configurator|state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|state.IDLE~q\);

-- Location: LABCELL_X17_Y57_N48
\configurator|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Selector2~0_combout\ = ( \configurator|state.IDLE~q\ & ( \configurator|state.INTER~q\ & ( ((!\configurator|discarded~q\ & \configurator|state.DISCARD~q\)) # (\configurator|waitingDone~q\) ) ) ) # ( !\configurator|state.IDLE~q\ & ( 
-- \configurator|state.INTER~q\ & ( ((!\writeconfig~input_o\) # ((!\configurator|discarded~q\ & \configurator|state.DISCARD~q\))) # (\configurator|waitingDone~q\) ) ) ) # ( \configurator|state.IDLE~q\ & ( !\configurator|state.INTER~q\ & ( 
-- (!\configurator|discarded~q\ & \configurator|state.DISCARD~q\) ) ) ) # ( !\configurator|state.IDLE~q\ & ( !\configurator|state.INTER~q\ & ( (!\writeconfig~input_o\) # ((!\configurator|discarded~q\ & \configurator|state.DISCARD~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001010000010100000101011111111001110110011101100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_discarded~q\,
	datab => \configurator|ALT_INV_waitingDone~q\,
	datac => \configurator|ALT_INV_state.DISCARD~q\,
	datad => \ALT_INV_writeconfig~input_o\,
	datae => \configurator|ALT_INV_state.IDLE~q\,
	dataf => \configurator|ALT_INV_state.INTER~q\,
	combout => \configurator|Selector2~0_combout\);

-- Location: FF_X17_Y57_N50
\configurator|nextState.DISCARD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inputClock~inputCLKENA0_outclk\,
	d => \configurator|Selector2~0_combout\,
	sclr => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|nextState.DISCARD~q\);

-- Location: LABCELL_X17_Y57_N24
\configurator|state~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|state~10_combout\ = ( \configurator|nextState.DISCARD~q\ & ( \resetn~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_resetn~input_o\,
	dataf => \configurator|ALT_INV_nextState.DISCARD~q\,
	combout => \configurator|state~10_combout\);

-- Location: FF_X17_Y57_N26
\configurator|state.DISCARD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \configurator|state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|state.DISCARD~q\);

-- Location: LABCELL_X15_Y59_N18
\configurator|discarding~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|discarding~0_combout\ = ( \configurator|state.DISCARD~q\ & ( \resetn~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_resetn~input_o\,
	dataf => \configurator|ALT_INV_state.DISCARD~q\,
	combout => \configurator|discarding~0_combout\);

-- Location: FF_X15_Y59_N20
\configurator|discarding\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \configurator|discarding~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|discarding~q\);

-- Location: LABCELL_X15_Y59_N39
\configurator|dataIndex[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|dataIndex[0]~0_combout\ = ( \configurator|LessThan0~0_combout\ & ( \configurator|discarding~q\ ) ) # ( !\configurator|LessThan0~0_combout\ & ( \configurator|discarding~q\ ) ) # ( \configurator|LessThan0~0_combout\ & ( 
-- !\configurator|discarding~q\ & ( (!\resetn~input_o\) # (\configurator|LessThan1~1_combout\) ) ) ) # ( !\configurator|LessThan0~0_combout\ & ( !\configurator|discarding~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111101011111010111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetn~input_o\,
	datac => \configurator|ALT_INV_LessThan1~1_combout\,
	datae => \configurator|ALT_INV_LessThan0~0_combout\,
	dataf => \configurator|ALT_INV_discarding~q\,
	combout => \configurator|dataIndex[0]~0_combout\);

-- Location: LABCELL_X15_Y59_N45
\configurator|dataIndex[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|dataIndex[0]~1_combout\ = ( \configurator|discarding~q\ ) # ( !\configurator|discarding~q\ & ( (!\resetn~input_o\) # (\configurator|outputClock~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111101010101111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetn~input_o\,
	datad => \configurator|ALT_INV_outputClock~q\,
	dataf => \configurator|ALT_INV_discarding~q\,
	combout => \configurator|dataIndex[0]~1_combout\);

-- Location: FF_X13_Y59_N8
\configurator|dataIndex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	d => \configurator|dataIndex[0]~feeder_combout\,
	sclr => \configurator|dataIndex[0]~0_combout\,
	ena => \configurator|dataIndex[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(0));

-- Location: LABCELL_X17_Y59_N33
\configurator|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~5_sumout\ = SUM(( \configurator|dataIndex\(1) ) + ( GND ) + ( \configurator|Add2~2\ ))
-- \configurator|Add2~6\ = CARRY(( \configurator|dataIndex\(1) ) + ( GND ) + ( \configurator|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_dataIndex\(1),
	cin => \configurator|Add2~2\,
	sumout => \configurator|Add2~5_sumout\,
	cout => \configurator|Add2~6\);

-- Location: LABCELL_X13_Y59_N27
\configurator|dataIndex[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|dataIndex[1]~feeder_combout\ = ( \configurator|Add2~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \configurator|ALT_INV_Add2~5_sumout\,
	combout => \configurator|dataIndex[1]~feeder_combout\);

-- Location: FF_X13_Y59_N29
\configurator|dataIndex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	d => \configurator|dataIndex[1]~feeder_combout\,
	sclr => \configurator|dataIndex[0]~0_combout\,
	ena => \configurator|dataIndex[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(1));

-- Location: LABCELL_X17_Y59_N36
\configurator|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~13_sumout\ = SUM(( \configurator|dataIndex\(2) ) + ( GND ) + ( \configurator|Add2~6\ ))
-- \configurator|Add2~14\ = CARRY(( \configurator|dataIndex\(2) ) + ( GND ) + ( \configurator|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_dataIndex\(2),
	cin => \configurator|Add2~6\,
	sumout => \configurator|Add2~13_sumout\,
	cout => \configurator|Add2~14\);

-- Location: FF_X13_Y59_N17
\configurator|dataIndex[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|Add2~13_sumout\,
	sclr => \configurator|dataIndex[0]~0_combout\,
	sload => VCC,
	ena => \configurator|dataIndex[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(2));

-- Location: LABCELL_X17_Y59_N39
\configurator|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~9_sumout\ = SUM(( \configurator|dataIndex\(3) ) + ( GND ) + ( \configurator|Add2~14\ ))
-- \configurator|Add2~10\ = CARRY(( \configurator|dataIndex\(3) ) + ( GND ) + ( \configurator|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(3),
	cin => \configurator|Add2~14\,
	sumout => \configurator|Add2~9_sumout\,
	cout => \configurator|Add2~10\);

-- Location: LABCELL_X13_Y59_N39
\configurator|dataIndex[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|dataIndex[3]~feeder_combout\ = ( \configurator|Add2~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \configurator|ALT_INV_Add2~9_sumout\,
	combout => \configurator|dataIndex[3]~feeder_combout\);

-- Location: FF_X13_Y59_N41
\configurator|dataIndex[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	d => \configurator|dataIndex[3]~feeder_combout\,
	sclr => \configurator|dataIndex[0]~0_combout\,
	ena => \configurator|dataIndex[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(3));

-- Location: LABCELL_X17_Y59_N42
\configurator|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~17_sumout\ = SUM(( \configurator|dataIndex\(4) ) + ( GND ) + ( \configurator|Add2~10\ ))
-- \configurator|Add2~18\ = CARRY(( \configurator|dataIndex\(4) ) + ( GND ) + ( \configurator|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_dataIndex\(4),
	cin => \configurator|Add2~10\,
	sumout => \configurator|Add2~17_sumout\,
	cout => \configurator|Add2~18\);

-- Location: FF_X15_Y59_N56
\configurator|dataIndex[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|Add2~17_sumout\,
	sclr => \configurator|dataIndex[0]~0_combout\,
	sload => VCC,
	ena => \configurator|dataIndex[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(4));

-- Location: LABCELL_X17_Y59_N45
\configurator|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~21_sumout\ = SUM(( \configurator|dataIndex\(5) ) + ( GND ) + ( \configurator|Add2~18\ ))
-- \configurator|Add2~22\ = CARRY(( \configurator|dataIndex\(5) ) + ( GND ) + ( \configurator|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_dataIndex\(5),
	cin => \configurator|Add2~18\,
	sumout => \configurator|Add2~21_sumout\,
	cout => \configurator|Add2~22\);

-- Location: FF_X15_Y59_N44
\configurator|dataIndex[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|Add2~21_sumout\,
	sclr => \configurator|dataIndex[0]~0_combout\,
	sload => VCC,
	ena => \configurator|dataIndex[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(5));

-- Location: LABCELL_X17_Y59_N48
\configurator|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~25_sumout\ = SUM(( \configurator|dataIndex\(6) ) + ( GND ) + ( \configurator|Add2~22\ ))
-- \configurator|Add2~26\ = CARRY(( \configurator|dataIndex\(6) ) + ( GND ) + ( \configurator|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_dataIndex\(6),
	cin => \configurator|Add2~22\,
	sumout => \configurator|Add2~25_sumout\,
	cout => \configurator|Add2~26\);

-- Location: FF_X15_Y59_N8
\configurator|dataIndex[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|Add2~25_sumout\,
	sclr => \configurator|dataIndex[0]~0_combout\,
	sload => VCC,
	ena => \configurator|dataIndex[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(6));

-- Location: LABCELL_X17_Y59_N51
\configurator|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~29_sumout\ = SUM(( \configurator|dataIndex\(7) ) + ( GND ) + ( \configurator|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_dataIndex\(7),
	cin => \configurator|Add2~26\,
	sumout => \configurator|Add2~29_sumout\);

-- Location: LABCELL_X15_Y59_N15
\configurator|dataIndex[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|dataIndex[7]~feeder_combout\ = ( \configurator|Add2~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \configurator|ALT_INV_Add2~29_sumout\,
	combout => \configurator|dataIndex[7]~feeder_combout\);

-- Location: FF_X15_Y59_N17
\configurator|dataIndex[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	d => \configurator|dataIndex[7]~feeder_combout\,
	sclr => \configurator|dataIndex[0]~0_combout\,
	ena => \configurator|dataIndex[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(7));

-- Location: LABCELL_X15_Y59_N54
\configurator|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|LessThan0~0_combout\ = ( !\configurator|dataIndex\(6) & ( (!\configurator|dataIndex\(7) & !\configurator|dataIndex\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_dataIndex\(7),
	datad => \configurator|ALT_INV_dataIndex\(5),
	dataf => \configurator|ALT_INV_dataIndex\(6),
	combout => \configurator|LessThan0~0_combout\);

-- Location: LABCELL_X15_Y59_N33
\configurator|counter[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|counter[2]~1_combout\ = ( \configurator|LessThan1~1_combout\ & ( \configurator|outputClock~q\ ) ) # ( !\configurator|LessThan1~1_combout\ & ( \configurator|outputClock~q\ & ( (!\resetn~input_o\) # (!\configurator|LessThan0~0_combout\) ) ) ) 
-- # ( \configurator|LessThan1~1_combout\ & ( !\configurator|outputClock~q\ & ( !\resetn~input_o\ ) ) ) # ( !\configurator|LessThan1~1_combout\ & ( !\configurator|outputClock~q\ & ( !\resetn~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011111010111110101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetn~input_o\,
	datac => \configurator|ALT_INV_LessThan0~0_combout\,
	datae => \configurator|ALT_INV_LessThan1~1_combout\,
	dataf => \configurator|ALT_INV_outputClock~q\,
	combout => \configurator|counter[2]~1_combout\);

-- Location: FF_X14_Y59_N26
\configurator|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|Add3~25_sumout\,
	sclr => \configurator|counter[2]~0_combout\,
	sload => VCC,
	ena => \configurator|counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|counter\(6));

-- Location: MLABCELL_X14_Y59_N45
\configurator|counter[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|counter[2]~0_combout\ = ( \configurator|counter\(4) & ( (!\resetn~input_o\) # ((\configurator|counter\(6)) # (\configurator|counter\(5))) ) ) # ( !\configurator|counter\(4) & ( (!\resetn~input_o\) # (\configurator|counter\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111101010101111111110101111111111111010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetn~input_o\,
	datac => \configurator|ALT_INV_counter\(5),
	datad => \configurator|ALT_INV_counter\(6),
	dataf => \configurator|ALT_INV_counter\(4),
	combout => \configurator|counter[2]~0_combout\);

-- Location: FF_X14_Y59_N38
\configurator|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|Add3~9_sumout\,
	sclr => \configurator|counter[2]~0_combout\,
	sload => VCC,
	ena => \configurator|counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|counter\(0));

-- Location: LABCELL_X15_Y58_N33
\configurator|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add3~1_sumout\ = SUM(( \configurator|counter\(1) ) + ( GND ) + ( \configurator|Add3~10\ ))
-- \configurator|Add3~2\ = CARRY(( \configurator|counter\(1) ) + ( GND ) + ( \configurator|Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_counter\(1),
	cin => \configurator|Add3~10\,
	sumout => \configurator|Add3~1_sumout\,
	cout => \configurator|Add3~2\);

-- Location: FF_X14_Y59_N5
\configurator|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|Add3~1_sumout\,
	sclr => \configurator|counter[2]~0_combout\,
	sload => VCC,
	ena => \configurator|counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|counter\(1));

-- Location: LABCELL_X15_Y58_N36
\configurator|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add3~5_sumout\ = SUM(( \configurator|counter\(2) ) + ( GND ) + ( \configurator|Add3~2\ ))
-- \configurator|Add3~6\ = CARRY(( \configurator|counter\(2) ) + ( GND ) + ( \configurator|Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_counter\(2),
	cin => \configurator|Add3~2\,
	sumout => \configurator|Add3~5_sumout\,
	cout => \configurator|Add3~6\);

-- Location: FF_X14_Y59_N53
\configurator|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|Add3~5_sumout\,
	sclr => \configurator|counter[2]~0_combout\,
	sload => VCC,
	ena => \configurator|counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|counter\(2));

-- Location: LABCELL_X15_Y58_N39
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

-- Location: FF_X14_Y59_N32
\configurator|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|Add3~13_sumout\,
	sclr => \configurator|counter[2]~0_combout\,
	sload => VCC,
	ena => \configurator|counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|counter\(3));

-- Location: LABCELL_X15_Y58_N42
\configurator|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add3~21_sumout\ = SUM(( \configurator|counter\(4) ) + ( GND ) + ( \configurator|Add3~14\ ))
-- \configurator|Add3~22\ = CARRY(( \configurator|counter\(4) ) + ( GND ) + ( \configurator|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_counter\(4),
	cin => \configurator|Add3~14\,
	sumout => \configurator|Add3~21_sumout\,
	cout => \configurator|Add3~22\);

-- Location: FF_X14_Y59_N20
\configurator|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|Add3~21_sumout\,
	sclr => \configurator|counter[2]~0_combout\,
	sload => VCC,
	ena => \configurator|counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|counter\(4));

-- Location: FF_X14_Y59_N14
\configurator|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|Add3~17_sumout\,
	sclr => \configurator|counter[2]~0_combout\,
	sload => VCC,
	ena => \configurator|counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|counter\(5));

-- Location: LABCELL_X15_Y58_N6
\configurator|counter[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|counter[2]~2_combout\ = ( !\configurator|counter\(6) & ( (!\configurator|counter\(5)) # (!\configurator|counter\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010000000000000000011111010111110100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(5),
	datac => \configurator|ALT_INV_counter\(4),
	datae => \configurator|ALT_INV_counter\(6),
	combout => \configurator|counter[2]~2_combout\);

-- Location: LABCELL_X15_Y58_N0
\configurator|configOK~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|configOK~0_combout\ = ( \configurator|LessThan0~0_combout\ & ( \configurator|outputClock~q\ & ( ((!\configurator|counter[2]~2_combout\ & \configurator|LessThan1~1_combout\)) # (\configurator|configOK~reg0_q\) ) ) ) # ( 
-- !\configurator|LessThan0~0_combout\ & ( \configurator|outputClock~q\ & ( (!\configurator|counter[2]~2_combout\) # (\configurator|configOK~reg0_q\) ) ) ) # ( \configurator|LessThan0~0_combout\ & ( !\configurator|outputClock~q\ & ( 
-- \configurator|configOK~reg0_q\ ) ) ) # ( !\configurator|LessThan0~0_combout\ & ( !\configurator|outputClock~q\ & ( \configurator|configOK~reg0_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111011101110111010101110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_configOK~reg0_q\,
	datab => \configurator|ALT_INV_counter[2]~2_combout\,
	datac => \configurator|ALT_INV_LessThan1~1_combout\,
	datae => \configurator|ALT_INV_LessThan0~0_combout\,
	dataf => \configurator|ALT_INV_outputClock~q\,
	combout => \configurator|configOK~0_combout\);

-- Location: FF_X15_Y58_N5
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

-- Location: LABCELL_X15_Y57_N48
\configurator|needWait~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|needWait~0_combout\ = ( !\configurator|discarding~q\ & ( \configurator|outputClock~q\ & ( (!\configurator|LessThan0~0_combout\) # (\configurator|LessThan1~1_combout\) ) ) ) # ( !\configurator|discarding~q\ & ( !\configurator|outputClock~q\ & 
-- ( \configurator|needWait~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000011110000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_needWait~q\,
	datac => \configurator|ALT_INV_LessThan0~0_combout\,
	datad => \configurator|ALT_INV_LessThan1~1_combout\,
	datae => \configurator|ALT_INV_discarding~q\,
	dataf => \configurator|ALT_INV_outputClock~q\,
	combout => \configurator|needWait~0_combout\);

-- Location: FF_X15_Y57_N53
\configurator|needWait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|needWait~0_combout\,
	sclr => \ALT_INV_resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|needWait~q\);

-- Location: LABCELL_X17_Y57_N6
\configurator|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Selector1~0_combout\ = ( \writeconfig~input_o\ & ( \configurator|state.INTER~q\ & ( !\configurator|waitingDone~q\ ) ) ) # ( !\writeconfig~input_o\ & ( \configurator|state.INTER~q\ & ( (!\configurator|waitingDone~q\) # 
-- ((!\configurator|configOK~reg0_q\ & (\configurator|state.SEND~q\ & \configurator|needWait~q\))) ) ) ) # ( !\writeconfig~input_o\ & ( !\configurator|state.INTER~q\ & ( (!\configurator|configOK~reg0_q\ & (\configurator|state.SEND~q\ & 
-- \configurator|needWait~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000000010101010101011101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_waitingDone~q\,
	datab => \configurator|ALT_INV_configOK~reg0_q\,
	datac => \configurator|ALT_INV_state.SEND~q\,
	datad => \configurator|ALT_INV_needWait~q\,
	datae => \ALT_INV_writeconfig~input_o\,
	dataf => \configurator|ALT_INV_state.INTER~q\,
	combout => \configurator|Selector1~0_combout\);

-- Location: FF_X17_Y57_N8
\configurator|nextState.INTER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inputClock~inputCLKENA0_outclk\,
	d => \configurator|Selector1~0_combout\,
	sclr => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|nextState.INTER~q\);

-- Location: LABCELL_X17_Y57_N30
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

-- Location: FF_X17_Y57_N32
\configurator|state.INTER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \configurator|state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|state.INTER~q\);

-- Location: LABCELL_X15_Y57_N45
\configurator|waiting~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|waiting~0_combout\ = ( \resetn~input_o\ & ( \configurator|state.INTER~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_resetn~input_o\,
	dataf => \configurator|ALT_INV_state.INTER~q\,
	combout => \configurator|waiting~0_combout\);

-- Location: FF_X15_Y57_N47
\configurator|waiting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \configurator|waiting~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|waiting~q\);

-- Location: LABCELL_X15_Y57_N6
\configurator|discardBuffer~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|discardBuffer~0_combout\ = ( \configurator|discarding~q\ & ( !\configurator|discardBuffer~reg0_q\ & ( !\configurator|waiting~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_waiting~q\,
	datae => \configurator|ALT_INV_discarding~q\,
	dataf => \configurator|ALT_INV_discardBuffer~reg0_q\,
	combout => \configurator|discardBuffer~0_combout\);

-- Location: FF_X15_Y57_N26
\configurator|discardBuffer~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|discardBuffer~0_combout\,
	sclr => \ALT_INV_resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|discardBuffer~reg0_q\);

-- Location: LABCELL_X15_Y57_N15
\configurator|discarded~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|discarded~0_combout\ = ( !\configurator|waiting~q\ & ( \configurator|discardBuffer~reg0_q\ ) ) # ( !\configurator|waiting~q\ & ( !\configurator|discardBuffer~reg0_q\ & ( \configurator|discarded~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_discarded~q\,
	datae => \configurator|ALT_INV_waiting~q\,
	dataf => \configurator|ALT_INV_discardBuffer~reg0_q\,
	combout => \configurator|discarded~0_combout\);

-- Location: FF_X15_Y57_N35
\configurator|discarded\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|discarded~0_combout\,
	sclr => \ALT_INV_resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|discarded~q\);

-- Location: LABCELL_X17_Y57_N12
\configurator|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Selector0~0_combout\ = ( \writeconfig~input_o\ & ( \configurator|state.DISCARD~q\ & ( \configurator|discarded~q\ ) ) ) # ( !\writeconfig~input_o\ & ( \configurator|state.DISCARD~q\ & ( ((!\configurator|configOK~reg0_q\ & 
-- (\configurator|state.SEND~q\ & !\configurator|needWait~q\))) # (\configurator|discarded~q\) ) ) ) # ( !\writeconfig~input_o\ & ( !\configurator|state.DISCARD~q\ & ( (!\configurator|configOK~reg0_q\ & (\configurator|state.SEND~q\ & 
-- !\configurator|needWait~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000000000000000001011101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_discarded~q\,
	datab => \configurator|ALT_INV_configOK~reg0_q\,
	datac => \configurator|ALT_INV_state.SEND~q\,
	datad => \configurator|ALT_INV_needWait~q\,
	datae => \ALT_INV_writeconfig~input_o\,
	dataf => \configurator|ALT_INV_state.DISCARD~q\,
	combout => \configurator|Selector0~0_combout\);

-- Location: FF_X17_Y57_N14
\configurator|nextState.SEND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inputClock~inputCLKENA0_outclk\,
	d => \configurator|Selector0~0_combout\,
	sclr => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|nextState.SEND~q\);

-- Location: LABCELL_X17_Y57_N33
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

-- Location: FF_X17_Y57_N35
\configurator|state.SEND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \configurator|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|state.SEND~q\);

-- Location: LABCELL_X15_Y59_N51
\configurator|sendData~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|sendData~0_combout\ = ( \configurator|state.SEND~q\ & ( \resetn~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetn~input_o\,
	dataf => \configurator|ALT_INV_state.SEND~q\,
	combout => \configurator|sendData~0_combout\);

-- Location: FF_X15_Y59_N53
\configurator|outputClock\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \configurator|sendData~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|outputClock~q\);

-- Location: LABCELL_X15_Y57_N24
\configurator|SCLK~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|SCLK~0_combout\ = ( \resetn~input_o\ & ( \configurator|outputClock~q\ & ( \configurator|internalClock~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_internalClock~q\,
	datae => \ALT_INV_resetn~input_o\,
	dataf => \configurator|ALT_INV_outputClock~q\,
	combout => \configurator|SCLK~0_combout\);

-- Location: LABCELL_X17_Y57_N45
\configurator|SDENB~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|SDENB~0_combout\ = ( \configurator|state.DISCARD~q\ ) # ( !\configurator|state.DISCARD~q\ & ( \configurator|state.SEND~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_state.SEND~q\,
	dataf => \configurator|ALT_INV_state.DISCARD~q\,
	combout => \configurator|SDENB~0_combout\);

-- Location: FF_X17_Y57_N46
\configurator|SDENB~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \configurator|SDENB~0_combout\,
	sclr => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|SDENB~reg0_q\);

-- Location: MLABCELL_X50_Y60_N54
\innerDataClock~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \innerDataClock~0_combout\ = !\innerDataClock~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_innerDataClock~q\,
	combout => \innerDataClock~0_combout\);

-- Location: MLABCELL_X50_Y60_N27
\innerDataClock~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \innerDataClock~feeder_combout\ = \innerDataClock~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_innerDataClock~0_combout\,
	combout => \innerDataClock~feeder_combout\);

-- Location: MLABCELL_X50_Y60_N3
\clockDivideBuffer[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clockDivideBuffer[0]~0_combout\ = ( !clockDivideBuffer(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_clockDivideBuffer(0),
	combout => \clockDivideBuffer[0]~0_combout\);

-- Location: FF_X50_Y60_N5
\clockDivideBuffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \clockDivideBuffer[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockDivideBuffer(0));

-- Location: MLABCELL_X50_Y60_N30
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( clockDivideBuffer(1) ) + ( clockDivideBuffer(0) ) + ( !VCC ))
-- \Add0~18\ = CARRY(( clockDivideBuffer(1) ) + ( clockDivideBuffer(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_clockDivideBuffer(0),
	datad => ALT_INV_clockDivideBuffer(1),
	cin => GND,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X50_Y60_N32
\clockDivideBuffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockDivideBuffer(1));

-- Location: MLABCELL_X50_Y60_N33
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( clockDivideBuffer(2) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( clockDivideBuffer(2) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clockDivideBuffer(2),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X50_Y60_N35
\clockDivideBuffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockDivideBuffer(2));

-- Location: MLABCELL_X50_Y60_N36
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( clockDivideBuffer(3) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( clockDivideBuffer(3) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clockDivideBuffer(3),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X50_Y60_N38
\clockDivideBuffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockDivideBuffer(3));

-- Location: MLABCELL_X50_Y60_N39
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( clockDivideBuffer(4) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~2\ = CARRY(( clockDivideBuffer(4) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clockDivideBuffer(4),
	cin => \Add0~26\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X50_Y60_N41
\clockDivideBuffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockDivideBuffer(4));

-- Location: MLABCELL_X50_Y60_N42
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( clockDivideBuffer(5) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( clockDivideBuffer(5) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clockDivideBuffer(5),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X50_Y60_N43
\clockDivideBuffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockDivideBuffer(5));

-- Location: MLABCELL_X50_Y60_N45
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( clockDivideBuffer(6) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( clockDivideBuffer(6) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clockDivideBuffer(6),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X50_Y60_N46
\clockDivideBuffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockDivideBuffer(6));

-- Location: MLABCELL_X50_Y60_N48
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( clockDivideBuffer(7) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clockDivideBuffer(7),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\);

-- Location: FF_X50_Y60_N50
\clockDivideBuffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockDivideBuffer(7));

-- Location: MLABCELL_X50_Y60_N12
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !clockDivideBuffer(2) & ( (!clockDivideBuffer(0) & (!clockDivideBuffer(1) & !clockDivideBuffer(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clockDivideBuffer(0),
	datab => ALT_INV_clockDivideBuffer(1),
	datac => ALT_INV_clockDivideBuffer(3),
	dataf => ALT_INV_clockDivideBuffer(2),
	combout => \Equal0~0_combout\);

-- Location: MLABCELL_X50_Y60_N57
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( \Equal0~0_combout\ & ( (!clockDivideBuffer(5) & (!clockDivideBuffer(4) & (!clockDivideBuffer(7) & !clockDivideBuffer(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clockDivideBuffer(5),
	datab => ALT_INV_clockDivideBuffer(4),
	datac => ALT_INV_clockDivideBuffer(7),
	datad => ALT_INV_clockDivideBuffer(6),
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: FF_X50_Y60_N29
innerDataClock : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~input_o\,
	d => \innerDataClock~feeder_combout\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \innerDataClock~q\);

-- Location: LABCELL_X51_Y60_N0
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

-- Location: FF_X51_Y59_N16
\snythesizer|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	asdata => \snythesizer|Add0~9_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(29));

-- Location: LABCELL_X51_Y60_N3
\snythesizer|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~117_sumout\ = SUM(( \snythesizer|counter\(1) ) + ( GND ) + ( \snythesizer|Add0~2\ ))
-- \snythesizer|Add0~118\ = CARRY(( \snythesizer|counter\(1) ) + ( GND ) + ( \snythesizer|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_counter\(1),
	cin => \snythesizer|Add0~2\,
	sumout => \snythesizer|Add0~117_sumout\,
	cout => \snythesizer|Add0~118\);

-- Location: LABCELL_X51_Y60_N6
\snythesizer|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~121_sumout\ = SUM(( \snythesizer|counter\(2) ) + ( GND ) + ( \snythesizer|Add0~118\ ))
-- \snythesizer|Add0~122\ = CARRY(( \snythesizer|counter\(2) ) + ( GND ) + ( \snythesizer|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \snythesizer|ALT_INV_counter\(2),
	cin => \snythesizer|Add0~118\,
	sumout => \snythesizer|Add0~121_sumout\,
	cout => \snythesizer|Add0~122\);

-- Location: FF_X51_Y60_N8
\snythesizer|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \snythesizer|Add0~121_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(2));

-- Location: LABCELL_X51_Y60_N9
\snythesizer|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~125_sumout\ = SUM(( \snythesizer|counter[3]~DUPLICATE_q\ ) + ( GND ) + ( \snythesizer|Add0~122\ ))
-- \snythesizer|Add0~126\ = CARRY(( \snythesizer|counter[3]~DUPLICATE_q\ ) + ( GND ) + ( \snythesizer|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \snythesizer|ALT_INV_counter[3]~DUPLICATE_q\,
	cin => \snythesizer|Add0~122\,
	sumout => \snythesizer|Add0~125_sumout\,
	cout => \snythesizer|Add0~126\);

-- Location: FF_X51_Y60_N10
\snythesizer|counter[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \snythesizer|Add0~125_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter[3]~DUPLICATE_q\);

-- Location: LABCELL_X51_Y60_N12
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

-- Location: FF_X51_Y60_N14
\snythesizer|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \snythesizer|Add0~101_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(4));

-- Location: LABCELL_X51_Y60_N15
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

-- Location: FF_X51_Y60_N16
\snythesizer|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \snythesizer|Add0~105_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(5));

-- Location: LABCELL_X51_Y60_N18
\snythesizer|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~109_sumout\ = SUM(( \snythesizer|counter\(6) ) + ( GND ) + ( \snythesizer|Add0~106\ ))
-- \snythesizer|Add0~110\ = CARRY(( \snythesizer|counter\(6) ) + ( GND ) + ( \snythesizer|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \snythesizer|ALT_INV_counter\(6),
	cin => \snythesizer|Add0~106\,
	sumout => \snythesizer|Add0~109_sumout\,
	cout => \snythesizer|Add0~110\);

-- Location: FF_X51_Y60_N19
\snythesizer|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \snythesizer|Add0~109_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(6));

-- Location: LABCELL_X51_Y60_N21
\snythesizer|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~113_sumout\ = SUM(( \snythesizer|counter\(7) ) + ( GND ) + ( \snythesizer|Add0~110\ ))
-- \snythesizer|Add0~114\ = CARRY(( \snythesizer|counter\(7) ) + ( GND ) + ( \snythesizer|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_counter\(7),
	cin => \snythesizer|Add0~110\,
	sumout => \snythesizer|Add0~113_sumout\,
	cout => \snythesizer|Add0~114\);

-- Location: FF_X51_Y60_N23
\snythesizer|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \snythesizer|Add0~113_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(7));

-- Location: LABCELL_X51_Y60_N24
\snythesizer|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~81_sumout\ = SUM(( \snythesizer|counter\(8) ) + ( GND ) + ( \snythesizer|Add0~114\ ))
-- \snythesizer|Add0~82\ = CARRY(( \snythesizer|counter\(8) ) + ( GND ) + ( \snythesizer|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \snythesizer|ALT_INV_counter\(8),
	cin => \snythesizer|Add0~114\,
	sumout => \snythesizer|Add0~81_sumout\,
	cout => \snythesizer|Add0~82\);

-- Location: FF_X51_Y60_N25
\snythesizer|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \snythesizer|Add0~81_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(8));

-- Location: LABCELL_X51_Y60_N27
\snythesizer|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~85_sumout\ = SUM(( \snythesizer|counter\(9) ) + ( GND ) + ( \snythesizer|Add0~82\ ))
-- \snythesizer|Add0~86\ = CARRY(( \snythesizer|counter\(9) ) + ( GND ) + ( \snythesizer|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_counter\(9),
	cin => \snythesizer|Add0~82\,
	sumout => \snythesizer|Add0~85_sumout\,
	cout => \snythesizer|Add0~86\);

-- Location: FF_X51_Y60_N29
\snythesizer|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \snythesizer|Add0~85_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(9));

-- Location: LABCELL_X51_Y60_N30
\snythesizer|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~41_sumout\ = SUM(( \snythesizer|counter\(10) ) + ( GND ) + ( \snythesizer|Add0~86\ ))
-- \snythesizer|Add0~42\ = CARRY(( \snythesizer|counter\(10) ) + ( GND ) + ( \snythesizer|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \snythesizer|ALT_INV_counter\(10),
	cin => \snythesizer|Add0~86\,
	sumout => \snythesizer|Add0~41_sumout\,
	cout => \snythesizer|Add0~42\);

-- Location: FF_X51_Y60_N32
\snythesizer|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \snythesizer|Add0~41_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(10));

-- Location: LABCELL_X51_Y60_N33
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

-- Location: FF_X51_Y60_N35
\snythesizer|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \snythesizer|Add0~45_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(11));

-- Location: LABCELL_X51_Y60_N36
\snythesizer|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~49_sumout\ = SUM(( \snythesizer|counter\(12) ) + ( GND ) + ( \snythesizer|Add0~46\ ))
-- \snythesizer|Add0~50\ = CARRY(( \snythesizer|counter\(12) ) + ( GND ) + ( \snythesizer|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_counter\(12),
	cin => \snythesizer|Add0~46\,
	sumout => \snythesizer|Add0~49_sumout\,
	cout => \snythesizer|Add0~50\);

-- Location: FF_X51_Y60_N38
\snythesizer|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \snythesizer|Add0~49_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(12));

-- Location: LABCELL_X51_Y60_N39
\snythesizer|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~53_sumout\ = SUM(( \snythesizer|counter\(13) ) + ( GND ) + ( \snythesizer|Add0~50\ ))
-- \snythesizer|Add0~54\ = CARRY(( \snythesizer|counter\(13) ) + ( GND ) + ( \snythesizer|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \snythesizer|ALT_INV_counter\(13),
	cin => \snythesizer|Add0~50\,
	sumout => \snythesizer|Add0~53_sumout\,
	cout => \snythesizer|Add0~54\);

-- Location: FF_X51_Y60_N41
\snythesizer|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \snythesizer|Add0~53_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(13));

-- Location: LABCELL_X51_Y60_N42
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

-- Location: FF_X51_Y60_N43
\snythesizer|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \snythesizer|Add0~57_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(14));

-- Location: LABCELL_X51_Y60_N45
\snythesizer|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~89_sumout\ = SUM(( \snythesizer|counter\(15) ) + ( GND ) + ( \snythesizer|Add0~58\ ))
-- \snythesizer|Add0~90\ = CARRY(( \snythesizer|counter\(15) ) + ( GND ) + ( \snythesizer|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \snythesizer|ALT_INV_counter\(15),
	cin => \snythesizer|Add0~58\,
	sumout => \snythesizer|Add0~89_sumout\,
	cout => \snythesizer|Add0~90\);

-- Location: FF_X51_Y60_N47
\snythesizer|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \snythesizer|Add0~89_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(15));

-- Location: LABCELL_X51_Y60_N48
\snythesizer|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~93_sumout\ = SUM(( \snythesizer|counter\(16) ) + ( GND ) + ( \snythesizer|Add0~90\ ))
-- \snythesizer|Add0~94\ = CARRY(( \snythesizer|counter\(16) ) + ( GND ) + ( \snythesizer|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \snythesizer|ALT_INV_counter\(16),
	cin => \snythesizer|Add0~90\,
	sumout => \snythesizer|Add0~93_sumout\,
	cout => \snythesizer|Add0~94\);

-- Location: FF_X51_Y60_N49
\snythesizer|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \snythesizer|Add0~93_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(16));

-- Location: LABCELL_X51_Y60_N51
\snythesizer|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~97_sumout\ = SUM(( \snythesizer|counter\(17) ) + ( GND ) + ( \snythesizer|Add0~94\ ))
-- \snythesizer|Add0~98\ = CARRY(( \snythesizer|counter\(17) ) + ( GND ) + ( \snythesizer|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_counter\(17),
	cin => \snythesizer|Add0~94\,
	sumout => \snythesizer|Add0~97_sumout\,
	cout => \snythesizer|Add0~98\);

-- Location: FF_X51_Y60_N53
\snythesizer|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \snythesizer|Add0~97_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(17));

-- Location: LABCELL_X51_Y60_N54
\snythesizer|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~61_sumout\ = SUM(( \snythesizer|counter\(18) ) + ( GND ) + ( \snythesizer|Add0~98\ ))
-- \snythesizer|Add0~62\ = CARRY(( \snythesizer|counter\(18) ) + ( GND ) + ( \snythesizer|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_counter\(18),
	cin => \snythesizer|Add0~98\,
	sumout => \snythesizer|Add0~61_sumout\,
	cout => \snythesizer|Add0~62\);

-- Location: FF_X51_Y60_N56
\snythesizer|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \snythesizer|Add0~61_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(18));

-- Location: LABCELL_X51_Y60_N57
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

-- Location: FF_X51_Y60_N59
\snythesizer|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \snythesizer|Add0~21_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(19));

-- Location: LABCELL_X51_Y59_N0
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

-- Location: FF_X51_Y59_N56
\snythesizer|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	asdata => \snythesizer|Add0~65_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(20));

-- Location: LABCELL_X51_Y59_N3
\snythesizer|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~25_sumout\ = SUM(( \snythesizer|counter\(21) ) + ( GND ) + ( \snythesizer|Add0~66\ ))
-- \snythesizer|Add0~26\ = CARRY(( \snythesizer|counter\(21) ) + ( GND ) + ( \snythesizer|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_counter\(21),
	cin => \snythesizer|Add0~66\,
	sumout => \snythesizer|Add0~25_sumout\,
	cout => \snythesizer|Add0~26\);

-- Location: FF_X51_Y59_N50
\snythesizer|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	asdata => \snythesizer|Add0~25_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(21));

-- Location: LABCELL_X51_Y59_N6
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

-- Location: FF_X51_Y59_N38
\snythesizer|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	asdata => \snythesizer|Add0~29_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(22));

-- Location: LABCELL_X51_Y59_N9
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

-- Location: FF_X51_Y59_N47
\snythesizer|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	asdata => \snythesizer|Add0~33_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(23));

-- Location: LABCELL_X51_Y59_N12
\snythesizer|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~37_sumout\ = SUM(( \snythesizer|counter\(24) ) + ( GND ) + ( \snythesizer|Add0~34\ ))
-- \snythesizer|Add0~38\ = CARRY(( \snythesizer|counter\(24) ) + ( GND ) + ( \snythesizer|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \snythesizer|ALT_INV_counter\(24),
	cin => \snythesizer|Add0~34\,
	sumout => \snythesizer|Add0~37_sumout\,
	cout => \snythesizer|Add0~38\);

-- Location: FF_X51_Y59_N58
\snythesizer|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	asdata => \snythesizer|Add0~37_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(24));

-- Location: LABCELL_X51_Y59_N15
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

-- Location: FF_X51_Y59_N52
\snythesizer|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	asdata => \snythesizer|Add0~69_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(25));

-- Location: LABCELL_X51_Y59_N18
\snythesizer|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~73_sumout\ = SUM(( \snythesizer|counter\(26) ) + ( GND ) + ( \snythesizer|Add0~70\ ))
-- \snythesizer|Add0~74\ = CARRY(( \snythesizer|counter\(26) ) + ( GND ) + ( \snythesizer|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \snythesizer|ALT_INV_counter\(26),
	cin => \snythesizer|Add0~70\,
	sumout => \snythesizer|Add0~73_sumout\,
	cout => \snythesizer|Add0~74\);

-- Location: FF_X51_Y59_N40
\snythesizer|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	asdata => \snythesizer|Add0~73_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(26));

-- Location: LABCELL_X51_Y59_N21
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

-- Location: FF_X51_Y59_N43
\snythesizer|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	asdata => \snythesizer|Add0~77_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(27));

-- Location: LABCELL_X51_Y59_N24
\snythesizer|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~5_sumout\ = SUM(( \snythesizer|counter\(28) ) + ( GND ) + ( \snythesizer|Add0~78\ ))
-- \snythesizer|Add0~6\ = CARRY(( \snythesizer|counter\(28) ) + ( GND ) + ( \snythesizer|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \snythesizer|ALT_INV_counter\(28),
	cin => \snythesizer|Add0~78\,
	sumout => \snythesizer|Add0~5_sumout\,
	cout => \snythesizer|Add0~6\);

-- Location: FF_X51_Y59_N23
\snythesizer|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	asdata => \snythesizer|Add0~5_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(28));

-- Location: LABCELL_X51_Y59_N27
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

-- Location: FF_X51_Y59_N29
\snythesizer|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	asdata => \snythesizer|Add0~13_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(30));

-- Location: LABCELL_X51_Y59_N30
\snythesizer|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Add0~13_sumout\ = SUM(( \snythesizer|counter\(30) ) + ( GND ) + ( \snythesizer|Add0~10\ ))
-- \snythesizer|Add0~14\ = CARRY(( \snythesizer|counter\(30) ) + ( GND ) + ( \snythesizer|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \snythesizer|ALT_INV_counter\(30),
	cin => \snythesizer|Add0~10\,
	sumout => \snythesizer|Add0~13_sumout\,
	cout => \snythesizer|Add0~14\);

-- Location: FF_X51_Y59_N34
\snythesizer|counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \snythesizer|Add0~17_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(31));

-- Location: LABCELL_X51_Y59_N33
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

-- Location: MLABCELL_X50_Y60_N9
\snythesizer|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|LessThan0~0_combout\ = ( !\snythesizer|Add0~57_sumout\ & ( !\snythesizer|Add0~53_sumout\ & ( (!\snythesizer|Add0~41_sumout\ & (!\snythesizer|Add0~49_sumout\ & !\snythesizer|Add0~45_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_Add0~41_sumout\,
	datac => \snythesizer|ALT_INV_Add0~49_sumout\,
	datad => \snythesizer|ALT_INV_Add0~45_sumout\,
	datae => \snythesizer|ALT_INV_Add0~57_sumout\,
	dataf => \snythesizer|ALT_INV_Add0~53_sumout\,
	combout => \snythesizer|LessThan0~0_combout\);

-- Location: LABCELL_X51_Y59_N57
\snythesizer|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|LessThan0~1_combout\ = ( !\snythesizer|Add0~21_sumout\ & ( \snythesizer|LessThan0~0_combout\ & ( (!\snythesizer|Add0~25_sumout\ & (!\snythesizer|Add0~37_sumout\ & (!\snythesizer|Add0~33_sumout\ & !\snythesizer|Add0~29_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_Add0~25_sumout\,
	datab => \snythesizer|ALT_INV_Add0~37_sumout\,
	datac => \snythesizer|ALT_INV_Add0~33_sumout\,
	datad => \snythesizer|ALT_INV_Add0~29_sumout\,
	datae => \snythesizer|ALT_INV_Add0~21_sumout\,
	dataf => \snythesizer|ALT_INV_LessThan0~0_combout\,
	combout => \snythesizer|LessThan0~1_combout\);

-- Location: MLABCELL_X50_Y60_N18
\snythesizer|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|LessThan0~4_combout\ = ( !\snythesizer|Add0~85_sumout\ & ( !\snythesizer|Add0~81_sumout\ & ( (!\snythesizer|Add0~113_sumout\ & (!\snythesizer|Add0~109_sumout\ & (!\snythesizer|Add0~105_sumout\ & !\snythesizer|Add0~101_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_Add0~113_sumout\,
	datab => \snythesizer|ALT_INV_Add0~109_sumout\,
	datac => \snythesizer|ALT_INV_Add0~105_sumout\,
	datad => \snythesizer|ALT_INV_Add0~101_sumout\,
	datae => \snythesizer|ALT_INV_Add0~85_sumout\,
	dataf => \snythesizer|ALT_INV_Add0~81_sumout\,
	combout => \snythesizer|LessThan0~4_combout\);

-- Location: LABCELL_X51_Y59_N42
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

-- Location: LABCELL_X51_Y59_N51
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

-- Location: LABCELL_X51_Y59_N39
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

-- Location: FF_X51_Y60_N1
\snythesizer|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \snythesizer|Add0~1_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(0));

-- Location: FF_X51_Y60_N5
\snythesizer|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \snythesizer|Add0~117_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(1));

-- Location: FF_X51_Y60_N2
\snythesizer|counter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \snythesizer|Add0~1_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter[0]~DUPLICATE_q\);

-- Location: FF_X51_Y60_N11
\snythesizer|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \snythesizer|Add0~125_sumout\,
	sclr => \snythesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|counter\(3));

-- Location: LABCELL_X49_Y60_N27
\snythesizer|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Mux11~0_combout\ = (!\snythesizer|counter\(1) & (((!\snythesizer|counter\(2))) # (\snythesizer|counter[0]~DUPLICATE_q\))) # (\snythesizer|counter\(1) & (((\snythesizer|counter[0]~DUPLICATE_q\ & !\snythesizer|counter\(3))) # 
-- (\snythesizer|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101001110111101110100111011110111010011101111011101001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_counter\(1),
	datab => \snythesizer|ALT_INV_counter[0]~DUPLICATE_q\,
	datac => \snythesizer|ALT_INV_counter\(3),
	datad => \snythesizer|ALT_INV_counter\(2),
	combout => \snythesizer|Mux11~0_combout\);

-- Location: FF_X49_Y60_N29
\snythesizer|output_p[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \snythesizer|Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output_p\(0));

-- Location: LABCELL_X49_Y60_N21
\snythesizer|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Mux10~0_combout\ = (!\snythesizer|counter\(1) & (!\snythesizer|counter[0]~DUPLICATE_q\ & ((!\snythesizer|counter\(2)) # (\snythesizer|counter\(3))))) # (\snythesizer|counter\(1) & ((!\snythesizer|counter[0]~DUPLICATE_q\ $ 
-- (!\snythesizer|counter\(3))) # (\snythesizer|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001110001011101100111000101110110011100010111011001110001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_counter\(1),
	datab => \snythesizer|ALT_INV_counter[0]~DUPLICATE_q\,
	datac => \snythesizer|ALT_INV_counter\(3),
	datad => \snythesizer|ALT_INV_counter\(2),
	combout => \snythesizer|Mux10~0_combout\);

-- Location: FF_X49_Y60_N22
\snythesizer|output_p[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \snythesizer|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output_p\(1));

-- Location: LABCELL_X49_Y60_N48
\snythesizer|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Mux9~0_combout\ = (!\snythesizer|counter\(1) & (\snythesizer|counter\(3) & ((\snythesizer|counter\(2)) # (\snythesizer|counter[0]~DUPLICATE_q\)))) # (\snythesizer|counter\(1) & (!\snythesizer|counter[0]~DUPLICATE_q\ $ 
-- (((!\snythesizer|counter\(3)) # (\snythesizer|counter\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011000011011000101100001101100010110000110110001011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_counter\(1),
	datab => \snythesizer|ALT_INV_counter[0]~DUPLICATE_q\,
	datac => \snythesizer|ALT_INV_counter\(3),
	datad => \snythesizer|ALT_INV_counter\(2),
	combout => \snythesizer|Mux9~0_combout\);

-- Location: FF_X49_Y60_N49
\snythesizer|output_p[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \snythesizer|Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output_p\(2));

-- Location: LABCELL_X49_Y60_N39
\snythesizer|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Mux8~0_combout\ = ( \snythesizer|counter\(3) & ( (!\snythesizer|counter\(1) & ((\snythesizer|counter\(2)) # (\snythesizer|counter[0]~DUPLICATE_q\))) # (\snythesizer|counter\(1) & (!\snythesizer|counter[0]~DUPLICATE_q\ $ 
-- (\snythesizer|counter\(2)))) ) ) # ( !\snythesizer|counter\(3) & ( !\snythesizer|counter\(1) $ (((\snythesizer|counter\(2)) # (\snythesizer|counter[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100101010101100110010101010101100110101110110110011010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_counter\(1),
	datab => \snythesizer|ALT_INV_counter[0]~DUPLICATE_q\,
	datad => \snythesizer|ALT_INV_counter\(2),
	dataf => \snythesizer|ALT_INV_counter\(3),
	combout => \snythesizer|Mux8~0_combout\);

-- Location: FF_X49_Y60_N19
\snythesizer|output_p[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	asdata => \snythesizer|Mux8~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output_p\(3));

-- Location: FF_X49_Y60_N25
\snythesizer|output_p[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	asdata => \snythesizer|Mux8~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output_p\(4));

-- Location: FF_X49_Y60_N7
\snythesizer|output_p[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	asdata => \snythesizer|Mux8~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output_p\(5));

-- Location: LABCELL_X49_Y60_N9
\snythesizer|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Mux2~0_combout\ = (!\snythesizer|counter\(1) & (!\snythesizer|counter[0]~DUPLICATE_q\ $ ((\snythesizer|counter\(3))))) # (\snythesizer|counter\(1) & ((!\snythesizer|counter\(3)) # ((\snythesizer|counter[0]~DUPLICATE_q\ & 
-- \snythesizer|counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101001011010011110100101101001111010010110100111101001011010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_counter\(1),
	datab => \snythesizer|ALT_INV_counter[0]~DUPLICATE_q\,
	datac => \snythesizer|ALT_INV_counter\(3),
	datad => \snythesizer|ALT_INV_counter\(2),
	combout => \snythesizer|Mux2~0_combout\);

-- Location: LABCELL_X49_Y60_N12
\snythesizer|output_p[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|output_p[6]~feeder_combout\ = ( \snythesizer|Mux2~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \snythesizer|ALT_INV_Mux2~0_combout\,
	combout => \snythesizer|output_p[6]~feeder_combout\);

-- Location: FF_X49_Y60_N13
\snythesizer|output_p[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \snythesizer|output_p[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output_p\(6));

-- Location: LABCELL_X49_Y60_N51
\snythesizer|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Mux7~0_combout\ = (!\snythesizer|counter[0]~DUPLICATE_q\ & (!\snythesizer|counter\(1) $ (!\snythesizer|counter\(3) $ (!\snythesizer|counter\(2))))) # (\snythesizer|counter[0]~DUPLICATE_q\ & ((!\snythesizer|counter\(3)) # 
-- ((\snythesizer|counter\(1) & \snythesizer|counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011010001111001101101000111100110110100011110011011010001111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_counter\(1),
	datab => \snythesizer|ALT_INV_counter[0]~DUPLICATE_q\,
	datac => \snythesizer|ALT_INV_counter\(3),
	datad => \snythesizer|ALT_INV_counter\(2),
	combout => \snythesizer|Mux7~0_combout\);

-- Location: FF_X49_Y60_N52
\snythesizer|output_p[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \snythesizer|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output_p\(7));

-- Location: LABCELL_X49_Y60_N54
\snythesizer|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Mux6~0_combout\ = (!\snythesizer|counter\(1) & (((\snythesizer|counter\(3))))) # (\snythesizer|counter\(1) & ((!\snythesizer|counter[0]~DUPLICATE_q\ & (\snythesizer|counter\(3))) # (\snythesizer|counter[0]~DUPLICATE_q\ & 
-- ((!\snythesizer|counter\(3)) # (\snythesizer|counter\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000011111000111100001111100011110000111110001111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_counter\(1),
	datab => \snythesizer|ALT_INV_counter[0]~DUPLICATE_q\,
	datac => \snythesizer|ALT_INV_counter\(3),
	datad => \snythesizer|ALT_INV_counter\(2),
	combout => \snythesizer|Mux6~0_combout\);

-- Location: FF_X49_Y60_N56
\snythesizer|output_p[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \snythesizer|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output_p\(8));

-- Location: LABCELL_X49_Y60_N36
\snythesizer|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Mux1~0_combout\ = (!\snythesizer|counter[0]~DUPLICATE_q\ & (!\snythesizer|counter\(1) $ (!\snythesizer|counter\(3) $ (\snythesizer|counter\(2))))) # (\snythesizer|counter[0]~DUPLICATE_q\ & ((!\snythesizer|counter\(3)) # 
-- ((\snythesizer|counter\(1) & \snythesizer|counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100010110101011110001011010101111000101101010111100010110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_counter\(1),
	datab => \snythesizer|ALT_INV_counter[0]~DUPLICATE_q\,
	datac => \snythesizer|ALT_INV_counter\(3),
	datad => \snythesizer|ALT_INV_counter\(2),
	combout => \snythesizer|Mux1~0_combout\);

-- Location: FF_X49_Y60_N5
\snythesizer|output_p[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	asdata => \snythesizer|Mux1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output_p\(9));

-- Location: LABCELL_X49_Y60_N57
\snythesizer|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Mux5~0_combout\ = (!\snythesizer|counter\(1) & (!\snythesizer|counter\(3) $ (((!\snythesizer|counter\(2)) # (\snythesizer|counter[0]~DUPLICATE_q\))))) # (\snythesizer|counter\(1) & ((!\snythesizer|counter\(3) & ((!\snythesizer|counter\(2)) # 
-- (\snythesizer|counter[0]~DUPLICATE_q\))) # (\snythesizer|counter\(3) & ((\snythesizer|counter\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010010111010110101001011101011010100101110101101010010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_counter\(1),
	datab => \snythesizer|ALT_INV_counter[0]~DUPLICATE_q\,
	datac => \snythesizer|ALT_INV_counter\(3),
	datad => \snythesizer|ALT_INV_counter\(2),
	combout => \snythesizer|Mux5~0_combout\);

-- Location: FF_X49_Y60_N59
\snythesizer|output_p[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \snythesizer|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output_p\(10));

-- Location: LABCELL_X49_Y60_N42
\snythesizer|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Mux4~0_combout\ = (!\snythesizer|counter[0]~DUPLICATE_q\ & (((\snythesizer|counter\(3))))) # (\snythesizer|counter[0]~DUPLICATE_q\ & ((!\snythesizer|counter\(3)) # ((\snythesizer|counter\(1) & \snythesizer|counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111101001111000011110100111100001111010011110000111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_counter\(1),
	datab => \snythesizer|ALT_INV_counter[0]~DUPLICATE_q\,
	datac => \snythesizer|ALT_INV_counter\(3),
	datad => \snythesizer|ALT_INV_counter\(2),
	combout => \snythesizer|Mux4~0_combout\);

-- Location: FF_X49_Y60_N43
\snythesizer|output_p[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \snythesizer|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output_p\(11));

-- Location: LABCELL_X49_Y60_N45
\snythesizer|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Mux3~0_combout\ = (!\snythesizer|counter\(3)) # ((\snythesizer|counter\(1) & (\snythesizer|counter[0]~DUPLICATE_q\ & \snythesizer|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110001111100001111000111110000111100011111000011110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_counter\(1),
	datab => \snythesizer|ALT_INV_counter[0]~DUPLICATE_q\,
	datac => \snythesizer|ALT_INV_counter\(3),
	datad => \snythesizer|ALT_INV_counter\(2),
	combout => \snythesizer|Mux3~0_combout\);

-- Location: FF_X49_Y60_N46
\snythesizer|output_p[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \snythesizer|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output_p\(12));

-- Location: FF_X49_Y60_N10
\snythesizer|output_p[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \snythesizer|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output_p\(13));

-- Location: FF_X49_Y60_N38
\snythesizer|output_p[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \snythesizer|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output_p\(14));

-- Location: LABCELL_X49_Y60_N30
\snythesizer|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \snythesizer|Mux0~0_combout\ = (!\snythesizer|counter\(3) & ((!\snythesizer|counter\(1)) # ((!\snythesizer|counter[0]~DUPLICATE_q\) # (!\snythesizer|counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111000000000111111100000000011111110000000001111111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \snythesizer|ALT_INV_counter\(1),
	datab => \snythesizer|ALT_INV_counter[0]~DUPLICATE_q\,
	datac => \snythesizer|ALT_INV_counter\(2),
	datad => \snythesizer|ALT_INV_counter\(3),
	combout => \snythesizer|Mux0~0_combout\);

-- Location: FF_X49_Y60_N31
\snythesizer|output_p[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \snythesizer|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \snythesizer|output_p\(15));

-- Location: MLABCELL_X50_Y60_N15
\parallelDataClk_p~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \parallelDataClk_p~0_combout\ = ( !\innerDataClock~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_innerDataClock~q\,
	combout => \parallelDataClk_p~0_combout\);

-- Location: FF_X50_Y60_N16
\parallelDataClk_p~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \parallelDataClk_p~0_combout\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \parallelDataClk_p~reg0_q\);

-- Location: MLABCELL_X14_Y59_N42
\configurator|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|LessThan1~0_combout\ = ( \configurator|dataIndex\(2) & ( (!\configurator|dataIndex\(3) & ((!\configurator|dataIndex\(0)) # (!\configurator|dataIndex\(1)))) ) ) # ( !\configurator|dataIndex\(2) & ( !\configurator|dataIndex\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111100000000001111110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_dataIndex\(0),
	datac => \configurator|ALT_INV_dataIndex\(1),
	datad => \configurator|ALT_INV_dataIndex\(3),
	dataf => \configurator|ALT_INV_dataIndex\(2),
	combout => \configurator|LessThan1~0_combout\);

-- Location: LABCELL_X15_Y59_N0
\configurator|SDIO~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|SDIO~0_combout\ = ( \configurator|LessThan1~0_combout\ & ( \configurator|outputClock~q\ & ( (\configurator|dataIndex\(4) & \configurator|LessThan0~0_combout\) ) ) ) # ( !\configurator|LessThan1~0_combout\ & ( \configurator|outputClock~q\ & ( 
-- (!\configurator|dataIndex\(4) & \configurator|LessThan0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_dataIndex\(4),
	datad => \configurator|ALT_INV_LessThan0~0_combout\,
	datae => \configurator|ALT_INV_LessThan1~0_combout\,
	dataf => \configurator|ALT_INV_outputClock~q\,
	combout => \configurator|SDIO~0_combout\);

-- Location: LABCELL_X13_Y59_N33
\configurator|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~2_combout\ = ( !\configurator|dataIndex\(1) & ( \configurator|dataIndex\(2) & ( (!\configurator|dataIndex\(0) & (\configurator|dataIndex\(3) & \configurator|counter\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_dataIndex\(0),
	datac => \configurator|ALT_INV_dataIndex\(3),
	datad => \configurator|ALT_INV_counter\(2),
	datae => \configurator|ALT_INV_dataIndex\(1),
	dataf => \configurator|ALT_INV_dataIndex\(2),
	combout => \configurator|Mux1~2_combout\);

-- Location: LABCELL_X13_Y59_N48
\configurator|Mux1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~3_combout\ = ( \configurator|counter\(1) & ( \configurator|counter\(2) & ( (!\configurator|dataIndex\(1) & (\configurator|dataIndex\(2) & (!\configurator|dataIndex\(0) & \configurator|dataIndex\(3)))) ) ) ) # ( 
-- !\configurator|counter\(1) & ( \configurator|counter\(2) & ( (!\configurator|dataIndex\(1) & (\configurator|dataIndex\(2) & (!\configurator|dataIndex\(0) & \configurator|dataIndex\(3)))) ) ) ) # ( !\configurator|counter\(1) & ( !\configurator|counter\(2) 
-- & ( (\configurator|dataIndex\(1) & (\configurator|dataIndex\(2) & (\configurator|dataIndex\(0) & !\configurator|dataIndex\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(1),
	datab => \configurator|ALT_INV_dataIndex\(2),
	datac => \configurator|ALT_INV_dataIndex\(0),
	datad => \configurator|ALT_INV_dataIndex\(3),
	datae => \configurator|ALT_INV_counter\(1),
	dataf => \configurator|ALT_INV_counter\(2),
	combout => \configurator|Mux1~3_combout\);

-- Location: LABCELL_X13_Y59_N21
\configurator|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~0_combout\ = ( \configurator|counter\(1) & ( \configurator|dataIndex\(0) & ( (!\configurator|dataIndex\(1) & (!\configurator|dataIndex\(2) & (\configurator|dataIndex\(3) & !\configurator|counter\(2)))) ) ) ) # ( 
-- !\configurator|counter\(1) & ( \configurator|dataIndex\(0) & ( (\configurator|dataIndex\(1) & (!\configurator|counter\(2) & (!\configurator|dataIndex\(2) $ (\configurator|dataIndex\(3))))) ) ) ) # ( \configurator|counter\(1) & ( 
-- !\configurator|dataIndex\(0) & ( (!\configurator|dataIndex\(2) & (\configurator|dataIndex\(3) & !\configurator|counter\(2))) ) ) ) # ( !\configurator|counter\(1) & ( !\configurator|dataIndex\(0) & ( (!\configurator|counter\(2) & 
-- ((!\configurator|dataIndex\(1) & (\configurator|dataIndex\(2))) # (\configurator|dataIndex\(1) & (!\configurator|dataIndex\(2) & !\configurator|dataIndex\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001000000000000011000000000001000001000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(1),
	datab => \configurator|ALT_INV_dataIndex\(2),
	datac => \configurator|ALT_INV_dataIndex\(3),
	datad => \configurator|ALT_INV_counter\(2),
	datae => \configurator|ALT_INV_counter\(1),
	dataf => \configurator|ALT_INV_dataIndex\(0),
	combout => \configurator|Mux1~0_combout\);

-- Location: LABCELL_X13_Y59_N12
\configurator|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~1_combout\ = ( \configurator|counter\(1) & ( \configurator|dataIndex\(0) & ( ((!\configurator|dataIndex\(1) & (!\configurator|dataIndex\(2) & \configurator|dataIndex\(3))) # (\configurator|dataIndex\(1) & (\configurator|dataIndex\(2) & 
-- !\configurator|dataIndex\(3)))) # (\configurator|counter\(2)) ) ) ) # ( !\configurator|counter\(1) & ( \configurator|dataIndex\(0) & ( (!\configurator|counter\(2) & (!\configurator|dataIndex\(3) & (!\configurator|dataIndex\(1) $ 
-- (!\configurator|dataIndex\(2))))) ) ) ) # ( \configurator|counter\(1) & ( !\configurator|dataIndex\(0) & ( ((!\configurator|dataIndex\(2) & \configurator|dataIndex\(3))) # (\configurator|counter\(2)) ) ) ) # ( !\configurator|counter\(1) & ( 
-- !\configurator|dataIndex\(0) & ( (!\configurator|dataIndex\(1) & (\configurator|dataIndex\(2) & !\configurator|counter\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000000011111100111101100000000000000001111110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(1),
	datab => \configurator|ALT_INV_dataIndex\(2),
	datac => \configurator|ALT_INV_counter\(2),
	datad => \configurator|ALT_INV_dataIndex\(3),
	datae => \configurator|ALT_INV_counter\(1),
	dataf => \configurator|ALT_INV_dataIndex\(0),
	combout => \configurator|Mux1~1_combout\);

-- Location: LABCELL_X13_Y59_N42
\configurator|Mux1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~4_combout\ = ( \configurator|Mux1~0_combout\ & ( \configurator|Mux1~1_combout\ & ( (!\configurator|counter\(3)) # ((!\configurator|counter\(0) & (\configurator|Mux1~2_combout\)) # (\configurator|counter\(0) & 
-- ((\configurator|Mux1~3_combout\)))) ) ) ) # ( !\configurator|Mux1~0_combout\ & ( \configurator|Mux1~1_combout\ & ( (!\configurator|counter\(3) & (\configurator|counter\(0))) # (\configurator|counter\(3) & ((!\configurator|counter\(0) & 
-- (\configurator|Mux1~2_combout\)) # (\configurator|counter\(0) & ((\configurator|Mux1~3_combout\))))) ) ) ) # ( \configurator|Mux1~0_combout\ & ( !\configurator|Mux1~1_combout\ & ( (!\configurator|counter\(3) & (!\configurator|counter\(0))) # 
-- (\configurator|counter\(3) & ((!\configurator|counter\(0) & (\configurator|Mux1~2_combout\)) # (\configurator|counter\(0) & ((\configurator|Mux1~3_combout\))))) ) ) ) # ( !\configurator|Mux1~0_combout\ & ( !\configurator|Mux1~1_combout\ & ( 
-- (\configurator|counter\(3) & ((!\configurator|counter\(0) & (\configurator|Mux1~2_combout\)) # (\configurator|counter\(0) & ((\configurator|Mux1~3_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101100011001001110100100110001101111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(3),
	datab => \configurator|ALT_INV_counter\(0),
	datac => \configurator|ALT_INV_Mux1~2_combout\,
	datad => \configurator|ALT_INV_Mux1~3_combout\,
	datae => \configurator|ALT_INV_Mux1~0_combout\,
	dataf => \configurator|ALT_INV_Mux1~1_combout\,
	combout => \configurator|Mux1~4_combout\);

-- Location: MLABCELL_X14_Y59_N51
\configurator|Mux1~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~11_combout\ = ( !\configurator|counter\(1) & ( (!\configurator|counter\(0) & (!\configurator|counter\(3) & !\configurator|counter\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(0),
	datac => \configurator|ALT_INV_counter\(3),
	datad => \configurator|ALT_INV_counter\(2),
	dataf => \configurator|ALT_INV_counter\(1),
	combout => \configurator|Mux1~11_combout\);

-- Location: LABCELL_X13_Y59_N54
\configurator|Mux1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~13_combout\ = ( \configurator|counter\(1) & ( \configurator|counter\(2) & ( (!\configurator|dataIndex\(1) & (!\configurator|dataIndex\(2) & (!\configurator|dataIndex\(3) & \configurator|counter\(0)))) # (\configurator|dataIndex\(1) & 
-- (((!\configurator|counter\(0)) # (\configurator|dataIndex\(3))))) ) ) ) # ( !\configurator|counter\(1) & ( !\configurator|counter\(2) & ( (!\configurator|dataIndex\(1) & ((!\configurator|dataIndex\(2) & (!\configurator|dataIndex\(3) & 
-- \configurator|counter\(0))) # (\configurator|dataIndex\(2) & (\configurator|dataIndex\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000010000000000000000000000000000000000101010110000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(1),
	datab => \configurator|ALT_INV_dataIndex\(2),
	datac => \configurator|ALT_INV_dataIndex\(3),
	datad => \configurator|ALT_INV_counter\(0),
	datae => \configurator|ALT_INV_counter\(1),
	dataf => \configurator|ALT_INV_counter\(2),
	combout => \configurator|Mux1~13_combout\);

-- Location: MLABCELL_X14_Y59_N9
\configurator|Mux1~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~14_combout\ = ( \configurator|dataIndex\(1) & ( (\configurator|dataIndex\(3) & \configurator|counter\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_dataIndex\(3),
	datad => \configurator|ALT_INV_counter\(1),
	dataf => \configurator|ALT_INV_dataIndex\(1),
	combout => \configurator|Mux1~14_combout\);

-- Location: MLABCELL_X14_Y59_N27
\configurator|Mux1~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~10_combout\ = ( \configurator|counter\(0) & ( \configurator|Mux1~14_combout\ & ( (\configurator|counter\(3) & ((!\configurator|dataIndex\(0) & ((\configurator|Mux1~13_combout\))) # (\configurator|dataIndex\(0) & 
-- (!\configurator|dataIndex\(2) & !\configurator|Mux1~13_combout\)))) ) ) ) # ( !\configurator|counter\(0) & ( \configurator|Mux1~14_combout\ & ( (!\configurator|dataIndex\(0) & (\configurator|counter\(3) & \configurator|Mux1~13_combout\)) ) ) ) # ( 
-- \configurator|counter\(0) & ( !\configurator|Mux1~14_combout\ & ( (!\configurator|dataIndex\(0) & (\configurator|counter\(3) & \configurator|Mux1~13_combout\)) ) ) ) # ( !\configurator|counter\(0) & ( !\configurator|Mux1~14_combout\ & ( 
-- (!\configurator|dataIndex\(0) & (\configurator|counter\(3) & \configurator|Mux1~13_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000000010100000010000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(0),
	datab => \configurator|ALT_INV_dataIndex\(2),
	datac => \configurator|ALT_INV_counter\(3),
	datad => \configurator|ALT_INV_Mux1~13_combout\,
	datae => \configurator|ALT_INV_counter\(0),
	dataf => \configurator|ALT_INV_Mux1~14_combout\,
	combout => \configurator|Mux1~10_combout\);

-- Location: LABCELL_X13_Y59_N0
\configurator|Mux1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~5_combout\ = ( \configurator|dataIndex\(3) & ( \configurator|dataIndex\(0) & ( (!\configurator|counter\(2) & (!\configurator|dataIndex\(1) & (!\configurator|dataIndex\(2) & !\configurator|counter\(0)))) # (\configurator|counter\(2) & 
-- (\configurator|counter\(0) & ((!\configurator|dataIndex\(1)) # (!\configurator|dataIndex\(2))))) ) ) ) # ( !\configurator|dataIndex\(3) & ( \configurator|dataIndex\(0) & ( (\configurator|counter\(2) & (\configurator|counter\(0) & 
-- ((!\configurator|dataIndex\(1)) # (!\configurator|dataIndex\(2))))) ) ) ) # ( \configurator|dataIndex\(3) & ( !\configurator|dataIndex\(0) & ( (!\configurator|dataIndex\(2) & (((\configurator|counter\(2) & \configurator|counter\(0))))) # 
-- (\configurator|dataIndex\(2) & (!\configurator|dataIndex\(1) & (!\configurator|counter\(2) & !\configurator|counter\(0)))) ) ) ) # ( !\configurator|dataIndex\(3) & ( !\configurator|dataIndex\(0) & ( (!\configurator|dataIndex\(2) & 
-- (\configurator|counter\(2) & \configurator|counter\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100001000000000110000000000000011101000000000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(1),
	datab => \configurator|ALT_INV_dataIndex\(2),
	datac => \configurator|ALT_INV_counter\(2),
	datad => \configurator|ALT_INV_counter\(0),
	datae => \configurator|ALT_INV_dataIndex\(3),
	dataf => \configurator|ALT_INV_dataIndex\(0),
	combout => \configurator|Mux1~5_combout\);

-- Location: MLABCELL_X14_Y59_N48
\configurator|Mux1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~7_combout\ = ( \configurator|dataIndex\(1) & ( (!\configurator|counter\(2) & (!\configurator|counter\(0) & (\configurator|dataIndex\(2) & \configurator|dataIndex\(0)))) # (\configurator|counter\(2) & (!\configurator|dataIndex\(0) $ 
-- (((!\configurator|counter\(0) & !\configurator|dataIndex\(2)))))) ) ) # ( !\configurator|dataIndex\(1) & ( (!\configurator|dataIndex\(2) & (!\configurator|counter\(0) & ((!\configurator|counter\(2)) # (!\configurator|dataIndex\(0))))) # 
-- (\configurator|dataIndex\(2) & (!\configurator|dataIndex\(0) & (!\configurator|counter\(0) $ (\configurator|counter\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100110000000101010011000000000000111001010000000011100101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(0),
	datab => \configurator|ALT_INV_dataIndex\(2),
	datac => \configurator|ALT_INV_counter\(2),
	datad => \configurator|ALT_INV_dataIndex\(0),
	dataf => \configurator|ALT_INV_dataIndex\(1),
	combout => \configurator|Mux1~7_combout\);

-- Location: MLABCELL_X14_Y59_N0
\configurator|Mux1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~8_combout\ = ( \configurator|dataIndex\(1) & ( !\configurator|counter\(2) & ( (!\configurator|counter\(0) & (!\configurator|dataIndex\(2) & !\configurator|dataIndex\(0))) # (\configurator|counter\(0) & ((\configurator|dataIndex\(0)))) ) 
-- ) ) # ( !\configurator|dataIndex\(1) & ( !\configurator|counter\(2) & ( (!\configurator|counter\(0) & (\configurator|dataIndex\(2))) # (\configurator|counter\(0) & ((\configurator|dataIndex\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111101000000101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(0),
	datac => \configurator|ALT_INV_dataIndex\(2),
	datad => \configurator|ALT_INV_dataIndex\(0),
	datae => \configurator|ALT_INV_dataIndex\(1),
	dataf => \configurator|ALT_INV_counter\(2),
	combout => \configurator|Mux1~8_combout\);

-- Location: MLABCELL_X14_Y59_N39
\configurator|Mux1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~6_combout\ = ( \configurator|dataIndex\(2) & ( \configurator|dataIndex\(1) & ( (!\configurator|counter\(0) & (!\configurator|counter\(2) $ (\configurator|dataIndex\(0)))) ) ) ) # ( !\configurator|dataIndex\(2) & ( 
-- \configurator|dataIndex\(1) & ( (!\configurator|counter\(2) & \configurator|counter\(0)) ) ) ) # ( \configurator|dataIndex\(2) & ( !\configurator|dataIndex\(1) & ( (!\configurator|counter\(2) & (!\configurator|dataIndex\(0) $ 
-- (((\configurator|counter\(0)))))) # (\configurator|counter\(2) & ((!\configurator|counter\(0)) # ((!\configurator|dataIndex\(0) & !\configurator|dataIndex\(3))))) ) ) ) # ( !\configurator|dataIndex\(2) & ( !\configurator|dataIndex\(1) & ( 
-- (!\configurator|dataIndex\(0) & !\configurator|counter\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110111010110001000000000101010101001100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(2),
	datab => \configurator|ALT_INV_dataIndex\(0),
	datac => \configurator|ALT_INV_dataIndex\(3),
	datad => \configurator|ALT_INV_counter\(0),
	datae => \configurator|ALT_INV_dataIndex\(2),
	dataf => \configurator|ALT_INV_dataIndex\(1),
	combout => \configurator|Mux1~6_combout\);

-- Location: MLABCELL_X14_Y59_N33
\configurator|Mux1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~9_combout\ = ( \configurator|Mux1~8_combout\ & ( \configurator|Mux1~6_combout\ & ( ((!\configurator|counter\(1) & (\configurator|Mux1~5_combout\)) # (\configurator|counter\(1) & ((!\configurator|Mux1~7_combout\)))) # 
-- (\configurator|counter\(3)) ) ) ) # ( !\configurator|Mux1~8_combout\ & ( \configurator|Mux1~6_combout\ & ( (!\configurator|counter\(1) & (((\configurator|Mux1~5_combout\)) # (\configurator|counter\(3)))) # (\configurator|counter\(1) & 
-- (!\configurator|counter\(3) & ((!\configurator|Mux1~7_combout\)))) ) ) ) # ( \configurator|Mux1~8_combout\ & ( !\configurator|Mux1~6_combout\ & ( (!\configurator|counter\(1) & (!\configurator|counter\(3) & (\configurator|Mux1~5_combout\))) # 
-- (\configurator|counter\(1) & (((!\configurator|Mux1~7_combout\)) # (\configurator|counter\(3)))) ) ) ) # ( !\configurator|Mux1~8_combout\ & ( !\configurator|Mux1~6_combout\ & ( (!\configurator|counter\(3) & ((!\configurator|counter\(1) & 
-- (\configurator|Mux1~5_combout\)) # (\configurator|counter\(1) & ((!\configurator|Mux1~7_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110000001000010111010001100101101110001010100111111100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(1),
	datab => \configurator|ALT_INV_counter\(3),
	datac => \configurator|ALT_INV_Mux1~5_combout\,
	datad => \configurator|ALT_INV_Mux1~7_combout\,
	datae => \configurator|ALT_INV_Mux1~8_combout\,
	dataf => \configurator|ALT_INV_Mux1~6_combout\,
	combout => \configurator|Mux1~9_combout\);

-- Location: MLABCELL_X14_Y59_N21
\configurator|Mux1~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~12_combout\ = ( \configurator|Mux1~10_combout\ & ( \configurator|Mux1~9_combout\ & ( (!\configurator|counter\(4) & (((\configurator|counter\(5))) # (\configurator|Mux1~4_combout\))) # (\configurator|counter\(4) & 
-- (((!\configurator|counter\(5)) # (\configurator|Mux1~11_combout\)))) ) ) ) # ( !\configurator|Mux1~10_combout\ & ( \configurator|Mux1~9_combout\ & ( (!\configurator|counter\(4) & (((\configurator|counter\(5))) # (\configurator|Mux1~4_combout\))) # 
-- (\configurator|counter\(4) & (((\configurator|Mux1~11_combout\ & \configurator|counter\(5))))) ) ) ) # ( \configurator|Mux1~10_combout\ & ( !\configurator|Mux1~9_combout\ & ( (!\configurator|counter\(4) & (\configurator|Mux1~4_combout\ & 
-- ((!\configurator|counter\(5))))) # (\configurator|counter\(4) & (((!\configurator|counter\(5)) # (\configurator|Mux1~11_combout\)))) ) ) ) # ( !\configurator|Mux1~10_combout\ & ( !\configurator|Mux1~9_combout\ & ( (!\configurator|counter\(4) & 
-- (\configurator|Mux1~4_combout\ & ((!\configurator|counter\(5))))) # (\configurator|counter\(4) & (((\configurator|Mux1~11_combout\ & \configurator|counter\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000101011101110000010100100010101011110111011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(4),
	datab => \configurator|ALT_INV_Mux1~4_combout\,
	datac => \configurator|ALT_INV_Mux1~11_combout\,
	datad => \configurator|ALT_INV_counter\(5),
	datae => \configurator|ALT_INV_Mux1~10_combout\,
	dataf => \configurator|ALT_INV_Mux1~9_combout\,
	combout => \configurator|Mux1~12_combout\);

-- Location: MLABCELL_X14_Y59_N15
\configurator|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux0~0_combout\ = ( \configurator|dataIndex\(1) & ( \configurator|dataIndex\(0) & ( \configurator|counter\(3) ) ) ) # ( !\configurator|dataIndex\(1) & ( \configurator|dataIndex\(0) & ( \configurator|counter\(1) ) ) ) # ( 
-- \configurator|dataIndex\(1) & ( !\configurator|dataIndex\(0) & ( \configurator|counter\(0) ) ) ) # ( !\configurator|dataIndex\(1) & ( !\configurator|dataIndex\(0) & ( \configurator|counter\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(1),
	datab => \configurator|ALT_INV_counter\(0),
	datac => \configurator|ALT_INV_counter\(3),
	datad => \configurator|ALT_INV_counter\(2),
	datae => \configurator|ALT_INV_dataIndex\(1),
	dataf => \configurator|ALT_INV_dataIndex\(0),
	combout => \configurator|Mux0~0_combout\);

-- Location: MLABCELL_X14_Y59_N54
\configurator|SDIO~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|SDIO~3_combout\ = ( !\configurator|dataIndex\(1) & ( (!\configurator|dataIndex\(2) & ((!\configurator|dataIndex\(0) & (((\configurator|counter\(6))))) # (\configurator|dataIndex\(0) & (\configurator|counter\(5))))) # 
-- (\configurator|dataIndex\(2) & ((((\configurator|Mux0~0_combout\))))) ) ) # ( \configurator|dataIndex\(1) & ( (!\configurator|dataIndex\(2) & ((!\configurator|dataIndex\(0) & (\configurator|counter\(4))) # (\configurator|dataIndex\(0) & 
-- (((\configurator|Mux0~0_combout\)))))) # (\configurator|dataIndex\(2) & (!\configurator|dataIndex\(0) & (((\configurator|Mux0~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001010001010000010000000100001010111110111110110111001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(2),
	datab => \configurator|ALT_INV_dataIndex\(0),
	datac => \configurator|ALT_INV_counter\(4),
	datad => \configurator|ALT_INV_counter\(6),
	datae => \configurator|ALT_INV_dataIndex\(1),
	dataf => \configurator|ALT_INV_Mux0~0_combout\,
	datag => \configurator|ALT_INV_counter\(5),
	combout => \configurator|SDIO~3_combout\);

-- Location: LABCELL_X15_Y59_N27
\configurator|SDIO~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|SDIO~1_combout\ = ( \configurator|LessThan1~0_combout\ & ( \configurator|outputClock~q\ & ( (!\configurator|LessThan0~0_combout\ & (((\configurator|SDIO~q\)))) # (\configurator|LessThan0~0_combout\ & (!\configurator|dataIndex\(4) & 
-- ((\configurator|SDIO~3_combout\)))) ) ) ) # ( !\configurator|LessThan1~0_combout\ & ( \configurator|outputClock~q\ & ( (\configurator|SDIO~q\ & ((!\configurator|LessThan0~0_combout\) # (\configurator|dataIndex\(4)))) ) ) ) # ( 
-- \configurator|LessThan1~0_combout\ & ( !\configurator|outputClock~q\ & ( \configurator|SDIO~q\ ) ) ) # ( !\configurator|LessThan1~0_combout\ & ( !\configurator|outputClock~q\ & ( \configurator|SDIO~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110001001100010011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(4),
	datab => \configurator|ALT_INV_SDIO~q\,
	datac => \configurator|ALT_INV_LessThan0~0_combout\,
	datad => \configurator|ALT_INV_SDIO~3_combout\,
	datae => \configurator|ALT_INV_LessThan1~0_combout\,
	dataf => \configurator|ALT_INV_outputClock~q\,
	combout => \configurator|SDIO~1_combout\);

-- Location: MLABCELL_X14_Y59_N6
\configurator|SDIO~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|SDIO~2_combout\ = ( \configurator|SDIO~1_combout\ & ( (\resetn~input_o\ & !\configurator|discarding~q\) ) ) # ( !\configurator|SDIO~1_combout\ & ( (\resetn~input_o\ & (!\configurator|discarding~q\ & (\configurator|SDIO~0_combout\ & 
-- \configurator|Mux1~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetn~input_o\,
	datab => \configurator|ALT_INV_discarding~q\,
	datac => \configurator|ALT_INV_SDIO~0_combout\,
	datad => \configurator|ALT_INV_Mux1~12_combout\,
	dataf => \configurator|ALT_INV_SDIO~1_combout\,
	combout => \configurator|SDIO~2_combout\);

-- Location: FF_X14_Y59_N8
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

-- Location: LABCELL_X15_Y59_N6
\configurator|CLKRECEIVED~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|CLKRECEIVED~0_combout\ = (\resetn~input_o\ & \configurator|internalClock~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetn~input_o\,
	datac => \configurator|ALT_INV_internalClock~q\,
	combout => \configurator|CLKRECEIVED~0_combout\);

-- Location: LABCELL_X17_Y57_N27
\configurator|writeConfigReceived~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|writeConfigReceived~0_combout\ = ( \writeconfig~input_o\ ) # ( !\writeconfig~input_o\ & ( !\resetn~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_resetn~input_o\,
	dataf => \ALT_INV_writeconfig~input_o\,
	combout => \configurator|writeConfigReceived~0_combout\);

-- Location: LABCELL_X17_Y57_N57
\configurator|stateRegOut[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|stateRegOut[0]~3_combout\ = ( \configurator|state.DISCARD~q\ ) # ( !\configurator|state.DISCARD~q\ & ( (!\resetn~input_o\) # (\configurator|state.INTER~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_state.INTER~q\,
	datab => \ALT_INV_resetn~input_o\,
	dataf => \configurator|ALT_INV_state.DISCARD~q\,
	combout => \configurator|stateRegOut[0]~3_combout\);

-- Location: LABCELL_X15_Y59_N9
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

-- Location: LABCELL_X17_Y57_N39
\configurator|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Selector3~0_combout\ = ( \configurator|state.SEND~q\ & ( (!\writeconfig~input_o\ & ((\configurator|state.DONE~q\) # (\configurator|configOK~reg0_q\))) ) ) # ( !\configurator|state.SEND~q\ & ( (!\writeconfig~input_o\ & 
-- \configurator|state.DONE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_writeconfig~input_o\,
	datac => \configurator|ALT_INV_configOK~reg0_q\,
	datad => \configurator|ALT_INV_state.DONE~q\,
	dataf => \configurator|ALT_INV_state.SEND~q\,
	combout => \configurator|Selector3~0_combout\);

-- Location: FF_X17_Y57_N41
\configurator|nextState.DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inputClock~inputCLKENA0_outclk\,
	d => \configurator|Selector3~0_combout\,
	sclr => \ALT_INV_resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|nextState.DONE~q\);

-- Location: LABCELL_X17_Y57_N3
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

-- Location: FF_X17_Y57_N5
\configurator|state.DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \configurator|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|state.DONE~q\);

-- Location: LABCELL_X17_Y57_N36
\configurator|stateRegOut[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|stateRegOut[2]~5_combout\ = ( \configurator|state.INTER~q\ ) # ( !\configurator|state.INTER~q\ & ( (!\resetn~input_o\) # (\configurator|state.DONE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_resetn~input_o\,
	datac => \configurator|ALT_INV_state.DONE~q\,
	dataf => \configurator|ALT_INV_state.INTER~q\,
	combout => \configurator|stateRegOut[2]~5_combout\);

-- Location: LABCELL_X17_Y57_N0
\configurator|nextStateRegOut[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|nextStateRegOut[0]~3_combout\ = ( \configurator|nextState.INTER~q\ ) # ( !\configurator|nextState.INTER~q\ & ( (!\resetn~input_o\) # (\configurator|nextState.DISCARD~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_resetn~input_o\,
	datac => \configurator|ALT_INV_nextState.DISCARD~q\,
	dataf => \configurator|ALT_INV_nextState.INTER~q\,
	combout => \configurator|nextStateRegOut[0]~3_combout\);

-- Location: LABCELL_X17_Y57_N21
\configurator|nextStateRegOut[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|nextStateRegOut[1]~4_combout\ = ( \configurator|nextState.SEND~q\ ) # ( !\configurator|nextState.SEND~q\ & ( !\resetn~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_resetn~input_o\,
	dataf => \configurator|ALT_INV_nextState.SEND~q\,
	combout => \configurator|nextStateRegOut[1]~4_combout\);

-- Location: LABCELL_X17_Y57_N42
\configurator|nextStateRegOut[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|nextStateRegOut[2]~5_combout\ = ( \configurator|nextState.INTER~q\ ) # ( !\configurator|nextState.INTER~q\ & ( (!\resetn~input_o\) # (\configurator|nextState.DONE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_resetn~input_o\,
	datac => \configurator|ALT_INV_nextState.DONE~q\,
	dataf => \configurator|ALT_INV_nextState.INTER~q\,
	combout => \configurator|nextStateRegOut[2]~5_combout\);

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


