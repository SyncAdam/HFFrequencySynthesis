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

-- DATE "03/24/2026 14:52:00"

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

ENTITY 	HFFrequencySynthesis IS
    PORT (
	\Parallel_Data_Out[15](n)\ : OUT std_logic;
	\Parallel_Data_Out[14](n)\ : OUT std_logic;
	\Parallel_Data_Out[13](n)\ : OUT std_logic;
	\Parallel_Data_Out[12](n)\ : OUT std_logic;
	\Parallel_Data_Out[11](n)\ : OUT std_logic;
	\Parallel_Data_Out[10](n)\ : OUT std_logic;
	\Parallel_Data_Out[9](n)\ : OUT std_logic;
	\Parallel_Data_Out[8](n)\ : OUT std_logic;
	\Parallel_Data_Out[7](n)\ : OUT std_logic;
	\Parallel_Data_Out[6](n)\ : OUT std_logic;
	\Parallel_Data_Out[5](n)\ : OUT std_logic;
	\Parallel_Data_Out[4](n)\ : OUT std_logic;
	\Parallel_Data_Out[3](n)\ : OUT std_logic;
	\Parallel_Data_Out[2](n)\ : OUT std_logic;
	\Parallel_Data_Out[1](n)\ : OUT std_logic;
	\Parallel_Data_Out[0](n)\ : OUT std_logic;
	\Parallel_Data_CLK_IN(n)\ : IN std_logic := '0';
	SCLK : OUT std_logic;
	Parallel_Data_CLK_IN : IN std_logic;
	Run : IN std_logic;
	Wr_Re_Button : IN std_logic;
	Clock : IN std_logic;
	Reset : IN std_logic;
	SDENB : OUT std_logic;
	SDIO : OUT std_logic;
	Done : OUT std_logic;
	Wr_Re_Status : OUT std_logic;
	CLK_Buffered : OUT std_logic;
	SCLK_LED : OUT std_logic;
	SDENB_LED : OUT std_logic;
	SDIO_LED : OUT std_logic;
	Current_State : OUT std_logic_vector(2 DOWNTO 0);
	Parallel_Data_Out : OUT std_logic_vector(15 DOWNTO 0)
	);
END HFFrequencySynthesis;

-- Design Ports Information
-- SCLK	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDENB	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDIO	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Done	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Wr_Re_Status	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_Buffered	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SCLK_LED	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDENB_LED	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDIO_LED	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_State[2]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_State[1]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Current_State[0]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Parallel_Data_Out[15]	=>  Location: PIN_C19,	 I/O Standard: LVDS,	 Current Strength: Default
-- Parallel_Data_Out[14]	=>  Location: PIN_C17,	 I/O Standard: LVDS,	 Current Strength: Default
-- Parallel_Data_Out[13]	=>  Location: PIN_A23,	 I/O Standard: LVDS,	 Current Strength: Default
-- Parallel_Data_Out[12]	=>  Location: PIN_A14,	 I/O Standard: LVDS,	 Current Strength: Default
-- Parallel_Data_Out[11]	=>  Location: PIN_C23,	 I/O Standard: LVDS,	 Current Strength: Default
-- Parallel_Data_Out[10]	=>  Location: PIN_B12,	 I/O Standard: LVDS,	 Current Strength: Default
-- Parallel_Data_Out[9]	=>  Location: PIN_A8,	 I/O Standard: LVDS,	 Current Strength: Default
-- Parallel_Data_Out[8]	=>  Location: PIN_C13,	 I/O Standard: LVDS,	 Current Strength: Default
-- Parallel_Data_Out[7]	=>  Location: PIN_B22,	 I/O Standard: LVDS,	 Current Strength: Default
-- Parallel_Data_Out[6]	=>  Location: PIN_B15,	 I/O Standard: LVDS,	 Current Strength: Default
-- Parallel_Data_Out[5]	=>  Location: PIN_C20,	 I/O Standard: LVDS,	 Current Strength: Default
-- Parallel_Data_Out[4]	=>  Location: PIN_B10,	 I/O Standard: LVDS,	 Current Strength: Default
-- Parallel_Data_Out[3]	=>  Location: PIN_A12,	 I/O Standard: LVDS,	 Current Strength: Default
-- Parallel_Data_Out[2]	=>  Location: PIN_D10,	 I/O Standard: LVDS,	 Current Strength: Default
-- Parallel_Data_Out[1]	=>  Location: PIN_C9,	 I/O Standard: LVDS,	 Current Strength: Default
-- Parallel_Data_Out[0]	=>  Location: PIN_E10,	 I/O Standard: LVDS,	 Current Strength: Default
-- Reset	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Parallel_Data_CLK_IN	=>  Location: PIN_G15,	 I/O Standard: LVDS,	 Current Strength: Default
-- Run	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Wr_Re_Button	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Parallel_Data_Out[15](n)	=>  Location: PIN_C18,	 I/O Standard: LVDS,	 Current Strength: Default
-- Parallel_Data_Out[14](n)	=>  Location: PIN_B17,	 I/O Standard: LVDS,	 Current Strength: Default
-- Parallel_Data_Out[13](n)	=>  Location: PIN_A22,	 I/O Standard: LVDS,	 Current Strength: Default
-- Parallel_Data_Out[12](n)	=>  Location: PIN_B14,	 I/O Standard: LVDS,	 Current Strength: Default
-- Parallel_Data_Out[11](n)	=>  Location: PIN_C22,	 I/O Standard: LVDS,	 Current Strength: Default
-- Parallel_Data_Out[10](n)	=>  Location: PIN_A13,	 I/O Standard: LVDS,	 Current Strength: Default
-- Parallel_Data_Out[9](n)	=>  Location: PIN_A9,	 I/O Standard: LVDS,	 Current Strength: Default
-- Parallel_Data_Out[8](n)	=>  Location: PIN_C12,	 I/O Standard: LVDS,	 Current Strength: Default
-- Parallel_Data_Out[7](n)	=>  Location: PIN_A21,	 I/O Standard: LVDS,	 Current Strength: Default
-- Parallel_Data_Out[6](n)	=>  Location: PIN_C15,	 I/O Standard: LVDS,	 Current Strength: Default
-- Parallel_Data_Out[5](n)	=>  Location: PIN_B19,	 I/O Standard: LVDS,	 Current Strength: Default
-- Parallel_Data_Out[4](n)	=>  Location: PIN_A11,	 I/O Standard: LVDS,	 Current Strength: Default
-- Parallel_Data_Out[3](n)	=>  Location: PIN_B11,	 I/O Standard: LVDS,	 Current Strength: Default
-- Parallel_Data_Out[2](n)	=>  Location: PIN_C10,	 I/O Standard: LVDS,	 Current Strength: Default
-- Parallel_Data_Out[1](n)	=>  Location: PIN_B9,	 I/O Standard: LVDS,	 Current Strength: Default
-- Parallel_Data_Out[0](n)	=>  Location: PIN_E11,	 I/O Standard: LVDS,	 Current Strength: Default
-- Parallel_Data_CLK_IN(n)	=>  Location: PIN_G14,	 I/O Standard: LVDS,	 Current Strength: Default


ARCHITECTURE structure OF HFFrequencySynthesis IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_Parallel_Data_Out[15](n)\ : std_logic;
SIGNAL \ww_Parallel_Data_Out[14](n)\ : std_logic;
SIGNAL \ww_Parallel_Data_Out[13](n)\ : std_logic;
SIGNAL \ww_Parallel_Data_Out[12](n)\ : std_logic;
SIGNAL \ww_Parallel_Data_Out[11](n)\ : std_logic;
SIGNAL \ww_Parallel_Data_Out[10](n)\ : std_logic;
SIGNAL \ww_Parallel_Data_Out[9](n)\ : std_logic;
SIGNAL \ww_Parallel_Data_Out[8](n)\ : std_logic;
SIGNAL \ww_Parallel_Data_Out[7](n)\ : std_logic;
SIGNAL \ww_Parallel_Data_Out[6](n)\ : std_logic;
SIGNAL \ww_Parallel_Data_Out[5](n)\ : std_logic;
SIGNAL \ww_Parallel_Data_Out[4](n)\ : std_logic;
SIGNAL \ww_Parallel_Data_Out[3](n)\ : std_logic;
SIGNAL \ww_Parallel_Data_Out[2](n)\ : std_logic;
SIGNAL \ww_Parallel_Data_Out[1](n)\ : std_logic;
SIGNAL \ww_Parallel_Data_Out[0](n)\ : std_logic;
SIGNAL \ww_Parallel_Data_CLK_IN(n)\ : std_logic;
SIGNAL ww_SCLK : std_logic;
SIGNAL ww_Parallel_Data_CLK_IN : std_logic;
SIGNAL ww_Run : std_logic;
SIGNAL ww_Wr_Re_Button : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_SDENB : std_logic;
SIGNAL ww_SDIO : std_logic;
SIGNAL ww_Done : std_logic;
SIGNAL ww_Wr_Re_Status : std_logic;
SIGNAL ww_CLK_Buffered : std_logic;
SIGNAL ww_SCLK_LED : std_logic;
SIGNAL ww_SDENB_LED : std_logic;
SIGNAL ww_SDIO_LED : std_logic;
SIGNAL ww_Current_State : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Parallel_Data_Out : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst|configurator|clockDividerBuffer[2]~1_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \inst|configurator|clockDividerBuffer~3_combout\ : std_logic;
SIGNAL \inst|configurator|clockDividerBuffer~0_combout\ : std_logic;
SIGNAL \inst|configurator|clockDividerBuffer~2_combout\ : std_logic;
SIGNAL \inst|configurator|clockDividerBuffer[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|configurator|internalClock~0_combout\ : std_logic;
SIGNAL \inst|configurator|internalClock~feeder_combout\ : std_logic;
SIGNAL \inst|configurator|internalClock~q\ : std_logic;
SIGNAL \inst|configurator|sclk_reg~0_combout\ : std_logic;
SIGNAL \inst|configurator|sclk_reg~q\ : std_logic;
SIGNAL \inst|configurator|Add1~21_sumout\ : std_logic;
SIGNAL \inst|configurator|Add2~1_sumout\ : std_logic;
SIGNAL \inst|configurator|dataIndex[4]~feeder_combout\ : std_logic;
SIGNAL \inst|configurator|Add1~22\ : std_logic;
SIGNAL \inst|configurator|Add1~29_sumout\ : std_logic;
SIGNAL \inst|configurator|Add1~30\ : std_logic;
SIGNAL \inst|configurator|Add1~25_sumout\ : std_logic;
SIGNAL \inst|configurator|Add1~26\ : std_logic;
SIGNAL \inst|configurator|Add1~14\ : std_logic;
SIGNAL \inst|configurator|Add1~17_sumout\ : std_logic;
SIGNAL \inst|configurator|Add1~18\ : std_logic;
SIGNAL \inst|configurator|Add1~5_sumout\ : std_logic;
SIGNAL \inst|configurator|Add1~6\ : std_logic;
SIGNAL \inst|configurator|Add1~9_sumout\ : std_logic;
SIGNAL \inst|configurator|Add1~10\ : std_logic;
SIGNAL \inst|configurator|Add1~1_sumout\ : std_logic;
SIGNAL \inst|configurator|counter[0]~0_combout\ : std_logic;
SIGNAL \inst|configurator|Add2~2\ : std_logic;
SIGNAL \inst|configurator|Add2~5_sumout\ : std_logic;
SIGNAL \inst|configurator|Add2~6\ : std_logic;
SIGNAL \inst|configurator|Add2~9_sumout\ : std_logic;
SIGNAL \inst|configurator|Add2~10\ : std_logic;
SIGNAL \inst|configurator|Add2~13_sumout\ : std_logic;
SIGNAL \inst|configurator|Add2~14\ : std_logic;
SIGNAL \inst|configurator|Add2~21_sumout\ : std_logic;
SIGNAL \inst|configurator|Add2~22\ : std_logic;
SIGNAL \inst|configurator|Add2~17_sumout\ : std_logic;
SIGNAL \inst|configurator|Add2~18\ : std_logic;
SIGNAL \inst|configurator|Add2~25_sumout\ : std_logic;
SIGNAL \inst|configurator|LessThan2~0_combout\ : std_logic;
SIGNAL \inst|configurator|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|configurator|configOK~0_combout\ : std_logic;
SIGNAL \inst|configurator|configOK~reg0_q\ : std_logic;
SIGNAL \inst|configurator|needWait~0_combout\ : std_logic;
SIGNAL \inst|configurator|needWait~1_combout\ : std_logic;
SIGNAL \inst|configurator|needWait~q\ : std_logic;
SIGNAL \Run~input_o\ : std_logic;
SIGNAL \inst|configurator|Add4~33_sumout\ : std_logic;
SIGNAL \inst|configurator|Add4~6\ : std_logic;
SIGNAL \inst|configurator|Add4~9_sumout\ : std_logic;
SIGNAL \inst|configurator|waiting~0_combout\ : std_logic;
SIGNAL \inst|configurator|Add4~10\ : std_logic;
SIGNAL \inst|configurator|Add4~13_sumout\ : std_logic;
SIGNAL \inst|configurator|Add4~14\ : std_logic;
SIGNAL \inst|configurator|Add4~17_sumout\ : std_logic;
SIGNAL \inst|configurator|Add4~18\ : std_logic;
SIGNAL \inst|configurator|Add4~25_sumout\ : std_logic;
SIGNAL \inst|configurator|Add4~26\ : std_logic;
SIGNAL \inst|configurator|Add4~57_sumout\ : std_logic;
SIGNAL \inst|configurator|Equal3~2_combout\ : std_logic;
SIGNAL \inst|configurator|Add4~58\ : std_logic;
SIGNAL \inst|configurator|Add4~21_sumout\ : std_logic;
SIGNAL \inst|configurator|Add4~22\ : std_logic;
SIGNAL \inst|configurator|Add4~29_sumout\ : std_logic;
SIGNAL \inst|configurator|Equal3~1_combout\ : std_logic;
SIGNAL \inst|configurator|Equal3~3_combout\ : std_logic;
SIGNAL \inst|configurator|Add4~34\ : std_logic;
SIGNAL \inst|configurator|Add4~37_sumout\ : std_logic;
SIGNAL \inst|configurator|Add4~38\ : std_logic;
SIGNAL \inst|configurator|Add4~41_sumout\ : std_logic;
SIGNAL \inst|configurator|Add4~42\ : std_logic;
SIGNAL \inst|configurator|Add4~45_sumout\ : std_logic;
SIGNAL \inst|configurator|Add4~46\ : std_logic;
SIGNAL \inst|configurator|Add4~49_sumout\ : std_logic;
SIGNAL \inst|configurator|Add4~50\ : std_logic;
SIGNAL \inst|configurator|Add4~53_sumout\ : std_logic;
SIGNAL \inst|configurator|Add4~54\ : std_logic;
SIGNAL \inst|configurator|Add4~61_sumout\ : std_logic;
SIGNAL \inst|configurator|Add4~62\ : std_logic;
SIGNAL \inst|configurator|Add4~1_sumout\ : std_logic;
SIGNAL \inst|configurator|Add4~2\ : std_logic;
SIGNAL \inst|configurator|Add4~5_sumout\ : std_logic;
SIGNAL \inst|configurator|Equal3~0_combout\ : std_logic;
SIGNAL \inst|configurator|WaitingDone~0_combout\ : std_logic;
SIGNAL \inst|configurator|WaitingDone~q\ : std_logic;
SIGNAL \inst|configurator|Selector2~0_combout\ : std_logic;
SIGNAL \inst|configurator|nextState.INTER~q\ : std_logic;
SIGNAL \inst|configurator|state.INTER~q\ : std_logic;
SIGNAL \inst|configurator|Selector3~0_combout\ : std_logic;
SIGNAL \inst|configurator|Selector4~0_combout\ : std_logic;
SIGNAL \inst|configurator|nextState.DONE~q\ : std_logic;
SIGNAL \inst|configurator|state.DONE~q\ : std_logic;
SIGNAL \inst|configurator|Selector0~0_combout\ : std_logic;
SIGNAL \inst|configurator|nextState.IDLE~q\ : std_logic;
SIGNAL \inst|configurator|state.IDLE~q\ : std_logic;
SIGNAL \inst|configurator|discardBuffer~0_combout\ : std_logic;
SIGNAL \inst|configurator|discardBuffer~q\ : std_logic;
SIGNAL \inst|configurator|discarded~0_combout\ : std_logic;
SIGNAL \inst|configurator|discarded~feeder_combout\ : std_logic;
SIGNAL \inst|configurator|discarded~q\ : std_logic;
SIGNAL \inst|configurator|Selector3~1_combout\ : std_logic;
SIGNAL \inst|configurator|nextState.DISCARD~q\ : std_logic;
SIGNAL \inst|configurator|state.DISCARD~q\ : std_logic;
SIGNAL \inst|configurator|Selector1~0_combout\ : std_logic;
SIGNAL \inst|configurator|nextState.SEND~q\ : std_logic;
SIGNAL \inst|configurator|state.SEND~q\ : std_logic;
SIGNAL \inst|configurator|sendData~0_combout\ : std_logic;
SIGNAL \inst|configurator|Add1~13_sumout\ : std_logic;
SIGNAL \inst|configurator|LessThan1~1_combout\ : std_logic;
SIGNAL \Wr_Re_Button~input_o\ : std_logic;
SIGNAL \inst|btn_ff1~0_combout\ : std_logic;
SIGNAL \inst|btn_ff1~q\ : std_logic;
SIGNAL \inst|btn_ff2~q\ : std_logic;
SIGNAL \inst|btn_prev~q\ : std_logic;
SIGNAL \inst|WrReEn~0_combout\ : std_logic;
SIGNAL \inst|WrReEn~q\ : std_logic;
SIGNAL \inst|configurator|wrre_latched~0_combout\ : std_logic;
SIGNAL \inst|configurator|wrre_latched~q\ : std_logic;
SIGNAL \inst|configurator|Mux0~0_combout\ : std_logic;
SIGNAL \inst|configurator|sdio_do~4_combout\ : std_logic;
SIGNAL \inst|configurator|Equal0~0_combout\ : std_logic;
SIGNAL \inst|configurator|Mux1~10_combout\ : std_logic;
SIGNAL \inst|configurator|Mux1~11_combout\ : std_logic;
SIGNAL \inst|configurator|Mux1~2_combout\ : std_logic;
SIGNAL \inst|configurator|Mux1~9_combout\ : std_logic;
SIGNAL \inst|configurator|Mux1~12_combout\ : std_logic;
SIGNAL \inst|configurator|Mux1~13_combout\ : std_logic;
SIGNAL \inst|configurator|Mux1~14_combout\ : std_logic;
SIGNAL \inst|configurator|Mux1~1_combout\ : std_logic;
SIGNAL \inst|configurator|Mux1~0_combout\ : std_logic;
SIGNAL \inst|configurator|Mux1~3_combout\ : std_logic;
SIGNAL \inst|configurator|Mux1~6_combout\ : std_logic;
SIGNAL \inst|configurator|Mux1~4_combout\ : std_logic;
SIGNAL \inst|configurator|Mux1~7_combout\ : std_logic;
SIGNAL \inst|configurator|Mux1~5_combout\ : std_logic;
SIGNAL \inst|configurator|Mux1~8_combout\ : std_logic;
SIGNAL \inst|configurator|Mux1~15_combout\ : std_logic;
SIGNAL \inst|configurator|Mux1~16_combout\ : std_logic;
SIGNAL \inst|configurator|sdio_do~0_combout\ : std_logic;
SIGNAL \inst|configurator|sdio_oe~1_combout\ : std_logic;
SIGNAL \inst|configurator|SCLK~0_combout\ : std_logic;
SIGNAL \inst|configurator|SDENB~0_combout\ : std_logic;
SIGNAL \inst|WrReEn~DUPLICATE_q\ : std_logic;
SIGNAL \inst|configurator|CLKRECEIVED~0_combout\ : std_logic;
SIGNAL \inst|configurator|stateRegOut[2]~3_combout\ : std_logic;
SIGNAL \inst|configurator|stateRegOut[1]~4_combout\ : std_logic;
SIGNAL \inst|configurator|stateRegOut[0]~5_combout\ : std_logic;
SIGNAL \Parallel_Data_CLK_IN~input_o\ : std_logic;
SIGNAL \Parallel_Data_CLK_IN~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst|synthesizer|Add0~1_sumout\ : std_logic;
SIGNAL \inst|synthesizer|Add0~118\ : std_logic;
SIGNAL \inst|synthesizer|Add0~121_sumout\ : std_logic;
SIGNAL \inst|synthesizer|Add0~122\ : std_logic;
SIGNAL \inst|synthesizer|Add0~125_sumout\ : std_logic;
SIGNAL \inst|synthesizer|Add0~126\ : std_logic;
SIGNAL \inst|synthesizer|Add0~101_sumout\ : std_logic;
SIGNAL \inst|synthesizer|Add0~102\ : std_logic;
SIGNAL \inst|synthesizer|Add0~105_sumout\ : std_logic;
SIGNAL \inst|synthesizer|Add0~106\ : std_logic;
SIGNAL \inst|synthesizer|Add0~109_sumout\ : std_logic;
SIGNAL \inst|synthesizer|Add0~110\ : std_logic;
SIGNAL \inst|synthesizer|Add0~113_sumout\ : std_logic;
SIGNAL \inst|synthesizer|Add0~114\ : std_logic;
SIGNAL \inst|synthesizer|Add0~81_sumout\ : std_logic;
SIGNAL \inst|synthesizer|Add0~82\ : std_logic;
SIGNAL \inst|synthesizer|Add0~85_sumout\ : std_logic;
SIGNAL \inst|synthesizer|Add0~86\ : std_logic;
SIGNAL \inst|synthesizer|Add0~41_sumout\ : std_logic;
SIGNAL \inst|synthesizer|Add0~42\ : std_logic;
SIGNAL \inst|synthesizer|Add0~45_sumout\ : std_logic;
SIGNAL \inst|synthesizer|Add0~46\ : std_logic;
SIGNAL \inst|synthesizer|Add0~49_sumout\ : std_logic;
SIGNAL \inst|synthesizer|Add0~50\ : std_logic;
SIGNAL \inst|synthesizer|Add0~53_sumout\ : std_logic;
SIGNAL \inst|synthesizer|Add0~54\ : std_logic;
SIGNAL \inst|synthesizer|Add0~57_sumout\ : std_logic;
SIGNAL \inst|synthesizer|Add0~58\ : std_logic;
SIGNAL \inst|synthesizer|Add0~89_sumout\ : std_logic;
SIGNAL \inst|synthesizer|Add0~90\ : std_logic;
SIGNAL \inst|synthesizer|Add0~93_sumout\ : std_logic;
SIGNAL \inst|synthesizer|Add0~94\ : std_logic;
SIGNAL \inst|synthesizer|Add0~97_sumout\ : std_logic;
SIGNAL \inst|synthesizer|Add0~98\ : std_logic;
SIGNAL \inst|synthesizer|Add0~61_sumout\ : std_logic;
SIGNAL \inst|synthesizer|Add0~62\ : std_logic;
SIGNAL \inst|synthesizer|Add0~21_sumout\ : std_logic;
SIGNAL \inst|synthesizer|Add0~22\ : std_logic;
SIGNAL \inst|synthesizer|Add0~65_sumout\ : std_logic;
SIGNAL \inst|synthesizer|Add0~66\ : std_logic;
SIGNAL \inst|synthesizer|Add0~25_sumout\ : std_logic;
SIGNAL \inst|synthesizer|Add0~26\ : std_logic;
SIGNAL \inst|synthesizer|Add0~29_sumout\ : std_logic;
SIGNAL \inst|synthesizer|Add0~30\ : std_logic;
SIGNAL \inst|synthesizer|Add0~33_sumout\ : std_logic;
SIGNAL \inst|synthesizer|Add0~34\ : std_logic;
SIGNAL \inst|synthesizer|Add0~37_sumout\ : std_logic;
SIGNAL \inst|synthesizer|Add0~38\ : std_logic;
SIGNAL \inst|synthesizer|Add0~69_sumout\ : std_logic;
SIGNAL \inst|synthesizer|Add0~70\ : std_logic;
SIGNAL \inst|synthesizer|Add0~73_sumout\ : std_logic;
SIGNAL \inst|synthesizer|Add0~74\ : std_logic;
SIGNAL \inst|synthesizer|Add0~77_sumout\ : std_logic;
SIGNAL \inst|synthesizer|Add0~78\ : std_logic;
SIGNAL \inst|synthesizer|Add0~5_sumout\ : std_logic;
SIGNAL \inst|synthesizer|Add0~6\ : std_logic;
SIGNAL \inst|synthesizer|Add0~9_sumout\ : std_logic;
SIGNAL \inst|synthesizer|Add0~10\ : std_logic;
SIGNAL \inst|synthesizer|Add0~13_sumout\ : std_logic;
SIGNAL \inst|synthesizer|Add0~14\ : std_logic;
SIGNAL \inst|synthesizer|Add0~17_sumout\ : std_logic;
SIGNAL \inst|synthesizer|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|synthesizer|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|synthesizer|LessThan0~4_combout\ : std_logic;
SIGNAL \inst|synthesizer|LessThan0~5_combout\ : std_logic;
SIGNAL \inst|synthesizer|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|synthesizer|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|synthesizer|Add0~2\ : std_logic;
SIGNAL \inst|synthesizer|Add0~117_sumout\ : std_logic;
SIGNAL \inst|synthesizer|counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|synthesizer|Mux0~0_combout\ : std_logic;
SIGNAL \inst|synthesizer|output_p[15]~feeder_combout\ : std_logic;
SIGNAL \inst|synthesizer|Mux1~0_combout\ : std_logic;
SIGNAL \inst|synthesizer|Mux2~0_combout\ : std_logic;
SIGNAL \inst|synthesizer|Mux3~0_combout\ : std_logic;
SIGNAL \inst|synthesizer|Mux4~0_combout\ : std_logic;
SIGNAL \inst|synthesizer|output_p[11]~feeder_combout\ : std_logic;
SIGNAL \inst|synthesizer|Mux5~0_combout\ : std_logic;
SIGNAL \inst|synthesizer|Mux6~0_combout\ : std_logic;
SIGNAL \inst|synthesizer|Mux7~0_combout\ : std_logic;
SIGNAL \inst|synthesizer|Mux8~0_combout\ : std_logic;
SIGNAL \inst|synthesizer|output_p[5]~feeder_combout\ : std_logic;
SIGNAL \inst|synthesizer|Mux9~0_combout\ : std_logic;
SIGNAL \inst|synthesizer|Mux10~0_combout\ : std_logic;
SIGNAL \inst|synthesizer|Mux11~0_combout\ : std_logic;
SIGNAL \inst|configurator|dataIndex\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|configurator|counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst|synthesizer|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|configurator|WaitingBuffer\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|synthesizer|output_p\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|configurator|clockDividerBuffer\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|configurator|ALT_INV_clockDividerBuffer[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|synthesizer|ALT_INV_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Wr_Re_Button~input_o\ : std_logic;
SIGNAL \ALT_INV_Run~input_o\ : std_logic;
SIGNAL \ALT_INV_Reset~input_o\ : std_logic;
SIGNAL \inst|synthesizer|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \inst|synthesizer|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_Equal3~2_combout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_needWait~0_combout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_discarded~0_combout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_discardBuffer~q\ : std_logic;
SIGNAL \inst|synthesizer|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \inst|synthesizer|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \inst|synthesizer|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_sendData~0_combout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_state.IDLE~q\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_WaitingDone~q\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_needWait~q\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_discarded~q\ : std_logic;
SIGNAL \inst|synthesizer|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \inst|synthesizer|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst|synthesizer|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_internalClock~0_combout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_clockDividerBuffer\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|ALT_INV_btn_ff2~q\ : std_logic;
SIGNAL \inst|ALT_INV_btn_prev~q\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_Mux1~16_combout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_Mux1~15_combout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_Mux1~14_combout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_Mux1~13_combout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_Mux1~12_combout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_Mux1~11_combout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_Mux1~10_combout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_Mux1~9_combout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_Mux1~8_combout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_Mux1~7_combout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_Mux1~6_combout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_Mux1~5_combout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_Mux1~4_combout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_Mux1~3_combout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_wrre_latched~q\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_nextState.SEND~q\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_stateRegOut[0]~5_combout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_stateRegOut[1]~4_combout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_stateRegOut[2]~3_combout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_state.INTER~q\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_state.DONE~q\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_internalClock~q\ : std_logic;
SIGNAL \inst|ALT_INV_WrReEn~q\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_configOK~reg0_q\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_state.DISCARD~q\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_state.SEND~q\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_sclk_reg~q\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_sdio_do~4_combout\ : std_logic;
SIGNAL \inst|synthesizer|ALT_INV_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|configurator|ALT_INV_WaitingBuffer\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|synthesizer|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \inst|synthesizer|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \inst|synthesizer|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \inst|synthesizer|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \inst|synthesizer|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \inst|synthesizer|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \inst|synthesizer|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \inst|synthesizer|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \inst|synthesizer|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \inst|synthesizer|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \inst|synthesizer|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \inst|synthesizer|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \inst|synthesizer|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \inst|synthesizer|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \inst|synthesizer|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \inst|synthesizer|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \inst|synthesizer|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \inst|synthesizer|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \inst|synthesizer|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \inst|synthesizer|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \inst|synthesizer|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \inst|synthesizer|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst|synthesizer|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst|synthesizer|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst|synthesizer|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst|synthesizer|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst|synthesizer|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst|synthesizer|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \inst|configurator|ALT_INV_counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst|configurator|ALT_INV_dataIndex\ : std_logic_vector(7 DOWNTO 0);

BEGIN

\Parallel_Data_Out[15](n)\ <= \ww_Parallel_Data_Out[15](n)\;
\Parallel_Data_Out[14](n)\ <= \ww_Parallel_Data_Out[14](n)\;
\Parallel_Data_Out[13](n)\ <= \ww_Parallel_Data_Out[13](n)\;
\Parallel_Data_Out[12](n)\ <= \ww_Parallel_Data_Out[12](n)\;
\Parallel_Data_Out[11](n)\ <= \ww_Parallel_Data_Out[11](n)\;
\Parallel_Data_Out[10](n)\ <= \ww_Parallel_Data_Out[10](n)\;
\Parallel_Data_Out[9](n)\ <= \ww_Parallel_Data_Out[9](n)\;
\Parallel_Data_Out[8](n)\ <= \ww_Parallel_Data_Out[8](n)\;
\Parallel_Data_Out[7](n)\ <= \ww_Parallel_Data_Out[7](n)\;
\Parallel_Data_Out[6](n)\ <= \ww_Parallel_Data_Out[6](n)\;
\Parallel_Data_Out[5](n)\ <= \ww_Parallel_Data_Out[5](n)\;
\Parallel_Data_Out[4](n)\ <= \ww_Parallel_Data_Out[4](n)\;
\Parallel_Data_Out[3](n)\ <= \ww_Parallel_Data_Out[3](n)\;
\Parallel_Data_Out[2](n)\ <= \ww_Parallel_Data_Out[2](n)\;
\Parallel_Data_Out[1](n)\ <= \ww_Parallel_Data_Out[1](n)\;
\Parallel_Data_Out[0](n)\ <= \ww_Parallel_Data_Out[0](n)\;
\ww_Parallel_Data_CLK_IN(n)\ <= \Parallel_Data_CLK_IN(n)\;
SCLK <= ww_SCLK;
ww_Parallel_Data_CLK_IN <= Parallel_Data_CLK_IN;
ww_Run <= Run;
ww_Wr_Re_Button <= Wr_Re_Button;
ww_Clock <= Clock;
ww_Reset <= Reset;
SDENB <= ww_SDENB;
SDIO <= ww_SDIO;
Done <= ww_Done;
Wr_Re_Status <= ww_Wr_Re_Status;
CLK_Buffered <= ww_CLK_Buffered;
SCLK_LED <= ww_SCLK_LED;
SDENB_LED <= ww_SDENB_LED;
SDIO_LED <= ww_SDIO_LED;
Current_State <= ww_Current_State;
Parallel_Data_Out <= ww_Parallel_Data_Out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|configurator|ALT_INV_clockDividerBuffer[3]~DUPLICATE_q\ <= NOT \inst|configurator|clockDividerBuffer[3]~DUPLICATE_q\;
\inst|synthesizer|ALT_INV_counter[2]~DUPLICATE_q\ <= NOT \inst|synthesizer|counter[2]~DUPLICATE_q\;
\ALT_INV_Wr_Re_Button~input_o\ <= NOT \Wr_Re_Button~input_o\;
\ALT_INV_Run~input_o\ <= NOT \Run~input_o\;
\ALT_INV_Reset~input_o\ <= NOT \Reset~input_o\;
\inst|synthesizer|ALT_INV_LessThan0~5_combout\ <= NOT \inst|synthesizer|LessThan0~5_combout\;
\inst|synthesizer|ALT_INV_LessThan0~4_combout\ <= NOT \inst|synthesizer|LessThan0~4_combout\;
\inst|configurator|ALT_INV_Equal3~2_combout\ <= NOT \inst|configurator|Equal3~2_combout\;
\inst|configurator|ALT_INV_Equal3~1_combout\ <= NOT \inst|configurator|Equal3~1_combout\;
\inst|configurator|ALT_INV_Equal3~0_combout\ <= NOT \inst|configurator|Equal3~0_combout\;
\inst|configurator|ALT_INV_needWait~0_combout\ <= NOT \inst|configurator|needWait~0_combout\;
\inst|configurator|ALT_INV_discarded~0_combout\ <= NOT \inst|configurator|discarded~0_combout\;
\inst|configurator|ALT_INV_discardBuffer~q\ <= NOT \inst|configurator|discardBuffer~q\;
\inst|synthesizer|ALT_INV_LessThan0~2_combout\ <= NOT \inst|synthesizer|LessThan0~2_combout\;
\inst|synthesizer|ALT_INV_LessThan0~1_combout\ <= NOT \inst|synthesizer|LessThan0~1_combout\;
\inst|synthesizer|ALT_INV_LessThan0~0_combout\ <= NOT \inst|synthesizer|LessThan0~0_combout\;
\inst|configurator|ALT_INV_sendData~0_combout\ <= NOT \inst|configurator|sendData~0_combout\;
\inst|configurator|ALT_INV_state.IDLE~q\ <= NOT \inst|configurator|state.IDLE~q\;
\inst|configurator|ALT_INV_Selector3~0_combout\ <= NOT \inst|configurator|Selector3~0_combout\;
\inst|configurator|ALT_INV_WaitingDone~q\ <= NOT \inst|configurator|WaitingDone~q\;
\inst|configurator|ALT_INV_needWait~q\ <= NOT \inst|configurator|needWait~q\;
\inst|configurator|ALT_INV_discarded~q\ <= NOT \inst|configurator|discarded~q\;
\inst|synthesizer|ALT_INV_Mux8~0_combout\ <= NOT \inst|synthesizer|Mux8~0_combout\;
\inst|synthesizer|ALT_INV_Mux4~0_combout\ <= NOT \inst|synthesizer|Mux4~0_combout\;
\inst|synthesizer|ALT_INV_Mux0~0_combout\ <= NOT \inst|synthesizer|Mux0~0_combout\;
\inst|configurator|ALT_INV_internalClock~0_combout\ <= NOT \inst|configurator|internalClock~0_combout\;
\inst|configurator|ALT_INV_clockDividerBuffer\(0) <= NOT \inst|configurator|clockDividerBuffer\(0);
\inst|configurator|ALT_INV_clockDividerBuffer\(1) <= NOT \inst|configurator|clockDividerBuffer\(1);
\inst|configurator|ALT_INV_clockDividerBuffer\(2) <= NOT \inst|configurator|clockDividerBuffer\(2);
\inst|configurator|ALT_INV_clockDividerBuffer\(3) <= NOT \inst|configurator|clockDividerBuffer\(3);
\inst|ALT_INV_btn_ff2~q\ <= NOT \inst|btn_ff2~q\;
\inst|ALT_INV_btn_prev~q\ <= NOT \inst|btn_prev~q\;
\inst|configurator|ALT_INV_LessThan1~0_combout\ <= NOT \inst|configurator|LessThan1~0_combout\;
\inst|configurator|ALT_INV_LessThan2~0_combout\ <= NOT \inst|configurator|LessThan2~0_combout\;
\inst|configurator|ALT_INV_Mux0~0_combout\ <= NOT \inst|configurator|Mux0~0_combout\;
\inst|configurator|ALT_INV_Mux1~16_combout\ <= NOT \inst|configurator|Mux1~16_combout\;
\inst|configurator|ALT_INV_Mux1~15_combout\ <= NOT \inst|configurator|Mux1~15_combout\;
\inst|configurator|ALT_INV_Mux1~14_combout\ <= NOT \inst|configurator|Mux1~14_combout\;
\inst|configurator|ALT_INV_Mux1~13_combout\ <= NOT \inst|configurator|Mux1~13_combout\;
\inst|configurator|ALT_INV_Mux1~12_combout\ <= NOT \inst|configurator|Mux1~12_combout\;
\inst|configurator|ALT_INV_Mux1~11_combout\ <= NOT \inst|configurator|Mux1~11_combout\;
\inst|configurator|ALT_INV_Mux1~10_combout\ <= NOT \inst|configurator|Mux1~10_combout\;
\inst|configurator|ALT_INV_Mux1~9_combout\ <= NOT \inst|configurator|Mux1~9_combout\;
\inst|configurator|ALT_INV_Mux1~8_combout\ <= NOT \inst|configurator|Mux1~8_combout\;
\inst|configurator|ALT_INV_Mux1~7_combout\ <= NOT \inst|configurator|Mux1~7_combout\;
\inst|configurator|ALT_INV_Mux1~6_combout\ <= NOT \inst|configurator|Mux1~6_combout\;
\inst|configurator|ALT_INV_Mux1~5_combout\ <= NOT \inst|configurator|Mux1~5_combout\;
\inst|configurator|ALT_INV_Mux1~4_combout\ <= NOT \inst|configurator|Mux1~4_combout\;
\inst|configurator|ALT_INV_Mux1~3_combout\ <= NOT \inst|configurator|Mux1~3_combout\;
\inst|configurator|ALT_INV_Mux1~2_combout\ <= NOT \inst|configurator|Mux1~2_combout\;
\inst|configurator|ALT_INV_Mux1~1_combout\ <= NOT \inst|configurator|Mux1~1_combout\;
\inst|configurator|ALT_INV_Mux1~0_combout\ <= NOT \inst|configurator|Mux1~0_combout\;
\inst|configurator|ALT_INV_Equal0~0_combout\ <= NOT \inst|configurator|Equal0~0_combout\;
\inst|configurator|ALT_INV_wrre_latched~q\ <= NOT \inst|configurator|wrre_latched~q\;
\inst|configurator|ALT_INV_nextState.SEND~q\ <= NOT \inst|configurator|nextState.SEND~q\;
\inst|configurator|ALT_INV_stateRegOut[0]~5_combout\ <= NOT \inst|configurator|stateRegOut[0]~5_combout\;
\inst|configurator|ALT_INV_stateRegOut[1]~4_combout\ <= NOT \inst|configurator|stateRegOut[1]~4_combout\;
\inst|configurator|ALT_INV_stateRegOut[2]~3_combout\ <= NOT \inst|configurator|stateRegOut[2]~3_combout\;
\inst|configurator|ALT_INV_state.INTER~q\ <= NOT \inst|configurator|state.INTER~q\;
\inst|configurator|ALT_INV_state.DONE~q\ <= NOT \inst|configurator|state.DONE~q\;
\inst|configurator|ALT_INV_internalClock~q\ <= NOT \inst|configurator|internalClock~q\;
\inst|ALT_INV_WrReEn~q\ <= NOT \inst|WrReEn~q\;
\inst|configurator|ALT_INV_configOK~reg0_q\ <= NOT \inst|configurator|configOK~reg0_q\;
\inst|configurator|ALT_INV_state.DISCARD~q\ <= NOT \inst|configurator|state.DISCARD~q\;
\inst|configurator|ALT_INV_state.SEND~q\ <= NOT \inst|configurator|state.SEND~q\;
\inst|configurator|ALT_INV_sclk_reg~q\ <= NOT \inst|configurator|sclk_reg~q\;
\inst|configurator|ALT_INV_sdio_do~4_combout\ <= NOT \inst|configurator|sdio_do~4_combout\;
\inst|synthesizer|ALT_INV_counter\(7) <= NOT \inst|synthesizer|counter\(7);
\inst|synthesizer|ALT_INV_counter\(6) <= NOT \inst|synthesizer|counter\(6);
\inst|synthesizer|ALT_INV_counter\(5) <= NOT \inst|synthesizer|counter\(5);
\inst|synthesizer|ALT_INV_counter\(4) <= NOT \inst|synthesizer|counter\(4);
\inst|synthesizer|ALT_INV_counter\(17) <= NOT \inst|synthesizer|counter\(17);
\inst|synthesizer|ALT_INV_counter\(16) <= NOT \inst|synthesizer|counter\(16);
\inst|synthesizer|ALT_INV_counter\(15) <= NOT \inst|synthesizer|counter\(15);
\inst|synthesizer|ALT_INV_counter\(9) <= NOT \inst|synthesizer|counter\(9);
\inst|synthesizer|ALT_INV_counter\(8) <= NOT \inst|synthesizer|counter\(8);
\inst|synthesizer|ALT_INV_counter\(27) <= NOT \inst|synthesizer|counter\(27);
\inst|synthesizer|ALT_INV_counter\(26) <= NOT \inst|synthesizer|counter\(26);
\inst|synthesizer|ALT_INV_counter\(25) <= NOT \inst|synthesizer|counter\(25);
\inst|synthesizer|ALT_INV_counter\(20) <= NOT \inst|synthesizer|counter\(20);
\inst|synthesizer|ALT_INV_counter\(18) <= NOT \inst|synthesizer|counter\(18);
\inst|synthesizer|ALT_INV_counter\(14) <= NOT \inst|synthesizer|counter\(14);
\inst|synthesizer|ALT_INV_counter\(13) <= NOT \inst|synthesizer|counter\(13);
\inst|synthesizer|ALT_INV_counter\(12) <= NOT \inst|synthesizer|counter\(12);
\inst|synthesizer|ALT_INV_counter\(11) <= NOT \inst|synthesizer|counter\(11);
\inst|synthesizer|ALT_INV_counter\(10) <= NOT \inst|synthesizer|counter\(10);
\inst|synthesizer|ALT_INV_counter\(24) <= NOT \inst|synthesizer|counter\(24);
\inst|synthesizer|ALT_INV_counter\(23) <= NOT \inst|synthesizer|counter\(23);
\inst|synthesizer|ALT_INV_counter\(22) <= NOT \inst|synthesizer|counter\(22);
\inst|synthesizer|ALT_INV_counter\(21) <= NOT \inst|synthesizer|counter\(21);
\inst|synthesizer|ALT_INV_counter\(19) <= NOT \inst|synthesizer|counter\(19);
\inst|synthesizer|ALT_INV_counter\(31) <= NOT \inst|synthesizer|counter\(31);
\inst|synthesizer|ALT_INV_counter\(30) <= NOT \inst|synthesizer|counter\(30);
\inst|synthesizer|ALT_INV_counter\(29) <= NOT \inst|synthesizer|counter\(29);
\inst|synthesizer|ALT_INV_counter\(28) <= NOT \inst|synthesizer|counter\(28);
\inst|configurator|ALT_INV_WaitingBuffer\(6) <= NOT \inst|configurator|WaitingBuffer\(6);
\inst|configurator|ALT_INV_WaitingBuffer\(13) <= NOT \inst|configurator|WaitingBuffer\(13);
\inst|configurator|ALT_INV_WaitingBuffer\(5) <= NOT \inst|configurator|WaitingBuffer\(5);
\inst|configurator|ALT_INV_WaitingBuffer\(4) <= NOT \inst|configurator|WaitingBuffer\(4);
\inst|configurator|ALT_INV_WaitingBuffer\(3) <= NOT \inst|configurator|WaitingBuffer\(3);
\inst|configurator|ALT_INV_WaitingBuffer\(2) <= NOT \inst|configurator|WaitingBuffer\(2);
\inst|configurator|ALT_INV_WaitingBuffer\(1) <= NOT \inst|configurator|WaitingBuffer\(1);
\inst|configurator|ALT_INV_WaitingBuffer\(0) <= NOT \inst|configurator|WaitingBuffer\(0);
\inst|configurator|ALT_INV_WaitingBuffer\(15) <= NOT \inst|configurator|WaitingBuffer\(15);
\inst|configurator|ALT_INV_WaitingBuffer\(12) <= NOT \inst|configurator|WaitingBuffer\(12);
\inst|configurator|ALT_INV_WaitingBuffer\(14) <= NOT \inst|configurator|WaitingBuffer\(14);
\inst|configurator|ALT_INV_WaitingBuffer\(11) <= NOT \inst|configurator|WaitingBuffer\(11);
\inst|configurator|ALT_INV_WaitingBuffer\(10) <= NOT \inst|configurator|WaitingBuffer\(10);
\inst|configurator|ALT_INV_WaitingBuffer\(9) <= NOT \inst|configurator|WaitingBuffer\(9);
\inst|configurator|ALT_INV_WaitingBuffer\(8) <= NOT \inst|configurator|WaitingBuffer\(8);
\inst|configurator|ALT_INV_WaitingBuffer\(7) <= NOT \inst|configurator|WaitingBuffer\(7);
\inst|synthesizer|ALT_INV_Add0~113_sumout\ <= NOT \inst|synthesizer|Add0~113_sumout\;
\inst|synthesizer|ALT_INV_Add0~109_sumout\ <= NOT \inst|synthesizer|Add0~109_sumout\;
\inst|synthesizer|ALT_INV_Add0~105_sumout\ <= NOT \inst|synthesizer|Add0~105_sumout\;
\inst|synthesizer|ALT_INV_Add0~101_sumout\ <= NOT \inst|synthesizer|Add0~101_sumout\;
\inst|synthesizer|ALT_INV_Add0~97_sumout\ <= NOT \inst|synthesizer|Add0~97_sumout\;
\inst|synthesizer|ALT_INV_Add0~93_sumout\ <= NOT \inst|synthesizer|Add0~93_sumout\;
\inst|synthesizer|ALT_INV_Add0~89_sumout\ <= NOT \inst|synthesizer|Add0~89_sumout\;
\inst|synthesizer|ALT_INV_Add0~85_sumout\ <= NOT \inst|synthesizer|Add0~85_sumout\;
\inst|synthesizer|ALT_INV_Add0~81_sumout\ <= NOT \inst|synthesizer|Add0~81_sumout\;
\inst|synthesizer|ALT_INV_Add0~77_sumout\ <= NOT \inst|synthesizer|Add0~77_sumout\;
\inst|synthesizer|ALT_INV_Add0~73_sumout\ <= NOT \inst|synthesizer|Add0~73_sumout\;
\inst|synthesizer|ALT_INV_Add0~69_sumout\ <= NOT \inst|synthesizer|Add0~69_sumout\;
\inst|synthesizer|ALT_INV_Add0~65_sumout\ <= NOT \inst|synthesizer|Add0~65_sumout\;
\inst|synthesizer|ALT_INV_Add0~61_sumout\ <= NOT \inst|synthesizer|Add0~61_sumout\;
\inst|synthesizer|ALT_INV_Add0~57_sumout\ <= NOT \inst|synthesizer|Add0~57_sumout\;
\inst|synthesizer|ALT_INV_Add0~53_sumout\ <= NOT \inst|synthesizer|Add0~53_sumout\;
\inst|synthesizer|ALT_INV_Add0~49_sumout\ <= NOT \inst|synthesizer|Add0~49_sumout\;
\inst|synthesizer|ALT_INV_Add0~45_sumout\ <= NOT \inst|synthesizer|Add0~45_sumout\;
\inst|synthesizer|ALT_INV_Add0~41_sumout\ <= NOT \inst|synthesizer|Add0~41_sumout\;
\inst|synthesizer|ALT_INV_Add0~37_sumout\ <= NOT \inst|synthesizer|Add0~37_sumout\;
\inst|synthesizer|ALT_INV_Add0~33_sumout\ <= NOT \inst|synthesizer|Add0~33_sumout\;
\inst|synthesizer|ALT_INV_Add0~29_sumout\ <= NOT \inst|synthesizer|Add0~29_sumout\;
\inst|synthesizer|ALT_INV_Add0~25_sumout\ <= NOT \inst|synthesizer|Add0~25_sumout\;
\inst|synthesizer|ALT_INV_Add0~21_sumout\ <= NOT \inst|synthesizer|Add0~21_sumout\;
\inst|synthesizer|ALT_INV_Add0~17_sumout\ <= NOT \inst|synthesizer|Add0~17_sumout\;
\inst|synthesizer|ALT_INV_Add0~13_sumout\ <= NOT \inst|synthesizer|Add0~13_sumout\;
\inst|synthesizer|ALT_INV_Add0~9_sumout\ <= NOT \inst|synthesizer|Add0~9_sumout\;
\inst|synthesizer|ALT_INV_Add0~5_sumout\ <= NOT \inst|synthesizer|Add0~5_sumout\;
\inst|configurator|ALT_INV_Add1~29_sumout\ <= NOT \inst|configurator|Add1~29_sumout\;
\inst|configurator|ALT_INV_Add1~25_sumout\ <= NOT \inst|configurator|Add1~25_sumout\;
\inst|configurator|ALT_INV_Add1~21_sumout\ <= NOT \inst|configurator|Add1~21_sumout\;
\inst|synthesizer|ALT_INV_counter\(3) <= NOT \inst|synthesizer|counter\(3);
\inst|synthesizer|ALT_INV_counter\(2) <= NOT \inst|synthesizer|counter\(2);
\inst|synthesizer|ALT_INV_counter\(1) <= NOT \inst|synthesizer|counter\(1);
\inst|synthesizer|ALT_INV_counter\(0) <= NOT \inst|synthesizer|counter\(0);
\inst|configurator|ALT_INV_Add1~17_sumout\ <= NOT \inst|configurator|Add1~17_sumout\;
\inst|configurator|ALT_INV_Add1~13_sumout\ <= NOT \inst|configurator|Add1~13_sumout\;
\inst|configurator|ALT_INV_Add1~9_sumout\ <= NOT \inst|configurator|Add1~9_sumout\;
\inst|configurator|ALT_INV_Add1~5_sumout\ <= NOT \inst|configurator|Add1~5_sumout\;
\inst|configurator|ALT_INV_Add1~1_sumout\ <= NOT \inst|configurator|Add1~1_sumout\;
\inst|configurator|ALT_INV_counter\(6) <= NOT \inst|configurator|counter\(6);
\inst|configurator|ALT_INV_counter\(4) <= NOT \inst|configurator|counter\(4);
\inst|configurator|ALT_INV_counter\(5) <= NOT \inst|configurator|counter\(5);
\inst|configurator|ALT_INV_counter\(3) <= NOT \inst|configurator|counter\(3);
\inst|configurator|ALT_INV_counter\(2) <= NOT \inst|configurator|counter\(2);
\inst|configurator|ALT_INV_counter\(1) <= NOT \inst|configurator|counter\(1);
\inst|configurator|ALT_INV_counter\(0) <= NOT \inst|configurator|counter\(0);
\inst|configurator|ALT_INV_dataIndex\(1) <= NOT \inst|configurator|dataIndex\(1);
\inst|configurator|ALT_INV_dataIndex\(2) <= NOT \inst|configurator|dataIndex\(2);
\inst|configurator|ALT_INV_dataIndex\(0) <= NOT \inst|configurator|dataIndex\(0);
\inst|configurator|ALT_INV_dataIndex\(6) <= NOT \inst|configurator|dataIndex\(6);
\inst|configurator|ALT_INV_dataIndex\(7) <= NOT \inst|configurator|dataIndex\(7);
\inst|configurator|ALT_INV_dataIndex\(4) <= NOT \inst|configurator|dataIndex\(4);
\inst|configurator|ALT_INV_dataIndex\(5) <= NOT \inst|configurator|dataIndex\(5);
\inst|configurator|ALT_INV_dataIndex\(3) <= NOT \inst|configurator|dataIndex\(3);

-- Location: IOOBUF_X68_Y14_N45
\SDIO~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|configurator|sdio_do~0_combout\,
	oe => \inst|configurator|sdio_oe~1_combout\,
	devoe => ww_devoe,
	o => ww_SDIO);

-- Location: IOOBUF_X19_Y61_N2
\SDIO_LED~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|configurator|sdio_do~0_combout\,
	oe => \inst|configurator|sdio_oe~1_combout\,
	devoe => ww_devoe,
	o => ww_SDIO_LED);

-- Location: IOOBUF_X68_Y40_N45
\SCLK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|configurator|SCLK~0_combout\,
	devoe => ww_devoe,
	o => ww_SCLK);

-- Location: IOOBUF_X68_Y37_N39
\SDENB~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|configurator|SDENB~0_combout\,
	devoe => ww_devoe,
	o => ww_SDENB);

-- Location: IOOBUF_X10_Y61_N42
\Done~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|configurator|configOK~reg0_q\,
	devoe => ww_devoe,
	o => ww_Done);

-- Location: IOOBUF_X10_Y61_N76
\Wr_Re_Status~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WrReEn~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Wr_Re_Status);

-- Location: IOOBUF_X12_Y61_N19
\CLK_Buffered~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|configurator|CLKRECEIVED~0_combout\,
	devoe => ww_devoe,
	o => ww_CLK_Buffered);

-- Location: IOOBUF_X19_Y61_N19
\SCLK_LED~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|configurator|SCLK~0_combout\,
	devoe => ww_devoe,
	o => ww_SCLK_LED);

-- Location: IOOBUF_X21_Y61_N53
\SDENB_LED~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|configurator|SDENB~0_combout\,
	devoe => ww_devoe,
	o => ww_SDENB_LED);

-- Location: IOOBUF_X15_Y61_N53
\Current_State[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|configurator|ALT_INV_stateRegOut[2]~3_combout\,
	devoe => ww_devoe,
	o => ww_Current_State(2));

-- Location: IOOBUF_X15_Y61_N36
\Current_State[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|configurator|ALT_INV_stateRegOut[1]~4_combout\,
	devoe => ww_devoe,
	o => ww_Current_State(1));

-- Location: IOOBUF_X14_Y61_N53
\Current_State[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|configurator|ALT_INV_stateRegOut[0]~5_combout\,
	devoe => ww_devoe,
	o => ww_Current_State(0));

-- Location: IOOBUF_X59_Y61_N36
\Parallel_Data_Out[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|synthesizer|output_p\(15),
	devoe => ww_devoe,
	o => ww_Parallel_Data_Out(15),
	obar => \ww_Parallel_Data_Out[15](n)\);

-- Location: IOOBUF_X53_Y61_N36
\Parallel_Data_Out[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|synthesizer|output_p\(14),
	devoe => ww_devoe,
	o => ww_Parallel_Data_Out(14),
	obar => \ww_Parallel_Data_Out[14](n)\);

-- Location: IOOBUF_X65_Y61_N36
\Parallel_Data_Out[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|synthesizer|output_p\(13),
	devoe => ww_devoe,
	o => ww_Parallel_Data_Out(13),
	obar => \ww_Parallel_Data_Out[13](n)\);

-- Location: IOOBUF_X51_Y61_N36
\Parallel_Data_Out[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|synthesizer|output_p\(12),
	devoe => ww_devoe,
	o => ww_Parallel_Data_Out(12),
	obar => \ww_Parallel_Data_Out[12](n)\);

-- Location: IOOBUF_X66_Y61_N36
\Parallel_Data_Out[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|synthesizer|output_p\(11),
	devoe => ww_devoe,
	o => ww_Parallel_Data_Out(11),
	obar => \ww_Parallel_Data_Out[11](n)\);

-- Location: IOOBUF_X38_Y61_N36
\Parallel_Data_Out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|synthesizer|output_p\(10),
	devoe => ww_devoe,
	o => ww_Parallel_Data_Out(10),
	obar => \ww_Parallel_Data_Out[10](n)\);

-- Location: IOOBUF_X48_Y61_N76
\Parallel_Data_Out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|synthesizer|output_p\(9),
	devoe => ww_devoe,
	o => ww_Parallel_Data_Out(9),
	obar => \ww_Parallel_Data_Out[9](n)\);

-- Location: IOOBUF_X34_Y61_N36
\Parallel_Data_Out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|synthesizer|output_p\(8),
	devoe => ww_devoe,
	o => ww_Parallel_Data_Out(8),
	obar => \ww_Parallel_Data_Out[8](n)\);

-- Location: IOOBUF_X64_Y61_N36
\Parallel_Data_Out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|synthesizer|output_p\(7),
	devoe => ww_devoe,
	o => ww_Parallel_Data_Out(7),
	obar => \ww_Parallel_Data_Out[7](n)\);

-- Location: IOOBUF_X50_Y61_N36
\Parallel_Data_Out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|synthesizer|output_p\(6),
	devoe => ww_devoe,
	o => ww_Parallel_Data_Out(6),
	obar => \ww_Parallel_Data_Out[6](n)\);

-- Location: IOOBUF_X61_Y61_N36
\Parallel_Data_Out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|synthesizer|output_p\(5),
	devoe => ww_devoe,
	o => ww_Parallel_Data_Out(5),
	obar => \ww_Parallel_Data_Out[5](n)\);

-- Location: IOOBUF_X42_Y61_N36
\Parallel_Data_Out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|synthesizer|output_p\(4),
	devoe => ww_devoe,
	o => ww_Parallel_Data_Out(4),
	obar => \ww_Parallel_Data_Out[4](n)\);

-- Location: IOOBUF_X36_Y61_N36
\Parallel_Data_Out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|synthesizer|output_p\(3),
	devoe => ww_devoe,
	o => ww_Parallel_Data_Out(3),
	obar => \ww_Parallel_Data_Out[3](n)\);

-- Location: IOOBUF_X44_Y61_N36
\Parallel_Data_Out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|synthesizer|output_p\(2),
	devoe => ww_devoe,
	o => ww_Parallel_Data_Out(2),
	obar => \ww_Parallel_Data_Out[2](n)\);

-- Location: IOOBUF_X46_Y61_N36
\Parallel_Data_Out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|synthesizer|output_p\(1),
	devoe => ww_devoe,
	o => ww_Parallel_Data_Out(1),
	obar => \ww_Parallel_Data_Out[1](n)\);

-- Location: IOOBUF_X40_Y61_N76
\Parallel_Data_Out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|synthesizer|output_p\(0),
	devoe => ww_devoe,
	o => ww_Parallel_Data_Out(0),
	obar => \ww_Parallel_Data_Out[0](n)\);

-- Location: IOIBUF_X38_Y61_N1
\Clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G15
\Clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~input_o\,
	outclk => \Clock~inputCLKENA0_outclk\);

-- Location: MLABCELL_X37_Y20_N42
\inst|configurator|clockDividerBuffer[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|clockDividerBuffer[2]~1_combout\ = ( \inst|configurator|clockDividerBuffer\(2) & ( \inst|configurator|clockDividerBuffer\(1) & ( !\inst|configurator|clockDividerBuffer\(0) ) ) ) # ( !\inst|configurator|clockDividerBuffer\(2) & ( 
-- \inst|configurator|clockDividerBuffer\(1) & ( \inst|configurator|clockDividerBuffer\(0) ) ) ) # ( \inst|configurator|clockDividerBuffer\(2) & ( !\inst|configurator|clockDividerBuffer\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|configurator|ALT_INV_clockDividerBuffer\(0),
	datae => \inst|configurator|ALT_INV_clockDividerBuffer\(2),
	dataf => \inst|configurator|ALT_INV_clockDividerBuffer\(1),
	combout => \inst|configurator|clockDividerBuffer[2]~1_combout\);

-- Location: IOIBUF_X46_Y0_N18
\Reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: FF_X37_Y20_N44
\inst|configurator|clockDividerBuffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \inst|configurator|clockDividerBuffer[2]~1_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|clockDividerBuffer\(2));

-- Location: MLABCELL_X37_Y20_N15
\inst|configurator|clockDividerBuffer~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|clockDividerBuffer~3_combout\ = ( !\inst|configurator|clockDividerBuffer\(0) & ( \inst|configurator|clockDividerBuffer\(2) ) ) # ( !\inst|configurator|clockDividerBuffer\(0) & ( !\inst|configurator|clockDividerBuffer\(2) & ( 
-- (!\inst|configurator|clockDividerBuffer\(3)) # (!\inst|configurator|clockDividerBuffer\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|configurator|ALT_INV_clockDividerBuffer\(3),
	datad => \inst|configurator|ALT_INV_clockDividerBuffer\(1),
	datae => \inst|configurator|ALT_INV_clockDividerBuffer\(0),
	dataf => \inst|configurator|ALT_INV_clockDividerBuffer\(2),
	combout => \inst|configurator|clockDividerBuffer~3_combout\);

-- Location: FF_X37_Y20_N17
\inst|configurator|clockDividerBuffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \inst|configurator|clockDividerBuffer~3_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|clockDividerBuffer\(0));

-- Location: MLABCELL_X37_Y20_N9
\inst|configurator|clockDividerBuffer~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|clockDividerBuffer~0_combout\ = ( \inst|configurator|clockDividerBuffer\(3) & ( \inst|configurator|clockDividerBuffer\(2) & ( (!\inst|configurator|clockDividerBuffer\(0)) # (!\inst|configurator|clockDividerBuffer\(1)) ) ) ) # ( 
-- !\inst|configurator|clockDividerBuffer\(3) & ( \inst|configurator|clockDividerBuffer\(2) & ( (\inst|configurator|clockDividerBuffer\(0) & \inst|configurator|clockDividerBuffer\(1)) ) ) ) # ( \inst|configurator|clockDividerBuffer\(3) & ( 
-- !\inst|configurator|clockDividerBuffer\(2) & ( (!\inst|configurator|clockDividerBuffer\(1)) # (\inst|configurator|clockDividerBuffer\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111100000000000011111111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|configurator|ALT_INV_clockDividerBuffer\(0),
	datad => \inst|configurator|ALT_INV_clockDividerBuffer\(1),
	datae => \inst|configurator|ALT_INV_clockDividerBuffer\(3),
	dataf => \inst|configurator|ALT_INV_clockDividerBuffer\(2),
	combout => \inst|configurator|clockDividerBuffer~0_combout\);

-- Location: FF_X37_Y20_N11
\inst|configurator|clockDividerBuffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \inst|configurator|clockDividerBuffer~0_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|clockDividerBuffer\(3));

-- Location: MLABCELL_X37_Y20_N48
\inst|configurator|clockDividerBuffer~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|clockDividerBuffer~2_combout\ = ( \inst|configurator|clockDividerBuffer\(1) & ( \inst|configurator|clockDividerBuffer\(2) & ( !\inst|configurator|clockDividerBuffer\(0) ) ) ) # ( !\inst|configurator|clockDividerBuffer\(1) & ( 
-- \inst|configurator|clockDividerBuffer\(2) & ( \inst|configurator|clockDividerBuffer\(0) ) ) ) # ( \inst|configurator|clockDividerBuffer\(1) & ( !\inst|configurator|clockDividerBuffer\(2) & ( (!\inst|configurator|clockDividerBuffer\(3) & 
-- !\inst|configurator|clockDividerBuffer\(0)) ) ) ) # ( !\inst|configurator|clockDividerBuffer\(1) & ( !\inst|configurator|clockDividerBuffer\(2) & ( \inst|configurator|clockDividerBuffer\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111110011000000000000000000111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|configurator|ALT_INV_clockDividerBuffer\(3),
	datad => \inst|configurator|ALT_INV_clockDividerBuffer\(0),
	datae => \inst|configurator|ALT_INV_clockDividerBuffer\(1),
	dataf => \inst|configurator|ALT_INV_clockDividerBuffer\(2),
	combout => \inst|configurator|clockDividerBuffer~2_combout\);

-- Location: FF_X37_Y20_N50
\inst|configurator|clockDividerBuffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \inst|configurator|clockDividerBuffer~2_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|clockDividerBuffer\(1));

-- Location: FF_X37_Y20_N10
\inst|configurator|clockDividerBuffer[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \inst|configurator|clockDividerBuffer~0_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|clockDividerBuffer[3]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y20_N57
\inst|configurator|internalClock~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|internalClock~0_combout\ = ( \inst|configurator|clockDividerBuffer[3]~DUPLICATE_q\ & ( \inst|configurator|internalClock~q\ & ( (!\inst|configurator|clockDividerBuffer\(1)) # ((\inst|configurator|clockDividerBuffer\(0)) # 
-- (\inst|configurator|clockDividerBuffer\(2))) ) ) ) # ( !\inst|configurator|clockDividerBuffer[3]~DUPLICATE_q\ & ( \inst|configurator|internalClock~q\ ) ) # ( \inst|configurator|clockDividerBuffer[3]~DUPLICATE_q\ & ( !\inst|configurator|internalClock~q\ & 
-- ( (\inst|configurator|clockDividerBuffer\(1) & (!\inst|configurator|clockDividerBuffer\(2) & !\inst|configurator|clockDividerBuffer\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000100000011111111111111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|configurator|ALT_INV_clockDividerBuffer\(1),
	datab => \inst|configurator|ALT_INV_clockDividerBuffer\(2),
	datac => \inst|configurator|ALT_INV_clockDividerBuffer\(0),
	datae => \inst|configurator|ALT_INV_clockDividerBuffer[3]~DUPLICATE_q\,
	dataf => \inst|configurator|ALT_INV_internalClock~q\,
	combout => \inst|configurator|internalClock~0_combout\);

-- Location: MLABCELL_X37_Y20_N30
\inst|configurator|internalClock~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|internalClock~feeder_combout\ = ( \inst|configurator|internalClock~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|configurator|ALT_INV_internalClock~0_combout\,
	combout => \inst|configurator|internalClock~feeder_combout\);

-- Location: FF_X37_Y20_N32
\inst|configurator|internalClock\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst|configurator|internalClock~feeder_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|internalClock~q\);

-- Location: LABCELL_X36_Y20_N42
\inst|configurator|sclk_reg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|sclk_reg~0_combout\ = !\inst|configurator|sclk_reg~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|configurator|ALT_INV_sclk_reg~q\,
	combout => \inst|configurator|sclk_reg~0_combout\);

-- Location: FF_X36_Y20_N11
\inst|configurator|sclk_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|internalClock~q\,
	asdata => \inst|configurator|sclk_reg~0_combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|sclk_reg~q\);

-- Location: LABCELL_X36_Y19_N0
\inst|configurator|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Add1~21_sumout\ = SUM(( \inst|configurator|dataIndex\(0) ) + ( VCC ) + ( !VCC ))
-- \inst|configurator|Add1~22\ = CARRY(( \inst|configurator|dataIndex\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|configurator|ALT_INV_dataIndex\(0),
	cin => GND,
	sumout => \inst|configurator|Add1~21_sumout\,
	cout => \inst|configurator|Add1~22\);

-- Location: MLABCELL_X37_Y19_N30
\inst|configurator|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Add2~1_sumout\ = SUM(( \inst|configurator|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \inst|configurator|Add2~2\ = CARRY(( \inst|configurator|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|configurator|ALT_INV_counter\(0),
	cin => GND,
	sumout => \inst|configurator|Add2~1_sumout\,
	cout => \inst|configurator|Add2~2\);

-- Location: LABCELL_X35_Y19_N57
\inst|configurator|dataIndex[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|dataIndex[4]~feeder_combout\ = ( \inst|configurator|Add1~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|configurator|ALT_INV_Add1~17_sumout\,
	combout => \inst|configurator|dataIndex[4]~feeder_combout\);

-- Location: FF_X35_Y19_N59
\inst|configurator|dataIndex[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|ALT_INV_sclk_reg~q\,
	d => \inst|configurator|dataIndex[4]~feeder_combout\,
	clrn => \Reset~input_o\,
	sclr => \inst|configurator|LessThan1~1_combout\,
	ena => \inst|configurator|sendData~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|dataIndex\(4));

-- Location: LABCELL_X36_Y19_N3
\inst|configurator|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Add1~29_sumout\ = SUM(( \inst|configurator|dataIndex\(1) ) + ( GND ) + ( \inst|configurator|Add1~22\ ))
-- \inst|configurator|Add1~30\ = CARRY(( \inst|configurator|dataIndex\(1) ) + ( GND ) + ( \inst|configurator|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|configurator|ALT_INV_dataIndex\(1),
	cin => \inst|configurator|Add1~22\,
	sumout => \inst|configurator|Add1~29_sumout\,
	cout => \inst|configurator|Add1~30\);

-- Location: FF_X35_Y19_N11
\inst|configurator|dataIndex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|ALT_INV_sclk_reg~q\,
	asdata => \inst|configurator|Add1~29_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst|configurator|LessThan1~1_combout\,
	sload => VCC,
	ena => \inst|configurator|sendData~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|dataIndex\(1));

-- Location: LABCELL_X36_Y19_N6
\inst|configurator|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Add1~25_sumout\ = SUM(( \inst|configurator|dataIndex\(2) ) + ( GND ) + ( \inst|configurator|Add1~30\ ))
-- \inst|configurator|Add1~26\ = CARRY(( \inst|configurator|dataIndex\(2) ) + ( GND ) + ( \inst|configurator|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|configurator|ALT_INV_dataIndex\(2),
	cin => \inst|configurator|Add1~30\,
	sumout => \inst|configurator|Add1~25_sumout\,
	cout => \inst|configurator|Add1~26\);

-- Location: FF_X35_Y19_N44
\inst|configurator|dataIndex[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|ALT_INV_sclk_reg~q\,
	asdata => \inst|configurator|Add1~25_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst|configurator|LessThan1~1_combout\,
	sload => VCC,
	ena => \inst|configurator|sendData~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|dataIndex\(2));

-- Location: LABCELL_X36_Y19_N9
\inst|configurator|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Add1~13_sumout\ = SUM(( \inst|configurator|dataIndex\(3) ) + ( GND ) + ( \inst|configurator|Add1~26\ ))
-- \inst|configurator|Add1~14\ = CARRY(( \inst|configurator|dataIndex\(3) ) + ( GND ) + ( \inst|configurator|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|configurator|ALT_INV_dataIndex\(3),
	cin => \inst|configurator|Add1~26\,
	sumout => \inst|configurator|Add1~13_sumout\,
	cout => \inst|configurator|Add1~14\);

-- Location: LABCELL_X36_Y19_N12
\inst|configurator|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Add1~17_sumout\ = SUM(( \inst|configurator|dataIndex\(4) ) + ( GND ) + ( \inst|configurator|Add1~14\ ))
-- \inst|configurator|Add1~18\ = CARRY(( \inst|configurator|dataIndex\(4) ) + ( GND ) + ( \inst|configurator|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|configurator|ALT_INV_dataIndex\(4),
	cin => \inst|configurator|Add1~14\,
	sumout => \inst|configurator|Add1~17_sumout\,
	cout => \inst|configurator|Add1~18\);

-- Location: FF_X35_Y19_N34
\inst|configurator|dataIndex[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|ALT_INV_sclk_reg~q\,
	asdata => \inst|configurator|Add1~9_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst|configurator|LessThan1~1_combout\,
	sload => VCC,
	ena => \inst|configurator|sendData~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|dataIndex\(6));

-- Location: LABCELL_X36_Y19_N15
\inst|configurator|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Add1~5_sumout\ = SUM(( \inst|configurator|dataIndex\(5) ) + ( GND ) + ( \inst|configurator|Add1~18\ ))
-- \inst|configurator|Add1~6\ = CARRY(( \inst|configurator|dataIndex\(5) ) + ( GND ) + ( \inst|configurator|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|configurator|ALT_INV_dataIndex\(5),
	cin => \inst|configurator|Add1~18\,
	sumout => \inst|configurator|Add1~5_sumout\,
	cout => \inst|configurator|Add1~6\);

-- Location: FF_X35_Y19_N29
\inst|configurator|dataIndex[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|ALT_INV_sclk_reg~q\,
	asdata => \inst|configurator|Add1~5_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst|configurator|LessThan1~1_combout\,
	sload => VCC,
	ena => \inst|configurator|sendData~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|dataIndex\(5));

-- Location: LABCELL_X36_Y19_N18
\inst|configurator|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Add1~9_sumout\ = SUM(( \inst|configurator|dataIndex\(6) ) + ( GND ) + ( \inst|configurator|Add1~6\ ))
-- \inst|configurator|Add1~10\ = CARRY(( \inst|configurator|dataIndex\(6) ) + ( GND ) + ( \inst|configurator|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|configurator|ALT_INV_dataIndex\(6),
	cin => \inst|configurator|Add1~6\,
	sumout => \inst|configurator|Add1~9_sumout\,
	cout => \inst|configurator|Add1~10\);

-- Location: FF_X35_Y19_N8
\inst|configurator|dataIndex[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|ALT_INV_sclk_reg~q\,
	asdata => \inst|configurator|Add1~1_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst|configurator|LessThan1~1_combout\,
	sload => VCC,
	ena => \inst|configurator|sendData~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|dataIndex\(7));

-- Location: LABCELL_X36_Y19_N21
\inst|configurator|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Add1~1_sumout\ = SUM(( \inst|configurator|dataIndex\(7) ) + ( GND ) + ( \inst|configurator|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|configurator|ALT_INV_dataIndex\(7),
	cin => \inst|configurator|Add1~10\,
	sumout => \inst|configurator|Add1~1_sumout\);

-- Location: LABCELL_X36_Y19_N48
\inst|configurator|counter[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|counter[0]~0_combout\ = ( \inst|configurator|Add1~1_sumout\ & ( \inst|configurator|sendData~0_combout\ ) ) # ( !\inst|configurator|Add1~1_sumout\ & ( \inst|configurator|sendData~0_combout\ & ( (((\inst|configurator|Add1~13_sumout\ & 
-- \inst|configurator|Add1~17_sumout\)) # (\inst|configurator|Add1~5_sumout\)) # (\inst|configurator|Add1~9_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000011111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|configurator|ALT_INV_Add1~13_sumout\,
	datab => \inst|configurator|ALT_INV_Add1~17_sumout\,
	datac => \inst|configurator|ALT_INV_Add1~9_sumout\,
	datad => \inst|configurator|ALT_INV_Add1~5_sumout\,
	datae => \inst|configurator|ALT_INV_Add1~1_sumout\,
	dataf => \inst|configurator|ALT_INV_sendData~0_combout\,
	combout => \inst|configurator|counter[0]~0_combout\);

-- Location: FF_X37_Y19_N17
\inst|configurator|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|ALT_INV_sclk_reg~q\,
	asdata => \inst|configurator|Add2~1_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst|configurator|LessThan2~0_combout\,
	sload => VCC,
	ena => \inst|configurator|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|counter\(0));

-- Location: MLABCELL_X37_Y19_N33
\inst|configurator|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Add2~5_sumout\ = SUM(( \inst|configurator|counter\(1) ) + ( GND ) + ( \inst|configurator|Add2~2\ ))
-- \inst|configurator|Add2~6\ = CARRY(( \inst|configurator|counter\(1) ) + ( GND ) + ( \inst|configurator|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|configurator|ALT_INV_counter\(1),
	cin => \inst|configurator|Add2~2\,
	sumout => \inst|configurator|Add2~5_sumout\,
	cout => \inst|configurator|Add2~6\);

-- Location: FF_X37_Y19_N11
\inst|configurator|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|ALT_INV_sclk_reg~q\,
	asdata => \inst|configurator|Add2~5_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst|configurator|LessThan2~0_combout\,
	sload => VCC,
	ena => \inst|configurator|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|counter\(1));

-- Location: MLABCELL_X37_Y19_N36
\inst|configurator|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Add2~9_sumout\ = SUM(( \inst|configurator|counter\(2) ) + ( GND ) + ( \inst|configurator|Add2~6\ ))
-- \inst|configurator|Add2~10\ = CARRY(( \inst|configurator|counter\(2) ) + ( GND ) + ( \inst|configurator|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|configurator|ALT_INV_counter\(2),
	cin => \inst|configurator|Add2~6\,
	sumout => \inst|configurator|Add2~9_sumout\,
	cout => \inst|configurator|Add2~10\);

-- Location: FF_X37_Y19_N53
\inst|configurator|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|ALT_INV_sclk_reg~q\,
	asdata => \inst|configurator|Add2~9_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst|configurator|LessThan2~0_combout\,
	sload => VCC,
	ena => \inst|configurator|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|counter\(2));

-- Location: MLABCELL_X37_Y19_N39
\inst|configurator|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Add2~13_sumout\ = SUM(( \inst|configurator|counter\(3) ) + ( GND ) + ( \inst|configurator|Add2~10\ ))
-- \inst|configurator|Add2~14\ = CARRY(( \inst|configurator|counter\(3) ) + ( GND ) + ( \inst|configurator|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|configurator|ALT_INV_counter\(3),
	cin => \inst|configurator|Add2~10\,
	sumout => \inst|configurator|Add2~13_sumout\,
	cout => \inst|configurator|Add2~14\);

-- Location: FF_X37_Y19_N26
\inst|configurator|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|ALT_INV_sclk_reg~q\,
	asdata => \inst|configurator|Add2~13_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst|configurator|LessThan2~0_combout\,
	sload => VCC,
	ena => \inst|configurator|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|counter\(3));

-- Location: MLABCELL_X37_Y19_N42
\inst|configurator|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Add2~21_sumout\ = SUM(( \inst|configurator|counter\(4) ) + ( GND ) + ( \inst|configurator|Add2~14\ ))
-- \inst|configurator|Add2~22\ = CARRY(( \inst|configurator|counter\(4) ) + ( GND ) + ( \inst|configurator|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|configurator|ALT_INV_counter\(4),
	cin => \inst|configurator|Add2~14\,
	sumout => \inst|configurator|Add2~21_sumout\,
	cout => \inst|configurator|Add2~22\);

-- Location: FF_X37_Y19_N8
\inst|configurator|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|ALT_INV_sclk_reg~q\,
	asdata => \inst|configurator|Add2~21_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst|configurator|LessThan2~0_combout\,
	sload => VCC,
	ena => \inst|configurator|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|counter\(4));

-- Location: MLABCELL_X37_Y19_N45
\inst|configurator|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Add2~17_sumout\ = SUM(( \inst|configurator|counter\(5) ) + ( GND ) + ( \inst|configurator|Add2~22\ ))
-- \inst|configurator|Add2~18\ = CARRY(( \inst|configurator|counter\(5) ) + ( GND ) + ( \inst|configurator|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|configurator|ALT_INV_counter\(5),
	cin => \inst|configurator|Add2~22\,
	sumout => \inst|configurator|Add2~17_sumout\,
	cout => \inst|configurator|Add2~18\);

-- Location: FF_X37_Y19_N56
\inst|configurator|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|ALT_INV_sclk_reg~q\,
	asdata => \inst|configurator|Add2~17_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst|configurator|LessThan2~0_combout\,
	sload => VCC,
	ena => \inst|configurator|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|counter\(5));

-- Location: MLABCELL_X37_Y19_N48
\inst|configurator|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Add2~25_sumout\ = SUM(( \inst|configurator|counter\(6) ) + ( GND ) + ( \inst|configurator|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|configurator|ALT_INV_counter\(6),
	cin => \inst|configurator|Add2~18\,
	sumout => \inst|configurator|Add2~25_sumout\);

-- Location: FF_X37_Y19_N5
\inst|configurator|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|ALT_INV_sclk_reg~q\,
	asdata => \inst|configurator|Add2~25_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst|configurator|LessThan2~0_combout\,
	sload => VCC,
	ena => \inst|configurator|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|counter\(6));

-- Location: MLABCELL_X37_Y19_N18
\inst|configurator|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|LessThan2~0_combout\ = ( \inst|configurator|counter\(4) & ( (\inst|configurator|counter\(5)) # (\inst|configurator|counter\(6)) ) ) # ( !\inst|configurator|counter\(4) & ( \inst|configurator|counter\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|configurator|ALT_INV_counter\(6),
	datad => \inst|configurator|ALT_INV_counter\(5),
	dataf => \inst|configurator|ALT_INV_counter\(4),
	combout => \inst|configurator|LessThan2~0_combout\);

-- Location: LABCELL_X36_Y19_N27
\inst|configurator|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|LessThan1~0_combout\ = ( !\inst|configurator|Add1~5_sumout\ & ( (!\inst|configurator|Add1~9_sumout\ & ((!\inst|configurator|Add1~17_sumout\) # (!\inst|configurator|Add1~13_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010100000101010101010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|configurator|ALT_INV_Add1~9_sumout\,
	datac => \inst|configurator|ALT_INV_Add1~17_sumout\,
	datad => \inst|configurator|ALT_INV_Add1~13_sumout\,
	dataf => \inst|configurator|ALT_INV_Add1~5_sumout\,
	combout => \inst|configurator|LessThan1~0_combout\);

-- Location: LABCELL_X36_Y19_N36
\inst|configurator|configOK~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|configOK~0_combout\ = ( \inst|configurator|Add1~1_sumout\ & ( \inst|configurator|LessThan1~0_combout\ & ( ((\inst|configurator|state.SEND~q\ & (\Reset~input_o\ & \inst|configurator|LessThan2~0_combout\))) # 
-- (\inst|configurator|configOK~reg0_q\) ) ) ) # ( !\inst|configurator|Add1~1_sumout\ & ( \inst|configurator|LessThan1~0_combout\ & ( \inst|configurator|configOK~reg0_q\ ) ) ) # ( \inst|configurator|Add1~1_sumout\ & ( !\inst|configurator|LessThan1~0_combout\ 
-- & ( ((\inst|configurator|state.SEND~q\ & (\Reset~input_o\ & \inst|configurator|LessThan2~0_combout\))) # (\inst|configurator|configOK~reg0_q\) ) ) ) # ( !\inst|configurator|Add1~1_sumout\ & ( !\inst|configurator|LessThan1~0_combout\ & ( 
-- ((\inst|configurator|state.SEND~q\ & (\Reset~input_o\ & \inst|configurator|LessThan2~0_combout\))) # (\inst|configurator|configOK~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100011111000011110001111100001111000011110000111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|configurator|ALT_INV_state.SEND~q\,
	datab => \ALT_INV_Reset~input_o\,
	datac => \inst|configurator|ALT_INV_configOK~reg0_q\,
	datad => \inst|configurator|ALT_INV_LessThan2~0_combout\,
	datae => \inst|configurator|ALT_INV_Add1~1_sumout\,
	dataf => \inst|configurator|ALT_INV_LessThan1~0_combout\,
	combout => \inst|configurator|configOK~0_combout\);

-- Location: FF_X36_Y19_N53
\inst|configurator|configOK~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|ALT_INV_sclk_reg~q\,
	asdata => \inst|configurator|configOK~0_combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|configOK~reg0_q\);

-- Location: LABCELL_X36_Y19_N42
\inst|configurator|needWait~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|needWait~0_combout\ = ( \inst|configurator|Add1~29_sumout\ & ( \inst|configurator|state.SEND~q\ & ( (\Reset~input_o\ & (\inst|configurator|Add1~25_sumout\ & (\inst|configurator|Add1~21_sumout\ & !\inst|configurator|Add1~13_sumout\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reset~input_o\,
	datab => \inst|configurator|ALT_INV_Add1~25_sumout\,
	datac => \inst|configurator|ALT_INV_Add1~21_sumout\,
	datad => \inst|configurator|ALT_INV_Add1~13_sumout\,
	datae => \inst|configurator|ALT_INV_Add1~29_sumout\,
	dataf => \inst|configurator|ALT_INV_state.SEND~q\,
	combout => \inst|configurator|needWait~0_combout\);

-- Location: LABCELL_X36_Y19_N54
\inst|configurator|needWait~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|needWait~1_combout\ = ( \inst|configurator|LessThan1~0_combout\ & ( \inst|configurator|sendData~0_combout\ & ( (!\inst|configurator|Add1~1_sumout\ & (((\inst|configurator|Add1~17_sumout\ & \inst|configurator|needWait~0_combout\)) # 
-- (\inst|configurator|needWait~q\))) ) ) ) # ( \inst|configurator|LessThan1~0_combout\ & ( !\inst|configurator|sendData~0_combout\ & ( ((\inst|configurator|Add1~17_sumout\ & (!\inst|configurator|Add1~1_sumout\ & \inst|configurator|needWait~0_combout\))) # 
-- (\inst|configurator|needWait~q\) ) ) ) # ( !\inst|configurator|LessThan1~0_combout\ & ( !\inst|configurator|sendData~0_combout\ & ( \inst|configurator|needWait~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010111010100000000000000000101000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|configurator|ALT_INV_needWait~q\,
	datab => \inst|configurator|ALT_INV_Add1~17_sumout\,
	datac => \inst|configurator|ALT_INV_Add1~1_sumout\,
	datad => \inst|configurator|ALT_INV_needWait~0_combout\,
	datae => \inst|configurator|ALT_INV_LessThan1~0_combout\,
	dataf => \inst|configurator|ALT_INV_sendData~0_combout\,
	combout => \inst|configurator|needWait~1_combout\);

-- Location: FF_X36_Y19_N41
\inst|configurator|needWait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|ALT_INV_sclk_reg~q\,
	asdata => \inst|configurator|needWait~1_combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|needWait~q\);

-- Location: IOIBUF_X21_Y0_N1
\Run~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Run,
	o => \Run~input_o\);

-- Location: LABCELL_X33_Y20_N0
\inst|configurator|Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Add4~33_sumout\ = SUM(( \inst|configurator|WaitingBuffer\(0) ) + ( VCC ) + ( !VCC ))
-- \inst|configurator|Add4~34\ = CARRY(( \inst|configurator|WaitingBuffer\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|configurator|ALT_INV_WaitingBuffer\(0),
	cin => GND,
	sumout => \inst|configurator|Add4~33_sumout\,
	cout => \inst|configurator|Add4~34\);

-- Location: LABCELL_X33_Y20_N24
\inst|configurator|Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Add4~5_sumout\ = SUM(( \inst|configurator|WaitingBuffer\(8) ) + ( GND ) + ( \inst|configurator|Add4~2\ ))
-- \inst|configurator|Add4~6\ = CARRY(( \inst|configurator|WaitingBuffer\(8) ) + ( GND ) + ( \inst|configurator|Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|configurator|ALT_INV_WaitingBuffer\(8),
	cin => \inst|configurator|Add4~2\,
	sumout => \inst|configurator|Add4~5_sumout\,
	cout => \inst|configurator|Add4~6\);

-- Location: LABCELL_X33_Y20_N27
\inst|configurator|Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Add4~9_sumout\ = SUM(( \inst|configurator|WaitingBuffer\(9) ) + ( GND ) + ( \inst|configurator|Add4~6\ ))
-- \inst|configurator|Add4~10\ = CARRY(( \inst|configurator|WaitingBuffer\(9) ) + ( GND ) + ( \inst|configurator|Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|configurator|ALT_INV_WaitingBuffer\(9),
	cin => \inst|configurator|Add4~6\,
	sumout => \inst|configurator|Add4~9_sumout\,
	cout => \inst|configurator|Add4~10\);

-- Location: LABCELL_X35_Y20_N9
\inst|configurator|waiting~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|waiting~0_combout\ = ( \inst|configurator|state.INTER~q\ & ( \Reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Reset~input_o\,
	dataf => \inst|configurator|ALT_INV_state.INTER~q\,
	combout => \inst|configurator|waiting~0_combout\);

-- Location: FF_X33_Y20_N29
\inst|configurator|WaitingBuffer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|sclk_reg~q\,
	d => \inst|configurator|Add4~9_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst|configurator|Equal3~3_combout\,
	ena => \inst|configurator|waiting~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|WaitingBuffer\(9));

-- Location: LABCELL_X33_Y20_N30
\inst|configurator|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Add4~13_sumout\ = SUM(( \inst|configurator|WaitingBuffer\(10) ) + ( GND ) + ( \inst|configurator|Add4~10\ ))
-- \inst|configurator|Add4~14\ = CARRY(( \inst|configurator|WaitingBuffer\(10) ) + ( GND ) + ( \inst|configurator|Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|configurator|ALT_INV_WaitingBuffer\(10),
	cin => \inst|configurator|Add4~10\,
	sumout => \inst|configurator|Add4~13_sumout\,
	cout => \inst|configurator|Add4~14\);

-- Location: FF_X33_Y20_N32
\inst|configurator|WaitingBuffer[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|sclk_reg~q\,
	d => \inst|configurator|Add4~13_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst|configurator|Equal3~3_combout\,
	ena => \inst|configurator|waiting~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|WaitingBuffer\(10));

-- Location: LABCELL_X33_Y20_N33
\inst|configurator|Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Add4~17_sumout\ = SUM(( \inst|configurator|WaitingBuffer\(11) ) + ( GND ) + ( \inst|configurator|Add4~14\ ))
-- \inst|configurator|Add4~18\ = CARRY(( \inst|configurator|WaitingBuffer\(11) ) + ( GND ) + ( \inst|configurator|Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|configurator|ALT_INV_WaitingBuffer\(11),
	cin => \inst|configurator|Add4~14\,
	sumout => \inst|configurator|Add4~17_sumout\,
	cout => \inst|configurator|Add4~18\);

-- Location: FF_X33_Y20_N35
\inst|configurator|WaitingBuffer[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|sclk_reg~q\,
	d => \inst|configurator|Add4~17_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst|configurator|Equal3~3_combout\,
	ena => \inst|configurator|waiting~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|WaitingBuffer\(11));

-- Location: LABCELL_X33_Y20_N36
\inst|configurator|Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Add4~25_sumout\ = SUM(( \inst|configurator|WaitingBuffer\(12) ) + ( GND ) + ( \inst|configurator|Add4~18\ ))
-- \inst|configurator|Add4~26\ = CARRY(( \inst|configurator|WaitingBuffer\(12) ) + ( GND ) + ( \inst|configurator|Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|configurator|ALT_INV_WaitingBuffer\(12),
	cin => \inst|configurator|Add4~18\,
	sumout => \inst|configurator|Add4~25_sumout\,
	cout => \inst|configurator|Add4~26\);

-- Location: FF_X33_Y20_N38
\inst|configurator|WaitingBuffer[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|sclk_reg~q\,
	d => \inst|configurator|Add4~25_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst|configurator|Equal3~3_combout\,
	ena => \inst|configurator|waiting~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|WaitingBuffer\(12));

-- Location: LABCELL_X33_Y20_N39
\inst|configurator|Add4~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Add4~57_sumout\ = SUM(( \inst|configurator|WaitingBuffer\(13) ) + ( GND ) + ( \inst|configurator|Add4~26\ ))
-- \inst|configurator|Add4~58\ = CARRY(( \inst|configurator|WaitingBuffer\(13) ) + ( GND ) + ( \inst|configurator|Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|configurator|ALT_INV_WaitingBuffer\(13),
	cin => \inst|configurator|Add4~26\,
	sumout => \inst|configurator|Add4~57_sumout\,
	cout => \inst|configurator|Add4~58\);

-- Location: FF_X33_Y20_N41
\inst|configurator|WaitingBuffer[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|sclk_reg~q\,
	d => \inst|configurator|Add4~57_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst|configurator|Equal3~3_combout\,
	ena => \inst|configurator|waiting~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|WaitingBuffer\(13));

-- Location: LABCELL_X33_Y20_N54
\inst|configurator|Equal3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Equal3~2_combout\ = ( !\inst|configurator|WaitingBuffer\(5) & ( \inst|configurator|WaitingBuffer\(3) & ( (!\inst|configurator|WaitingBuffer\(13) & (!\inst|configurator|WaitingBuffer\(6) & !\inst|configurator|WaitingBuffer\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|configurator|ALT_INV_WaitingBuffer\(13),
	datac => \inst|configurator|ALT_INV_WaitingBuffer\(6),
	datad => \inst|configurator|ALT_INV_WaitingBuffer\(4),
	datae => \inst|configurator|ALT_INV_WaitingBuffer\(5),
	dataf => \inst|configurator|ALT_INV_WaitingBuffer\(3),
	combout => \inst|configurator|Equal3~2_combout\);

-- Location: LABCELL_X33_Y20_N42
\inst|configurator|Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Add4~21_sumout\ = SUM(( \inst|configurator|WaitingBuffer\(14) ) + ( GND ) + ( \inst|configurator|Add4~58\ ))
-- \inst|configurator|Add4~22\ = CARRY(( \inst|configurator|WaitingBuffer\(14) ) + ( GND ) + ( \inst|configurator|Add4~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|configurator|ALT_INV_WaitingBuffer\(14),
	cin => \inst|configurator|Add4~58\,
	sumout => \inst|configurator|Add4~21_sumout\,
	cout => \inst|configurator|Add4~22\);

-- Location: FF_X33_Y20_N44
\inst|configurator|WaitingBuffer[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|sclk_reg~q\,
	d => \inst|configurator|Add4~21_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst|configurator|Equal3~3_combout\,
	ena => \inst|configurator|waiting~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|WaitingBuffer\(14));

-- Location: LABCELL_X33_Y20_N45
\inst|configurator|Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Add4~29_sumout\ = SUM(( \inst|configurator|WaitingBuffer\(15) ) + ( GND ) + ( \inst|configurator|Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|configurator|ALT_INV_WaitingBuffer\(15),
	cin => \inst|configurator|Add4~22\,
	sumout => \inst|configurator|Add4~29_sumout\);

-- Location: FF_X33_Y20_N47
\inst|configurator|WaitingBuffer[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|sclk_reg~q\,
	d => \inst|configurator|Add4~29_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst|configurator|Equal3~3_combout\,
	ena => \inst|configurator|waiting~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|WaitingBuffer\(15));

-- Location: LABCELL_X33_Y20_N48
\inst|configurator|Equal3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Equal3~1_combout\ = ( \inst|configurator|WaitingBuffer\(12) & ( !\inst|configurator|WaitingBuffer\(2) & ( (!\inst|configurator|WaitingBuffer\(0) & (!\inst|configurator|WaitingBuffer\(15) & (!\inst|configurator|WaitingBuffer\(1) & 
-- !\inst|configurator|WaitingBuffer\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|configurator|ALT_INV_WaitingBuffer\(0),
	datab => \inst|configurator|ALT_INV_WaitingBuffer\(15),
	datac => \inst|configurator|ALT_INV_WaitingBuffer\(1),
	datad => \inst|configurator|ALT_INV_WaitingBuffer\(14),
	datae => \inst|configurator|ALT_INV_WaitingBuffer\(12),
	dataf => \inst|configurator|ALT_INV_WaitingBuffer\(2),
	combout => \inst|configurator|Equal3~1_combout\);

-- Location: LABCELL_X36_Y20_N6
\inst|configurator|Equal3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Equal3~3_combout\ = ( \inst|configurator|Equal3~1_combout\ & ( (\inst|configurator|Equal3~0_combout\ & (\inst|configurator|WaitingBuffer\(7) & \inst|configurator|Equal3~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001100000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|configurator|ALT_INV_Equal3~0_combout\,
	datac => \inst|configurator|ALT_INV_WaitingBuffer\(7),
	datad => \inst|configurator|ALT_INV_Equal3~2_combout\,
	datae => \inst|configurator|ALT_INV_Equal3~1_combout\,
	combout => \inst|configurator|Equal3~3_combout\);

-- Location: FF_X33_Y20_N2
\inst|configurator|WaitingBuffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|sclk_reg~q\,
	d => \inst|configurator|Add4~33_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst|configurator|Equal3~3_combout\,
	ena => \inst|configurator|waiting~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|WaitingBuffer\(0));

-- Location: LABCELL_X33_Y20_N3
\inst|configurator|Add4~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Add4~37_sumout\ = SUM(( \inst|configurator|WaitingBuffer\(1) ) + ( GND ) + ( \inst|configurator|Add4~34\ ))
-- \inst|configurator|Add4~38\ = CARRY(( \inst|configurator|WaitingBuffer\(1) ) + ( GND ) + ( \inst|configurator|Add4~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|configurator|ALT_INV_WaitingBuffer\(1),
	cin => \inst|configurator|Add4~34\,
	sumout => \inst|configurator|Add4~37_sumout\,
	cout => \inst|configurator|Add4~38\);

-- Location: FF_X33_Y20_N5
\inst|configurator|WaitingBuffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|sclk_reg~q\,
	d => \inst|configurator|Add4~37_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst|configurator|Equal3~3_combout\,
	ena => \inst|configurator|waiting~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|WaitingBuffer\(1));

-- Location: LABCELL_X33_Y20_N6
\inst|configurator|Add4~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Add4~41_sumout\ = SUM(( \inst|configurator|WaitingBuffer\(2) ) + ( GND ) + ( \inst|configurator|Add4~38\ ))
-- \inst|configurator|Add4~42\ = CARRY(( \inst|configurator|WaitingBuffer\(2) ) + ( GND ) + ( \inst|configurator|Add4~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|configurator|ALT_INV_WaitingBuffer\(2),
	cin => \inst|configurator|Add4~38\,
	sumout => \inst|configurator|Add4~41_sumout\,
	cout => \inst|configurator|Add4~42\);

-- Location: FF_X33_Y20_N8
\inst|configurator|WaitingBuffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|sclk_reg~q\,
	d => \inst|configurator|Add4~41_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst|configurator|Equal3~3_combout\,
	ena => \inst|configurator|waiting~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|WaitingBuffer\(2));

-- Location: LABCELL_X33_Y20_N9
\inst|configurator|Add4~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Add4~45_sumout\ = SUM(( \inst|configurator|WaitingBuffer\(3) ) + ( GND ) + ( \inst|configurator|Add4~42\ ))
-- \inst|configurator|Add4~46\ = CARRY(( \inst|configurator|WaitingBuffer\(3) ) + ( GND ) + ( \inst|configurator|Add4~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|configurator|ALT_INV_WaitingBuffer\(3),
	cin => \inst|configurator|Add4~42\,
	sumout => \inst|configurator|Add4~45_sumout\,
	cout => \inst|configurator|Add4~46\);

-- Location: FF_X33_Y20_N11
\inst|configurator|WaitingBuffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|sclk_reg~q\,
	d => \inst|configurator|Add4~45_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst|configurator|Equal3~3_combout\,
	ena => \inst|configurator|waiting~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|WaitingBuffer\(3));

-- Location: LABCELL_X33_Y20_N12
\inst|configurator|Add4~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Add4~49_sumout\ = SUM(( \inst|configurator|WaitingBuffer\(4) ) + ( GND ) + ( \inst|configurator|Add4~46\ ))
-- \inst|configurator|Add4~50\ = CARRY(( \inst|configurator|WaitingBuffer\(4) ) + ( GND ) + ( \inst|configurator|Add4~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|configurator|ALT_INV_WaitingBuffer\(4),
	cin => \inst|configurator|Add4~46\,
	sumout => \inst|configurator|Add4~49_sumout\,
	cout => \inst|configurator|Add4~50\);

-- Location: FF_X33_Y20_N14
\inst|configurator|WaitingBuffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|sclk_reg~q\,
	d => \inst|configurator|Add4~49_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst|configurator|Equal3~3_combout\,
	ena => \inst|configurator|waiting~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|WaitingBuffer\(4));

-- Location: LABCELL_X33_Y20_N15
\inst|configurator|Add4~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Add4~53_sumout\ = SUM(( \inst|configurator|WaitingBuffer\(5) ) + ( GND ) + ( \inst|configurator|Add4~50\ ))
-- \inst|configurator|Add4~54\ = CARRY(( \inst|configurator|WaitingBuffer\(5) ) + ( GND ) + ( \inst|configurator|Add4~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|configurator|ALT_INV_WaitingBuffer\(5),
	cin => \inst|configurator|Add4~50\,
	sumout => \inst|configurator|Add4~53_sumout\,
	cout => \inst|configurator|Add4~54\);

-- Location: FF_X33_Y20_N17
\inst|configurator|WaitingBuffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|sclk_reg~q\,
	d => \inst|configurator|Add4~53_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst|configurator|Equal3~3_combout\,
	ena => \inst|configurator|waiting~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|WaitingBuffer\(5));

-- Location: LABCELL_X33_Y20_N18
\inst|configurator|Add4~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Add4~61_sumout\ = SUM(( \inst|configurator|WaitingBuffer\(6) ) + ( GND ) + ( \inst|configurator|Add4~54\ ))
-- \inst|configurator|Add4~62\ = CARRY(( \inst|configurator|WaitingBuffer\(6) ) + ( GND ) + ( \inst|configurator|Add4~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|configurator|ALT_INV_WaitingBuffer\(6),
	cin => \inst|configurator|Add4~54\,
	sumout => \inst|configurator|Add4~61_sumout\,
	cout => \inst|configurator|Add4~62\);

-- Location: FF_X33_Y20_N20
\inst|configurator|WaitingBuffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|sclk_reg~q\,
	d => \inst|configurator|Add4~61_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst|configurator|Equal3~3_combout\,
	ena => \inst|configurator|waiting~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|WaitingBuffer\(6));

-- Location: LABCELL_X33_Y20_N21
\inst|configurator|Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Add4~1_sumout\ = SUM(( \inst|configurator|WaitingBuffer\(7) ) + ( GND ) + ( \inst|configurator|Add4~62\ ))
-- \inst|configurator|Add4~2\ = CARRY(( \inst|configurator|WaitingBuffer\(7) ) + ( GND ) + ( \inst|configurator|Add4~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|configurator|ALT_INV_WaitingBuffer\(7),
	cin => \inst|configurator|Add4~62\,
	sumout => \inst|configurator|Add4~1_sumout\,
	cout => \inst|configurator|Add4~2\);

-- Location: FF_X33_Y20_N23
\inst|configurator|WaitingBuffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|sclk_reg~q\,
	d => \inst|configurator|Add4~1_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst|configurator|Equal3~3_combout\,
	ena => \inst|configurator|waiting~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|WaitingBuffer\(7));

-- Location: FF_X33_Y20_N26
\inst|configurator|WaitingBuffer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|sclk_reg~q\,
	d => \inst|configurator|Add4~5_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst|configurator|Equal3~3_combout\,
	ena => \inst|configurator|waiting~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|WaitingBuffer\(8));

-- Location: LABCELL_X35_Y20_N0
\inst|configurator|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Equal3~0_combout\ = ( \inst|configurator|WaitingBuffer\(9) & ( (\inst|configurator|WaitingBuffer\(8) & (!\inst|configurator|WaitingBuffer\(11) & !\inst|configurator|WaitingBuffer\(10))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|configurator|ALT_INV_WaitingBuffer\(8),
	datac => \inst|configurator|ALT_INV_WaitingBuffer\(11),
	datad => \inst|configurator|ALT_INV_WaitingBuffer\(10),
	dataf => \inst|configurator|ALT_INV_WaitingBuffer\(9),
	combout => \inst|configurator|Equal3~0_combout\);

-- Location: LABCELL_X36_Y20_N18
\inst|configurator|WaitingDone~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|WaitingDone~0_combout\ = ( \inst|configurator|Equal3~1_combout\ & ( \Reset~input_o\ & ( (\inst|configurator|state.INTER~q\ & (\inst|configurator|Equal3~0_combout\ & (\inst|configurator|WaitingBuffer\(7) & 
-- \inst|configurator|Equal3~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|configurator|ALT_INV_state.INTER~q\,
	datab => \inst|configurator|ALT_INV_Equal3~0_combout\,
	datac => \inst|configurator|ALT_INV_WaitingBuffer\(7),
	datad => \inst|configurator|ALT_INV_Equal3~2_combout\,
	datae => \inst|configurator|ALT_INV_Equal3~1_combout\,
	dataf => \ALT_INV_Reset~input_o\,
	combout => \inst|configurator|WaitingDone~0_combout\);

-- Location: FF_X36_Y20_N20
\inst|configurator|WaitingDone\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|sclk_reg~q\,
	d => \inst|configurator|WaitingDone~0_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|WaitingDone~q\);

-- Location: LABCELL_X35_Y20_N36
\inst|configurator|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Selector2~0_combout\ = ( \inst|configurator|state.INTER~q\ & ( \inst|configurator|state.SEND~q\ & ( (!\inst|configurator|configOK~reg0_q\ & ((!\inst|configurator|WaitingDone~q\) # ((\inst|configurator|needWait~q\ & !\Run~input_o\)))) ) 
-- ) ) # ( !\inst|configurator|state.INTER~q\ & ( \inst|configurator|state.SEND~q\ & ( (!\inst|configurator|configOK~reg0_q\ & (\inst|configurator|needWait~q\ & !\Run~input_o\)) ) ) ) # ( \inst|configurator|state.INTER~q\ & ( 
-- !\inst|configurator|state.SEND~q\ & ( (!\inst|configurator|configOK~reg0_q\ & !\inst|configurator|WaitingDone~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100000000000100000001000001010101000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|configurator|ALT_INV_configOK~reg0_q\,
	datab => \inst|configurator|ALT_INV_needWait~q\,
	datac => \ALT_INV_Run~input_o\,
	datad => \inst|configurator|ALT_INV_WaitingDone~q\,
	datae => \inst|configurator|ALT_INV_state.INTER~q\,
	dataf => \inst|configurator|ALT_INV_state.SEND~q\,
	combout => \inst|configurator|Selector2~0_combout\);

-- Location: FF_X35_Y20_N37
\inst|configurator|nextState.INTER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|ALT_INV_sclk_reg~q\,
	d => \inst|configurator|Selector2~0_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|nextState.INTER~q\);

-- Location: FF_X36_Y20_N32
\inst|configurator|state.INTER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|sclk_reg~q\,
	asdata => \inst|configurator|nextState.INTER~q\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|state.INTER~q\);

-- Location: LABCELL_X36_Y20_N0
\inst|configurator|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Selector3~0_combout\ = ( \inst|configurator|WaitingDone~q\ & ( \inst|configurator|state.INTER~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|configurator|ALT_INV_state.INTER~q\,
	dataf => \inst|configurator|ALT_INV_WaitingDone~q\,
	combout => \inst|configurator|Selector3~0_combout\);

-- Location: LABCELL_X35_Y20_N21
\inst|configurator|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Selector4~0_combout\ = ( \inst|configurator|state.SEND~q\ & ( (!\inst|configurator|configOK~reg0_q\ & (((\inst|configurator|state.DONE~q\ & !\Run~input_o\)))) # (\inst|configurator|configOK~reg0_q\ & (((!\Run~input_o\)) # 
-- (\inst|configurator|state.INTER~q\))) ) ) # ( !\inst|configurator|state.SEND~q\ & ( (!\inst|configurator|configOK~reg0_q\ & (((\inst|configurator|state.DONE~q\ & !\Run~input_o\)))) # (\inst|configurator|configOK~reg0_q\ & 
-- (((\inst|configurator|state.DONE~q\ & !\Run~input_o\)) # (\inst|configurator|state.INTER~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100010001000111110001000101011111000100010101111100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|configurator|ALT_INV_configOK~reg0_q\,
	datab => \inst|configurator|ALT_INV_state.INTER~q\,
	datac => \inst|configurator|ALT_INV_state.DONE~q\,
	datad => \ALT_INV_Run~input_o\,
	dataf => \inst|configurator|ALT_INV_state.SEND~q\,
	combout => \inst|configurator|Selector4~0_combout\);

-- Location: FF_X35_Y20_N22
\inst|configurator|nextState.DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|ALT_INV_sclk_reg~q\,
	d => \inst|configurator|Selector4~0_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|nextState.DONE~q\);

-- Location: FF_X36_Y20_N59
\inst|configurator|state.DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|sclk_reg~q\,
	asdata => \inst|configurator|nextState.DONE~q\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|state.DONE~q\);

-- Location: LABCELL_X35_Y20_N6
\inst|configurator|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Selector0~0_combout\ = ( \inst|configurator|state.SEND~q\ & ( (!\Run~input_o\ & ((!\inst|configurator|configOK~reg0_q\) # (\inst|configurator|state.IDLE~q\))) ) ) # ( !\inst|configurator|state.SEND~q\ & ( 
-- (!\inst|configurator|state.IDLE~q\ & (!\inst|configurator|configOK~reg0_q\ & ((!\Run~input_o\)))) # (\inst|configurator|state.IDLE~q\ & (((!\inst|configurator|state.DONE~q\) # (!\Run~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111100001100101011110000110010101111000000001010111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|configurator|ALT_INV_configOK~reg0_q\,
	datab => \inst|configurator|ALT_INV_state.DONE~q\,
	datac => \inst|configurator|ALT_INV_state.IDLE~q\,
	datad => \ALT_INV_Run~input_o\,
	dataf => \inst|configurator|ALT_INV_state.SEND~q\,
	combout => \inst|configurator|Selector0~0_combout\);

-- Location: FF_X35_Y20_N7
\inst|configurator|nextState.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|ALT_INV_sclk_reg~q\,
	d => \inst|configurator|Selector0~0_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|nextState.IDLE~q\);

-- Location: FF_X36_Y20_N23
\inst|configurator|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|sclk_reg~q\,
	asdata => \inst|configurator|nextState.IDLE~q\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|state.IDLE~q\);

-- Location: LABCELL_X36_Y20_N39
\inst|configurator|discardBuffer~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|discardBuffer~0_combout\ = ( !\inst|configurator|discardBuffer~q\ & ( \inst|configurator|state.DISCARD~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|configurator|ALT_INV_state.DISCARD~q\,
	dataf => \inst|configurator|ALT_INV_discardBuffer~q\,
	combout => \inst|configurator|discardBuffer~0_combout\);

-- Location: FF_X36_Y20_N53
\inst|configurator|discardBuffer\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|internalClock~q\,
	asdata => \inst|configurator|discardBuffer~0_combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|discardBuffer~q\);

-- Location: LABCELL_X36_Y20_N12
\inst|configurator|discarded~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|discarded~0_combout\ = ( \Reset~input_o\ & ( \inst|configurator|discarded~q\ & ( !\inst|configurator|state.INTER~q\ ) ) ) # ( !\Reset~input_o\ & ( \inst|configurator|discarded~q\ ) ) # ( \Reset~input_o\ & ( 
-- !\inst|configurator|discarded~q\ & ( (!\inst|configurator|state.INTER~q\ & \inst|configurator|discardBuffer~q\) ) ) ) # ( !\Reset~input_o\ & ( !\inst|configurator|discarded~q\ & ( \inst|configurator|discardBuffer~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011000000110011111111111111111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|configurator|ALT_INV_state.INTER~q\,
	datac => \inst|configurator|ALT_INV_discardBuffer~q\,
	datae => \ALT_INV_Reset~input_o\,
	dataf => \inst|configurator|ALT_INV_discarded~q\,
	combout => \inst|configurator|discarded~0_combout\);

-- Location: LABCELL_X36_Y20_N24
\inst|configurator|discarded~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|discarded~feeder_combout\ = ( \inst|configurator|discarded~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|configurator|ALT_INV_discarded~0_combout\,
	combout => \inst|configurator|discarded~feeder_combout\);

-- Location: FF_X36_Y20_N26
\inst|configurator|discarded\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|internalClock~q\,
	d => \inst|configurator|discarded~feeder_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|discarded~q\);

-- Location: LABCELL_X35_Y20_N48
\inst|configurator|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Selector3~1_combout\ = ( \inst|configurator|state.DISCARD~q\ & ( \inst|configurator|discarded~q\ & ( (!\inst|configurator|configOK~reg0_q\ & (((!\inst|configurator|state.IDLE~q\ & !\Run~input_o\)) # 
-- (\inst|configurator|Selector3~0_combout\))) ) ) ) # ( !\inst|configurator|state.DISCARD~q\ & ( \inst|configurator|discarded~q\ & ( (!\inst|configurator|configOK~reg0_q\ & (((!\inst|configurator|state.IDLE~q\ & !\Run~input_o\)) # 
-- (\inst|configurator|Selector3~0_combout\))) ) ) ) # ( \inst|configurator|state.DISCARD~q\ & ( !\inst|configurator|discarded~q\ ) ) # ( !\inst|configurator|state.DISCARD~q\ & ( !\inst|configurator|discarded~q\ & ( (!\inst|configurator|configOK~reg0_q\ & 
-- (((!\inst|configurator|state.IDLE~q\ & !\Run~input_o\)) # (\inst|configurator|Selector3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010001000100111111111111111111000100010001001100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|configurator|ALT_INV_Selector3~0_combout\,
	datab => \inst|configurator|ALT_INV_configOK~reg0_q\,
	datac => \inst|configurator|ALT_INV_state.IDLE~q\,
	datad => \ALT_INV_Run~input_o\,
	datae => \inst|configurator|ALT_INV_state.DISCARD~q\,
	dataf => \inst|configurator|ALT_INV_discarded~q\,
	combout => \inst|configurator|Selector3~1_combout\);

-- Location: FF_X35_Y20_N49
\inst|configurator|nextState.DISCARD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|ALT_INV_sclk_reg~q\,
	d => \inst|configurator|Selector3~1_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|nextState.DISCARD~q\);

-- Location: FF_X36_Y20_N47
\inst|configurator|state.DISCARD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|sclk_reg~q\,
	asdata => \inst|configurator|nextState.DISCARD~q\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|state.DISCARD~q\);

-- Location: LABCELL_X35_Y20_N42
\inst|configurator|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Selector1~0_combout\ = ( \inst|configurator|state.DISCARD~q\ & ( \inst|configurator|discarded~q\ ) ) # ( !\inst|configurator|state.DISCARD~q\ & ( \inst|configurator|discarded~q\ & ( (!\inst|configurator|configOK~reg0_q\ & 
-- (!\inst|configurator|needWait~q\ & (!\Run~input_o\ & \inst|configurator|state.SEND~q\))) ) ) ) # ( \inst|configurator|state.DISCARD~q\ & ( !\inst|configurator|discarded~q\ & ( (!\inst|configurator|configOK~reg0_q\ & (!\inst|configurator|needWait~q\ & 
-- (!\Run~input_o\ & \inst|configurator|state.SEND~q\))) ) ) ) # ( !\inst|configurator|state.DISCARD~q\ & ( !\inst|configurator|discarded~q\ & ( (!\inst|configurator|configOK~reg0_q\ & (!\inst|configurator|needWait~q\ & (!\Run~input_o\ & 
-- \inst|configurator|state.SEND~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|configurator|ALT_INV_configOK~reg0_q\,
	datab => \inst|configurator|ALT_INV_needWait~q\,
	datac => \ALT_INV_Run~input_o\,
	datad => \inst|configurator|ALT_INV_state.SEND~q\,
	datae => \inst|configurator|ALT_INV_state.DISCARD~q\,
	dataf => \inst|configurator|ALT_INV_discarded~q\,
	combout => \inst|configurator|Selector1~0_combout\);

-- Location: FF_X35_Y20_N44
\inst|configurator|nextState.SEND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|ALT_INV_sclk_reg~q\,
	d => \inst|configurator|Selector1~0_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|nextState.SEND~q\);

-- Location: FF_X36_Y19_N35
\inst|configurator|state.SEND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|sclk_reg~q\,
	asdata => \inst|configurator|nextState.SEND~q\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|state.SEND~q\);

-- Location: LABCELL_X36_Y19_N24
\inst|configurator|sendData~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|sendData~0_combout\ = ( \inst|configurator|state.SEND~q\ & ( \Reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Reset~input_o\,
	dataf => \inst|configurator|ALT_INV_state.SEND~q\,
	combout => \inst|configurator|sendData~0_combout\);

-- Location: FF_X35_Y19_N38
\inst|configurator|dataIndex[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|ALT_INV_sclk_reg~q\,
	asdata => \inst|configurator|Add1~13_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst|configurator|LessThan1~1_combout\,
	sload => VCC,
	ena => \inst|configurator|sendData~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|dataIndex\(3));

-- Location: LABCELL_X35_Y19_N15
\inst|configurator|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|LessThan1~1_combout\ = ( \inst|configurator|Add1~1_sumout\ & ( \inst|configurator|Add1~9_sumout\ ) ) # ( !\inst|configurator|Add1~1_sumout\ & ( \inst|configurator|Add1~9_sumout\ ) ) # ( \inst|configurator|Add1~1_sumout\ & ( 
-- !\inst|configurator|Add1~9_sumout\ ) ) # ( !\inst|configurator|Add1~1_sumout\ & ( !\inst|configurator|Add1~9_sumout\ & ( ((\inst|configurator|Add1~13_sumout\ & \inst|configurator|Add1~17_sumout\)) # (\inst|configurator|Add1~5_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|configurator|ALT_INV_Add1~13_sumout\,
	datac => \inst|configurator|ALT_INV_Add1~17_sumout\,
	datad => \inst|configurator|ALT_INV_Add1~5_sumout\,
	datae => \inst|configurator|ALT_INV_Add1~1_sumout\,
	dataf => \inst|configurator|ALT_INV_Add1~9_sumout\,
	combout => \inst|configurator|LessThan1~1_combout\);

-- Location: FF_X35_Y19_N20
\inst|configurator|dataIndex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|ALT_INV_sclk_reg~q\,
	asdata => \inst|configurator|Add1~21_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst|configurator|LessThan1~1_combout\,
	sload => VCC,
	ena => \inst|configurator|sendData~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|dataIndex\(0));

-- Location: IOIBUF_X21_Y0_N18
\Wr_Re_Button~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Wr_Re_Button,
	o => \Wr_Re_Button~input_o\);

-- Location: MLABCELL_X37_Y20_N3
\inst|btn_ff1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|btn_ff1~0_combout\ = ( !\Wr_Re_Button~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Wr_Re_Button~input_o\,
	combout => \inst|btn_ff1~0_combout\);

-- Location: FF_X37_Y20_N5
\inst|btn_ff1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \inst|btn_ff1~0_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|btn_ff1~q\);

-- Location: FF_X37_Y20_N29
\inst|btn_ff2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \inst|btn_ff1~q\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|btn_ff2~q\);

-- Location: FF_X37_Y20_N23
\inst|btn_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \inst|btn_ff2~q\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|btn_prev~q\);

-- Location: MLABCELL_X37_Y20_N24
\inst|WrReEn~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|WrReEn~0_combout\ = ( \inst|WrReEn~q\ & ( \inst|btn_prev~q\ ) ) # ( \inst|WrReEn~q\ & ( !\inst|btn_prev~q\ & ( !\inst|btn_ff2~q\ ) ) ) # ( !\inst|WrReEn~q\ & ( !\inst|btn_prev~q\ & ( \inst|btn_ff2~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_btn_ff2~q\,
	datae => \inst|ALT_INV_WrReEn~q\,
	dataf => \inst|ALT_INV_btn_prev~q\,
	combout => \inst|WrReEn~0_combout\);

-- Location: FF_X37_Y20_N26
\inst|WrReEn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \inst|WrReEn~0_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|WrReEn~q\);

-- Location: LABCELL_X36_Y20_N57
\inst|configurator|wrre_latched~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|wrre_latched~0_combout\ = ( \inst|WrReEn~q\ & ( (!\inst|configurator|state.SEND~q\) # (\inst|configurator|wrre_latched~q\) ) ) # ( !\inst|WrReEn~q\ & ( (\inst|configurator|state.SEND~q\ & \inst|configurator|wrre_latched~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|configurator|ALT_INV_state.SEND~q\,
	datac => \inst|configurator|ALT_INV_wrre_latched~q\,
	dataf => \inst|ALT_INV_WrReEn~q\,
	combout => \inst|configurator|wrre_latched~0_combout\);

-- Location: FF_X36_Y20_N44
\inst|configurator|wrre_latched\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|configurator|sclk_reg~q\,
	asdata => \inst|configurator|wrre_latched~0_combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|configurator|wrre_latched~q\);

-- Location: MLABCELL_X37_Y19_N12
\inst|configurator|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Mux0~0_combout\ = ( \inst|configurator|dataIndex\(0) & ( \inst|configurator|counter\(2) & ( (!\inst|configurator|dataIndex\(1)) # (\inst|configurator|counter\(0)) ) ) ) # ( !\inst|configurator|dataIndex\(0) & ( 
-- \inst|configurator|counter\(2) & ( (!\inst|configurator|dataIndex\(1) & ((\inst|configurator|counter\(3)))) # (\inst|configurator|dataIndex\(1) & (\inst|configurator|counter\(1))) ) ) ) # ( \inst|configurator|dataIndex\(0) & ( 
-- !\inst|configurator|counter\(2) & ( (\inst|configurator|counter\(0) & \inst|configurator|dataIndex\(1)) ) ) ) # ( !\inst|configurator|dataIndex\(0) & ( !\inst|configurator|counter\(2) & ( (!\inst|configurator|dataIndex\(1) & 
-- ((\inst|configurator|counter\(3)))) # (\inst|configurator|dataIndex\(1) & (\inst|configurator|counter\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000000000101010100001111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|configurator|ALT_INV_counter\(0),
	datab => \inst|configurator|ALT_INV_counter\(1),
	datac => \inst|configurator|ALT_INV_counter\(3),
	datad => \inst|configurator|ALT_INV_dataIndex\(1),
	datae => \inst|configurator|ALT_INV_dataIndex\(0),
	dataf => \inst|configurator|ALT_INV_counter\(2),
	combout => \inst|configurator|Mux0~0_combout\);

-- Location: MLABCELL_X37_Y19_N54
\inst|configurator|sdio_do~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|sdio_do~4_combout\ = ( !\inst|configurator|dataIndex\(1) & ( ((!\inst|configurator|dataIndex\(2) & (\inst|configurator|dataIndex\(0) & (\inst|configurator|counter\(6)))) # (\inst|configurator|dataIndex\(2) & 
-- (((\inst|configurator|Mux0~0_combout\))))) ) ) # ( \inst|configurator|dataIndex\(1) & ( (!\inst|configurator|dataIndex\(2) & ((!\inst|configurator|dataIndex\(0) & (((\inst|configurator|counter\(5))))) # (\inst|configurator|dataIndex\(0) & 
-- (\inst|configurator|counter\(4))))) # (\inst|configurator|dataIndex\(2) & ((((\inst|configurator|Mux0~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000110110001101100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|configurator|ALT_INV_dataIndex\(0),
	datab => \inst|configurator|ALT_INV_counter\(4),
	datac => \inst|configurator|ALT_INV_counter\(5),
	datad => \inst|configurator|ALT_INV_Mux0~0_combout\,
	datae => \inst|configurator|ALT_INV_dataIndex\(1),
	dataf => \inst|configurator|ALT_INV_dataIndex\(2),
	datag => \inst|configurator|ALT_INV_counter\(6),
	combout => \inst|configurator|sdio_do~4_combout\);

-- Location: LABCELL_X35_Y19_N33
\inst|configurator|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Equal0~0_combout\ = ( !\inst|configurator|dataIndex\(6) & ( !\inst|configurator|dataIndex\(7) & ( (!\inst|configurator|dataIndex\(5) & (!\inst|configurator|dataIndex\(4) & !\inst|configurator|dataIndex\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|configurator|ALT_INV_dataIndex\(5),
	datab => \inst|configurator|ALT_INV_dataIndex\(4),
	datac => \inst|configurator|ALT_INV_dataIndex\(3),
	datae => \inst|configurator|ALT_INV_dataIndex\(6),
	dataf => \inst|configurator|ALT_INV_dataIndex\(7),
	combout => \inst|configurator|Equal0~0_combout\);

-- Location: LABCELL_X36_Y20_N54
\inst|configurator|Mux1~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Mux1~10_combout\ = ( \inst|configurator|dataIndex\(2) & ( (\inst|configurator|dataIndex\(1) & ((!\inst|configurator|counter\(0)) # (\inst|configurator|dataIndex\(3)))) ) ) # ( !\inst|configurator|dataIndex\(2) & ( 
-- !\inst|configurator|dataIndex\(1) $ (((!\inst|configurator|counter\(0)) # (\inst|configurator|dataIndex\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011110011000011001111001100000000111100110000000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|configurator|ALT_INV_dataIndex\(3),
	datac => \inst|configurator|ALT_INV_counter\(0),
	datad => \inst|configurator|ALT_INV_dataIndex\(1),
	dataf => \inst|configurator|ALT_INV_dataIndex\(2),
	combout => \inst|configurator|Mux1~10_combout\);

-- Location: LABCELL_X36_Y20_N48
\inst|configurator|Mux1~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Mux1~11_combout\ = ( \inst|configurator|counter\(1) & ( (\inst|configurator|counter\(3) & (\inst|configurator|counter\(2) & \inst|configurator|dataIndex\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|configurator|ALT_INV_counter\(3),
	datac => \inst|configurator|ALT_INV_counter\(2),
	datad => \inst|configurator|ALT_INV_dataIndex\(0),
	dataf => \inst|configurator|ALT_INV_counter\(1),
	combout => \inst|configurator|Mux1~11_combout\);

-- Location: LABCELL_X35_Y20_N18
\inst|configurator|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Mux1~2_combout\ = ( !\inst|configurator|dataIndex\(1) & ( (\inst|configurator|counter\(3) & \inst|configurator|dataIndex\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|configurator|ALT_INV_counter\(3),
	datad => \inst|configurator|ALT_INV_dataIndex\(3),
	dataf => \inst|configurator|ALT_INV_dataIndex\(1),
	combout => \inst|configurator|Mux1~2_combout\);

-- Location: LABCELL_X35_Y20_N30
\inst|configurator|Mux1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Mux1~9_combout\ = (!\inst|configurator|counter\(2) & ((!\inst|configurator|dataIndex\(3) & (\inst|configurator|counter\(0) & !\inst|configurator|dataIndex\(2))) # (\inst|configurator|dataIndex\(3) & 
-- ((\inst|configurator|dataIndex\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001000100000010000100010000001000010001000000100001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|configurator|ALT_INV_dataIndex\(3),
	datab => \inst|configurator|ALT_INV_counter\(2),
	datac => \inst|configurator|ALT_INV_counter\(0),
	datad => \inst|configurator|ALT_INV_dataIndex\(2),
	combout => \inst|configurator|Mux1~9_combout\);

-- Location: LABCELL_X35_Y20_N27
\inst|configurator|Mux1~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Mux1~12_combout\ = ( \inst|configurator|counter\(0) & ( (\inst|configurator|counter\(1) & (!\inst|configurator|dataIndex\(0) & (!\inst|configurator|counter\(2) & \inst|configurator|dataIndex\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|configurator|ALT_INV_counter\(1),
	datab => \inst|configurator|ALT_INV_dataIndex\(0),
	datac => \inst|configurator|ALT_INV_counter\(2),
	datad => \inst|configurator|ALT_INV_dataIndex\(2),
	dataf => \inst|configurator|ALT_INV_counter\(0),
	combout => \inst|configurator|Mux1~12_combout\);

-- Location: LABCELL_X35_Y20_N24
\inst|configurator|Mux1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Mux1~13_combout\ = ( \inst|configurator|counter\(3) & ( (!\inst|configurator|counter\(1) & (!\inst|configurator|dataIndex\(1) & \inst|configurator|dataIndex\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|configurator|ALT_INV_counter\(1),
	datac => \inst|configurator|ALT_INV_dataIndex\(1),
	datad => \inst|configurator|ALT_INV_dataIndex\(0),
	dataf => \inst|configurator|ALT_INV_counter\(3),
	combout => \inst|configurator|Mux1~13_combout\);

-- Location: LABCELL_X35_Y20_N54
\inst|configurator|Mux1~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Mux1~14_combout\ = ( \inst|configurator|Mux1~12_combout\ & ( \inst|configurator|Mux1~13_combout\ & ( (!\inst|configurator|Mux1~2_combout\ & (!\inst|configurator|Mux1~9_combout\ & ((!\inst|configurator|Mux1~10_combout\) # 
-- (!\inst|configurator|Mux1~11_combout\)))) ) ) ) # ( !\inst|configurator|Mux1~12_combout\ & ( \inst|configurator|Mux1~13_combout\ & ( (!\inst|configurator|Mux1~9_combout\ & ((!\inst|configurator|Mux1~10_combout\) # (!\inst|configurator|Mux1~11_combout\))) 
-- ) ) ) # ( \inst|configurator|Mux1~12_combout\ & ( !\inst|configurator|Mux1~13_combout\ & ( (!\inst|configurator|Mux1~2_combout\ & ((!\inst|configurator|Mux1~10_combout\) # (!\inst|configurator|Mux1~11_combout\))) ) ) ) # ( 
-- !\inst|configurator|Mux1~12_combout\ & ( !\inst|configurator|Mux1~13_combout\ & ( (!\inst|configurator|Mux1~10_combout\) # (!\inst|configurator|Mux1~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111000001110000011101110000000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|configurator|ALT_INV_Mux1~10_combout\,
	datab => \inst|configurator|ALT_INV_Mux1~11_combout\,
	datac => \inst|configurator|ALT_INV_Mux1~2_combout\,
	datad => \inst|configurator|ALT_INV_Mux1~9_combout\,
	datae => \inst|configurator|ALT_INV_Mux1~12_combout\,
	dataf => \inst|configurator|ALT_INV_Mux1~13_combout\,
	combout => \inst|configurator|Mux1~14_combout\);

-- Location: MLABCELL_X37_Y19_N27
\inst|configurator|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Mux1~1_combout\ = ( \inst|configurator|counter\(2) & ( (\inst|configurator|dataIndex\(0) & \inst|configurator|dataIndex\(2)) ) ) # ( !\inst|configurator|counter\(2) & ( (!\inst|configurator|dataIndex\(0) & 
-- (\inst|configurator|counter\(0) & (!\inst|configurator|counter\(1) & !\inst|configurator|dataIndex\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|configurator|ALT_INV_dataIndex\(0),
	datab => \inst|configurator|ALT_INV_counter\(0),
	datac => \inst|configurator|ALT_INV_counter\(1),
	datad => \inst|configurator|ALT_INV_dataIndex\(2),
	dataf => \inst|configurator|ALT_INV_counter\(2),
	combout => \inst|configurator|Mux1~1_combout\);

-- Location: MLABCELL_X37_Y19_N0
\inst|configurator|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Mux1~0_combout\ = ( \inst|configurator|dataIndex\(1) & ( \inst|configurator|dataIndex\(2) & ( (!\inst|configurator|dataIndex\(0) & (!\inst|configurator|dataIndex\(3) & ((!\inst|configurator|counter\(1)) # 
-- (!\inst|configurator|counter\(0))))) # (\inst|configurator|dataIndex\(0) & (((!\inst|configurator|counter\(1) & !\inst|configurator|counter\(0))))) ) ) ) # ( !\inst|configurator|dataIndex\(1) & ( \inst|configurator|dataIndex\(2) & ( 
-- (!\inst|configurator|counter\(1) & ((!\inst|configurator|dataIndex\(3)) # ((\inst|configurator|dataIndex\(0) & \inst|configurator|counter\(0))))) ) ) ) # ( \inst|configurator|dataIndex\(1) & ( !\inst|configurator|dataIndex\(2) & ( 
-- (!\inst|configurator|dataIndex\(0) & (\inst|configurator|dataIndex\(3) & ((!\inst|configurator|counter\(0)) # (\inst|configurator|counter\(1))))) # (\inst|configurator|dataIndex\(0) & (((!\inst|configurator|counter\(0))))) ) ) ) # ( 
-- !\inst|configurator|dataIndex\(1) & ( !\inst|configurator|dataIndex\(2) & ( (!\inst|configurator|dataIndex\(3) & (!\inst|configurator|counter\(0) & (!\inst|configurator|counter\(1) $ (\inst|configurator|dataIndex\(0))))) # 
-- (\inst|configurator|dataIndex\(3) & (!\inst|configurator|counter\(0) $ (((\inst|configurator|counter\(1) & !\inst|configurator|dataIndex\(0)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100011100010000010111110001000010001000100011001010110010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|configurator|ALT_INV_dataIndex\(3),
	datab => \inst|configurator|ALT_INV_counter\(1),
	datac => \inst|configurator|ALT_INV_dataIndex\(0),
	datad => \inst|configurator|ALT_INV_counter\(0),
	datae => \inst|configurator|ALT_INV_dataIndex\(1),
	dataf => \inst|configurator|ALT_INV_dataIndex\(2),
	combout => \inst|configurator|Mux1~0_combout\);

-- Location: MLABCELL_X37_Y19_N21
\inst|configurator|Mux1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Mux1~3_combout\ = ( \inst|configurator|counter\(2) & ( (\inst|configurator|Mux1~1_combout\ & \inst|configurator|Mux1~2_combout\) ) ) # ( !\inst|configurator|counter\(2) & ( (!\inst|configurator|counter\(3) & 
-- (((\inst|configurator|Mux1~1_combout\ & \inst|configurator|Mux1~2_combout\)) # (\inst|configurator|Mux1~0_combout\))) # (\inst|configurator|counter\(3) & (\inst|configurator|Mux1~1_combout\ & (\inst|configurator|Mux1~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110101011000000111010101100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|configurator|ALT_INV_counter\(3),
	datab => \inst|configurator|ALT_INV_Mux1~1_combout\,
	datac => \inst|configurator|ALT_INV_Mux1~2_combout\,
	datad => \inst|configurator|ALT_INV_Mux1~0_combout\,
	dataf => \inst|configurator|ALT_INV_counter\(2),
	combout => \inst|configurator|Mux1~3_combout\);

-- Location: LABCELL_X35_Y19_N0
\inst|configurator|Mux1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Mux1~6_combout\ = ( \inst|configurator|dataIndex\(1) & ( (!\inst|configurator|dataIndex\(0) & (!\inst|configurator|counter\(0) & (!\inst|configurator|dataIndex\(2) & !\inst|configurator|counter\(2)))) # (\inst|configurator|dataIndex\(0) 
-- & (\inst|configurator|counter\(2) & ((\inst|configurator|dataIndex\(2)) # (\inst|configurator|counter\(0))))) ) ) # ( !\inst|configurator|dataIndex\(1) & ( (!\inst|configurator|dataIndex\(0) & (!\inst|configurator|counter\(0) & 
-- (!\inst|configurator|dataIndex\(2) $ (\inst|configurator|counter\(2))))) # (\inst|configurator|dataIndex\(0) & (!\inst|configurator|counter\(0) $ (((\inst|configurator|dataIndex\(2) & \inst|configurator|counter\(2)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101000101001100010100010100110000000000001111000000000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|configurator|ALT_INV_counter\(0),
	datab => \inst|configurator|ALT_INV_dataIndex\(2),
	datac => \inst|configurator|ALT_INV_dataIndex\(0),
	datad => \inst|configurator|ALT_INV_counter\(2),
	dataf => \inst|configurator|ALT_INV_dataIndex\(1),
	combout => \inst|configurator|Mux1~6_combout\);

-- Location: LABCELL_X35_Y19_N45
\inst|configurator|Mux1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Mux1~4_combout\ = ( \inst|configurator|counter\(2) & ( \inst|configurator|dataIndex\(1) & ( (\inst|configurator|counter\(0) & ((!\inst|configurator|dataIndex\(2)) # (!\inst|configurator|dataIndex\(0)))) ) ) ) # ( 
-- !\inst|configurator|counter\(2) & ( \inst|configurator|dataIndex\(1) & ( (\inst|configurator|dataIndex\(3) & (!\inst|configurator|counter\(0) & (!\inst|configurator|dataIndex\(2) & !\inst|configurator|dataIndex\(0)))) ) ) ) # ( 
-- \inst|configurator|counter\(2) & ( !\inst|configurator|dataIndex\(1) & ( (\inst|configurator|counter\(0) & (!\inst|configurator|dataIndex\(2) $ (!\inst|configurator|dataIndex\(0)))) ) ) ) # ( !\inst|configurator|counter\(2) & ( 
-- !\inst|configurator|dataIndex\(1) & ( (\inst|configurator|dataIndex\(3) & (!\inst|configurator|counter\(0) & (\inst|configurator|dataIndex\(2) & \inst|configurator|dataIndex\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000110011000001000000000000000011001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|configurator|ALT_INV_dataIndex\(3),
	datab => \inst|configurator|ALT_INV_counter\(0),
	datac => \inst|configurator|ALT_INV_dataIndex\(2),
	datad => \inst|configurator|ALT_INV_dataIndex\(0),
	datae => \inst|configurator|ALT_INV_counter\(2),
	dataf => \inst|configurator|ALT_INV_dataIndex\(1),
	combout => \inst|configurator|Mux1~4_combout\);

-- Location: LABCELL_X35_Y19_N3
\inst|configurator|Mux1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Mux1~7_combout\ = ( \inst|configurator|dataIndex\(0) & ( (!\inst|configurator|counter\(0) & (!\inst|configurator|counter\(2) & (!\inst|configurator|dataIndex\(2) $ (!\inst|configurator|dataIndex\(1))))) ) ) # ( 
-- !\inst|configurator|dataIndex\(0) & ( (!\inst|configurator|counter\(2) & (((\inst|configurator|dataIndex\(2) & \inst|configurator|dataIndex\(1))) # (\inst|configurator|counter\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011100000000010101110000000000101000000000000010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|configurator|ALT_INV_counter\(0),
	datab => \inst|configurator|ALT_INV_dataIndex\(2),
	datac => \inst|configurator|ALT_INV_dataIndex\(1),
	datad => \inst|configurator|ALT_INV_counter\(2),
	dataf => \inst|configurator|ALT_INV_dataIndex\(0),
	combout => \inst|configurator|Mux1~7_combout\);

-- Location: LABCELL_X35_Y19_N39
\inst|configurator|Mux1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Mux1~5_combout\ = ( \inst|configurator|counter\(2) & ( \inst|configurator|dataIndex\(1) & ( (!\inst|configurator|counter\(0) & (\inst|configurator|dataIndex\(2) & !\inst|configurator|dataIndex\(0))) ) ) ) # ( 
-- !\inst|configurator|counter\(2) & ( \inst|configurator|dataIndex\(1) & ( (!\inst|configurator|counter\(0) & (\inst|configurator|dataIndex\(2) & \inst|configurator|dataIndex\(0))) # (\inst|configurator|counter\(0) & (!\inst|configurator|dataIndex\(2) $ 
-- (!\inst|configurator|dataIndex\(0)))) ) ) ) # ( \inst|configurator|counter\(2) & ( !\inst|configurator|dataIndex\(1) & ( (!\inst|configurator|dataIndex\(2) & (((!\inst|configurator|counter\(0))))) # (\inst|configurator|dataIndex\(2) & 
-- (\inst|configurator|dataIndex\(0) & ((!\inst|configurator|dataIndex\(3)) # (!\inst|configurator|counter\(0))))) ) ) ) # ( !\inst|configurator|counter\(2) & ( !\inst|configurator|dataIndex\(1) & ( (!\inst|configurator|counter\(0) & 
-- ((\inst|configurator|dataIndex\(0)))) # (\inst|configurator|counter\(0) & (\inst|configurator|dataIndex\(2) & !\inst|configurator|dataIndex\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001100110000001100111000000011001111000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|configurator|ALT_INV_dataIndex\(3),
	datab => \inst|configurator|ALT_INV_counter\(0),
	datac => \inst|configurator|ALT_INV_dataIndex\(2),
	datad => \inst|configurator|ALT_INV_dataIndex\(0),
	datae => \inst|configurator|ALT_INV_counter\(2),
	dataf => \inst|configurator|ALT_INV_dataIndex\(1),
	combout => \inst|configurator|Mux1~5_combout\);

-- Location: LABCELL_X35_Y19_N27
\inst|configurator|Mux1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Mux1~8_combout\ = ( \inst|configurator|Mux1~7_combout\ & ( \inst|configurator|Mux1~5_combout\ & ( ((!\inst|configurator|counter\(1) & ((\inst|configurator|Mux1~4_combout\))) # (\inst|configurator|counter\(1) & 
-- (!\inst|configurator|Mux1~6_combout\))) # (\inst|configurator|counter\(3)) ) ) ) # ( !\inst|configurator|Mux1~7_combout\ & ( \inst|configurator|Mux1~5_combout\ & ( (!\inst|configurator|counter\(1) & (((\inst|configurator|Mux1~4_combout\) # 
-- (\inst|configurator|counter\(3))))) # (\inst|configurator|counter\(1) & (!\inst|configurator|Mux1~6_combout\ & (!\inst|configurator|counter\(3)))) ) ) ) # ( \inst|configurator|Mux1~7_combout\ & ( !\inst|configurator|Mux1~5_combout\ & ( 
-- (!\inst|configurator|counter\(1) & (((!\inst|configurator|counter\(3) & \inst|configurator|Mux1~4_combout\)))) # (\inst|configurator|counter\(1) & ((!\inst|configurator|Mux1~6_combout\) # ((\inst|configurator|counter\(3))))) ) ) ) # ( 
-- !\inst|configurator|Mux1~7_combout\ & ( !\inst|configurator|Mux1~5_combout\ & ( (!\inst|configurator|counter\(3) & ((!\inst|configurator|counter\(1) & ((\inst|configurator|Mux1~4_combout\))) # (\inst|configurator|counter\(1) & 
-- (!\inst|configurator|Mux1~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011100000001000111110001100101100111011000010111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|configurator|ALT_INV_Mux1~6_combout\,
	datab => \inst|configurator|ALT_INV_counter\(1),
	datac => \inst|configurator|ALT_INV_counter\(3),
	datad => \inst|configurator|ALT_INV_Mux1~4_combout\,
	datae => \inst|configurator|ALT_INV_Mux1~7_combout\,
	dataf => \inst|configurator|ALT_INV_Mux1~5_combout\,
	combout => \inst|configurator|Mux1~8_combout\);

-- Location: LABCELL_X36_Y19_N33
\inst|configurator|Mux1~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Mux1~15_combout\ = (!\inst|configurator|counter\(0) & (!\inst|configurator|counter\(3) & (!\inst|configurator|counter\(2) & !\inst|configurator|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|configurator|ALT_INV_counter\(0),
	datab => \inst|configurator|ALT_INV_counter\(3),
	datac => \inst|configurator|ALT_INV_counter\(2),
	datad => \inst|configurator|ALT_INV_counter\(1),
	combout => \inst|configurator|Mux1~15_combout\);

-- Location: MLABCELL_X37_Y19_N6
\inst|configurator|Mux1~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|Mux1~16_combout\ = ( \inst|configurator|counter\(4) & ( \inst|configurator|Mux1~15_combout\ & ( (!\inst|configurator|Mux1~14_combout\) # (\inst|configurator|counter\(5)) ) ) ) # ( !\inst|configurator|counter\(4) & ( 
-- \inst|configurator|Mux1~15_combout\ & ( (!\inst|configurator|counter\(5) & (\inst|configurator|Mux1~3_combout\)) # (\inst|configurator|counter\(5) & ((\inst|configurator|Mux1~8_combout\))) ) ) ) # ( \inst|configurator|counter\(4) & ( 
-- !\inst|configurator|Mux1~15_combout\ & ( (!\inst|configurator|counter\(5) & !\inst|configurator|Mux1~14_combout\) ) ) ) # ( !\inst|configurator|counter\(4) & ( !\inst|configurator|Mux1~15_combout\ & ( (!\inst|configurator|counter\(5) & 
-- (\inst|configurator|Mux1~3_combout\)) # (\inst|configurator|counter\(5) & ((\inst|configurator|Mux1~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111100010001000100000001010010111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|configurator|ALT_INV_counter\(5),
	datab => \inst|configurator|ALT_INV_Mux1~14_combout\,
	datac => \inst|configurator|ALT_INV_Mux1~3_combout\,
	datad => \inst|configurator|ALT_INV_Mux1~8_combout\,
	datae => \inst|configurator|ALT_INV_counter\(4),
	dataf => \inst|configurator|ALT_INV_Mux1~15_combout\,
	combout => \inst|configurator|Mux1~16_combout\);

-- Location: LABCELL_X35_Y19_N48
\inst|configurator|sdio_do~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|sdio_do~0_combout\ = ( !\inst|configurator|Equal0~0_combout\ & ( ((!\inst|configurator|wrre_latched~q\ & (\inst|configurator|Mux1~16_combout\))) ) ) # ( \inst|configurator|Equal0~0_combout\ & ( (!\inst|configurator|dataIndex\(0) & 
-- ((!\inst|configurator|dataIndex\(1) & ((!\inst|configurator|dataIndex\(2) & (\inst|configurator|wrre_latched~q\)) # (\inst|configurator|dataIndex\(2) & ((\inst|configurator|sdio_do~4_combout\))))) # (\inst|configurator|dataIndex\(1) & 
-- (((\inst|configurator|sdio_do~4_combout\)))))) # (\inst|configurator|dataIndex\(0) & (((\inst|configurator|sdio_do~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100001001110000111100001100000011000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|configurator|ALT_INV_dataIndex\(0),
	datab => \inst|configurator|ALT_INV_wrre_latched~q\,
	datac => \inst|configurator|ALT_INV_sdio_do~4_combout\,
	datad => \inst|configurator|ALT_INV_dataIndex\(1),
	datae => \inst|configurator|ALT_INV_Equal0~0_combout\,
	dataf => \inst|configurator|ALT_INV_dataIndex\(2),
	datag => \inst|configurator|ALT_INV_Mux1~16_combout\,
	combout => \inst|configurator|sdio_do~0_combout\);

-- Location: LABCELL_X35_Y19_N9
\inst|configurator|sdio_oe~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|sdio_oe~1_combout\ = (!\inst|configurator|Equal0~0_combout\ & ((!\inst|configurator|wrre_latched~q\))) # (\inst|configurator|Equal0~0_combout\ & (\inst|configurator|nextState.SEND~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010111000101110001011100010111000101110001011100010111000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|configurator|ALT_INV_nextState.SEND~q\,
	datab => \inst|configurator|ALT_INV_wrre_latched~q\,
	datac => \inst|configurator|ALT_INV_Equal0~0_combout\,
	combout => \inst|configurator|sdio_oe~1_combout\);

-- Location: LABCELL_X35_Y20_N12
\inst|configurator|SCLK~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|SCLK~0_combout\ = (\inst|configurator|state.SEND~q\ & \inst|configurator|sclk_reg~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|configurator|ALT_INV_state.SEND~q\,
	datac => \inst|configurator|ALT_INV_sclk_reg~q\,
	combout => \inst|configurator|SCLK~0_combout\);

-- Location: LABCELL_X36_Y20_N51
\inst|configurator|SDENB~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|SDENB~0_combout\ = ( \inst|configurator|state.SEND~q\ & ( !\Reset~input_o\ ) ) # ( !\inst|configurator|state.SEND~q\ & ( (!\inst|configurator|state.DISCARD~q\) # (!\Reset~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110101111101011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|configurator|ALT_INV_state.DISCARD~q\,
	datac => \ALT_INV_Reset~input_o\,
	dataf => \inst|configurator|ALT_INV_state.SEND~q\,
	combout => \inst|configurator|SDENB~0_combout\);

-- Location: FF_X37_Y20_N25
\inst|WrReEn~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \inst|WrReEn~0_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|WrReEn~DUPLICATE_q\);

-- Location: LABCELL_X36_Y20_N33
\inst|configurator|CLKRECEIVED~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|CLKRECEIVED~0_combout\ = ( \Reset~input_o\ & ( \inst|configurator|internalClock~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|configurator|ALT_INV_internalClock~q\,
	datae => \ALT_INV_Reset~input_o\,
	combout => \inst|configurator|CLKRECEIVED~0_combout\);

-- Location: LABCELL_X35_Y20_N33
\inst|configurator|stateRegOut[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|stateRegOut[2]~3_combout\ = ( \Reset~input_o\ & ( (\inst|configurator|state.DONE~q\) # (\inst|configurator|state.INTER~q\) ) ) # ( !\Reset~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|configurator|ALT_INV_state.INTER~q\,
	datad => \inst|configurator|ALT_INV_state.DONE~q\,
	dataf => \ALT_INV_Reset~input_o\,
	combout => \inst|configurator|stateRegOut[2]~3_combout\);

-- Location: LABCELL_X35_Y20_N15
\inst|configurator|stateRegOut[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|stateRegOut[1]~4_combout\ = ( \Reset~input_o\ & ( \inst|configurator|state.SEND~q\ ) ) # ( !\Reset~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|configurator|ALT_INV_state.SEND~q\,
	dataf => \ALT_INV_Reset~input_o\,
	combout => \inst|configurator|stateRegOut[1]~4_combout\);

-- Location: LABCELL_X35_Y20_N3
\inst|configurator|stateRegOut[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|configurator|stateRegOut[0]~5_combout\ = ( \inst|configurator|state.INTER~q\ ) # ( !\inst|configurator|state.INTER~q\ & ( (!\Reset~input_o\) # (\inst|configurator|state.DISCARD~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Reset~input_o\,
	datad => \inst|configurator|ALT_INV_state.DISCARD~q\,
	dataf => \inst|configurator|ALT_INV_state.INTER~q\,
	combout => \inst|configurator|stateRegOut[0]~5_combout\);

-- Location: IOIBUF_X46_Y61_N1
\Parallel_Data_CLK_IN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Parallel_Data_CLK_IN,
	ibar => \ww_Parallel_Data_CLK_IN(n)\,
	o => \Parallel_Data_CLK_IN~input_o\);

-- Location: CLKCTRL_G12
\Parallel_Data_CLK_IN~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \Parallel_Data_CLK_IN~input_o\,
	outclk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\);

-- Location: LABCELL_X46_Y60_N0
\inst|synthesizer|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Add0~1_sumout\ = SUM(( \inst|synthesizer|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \inst|synthesizer|Add0~2\ = CARRY(( \inst|synthesizer|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|synthesizer|ALT_INV_counter\(0),
	cin => GND,
	sumout => \inst|synthesizer|Add0~1_sumout\,
	cout => \inst|synthesizer|Add0~2\);

-- Location: FF_X46_Y59_N16
\inst|synthesizer|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	asdata => \inst|synthesizer|Add0~9_sumout\,
	sclr => \inst|synthesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|counter\(29));

-- Location: LABCELL_X46_Y60_N3
\inst|synthesizer|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Add0~117_sumout\ = SUM(( \inst|synthesizer|counter\(1) ) + ( GND ) + ( \inst|synthesizer|Add0~2\ ))
-- \inst|synthesizer|Add0~118\ = CARRY(( \inst|synthesizer|counter\(1) ) + ( GND ) + ( \inst|synthesizer|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|synthesizer|ALT_INV_counter\(1),
	cin => \inst|synthesizer|Add0~2\,
	sumout => \inst|synthesizer|Add0~117_sumout\,
	cout => \inst|synthesizer|Add0~118\);

-- Location: LABCELL_X46_Y60_N6
\inst|synthesizer|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Add0~121_sumout\ = SUM(( \inst|synthesizer|counter\(2) ) + ( GND ) + ( \inst|synthesizer|Add0~118\ ))
-- \inst|synthesizer|Add0~122\ = CARRY(( \inst|synthesizer|counter\(2) ) + ( GND ) + ( \inst|synthesizer|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|synthesizer|ALT_INV_counter\(2),
	cin => \inst|synthesizer|Add0~118\,
	sumout => \inst|synthesizer|Add0~121_sumout\,
	cout => \inst|synthesizer|Add0~122\);

-- Location: FF_X46_Y60_N7
\inst|synthesizer|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst|synthesizer|Add0~121_sumout\,
	sclr => \inst|synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|counter\(2));

-- Location: LABCELL_X46_Y60_N9
\inst|synthesizer|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Add0~125_sumout\ = SUM(( \inst|synthesizer|counter\(3) ) + ( GND ) + ( \inst|synthesizer|Add0~122\ ))
-- \inst|synthesizer|Add0~126\ = CARRY(( \inst|synthesizer|counter\(3) ) + ( GND ) + ( \inst|synthesizer|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|synthesizer|ALT_INV_counter\(3),
	cin => \inst|synthesizer|Add0~122\,
	sumout => \inst|synthesizer|Add0~125_sumout\,
	cout => \inst|synthesizer|Add0~126\);

-- Location: FF_X46_Y60_N11
\inst|synthesizer|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst|synthesizer|Add0~125_sumout\,
	sclr => \inst|synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|counter\(3));

-- Location: LABCELL_X46_Y60_N12
\inst|synthesizer|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Add0~101_sumout\ = SUM(( \inst|synthesizer|counter\(4) ) + ( GND ) + ( \inst|synthesizer|Add0~126\ ))
-- \inst|synthesizer|Add0~102\ = CARRY(( \inst|synthesizer|counter\(4) ) + ( GND ) + ( \inst|synthesizer|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|synthesizer|ALT_INV_counter\(4),
	cin => \inst|synthesizer|Add0~126\,
	sumout => \inst|synthesizer|Add0~101_sumout\,
	cout => \inst|synthesizer|Add0~102\);

-- Location: FF_X46_Y60_N14
\inst|synthesizer|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst|synthesizer|Add0~101_sumout\,
	sclr => \inst|synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|counter\(4));

-- Location: LABCELL_X46_Y60_N15
\inst|synthesizer|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Add0~105_sumout\ = SUM(( \inst|synthesizer|counter\(5) ) + ( GND ) + ( \inst|synthesizer|Add0~102\ ))
-- \inst|synthesizer|Add0~106\ = CARRY(( \inst|synthesizer|counter\(5) ) + ( GND ) + ( \inst|synthesizer|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|synthesizer|ALT_INV_counter\(5),
	cin => \inst|synthesizer|Add0~102\,
	sumout => \inst|synthesizer|Add0~105_sumout\,
	cout => \inst|synthesizer|Add0~106\);

-- Location: FF_X46_Y60_N17
\inst|synthesizer|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst|synthesizer|Add0~105_sumout\,
	sclr => \inst|synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|counter\(5));

-- Location: LABCELL_X46_Y60_N18
\inst|synthesizer|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Add0~109_sumout\ = SUM(( \inst|synthesizer|counter\(6) ) + ( GND ) + ( \inst|synthesizer|Add0~106\ ))
-- \inst|synthesizer|Add0~110\ = CARRY(( \inst|synthesizer|counter\(6) ) + ( GND ) + ( \inst|synthesizer|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|synthesizer|ALT_INV_counter\(6),
	cin => \inst|synthesizer|Add0~106\,
	sumout => \inst|synthesizer|Add0~109_sumout\,
	cout => \inst|synthesizer|Add0~110\);

-- Location: FF_X46_Y60_N20
\inst|synthesizer|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst|synthesizer|Add0~109_sumout\,
	sclr => \inst|synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|counter\(6));

-- Location: LABCELL_X46_Y60_N21
\inst|synthesizer|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Add0~113_sumout\ = SUM(( \inst|synthesizer|counter\(7) ) + ( GND ) + ( \inst|synthesizer|Add0~110\ ))
-- \inst|synthesizer|Add0~114\ = CARRY(( \inst|synthesizer|counter\(7) ) + ( GND ) + ( \inst|synthesizer|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|synthesizer|ALT_INV_counter\(7),
	cin => \inst|synthesizer|Add0~110\,
	sumout => \inst|synthesizer|Add0~113_sumout\,
	cout => \inst|synthesizer|Add0~114\);

-- Location: FF_X46_Y60_N23
\inst|synthesizer|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst|synthesizer|Add0~113_sumout\,
	sclr => \inst|synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|counter\(7));

-- Location: LABCELL_X46_Y60_N24
\inst|synthesizer|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Add0~81_sumout\ = SUM(( \inst|synthesizer|counter\(8) ) + ( GND ) + ( \inst|synthesizer|Add0~114\ ))
-- \inst|synthesizer|Add0~82\ = CARRY(( \inst|synthesizer|counter\(8) ) + ( GND ) + ( \inst|synthesizer|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|synthesizer|ALT_INV_counter\(8),
	cin => \inst|synthesizer|Add0~114\,
	sumout => \inst|synthesizer|Add0~81_sumout\,
	cout => \inst|synthesizer|Add0~82\);

-- Location: FF_X46_Y60_N26
\inst|synthesizer|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst|synthesizer|Add0~81_sumout\,
	sclr => \inst|synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|counter\(8));

-- Location: LABCELL_X46_Y60_N27
\inst|synthesizer|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Add0~85_sumout\ = SUM(( \inst|synthesizer|counter\(9) ) + ( GND ) + ( \inst|synthesizer|Add0~82\ ))
-- \inst|synthesizer|Add0~86\ = CARRY(( \inst|synthesizer|counter\(9) ) + ( GND ) + ( \inst|synthesizer|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|synthesizer|ALT_INV_counter\(9),
	cin => \inst|synthesizer|Add0~82\,
	sumout => \inst|synthesizer|Add0~85_sumout\,
	cout => \inst|synthesizer|Add0~86\);

-- Location: FF_X46_Y60_N29
\inst|synthesizer|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst|synthesizer|Add0~85_sumout\,
	sclr => \inst|synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|counter\(9));

-- Location: LABCELL_X46_Y60_N30
\inst|synthesizer|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Add0~41_sumout\ = SUM(( \inst|synthesizer|counter\(10) ) + ( GND ) + ( \inst|synthesizer|Add0~86\ ))
-- \inst|synthesizer|Add0~42\ = CARRY(( \inst|synthesizer|counter\(10) ) + ( GND ) + ( \inst|synthesizer|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|synthesizer|ALT_INV_counter\(10),
	cin => \inst|synthesizer|Add0~86\,
	sumout => \inst|synthesizer|Add0~41_sumout\,
	cout => \inst|synthesizer|Add0~42\);

-- Location: FF_X46_Y60_N32
\inst|synthesizer|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst|synthesizer|Add0~41_sumout\,
	sclr => \inst|synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|counter\(10));

-- Location: LABCELL_X46_Y60_N33
\inst|synthesizer|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Add0~45_sumout\ = SUM(( \inst|synthesizer|counter\(11) ) + ( GND ) + ( \inst|synthesizer|Add0~42\ ))
-- \inst|synthesizer|Add0~46\ = CARRY(( \inst|synthesizer|counter\(11) ) + ( GND ) + ( \inst|synthesizer|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|synthesizer|ALT_INV_counter\(11),
	cin => \inst|synthesizer|Add0~42\,
	sumout => \inst|synthesizer|Add0~45_sumout\,
	cout => \inst|synthesizer|Add0~46\);

-- Location: FF_X46_Y60_N35
\inst|synthesizer|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst|synthesizer|Add0~45_sumout\,
	sclr => \inst|synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|counter\(11));

-- Location: LABCELL_X46_Y60_N36
\inst|synthesizer|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Add0~49_sumout\ = SUM(( \inst|synthesizer|counter\(12) ) + ( GND ) + ( \inst|synthesizer|Add0~46\ ))
-- \inst|synthesizer|Add0~50\ = CARRY(( \inst|synthesizer|counter\(12) ) + ( GND ) + ( \inst|synthesizer|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|synthesizer|ALT_INV_counter\(12),
	cin => \inst|synthesizer|Add0~46\,
	sumout => \inst|synthesizer|Add0~49_sumout\,
	cout => \inst|synthesizer|Add0~50\);

-- Location: FF_X46_Y60_N38
\inst|synthesizer|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst|synthesizer|Add0~49_sumout\,
	sclr => \inst|synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|counter\(12));

-- Location: LABCELL_X46_Y60_N39
\inst|synthesizer|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Add0~53_sumout\ = SUM(( \inst|synthesizer|counter\(13) ) + ( GND ) + ( \inst|synthesizer|Add0~50\ ))
-- \inst|synthesizer|Add0~54\ = CARRY(( \inst|synthesizer|counter\(13) ) + ( GND ) + ( \inst|synthesizer|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|synthesizer|ALT_INV_counter\(13),
	cin => \inst|synthesizer|Add0~50\,
	sumout => \inst|synthesizer|Add0~53_sumout\,
	cout => \inst|synthesizer|Add0~54\);

-- Location: FF_X46_Y60_N41
\inst|synthesizer|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst|synthesizer|Add0~53_sumout\,
	sclr => \inst|synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|counter\(13));

-- Location: LABCELL_X46_Y60_N42
\inst|synthesizer|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Add0~57_sumout\ = SUM(( \inst|synthesizer|counter\(14) ) + ( GND ) + ( \inst|synthesizer|Add0~54\ ))
-- \inst|synthesizer|Add0~58\ = CARRY(( \inst|synthesizer|counter\(14) ) + ( GND ) + ( \inst|synthesizer|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|synthesizer|ALT_INV_counter\(14),
	cin => \inst|synthesizer|Add0~54\,
	sumout => \inst|synthesizer|Add0~57_sumout\,
	cout => \inst|synthesizer|Add0~58\);

-- Location: FF_X46_Y60_N43
\inst|synthesizer|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst|synthesizer|Add0~57_sumout\,
	sclr => \inst|synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|counter\(14));

-- Location: LABCELL_X46_Y60_N45
\inst|synthesizer|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Add0~89_sumout\ = SUM(( \inst|synthesizer|counter\(15) ) + ( GND ) + ( \inst|synthesizer|Add0~58\ ))
-- \inst|synthesizer|Add0~90\ = CARRY(( \inst|synthesizer|counter\(15) ) + ( GND ) + ( \inst|synthesizer|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|synthesizer|ALT_INV_counter\(15),
	cin => \inst|synthesizer|Add0~58\,
	sumout => \inst|synthesizer|Add0~89_sumout\,
	cout => \inst|synthesizer|Add0~90\);

-- Location: FF_X46_Y60_N47
\inst|synthesizer|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst|synthesizer|Add0~89_sumout\,
	sclr => \inst|synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|counter\(15));

-- Location: LABCELL_X46_Y60_N48
\inst|synthesizer|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Add0~93_sumout\ = SUM(( \inst|synthesizer|counter\(16) ) + ( GND ) + ( \inst|synthesizer|Add0~90\ ))
-- \inst|synthesizer|Add0~94\ = CARRY(( \inst|synthesizer|counter\(16) ) + ( GND ) + ( \inst|synthesizer|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|synthesizer|ALT_INV_counter\(16),
	cin => \inst|synthesizer|Add0~90\,
	sumout => \inst|synthesizer|Add0~93_sumout\,
	cout => \inst|synthesizer|Add0~94\);

-- Location: FF_X46_Y60_N50
\inst|synthesizer|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst|synthesizer|Add0~93_sumout\,
	sclr => \inst|synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|counter\(16));

-- Location: LABCELL_X46_Y60_N51
\inst|synthesizer|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Add0~97_sumout\ = SUM(( \inst|synthesizer|counter\(17) ) + ( GND ) + ( \inst|synthesizer|Add0~94\ ))
-- \inst|synthesizer|Add0~98\ = CARRY(( \inst|synthesizer|counter\(17) ) + ( GND ) + ( \inst|synthesizer|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|synthesizer|ALT_INV_counter\(17),
	cin => \inst|synthesizer|Add0~94\,
	sumout => \inst|synthesizer|Add0~97_sumout\,
	cout => \inst|synthesizer|Add0~98\);

-- Location: FF_X46_Y60_N52
\inst|synthesizer|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst|synthesizer|Add0~97_sumout\,
	sclr => \inst|synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|counter\(17));

-- Location: LABCELL_X46_Y60_N54
\inst|synthesizer|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Add0~61_sumout\ = SUM(( \inst|synthesizer|counter\(18) ) + ( GND ) + ( \inst|synthesizer|Add0~98\ ))
-- \inst|synthesizer|Add0~62\ = CARRY(( \inst|synthesizer|counter\(18) ) + ( GND ) + ( \inst|synthesizer|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|synthesizer|ALT_INV_counter\(18),
	cin => \inst|synthesizer|Add0~98\,
	sumout => \inst|synthesizer|Add0~61_sumout\,
	cout => \inst|synthesizer|Add0~62\);

-- Location: FF_X46_Y60_N56
\inst|synthesizer|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst|synthesizer|Add0~61_sumout\,
	sclr => \inst|synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|counter\(18));

-- Location: LABCELL_X46_Y60_N57
\inst|synthesizer|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Add0~21_sumout\ = SUM(( \inst|synthesizer|counter\(19) ) + ( GND ) + ( \inst|synthesizer|Add0~62\ ))
-- \inst|synthesizer|Add0~22\ = CARRY(( \inst|synthesizer|counter\(19) ) + ( GND ) + ( \inst|synthesizer|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|synthesizer|ALT_INV_counter\(19),
	cin => \inst|synthesizer|Add0~62\,
	sumout => \inst|synthesizer|Add0~21_sumout\,
	cout => \inst|synthesizer|Add0~22\);

-- Location: FF_X46_Y60_N59
\inst|synthesizer|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst|synthesizer|Add0~21_sumout\,
	sclr => \inst|synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|counter\(19));

-- Location: LABCELL_X46_Y59_N0
\inst|synthesizer|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Add0~65_sumout\ = SUM(( \inst|synthesizer|counter\(20) ) + ( GND ) + ( \inst|synthesizer|Add0~22\ ))
-- \inst|synthesizer|Add0~66\ = CARRY(( \inst|synthesizer|counter\(20) ) + ( GND ) + ( \inst|synthesizer|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|synthesizer|ALT_INV_counter\(20),
	cin => \inst|synthesizer|Add0~22\,
	sumout => \inst|synthesizer|Add0~65_sumout\,
	cout => \inst|synthesizer|Add0~66\);

-- Location: FF_X46_Y59_N50
\inst|synthesizer|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	asdata => \inst|synthesizer|Add0~65_sumout\,
	sclr => \inst|synthesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|counter\(20));

-- Location: LABCELL_X46_Y59_N3
\inst|synthesizer|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Add0~25_sumout\ = SUM(( \inst|synthesizer|counter\(21) ) + ( GND ) + ( \inst|synthesizer|Add0~66\ ))
-- \inst|synthesizer|Add0~26\ = CARRY(( \inst|synthesizer|counter\(21) ) + ( GND ) + ( \inst|synthesizer|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|synthesizer|ALT_INV_counter\(21),
	cin => \inst|synthesizer|Add0~66\,
	sumout => \inst|synthesizer|Add0~25_sumout\,
	cout => \inst|synthesizer|Add0~26\);

-- Location: FF_X46_Y59_N38
\inst|synthesizer|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	asdata => \inst|synthesizer|Add0~25_sumout\,
	sclr => \inst|synthesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|counter\(21));

-- Location: LABCELL_X46_Y59_N6
\inst|synthesizer|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Add0~29_sumout\ = SUM(( \inst|synthesizer|counter\(22) ) + ( GND ) + ( \inst|synthesizer|Add0~26\ ))
-- \inst|synthesizer|Add0~30\ = CARRY(( \inst|synthesizer|counter\(22) ) + ( GND ) + ( \inst|synthesizer|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|synthesizer|ALT_INV_counter\(22),
	cin => \inst|synthesizer|Add0~26\,
	sumout => \inst|synthesizer|Add0~29_sumout\,
	cout => \inst|synthesizer|Add0~30\);

-- Location: FF_X46_Y59_N44
\inst|synthesizer|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	asdata => \inst|synthesizer|Add0~29_sumout\,
	sclr => \inst|synthesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|counter\(22));

-- Location: LABCELL_X46_Y59_N9
\inst|synthesizer|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Add0~33_sumout\ = SUM(( \inst|synthesizer|counter\(23) ) + ( GND ) + ( \inst|synthesizer|Add0~30\ ))
-- \inst|synthesizer|Add0~34\ = CARRY(( \inst|synthesizer|counter\(23) ) + ( GND ) + ( \inst|synthesizer|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|synthesizer|ALT_INV_counter\(23),
	cin => \inst|synthesizer|Add0~30\,
	sumout => \inst|synthesizer|Add0~33_sumout\,
	cout => \inst|synthesizer|Add0~34\);

-- Location: FF_X46_Y59_N59
\inst|synthesizer|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	asdata => \inst|synthesizer|Add0~33_sumout\,
	sclr => \inst|synthesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|counter\(23));

-- Location: LABCELL_X46_Y59_N12
\inst|synthesizer|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Add0~37_sumout\ = SUM(( \inst|synthesizer|counter\(24) ) + ( GND ) + ( \inst|synthesizer|Add0~34\ ))
-- \inst|synthesizer|Add0~38\ = CARRY(( \inst|synthesizer|counter\(24) ) + ( GND ) + ( \inst|synthesizer|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|synthesizer|ALT_INV_counter\(24),
	cin => \inst|synthesizer|Add0~34\,
	sumout => \inst|synthesizer|Add0~37_sumout\,
	cout => \inst|synthesizer|Add0~38\);

-- Location: FF_X46_Y59_N52
\inst|synthesizer|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	asdata => \inst|synthesizer|Add0~37_sumout\,
	sclr => \inst|synthesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|counter\(24));

-- Location: LABCELL_X46_Y59_N15
\inst|synthesizer|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Add0~69_sumout\ = SUM(( \inst|synthesizer|counter\(25) ) + ( GND ) + ( \inst|synthesizer|Add0~38\ ))
-- \inst|synthesizer|Add0~70\ = CARRY(( \inst|synthesizer|counter\(25) ) + ( GND ) + ( \inst|synthesizer|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|synthesizer|ALT_INV_counter\(25),
	cin => \inst|synthesizer|Add0~38\,
	sumout => \inst|synthesizer|Add0~69_sumout\,
	cout => \inst|synthesizer|Add0~70\);

-- Location: FF_X46_Y59_N41
\inst|synthesizer|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	asdata => \inst|synthesizer|Add0~69_sumout\,
	sclr => \inst|synthesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|counter\(25));

-- Location: LABCELL_X46_Y59_N18
\inst|synthesizer|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Add0~73_sumout\ = SUM(( \inst|synthesizer|counter\(26) ) + ( GND ) + ( \inst|synthesizer|Add0~70\ ))
-- \inst|synthesizer|Add0~74\ = CARRY(( \inst|synthesizer|counter\(26) ) + ( GND ) + ( \inst|synthesizer|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|synthesizer|ALT_INV_counter\(26),
	cin => \inst|synthesizer|Add0~70\,
	sumout => \inst|synthesizer|Add0~73_sumout\,
	cout => \inst|synthesizer|Add0~74\);

-- Location: FF_X46_Y59_N46
\inst|synthesizer|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	asdata => \inst|synthesizer|Add0~73_sumout\,
	sclr => \inst|synthesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|counter\(26));

-- Location: LABCELL_X46_Y59_N21
\inst|synthesizer|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Add0~77_sumout\ = SUM(( \inst|synthesizer|counter\(27) ) + ( GND ) + ( \inst|synthesizer|Add0~74\ ))
-- \inst|synthesizer|Add0~78\ = CARRY(( \inst|synthesizer|counter\(27) ) + ( GND ) + ( \inst|synthesizer|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|synthesizer|ALT_INV_counter\(27),
	cin => \inst|synthesizer|Add0~74\,
	sumout => \inst|synthesizer|Add0~77_sumout\,
	cout => \inst|synthesizer|Add0~78\);

-- Location: FF_X46_Y59_N55
\inst|synthesizer|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	asdata => \inst|synthesizer|Add0~77_sumout\,
	sclr => \inst|synthesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|counter\(27));

-- Location: LABCELL_X46_Y59_N24
\inst|synthesizer|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Add0~5_sumout\ = SUM(( \inst|synthesizer|counter\(28) ) + ( GND ) + ( \inst|synthesizer|Add0~78\ ))
-- \inst|synthesizer|Add0~6\ = CARRY(( \inst|synthesizer|counter\(28) ) + ( GND ) + ( \inst|synthesizer|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|synthesizer|ALT_INV_counter\(28),
	cin => \inst|synthesizer|Add0~78\,
	sumout => \inst|synthesizer|Add0~5_sumout\,
	cout => \inst|synthesizer|Add0~6\);

-- Location: FF_X46_Y59_N23
\inst|synthesizer|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	asdata => \inst|synthesizer|Add0~5_sumout\,
	sclr => \inst|synthesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|counter\(28));

-- Location: LABCELL_X46_Y59_N27
\inst|synthesizer|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Add0~9_sumout\ = SUM(( \inst|synthesizer|counter\(29) ) + ( GND ) + ( \inst|synthesizer|Add0~6\ ))
-- \inst|synthesizer|Add0~10\ = CARRY(( \inst|synthesizer|counter\(29) ) + ( GND ) + ( \inst|synthesizer|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|synthesizer|ALT_INV_counter\(29),
	cin => \inst|synthesizer|Add0~6\,
	sumout => \inst|synthesizer|Add0~9_sumout\,
	cout => \inst|synthesizer|Add0~10\);

-- Location: FF_X46_Y59_N28
\inst|synthesizer|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	asdata => \inst|synthesizer|Add0~13_sumout\,
	sclr => \inst|synthesizer|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|counter\(30));

-- Location: LABCELL_X46_Y59_N30
\inst|synthesizer|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Add0~13_sumout\ = SUM(( \inst|synthesizer|counter\(30) ) + ( GND ) + ( \inst|synthesizer|Add0~10\ ))
-- \inst|synthesizer|Add0~14\ = CARRY(( \inst|synthesizer|counter\(30) ) + ( GND ) + ( \inst|synthesizer|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|synthesizer|ALT_INV_counter\(30),
	cin => \inst|synthesizer|Add0~10\,
	sumout => \inst|synthesizer|Add0~13_sumout\,
	cout => \inst|synthesizer|Add0~14\);

-- Location: FF_X46_Y59_N34
\inst|synthesizer|counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst|synthesizer|Add0~17_sumout\,
	sclr => \inst|synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|counter\(31));

-- Location: LABCELL_X46_Y59_N33
\inst|synthesizer|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Add0~17_sumout\ = SUM(( \inst|synthesizer|counter\(31) ) + ( GND ) + ( \inst|synthesizer|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|synthesizer|ALT_INV_counter\(31),
	cin => \inst|synthesizer|Add0~14\,
	sumout => \inst|synthesizer|Add0~17_sumout\);

-- Location: LABCELL_X46_Y59_N45
\inst|synthesizer|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|LessThan0~0_combout\ = ( !\inst|synthesizer|Add0~57_sumout\ & ( !\inst|synthesizer|Add0~49_sumout\ & ( (!\inst|synthesizer|Add0~53_sumout\ & (!\inst|synthesizer|Add0~45_sumout\ & !\inst|synthesizer|Add0~41_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|synthesizer|ALT_INV_Add0~53_sumout\,
	datac => \inst|synthesizer|ALT_INV_Add0~45_sumout\,
	datad => \inst|synthesizer|ALT_INV_Add0~41_sumout\,
	datae => \inst|synthesizer|ALT_INV_Add0~57_sumout\,
	dataf => \inst|synthesizer|ALT_INV_Add0~49_sumout\,
	combout => \inst|synthesizer|LessThan0~0_combout\);

-- Location: LABCELL_X46_Y59_N54
\inst|synthesizer|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|LessThan0~1_combout\ = ( \inst|synthesizer|LessThan0~0_combout\ & ( !\inst|synthesizer|Add0~37_sumout\ & ( (!\inst|synthesizer|Add0~25_sumout\ & (!\inst|synthesizer|Add0~33_sumout\ & (!\inst|synthesizer|Add0~21_sumout\ & 
-- !\inst|synthesizer|Add0~29_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|synthesizer|ALT_INV_Add0~25_sumout\,
	datab => \inst|synthesizer|ALT_INV_Add0~33_sumout\,
	datac => \inst|synthesizer|ALT_INV_Add0~21_sumout\,
	datad => \inst|synthesizer|ALT_INV_Add0~29_sumout\,
	datae => \inst|synthesizer|ALT_INV_LessThan0~0_combout\,
	dataf => \inst|synthesizer|ALT_INV_Add0~37_sumout\,
	combout => \inst|synthesizer|LessThan0~1_combout\);

-- Location: LABCELL_X45_Y60_N0
\inst|synthesizer|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|LessThan0~4_combout\ = ( !\inst|synthesizer|Add0~85_sumout\ & ( !\inst|synthesizer|Add0~81_sumout\ & ( (!\inst|synthesizer|Add0~105_sumout\ & (!\inst|synthesizer|Add0~101_sumout\ & (!\inst|synthesizer|Add0~113_sumout\ & 
-- !\inst|synthesizer|Add0~109_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|synthesizer|ALT_INV_Add0~105_sumout\,
	datab => \inst|synthesizer|ALT_INV_Add0~101_sumout\,
	datac => \inst|synthesizer|ALT_INV_Add0~113_sumout\,
	datad => \inst|synthesizer|ALT_INV_Add0~109_sumout\,
	datae => \inst|synthesizer|ALT_INV_Add0~85_sumout\,
	dataf => \inst|synthesizer|ALT_INV_Add0~81_sumout\,
	combout => \inst|synthesizer|LessThan0~4_combout\);

-- Location: LABCELL_X45_Y60_N48
\inst|synthesizer|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|LessThan0~5_combout\ = ( !\inst|synthesizer|Add0~61_sumout\ & ( !\inst|synthesizer|Add0~97_sumout\ & ( (!\inst|synthesizer|Add0~89_sumout\ & !\inst|synthesizer|Add0~93_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|synthesizer|ALT_INV_Add0~89_sumout\,
	datad => \inst|synthesizer|ALT_INV_Add0~93_sumout\,
	datae => \inst|synthesizer|ALT_INV_Add0~61_sumout\,
	dataf => \inst|synthesizer|ALT_INV_Add0~97_sumout\,
	combout => \inst|synthesizer|LessThan0~5_combout\);

-- Location: LABCELL_X46_Y59_N51
\inst|synthesizer|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|LessThan0~2_combout\ = ( !\inst|synthesizer|Add0~77_sumout\ & ( \inst|synthesizer|LessThan0~5_combout\ & ( (\inst|synthesizer|LessThan0~4_combout\ & (!\inst|synthesizer|Add0~65_sumout\ & (!\inst|synthesizer|Add0~69_sumout\ & 
-- !\inst|synthesizer|Add0~73_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|synthesizer|ALT_INV_LessThan0~4_combout\,
	datab => \inst|synthesizer|ALT_INV_Add0~65_sumout\,
	datac => \inst|synthesizer|ALT_INV_Add0~69_sumout\,
	datad => \inst|synthesizer|ALT_INV_Add0~73_sumout\,
	datae => \inst|synthesizer|ALT_INV_Add0~77_sumout\,
	dataf => \inst|synthesizer|ALT_INV_LessThan0~5_combout\,
	combout => \inst|synthesizer|LessThan0~2_combout\);

-- Location: LABCELL_X46_Y59_N39
\inst|synthesizer|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|LessThan0~3_combout\ = ( \inst|synthesizer|LessThan0~1_combout\ & ( \inst|synthesizer|LessThan0~2_combout\ & ( (!\inst|synthesizer|Add0~17_sumout\ & (((\inst|synthesizer|Add0~13_sumout\) # (\inst|synthesizer|Add0~5_sumout\)) # 
-- (\inst|synthesizer|Add0~9_sumout\))) ) ) ) # ( !\inst|synthesizer|LessThan0~1_combout\ & ( \inst|synthesizer|LessThan0~2_combout\ & ( !\inst|synthesizer|Add0~17_sumout\ ) ) ) # ( \inst|synthesizer|LessThan0~1_combout\ & ( 
-- !\inst|synthesizer|LessThan0~2_combout\ & ( !\inst|synthesizer|Add0~17_sumout\ ) ) ) # ( !\inst|synthesizer|LessThan0~1_combout\ & ( !\inst|synthesizer|LessThan0~2_combout\ & ( !\inst|synthesizer|Add0~17_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000000111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|synthesizer|ALT_INV_Add0~9_sumout\,
	datab => \inst|synthesizer|ALT_INV_Add0~5_sumout\,
	datac => \inst|synthesizer|ALT_INV_Add0~13_sumout\,
	datad => \inst|synthesizer|ALT_INV_Add0~17_sumout\,
	datae => \inst|synthesizer|ALT_INV_LessThan0~1_combout\,
	dataf => \inst|synthesizer|ALT_INV_LessThan0~2_combout\,
	combout => \inst|synthesizer|LessThan0~3_combout\);

-- Location: FF_X46_Y60_N2
\inst|synthesizer|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst|synthesizer|Add0~1_sumout\,
	sclr => \inst|synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|counter\(0));

-- Location: FF_X46_Y60_N5
\inst|synthesizer|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst|synthesizer|Add0~117_sumout\,
	sclr => \inst|synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|counter\(1));

-- Location: FF_X46_Y60_N8
\inst|synthesizer|counter[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst|synthesizer|Add0~121_sumout\,
	sclr => \inst|synthesizer|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|counter[2]~DUPLICATE_q\);

-- Location: LABCELL_X45_Y60_N9
\inst|synthesizer|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Mux0~0_combout\ = ( \inst|synthesizer|counter[2]~DUPLICATE_q\ & ( (!\inst|synthesizer|counter\(3) & ((!\inst|synthesizer|counter\(1)) # (!\inst|synthesizer|counter\(0)))) ) ) # ( !\inst|synthesizer|counter[2]~DUPLICATE_q\ & ( 
-- !\inst|synthesizer|counter\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011101110000000001110111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|synthesizer|ALT_INV_counter\(1),
	datab => \inst|synthesizer|ALT_INV_counter\(0),
	datad => \inst|synthesizer|ALT_INV_counter\(3),
	dataf => \inst|synthesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	combout => \inst|synthesizer|Mux0~0_combout\);

-- Location: LABCELL_X51_Y60_N27
\inst|synthesizer|output_p[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|output_p[15]~feeder_combout\ = ( \inst|synthesizer|Mux0~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|synthesizer|ALT_INV_Mux0~0_combout\,
	combout => \inst|synthesizer|output_p[15]~feeder_combout\);

-- Location: FF_X51_Y60_N28
\inst|synthesizer|output_p[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst|synthesizer|output_p[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|output_p\(15));

-- Location: LABCELL_X45_Y60_N42
\inst|synthesizer|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Mux1~0_combout\ = ( \inst|synthesizer|counter\(3) & ( (!\inst|synthesizer|counter\(1) & (!\inst|synthesizer|counter\(0) & !\inst|synthesizer|counter[2]~DUPLICATE_q\)) # (\inst|synthesizer|counter\(1) & 
-- ((\inst|synthesizer|counter[2]~DUPLICATE_q\))) ) ) # ( !\inst|synthesizer|counter\(3) & ( (!\inst|synthesizer|counter\(1) $ (!\inst|synthesizer|counter[2]~DUPLICATE_q\)) # (\inst|synthesizer|counter\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111110101111101000000101010101011111101011111010000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|synthesizer|ALT_INV_counter\(1),
	datac => \inst|synthesizer|ALT_INV_counter\(0),
	datad => \inst|synthesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	datae => \inst|synthesizer|ALT_INV_counter\(3),
	combout => \inst|synthesizer|Mux1~0_combout\);

-- Location: FF_X45_Y60_N46
\inst|synthesizer|output_p[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	asdata => \inst|synthesizer|Mux1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|output_p\(14));

-- Location: LABCELL_X45_Y60_N24
\inst|synthesizer|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Mux2~0_combout\ = ( \inst|synthesizer|counter[2]~DUPLICATE_q\ & ( (!\inst|synthesizer|counter\(0) & ((!\inst|synthesizer|counter\(3)))) # (\inst|synthesizer|counter\(0) & ((\inst|synthesizer|counter\(3)) # 
-- (\inst|synthesizer|counter\(1)))) ) ) # ( !\inst|synthesizer|counter[2]~DUPLICATE_q\ & ( !\inst|synthesizer|counter\(3) $ (((\inst|synthesizer|counter\(0) & !\inst|synthesizer|counter\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100110000110011110011000011001111001100111100111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|synthesizer|ALT_INV_counter\(0),
	datac => \inst|synthesizer|ALT_INV_counter\(1),
	datad => \inst|synthesizer|ALT_INV_counter\(3),
	dataf => \inst|synthesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	combout => \inst|synthesizer|Mux2~0_combout\);

-- Location: FF_X45_Y60_N50
\inst|synthesizer|output_p[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	asdata => \inst|synthesizer|Mux2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|output_p\(13));

-- Location: LABCELL_X45_Y60_N27
\inst|synthesizer|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Mux3~0_combout\ = ( \inst|synthesizer|counter[2]~DUPLICATE_q\ & ( (!\inst|synthesizer|counter\(3)) # ((\inst|synthesizer|counter\(1) & \inst|synthesizer|counter\(0))) ) ) # ( !\inst|synthesizer|counter[2]~DUPLICATE_q\ & ( 
-- !\inst|synthesizer|counter\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000100011111111100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|synthesizer|ALT_INV_counter\(1),
	datab => \inst|synthesizer|ALT_INV_counter\(0),
	datad => \inst|synthesizer|ALT_INV_counter\(3),
	dataf => \inst|synthesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	combout => \inst|synthesizer|Mux3~0_combout\);

-- Location: FF_X45_Y60_N28
\inst|synthesizer|output_p[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst|synthesizer|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|output_p\(12));

-- Location: LABCELL_X45_Y60_N54
\inst|synthesizer|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Mux4~0_combout\ = ( \inst|synthesizer|counter\(0) & ( \inst|synthesizer|counter[2]~DUPLICATE_q\ & ( (!\inst|synthesizer|counter\(3)) # (\inst|synthesizer|counter\(1)) ) ) ) # ( !\inst|synthesizer|counter\(0) & ( 
-- \inst|synthesizer|counter[2]~DUPLICATE_q\ & ( \inst|synthesizer|counter\(3) ) ) ) # ( \inst|synthesizer|counter\(0) & ( !\inst|synthesizer|counter[2]~DUPLICATE_q\ & ( !\inst|synthesizer|counter\(3) ) ) ) # ( !\inst|synthesizer|counter\(0) & ( 
-- !\inst|synthesizer|counter[2]~DUPLICATE_q\ & ( \inst|synthesizer|counter\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101001010101010101011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|synthesizer|ALT_INV_counter\(3),
	datac => \inst|synthesizer|ALT_INV_counter\(1),
	datae => \inst|synthesizer|ALT_INV_counter\(0),
	dataf => \inst|synthesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	combout => \inst|synthesizer|Mux4~0_combout\);

-- Location: LABCELL_X61_Y60_N39
\inst|synthesizer|output_p[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|output_p[11]~feeder_combout\ = ( \inst|synthesizer|Mux4~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|synthesizer|ALT_INV_Mux4~0_combout\,
	combout => \inst|synthesizer|output_p[11]~feeder_combout\);

-- Location: FF_X61_Y60_N40
\inst|synthesizer|output_p[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst|synthesizer|output_p[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|output_p\(11));

-- Location: LABCELL_X45_Y60_N15
\inst|synthesizer|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Mux5~0_combout\ = ( \inst|synthesizer|counter\(1) & ( \inst|synthesizer|counter\(0) & ( (!\inst|synthesizer|counter\(3)) # (\inst|synthesizer|counter[2]~DUPLICATE_q\) ) ) ) # ( !\inst|synthesizer|counter\(1) & ( 
-- \inst|synthesizer|counter\(0) & ( \inst|synthesizer|counter\(3) ) ) ) # ( \inst|synthesizer|counter\(1) & ( !\inst|synthesizer|counter\(0) & ( !\inst|synthesizer|counter[2]~DUPLICATE_q\ $ (\inst|synthesizer|counter\(3)) ) ) ) # ( 
-- !\inst|synthesizer|counter\(1) & ( !\inst|synthesizer|counter\(0) & ( !\inst|synthesizer|counter[2]~DUPLICATE_q\ $ (!\inst|synthesizer|counter\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000111100000000111100000000111111111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|synthesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	datad => \inst|synthesizer|ALT_INV_counter\(3),
	datae => \inst|synthesizer|ALT_INV_counter\(1),
	dataf => \inst|synthesizer|ALT_INV_counter\(0),
	combout => \inst|synthesizer|Mux5~0_combout\);

-- Location: FF_X45_Y60_N17
\inst|synthesizer|output_p[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst|synthesizer|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|output_p\(10));

-- Location: FF_X45_Y60_N43
\inst|synthesizer|output_p[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst|synthesizer|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|output_p\(9));

-- Location: LABCELL_X45_Y60_N18
\inst|synthesizer|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Mux6~0_combout\ = ( \inst|synthesizer|counter\(0) & ( (!\inst|synthesizer|counter\(1) & ((\inst|synthesizer|counter\(3)))) # (\inst|synthesizer|counter\(1) & ((!\inst|synthesizer|counter\(3)) # 
-- (\inst|synthesizer|counter[2]~DUPLICATE_q\))) ) ) # ( !\inst|synthesizer|counter\(0) & ( \inst|synthesizer|counter\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101011011010110110101101101011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|synthesizer|ALT_INV_counter\(1),
	datab => \inst|synthesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	datac => \inst|synthesizer|ALT_INV_counter\(3),
	dataf => \inst|synthesizer|ALT_INV_counter\(0),
	combout => \inst|synthesizer|Mux6~0_combout\);

-- Location: FF_X45_Y60_N19
\inst|synthesizer|output_p[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst|synthesizer|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|output_p\(8));

-- Location: LABCELL_X45_Y60_N21
\inst|synthesizer|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Mux7~0_combout\ = ( \inst|synthesizer|counter\(0) & ( (!\inst|synthesizer|counter\(3)) # ((\inst|synthesizer|counter\(1) & \inst|synthesizer|counter[2]~DUPLICATE_q\)) ) ) # ( !\inst|synthesizer|counter\(0) & ( 
-- !\inst|synthesizer|counter\(1) $ (!\inst|synthesizer|counter[2]~DUPLICATE_q\ $ (!\inst|synthesizer|counter\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100101100110100110010110011011111111000100011111111100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|synthesizer|ALT_INV_counter\(1),
	datab => \inst|synthesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	datad => \inst|synthesizer|ALT_INV_counter\(3),
	dataf => \inst|synthesizer|ALT_INV_counter\(0),
	combout => \inst|synthesizer|Mux7~0_combout\);

-- Location: FF_X45_Y60_N22
\inst|synthesizer|output_p[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst|synthesizer|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|output_p\(7));

-- Location: FF_X45_Y60_N25
\inst|synthesizer|output_p[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst|synthesizer|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|output_p\(6));

-- Location: LABCELL_X45_Y60_N6
\inst|synthesizer|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Mux8~0_combout\ = ( \inst|synthesizer|counter[2]~DUPLICATE_q\ & ( (!\inst|synthesizer|counter\(1) & ((\inst|synthesizer|counter\(3)))) # (\inst|synthesizer|counter\(1) & ((!\inst|synthesizer|counter\(3)) # 
-- (\inst|synthesizer|counter\(0)))) ) ) # ( !\inst|synthesizer|counter[2]~DUPLICATE_q\ & ( !\inst|synthesizer|counter\(0) $ (!\inst|synthesizer|counter\(1) $ (!\inst|synthesizer|counter\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100111100110000110011110000001111111100110000111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|synthesizer|ALT_INV_counter\(0),
	datac => \inst|synthesizer|ALT_INV_counter\(1),
	datad => \inst|synthesizer|ALT_INV_counter\(3),
	dataf => \inst|synthesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	combout => \inst|synthesizer|Mux8~0_combout\);

-- Location: LABCELL_X56_Y60_N24
\inst|synthesizer|output_p[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|output_p[5]~feeder_combout\ = ( \inst|synthesizer|Mux8~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|synthesizer|ALT_INV_Mux8~0_combout\,
	combout => \inst|synthesizer|output_p[5]~feeder_combout\);

-- Location: FF_X56_Y60_N25
\inst|synthesizer|output_p[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst|synthesizer|output_p[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|output_p\(5));

-- Location: FF_X45_Y60_N58
\inst|synthesizer|output_p[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	asdata => \inst|synthesizer|Mux8~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|output_p\(4));

-- Location: FF_X45_Y60_N52
\inst|synthesizer|output_p[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	asdata => \inst|synthesizer|Mux8~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|output_p\(3));

-- Location: LABCELL_X45_Y60_N30
\inst|synthesizer|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Mux9~0_combout\ = ( \inst|synthesizer|counter\(0) & ( (!\inst|synthesizer|counter\(1) & ((\inst|synthesizer|counter\(3)))) # (\inst|synthesizer|counter\(1) & ((!\inst|synthesizer|counter\(3)) # 
-- (\inst|synthesizer|counter[2]~DUPLICATE_q\))) ) ) # ( !\inst|synthesizer|counter\(0) & ( (\inst|synthesizer|counter\(3) & (!\inst|synthesizer|counter\(1) $ (!\inst|synthesizer|counter[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001011011010110110101101101011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|synthesizer|ALT_INV_counter\(1),
	datab => \inst|synthesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	datac => \inst|synthesizer|ALT_INV_counter\(3),
	dataf => \inst|synthesizer|ALT_INV_counter\(0),
	combout => \inst|synthesizer|Mux9~0_combout\);

-- Location: FF_X45_Y60_N32
\inst|synthesizer|output_p[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst|synthesizer|Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|output_p\(2));

-- Location: LABCELL_X45_Y60_N33
\inst|synthesizer|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Mux10~0_combout\ = ( \inst|synthesizer|counter\(0) & ( (\inst|synthesizer|counter\(1) & ((!\inst|synthesizer|counter\(3)) # (\inst|synthesizer|counter[2]~DUPLICATE_q\))) ) ) # ( !\inst|synthesizer|counter\(0) & ( 
-- (!\inst|synthesizer|counter\(1) $ (\inst|synthesizer|counter[2]~DUPLICATE_q\)) # (\inst|synthesizer|counter\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100111111111100110011111111101010101000100010101010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|synthesizer|ALT_INV_counter\(1),
	datab => \inst|synthesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	datad => \inst|synthesizer|ALT_INV_counter\(3),
	dataf => \inst|synthesizer|ALT_INV_counter\(0),
	combout => \inst|synthesizer|Mux10~0_combout\);

-- Location: FF_X45_Y60_N34
\inst|synthesizer|output_p[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst|synthesizer|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|output_p\(1));

-- Location: LABCELL_X45_Y60_N36
\inst|synthesizer|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|synthesizer|Mux11~0_combout\ = ( \inst|synthesizer|counter\(3) & ( \inst|synthesizer|counter\(0) & ( (!\inst|synthesizer|counter\(1)) # (\inst|synthesizer|counter[2]~DUPLICATE_q\) ) ) ) # ( !\inst|synthesizer|counter\(3) & ( 
-- \inst|synthesizer|counter\(0) ) ) # ( \inst|synthesizer|counter\(3) & ( !\inst|synthesizer|counter\(0) & ( !\inst|synthesizer|counter\(1) $ (\inst|synthesizer|counter[2]~DUPLICATE_q\) ) ) ) # ( !\inst|synthesizer|counter\(3) & ( 
-- !\inst|synthesizer|counter\(0) & ( !\inst|synthesizer|counter\(1) $ (\inst|synthesizer|counter[2]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100111111111111111111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|synthesizer|ALT_INV_counter\(1),
	datab => \inst|synthesizer|ALT_INV_counter[2]~DUPLICATE_q\,
	datae => \inst|synthesizer|ALT_INV_counter\(3),
	dataf => \inst|synthesizer|ALT_INV_counter\(0),
	combout => \inst|synthesizer|Mux11~0_combout\);

-- Location: FF_X45_Y60_N37
\inst|synthesizer|output_p[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst|synthesizer|Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|synthesizer|output_p\(0));

-- Location: LABCELL_X36_Y30_N3
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


