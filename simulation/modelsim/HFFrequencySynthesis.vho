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

-- DATE "12/31/2025 13:57:16"

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
	resetn : BUFFER std_logic;
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
	WrReEnButton : IN std_logic;
	WrReState : BUFFER std_logic;
	inputClock : IN std_logic;
	ClkOut : BUFFER std_logic;
	writeConfigReceived : BUFFER std_logic;
	stateRegOut : BUFFER std_logic_vector(2 DOWNTO 0);
	nextStateRegOut : BUFFER std_logic_vector(2 DOWNTO 0);
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
-- WrReState	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ClkOut	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- WrReEnButton	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_resetn : std_logic;
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
SIGNAL ww_WrReEnButton : std_logic;
SIGNAL ww_WrReState : std_logic;
SIGNAL ww_inputClock : std_logic;
SIGNAL ww_ClkOut : std_logic;
SIGNAL ww_writeConfigReceived : std_logic;
SIGNAL ww_stateRegOut : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_nextStateRegOut : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_discardBuffer : std_logic;
SIGNAL \sclk~input_o\ : std_logic;
SIGNAL \sdenb~input_o\ : std_logic;
SIGNAL \configok~input_o\ : std_logic;
SIGNAL \discardBuffer~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \inputClock~input_o\ : std_logic;
SIGNAL \inputClock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \configurator|Add4~9_sumout\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \configurator|Add4~6\ : std_logic;
SIGNAL \configurator|Add4~1_sumout\ : std_logic;
SIGNAL \configurator|Add4~2\ : std_logic;
SIGNAL \configurator|Add4~29_sumout\ : std_logic;
SIGNAL \configurator|Add4~30\ : std_logic;
SIGNAL \configurator|Add4~25_sumout\ : std_logic;
SIGNAL \configurator|Add4~26\ : std_logic;
SIGNAL \configurator|Add4~21_sumout\ : std_logic;
SIGNAL \configurator|Add4~22\ : std_logic;
SIGNAL \configurator|Add4~17_sumout\ : std_logic;
SIGNAL \configurator|Add4~18\ : std_logic;
SIGNAL \configurator|Add4~13_sumout\ : std_logic;
SIGNAL \configurator|Equal1~0_combout\ : std_logic;
SIGNAL \configurator|Equal1~1_combout\ : std_logic;
SIGNAL \configurator|Add4~10\ : std_logic;
SIGNAL \configurator|Add4~5_sumout\ : std_logic;
SIGNAL \configurator|internalClock~0_combout\ : std_logic;
SIGNAL \configurator|internalClock~feeder_combout\ : std_logic;
SIGNAL \configurator|internalClock~q\ : std_logic;
SIGNAL \configurator|Add2~1_sumout\ : std_logic;
SIGNAL \configurator|Add2~14\ : std_logic;
SIGNAL \configurator|Add2~17_sumout\ : std_logic;
SIGNAL \writeconfig~input_o\ : std_logic;
SIGNAL \configurator|Add2~18\ : std_logic;
SIGNAL \configurator|Add2~21_sumout\ : std_logic;
SIGNAL \configurator|Add2~22\ : std_logic;
SIGNAL \configurator|Add2~25_sumout\ : std_logic;
SIGNAL \configurator|Add2~26\ : std_logic;
SIGNAL \configurator|Add2~29_sumout\ : std_logic;
SIGNAL \configurator|LessThan0~1_combout\ : std_logic;
SIGNAL \configurator|Add3~9_sumout\ : std_logic;
SIGNAL \configurator|counter[6]~0_combout\ : std_logic;
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
SIGNAL \configurator|Add3~18\ : std_logic;
SIGNAL \configurator|Add3~25_sumout\ : std_logic;
SIGNAL \configurator|LessThan2~0_combout\ : std_logic;
SIGNAL \configurator|configOK~0_combout\ : std_logic;
SIGNAL \configurator|configOK~reg0feeder_combout\ : std_logic;
SIGNAL \configurator|configOK~reg0_q\ : std_logic;
SIGNAL \configurator|waitingBuffer[0]~2_combout\ : std_logic;
SIGNAL \configurator|waitingBuffer[0]~feeder_combout\ : std_logic;
SIGNAL \configurator|discarding~q\ : std_logic;
SIGNAL \configurator|needWait~0_combout\ : std_logic;
SIGNAL \configurator|needWait~q\ : std_logic;
SIGNAL \configurator|Selector1~0_combout\ : std_logic;
SIGNAL \configurator|nextState.INTER~q\ : std_logic;
SIGNAL \configurator|state.INTER~feeder_combout\ : std_logic;
SIGNAL \configurator|state.INTER~DUPLICATE_q\ : std_logic;
SIGNAL \configurator|waiting~q\ : std_logic;
SIGNAL \configurator|waitingBuffer[1]~1_combout\ : std_logic;
SIGNAL \configurator|waitingBuffer[1]~feeder_combout\ : std_logic;
SIGNAL \configurator|waitingBuffer[2]~0_combout\ : std_logic;
SIGNAL \configurator|waitingBuffer[2]~feeder_combout\ : std_logic;
SIGNAL \configurator|waitingDone~0_combout\ : std_logic;
SIGNAL \configurator|waitingDone~q\ : std_logic;
SIGNAL \configurator|state.INTER~q\ : std_logic;
SIGNAL \configurator|state.DISCARD~q\ : std_logic;
SIGNAL \configurator|nextState~9_combout\ : std_logic;
SIGNAL \configurator|nextState.IDLE~q\ : std_logic;
SIGNAL \configurator|state.IDLE~feeder_combout\ : std_logic;
SIGNAL \configurator|state.IDLE~q\ : std_logic;
SIGNAL \configurator|discardBuffer~0_combout\ : std_logic;
SIGNAL \configurator|discardBuffer~reg0_q\ : std_logic;
SIGNAL \configurator|discarded~0_combout\ : std_logic;
SIGNAL \configurator|discarded~q\ : std_logic;
SIGNAL \configurator|Selector2~0_combout\ : std_logic;
SIGNAL \configurator|nextState.DISCARD~q\ : std_logic;
SIGNAL \configurator|state.DISCARD~DUPLICATE_q\ : std_logic;
SIGNAL \configurator|Selector0~0_combout\ : std_logic;
SIGNAL \configurator|nextState.SEND~q\ : std_logic;
SIGNAL \configurator|state.SEND~DUPLICATE_q\ : std_logic;
SIGNAL \configurator|sendData~DUPLICATE_q\ : std_logic;
SIGNAL \configurator|dataIndex[0]~1_combout\ : std_logic;
SIGNAL \configurator|LessThan1~1_combout\ : std_logic;
SIGNAL \configurator|dataIndex[0]~0_combout\ : std_logic;
SIGNAL \configurator|Add2~2\ : std_logic;
SIGNAL \configurator|Add2~5_sumout\ : std_logic;
SIGNAL \configurator|Add2~6\ : std_logic;
SIGNAL \configurator|Add2~9_sumout\ : std_logic;
SIGNAL \configurator|Add2~10\ : std_logic;
SIGNAL \configurator|Add2~13_sumout\ : std_logic;
SIGNAL \configurator|SDIO~2_combout\ : std_logic;
SIGNAL \configurator|LessThan0~0_combout\ : std_logic;
SIGNAL \configurator|SDIO~3_combout\ : std_logic;
SIGNAL \configurator|Mux1~11_combout\ : std_logic;
SIGNAL \configurator|Mux1~12_combout\ : std_logic;
SIGNAL \configurator|Mux1~6_combout\ : std_logic;
SIGNAL \configurator|Mux1~3_combout\ : std_logic;
SIGNAL \configurator|Mux1~2_combout\ : std_logic;
SIGNAL \configurator|Mux1~1_combout\ : std_logic;
SIGNAL \configurator|Mux1~4_combout\ : std_logic;
SIGNAL \configurator|Mux1~5_combout\ : std_logic;
SIGNAL \configurator|Mux1~7_combout\ : std_logic;
SIGNAL \configurator|Mux1~10_combout\ : std_logic;
SIGNAL \configurator|Mux1~9_combout\ : std_logic;
SIGNAL \configurator|Mux1~0_combout\ : std_logic;
SIGNAL \configurator|Mux1~8_combout\ : std_logic;
SIGNAL \configurator|LessThan1~0_combout\ : std_logic;
SIGNAL \configurator|SDIO~0_combout\ : std_logic;
SIGNAL \configurator|Mux0~0_combout\ : std_logic;
SIGNAL \configurator|sendData~q\ : std_logic;
SIGNAL \configurator|SDIO~7_combout\ : std_logic;
SIGNAL \configurator|SDIO~1_combout\ : std_logic;
SIGNAL \WrReEnButton~input_o\ : std_logic;
SIGNAL \WrReEnButton~inputCLKENA0_outclk\ : std_logic;
SIGNAL \WrReEn~0_combout\ : std_logic;
SIGNAL \WrReEn~q\ : std_logic;
SIGNAL \configurator|SDIO~4_combout\ : std_logic;
SIGNAL \configurator|SDIO~5_combout\ : std_logic;
SIGNAL \configurator|SDIO~reg0_q\ : std_logic;
SIGNAL \configurator|SDIO~6_combout\ : std_logic;
SIGNAL \configurator|SDIO~en_q\ : std_logic;
SIGNAL \configurator|state.SEND~q\ : std_logic;
SIGNAL \configurator|Outputs~0_combout\ : std_logic;
SIGNAL \configurator|outputClock~0_combout\ : std_logic;
SIGNAL \configurator|outputClock~q\ : std_logic;
SIGNAL \configurator|SCLK~0_combout\ : std_logic;
SIGNAL \configurator|SDENB~0_combout\ : std_logic;
SIGNAL \configurator|SDENB~reg0_q\ : std_logic;
SIGNAL \innerDataClock~0_combout\ : std_logic;
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
SIGNAL \synthesizer|Add0~1_sumout\ : std_logic;
SIGNAL \synthesizer|Add0~2\ : std_logic;
SIGNAL \synthesizer|Add0~117_sumout\ : std_logic;
SIGNAL \synthesizer|Add0~118\ : std_logic;
SIGNAL \synthesizer|Add0~121_sumout\ : std_logic;
SIGNAL \synthesizer|Add0~122\ : std_logic;
SIGNAL \synthesizer|Add0~126\ : std_logic;
SIGNAL \synthesizer|Add0~101_sumout\ : std_logic;
SIGNAL \synthesizer|Add0~102\ : std_logic;
SIGNAL \synthesizer|Add0~105_sumout\ : std_logic;
SIGNAL \synthesizer|Add0~106\ : std_logic;
SIGNAL \synthesizer|Add0~109_sumout\ : std_logic;
SIGNAL \synthesizer|Add0~110\ : std_logic;
SIGNAL \synthesizer|Add0~113_sumout\ : std_logic;
SIGNAL \synthesizer|Add0~114\ : std_logic;
SIGNAL \synthesizer|Add0~81_sumout\ : std_logic;
SIGNAL \synthesizer|Add0~82\ : std_logic;
SIGNAL \synthesizer|Add0~85_sumout\ : std_logic;
SIGNAL \synthesizer|Add0~86\ : std_logic;
SIGNAL \synthesizer|Add0~41_sumout\ : std_logic;
SIGNAL \synthesizer|Add0~42\ : std_logic;
SIGNAL \synthesizer|Add0~45_sumout\ : std_logic;
SIGNAL \synthesizer|Add0~46\ : std_logic;
SIGNAL \synthesizer|Add0~49_sumout\ : std_logic;
SIGNAL \synthesizer|Add0~50\ : std_logic;
SIGNAL \synthesizer|Add0~53_sumout\ : std_logic;
SIGNAL \synthesizer|Add0~54\ : std_logic;
SIGNAL \synthesizer|Add0~57_sumout\ : std_logic;
SIGNAL \synthesizer|Add0~58\ : std_logic;
SIGNAL \synthesizer|Add0~89_sumout\ : std_logic;
SIGNAL \synthesizer|Add0~90\ : std_logic;
SIGNAL \synthesizer|Add0~93_sumout\ : std_logic;
SIGNAL \synthesizer|Add0~94\ : std_logic;
SIGNAL \synthesizer|Add0~97_sumout\ : std_logic;
SIGNAL \synthesizer|Add0~98\ : std_logic;
SIGNAL \synthesizer|Add0~61_sumout\ : std_logic;
SIGNAL \synthesizer|Add0~62\ : std_logic;
SIGNAL \synthesizer|Add0~21_sumout\ : std_logic;
SIGNAL \synthesizer|Add0~22\ : std_logic;
SIGNAL \synthesizer|Add0~65_sumout\ : std_logic;
SIGNAL \synthesizer|Add0~66\ : std_logic;
SIGNAL \synthesizer|Add0~25_sumout\ : std_logic;
SIGNAL \synthesizer|Add0~26\ : std_logic;
SIGNAL \synthesizer|Add0~29_sumout\ : std_logic;
SIGNAL \synthesizer|Add0~30\ : std_logic;
SIGNAL \synthesizer|Add0~33_sumout\ : std_logic;
SIGNAL \synthesizer|Add0~34\ : std_logic;
SIGNAL \synthesizer|Add0~37_sumout\ : std_logic;
SIGNAL \synthesizer|Add0~38\ : std_logic;
SIGNAL \synthesizer|Add0~69_sumout\ : std_logic;
SIGNAL \synthesizer|Add0~70\ : std_logic;
SIGNAL \synthesizer|Add0~73_sumout\ : std_logic;
SIGNAL \synthesizer|Add0~74\ : std_logic;
SIGNAL \synthesizer|Add0~77_sumout\ : std_logic;
SIGNAL \synthesizer|Add0~78\ : std_logic;
SIGNAL \synthesizer|Add0~5_sumout\ : std_logic;
SIGNAL \synthesizer|Add0~6\ : std_logic;
SIGNAL \synthesizer|Add0~9_sumout\ : std_logic;
SIGNAL \synthesizer|Add0~10\ : std_logic;
SIGNAL \synthesizer|Add0~13_sumout\ : std_logic;
SIGNAL \synthesizer|Add0~14\ : std_logic;
SIGNAL \synthesizer|Add0~17_sumout\ : std_logic;
SIGNAL \synthesizer|LessThan0~0_combout\ : std_logic;
SIGNAL \synthesizer|LessThan0~1_combout\ : std_logic;
SIGNAL \synthesizer|LessThan0~4_combout\ : std_logic;
SIGNAL \synthesizer|LessThan0~5_combout\ : std_logic;
SIGNAL \synthesizer|LessThan0~2_combout\ : std_logic;
SIGNAL \synthesizer|LessThan0~3_combout\ : std_logic;
SIGNAL \synthesizer|Add0~125_sumout\ : std_logic;
SIGNAL \synthesizer|counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \synthesizer|counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \synthesizer|counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \synthesizer|Mux11~0_combout\ : std_logic;
SIGNAL \synthesizer|output_p[0]~feeder_combout\ : std_logic;
SIGNAL \synthesizer|Mux10~0_combout\ : std_logic;
SIGNAL \synthesizer|output_p[1]~feeder_combout\ : std_logic;
SIGNAL \synthesizer|Mux9~0_combout\ : std_logic;
SIGNAL \synthesizer|output_p[2]~feeder_combout\ : std_logic;
SIGNAL \synthesizer|Mux8~0_combout\ : std_logic;
SIGNAL \synthesizer|Mux2~0_combout\ : std_logic;
SIGNAL \synthesizer|output_p[6]~feeder_combout\ : std_logic;
SIGNAL \synthesizer|Mux7~0_combout\ : std_logic;
SIGNAL \synthesizer|Mux6~0_combout\ : std_logic;
SIGNAL \synthesizer|Mux1~0_combout\ : std_logic;
SIGNAL \synthesizer|output_p[9]~feeder_combout\ : std_logic;
SIGNAL \synthesizer|Mux5~0_combout\ : std_logic;
SIGNAL \synthesizer|Mux4~0_combout\ : std_logic;
SIGNAL \synthesizer|Mux3~0_combout\ : std_logic;
SIGNAL \synthesizer|output_p[13]~feeder_combout\ : std_logic;
SIGNAL \synthesizer|output_p[14]~feeder_combout\ : std_logic;
SIGNAL \synthesizer|Mux0~0_combout\ : std_logic;
SIGNAL \parallelDataClk_p~0_combout\ : std_logic;
SIGNAL \parallelDataClk_p~reg0_q\ : std_logic;
SIGNAL \WrReState~0_combout\ : std_logic;
SIGNAL \WrReState~reg0_q\ : std_logic;
SIGNAL \configurator|CLKRECEIVED~0_combout\ : std_logic;
SIGNAL \configurator|writeConfigReceived~0_combout\ : std_logic;
SIGNAL \configurator|stateRegOut[0]~3_combout\ : std_logic;
SIGNAL \configurator|stateRegOut[1]~4_combout\ : std_logic;
SIGNAL \configurator|Selector3~0_combout\ : std_logic;
SIGNAL \configurator|nextState.DONE~q\ : std_logic;
SIGNAL \configurator|state.DONE~q\ : std_logic;
SIGNAL \configurator|stateRegOut[2]~5_combout\ : std_logic;
SIGNAL \configurator|nextStateRegOut[0]~4_combout\ : std_logic;
SIGNAL \configurator|nextStateRegOut[1]~5_combout\ : std_logic;
SIGNAL \configurator|nextStateRegOut[2]~6_combout\ : std_logic;
SIGNAL clockDivideBuffer : std_logic_vector(7 DOWNTO 0);
SIGNAL \synthesizer|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \configurator|clockDividerBuffer\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \configurator|dataIndex\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \configurator|counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \configurator|waitingBuffer\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \synthesizer|output_p\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \configurator|ALT_INV_sendData~DUPLICATE_q\ : std_logic;
SIGNAL \configurator|ALT_INV_state.SEND~DUPLICATE_q\ : std_logic;
SIGNAL \configurator|ALT_INV_state.DISCARD~DUPLICATE_q\ : std_logic;
SIGNAL \configurator|ALT_INV_state.INTER~DUPLICATE_q\ : std_logic;
SIGNAL \synthesizer|ALT_INV_counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \synthesizer|ALT_INV_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \synthesizer|ALT_INV_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_WrReEnButton~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_inputClock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_writeconfig~input_o\ : std_logic;
SIGNAL \ALT_INV_resetn~input_o\ : std_logic;
SIGNAL \configurator|ALT_INV_waitingBuffer[0]~2_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_SDIO~7_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_Mux1~12_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_Mux1~11_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_Mux1~10_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_Mux1~9_combout\ : std_logic;
SIGNAL \synthesizer|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \synthesizer|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_Outputs~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_waitingBuffer[1]~1_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_waitingBuffer[2]~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_outputClock~q\ : std_logic;
SIGNAL \configurator|ALT_INV_configOK~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_nextState.IDLE~q\ : std_logic;
SIGNAL \configurator|ALT_INV_waitingBuffer\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \configurator|ALT_INV_discardBuffer~reg0_q\ : std_logic;
SIGNAL \configurator|ALT_INV_waiting~q\ : std_logic;
SIGNAL \configurator|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_SDIO~3_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_SDIO~2_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_SDIO~1_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_SDIO~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_sendData~q\ : std_logic;
SIGNAL \configurator|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_LessThan1~0_combout\ : std_logic;
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
SIGNAL \synthesizer|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \synthesizer|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \synthesizer|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_configOK~reg0_q\ : std_logic;
SIGNAL \configurator|ALT_INV_needWait~q\ : std_logic;
SIGNAL \configurator|ALT_INV_state.IDLE~q\ : std_logic;
SIGNAL \configurator|ALT_INV_waitingDone~q\ : std_logic;
SIGNAL \configurator|ALT_INV_discarded~q\ : std_logic;
SIGNAL \configurator|ALT_INV_internalClock~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_WrReEn~q\ : std_logic;
SIGNAL \configurator|ALT_INV_SDIO~en_q\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL ALT_INV_clockDivideBuffer : std_logic_vector(7 DOWNTO 0);
SIGNAL \synthesizer|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \synthesizer|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \synthesizer|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \synthesizer|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \ALT_INV_innerDataClock~q\ : std_logic;
SIGNAL \synthesizer|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_nextStateRegOut[2]~6_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_nextState.DONE~q\ : std_logic;
SIGNAL \configurator|ALT_INV_nextStateRegOut[1]~5_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_nextState.SEND~q\ : std_logic;
SIGNAL \configurator|ALT_INV_nextStateRegOut[0]~4_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_nextState.INTER~q\ : std_logic;
SIGNAL \configurator|ALT_INV_nextState.DISCARD~q\ : std_logic;
SIGNAL \configurator|ALT_INV_stateRegOut[2]~5_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_state.DONE~q\ : std_logic;
SIGNAL \configurator|ALT_INV_stateRegOut[1]~4_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_state.SEND~q\ : std_logic;
SIGNAL \configurator|ALT_INV_stateRegOut[0]~3_combout\ : std_logic;
SIGNAL \configurator|ALT_INV_state.DISCARD~q\ : std_logic;
SIGNAL \configurator|ALT_INV_state.INTER~q\ : std_logic;
SIGNAL \configurator|ALT_INV_internalClock~q\ : std_logic;
SIGNAL \synthesizer|ALT_INV_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \configurator|ALT_INV_counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \configurator|ALT_INV_dataIndex\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \synthesizer|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \synthesizer|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \synthesizer|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \synthesizer|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \synthesizer|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \synthesizer|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \synthesizer|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \synthesizer|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \synthesizer|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \synthesizer|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \synthesizer|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \synthesizer|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \synthesizer|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \synthesizer|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \synthesizer|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \synthesizer|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \synthesizer|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \synthesizer|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \synthesizer|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \synthesizer|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \synthesizer|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \synthesizer|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \synthesizer|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \synthesizer|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \synthesizer|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \synthesizer|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \synthesizer|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \synthesizer|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \configurator|ALT_INV_clockDividerBuffer\ : std_logic_vector(7 DOWNTO 0);

BEGIN

resetn <= ww_resetn;
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
ww_WrReEnButton <= WrReEnButton;
WrReState <= ww_WrReState;
ww_inputClock <= inputClock;
ClkOut <= ww_ClkOut;
writeConfigReceived <= ww_writeConfigReceived;
stateRegOut <= ww_stateRegOut;
nextStateRegOut <= ww_nextStateRegOut;
discardBuffer <= ww_discardBuffer;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\configurator|ALT_INV_sendData~DUPLICATE_q\ <= NOT \configurator|sendData~DUPLICATE_q\;
\configurator|ALT_INV_state.SEND~DUPLICATE_q\ <= NOT \configurator|state.SEND~DUPLICATE_q\;
\configurator|ALT_INV_state.DISCARD~DUPLICATE_q\ <= NOT \configurator|state.DISCARD~DUPLICATE_q\;
\configurator|ALT_INV_state.INTER~DUPLICATE_q\ <= NOT \configurator|state.INTER~DUPLICATE_q\;
\synthesizer|ALT_INV_counter[3]~DUPLICATE_q\ <= NOT \synthesizer|counter[3]~DUPLICATE_q\;
\synthesizer|ALT_INV_counter[2]~DUPLICATE_q\ <= NOT \synthesizer|counter[2]~DUPLICATE_q\;
\synthesizer|ALT_INV_counter[0]~DUPLICATE_q\ <= NOT \synthesizer|counter[0]~DUPLICATE_q\;
\ALT_INV_WrReEnButton~inputCLKENA0_outclk\ <= NOT \WrReEnButton~inputCLKENA0_outclk\;
\ALT_INV_inputClock~inputCLKENA0_outclk\ <= NOT \inputClock~inputCLKENA0_outclk\;
\ALT_INV_writeconfig~input_o\ <= NOT \writeconfig~input_o\;
\ALT_INV_resetn~input_o\ <= NOT \resetn~input_o\;
\configurator|ALT_INV_waitingBuffer[0]~2_combout\ <= NOT \configurator|waitingBuffer[0]~2_combout\;
\configurator|ALT_INV_SDIO~7_combout\ <= NOT \configurator|SDIO~7_combout\;
\configurator|ALT_INV_Mux1~12_combout\ <= NOT \configurator|Mux1~12_combout\;
\configurator|ALT_INV_Mux1~11_combout\ <= NOT \configurator|Mux1~11_combout\;
\configurator|ALT_INV_Mux1~10_combout\ <= NOT \configurator|Mux1~10_combout\;
\configurator|ALT_INV_Mux1~9_combout\ <= NOT \configurator|Mux1~9_combout\;
\synthesizer|ALT_INV_LessThan0~5_combout\ <= NOT \synthesizer|LessThan0~5_combout\;
\synthesizer|ALT_INV_LessThan0~4_combout\ <= NOT \synthesizer|LessThan0~4_combout\;
\configurator|ALT_INV_Outputs~0_combout\ <= NOT \configurator|Outputs~0_combout\;
\configurator|ALT_INV_waitingBuffer[1]~1_combout\ <= NOT \configurator|waitingBuffer[1]~1_combout\;
\configurator|ALT_INV_waitingBuffer[2]~0_combout\ <= NOT \configurator|waitingBuffer[2]~0_combout\;
\configurator|ALT_INV_outputClock~q\ <= NOT \configurator|outputClock~q\;
\configurator|ALT_INV_configOK~0_combout\ <= NOT \configurator|configOK~0_combout\;
\configurator|ALT_INV_LessThan2~0_combout\ <= NOT \configurator|LessThan2~0_combout\;
\configurator|ALT_INV_LessThan1~1_combout\ <= NOT \configurator|LessThan1~1_combout\;
\configurator|ALT_INV_nextState.IDLE~q\ <= NOT \configurator|nextState.IDLE~q\;
\configurator|ALT_INV_waitingBuffer\(0) <= NOT \configurator|waitingBuffer\(0);
\configurator|ALT_INV_waitingBuffer\(1) <= NOT \configurator|waitingBuffer\(1);
\configurator|ALT_INV_waitingBuffer\(2) <= NOT \configurator|waitingBuffer\(2);
\configurator|ALT_INV_discardBuffer~reg0_q\ <= NOT \configurator|discardBuffer~reg0_q\;
\configurator|ALT_INV_waiting~q\ <= NOT \configurator|waiting~q\;
\configurator|ALT_INV_LessThan0~1_combout\ <= NOT \configurator|LessThan0~1_combout\;
\configurator|ALT_INV_SDIO~3_combout\ <= NOT \configurator|SDIO~3_combout\;
\configurator|ALT_INV_SDIO~2_combout\ <= NOT \configurator|SDIO~2_combout\;
\configurator|ALT_INV_SDIO~1_combout\ <= NOT \configurator|SDIO~1_combout\;
\configurator|ALT_INV_Mux0~0_combout\ <= NOT \configurator|Mux0~0_combout\;
\configurator|ALT_INV_SDIO~0_combout\ <= NOT \configurator|SDIO~0_combout\;
\configurator|ALT_INV_sendData~q\ <= NOT \configurator|sendData~q\;
\configurator|ALT_INV_LessThan0~0_combout\ <= NOT \configurator|LessThan0~0_combout\;
\configurator|ALT_INV_LessThan1~0_combout\ <= NOT \configurator|LessThan1~0_combout\;
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
\synthesizer|ALT_INV_LessThan0~2_combout\ <= NOT \synthesizer|LessThan0~2_combout\;
\synthesizer|ALT_INV_LessThan0~1_combout\ <= NOT \synthesizer|LessThan0~1_combout\;
\synthesizer|ALT_INV_LessThan0~0_combout\ <= NOT \synthesizer|LessThan0~0_combout\;
\configurator|ALT_INV_configOK~reg0_q\ <= NOT \configurator|configOK~reg0_q\;
\configurator|ALT_INV_needWait~q\ <= NOT \configurator|needWait~q\;
\configurator|ALT_INV_state.IDLE~q\ <= NOT \configurator|state.IDLE~q\;
\configurator|ALT_INV_waitingDone~q\ <= NOT \configurator|waitingDone~q\;
\configurator|ALT_INV_discarded~q\ <= NOT \configurator|discarded~q\;
\configurator|ALT_INV_internalClock~0_combout\ <= NOT \configurator|internalClock~0_combout\;
\configurator|ALT_INV_Equal1~0_combout\ <= NOT \configurator|Equal1~0_combout\;
\ALT_INV_WrReEn~q\ <= NOT \WrReEn~q\;
\configurator|ALT_INV_SDIO~en_q\ <= NOT \configurator|SDIO~en_q\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
ALT_INV_clockDivideBuffer(3) <= NOT clockDivideBuffer(3);
ALT_INV_clockDivideBuffer(2) <= NOT clockDivideBuffer(2);
ALT_INV_clockDivideBuffer(1) <= NOT clockDivideBuffer(1);
ALT_INV_clockDivideBuffer(0) <= NOT clockDivideBuffer(0);
ALT_INV_clockDivideBuffer(7) <= NOT clockDivideBuffer(7);
ALT_INV_clockDivideBuffer(6) <= NOT clockDivideBuffer(6);
ALT_INV_clockDivideBuffer(5) <= NOT clockDivideBuffer(5);
ALT_INV_clockDivideBuffer(4) <= NOT clockDivideBuffer(4);
\synthesizer|ALT_INV_Mux1~0_combout\ <= NOT \synthesizer|Mux1~0_combout\;
\synthesizer|ALT_INV_Mux2~0_combout\ <= NOT \synthesizer|Mux2~0_combout\;
\synthesizer|ALT_INV_Mux9~0_combout\ <= NOT \synthesizer|Mux9~0_combout\;
\synthesizer|ALT_INV_Mux10~0_combout\ <= NOT \synthesizer|Mux10~0_combout\;
\ALT_INV_innerDataClock~q\ <= NOT \innerDataClock~q\;
\synthesizer|ALT_INV_Mux11~0_combout\ <= NOT \synthesizer|Mux11~0_combout\;
\configurator|ALT_INV_nextStateRegOut[2]~6_combout\ <= NOT \configurator|nextStateRegOut[2]~6_combout\;
\configurator|ALT_INV_nextState.DONE~q\ <= NOT \configurator|nextState.DONE~q\;
\configurator|ALT_INV_nextStateRegOut[1]~5_combout\ <= NOT \configurator|nextStateRegOut[1]~5_combout\;
\configurator|ALT_INV_nextState.SEND~q\ <= NOT \configurator|nextState.SEND~q\;
\configurator|ALT_INV_nextStateRegOut[0]~4_combout\ <= NOT \configurator|nextStateRegOut[0]~4_combout\;
\configurator|ALT_INV_nextState.INTER~q\ <= NOT \configurator|nextState.INTER~q\;
\configurator|ALT_INV_nextState.DISCARD~q\ <= NOT \configurator|nextState.DISCARD~q\;
\configurator|ALT_INV_stateRegOut[2]~5_combout\ <= NOT \configurator|stateRegOut[2]~5_combout\;
\configurator|ALT_INV_state.DONE~q\ <= NOT \configurator|state.DONE~q\;
\configurator|ALT_INV_stateRegOut[1]~4_combout\ <= NOT \configurator|stateRegOut[1]~4_combout\;
\configurator|ALT_INV_state.SEND~q\ <= NOT \configurator|state.SEND~q\;
\configurator|ALT_INV_stateRegOut[0]~3_combout\ <= NOT \configurator|stateRegOut[0]~3_combout\;
\configurator|ALT_INV_state.DISCARD~q\ <= NOT \configurator|state.DISCARD~q\;
\configurator|ALT_INV_state.INTER~q\ <= NOT \configurator|state.INTER~q\;
\configurator|ALT_INV_internalClock~q\ <= NOT \configurator|internalClock~q\;
\synthesizer|ALT_INV_counter\(7) <= NOT \synthesizer|counter\(7);
\synthesizer|ALT_INV_counter\(6) <= NOT \synthesizer|counter\(6);
\synthesizer|ALT_INV_counter\(5) <= NOT \synthesizer|counter\(5);
\synthesizer|ALT_INV_counter\(4) <= NOT \synthesizer|counter\(4);
\synthesizer|ALT_INV_counter\(17) <= NOT \synthesizer|counter\(17);
\synthesizer|ALT_INV_counter\(16) <= NOT \synthesizer|counter\(16);
\synthesizer|ALT_INV_counter\(15) <= NOT \synthesizer|counter\(15);
\synthesizer|ALT_INV_counter\(9) <= NOT \synthesizer|counter\(9);
\synthesizer|ALT_INV_counter\(8) <= NOT \synthesizer|counter\(8);
\synthesizer|ALT_INV_counter\(27) <= NOT \synthesizer|counter\(27);
\synthesizer|ALT_INV_counter\(26) <= NOT \synthesizer|counter\(26);
\synthesizer|ALT_INV_counter\(25) <= NOT \synthesizer|counter\(25);
\synthesizer|ALT_INV_counter\(20) <= NOT \synthesizer|counter\(20);
\synthesizer|ALT_INV_counter\(18) <= NOT \synthesizer|counter\(18);
\synthesizer|ALT_INV_counter\(14) <= NOT \synthesizer|counter\(14);
\synthesizer|ALT_INV_counter\(13) <= NOT \synthesizer|counter\(13);
\synthesizer|ALT_INV_counter\(12) <= NOT \synthesizer|counter\(12);
\synthesizer|ALT_INV_counter\(11) <= NOT \synthesizer|counter\(11);
\synthesizer|ALT_INV_counter\(10) <= NOT \synthesizer|counter\(10);
\synthesizer|ALT_INV_counter\(24) <= NOT \synthesizer|counter\(24);
\synthesizer|ALT_INV_counter\(23) <= NOT \synthesizer|counter\(23);
\synthesizer|ALT_INV_counter\(22) <= NOT \synthesizer|counter\(22);
\synthesizer|ALT_INV_counter\(21) <= NOT \synthesizer|counter\(21);
\synthesizer|ALT_INV_counter\(19) <= NOT \synthesizer|counter\(19);
\synthesizer|ALT_INV_counter\(31) <= NOT \synthesizer|counter\(31);
\synthesizer|ALT_INV_counter\(30) <= NOT \synthesizer|counter\(30);
\synthesizer|ALT_INV_counter\(29) <= NOT \synthesizer|counter\(29);
\synthesizer|ALT_INV_counter\(28) <= NOT \synthesizer|counter\(28);
\configurator|ALT_INV_counter\(6) <= NOT \configurator|counter\(6);
\configurator|ALT_INV_dataIndex\(7) <= NOT \configurator|dataIndex\(7);
\configurator|ALT_INV_dataIndex\(6) <= NOT \configurator|dataIndex\(6);
\configurator|ALT_INV_dataIndex\(5) <= NOT \configurator|dataIndex\(5);
\configurator|ALT_INV_dataIndex\(4) <= NOT \configurator|dataIndex\(4);
\configurator|ALT_INV_counter\(4) <= NOT \configurator|counter\(4);
\configurator|ALT_INV_counter\(5) <= NOT \configurator|counter\(5);
\configurator|ALT_INV_counter\(3) <= NOT \configurator|counter\(3);
\configurator|ALT_INV_counter\(0) <= NOT \configurator|counter\(0);
\configurator|ALT_INV_dataIndex\(3) <= NOT \configurator|dataIndex\(3);
\configurator|ALT_INV_dataIndex\(2) <= NOT \configurator|dataIndex\(2);
\configurator|ALT_INV_dataIndex\(1) <= NOT \configurator|dataIndex\(1);
\configurator|ALT_INV_counter\(2) <= NOT \configurator|counter\(2);
\configurator|ALT_INV_counter\(1) <= NOT \configurator|counter\(1);
\configurator|ALT_INV_dataIndex\(0) <= NOT \configurator|dataIndex\(0);
\synthesizer|ALT_INV_Add0~113_sumout\ <= NOT \synthesizer|Add0~113_sumout\;
\synthesizer|ALT_INV_Add0~109_sumout\ <= NOT \synthesizer|Add0~109_sumout\;
\synthesizer|ALT_INV_Add0~105_sumout\ <= NOT \synthesizer|Add0~105_sumout\;
\synthesizer|ALT_INV_Add0~101_sumout\ <= NOT \synthesizer|Add0~101_sumout\;
\synthesizer|ALT_INV_Add0~97_sumout\ <= NOT \synthesizer|Add0~97_sumout\;
\synthesizer|ALT_INV_Add0~93_sumout\ <= NOT \synthesizer|Add0~93_sumout\;
\synthesizer|ALT_INV_Add0~89_sumout\ <= NOT \synthesizer|Add0~89_sumout\;
\synthesizer|ALT_INV_Add0~85_sumout\ <= NOT \synthesizer|Add0~85_sumout\;
\synthesizer|ALT_INV_Add0~81_sumout\ <= NOT \synthesizer|Add0~81_sumout\;
\synthesizer|ALT_INV_Add0~77_sumout\ <= NOT \synthesizer|Add0~77_sumout\;
\synthesizer|ALT_INV_Add0~73_sumout\ <= NOT \synthesizer|Add0~73_sumout\;
\synthesizer|ALT_INV_Add0~69_sumout\ <= NOT \synthesizer|Add0~69_sumout\;
\synthesizer|ALT_INV_Add0~65_sumout\ <= NOT \synthesizer|Add0~65_sumout\;
\synthesizer|ALT_INV_Add0~61_sumout\ <= NOT \synthesizer|Add0~61_sumout\;
\synthesizer|ALT_INV_Add0~57_sumout\ <= NOT \synthesizer|Add0~57_sumout\;
\synthesizer|ALT_INV_Add0~53_sumout\ <= NOT \synthesizer|Add0~53_sumout\;
\synthesizer|ALT_INV_Add0~49_sumout\ <= NOT \synthesizer|Add0~49_sumout\;
\synthesizer|ALT_INV_Add0~45_sumout\ <= NOT \synthesizer|Add0~45_sumout\;
\synthesizer|ALT_INV_Add0~41_sumout\ <= NOT \synthesizer|Add0~41_sumout\;
\synthesizer|ALT_INV_Add0~37_sumout\ <= NOT \synthesizer|Add0~37_sumout\;
\synthesizer|ALT_INV_Add0~33_sumout\ <= NOT \synthesizer|Add0~33_sumout\;
\synthesizer|ALT_INV_Add0~29_sumout\ <= NOT \synthesizer|Add0~29_sumout\;
\synthesizer|ALT_INV_Add0~25_sumout\ <= NOT \synthesizer|Add0~25_sumout\;
\synthesizer|ALT_INV_Add0~21_sumout\ <= NOT \synthesizer|Add0~21_sumout\;
\synthesizer|ALT_INV_Add0~17_sumout\ <= NOT \synthesizer|Add0~17_sumout\;
\synthesizer|ALT_INV_Add0~13_sumout\ <= NOT \synthesizer|Add0~13_sumout\;
\synthesizer|ALT_INV_Add0~9_sumout\ <= NOT \synthesizer|Add0~9_sumout\;
\synthesizer|ALT_INV_Add0~5_sumout\ <= NOT \synthesizer|Add0~5_sumout\;
\configurator|ALT_INV_clockDividerBuffer\(3) <= NOT \configurator|clockDividerBuffer\(3);
\configurator|ALT_INV_clockDividerBuffer\(4) <= NOT \configurator|clockDividerBuffer\(4);
\configurator|ALT_INV_clockDividerBuffer\(5) <= NOT \configurator|clockDividerBuffer\(5);
\configurator|ALT_INV_clockDividerBuffer\(6) <= NOT \configurator|clockDividerBuffer\(6);
\configurator|ALT_INV_clockDividerBuffer\(7) <= NOT \configurator|clockDividerBuffer\(7);
\configurator|ALT_INV_clockDividerBuffer\(0) <= NOT \configurator|clockDividerBuffer\(0);
\configurator|ALT_INV_clockDividerBuffer\(1) <= NOT \configurator|clockDividerBuffer\(1);
\configurator|ALT_INV_clockDividerBuffer\(2) <= NOT \configurator|clockDividerBuffer\(2);
\synthesizer|ALT_INV_counter\(3) <= NOT \synthesizer|counter\(3);
\synthesizer|ALT_INV_counter\(2) <= NOT \synthesizer|counter\(2);
\synthesizer|ALT_INV_counter\(1) <= NOT \synthesizer|counter\(1);
\synthesizer|ALT_INV_counter\(0) <= NOT \synthesizer|counter\(0);

-- Location: IOOBUF_X68_Y37_N39
\sdio~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \configurator|SDIO~reg0_q\,
	oe => \configurator|ALT_INV_SDIO~en_q\,
	devoe => ww_devoe,
	o => ww_sdio);

-- Location: IOOBUF_X40_Y61_N76
\output_p[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \synthesizer|output_p\(0),
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
	i => \synthesizer|output_p\(1),
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
	i => \synthesizer|output_p\(2),
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
	i => \synthesizer|output_p\(3),
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
	i => \synthesizer|output_p\(4),
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
	i => \synthesizer|output_p\(5),
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
	i => \synthesizer|output_p\(6),
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
	i => \synthesizer|output_p\(7),
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
	i => \synthesizer|output_p\(8),
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
	i => \synthesizer|output_p\(9),
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
	i => \synthesizer|output_p\(10),
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
	i => \synthesizer|output_p\(11),
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
	i => \synthesizer|output_p\(12),
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
	i => \synthesizer|output_p\(13),
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
	i => \synthesizer|output_p\(14),
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
	i => \synthesizer|output_p\(15),
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

-- Location: IOOBUF_X21_Y61_N36
\WrReState~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \WrReState~reg0_q\,
	devoe => ww_devoe,
	o => ww_WrReState);

-- Location: IOOBUF_X12_Y61_N19
\ClkOut~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \configurator|CLKRECEIVED~0_combout\,
	devoe => ww_devoe,
	o => ww_ClkOut);

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
	i => \configurator|ALT_INV_nextStateRegOut[0]~4_combout\,
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
	i => \configurator|ALT_INV_nextStateRegOut[1]~5_combout\,
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
	i => \configurator|ALT_INV_nextStateRegOut[2]~6_combout\,
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

-- Location: MLABCELL_X37_Y54_N30
\configurator|Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~9_sumout\ = SUM(( \configurator|clockDividerBuffer\(0) ) + ( VCC ) + ( !VCC ))
-- \configurator|Add4~10\ = CARRY(( \configurator|clockDividerBuffer\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_clockDividerBuffer\(0),
	cin => GND,
	sumout => \configurator|Add4~9_sumout\,
	cout => \configurator|Add4~10\);

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

-- Location: MLABCELL_X37_Y54_N33
\configurator|Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~5_sumout\ = SUM(( \configurator|clockDividerBuffer\(1) ) + ( GND ) + ( \configurator|Add4~10\ ))
-- \configurator|Add4~6\ = CARRY(( \configurator|clockDividerBuffer\(1) ) + ( GND ) + ( \configurator|Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_clockDividerBuffer\(1),
	cin => \configurator|Add4~10\,
	sumout => \configurator|Add4~5_sumout\,
	cout => \configurator|Add4~6\);

-- Location: MLABCELL_X37_Y54_N36
\configurator|Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~1_sumout\ = SUM(( \configurator|clockDividerBuffer\(2) ) + ( GND ) + ( \configurator|Add4~6\ ))
-- \configurator|Add4~2\ = CARRY(( \configurator|clockDividerBuffer\(2) ) + ( GND ) + ( \configurator|Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_clockDividerBuffer\(2),
	cin => \configurator|Add4~6\,
	sumout => \configurator|Add4~1_sumout\,
	cout => \configurator|Add4~2\);

-- Location: FF_X37_Y54_N38
\configurator|clockDividerBuffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \configurator|Add4~1_sumout\,
	clrn => \resetn~input_o\,
	sclr => \configurator|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(2));

-- Location: MLABCELL_X37_Y54_N39
\configurator|Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~29_sumout\ = SUM(( \configurator|clockDividerBuffer\(3) ) + ( GND ) + ( \configurator|Add4~2\ ))
-- \configurator|Add4~30\ = CARRY(( \configurator|clockDividerBuffer\(3) ) + ( GND ) + ( \configurator|Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_clockDividerBuffer\(3),
	cin => \configurator|Add4~2\,
	sumout => \configurator|Add4~29_sumout\,
	cout => \configurator|Add4~30\);

-- Location: FF_X37_Y54_N41
\configurator|clockDividerBuffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \configurator|Add4~29_sumout\,
	clrn => \resetn~input_o\,
	sclr => \configurator|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(3));

-- Location: MLABCELL_X37_Y54_N42
\configurator|Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~25_sumout\ = SUM(( \configurator|clockDividerBuffer\(4) ) + ( GND ) + ( \configurator|Add4~30\ ))
-- \configurator|Add4~26\ = CARRY(( \configurator|clockDividerBuffer\(4) ) + ( GND ) + ( \configurator|Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_clockDividerBuffer\(4),
	cin => \configurator|Add4~30\,
	sumout => \configurator|Add4~25_sumout\,
	cout => \configurator|Add4~26\);

-- Location: FF_X37_Y54_N43
\configurator|clockDividerBuffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \configurator|Add4~25_sumout\,
	clrn => \resetn~input_o\,
	sclr => \configurator|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(4));

-- Location: MLABCELL_X37_Y54_N45
\configurator|Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~21_sumout\ = SUM(( \configurator|clockDividerBuffer\(5) ) + ( GND ) + ( \configurator|Add4~26\ ))
-- \configurator|Add4~22\ = CARRY(( \configurator|clockDividerBuffer\(5) ) + ( GND ) + ( \configurator|Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_clockDividerBuffer\(5),
	cin => \configurator|Add4~26\,
	sumout => \configurator|Add4~21_sumout\,
	cout => \configurator|Add4~22\);

-- Location: FF_X37_Y54_N47
\configurator|clockDividerBuffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \configurator|Add4~21_sumout\,
	clrn => \resetn~input_o\,
	sclr => \configurator|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(5));

-- Location: MLABCELL_X37_Y54_N48
\configurator|Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~17_sumout\ = SUM(( \configurator|clockDividerBuffer\(6) ) + ( GND ) + ( \configurator|Add4~22\ ))
-- \configurator|Add4~18\ = CARRY(( \configurator|clockDividerBuffer\(6) ) + ( GND ) + ( \configurator|Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_clockDividerBuffer\(6),
	cin => \configurator|Add4~22\,
	sumout => \configurator|Add4~17_sumout\,
	cout => \configurator|Add4~18\);

-- Location: FF_X37_Y54_N50
\configurator|clockDividerBuffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \configurator|Add4~17_sumout\,
	clrn => \resetn~input_o\,
	sclr => \configurator|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(6));

-- Location: MLABCELL_X37_Y54_N51
\configurator|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add4~13_sumout\ = SUM(( \configurator|clockDividerBuffer\(7) ) + ( GND ) + ( \configurator|Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_clockDividerBuffer\(7),
	cin => \configurator|Add4~18\,
	sumout => \configurator|Add4~13_sumout\);

-- Location: FF_X37_Y54_N53
\configurator|clockDividerBuffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \configurator|Add4~13_sumout\,
	clrn => \resetn~input_o\,
	sclr => \configurator|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(7));

-- Location: MLABCELL_X37_Y54_N15
\configurator|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Equal1~0_combout\ = ( \configurator|clockDividerBuffer\(4) & ( !\configurator|clockDividerBuffer\(7) & ( (\configurator|clockDividerBuffer\(5) & (!\configurator|clockDividerBuffer\(3) & !\configurator|clockDividerBuffer\(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_clockDividerBuffer\(5),
	datac => \configurator|ALT_INV_clockDividerBuffer\(3),
	datad => \configurator|ALT_INV_clockDividerBuffer\(6),
	datae => \configurator|ALT_INV_clockDividerBuffer\(4),
	dataf => \configurator|ALT_INV_clockDividerBuffer\(7),
	combout => \configurator|Equal1~0_combout\);

-- Location: MLABCELL_X37_Y54_N6
\configurator|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Equal1~1_combout\ = ( !\configurator|clockDividerBuffer\(2) & ( \configurator|Equal1~0_combout\ & ( (!\configurator|clockDividerBuffer\(0) & \configurator|clockDividerBuffer\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_clockDividerBuffer\(0),
	datac => \configurator|ALT_INV_clockDividerBuffer\(1),
	datae => \configurator|ALT_INV_clockDividerBuffer\(2),
	dataf => \configurator|ALT_INV_Equal1~0_combout\,
	combout => \configurator|Equal1~1_combout\);

-- Location: FF_X37_Y54_N32
\configurator|clockDividerBuffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \configurator|Add4~9_sumout\,
	clrn => \resetn~input_o\,
	sclr => \configurator|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(0));

-- Location: FF_X37_Y54_N35
\configurator|clockDividerBuffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \configurator|Add4~5_sumout\,
	clrn => \resetn~input_o\,
	sclr => \configurator|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|clockDividerBuffer\(1));

-- Location: MLABCELL_X37_Y54_N54
\configurator|internalClock~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|internalClock~0_combout\ = ( \configurator|clockDividerBuffer\(2) & ( \configurator|Equal1~0_combout\ & ( \configurator|internalClock~q\ ) ) ) # ( !\configurator|clockDividerBuffer\(2) & ( \configurator|Equal1~0_combout\ & ( 
-- !\configurator|internalClock~q\ $ (((!\configurator|clockDividerBuffer\(1)) # (\configurator|clockDividerBuffer\(0)))) ) ) ) # ( \configurator|clockDividerBuffer\(2) & ( !\configurator|Equal1~0_combout\ & ( \configurator|internalClock~q\ ) ) ) # ( 
-- !\configurator|clockDividerBuffer\(2) & ( !\configurator|Equal1~0_combout\ & ( \configurator|internalClock~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101011010010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_internalClock~q\,
	datac => \configurator|ALT_INV_clockDividerBuffer\(1),
	datad => \configurator|ALT_INV_clockDividerBuffer\(0),
	datae => \configurator|ALT_INV_clockDividerBuffer\(2),
	dataf => \configurator|ALT_INV_Equal1~0_combout\,
	combout => \configurator|internalClock~0_combout\);

-- Location: MLABCELL_X37_Y54_N3
\configurator|internalClock~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|internalClock~feeder_combout\ = ( \configurator|internalClock~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \configurator|ALT_INV_internalClock~0_combout\,
	combout => \configurator|internalClock~feeder_combout\);

-- Location: FF_X37_Y54_N5
\configurator|internalClock\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~input_o\,
	d => \configurator|internalClock~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|internalClock~q\);

-- Location: LABCELL_X38_Y53_N30
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

-- Location: LABCELL_X38_Y53_N39
\configurator|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~13_sumout\ = SUM(( \configurator|dataIndex\(3) ) + ( GND ) + ( \configurator|Add2~10\ ))
-- \configurator|Add2~14\ = CARRY(( \configurator|dataIndex\(3) ) + ( GND ) + ( \configurator|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_dataIndex\(3),
	cin => \configurator|Add2~10\,
	sumout => \configurator|Add2~13_sumout\,
	cout => \configurator|Add2~14\);

-- Location: LABCELL_X38_Y53_N42
\configurator|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~17_sumout\ = SUM(( \configurator|dataIndex\(4) ) + ( GND ) + ( \configurator|Add2~14\ ))
-- \configurator|Add2~18\ = CARRY(( \configurator|dataIndex\(4) ) + ( GND ) + ( \configurator|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_dataIndex\(4),
	cin => \configurator|Add2~14\,
	sumout => \configurator|Add2~17_sumout\,
	cout => \configurator|Add2~18\);

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

-- Location: LABCELL_X38_Y53_N45
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

-- Location: FF_X37_Y53_N29
\configurator|dataIndex[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|Add2~21_sumout\,
	clrn => \resetn~input_o\,
	sclr => \configurator|dataIndex[0]~0_combout\,
	sload => VCC,
	ena => \configurator|dataIndex[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(5));

-- Location: LABCELL_X38_Y53_N48
\configurator|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~25_sumout\ = SUM(( \configurator|dataIndex\(6) ) + ( GND ) + ( \configurator|Add2~22\ ))
-- \configurator|Add2~26\ = CARRY(( \configurator|dataIndex\(6) ) + ( GND ) + ( \configurator|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_dataIndex\(6),
	cin => \configurator|Add2~22\,
	sumout => \configurator|Add2~25_sumout\,
	cout => \configurator|Add2~26\);

-- Location: FF_X37_Y53_N59
\configurator|dataIndex[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|Add2~25_sumout\,
	clrn => \resetn~input_o\,
	sclr => \configurator|dataIndex[0]~0_combout\,
	sload => VCC,
	ena => \configurator|dataIndex[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(6));

-- Location: LABCELL_X38_Y53_N51
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

-- Location: FF_X37_Y53_N20
\configurator|dataIndex[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|Add2~29_sumout\,
	clrn => \resetn~input_o\,
	sclr => \configurator|dataIndex[0]~0_combout\,
	sload => VCC,
	ena => \configurator|dataIndex[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(7));

-- Location: MLABCELL_X37_Y53_N3
\configurator|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|LessThan0~1_combout\ = (!\configurator|dataIndex\(7) & (!\configurator|dataIndex\(6) & !\configurator|dataIndex\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(7),
	datab => \configurator|ALT_INV_dataIndex\(6),
	datac => \configurator|ALT_INV_dataIndex\(5),
	combout => \configurator|LessThan0~1_combout\);

-- Location: LABCELL_X38_Y53_N0
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

-- Location: LABCELL_X36_Y53_N3
\configurator|counter[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|counter[6]~0_combout\ = ( \configurator|LessThan1~1_combout\ & ( \configurator|sendData~DUPLICATE_q\ ) ) # ( !\configurator|LessThan1~1_combout\ & ( (!\configurator|LessThan0~1_combout\ & \configurator|sendData~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_LessThan0~1_combout\,
	datad => \configurator|ALT_INV_sendData~DUPLICATE_q\,
	dataf => \configurator|ALT_INV_LessThan1~1_combout\,
	combout => \configurator|counter[6]~0_combout\);

-- Location: FF_X36_Y53_N50
\configurator|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|Add3~9_sumout\,
	clrn => \resetn~input_o\,
	sclr => \configurator|LessThan2~0_combout\,
	sload => VCC,
	ena => \configurator|counter[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|counter\(0));

-- Location: LABCELL_X38_Y53_N3
\configurator|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add3~1_sumout\ = SUM(( \configurator|counter\(1) ) + ( GND ) + ( \configurator|Add3~10\ ))
-- \configurator|Add3~2\ = CARRY(( \configurator|counter\(1) ) + ( GND ) + ( \configurator|Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_counter\(1),
	cin => \configurator|Add3~10\,
	sumout => \configurator|Add3~1_sumout\,
	cout => \configurator|Add3~2\);

-- Location: FF_X36_Y53_N32
\configurator|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|Add3~1_sumout\,
	clrn => \resetn~input_o\,
	sclr => \configurator|LessThan2~0_combout\,
	sload => VCC,
	ena => \configurator|counter[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|counter\(1));

-- Location: LABCELL_X38_Y53_N6
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

-- Location: FF_X36_Y53_N29
\configurator|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|Add3~5_sumout\,
	clrn => \resetn~input_o\,
	sclr => \configurator|LessThan2~0_combout\,
	sload => VCC,
	ena => \configurator|counter[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|counter\(2));

-- Location: LABCELL_X38_Y53_N9
\configurator|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add3~13_sumout\ = SUM(( \configurator|counter\(3) ) + ( GND ) + ( \configurator|Add3~6\ ))
-- \configurator|Add3~14\ = CARRY(( \configurator|counter\(3) ) + ( GND ) + ( \configurator|Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_counter\(3),
	cin => \configurator|Add3~6\,
	sumout => \configurator|Add3~13_sumout\,
	cout => \configurator|Add3~14\);

-- Location: FF_X36_Y53_N38
\configurator|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|Add3~13_sumout\,
	clrn => \resetn~input_o\,
	sclr => \configurator|LessThan2~0_combout\,
	sload => VCC,
	ena => \configurator|counter[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|counter\(3));

-- Location: LABCELL_X38_Y53_N12
\configurator|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add3~21_sumout\ = SUM(( \configurator|counter\(4) ) + ( GND ) + ( \configurator|Add3~14\ ))
-- \configurator|Add3~22\ = CARRY(( \configurator|counter\(4) ) + ( GND ) + ( \configurator|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_counter\(4),
	cin => \configurator|Add3~14\,
	sumout => \configurator|Add3~21_sumout\,
	cout => \configurator|Add3~22\);

-- Location: FF_X36_Y53_N35
\configurator|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|Add3~21_sumout\,
	clrn => \resetn~input_o\,
	sclr => \configurator|LessThan2~0_combout\,
	sload => VCC,
	ena => \configurator|counter[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|counter\(4));

-- Location: LABCELL_X38_Y53_N15
\configurator|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add3~17_sumout\ = SUM(( \configurator|counter\(5) ) + ( GND ) + ( \configurator|Add3~22\ ))
-- \configurator|Add3~18\ = CARRY(( \configurator|counter\(5) ) + ( GND ) + ( \configurator|Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(5),
	cin => \configurator|Add3~22\,
	sumout => \configurator|Add3~17_sumout\,
	cout => \configurator|Add3~18\);

-- Location: FF_X36_Y53_N59
\configurator|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|Add3~17_sumout\,
	clrn => \resetn~input_o\,
	sclr => \configurator|LessThan2~0_combout\,
	sload => VCC,
	ena => \configurator|counter[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|counter\(5));

-- Location: LABCELL_X38_Y53_N18
\configurator|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add3~25_sumout\ = SUM(( \configurator|counter\(6) ) + ( GND ) + ( \configurator|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_counter\(6),
	cin => \configurator|Add3~18\,
	sumout => \configurator|Add3~25_sumout\);

-- Location: FF_X36_Y53_N23
\configurator|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|Add3~25_sumout\,
	clrn => \resetn~input_o\,
	sclr => \configurator|LessThan2~0_combout\,
	sload => VCC,
	ena => \configurator|counter[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|counter\(6));

-- Location: LABCELL_X36_Y53_N21
\configurator|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|LessThan2~0_combout\ = ( \configurator|counter\(4) & ( (\configurator|counter\(6)) # (\configurator|counter\(5)) ) ) # ( !\configurator|counter\(4) & ( \configurator|counter\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_counter\(5),
	datad => \configurator|ALT_INV_counter\(6),
	dataf => \configurator|ALT_INV_counter\(4),
	combout => \configurator|LessThan2~0_combout\);

-- Location: LABCELL_X36_Y52_N18
\configurator|configOK~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|configOK~0_combout\ = ( \configurator|configOK~reg0_q\ & ( \configurator|sendData~DUPLICATE_q\ ) ) # ( !\configurator|configOK~reg0_q\ & ( \configurator|sendData~DUPLICATE_q\ & ( (\configurator|LessThan2~0_combout\ & 
-- ((!\configurator|LessThan0~1_combout\) # (\configurator|LessThan1~1_combout\))) ) ) ) # ( \configurator|configOK~reg0_q\ & ( !\configurator|sendData~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001011000010111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_LessThan0~1_combout\,
	datab => \configurator|ALT_INV_LessThan1~1_combout\,
	datac => \configurator|ALT_INV_LessThan2~0_combout\,
	datae => \configurator|ALT_INV_configOK~reg0_q\,
	dataf => \configurator|ALT_INV_sendData~DUPLICATE_q\,
	combout => \configurator|configOK~0_combout\);

-- Location: LABCELL_X36_Y52_N45
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

-- Location: FF_X36_Y52_N47
\configurator|configOK~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	d => \configurator|configOK~reg0feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|configOK~reg0_q\);

-- Location: LABCELL_X36_Y52_N24
\configurator|waitingBuffer[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|waitingBuffer[0]~2_combout\ = ( !\configurator|waitingBuffer\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \configurator|ALT_INV_waitingBuffer\(0),
	combout => \configurator|waitingBuffer[0]~2_combout\);

-- Location: LABCELL_X36_Y52_N3
\configurator|waitingBuffer[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|waitingBuffer[0]~feeder_combout\ = ( \configurator|waitingBuffer[0]~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \configurator|ALT_INV_waitingBuffer[0]~2_combout\,
	combout => \configurator|waitingBuffer[0]~feeder_combout\);

-- Location: FF_X37_Y53_N53
\configurator|discarding\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	asdata => \configurator|state.DISCARD~DUPLICATE_q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|discarding~q\);

-- Location: LABCELL_X36_Y52_N54
\configurator|needWait~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|needWait~0_combout\ = ( \configurator|sendData~DUPLICATE_q\ & ( (!\configurator|discarding~q\ & ((!\configurator|LessThan0~1_combout\) # (\configurator|LessThan1~1_combout\))) ) ) # ( !\configurator|sendData~DUPLICATE_q\ & ( 
-- (\configurator|needWait~q\ & !\configurator|discarding~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010011000000110011001100000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_needWait~q\,
	datab => \configurator|ALT_INV_discarding~q\,
	datac => \configurator|ALT_INV_LessThan0~1_combout\,
	datad => \configurator|ALT_INV_LessThan1~1_combout\,
	dataf => \configurator|ALT_INV_sendData~DUPLICATE_q\,
	combout => \configurator|needWait~0_combout\);

-- Location: FF_X36_Y52_N56
\configurator|needWait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	d => \configurator|needWait~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|needWait~q\);

-- Location: LABCELL_X33_Y53_N42
\configurator|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Selector1~0_combout\ = ( \configurator|configOK~reg0_q\ & ( \configurator|state.INTER~DUPLICATE_q\ & ( !\configurator|waitingDone~q\ ) ) ) # ( !\configurator|configOK~reg0_q\ & ( \configurator|state.INTER~DUPLICATE_q\ & ( 
-- (!\configurator|waitingDone~q\) # ((\configurator|needWait~q\ & (!\writeconfig~input_o\ & \configurator|state.SEND~DUPLICATE_q\))) ) ) ) # ( !\configurator|configOK~reg0_q\ & ( !\configurator|state.INTER~DUPLICATE_q\ & ( (\configurator|needWait~q\ & 
-- (!\writeconfig~input_o\ & \configurator|state.SEND~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000000000010101010101110101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_waitingDone~q\,
	datab => \configurator|ALT_INV_needWait~q\,
	datac => \ALT_INV_writeconfig~input_o\,
	datad => \configurator|ALT_INV_state.SEND~DUPLICATE_q\,
	datae => \configurator|ALT_INV_configOK~reg0_q\,
	dataf => \configurator|ALT_INV_state.INTER~DUPLICATE_q\,
	combout => \configurator|Selector1~0_combout\);

-- Location: FF_X33_Y53_N44
\configurator|nextState.INTER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inputClock~inputCLKENA0_outclk\,
	d => \configurator|Selector1~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|nextState.INTER~q\);

-- Location: LABCELL_X33_Y53_N18
\configurator|state.INTER~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|state.INTER~feeder_combout\ = ( \configurator|nextState.INTER~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \configurator|ALT_INV_nextState.INTER~q\,
	combout => \configurator|state.INTER~feeder_combout\);

-- Location: FF_X33_Y53_N20
\configurator|state.INTER~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \configurator|state.INTER~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|state.INTER~DUPLICATE_q\);

-- Location: FF_X37_Y53_N50
\configurator|waiting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	asdata => \configurator|state.INTER~DUPLICATE_q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|waiting~q\);

-- Location: FF_X36_Y52_N5
\configurator|waitingBuffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	d => \configurator|waitingBuffer[0]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \configurator|waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|waitingBuffer\(0));

-- Location: LABCELL_X36_Y52_N30
\configurator|waitingBuffer[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|waitingBuffer[1]~1_combout\ = ( \configurator|waiting~q\ & ( \configurator|waitingBuffer\(1) & ( !\configurator|waitingBuffer\(0) ) ) ) # ( !\configurator|waiting~q\ & ( \configurator|waitingBuffer\(1) ) ) # ( \configurator|waiting~q\ & ( 
-- !\configurator|waitingBuffer\(1) & ( \configurator|waitingBuffer\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_waitingBuffer\(0),
	datae => \configurator|ALT_INV_waiting~q\,
	dataf => \configurator|ALT_INV_waitingBuffer\(1),
	combout => \configurator|waitingBuffer[1]~1_combout\);

-- Location: LABCELL_X36_Y52_N9
\configurator|waitingBuffer[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|waitingBuffer[1]~feeder_combout\ = ( \configurator|waitingBuffer[1]~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \configurator|ALT_INV_waitingBuffer[1]~1_combout\,
	combout => \configurator|waitingBuffer[1]~feeder_combout\);

-- Location: FF_X36_Y52_N11
\configurator|waitingBuffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	d => \configurator|waitingBuffer[1]~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|waitingBuffer\(1));

-- Location: LABCELL_X36_Y52_N48
\configurator|waitingBuffer[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|waitingBuffer[2]~0_combout\ = ( \configurator|waiting~q\ & ( \configurator|waitingBuffer\(2) & ( (!\configurator|waitingBuffer\(0)) # (!\configurator|waitingBuffer\(1)) ) ) ) # ( !\configurator|waiting~q\ & ( \configurator|waitingBuffer\(2) 
-- ) ) # ( \configurator|waiting~q\ & ( !\configurator|waitingBuffer\(2) & ( (\configurator|waitingBuffer\(0) & \configurator|waitingBuffer\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001111111111111111111111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_waitingBuffer\(0),
	datad => \configurator|ALT_INV_waitingBuffer\(1),
	datae => \configurator|ALT_INV_waiting~q\,
	dataf => \configurator|ALT_INV_waitingBuffer\(2),
	combout => \configurator|waitingBuffer[2]~0_combout\);

-- Location: LABCELL_X36_Y52_N12
\configurator|waitingBuffer[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|waitingBuffer[2]~feeder_combout\ = ( \configurator|waitingBuffer[2]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \configurator|ALT_INV_waitingBuffer[2]~0_combout\,
	combout => \configurator|waitingBuffer[2]~feeder_combout\);

-- Location: FF_X36_Y52_N14
\configurator|waitingBuffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	d => \configurator|waitingBuffer[2]~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|waitingBuffer\(2));

-- Location: LABCELL_X36_Y52_N27
\configurator|waitingDone~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|waitingDone~0_combout\ = ( \configurator|waitingBuffer\(0) & ( (\configurator|waitingBuffer\(1) & (\configurator|waitingBuffer\(2) & \configurator|waiting~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_waitingBuffer\(1),
	datab => \configurator|ALT_INV_waitingBuffer\(2),
	datad => \configurator|ALT_INV_waiting~q\,
	dataf => \configurator|ALT_INV_waitingBuffer\(0),
	combout => \configurator|waitingDone~0_combout\);

-- Location: FF_X36_Y52_N29
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

-- Location: FF_X33_Y53_N19
\configurator|state.INTER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \configurator|state.INTER~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|state.INTER~q\);

-- Location: FF_X33_Y53_N52
\configurator|state.DISCARD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	asdata => \configurator|nextState.DISCARD~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|state.DISCARD~q\);

-- Location: LABCELL_X33_Y53_N9
\configurator|nextState~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|nextState~9_combout\ = ( \configurator|state.INTER~DUPLICATE_q\ ) # ( !\configurator|state.INTER~DUPLICATE_q\ & ( (!\writeconfig~input_o\) # (\configurator|state.DISCARD~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_writeconfig~input_o\,
	datad => \configurator|ALT_INV_state.DISCARD~q\,
	dataf => \configurator|ALT_INV_state.INTER~DUPLICATE_q\,
	combout => \configurator|nextState~9_combout\);

-- Location: FF_X33_Y53_N11
\configurator|nextState.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inputClock~inputCLKENA0_outclk\,
	d => \configurator|nextState~9_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|nextState.IDLE~q\);

-- Location: LABCELL_X33_Y53_N21
\configurator|state.IDLE~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|state.IDLE~feeder_combout\ = ( \configurator|nextState.IDLE~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \configurator|ALT_INV_nextState.IDLE~q\,
	combout => \configurator|state.IDLE~feeder_combout\);

-- Location: FF_X33_Y53_N23
\configurator|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	d => \configurator|state.IDLE~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|state.IDLE~q\);

-- Location: MLABCELL_X37_Y53_N27
\configurator|discardBuffer~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|discardBuffer~0_combout\ = ( \configurator|discarding~q\ & ( (!\configurator|waiting~q\ & !\configurator|discardBuffer~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_waiting~q\,
	datac => \configurator|ALT_INV_discardBuffer~reg0_q\,
	dataf => \configurator|ALT_INV_discarding~q\,
	combout => \configurator|discardBuffer~0_combout\);

-- Location: FF_X37_Y53_N44
\configurator|discardBuffer~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|discardBuffer~0_combout\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|discardBuffer~reg0_q\);

-- Location: MLABCELL_X37_Y53_N30
\configurator|discarded~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|discarded~0_combout\ = ( \configurator|discarded~q\ & ( !\configurator|waiting~q\ ) ) # ( !\configurator|discarded~q\ & ( (!\configurator|waiting~q\ & \configurator|discardBuffer~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_waiting~q\,
	datad => \configurator|ALT_INV_discardBuffer~reg0_q\,
	dataf => \configurator|ALT_INV_discarded~q\,
	combout => \configurator|discarded~0_combout\);

-- Location: FF_X37_Y53_N11
\configurator|discarded\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|discarded~0_combout\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|discarded~q\);

-- Location: LABCELL_X33_Y53_N30
\configurator|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Selector2~0_combout\ = ( \configurator|state.IDLE~q\ & ( \configurator|discarded~q\ & ( (\configurator|waitingDone~q\ & \configurator|state.INTER~q\) ) ) ) # ( !\configurator|state.IDLE~q\ & ( \configurator|discarded~q\ & ( 
-- (!\writeconfig~input_o\) # ((\configurator|waitingDone~q\ & \configurator|state.INTER~q\)) ) ) ) # ( \configurator|state.IDLE~q\ & ( !\configurator|discarded~q\ & ( ((\configurator|waitingDone~q\ & \configurator|state.INTER~q\)) # 
-- (\configurator|state.DISCARD~DUPLICATE_q\) ) ) ) # ( !\configurator|state.IDLE~q\ & ( !\configurator|discarded~q\ & ( ((!\writeconfig~input_o\) # ((\configurator|waitingDone~q\ & \configurator|state.INTER~q\))) # (\configurator|state.DISCARD~DUPLICATE_q\) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100011111000111110001111111111111000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_waitingDone~q\,
	datab => \configurator|ALT_INV_state.INTER~q\,
	datac => \configurator|ALT_INV_state.DISCARD~DUPLICATE_q\,
	datad => \ALT_INV_writeconfig~input_o\,
	datae => \configurator|ALT_INV_state.IDLE~q\,
	dataf => \configurator|ALT_INV_discarded~q\,
	combout => \configurator|Selector2~0_combout\);

-- Location: FF_X33_Y53_N32
\configurator|nextState.DISCARD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inputClock~inputCLKENA0_outclk\,
	d => \configurator|Selector2~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|nextState.DISCARD~q\);

-- Location: FF_X33_Y53_N53
\configurator|state.DISCARD~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	asdata => \configurator|nextState.DISCARD~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|state.DISCARD~DUPLICATE_q\);

-- Location: LABCELL_X33_Y53_N36
\configurator|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Selector0~0_combout\ = ( \configurator|needWait~q\ & ( \configurator|discarded~q\ & ( \configurator|state.DISCARD~DUPLICATE_q\ ) ) ) # ( !\configurator|needWait~q\ & ( \configurator|discarded~q\ & ( ((!\writeconfig~input_o\ & 
-- (!\configurator|configOK~reg0_q\ & \configurator|state.SEND~DUPLICATE_q\))) # (\configurator|state.DISCARD~DUPLICATE_q\) ) ) ) # ( !\configurator|needWait~q\ & ( !\configurator|discarded~q\ & ( (!\writeconfig~input_o\ & (!\configurator|configOK~reg0_q\ & 
-- \configurator|state.SEND~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000000000000000001111100011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_writeconfig~input_o\,
	datab => \configurator|ALT_INV_configOK~reg0_q\,
	datac => \configurator|ALT_INV_state.DISCARD~DUPLICATE_q\,
	datad => \configurator|ALT_INV_state.SEND~DUPLICATE_q\,
	datae => \configurator|ALT_INV_needWait~q\,
	dataf => \configurator|ALT_INV_discarded~q\,
	combout => \configurator|Selector0~0_combout\);

-- Location: FF_X33_Y53_N38
\configurator|nextState.SEND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inputClock~inputCLKENA0_outclk\,
	d => \configurator|Selector0~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|nextState.SEND~q\);

-- Location: FF_X33_Y53_N14
\configurator|state.SEND~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	asdata => \configurator|nextState.SEND~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|state.SEND~DUPLICATE_q\);

-- Location: FF_X36_Y53_N47
\configurator|sendData~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	asdata => \configurator|state.SEND~DUPLICATE_q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|sendData~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y53_N9
\configurator|dataIndex[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|dataIndex[0]~1_combout\ = ( \configurator|discarding~q\ ) # ( !\configurator|discarding~q\ & ( \configurator|sendData~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_sendData~DUPLICATE_q\,
	dataf => \configurator|ALT_INV_discarding~q\,
	combout => \configurator|dataIndex[0]~1_combout\);

-- Location: FF_X37_Y53_N35
\configurator|dataIndex[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|Add2~17_sumout\,
	clrn => \resetn~input_o\,
	sclr => \configurator|dataIndex[0]~0_combout\,
	sload => VCC,
	ena => \configurator|dataIndex[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(4));

-- Location: MLABCELL_X37_Y53_N39
\configurator|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|LessThan1~1_combout\ = ( \configurator|dataIndex\(3) & ( \configurator|dataIndex\(4) ) ) # ( !\configurator|dataIndex\(3) & ( (\configurator|dataIndex\(1) & (\configurator|dataIndex\(0) & (\configurator|dataIndex\(4) & 
-- \configurator|dataIndex\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(1),
	datab => \configurator|ALT_INV_dataIndex\(0),
	datac => \configurator|ALT_INV_dataIndex\(4),
	datad => \configurator|ALT_INV_dataIndex\(2),
	dataf => \configurator|ALT_INV_dataIndex\(3),
	combout => \configurator|LessThan1~1_combout\);

-- Location: MLABCELL_X37_Y53_N15
\configurator|dataIndex[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|dataIndex[0]~0_combout\ = ( \configurator|discarding~q\ ) # ( !\configurator|discarding~q\ & ( (!\configurator|LessThan0~1_combout\) # (\configurator|LessThan1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_LessThan1~1_combout\,
	datad => \configurator|ALT_INV_LessThan0~1_combout\,
	dataf => \configurator|ALT_INV_discarding~q\,
	combout => \configurator|dataIndex[0]~0_combout\);

-- Location: FF_X37_Y53_N14
\configurator|dataIndex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|Add2~1_sumout\,
	clrn => \resetn~input_o\,
	sclr => \configurator|dataIndex[0]~0_combout\,
	sload => VCC,
	ena => \configurator|dataIndex[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(0));

-- Location: LABCELL_X38_Y53_N33
\configurator|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~5_sumout\ = SUM(( \configurator|dataIndex\(1) ) + ( GND ) + ( \configurator|Add2~2\ ))
-- \configurator|Add2~6\ = CARRY(( \configurator|dataIndex\(1) ) + ( GND ) + ( \configurator|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_dataIndex\(1),
	cin => \configurator|Add2~2\,
	sumout => \configurator|Add2~5_sumout\,
	cout => \configurator|Add2~6\);

-- Location: FF_X37_Y53_N23
\configurator|dataIndex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|Add2~5_sumout\,
	clrn => \resetn~input_o\,
	sclr => \configurator|dataIndex[0]~0_combout\,
	sload => VCC,
	ena => \configurator|dataIndex[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(1));

-- Location: LABCELL_X38_Y53_N36
\configurator|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Add2~9_sumout\ = SUM(( \configurator|dataIndex\(2) ) + ( GND ) + ( \configurator|Add2~6\ ))
-- \configurator|Add2~10\ = CARRY(( \configurator|dataIndex\(2) ) + ( GND ) + ( \configurator|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \configurator|ALT_INV_dataIndex\(2),
	cin => \configurator|Add2~6\,
	sumout => \configurator|Add2~9_sumout\,
	cout => \configurator|Add2~10\);

-- Location: FF_X37_Y53_N41
\configurator|dataIndex[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|Add2~9_sumout\,
	clrn => \resetn~input_o\,
	sclr => \configurator|dataIndex[0]~0_combout\,
	sload => VCC,
	ena => \configurator|dataIndex[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(2));

-- Location: FF_X37_Y53_N38
\configurator|dataIndex[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|internalClock~q\,
	asdata => \configurator|Add2~13_sumout\,
	clrn => \resetn~input_o\,
	sclr => \configurator|dataIndex[0]~0_combout\,
	sload => VCC,
	ena => \configurator|dataIndex[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|dataIndex\(3));

-- Location: LABCELL_X35_Y53_N36
\configurator|SDIO~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|SDIO~2_combout\ = ( \configurator|dataIndex\(0) & ( \configurator|dataIndex\(1) & ( \configurator|counter\(3) ) ) ) # ( \configurator|dataIndex\(0) & ( !\configurator|dataIndex\(1) & ( \configurator|counter\(5) ) ) ) # ( 
-- !\configurator|dataIndex\(0) & ( !\configurator|dataIndex\(1) & ( \configurator|counter\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(6),
	datab => \configurator|ALT_INV_counter\(3),
	datad => \configurator|ALT_INV_counter\(5),
	datae => \configurator|ALT_INV_dataIndex\(0),
	dataf => \configurator|ALT_INV_dataIndex\(1),
	combout => \configurator|SDIO~2_combout\);

-- Location: MLABCELL_X37_Y53_N0
\configurator|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|LessThan0~0_combout\ = ( !\configurator|dataIndex\(4) & ( (!\configurator|dataIndex\(7) & (!\configurator|dataIndex\(5) & !\configurator|dataIndex\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(7),
	datac => \configurator|ALT_INV_dataIndex\(5),
	datad => \configurator|ALT_INV_dataIndex\(6),
	dataf => \configurator|ALT_INV_dataIndex\(4),
	combout => \configurator|LessThan0~0_combout\);

-- Location: LABCELL_X35_Y53_N0
\configurator|SDIO~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|SDIO~3_combout\ = ( \configurator|SDIO~2_combout\ & ( \configurator|LessThan0~0_combout\ & ( (!\configurator|dataIndex\(3) & (!\configurator|dataIndex\(2) & (!\configurator|discarding~q\ & \configurator|sendData~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(3),
	datab => \configurator|ALT_INV_dataIndex\(2),
	datac => \configurator|ALT_INV_discarding~q\,
	datad => \configurator|ALT_INV_sendData~DUPLICATE_q\,
	datae => \configurator|ALT_INV_SDIO~2_combout\,
	dataf => \configurator|ALT_INV_LessThan0~0_combout\,
	combout => \configurator|SDIO~3_combout\);

-- Location: LABCELL_X36_Y53_N54
\configurator|Mux1~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~11_combout\ = ( \configurator|counter\(2) & ( \configurator|counter\(0) & ( (\configurator|counter\(1) & ((!\configurator|dataIndex\(1) & (!\configurator|dataIndex\(2) & !\configurator|dataIndex\(3))) # (\configurator|dataIndex\(1) & 
-- ((\configurator|dataIndex\(3)))))) ) ) ) # ( !\configurator|counter\(2) & ( \configurator|counter\(0) & ( (!\configurator|dataIndex\(1) & (!\configurator|counter\(1) & (!\configurator|dataIndex\(2) $ (\configurator|dataIndex\(3))))) ) ) ) # ( 
-- \configurator|counter\(2) & ( !\configurator|counter\(0) & ( (\configurator|dataIndex\(1) & \configurator|counter\(1)) ) ) ) # ( !\configurator|counter\(2) & ( !\configurator|counter\(0) & ( (!\configurator|dataIndex\(1) & (!\configurator|counter\(1) & 
-- (\configurator|dataIndex\(2) & \configurator|dataIndex\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000100010001000110000000000010000010000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(1),
	datab => \configurator|ALT_INV_counter\(1),
	datac => \configurator|ALT_INV_dataIndex\(2),
	datad => \configurator|ALT_INV_dataIndex\(3),
	datae => \configurator|ALT_INV_counter\(2),
	dataf => \configurator|ALT_INV_counter\(0),
	combout => \configurator|Mux1~11_combout\);

-- Location: MLABCELL_X37_Y53_N24
\configurator|Mux1~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~12_combout\ = ( \configurator|counter\(1) & ( (!\configurator|dataIndex\(2) & \configurator|dataIndex\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_dataIndex\(2),
	datad => \configurator|ALT_INV_dataIndex\(3),
	dataf => \configurator|ALT_INV_counter\(1),
	combout => \configurator|Mux1~12_combout\);

-- Location: LABCELL_X36_Y53_N39
\configurator|Mux1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~6_combout\ = ( \configurator|dataIndex\(1) & ( \configurator|Mux1~12_combout\ & ( (\configurator|counter\(3) & ((!\configurator|Mux1~11_combout\ & (\configurator|dataIndex\(0) & \configurator|counter\(0))) # 
-- (\configurator|Mux1~11_combout\ & (!\configurator|dataIndex\(0))))) ) ) ) # ( !\configurator|dataIndex\(1) & ( \configurator|Mux1~12_combout\ & ( (\configurator|Mux1~11_combout\ & (!\configurator|dataIndex\(0) & \configurator|counter\(3))) ) ) ) # ( 
-- \configurator|dataIndex\(1) & ( !\configurator|Mux1~12_combout\ & ( (\configurator|Mux1~11_combout\ & (!\configurator|dataIndex\(0) & \configurator|counter\(3))) ) ) ) # ( !\configurator|dataIndex\(1) & ( !\configurator|Mux1~12_combout\ & ( 
-- (\configurator|Mux1~11_combout\ & (!\configurator|dataIndex\(0) & \configurator|counter\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_Mux1~11_combout\,
	datab => \configurator|ALT_INV_dataIndex\(0),
	datac => \configurator|ALT_INV_counter\(3),
	datad => \configurator|ALT_INV_counter\(0),
	datae => \configurator|ALT_INV_dataIndex\(1),
	dataf => \configurator|ALT_INV_Mux1~12_combout\,
	combout => \configurator|Mux1~6_combout\);

-- Location: MLABCELL_X37_Y53_N6
\configurator|Mux1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~3_combout\ = ( \configurator|dataIndex\(0) & ( (!\configurator|counter\(0) & ((!\configurator|dataIndex\(2) & (!\configurator|dataIndex\(1) $ (\configurator|counter\(2)))) # (\configurator|dataIndex\(2) & (\configurator|dataIndex\(1) & 
-- !\configurator|counter\(2))))) ) ) # ( !\configurator|dataIndex\(0) & ( (!\configurator|counter\(0) & (!\configurator|dataIndex\(1) $ (((\configurator|dataIndex\(2) & \configurator|counter\(2)))))) # (\configurator|counter\(0) & (\configurator|counter\(2) 
-- & ((\configurator|dataIndex\(1)) # (\configurator|dataIndex\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010010111101000001001011110000010000010001000001000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(0),
	datab => \configurator|ALT_INV_dataIndex\(2),
	datac => \configurator|ALT_INV_dataIndex\(1),
	datad => \configurator|ALT_INV_counter\(2),
	dataf => \configurator|ALT_INV_dataIndex\(0),
	combout => \configurator|Mux1~3_combout\);

-- Location: MLABCELL_X37_Y53_N54
\configurator|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~2_combout\ = ( \configurator|counter\(0) & ( \configurator|counter\(2) & ( (!\configurator|dataIndex\(3) & (!\configurator|dataIndex\(0) & (!\configurator|dataIndex\(1) & \configurator|dataIndex\(2)))) ) ) ) # ( 
-- !\configurator|counter\(0) & ( \configurator|counter\(2) & ( (!\configurator|dataIndex\(0) & (!\configurator|dataIndex\(1))) # (\configurator|dataIndex\(0) & ((\configurator|dataIndex\(2)))) ) ) ) # ( \configurator|counter\(0) & ( 
-- !\configurator|counter\(2) & ( (!\configurator|dataIndex\(1) & (\configurator|dataIndex\(0) & \configurator|dataIndex\(2))) # (\configurator|dataIndex\(1) & ((!\configurator|dataIndex\(2)))) ) ) ) # ( !\configurator|counter\(0) & ( 
-- !\configurator|counter\(2) & ( (!\configurator|dataIndex\(0) & ((!\configurator|dataIndex\(1)) # (\configurator|dataIndex\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011001100000011110011000011000000111100110000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(3),
	datab => \configurator|ALT_INV_dataIndex\(0),
	datac => \configurator|ALT_INV_dataIndex\(1),
	datad => \configurator|ALT_INV_dataIndex\(2),
	datae => \configurator|ALT_INV_counter\(0),
	dataf => \configurator|ALT_INV_counter\(2),
	combout => \configurator|Mux1~2_combout\);

-- Location: LABCELL_X36_Y53_N51
\configurator|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~1_combout\ = ( \configurator|counter\(2) & ( \configurator|counter\(0) & ( (!\configurator|dataIndex\(2)) # ((\configurator|dataIndex\(0) & !\configurator|dataIndex\(1))) ) ) ) # ( !\configurator|counter\(2) & ( 
-- !\configurator|counter\(0) & ( (\configurator|dataIndex\(3) & (!\configurator|dataIndex\(1) & (!\configurator|dataIndex\(2) $ (!\configurator|dataIndex\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000000000000000000000000000000000000000001010111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(2),
	datab => \configurator|ALT_INV_dataIndex\(3),
	datac => \configurator|ALT_INV_dataIndex\(0),
	datad => \configurator|ALT_INV_dataIndex\(1),
	datae => \configurator|ALT_INV_counter\(2),
	dataf => \configurator|ALT_INV_counter\(0),
	combout => \configurator|Mux1~1_combout\);

-- Location: MLABCELL_X37_Y53_N12
\configurator|Mux1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~4_combout\ = ( !\configurator|counter\(2) & ( (!\configurator|counter\(0) & ((!\configurator|dataIndex\(2) & (\configurator|dataIndex\(1) & !\configurator|dataIndex\(0))) # (\configurator|dataIndex\(2) & 
-- (!\configurator|dataIndex\(1))))) # (\configurator|counter\(0) & (((\configurator|dataIndex\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100001110101001010000111010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(0),
	datab => \configurator|ALT_INV_dataIndex\(2),
	datac => \configurator|ALT_INV_dataIndex\(1),
	datad => \configurator|ALT_INV_dataIndex\(0),
	dataf => \configurator|ALT_INV_counter\(2),
	combout => \configurator|Mux1~4_combout\);

-- Location: LABCELL_X36_Y53_N24
\configurator|Mux1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~5_combout\ = ( \configurator|Mux1~1_combout\ & ( \configurator|Mux1~4_combout\ & ( (!\configurator|counter\(3) & ((!\configurator|counter\(1)) # ((!\configurator|Mux1~3_combout\)))) # (\configurator|counter\(3) & 
-- (((\configurator|Mux1~2_combout\)) # (\configurator|counter\(1)))) ) ) ) # ( !\configurator|Mux1~1_combout\ & ( \configurator|Mux1~4_combout\ & ( (!\configurator|counter\(3) & (\configurator|counter\(1) & (!\configurator|Mux1~3_combout\))) # 
-- (\configurator|counter\(3) & (((\configurator|Mux1~2_combout\)) # (\configurator|counter\(1)))) ) ) ) # ( \configurator|Mux1~1_combout\ & ( !\configurator|Mux1~4_combout\ & ( (!\configurator|counter\(3) & ((!\configurator|counter\(1)) # 
-- ((!\configurator|Mux1~3_combout\)))) # (\configurator|counter\(3) & (!\configurator|counter\(1) & ((\configurator|Mux1~2_combout\)))) ) ) ) # ( !\configurator|Mux1~1_combout\ & ( !\configurator|Mux1~4_combout\ & ( (!\configurator|counter\(3) & 
-- (\configurator|counter\(1) & (!\configurator|Mux1~3_combout\))) # (\configurator|counter\(3) & (!\configurator|counter\(1) & ((\configurator|Mux1~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001100100101010001110110000110001011101011011100111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(3),
	datab => \configurator|ALT_INV_counter\(1),
	datac => \configurator|ALT_INV_Mux1~3_combout\,
	datad => \configurator|ALT_INV_Mux1~2_combout\,
	datae => \configurator|ALT_INV_Mux1~1_combout\,
	dataf => \configurator|ALT_INV_Mux1~4_combout\,
	combout => \configurator|Mux1~5_combout\);

-- Location: LABCELL_X36_Y53_N15
\configurator|Mux1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~7_combout\ = ( !\configurator|counter\(0) & ( (!\configurator|counter\(3) & (!\configurator|counter\(1) & !\configurator|counter\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(3),
	datac => \configurator|ALT_INV_counter\(1),
	datad => \configurator|ALT_INV_counter\(2),
	dataf => \configurator|ALT_INV_counter\(0),
	combout => \configurator|Mux1~7_combout\);

-- Location: LABCELL_X36_Y53_N6
\configurator|Mux1~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~10_combout\ = ( \configurator|counter\(3) & ( \configurator|counter\(0) & ( (\configurator|dataIndex\(2) & ((!\configurator|dataIndex\(0) & (!\configurator|dataIndex\(1) & \configurator|counter\(2))) # (\configurator|dataIndex\(0) & 
-- (\configurator|dataIndex\(1) & !\configurator|counter\(2))))) ) ) ) # ( !\configurator|counter\(3) & ( \configurator|counter\(0) ) ) # ( \configurator|counter\(3) & ( !\configurator|counter\(0) & ( (\configurator|dataIndex\(2) & 
-- (!\configurator|dataIndex\(0) & (!\configurator|dataIndex\(1) & \configurator|counter\(2)))) ) ) ) # ( !\configurator|counter\(3) & ( !\configurator|counter\(0) & ( (!\configurator|dataIndex\(2) & (!\configurator|counter\(2) & 
-- ((!\configurator|dataIndex\(0)) # (!\configurator|dataIndex\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100000000000000000000100000011111111111111110000000101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(2),
	datab => \configurator|ALT_INV_dataIndex\(0),
	datac => \configurator|ALT_INV_dataIndex\(1),
	datad => \configurator|ALT_INV_counter\(2),
	datae => \configurator|ALT_INV_counter\(3),
	dataf => \configurator|ALT_INV_counter\(0),
	combout => \configurator|Mux1~10_combout\);

-- Location: MLABCELL_X37_Y53_N45
\configurator|Mux1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~9_combout\ = ( \configurator|counter\(2) & ( \configurator|counter\(1) ) ) # ( !\configurator|counter\(2) & ( \configurator|counter\(1) & ( (!\configurator|dataIndex\(2) & (\configurator|dataIndex\(3) & ((!\configurator|dataIndex\(1)) # 
-- (!\configurator|dataIndex\(0))))) # (\configurator|dataIndex\(2) & (\configurator|dataIndex\(1) & (\configurator|dataIndex\(0) & !\configurator|dataIndex\(3)))) ) ) ) # ( !\configurator|counter\(2) & ( !\configurator|counter\(1) & ( 
-- (!\configurator|dataIndex\(0) & (!\configurator|dataIndex\(1) & (\configurator|dataIndex\(2)))) # (\configurator|dataIndex\(0) & (!\configurator|dataIndex\(3) & (!\configurator|dataIndex\(1) $ (!\configurator|dataIndex\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011000100000000000000000000000000001110010001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(1),
	datab => \configurator|ALT_INV_dataIndex\(2),
	datac => \configurator|ALT_INV_dataIndex\(0),
	datad => \configurator|ALT_INV_dataIndex\(3),
	datae => \configurator|ALT_INV_counter\(2),
	dataf => \configurator|ALT_INV_counter\(1),
	combout => \configurator|Mux1~9_combout\);

-- Location: LABCELL_X36_Y53_N18
\configurator|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~0_combout\ = ( \configurator|Mux1~9_combout\ & ( (\configurator|Mux1~10_combout\ & ((!\configurator|counter\(3)) # ((\configurator|dataIndex\(3) & !\configurator|dataIndex\(1))))) ) ) # ( !\configurator|Mux1~9_combout\ & ( 
-- (\configurator|Mux1~10_combout\ & (\configurator|counter\(3) & (!\configurator|dataIndex\(3) $ (!\configurator|dataIndex\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010010000000000001001000110011000100000011001100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(3),
	datab => \configurator|ALT_INV_Mux1~10_combout\,
	datac => \configurator|ALT_INV_dataIndex\(1),
	datad => \configurator|ALT_INV_counter\(3),
	dataf => \configurator|ALT_INV_Mux1~9_combout\,
	combout => \configurator|Mux1~0_combout\);

-- Location: LABCELL_X35_Y53_N54
\configurator|Mux1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux1~8_combout\ = ( \configurator|Mux1~7_combout\ & ( \configurator|Mux1~0_combout\ & ( (!\configurator|counter\(4) & ((!\configurator|counter\(5)) # ((\configurator|Mux1~5_combout\)))) # (\configurator|counter\(4) & 
-- (((\configurator|Mux1~6_combout\)) # (\configurator|counter\(5)))) ) ) ) # ( !\configurator|Mux1~7_combout\ & ( \configurator|Mux1~0_combout\ & ( (!\configurator|counter\(4) & ((!\configurator|counter\(5)) # ((\configurator|Mux1~5_combout\)))) # 
-- (\configurator|counter\(4) & (!\configurator|counter\(5) & (\configurator|Mux1~6_combout\))) ) ) ) # ( \configurator|Mux1~7_combout\ & ( !\configurator|Mux1~0_combout\ & ( (!\configurator|counter\(4) & (\configurator|counter\(5) & 
-- ((\configurator|Mux1~5_combout\)))) # (\configurator|counter\(4) & (((\configurator|Mux1~6_combout\)) # (\configurator|counter\(5)))) ) ) ) # ( !\configurator|Mux1~7_combout\ & ( !\configurator|Mux1~0_combout\ & ( (!\configurator|counter\(4) & 
-- (\configurator|counter\(5) & ((\configurator|Mux1~5_combout\)))) # (\configurator|counter\(4) & (!\configurator|counter\(5) & (\configurator|Mux1~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000101010011011110001100101011101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(4),
	datab => \configurator|ALT_INV_counter\(5),
	datac => \configurator|ALT_INV_Mux1~6_combout\,
	datad => \configurator|ALT_INV_Mux1~5_combout\,
	datae => \configurator|ALT_INV_Mux1~7_combout\,
	dataf => \configurator|ALT_INV_Mux1~0_combout\,
	combout => \configurator|Mux1~8_combout\);

-- Location: MLABCELL_X37_Y53_N33
\configurator|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|LessThan1~0_combout\ = ( \configurator|dataIndex\(2) & ( (!\configurator|dataIndex\(3) & ((!\configurator|dataIndex\(1)) # (!\configurator|dataIndex\(0)))) ) ) # ( !\configurator|dataIndex\(2) & ( !\configurator|dataIndex\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011100000111000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(1),
	datab => \configurator|ALT_INV_dataIndex\(0),
	datac => \configurator|ALT_INV_dataIndex\(3),
	dataf => \configurator|ALT_INV_dataIndex\(2),
	combout => \configurator|LessThan1~0_combout\);

-- Location: LABCELL_X36_Y53_N12
\configurator|SDIO~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|SDIO~0_combout\ = ( \configurator|LessThan1~0_combout\ & ( (\configurator|sendData~DUPLICATE_q\ & (!\configurator|discarding~q\ & !\configurator|LessThan0~0_combout\)) ) ) # ( !\configurator|LessThan1~0_combout\ & ( 
-- (\configurator|sendData~DUPLICATE_q\ & !\configurator|discarding~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_sendData~DUPLICATE_q\,
	datac => \configurator|ALT_INV_discarding~q\,
	datad => \configurator|ALT_INV_LessThan0~0_combout\,
	dataf => \configurator|ALT_INV_LessThan1~0_combout\,
	combout => \configurator|SDIO~0_combout\);

-- Location: LABCELL_X36_Y53_N42
\configurator|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Mux0~0_combout\ = ( \configurator|counter\(3) & ( \configurator|counter\(0) & ( ((!\configurator|dataIndex\(0) & (\configurator|counter\(2))) # (\configurator|dataIndex\(0) & ((\configurator|counter\(1))))) # (\configurator|dataIndex\(1)) ) 
-- ) ) # ( !\configurator|counter\(3) & ( \configurator|counter\(0) & ( (!\configurator|dataIndex\(0) & (((\configurator|dataIndex\(1))) # (\configurator|counter\(2)))) # (\configurator|dataIndex\(0) & (((!\configurator|dataIndex\(1) & 
-- \configurator|counter\(1))))) ) ) ) # ( \configurator|counter\(3) & ( !\configurator|counter\(0) & ( (!\configurator|dataIndex\(0) & (\configurator|counter\(2) & (!\configurator|dataIndex\(1)))) # (\configurator|dataIndex\(0) & 
-- (((\configurator|counter\(1)) # (\configurator|dataIndex\(1))))) ) ) ) # ( !\configurator|counter\(3) & ( !\configurator|counter\(0) & ( (!\configurator|dataIndex\(1) & ((!\configurator|dataIndex\(0) & (\configurator|counter\(2))) # 
-- (\configurator|dataIndex\(0) & ((\configurator|counter\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010000110111001101001100011111000100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_counter\(2),
	datab => \configurator|ALT_INV_dataIndex\(0),
	datac => \configurator|ALT_INV_dataIndex\(1),
	datad => \configurator|ALT_INV_counter\(1),
	datae => \configurator|ALT_INV_counter\(3),
	dataf => \configurator|ALT_INV_counter\(0),
	combout => \configurator|Mux0~0_combout\);

-- Location: FF_X36_Y53_N46
\configurator|sendData\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	asdata => \configurator|state.SEND~DUPLICATE_q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|sendData~q\);

-- Location: MLABCELL_X37_Y53_N48
\configurator|SDIO~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|SDIO~7_combout\ = ( !\configurator|discarding~q\ & ( (\configurator|sendData~q\ & ((!\configurator|dataIndex\(1) & (\configurator|dataIndex\(2))) # (\configurator|dataIndex\(1) & ((!\configurator|dataIndex\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000010000001110000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(1),
	datab => \configurator|ALT_INV_dataIndex\(2),
	datac => \configurator|ALT_INV_sendData~q\,
	datad => \configurator|ALT_INV_dataIndex\(0),
	dataf => \configurator|ALT_INV_discarding~q\,
	combout => \configurator|SDIO~7_combout\);

-- Location: LABCELL_X36_Y53_N33
\configurator|SDIO~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|SDIO~1_combout\ = ( \configurator|counter\(4) & ( \configurator|SDIO~7_combout\ & ( (\configurator|LessThan0~0_combout\ & (\configurator|LessThan1~0_combout\ & ((!\configurator|dataIndex\(2)) # (\configurator|Mux0~0_combout\)))) ) ) ) # ( 
-- !\configurator|counter\(4) & ( \configurator|SDIO~7_combout\ & ( (\configurator|LessThan0~0_combout\ & (\configurator|Mux0~0_combout\ & (\configurator|LessThan1~0_combout\ & \configurator|dataIndex\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000010100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_LessThan0~0_combout\,
	datab => \configurator|ALT_INV_Mux0~0_combout\,
	datac => \configurator|ALT_INV_LessThan1~0_combout\,
	datad => \configurator|ALT_INV_dataIndex\(2),
	datae => \configurator|ALT_INV_counter\(4),
	dataf => \configurator|ALT_INV_SDIO~7_combout\,
	combout => \configurator|SDIO~1_combout\);

-- Location: IOIBUF_X21_Y0_N18
\WrReEnButton~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WrReEnButton,
	o => \WrReEnButton~input_o\);

-- Location: CLKCTRL_G6
\WrReEnButton~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \WrReEnButton~input_o\,
	outclk => \WrReEnButton~inputCLKENA0_outclk\);

-- Location: LABCELL_X35_Y53_N15
\WrReEn~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WrReEn~0_combout\ = ( !\WrReEn~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_WrReEn~q\,
	combout => \WrReEn~0_combout\);

-- Location: FF_X35_Y53_N17
WrReEn : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_WrReEnButton~inputCLKENA0_outclk\,
	d => \WrReEn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WrReEn~q\);

-- Location: LABCELL_X35_Y53_N24
\configurator|SDIO~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|SDIO~4_combout\ = ( \configurator|SDIO~1_combout\ & ( \WrReEn~q\ ) ) # ( !\configurator|SDIO~1_combout\ & ( \WrReEn~q\ & ( (((\configurator|Mux1~8_combout\ & \configurator|SDIO~0_combout\)) # (\configurator|discarding~q\)) # 
-- (\configurator|SDIO~3_combout\) ) ) ) # ( \configurator|SDIO~1_combout\ & ( !\WrReEn~q\ ) ) # ( !\configurator|SDIO~1_combout\ & ( !\WrReEn~q\ & ( ((\configurator|Mux1~8_combout\ & \configurator|SDIO~0_combout\)) # (\configurator|SDIO~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011111111111111111111101110111011111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_SDIO~3_combout\,
	datab => \configurator|ALT_INV_discarding~q\,
	datac => \configurator|ALT_INV_Mux1~8_combout\,
	datad => \configurator|ALT_INV_SDIO~0_combout\,
	datae => \configurator|ALT_INV_SDIO~1_combout\,
	dataf => \ALT_INV_WrReEn~q\,
	combout => \configurator|SDIO~4_combout\);

-- Location: LABCELL_X36_Y53_N0
\configurator|SDIO~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|SDIO~5_combout\ = ( \configurator|discarding~q\ ) # ( !\configurator|discarding~q\ & ( (!\configurator|sendData~DUPLICATE_q\) # ((\configurator|LessThan0~1_combout\ & ((!\configurator|dataIndex\(4)) # (\configurator|LessThan1~0_combout\)))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101000101111111110100010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_LessThan0~1_combout\,
	datab => \configurator|ALT_INV_dataIndex\(4),
	datac => \configurator|ALT_INV_LessThan1~0_combout\,
	datad => \configurator|ALT_INV_sendData~DUPLICATE_q\,
	dataf => \configurator|ALT_INV_discarding~q\,
	combout => \configurator|SDIO~5_combout\);

-- Location: FF_X35_Y53_N25
\configurator|SDIO~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	d => \configurator|SDIO~4_combout\,
	clrn => \resetn~input_o\,
	ena => \configurator|SDIO~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|SDIO~reg0_q\);

-- Location: LABCELL_X35_Y53_N48
\configurator|SDIO~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|SDIO~6_combout\ = ( \configurator|LessThan1~0_combout\ & ( \WrReEn~q\ & ( (!\configurator|discarding~q\ & (!\configurator|LessThan0~0_combout\ & \configurator|sendData~DUPLICATE_q\)) ) ) ) # ( !\configurator|LessThan1~0_combout\ & ( 
-- \WrReEn~q\ & ( (!\configurator|discarding~q\ & \configurator|sendData~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101010100000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_discarding~q\,
	datac => \configurator|ALT_INV_LessThan0~0_combout\,
	datad => \configurator|ALT_INV_sendData~DUPLICATE_q\,
	datae => \configurator|ALT_INV_LessThan1~0_combout\,
	dataf => \ALT_INV_WrReEn~q\,
	combout => \configurator|SDIO~6_combout\);

-- Location: FF_X35_Y53_N49
\configurator|SDIO~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \configurator|ALT_INV_internalClock~q\,
	d => \configurator|SDIO~6_combout\,
	clrn => \resetn~input_o\,
	ena => \configurator|SDIO~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|SDIO~en_q\);

-- Location: FF_X33_Y53_N13
\configurator|state.SEND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	asdata => \configurator|nextState.SEND~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|state.SEND~q\);

-- Location: MLABCELL_X37_Y53_N36
\configurator|Outputs~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Outputs~0_combout\ = ( \configurator|dataIndex\(2) & ( (\configurator|dataIndex\(0) & \configurator|dataIndex\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_dataIndex\(0),
	datac => \configurator|ALT_INV_dataIndex\(1),
	dataf => \configurator|ALT_INV_dataIndex\(2),
	combout => \configurator|Outputs~0_combout\);

-- Location: MLABCELL_X37_Y53_N21
\configurator|outputClock~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|outputClock~0_combout\ = ( \configurator|Outputs~0_combout\ & ( \configurator|internalClock~q\ & ( \configurator|state.SEND~q\ ) ) ) # ( !\configurator|Outputs~0_combout\ & ( \configurator|internalClock~q\ & ( \configurator|state.SEND~q\ ) ) 
-- ) # ( \configurator|Outputs~0_combout\ & ( !\configurator|internalClock~q\ & ( (\configurator|state.SEND~q\ & ((!\configurator|dataIndex\(4)) # ((!\configurator|LessThan0~1_combout\) # (\configurator|dataIndex\(3))))) ) ) ) # ( 
-- !\configurator|Outputs~0_combout\ & ( !\configurator|internalClock~q\ & ( \configurator|state.SEND~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011100000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_dataIndex\(4),
	datab => \configurator|ALT_INV_LessThan0~1_combout\,
	datac => \configurator|ALT_INV_state.SEND~q\,
	datad => \configurator|ALT_INV_dataIndex\(3),
	datae => \configurator|ALT_INV_Outputs~0_combout\,
	dataf => \configurator|ALT_INV_internalClock~q\,
	combout => \configurator|outputClock~0_combout\);

-- Location: FF_X36_Y53_N10
\configurator|outputClock\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	asdata => \configurator|outputClock~0_combout\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|outputClock~q\);

-- Location: LABCELL_X36_Y52_N57
\configurator|SCLK~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|SCLK~0_combout\ = ( \resetn~input_o\ & ( (!\configurator|needWait~q\ & (\configurator|internalClock~q\ & \configurator|outputClock~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_needWait~q\,
	datac => \configurator|ALT_INV_internalClock~q\,
	datad => \configurator|ALT_INV_outputClock~q\,
	dataf => \ALT_INV_resetn~input_o\,
	combout => \configurator|SCLK~0_combout\);

-- Location: MLABCELL_X37_Y53_N51
\configurator|SDENB~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|SDENB~0_combout\ = (!\configurator|state.SEND~q\ & !\configurator|state.DISCARD~DUPLICATE_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \configurator|ALT_INV_state.SEND~q\,
	datad => \configurator|ALT_INV_state.DISCARD~DUPLICATE_q\,
	combout => \configurator|SDENB~0_combout\);

-- Location: FF_X37_Y53_N1
\configurator|SDENB~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	asdata => \configurator|SDENB~0_combout\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|SDENB~reg0_q\);

-- Location: LABCELL_X43_Y57_N27
\innerDataClock~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \innerDataClock~0_combout\ = ( !\innerDataClock~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_innerDataClock~q\,
	combout => \innerDataClock~0_combout\);

-- Location: LABCELL_X43_Y57_N21
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

-- Location: FF_X43_Y57_N23
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

-- Location: LABCELL_X43_Y57_N30
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

-- Location: FF_X43_Y57_N32
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

-- Location: LABCELL_X43_Y57_N33
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

-- Location: FF_X43_Y57_N34
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

-- Location: LABCELL_X43_Y57_N36
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

-- Location: FF_X43_Y57_N38
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

-- Location: LABCELL_X43_Y57_N39
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

-- Location: FF_X43_Y57_N41
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

-- Location: LABCELL_X43_Y57_N42
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

-- Location: FF_X43_Y57_N43
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

-- Location: LABCELL_X43_Y57_N45
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

-- Location: FF_X43_Y57_N46
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

-- Location: LABCELL_X43_Y57_N48
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

-- Location: FF_X43_Y57_N49
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

-- Location: LABCELL_X43_Y57_N9
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !clockDivideBuffer(2) & ( (!clockDivideBuffer(0) & (!clockDivideBuffer(1) & !clockDivideBuffer(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clockDivideBuffer(0),
	datac => ALT_INV_clockDivideBuffer(1),
	datad => ALT_INV_clockDivideBuffer(3),
	dataf => ALT_INV_clockDivideBuffer(2),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X43_Y57_N24
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( \Equal0~0_combout\ & ( (!clockDivideBuffer(6) & (!clockDivideBuffer(5) & (!clockDivideBuffer(4) & !clockDivideBuffer(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clockDivideBuffer(6),
	datab => ALT_INV_clockDivideBuffer(5),
	datac => ALT_INV_clockDivideBuffer(4),
	datad => ALT_INV_clockDivideBuffer(7),
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: FF_X43_Y57_N59
innerDataClock : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~input_o\,
	asdata => \innerDataClock~0_combout\,
	sload => VCC,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \innerDataClock~q\);

-- Location: FF_X43_Y54_N23
\synthesizer|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	asdata => \synthesizer|Add0~5_sumout\,
	sclr => \synthesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|counter\(28));

-- Location: LABCELL_X43_Y55_N0
\synthesizer|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Add0~1_sumout\ = SUM(( \synthesizer|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \synthesizer|Add0~2\ = CARRY(( \synthesizer|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \synthesizer|ALT_INV_counter\(0),
	cin => GND,
	sumout => \synthesizer|Add0~1_sumout\,
	cout => \synthesizer|Add0~2\);

-- Location: FF_X43_Y55_N1
\synthesizer|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \synthesizer|Add0~1_sumout\,
	sclr => \synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|counter\(0));

-- Location: LABCELL_X43_Y55_N3
\synthesizer|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Add0~117_sumout\ = SUM(( \synthesizer|counter\(1) ) + ( GND ) + ( \synthesizer|Add0~2\ ))
-- \synthesizer|Add0~118\ = CARRY(( \synthesizer|counter\(1) ) + ( GND ) + ( \synthesizer|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \synthesizer|ALT_INV_counter\(1),
	cin => \synthesizer|Add0~2\,
	sumout => \synthesizer|Add0~117_sumout\,
	cout => \synthesizer|Add0~118\);

-- Location: FF_X43_Y55_N5
\synthesizer|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \synthesizer|Add0~117_sumout\,
	sclr => \synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|counter\(1));

-- Location: LABCELL_X43_Y55_N6
\synthesizer|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Add0~121_sumout\ = SUM(( \synthesizer|counter\(2) ) + ( GND ) + ( \synthesizer|Add0~118\ ))
-- \synthesizer|Add0~122\ = CARRY(( \synthesizer|counter\(2) ) + ( GND ) + ( \synthesizer|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \synthesizer|ALT_INV_counter\(2),
	cin => \synthesizer|Add0~118\,
	sumout => \synthesizer|Add0~121_sumout\,
	cout => \synthesizer|Add0~122\);

-- Location: FF_X43_Y55_N8
\synthesizer|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \synthesizer|Add0~121_sumout\,
	sclr => \synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|counter\(2));

-- Location: LABCELL_X43_Y55_N9
\synthesizer|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Add0~125_sumout\ = SUM(( \synthesizer|counter\(3) ) + ( GND ) + ( \synthesizer|Add0~122\ ))
-- \synthesizer|Add0~126\ = CARRY(( \synthesizer|counter\(3) ) + ( GND ) + ( \synthesizer|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \synthesizer|ALT_INV_counter\(3),
	cin => \synthesizer|Add0~122\,
	sumout => \synthesizer|Add0~125_sumout\,
	cout => \synthesizer|Add0~126\);

-- Location: LABCELL_X43_Y55_N12
\synthesizer|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Add0~101_sumout\ = SUM(( \synthesizer|counter\(4) ) + ( GND ) + ( \synthesizer|Add0~126\ ))
-- \synthesizer|Add0~102\ = CARRY(( \synthesizer|counter\(4) ) + ( GND ) + ( \synthesizer|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \synthesizer|ALT_INV_counter\(4),
	cin => \synthesizer|Add0~126\,
	sumout => \synthesizer|Add0~101_sumout\,
	cout => \synthesizer|Add0~102\);

-- Location: FF_X43_Y55_N14
\synthesizer|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \synthesizer|Add0~101_sumout\,
	sclr => \synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|counter\(4));

-- Location: LABCELL_X43_Y55_N15
\synthesizer|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Add0~105_sumout\ = SUM(( \synthesizer|counter\(5) ) + ( GND ) + ( \synthesizer|Add0~102\ ))
-- \synthesizer|Add0~106\ = CARRY(( \synthesizer|counter\(5) ) + ( GND ) + ( \synthesizer|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \synthesizer|ALT_INV_counter\(5),
	cin => \synthesizer|Add0~102\,
	sumout => \synthesizer|Add0~105_sumout\,
	cout => \synthesizer|Add0~106\);

-- Location: FF_X43_Y55_N16
\synthesizer|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \synthesizer|Add0~105_sumout\,
	sclr => \synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|counter\(5));

-- Location: LABCELL_X43_Y55_N18
\synthesizer|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Add0~109_sumout\ = SUM(( \synthesizer|counter\(6) ) + ( GND ) + ( \synthesizer|Add0~106\ ))
-- \synthesizer|Add0~110\ = CARRY(( \synthesizer|counter\(6) ) + ( GND ) + ( \synthesizer|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \synthesizer|ALT_INV_counter\(6),
	cin => \synthesizer|Add0~106\,
	sumout => \synthesizer|Add0~109_sumout\,
	cout => \synthesizer|Add0~110\);

-- Location: FF_X43_Y55_N19
\synthesizer|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \synthesizer|Add0~109_sumout\,
	sclr => \synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|counter\(6));

-- Location: LABCELL_X43_Y55_N21
\synthesizer|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Add0~113_sumout\ = SUM(( \synthesizer|counter\(7) ) + ( GND ) + ( \synthesizer|Add0~110\ ))
-- \synthesizer|Add0~114\ = CARRY(( \synthesizer|counter\(7) ) + ( GND ) + ( \synthesizer|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \synthesizer|ALT_INV_counter\(7),
	cin => \synthesizer|Add0~110\,
	sumout => \synthesizer|Add0~113_sumout\,
	cout => \synthesizer|Add0~114\);

-- Location: FF_X43_Y55_N23
\synthesizer|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \synthesizer|Add0~113_sumout\,
	sclr => \synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|counter\(7));

-- Location: LABCELL_X43_Y55_N24
\synthesizer|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Add0~81_sumout\ = SUM(( \synthesizer|counter\(8) ) + ( GND ) + ( \synthesizer|Add0~114\ ))
-- \synthesizer|Add0~82\ = CARRY(( \synthesizer|counter\(8) ) + ( GND ) + ( \synthesizer|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \synthesizer|ALT_INV_counter\(8),
	cin => \synthesizer|Add0~114\,
	sumout => \synthesizer|Add0~81_sumout\,
	cout => \synthesizer|Add0~82\);

-- Location: FF_X43_Y55_N25
\synthesizer|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \synthesizer|Add0~81_sumout\,
	sclr => \synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|counter\(8));

-- Location: LABCELL_X43_Y55_N27
\synthesizer|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Add0~85_sumout\ = SUM(( \synthesizer|counter\(9) ) + ( GND ) + ( \synthesizer|Add0~82\ ))
-- \synthesizer|Add0~86\ = CARRY(( \synthesizer|counter\(9) ) + ( GND ) + ( \synthesizer|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \synthesizer|ALT_INV_counter\(9),
	cin => \synthesizer|Add0~82\,
	sumout => \synthesizer|Add0~85_sumout\,
	cout => \synthesizer|Add0~86\);

-- Location: FF_X43_Y55_N29
\synthesizer|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \synthesizer|Add0~85_sumout\,
	sclr => \synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|counter\(9));

-- Location: LABCELL_X43_Y55_N30
\synthesizer|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Add0~41_sumout\ = SUM(( \synthesizer|counter\(10) ) + ( GND ) + ( \synthesizer|Add0~86\ ))
-- \synthesizer|Add0~42\ = CARRY(( \synthesizer|counter\(10) ) + ( GND ) + ( \synthesizer|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \synthesizer|ALT_INV_counter\(10),
	cin => \synthesizer|Add0~86\,
	sumout => \synthesizer|Add0~41_sumout\,
	cout => \synthesizer|Add0~42\);

-- Location: FF_X43_Y55_N31
\synthesizer|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \synthesizer|Add0~41_sumout\,
	sclr => \synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|counter\(10));

-- Location: LABCELL_X43_Y55_N33
\synthesizer|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Add0~45_sumout\ = SUM(( \synthesizer|counter\(11) ) + ( GND ) + ( \synthesizer|Add0~42\ ))
-- \synthesizer|Add0~46\ = CARRY(( \synthesizer|counter\(11) ) + ( GND ) + ( \synthesizer|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \synthesizer|ALT_INV_counter\(11),
	cin => \synthesizer|Add0~42\,
	sumout => \synthesizer|Add0~45_sumout\,
	cout => \synthesizer|Add0~46\);

-- Location: FF_X43_Y55_N35
\synthesizer|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \synthesizer|Add0~45_sumout\,
	sclr => \synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|counter\(11));

-- Location: LABCELL_X43_Y55_N36
\synthesizer|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Add0~49_sumout\ = SUM(( \synthesizer|counter\(12) ) + ( GND ) + ( \synthesizer|Add0~46\ ))
-- \synthesizer|Add0~50\ = CARRY(( \synthesizer|counter\(12) ) + ( GND ) + ( \synthesizer|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \synthesizer|ALT_INV_counter\(12),
	cin => \synthesizer|Add0~46\,
	sumout => \synthesizer|Add0~49_sumout\,
	cout => \synthesizer|Add0~50\);

-- Location: FF_X43_Y55_N38
\synthesizer|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \synthesizer|Add0~49_sumout\,
	sclr => \synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|counter\(12));

-- Location: LABCELL_X43_Y55_N39
\synthesizer|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Add0~53_sumout\ = SUM(( \synthesizer|counter\(13) ) + ( GND ) + ( \synthesizer|Add0~50\ ))
-- \synthesizer|Add0~54\ = CARRY(( \synthesizer|counter\(13) ) + ( GND ) + ( \synthesizer|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \synthesizer|ALT_INV_counter\(13),
	cin => \synthesizer|Add0~50\,
	sumout => \synthesizer|Add0~53_sumout\,
	cout => \synthesizer|Add0~54\);

-- Location: FF_X43_Y55_N40
\synthesizer|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \synthesizer|Add0~53_sumout\,
	sclr => \synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|counter\(13));

-- Location: LABCELL_X43_Y55_N42
\synthesizer|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Add0~57_sumout\ = SUM(( \synthesizer|counter\(14) ) + ( GND ) + ( \synthesizer|Add0~54\ ))
-- \synthesizer|Add0~58\ = CARRY(( \synthesizer|counter\(14) ) + ( GND ) + ( \synthesizer|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \synthesizer|ALT_INV_counter\(14),
	cin => \synthesizer|Add0~54\,
	sumout => \synthesizer|Add0~57_sumout\,
	cout => \synthesizer|Add0~58\);

-- Location: FF_X43_Y55_N44
\synthesizer|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \synthesizer|Add0~57_sumout\,
	sclr => \synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|counter\(14));

-- Location: LABCELL_X43_Y55_N45
\synthesizer|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Add0~89_sumout\ = SUM(( \synthesizer|counter\(15) ) + ( GND ) + ( \synthesizer|Add0~58\ ))
-- \synthesizer|Add0~90\ = CARRY(( \synthesizer|counter\(15) ) + ( GND ) + ( \synthesizer|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \synthesizer|ALT_INV_counter\(15),
	cin => \synthesizer|Add0~58\,
	sumout => \synthesizer|Add0~89_sumout\,
	cout => \synthesizer|Add0~90\);

-- Location: FF_X43_Y55_N46
\synthesizer|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \synthesizer|Add0~89_sumout\,
	sclr => \synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|counter\(15));

-- Location: LABCELL_X43_Y55_N48
\synthesizer|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Add0~93_sumout\ = SUM(( \synthesizer|counter\(16) ) + ( GND ) + ( \synthesizer|Add0~90\ ))
-- \synthesizer|Add0~94\ = CARRY(( \synthesizer|counter\(16) ) + ( GND ) + ( \synthesizer|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \synthesizer|ALT_INV_counter\(16),
	cin => \synthesizer|Add0~90\,
	sumout => \synthesizer|Add0~93_sumout\,
	cout => \synthesizer|Add0~94\);

-- Location: FF_X43_Y55_N49
\synthesizer|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \synthesizer|Add0~93_sumout\,
	sclr => \synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|counter\(16));

-- Location: LABCELL_X43_Y55_N51
\synthesizer|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Add0~97_sumout\ = SUM(( \synthesizer|counter\(17) ) + ( GND ) + ( \synthesizer|Add0~94\ ))
-- \synthesizer|Add0~98\ = CARRY(( \synthesizer|counter\(17) ) + ( GND ) + ( \synthesizer|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \synthesizer|ALT_INV_counter\(17),
	cin => \synthesizer|Add0~94\,
	sumout => \synthesizer|Add0~97_sumout\,
	cout => \synthesizer|Add0~98\);

-- Location: FF_X43_Y55_N53
\synthesizer|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \synthesizer|Add0~97_sumout\,
	sclr => \synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|counter\(17));

-- Location: LABCELL_X43_Y55_N54
\synthesizer|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Add0~61_sumout\ = SUM(( \synthesizer|counter\(18) ) + ( GND ) + ( \synthesizer|Add0~98\ ))
-- \synthesizer|Add0~62\ = CARRY(( \synthesizer|counter\(18) ) + ( GND ) + ( \synthesizer|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \synthesizer|ALT_INV_counter\(18),
	cin => \synthesizer|Add0~98\,
	sumout => \synthesizer|Add0~61_sumout\,
	cout => \synthesizer|Add0~62\);

-- Location: FF_X43_Y55_N56
\synthesizer|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \synthesizer|Add0~61_sumout\,
	sclr => \synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|counter\(18));

-- Location: LABCELL_X43_Y55_N57
\synthesizer|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Add0~21_sumout\ = SUM(( \synthesizer|counter\(19) ) + ( GND ) + ( \synthesizer|Add0~62\ ))
-- \synthesizer|Add0~22\ = CARRY(( \synthesizer|counter\(19) ) + ( GND ) + ( \synthesizer|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \synthesizer|ALT_INV_counter\(19),
	cin => \synthesizer|Add0~62\,
	sumout => \synthesizer|Add0~21_sumout\,
	cout => \synthesizer|Add0~22\);

-- Location: FF_X43_Y55_N59
\synthesizer|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \synthesizer|Add0~21_sumout\,
	sclr => \synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|counter\(19));

-- Location: LABCELL_X43_Y54_N0
\synthesizer|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Add0~65_sumout\ = SUM(( \synthesizer|counter\(20) ) + ( GND ) + ( \synthesizer|Add0~22\ ))
-- \synthesizer|Add0~66\ = CARRY(( \synthesizer|counter\(20) ) + ( GND ) + ( \synthesizer|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \synthesizer|ALT_INV_counter\(20),
	cin => \synthesizer|Add0~22\,
	sumout => \synthesizer|Add0~65_sumout\,
	cout => \synthesizer|Add0~66\);

-- Location: FF_X43_Y54_N50
\synthesizer|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	asdata => \synthesizer|Add0~65_sumout\,
	sclr => \synthesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|counter\(20));

-- Location: LABCELL_X43_Y54_N3
\synthesizer|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Add0~25_sumout\ = SUM(( \synthesizer|counter\(21) ) + ( GND ) + ( \synthesizer|Add0~66\ ))
-- \synthesizer|Add0~26\ = CARRY(( \synthesizer|counter\(21) ) + ( GND ) + ( \synthesizer|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \synthesizer|ALT_INV_counter\(21),
	cin => \synthesizer|Add0~66\,
	sumout => \synthesizer|Add0~25_sumout\,
	cout => \synthesizer|Add0~26\);

-- Location: FF_X43_Y54_N56
\synthesizer|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	asdata => \synthesizer|Add0~25_sumout\,
	sclr => \synthesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|counter\(21));

-- Location: LABCELL_X43_Y54_N6
\synthesizer|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Add0~29_sumout\ = SUM(( \synthesizer|counter\(22) ) + ( GND ) + ( \synthesizer|Add0~26\ ))
-- \synthesizer|Add0~30\ = CARRY(( \synthesizer|counter\(22) ) + ( GND ) + ( \synthesizer|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \synthesizer|ALT_INV_counter\(22),
	cin => \synthesizer|Add0~26\,
	sumout => \synthesizer|Add0~29_sumout\,
	cout => \synthesizer|Add0~30\);

-- Location: FF_X43_Y54_N44
\synthesizer|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	asdata => \synthesizer|Add0~29_sumout\,
	sclr => \synthesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|counter\(22));

-- Location: LABCELL_X43_Y54_N9
\synthesizer|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Add0~33_sumout\ = SUM(( \synthesizer|counter\(23) ) + ( GND ) + ( \synthesizer|Add0~30\ ))
-- \synthesizer|Add0~34\ = CARRY(( \synthesizer|counter\(23) ) + ( GND ) + ( \synthesizer|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \synthesizer|ALT_INV_counter\(23),
	cin => \synthesizer|Add0~30\,
	sumout => \synthesizer|Add0~33_sumout\,
	cout => \synthesizer|Add0~34\);

-- Location: FF_X43_Y54_N41
\synthesizer|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	asdata => \synthesizer|Add0~33_sumout\,
	sclr => \synthesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|counter\(23));

-- Location: LABCELL_X43_Y54_N12
\synthesizer|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Add0~37_sumout\ = SUM(( \synthesizer|counter\(24) ) + ( GND ) + ( \synthesizer|Add0~34\ ))
-- \synthesizer|Add0~38\ = CARRY(( \synthesizer|counter\(24) ) + ( GND ) + ( \synthesizer|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \synthesizer|ALT_INV_counter\(24),
	cin => \synthesizer|Add0~34\,
	sumout => \synthesizer|Add0~37_sumout\,
	cout => \synthesizer|Add0~38\);

-- Location: FF_X43_Y54_N52
\synthesizer|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	asdata => \synthesizer|Add0~37_sumout\,
	sclr => \synthesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|counter\(24));

-- Location: LABCELL_X43_Y54_N15
\synthesizer|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Add0~69_sumout\ = SUM(( \synthesizer|counter\(25) ) + ( GND ) + ( \synthesizer|Add0~38\ ))
-- \synthesizer|Add0~70\ = CARRY(( \synthesizer|counter\(25) ) + ( GND ) + ( \synthesizer|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \synthesizer|ALT_INV_counter\(25),
	cin => \synthesizer|Add0~38\,
	sumout => \synthesizer|Add0~69_sumout\,
	cout => \synthesizer|Add0~70\);

-- Location: FF_X43_Y54_N59
\synthesizer|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	asdata => \synthesizer|Add0~69_sumout\,
	sclr => \synthesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|counter\(25));

-- Location: LABCELL_X43_Y54_N18
\synthesizer|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Add0~73_sumout\ = SUM(( \synthesizer|counter\(26) ) + ( GND ) + ( \synthesizer|Add0~70\ ))
-- \synthesizer|Add0~74\ = CARRY(( \synthesizer|counter\(26) ) + ( GND ) + ( \synthesizer|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \synthesizer|ALT_INV_counter\(26),
	cin => \synthesizer|Add0~70\,
	sumout => \synthesizer|Add0~73_sumout\,
	cout => \synthesizer|Add0~74\);

-- Location: FF_X43_Y54_N47
\synthesizer|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	asdata => \synthesizer|Add0~73_sumout\,
	sclr => \synthesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|counter\(26));

-- Location: LABCELL_X43_Y54_N21
\synthesizer|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Add0~77_sumout\ = SUM(( \synthesizer|counter\(27) ) + ( GND ) + ( \synthesizer|Add0~74\ ))
-- \synthesizer|Add0~78\ = CARRY(( \synthesizer|counter\(27) ) + ( GND ) + ( \synthesizer|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \synthesizer|ALT_INV_counter\(27),
	cin => \synthesizer|Add0~74\,
	sumout => \synthesizer|Add0~77_sumout\,
	cout => \synthesizer|Add0~78\);

-- Location: FF_X43_Y54_N38
\synthesizer|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	asdata => \synthesizer|Add0~77_sumout\,
	sclr => \synthesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|counter\(27));

-- Location: LABCELL_X43_Y54_N24
\synthesizer|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Add0~5_sumout\ = SUM(( \synthesizer|counter\(28) ) + ( GND ) + ( \synthesizer|Add0~78\ ))
-- \synthesizer|Add0~6\ = CARRY(( \synthesizer|counter\(28) ) + ( GND ) + ( \synthesizer|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \synthesizer|ALT_INV_counter\(28),
	cin => \synthesizer|Add0~78\,
	sumout => \synthesizer|Add0~5_sumout\,
	cout => \synthesizer|Add0~6\);

-- Location: FF_X43_Y54_N16
\synthesizer|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	asdata => \synthesizer|Add0~9_sumout\,
	sclr => \synthesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|counter\(29));

-- Location: LABCELL_X43_Y54_N27
\synthesizer|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Add0~9_sumout\ = SUM(( \synthesizer|counter\(29) ) + ( GND ) + ( \synthesizer|Add0~6\ ))
-- \synthesizer|Add0~10\ = CARRY(( \synthesizer|counter\(29) ) + ( GND ) + ( \synthesizer|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \synthesizer|ALT_INV_counter\(29),
	cin => \synthesizer|Add0~6\,
	sumout => \synthesizer|Add0~9_sumout\,
	cout => \synthesizer|Add0~10\);

-- Location: FF_X43_Y54_N34
\synthesizer|counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \synthesizer|Add0~17_sumout\,
	sclr => \synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|counter\(31));

-- Location: LABCELL_X43_Y54_N30
\synthesizer|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Add0~13_sumout\ = SUM(( \synthesizer|counter\(30) ) + ( GND ) + ( \synthesizer|Add0~10\ ))
-- \synthesizer|Add0~14\ = CARRY(( \synthesizer|counter\(30) ) + ( GND ) + ( \synthesizer|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \synthesizer|ALT_INV_counter\(30),
	cin => \synthesizer|Add0~10\,
	sumout => \synthesizer|Add0~13_sumout\,
	cout => \synthesizer|Add0~14\);

-- Location: FF_X43_Y54_N29
\synthesizer|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	asdata => \synthesizer|Add0~13_sumout\,
	sclr => \synthesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|counter\(30));

-- Location: LABCELL_X43_Y54_N33
\synthesizer|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Add0~17_sumout\ = SUM(( \synthesizer|counter\(31) ) + ( GND ) + ( \synthesizer|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \synthesizer|ALT_INV_counter\(31),
	cin => \synthesizer|Add0~14\,
	sumout => \synthesizer|Add0~17_sumout\);

-- Location: MLABCELL_X42_Y55_N6
\synthesizer|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|LessThan0~0_combout\ = ( !\synthesizer|Add0~57_sumout\ & ( !\synthesizer|Add0~53_sumout\ & ( (!\synthesizer|Add0~41_sumout\ & (!\synthesizer|Add0~45_sumout\ & !\synthesizer|Add0~49_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \synthesizer|ALT_INV_Add0~41_sumout\,
	datac => \synthesizer|ALT_INV_Add0~45_sumout\,
	datad => \synthesizer|ALT_INV_Add0~49_sumout\,
	datae => \synthesizer|ALT_INV_Add0~57_sumout\,
	dataf => \synthesizer|ALT_INV_Add0~53_sumout\,
	combout => \synthesizer|LessThan0~0_combout\);

-- Location: LABCELL_X43_Y54_N57
\synthesizer|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|LessThan0~1_combout\ = ( !\synthesizer|Add0~21_sumout\ & ( \synthesizer|LessThan0~0_combout\ & ( (!\synthesizer|Add0~25_sumout\ & (!\synthesizer|Add0~37_sumout\ & (!\synthesizer|Add0~33_sumout\ & !\synthesizer|Add0~29_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \synthesizer|ALT_INV_Add0~25_sumout\,
	datab => \synthesizer|ALT_INV_Add0~37_sumout\,
	datac => \synthesizer|ALT_INV_Add0~33_sumout\,
	datad => \synthesizer|ALT_INV_Add0~29_sumout\,
	datae => \synthesizer|ALT_INV_Add0~21_sumout\,
	dataf => \synthesizer|ALT_INV_LessThan0~0_combout\,
	combout => \synthesizer|LessThan0~1_combout\);

-- Location: MLABCELL_X42_Y55_N0
\synthesizer|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|LessThan0~4_combout\ = ( !\synthesizer|Add0~85_sumout\ & ( !\synthesizer|Add0~81_sumout\ & ( (!\synthesizer|Add0~105_sumout\ & (!\synthesizer|Add0~101_sumout\ & (!\synthesizer|Add0~113_sumout\ & !\synthesizer|Add0~109_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \synthesizer|ALT_INV_Add0~105_sumout\,
	datab => \synthesizer|ALT_INV_Add0~101_sumout\,
	datac => \synthesizer|ALT_INV_Add0~113_sumout\,
	datad => \synthesizer|ALT_INV_Add0~109_sumout\,
	datae => \synthesizer|ALT_INV_Add0~85_sumout\,
	dataf => \synthesizer|ALT_INV_Add0~81_sumout\,
	combout => \synthesizer|LessThan0~4_combout\);

-- Location: LABCELL_X43_Y54_N51
\synthesizer|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|LessThan0~5_combout\ = ( !\synthesizer|Add0~93_sumout\ & ( !\synthesizer|Add0~61_sumout\ & ( (!\synthesizer|Add0~89_sumout\ & !\synthesizer|Add0~97_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \synthesizer|ALT_INV_Add0~89_sumout\,
	datad => \synthesizer|ALT_INV_Add0~97_sumout\,
	datae => \synthesizer|ALT_INV_Add0~93_sumout\,
	dataf => \synthesizer|ALT_INV_Add0~61_sumout\,
	combout => \synthesizer|LessThan0~5_combout\);

-- Location: LABCELL_X43_Y54_N45
\synthesizer|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|LessThan0~2_combout\ = ( !\synthesizer|Add0~77_sumout\ & ( \synthesizer|LessThan0~5_combout\ & ( (!\synthesizer|Add0~65_sumout\ & (\synthesizer|LessThan0~4_combout\ & (!\synthesizer|Add0~69_sumout\ & !\synthesizer|Add0~73_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \synthesizer|ALT_INV_Add0~65_sumout\,
	datab => \synthesizer|ALT_INV_LessThan0~4_combout\,
	datac => \synthesizer|ALT_INV_Add0~69_sumout\,
	datad => \synthesizer|ALT_INV_Add0~73_sumout\,
	datae => \synthesizer|ALT_INV_Add0~77_sumout\,
	dataf => \synthesizer|ALT_INV_LessThan0~5_combout\,
	combout => \synthesizer|LessThan0~2_combout\);

-- Location: LABCELL_X43_Y54_N36
\synthesizer|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|LessThan0~3_combout\ = ( \synthesizer|LessThan0~1_combout\ & ( \synthesizer|LessThan0~2_combout\ & ( (!\synthesizer|Add0~17_sumout\ & (((\synthesizer|Add0~13_sumout\) # (\synthesizer|Add0~9_sumout\)) # (\synthesizer|Add0~5_sumout\))) ) ) ) # 
-- ( !\synthesizer|LessThan0~1_combout\ & ( \synthesizer|LessThan0~2_combout\ & ( !\synthesizer|Add0~17_sumout\ ) ) ) # ( \synthesizer|LessThan0~1_combout\ & ( !\synthesizer|LessThan0~2_combout\ & ( !\synthesizer|Add0~17_sumout\ ) ) ) # ( 
-- !\synthesizer|LessThan0~1_combout\ & ( !\synthesizer|LessThan0~2_combout\ & ( !\synthesizer|Add0~17_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100000111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \synthesizer|ALT_INV_Add0~5_sumout\,
	datab => \synthesizer|ALT_INV_Add0~9_sumout\,
	datac => \synthesizer|ALT_INV_Add0~17_sumout\,
	datad => \synthesizer|ALT_INV_Add0~13_sumout\,
	datae => \synthesizer|ALT_INV_LessThan0~1_combout\,
	dataf => \synthesizer|ALT_INV_LessThan0~2_combout\,
	combout => \synthesizer|LessThan0~3_combout\);

-- Location: FF_X43_Y55_N10
\synthesizer|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \synthesizer|Add0~125_sumout\,
	sclr => \synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|counter\(3));

-- Location: FF_X43_Y55_N11
\synthesizer|counter[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \synthesizer|Add0~125_sumout\,
	sclr => \synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|counter[3]~DUPLICATE_q\);

-- Location: FF_X43_Y55_N7
\synthesizer|counter[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \synthesizer|Add0~121_sumout\,
	sclr => \synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|counter[2]~DUPLICATE_q\);

-- Location: FF_X43_Y55_N2
\synthesizer|counter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \synthesizer|Add0~1_sumout\,
	sclr => \synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|counter[0]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y55_N27
\synthesizer|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Mux11~0_combout\ = ( \synthesizer|counter[0]~DUPLICATE_q\ & ( (!\synthesizer|counter[3]~DUPLICATE_q\) # ((!\synthesizer|counter\(1)) # (\synthesizer|counter[2]~DUPLICATE_q\)) ) ) # ( !\synthesizer|counter[0]~DUPLICATE_q\ & ( 
-- !\synthesizer|counter\(1) $ (\synthesizer|counter[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110000111100001111101111111011111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \synthesizer|ALT_INV_counter[3]~DUPLICATE_q\,
	datab => \synthesizer|ALT_INV_counter\(1),
	datac => \synthesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	dataf => \synthesizer|ALT_INV_counter[0]~DUPLICATE_q\,
	combout => \synthesizer|Mux11~0_combout\);

-- Location: MLABCELL_X42_Y57_N3
\synthesizer|output_p[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|output_p[0]~feeder_combout\ = ( \synthesizer|Mux11~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \synthesizer|ALT_INV_Mux11~0_combout\,
	combout => \synthesizer|output_p[0]~feeder_combout\);

-- Location: FF_X42_Y57_N5
\synthesizer|output_p[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \synthesizer|output_p[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|output_p\(0));

-- Location: MLABCELL_X42_Y55_N39
\synthesizer|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Mux10~0_combout\ = ( \synthesizer|counter[0]~DUPLICATE_q\ & ( (\synthesizer|counter\(1) & ((!\synthesizer|counter[3]~DUPLICATE_q\) # (\synthesizer|counter[2]~DUPLICATE_q\))) ) ) # ( !\synthesizer|counter[0]~DUPLICATE_q\ & ( 
-- (!\synthesizer|counter\(1) $ (\synthesizer|counter[2]~DUPLICATE_q\)) # (\synthesizer|counter[3]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100111111111100110011111111101010101000100010101010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \synthesizer|ALT_INV_counter\(1),
	datab => \synthesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	datad => \synthesizer|ALT_INV_counter[3]~DUPLICATE_q\,
	dataf => \synthesizer|ALT_INV_counter[0]~DUPLICATE_q\,
	combout => \synthesizer|Mux10~0_combout\);

-- Location: MLABCELL_X42_Y57_N57
\synthesizer|output_p[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|output_p[1]~feeder_combout\ = ( \synthesizer|Mux10~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \synthesizer|ALT_INV_Mux10~0_combout\,
	combout => \synthesizer|output_p[1]~feeder_combout\);

-- Location: FF_X42_Y57_N58
\synthesizer|output_p[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \synthesizer|output_p[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|output_p\(1));

-- Location: MLABCELL_X42_Y55_N18
\synthesizer|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Mux9~0_combout\ = ( \synthesizer|counter\(1) & ( \synthesizer|counter[0]~DUPLICATE_q\ & ( (!\synthesizer|counter[3]~DUPLICATE_q\) # (\synthesizer|counter[2]~DUPLICATE_q\) ) ) ) # ( !\synthesizer|counter\(1) & ( 
-- \synthesizer|counter[0]~DUPLICATE_q\ & ( \synthesizer|counter[3]~DUPLICATE_q\ ) ) ) # ( \synthesizer|counter\(1) & ( !\synthesizer|counter[0]~DUPLICATE_q\ & ( (\synthesizer|counter[3]~DUPLICATE_q\ & !\synthesizer|counter[2]~DUPLICATE_q\) ) ) ) # ( 
-- !\synthesizer|counter\(1) & ( !\synthesizer|counter[0]~DUPLICATE_q\ & ( (\synthesizer|counter[3]~DUPLICATE_q\ & \synthesizer|counter[2]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001010001000100010001010101010101011011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \synthesizer|ALT_INV_counter[3]~DUPLICATE_q\,
	datab => \synthesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	datae => \synthesizer|ALT_INV_counter\(1),
	dataf => \synthesizer|ALT_INV_counter[0]~DUPLICATE_q\,
	combout => \synthesizer|Mux9~0_combout\);

-- Location: MLABCELL_X42_Y57_N27
\synthesizer|output_p[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|output_p[2]~feeder_combout\ = ( \synthesizer|Mux9~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \synthesizer|ALT_INV_Mux9~0_combout\,
	combout => \synthesizer|output_p[2]~feeder_combout\);

-- Location: FF_X42_Y57_N28
\synthesizer|output_p[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \synthesizer|output_p[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|output_p\(2));

-- Location: MLABCELL_X42_Y55_N24
\synthesizer|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Mux8~0_combout\ = ( \synthesizer|counter[0]~DUPLICATE_q\ & ( (!\synthesizer|counter[3]~DUPLICATE_q\ & (\synthesizer|counter\(1))) # (\synthesizer|counter[3]~DUPLICATE_q\ & ((!\synthesizer|counter\(1)) # 
-- (\synthesizer|counter[2]~DUPLICATE_q\))) ) ) # ( !\synthesizer|counter[0]~DUPLICATE_q\ & ( !\synthesizer|counter[3]~DUPLICATE_q\ $ (!\synthesizer|counter\(1) $ (!\synthesizer|counter[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100101100110100110010110011001100110011101110110011001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \synthesizer|ALT_INV_counter[3]~DUPLICATE_q\,
	datab => \synthesizer|ALT_INV_counter\(1),
	datad => \synthesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	dataf => \synthesizer|ALT_INV_counter[0]~DUPLICATE_q\,
	combout => \synthesizer|Mux8~0_combout\);

-- Location: FF_X42_Y57_N46
\synthesizer|output_p[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	asdata => \synthesizer|Mux8~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|output_p\(3));

-- Location: FF_X42_Y57_N40
\synthesizer|output_p[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	asdata => \synthesizer|Mux8~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|output_p\(4));

-- Location: FF_X42_Y57_N10
\synthesizer|output_p[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	asdata => \synthesizer|Mux8~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|output_p\(5));

-- Location: MLABCELL_X42_Y55_N54
\synthesizer|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Mux2~0_combout\ = ( \synthesizer|counter\(1) & ( \synthesizer|counter[0]~DUPLICATE_q\ & ( (!\synthesizer|counter[3]~DUPLICATE_q\) # (\synthesizer|counter[2]~DUPLICATE_q\) ) ) ) # ( !\synthesizer|counter\(1) & ( 
-- \synthesizer|counter[0]~DUPLICATE_q\ & ( \synthesizer|counter[3]~DUPLICATE_q\ ) ) ) # ( \synthesizer|counter\(1) & ( !\synthesizer|counter[0]~DUPLICATE_q\ & ( !\synthesizer|counter[3]~DUPLICATE_q\ ) ) ) # ( !\synthesizer|counter\(1) & ( 
-- !\synthesizer|counter[0]~DUPLICATE_q\ & ( !\synthesizer|counter[3]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101001010101010101011011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \synthesizer|ALT_INV_counter[3]~DUPLICATE_q\,
	datab => \synthesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	datae => \synthesizer|ALT_INV_counter\(1),
	dataf => \synthesizer|ALT_INV_counter[0]~DUPLICATE_q\,
	combout => \synthesizer|Mux2~0_combout\);

-- Location: MLABCELL_X42_Y57_N12
\synthesizer|output_p[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|output_p[6]~feeder_combout\ = ( \synthesizer|Mux2~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \synthesizer|ALT_INV_Mux2~0_combout\,
	combout => \synthesizer|output_p[6]~feeder_combout\);

-- Location: FF_X42_Y57_N13
\synthesizer|output_p[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \synthesizer|output_p[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|output_p\(6));

-- Location: MLABCELL_X42_Y55_N45
\synthesizer|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Mux7~0_combout\ = ( \synthesizer|counter[0]~DUPLICATE_q\ & ( (!\synthesizer|counter[3]~DUPLICATE_q\) # ((\synthesizer|counter\(1) & \synthesizer|counter[2]~DUPLICATE_q\)) ) ) # ( !\synthesizer|counter[0]~DUPLICATE_q\ & ( 
-- !\synthesizer|counter[3]~DUPLICATE_q\ $ (!\synthesizer|counter\(1) $ (!\synthesizer|counter[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011010010110100101101001011010101011101010111010101110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \synthesizer|ALT_INV_counter[3]~DUPLICATE_q\,
	datab => \synthesizer|ALT_INV_counter\(1),
	datac => \synthesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	dataf => \synthesizer|ALT_INV_counter[0]~DUPLICATE_q\,
	combout => \synthesizer|Mux7~0_combout\);

-- Location: FF_X42_Y55_N46
\synthesizer|output_p[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \synthesizer|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|output_p\(7));

-- Location: MLABCELL_X42_Y55_N30
\synthesizer|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Mux6~0_combout\ = ( \synthesizer|counter[0]~DUPLICATE_q\ & ( (!\synthesizer|counter[3]~DUPLICATE_q\ & (\synthesizer|counter\(1))) # (\synthesizer|counter[3]~DUPLICATE_q\ & ((!\synthesizer|counter\(1)) # 
-- (\synthesizer|counter[2]~DUPLICATE_q\))) ) ) # ( !\synthesizer|counter[0]~DUPLICATE_q\ & ( \synthesizer|counter[3]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101100110011101110110011001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \synthesizer|ALT_INV_counter[3]~DUPLICATE_q\,
	datab => \synthesizer|ALT_INV_counter\(1),
	datad => \synthesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	dataf => \synthesizer|ALT_INV_counter[0]~DUPLICATE_q\,
	combout => \synthesizer|Mux6~0_combout\);

-- Location: FF_X42_Y57_N7
\synthesizer|output_p[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	asdata => \synthesizer|Mux6~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|output_p\(8));

-- Location: MLABCELL_X42_Y55_N36
\synthesizer|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Mux1~0_combout\ = ( \synthesizer|counter[0]~DUPLICATE_q\ & ( (!\synthesizer|counter[3]~DUPLICATE_q\) # ((\synthesizer|counter\(1) & \synthesizer|counter[2]~DUPLICATE_q\)) ) ) # ( !\synthesizer|counter[0]~DUPLICATE_q\ & ( 
-- !\synthesizer|counter\(1) $ (!\synthesizer|counter[2]~DUPLICATE_q\ $ (\synthesizer|counter[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100111111111000100011111111100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \synthesizer|ALT_INV_counter\(1),
	datab => \synthesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	datad => \synthesizer|ALT_INV_counter[3]~DUPLICATE_q\,
	dataf => \synthesizer|ALT_INV_counter[0]~DUPLICATE_q\,
	combout => \synthesizer|Mux1~0_combout\);

-- Location: MLABCELL_X42_Y57_N18
\synthesizer|output_p[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|output_p[9]~feeder_combout\ = ( \synthesizer|Mux1~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \synthesizer|ALT_INV_Mux1~0_combout\,
	combout => \synthesizer|output_p[9]~feeder_combout\);

-- Location: FF_X42_Y57_N19
\synthesizer|output_p[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \synthesizer|output_p[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|output_p\(9));

-- Location: MLABCELL_X42_Y55_N33
\synthesizer|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Mux5~0_combout\ = ( \synthesizer|counter[0]~DUPLICATE_q\ & ( (!\synthesizer|counter[3]~DUPLICATE_q\ & (\synthesizer|counter\(1))) # (\synthesizer|counter[3]~DUPLICATE_q\ & ((!\synthesizer|counter\(1)) # 
-- (\synthesizer|counter[2]~DUPLICATE_q\))) ) ) # ( !\synthesizer|counter[0]~DUPLICATE_q\ & ( !\synthesizer|counter[3]~DUPLICATE_q\ $ (!\synthesizer|counter\(1) $ (\synthesizer|counter[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101100111011001110110011101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \synthesizer|ALT_INV_counter[3]~DUPLICATE_q\,
	datab => \synthesizer|ALT_INV_counter\(1),
	datac => \synthesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	dataf => \synthesizer|ALT_INV_counter[0]~DUPLICATE_q\,
	combout => \synthesizer|Mux5~0_combout\);

-- Location: FF_X42_Y55_N34
\synthesizer|output_p[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \synthesizer|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|output_p\(10));

-- Location: MLABCELL_X42_Y55_N12
\synthesizer|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Mux4~0_combout\ = ( \synthesizer|counter[2]~DUPLICATE_q\ & ( \synthesizer|counter[0]~DUPLICATE_q\ & ( (!\synthesizer|counter[3]~DUPLICATE_q\) # (\synthesizer|counter\(1)) ) ) ) # ( !\synthesizer|counter[2]~DUPLICATE_q\ & ( 
-- \synthesizer|counter[0]~DUPLICATE_q\ & ( !\synthesizer|counter[3]~DUPLICATE_q\ ) ) ) # ( \synthesizer|counter[2]~DUPLICATE_q\ & ( !\synthesizer|counter[0]~DUPLICATE_q\ & ( \synthesizer|counter[3]~DUPLICATE_q\ ) ) ) # ( 
-- !\synthesizer|counter[2]~DUPLICATE_q\ & ( !\synthesizer|counter[0]~DUPLICATE_q\ & ( \synthesizer|counter[3]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \synthesizer|ALT_INV_counter[3]~DUPLICATE_q\,
	datab => \synthesizer|ALT_INV_counter\(1),
	datae => \synthesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	dataf => \synthesizer|ALT_INV_counter[0]~DUPLICATE_q\,
	combout => \synthesizer|Mux4~0_combout\);

-- Location: FF_X42_Y55_N13
\synthesizer|output_p[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \synthesizer|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|output_p\(11));

-- Location: MLABCELL_X42_Y55_N51
\synthesizer|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Mux3~0_combout\ = ( \synthesizer|counter[0]~DUPLICATE_q\ & ( (!\synthesizer|counter[3]~DUPLICATE_q\) # ((\synthesizer|counter\(1) & \synthesizer|counter[2]~DUPLICATE_q\)) ) ) # ( !\synthesizer|counter[0]~DUPLICATE_q\ & ( 
-- !\synthesizer|counter[3]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101011101010111010101110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \synthesizer|ALT_INV_counter[3]~DUPLICATE_q\,
	datab => \synthesizer|ALT_INV_counter\(1),
	datac => \synthesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	dataf => \synthesizer|ALT_INV_counter[0]~DUPLICATE_q\,
	combout => \synthesizer|Mux3~0_combout\);

-- Location: FF_X42_Y57_N49
\synthesizer|output_p[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	asdata => \synthesizer|Mux3~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|output_p\(12));

-- Location: MLABCELL_X42_Y57_N51
\synthesizer|output_p[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|output_p[13]~feeder_combout\ = ( \synthesizer|Mux2~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \synthesizer|ALT_INV_Mux2~0_combout\,
	combout => \synthesizer|output_p[13]~feeder_combout\);

-- Location: FF_X42_Y57_N52
\synthesizer|output_p[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \synthesizer|output_p[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|output_p\(13));

-- Location: MLABCELL_X42_Y57_N30
\synthesizer|output_p[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|output_p[14]~feeder_combout\ = ( \synthesizer|Mux1~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \synthesizer|ALT_INV_Mux1~0_combout\,
	combout => \synthesizer|output_p[14]~feeder_combout\);

-- Location: FF_X42_Y57_N31
\synthesizer|output_p[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \synthesizer|output_p[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|output_p\(14));

-- Location: MLABCELL_X42_Y55_N48
\synthesizer|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \synthesizer|Mux0~0_combout\ = ( \synthesizer|counter[0]~DUPLICATE_q\ & ( (!\synthesizer|counter[3]~DUPLICATE_q\ & ((!\synthesizer|counter\(1)) # (!\synthesizer|counter[2]~DUPLICATE_q\))) ) ) # ( !\synthesizer|counter[0]~DUPLICATE_q\ & ( 
-- !\synthesizer|counter[3]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010100010001010101010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \synthesizer|ALT_INV_counter[3]~DUPLICATE_q\,
	datab => \synthesizer|ALT_INV_counter\(1),
	datad => \synthesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	dataf => \synthesizer|ALT_INV_counter[0]~DUPLICATE_q\,
	combout => \synthesizer|Mux0~0_combout\);

-- Location: FF_X42_Y55_N49
\synthesizer|output_p[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \innerDataClock~q\,
	d => \synthesizer|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \synthesizer|output_p\(15));

-- Location: LABCELL_X43_Y57_N6
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

-- Location: FF_X43_Y57_N7
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

-- Location: LABCELL_X35_Y53_N30
\WrReState~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WrReState~0_combout\ = !\WrReEn~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_WrReEn~q\,
	combout => \WrReState~0_combout\);

-- Location: FF_X35_Y53_N31
\WrReState~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_WrReEnButton~inputCLKENA0_outclk\,
	d => \WrReState~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WrReState~reg0_q\);

-- Location: LABCELL_X35_Y53_N9
\configurator|CLKRECEIVED~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|CLKRECEIVED~0_combout\ = ( \resetn~input_o\ & ( \configurator|internalClock~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \configurator|ALT_INV_internalClock~q\,
	dataf => \ALT_INV_resetn~input_o\,
	combout => \configurator|CLKRECEIVED~0_combout\);

-- Location: LABCELL_X33_Y53_N0
\configurator|writeConfigReceived~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|writeConfigReceived~0_combout\ = (!\resetn~input_o\) # (\writeconfig~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_resetn~input_o\,
	datac => \ALT_INV_writeconfig~input_o\,
	combout => \configurator|writeConfigReceived~0_combout\);

-- Location: LABCELL_X33_Y53_N6
\configurator|stateRegOut[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|stateRegOut[0]~3_combout\ = ( \resetn~input_o\ & ( (\configurator|state.DISCARD~DUPLICATE_q\) # (\configurator|state.INTER~q\) ) ) # ( !\resetn~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \configurator|ALT_INV_state.INTER~q\,
	datac => \configurator|ALT_INV_state.DISCARD~DUPLICATE_q\,
	dataf => \ALT_INV_resetn~input_o\,
	combout => \configurator|stateRegOut[0]~3_combout\);

-- Location: LABCELL_X33_Y53_N3
\configurator|stateRegOut[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|stateRegOut[1]~4_combout\ = ( \configurator|state.SEND~DUPLICATE_q\ ) # ( !\configurator|state.SEND~DUPLICATE_q\ & ( !\resetn~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_resetn~input_o\,
	dataf => \configurator|ALT_INV_state.SEND~DUPLICATE_q\,
	combout => \configurator|stateRegOut[1]~4_combout\);

-- Location: LABCELL_X33_Y53_N54
\configurator|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|Selector3~0_combout\ = ( \configurator|configOK~reg0_q\ & ( (!\writeconfig~input_o\ & ((\configurator|state.SEND~DUPLICATE_q\) # (\configurator|state.DONE~q\))) ) ) # ( !\configurator|configOK~reg0_q\ & ( (!\writeconfig~input_o\ & 
-- \configurator|state.DONE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_writeconfig~input_o\,
	datac => \configurator|ALT_INV_state.DONE~q\,
	datad => \configurator|ALT_INV_state.SEND~DUPLICATE_q\,
	dataf => \configurator|ALT_INV_configOK~reg0_q\,
	combout => \configurator|Selector3~0_combout\);

-- Location: FF_X33_Y53_N56
\configurator|nextState.DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inputClock~inputCLKENA0_outclk\,
	d => \configurator|Selector3~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|nextState.DONE~q\);

-- Location: FF_X33_Y53_N26
\configurator|state.DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inputClock~inputCLKENA0_outclk\,
	asdata => \configurator|nextState.DONE~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \configurator|state.DONE~q\);

-- Location: LABCELL_X33_Y53_N24
\configurator|stateRegOut[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|stateRegOut[2]~5_combout\ = ( \configurator|state.INTER~q\ ) # ( !\configurator|state.INTER~q\ & ( (!\resetn~input_o\) # (\configurator|state.DONE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111110011001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_resetn~input_o\,
	datad => \configurator|ALT_INV_state.DONE~q\,
	dataf => \configurator|ALT_INV_state.INTER~q\,
	combout => \configurator|stateRegOut[2]~5_combout\);

-- Location: LABCELL_X33_Y53_N48
\configurator|nextStateRegOut[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|nextStateRegOut[0]~4_combout\ = ( \configurator|nextState.DISCARD~q\ ) # ( !\configurator|nextState.DISCARD~q\ & ( (!\resetn~input_o\) # (\configurator|nextState.INTER~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111110011001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_resetn~input_o\,
	datad => \configurator|ALT_INV_nextState.INTER~q\,
	dataf => \configurator|ALT_INV_nextState.DISCARD~q\,
	combout => \configurator|nextStateRegOut[0]~4_combout\);

-- Location: LABCELL_X33_Y53_N27
\configurator|nextStateRegOut[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|nextStateRegOut[1]~5_combout\ = (!\resetn~input_o\) # (\configurator|nextState.SEND~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_resetn~input_o\,
	datac => \configurator|ALT_INV_nextState.SEND~q\,
	combout => \configurator|nextStateRegOut[1]~5_combout\);

-- Location: LABCELL_X33_Y53_N15
\configurator|nextStateRegOut[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \configurator|nextStateRegOut[2]~6_combout\ = ( \configurator|nextState.DONE~q\ ) # ( !\configurator|nextState.DONE~q\ & ( (!\resetn~input_o\) # (\configurator|nextState.INTER~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111111111111111111111001111110011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_resetn~input_o\,
	datac => \configurator|ALT_INV_nextState.INTER~q\,
	datae => \configurator|ALT_INV_nextState.DONE~q\,
	combout => \configurator|nextStateRegOut[2]~6_combout\);

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


