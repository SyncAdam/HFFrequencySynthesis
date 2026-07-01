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

-- DATE "07/01/2026 12:24:59"

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
	\DATACLK(n)\ : OUT std_logic;
	\Sync(n)\ : OUT std_logic;
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
	Run : IN std_logic;
	Clock : IN std_logic;
	Reset : IN std_logic;
	Wr_Re_Button : IN std_logic;
	SDENB : OUT std_logic;
	SDIO : OUT std_logic;
	Done : OUT std_logic;
	Wr_Re_Status : OUT std_logic;
	SCLK_LED : OUT std_logic;
	SDENB_LED : OUT std_logic;
	SDIO_LED : OUT std_logic;
	DATACLK : OUT std_logic;
	Parallel_Data_CLK_IN : IN std_logic;
	Sync : OUT std_logic;
	Current_State : OUT std_logic_vector(2 DOWNTO 0);
	Parallel_Data_Out : OUT std_logic_vector(15 DOWNTO 0)
	);
END HFFrequencySynthesis;

-- Design Ports Information
-- SCLK	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Wr_Re_Button	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDENB	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDIO	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Done	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Wr_Re_Status	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SCLK_LED	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDENB_LED	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDIO_LED	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATACLK	=>  Location: PIN_A19,	 I/O Standard: LVDS,	 Current Strength: Default
-- Sync	=>  Location: PIN_A17,	 I/O Standard: LVDS,	 Current Strength: Default
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
-- Parallel_Data_CLK_IN	=>  Location: PIN_G15,	 I/O Standard: LVDS,	 Current Strength: Default
-- Clock	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Run	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATACLK(n)	=>  Location: PIN_A18,	 I/O Standard: LVDS,	 Current Strength: Default
-- Sync(n)	=>  Location: PIN_A16,	 I/O Standard: LVDS,	 Current Strength: Default
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
SIGNAL \ww_DATACLK(n)\ : std_logic;
SIGNAL \ww_Sync(n)\ : std_logic;
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
SIGNAL ww_Run : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Wr_Re_Button : std_logic;
SIGNAL ww_SDENB : std_logic;
SIGNAL ww_SDIO : std_logic;
SIGNAL ww_Done : std_logic;
SIGNAL ww_Wr_Re_Status : std_logic;
SIGNAL ww_SCLK_LED : std_logic;
SIGNAL ww_SDENB_LED : std_logic;
SIGNAL ww_SDIO_LED : std_logic;
SIGNAL ww_DATACLK : std_logic;
SIGNAL ww_Parallel_Data_CLK_IN : std_logic;
SIGNAL ww_Sync : std_logic;
SIGNAL ww_Current_State : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Parallel_Data_Out : std_logic_vector(15 DOWNTO 0);
SIGNAL \Wr_Re_Button~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \inst9|clockDividerBuffer[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst9|clockDividerBuffer[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst9|clockDividerBuffer[2]~1_combout\ : std_logic;
SIGNAL \inst9|clockDividerBuffer~2_combout\ : std_logic;
SIGNAL \inst9|clockDividerBuffer~0_combout\ : std_logic;
SIGNAL \inst9|clockDividerBuffer~3_combout\ : std_logic;
SIGNAL \inst9|internalClock~0_combout\ : std_logic;
SIGNAL \inst9|internalClock~q\ : std_logic;
SIGNAL \inst9|sclk_reg~0_combout\ : std_logic;
SIGNAL \inst9|sclk_reg~feeder_combout\ : std_logic;
SIGNAL \inst9|sclk_reg~q\ : std_logic;
SIGNAL \inst9|Add1~29_sumout\ : std_logic;
SIGNAL \inst9|Add1~26\ : std_logic;
SIGNAL \inst9|Add1~21_sumout\ : std_logic;
SIGNAL \inst9|Add1~22\ : std_logic;
SIGNAL \inst9|Add1~13_sumout\ : std_logic;
SIGNAL \inst9|dataIndex[3]~feeder_combout\ : std_logic;
SIGNAL \inst9|Add1~14\ : std_logic;
SIGNAL \inst9|Add1~17_sumout\ : std_logic;
SIGNAL \inst9|Add1~18\ : std_logic;
SIGNAL \inst9|Add1~5_sumout\ : std_logic;
SIGNAL \inst9|dataIndex[5]~feeder_combout\ : std_logic;
SIGNAL \inst9|Add1~6\ : std_logic;
SIGNAL \inst9|Add1~10\ : std_logic;
SIGNAL \inst9|Add1~1_sumout\ : std_logic;
SIGNAL \inst9|LessThan1~0_combout\ : std_logic;
SIGNAL \inst9|Add2~1_sumout\ : std_logic;
SIGNAL \inst9|counter[0]~0_combout\ : std_logic;
SIGNAL \inst9|Add2~2\ : std_logic;
SIGNAL \inst9|Add2~13_sumout\ : std_logic;
SIGNAL \inst9|Add2~14\ : std_logic;
SIGNAL \inst9|Add2~9_sumout\ : std_logic;
SIGNAL \inst9|Add2~10\ : std_logic;
SIGNAL \inst9|Add2~17_sumout\ : std_logic;
SIGNAL \inst9|Add2~18\ : std_logic;
SIGNAL \inst9|Add2~21_sumout\ : std_logic;
SIGNAL \inst9|Add2~22\ : std_logic;
SIGNAL \inst9|Add2~5_sumout\ : std_logic;
SIGNAL \inst9|Add2~6\ : std_logic;
SIGNAL \inst9|Add2~25_sumout\ : std_logic;
SIGNAL \inst9|LessThan2~0_combout\ : std_logic;
SIGNAL \inst9|configOK~0_combout\ : std_logic;
SIGNAL \inst9|configOK~reg0_q\ : std_logic;
SIGNAL \inst9|Add4~1_sumout\ : std_logic;
SIGNAL \inst9|Add4~54\ : std_logic;
SIGNAL \inst9|Add4~49_sumout\ : std_logic;
SIGNAL \inst9|waiting~0_combout\ : std_logic;
SIGNAL \inst9|Add4~50\ : std_logic;
SIGNAL \inst9|Add4~45_sumout\ : std_logic;
SIGNAL \inst9|Add4~46\ : std_logic;
SIGNAL \inst9|Add4~41_sumout\ : std_logic;
SIGNAL \inst9|Add4~42\ : std_logic;
SIGNAL \inst9|Add4~37_sumout\ : std_logic;
SIGNAL \inst9|Add4~38\ : std_logic;
SIGNAL \inst9|Add4~33_sumout\ : std_logic;
SIGNAL \inst9|Add4~34\ : std_logic;
SIGNAL \inst9|Add4~29_sumout\ : std_logic;
SIGNAL \inst9|Equal3~1_combout\ : std_logic;
SIGNAL \inst9|Add4~30\ : std_logic;
SIGNAL \inst9|Add4~13_sumout\ : std_logic;
SIGNAL \inst9|Add4~14\ : std_logic;
SIGNAL \inst9|Add4~9_sumout\ : std_logic;
SIGNAL \inst9|Add4~10\ : std_logic;
SIGNAL \inst9|Add4~5_sumout\ : std_logic;
SIGNAL \inst9|Equal3~0_combout\ : std_logic;
SIGNAL \inst9|Equal3~3_combout\ : std_logic;
SIGNAL \inst9|Add4~2\ : std_logic;
SIGNAL \inst9|Add4~61_sumout\ : std_logic;
SIGNAL \inst9|Add4~62\ : std_logic;
SIGNAL \inst9|Add4~17_sumout\ : std_logic;
SIGNAL \inst9|Add4~18\ : std_logic;
SIGNAL \inst9|Add4~21_sumout\ : std_logic;
SIGNAL \inst9|Add4~22\ : std_logic;
SIGNAL \inst9|Add4~25_sumout\ : std_logic;
SIGNAL \inst9|Add4~26\ : std_logic;
SIGNAL \inst9|Add4~57_sumout\ : std_logic;
SIGNAL \inst9|Add4~58\ : std_logic;
SIGNAL \inst9|Add4~53_sumout\ : std_logic;
SIGNAL \inst9|Equal3~2_combout\ : std_logic;
SIGNAL \inst9|WaitingDone~0_combout\ : std_logic;
SIGNAL \inst9|WaitingDone~q\ : std_logic;
SIGNAL \inst9|needWait~0_combout\ : std_logic;
SIGNAL \inst9|needWait~1_combout\ : std_logic;
SIGNAL \inst9|needWait~q\ : std_logic;
SIGNAL \Run~input_o\ : std_logic;
SIGNAL \inst9|state.SEND~DUPLICATE_q\ : std_logic;
SIGNAL \inst9|Selector2~0_combout\ : std_logic;
SIGNAL \inst9|nextState.INTER~q\ : std_logic;
SIGNAL \inst9|state.INTER~q\ : std_logic;
SIGNAL \inst9|Selector4~0_combout\ : std_logic;
SIGNAL \inst9|nextState.DONE~q\ : std_logic;
SIGNAL \inst9|state.DONE~q\ : std_logic;
SIGNAL \inst9|Selector0~0_combout\ : std_logic;
SIGNAL \inst9|nextState.IDLE~q\ : std_logic;
SIGNAL \inst9|state.IDLE~q\ : std_logic;
SIGNAL \inst9|Selector3~0_combout\ : std_logic;
SIGNAL \inst9|discardBuffer~0_combout\ : std_logic;
SIGNAL \inst9|discardBuffer~q\ : std_logic;
SIGNAL \inst9|discarded~0_combout\ : std_logic;
SIGNAL \inst9|discarded~q\ : std_logic;
SIGNAL \inst9|Selector3~1_combout\ : std_logic;
SIGNAL \inst9|nextState.DISCARD~q\ : std_logic;
SIGNAL \inst9|state.DISCARD~q\ : std_logic;
SIGNAL \inst9|Selector1~0_combout\ : std_logic;
SIGNAL \inst9|nextState.SEND~q\ : std_logic;
SIGNAL \inst9|state.SEND~q\ : std_logic;
SIGNAL \inst9|sendData~0_combout\ : std_logic;
SIGNAL \inst9|Add1~9_sumout\ : std_logic;
SIGNAL \inst9|LessThan1~1_combout\ : std_logic;
SIGNAL \inst9|Add1~30\ : std_logic;
SIGNAL \inst9|Add1~25_sumout\ : std_logic;
SIGNAL \inst9|sdio_do~0_combout\ : std_logic;
SIGNAL \inst9|Mux0~0_combout\ : std_logic;
SIGNAL \inst9|Equal0~0_combout\ : std_logic;
SIGNAL \inst9|Mux1~5_combout\ : std_logic;
SIGNAL \inst9|Mux1~4_combout\ : std_logic;
SIGNAL \inst9|Mux1~3_combout\ : std_logic;
SIGNAL \inst9|Mux1~6_combout\ : std_logic;
SIGNAL \inst9|Mux1~7_combout\ : std_logic;
SIGNAL \inst9|Mux1~8_combout\ : std_logic;
SIGNAL \inst9|Mux1~13_combout\ : std_logic;
SIGNAL \inst9|Mux1~14_combout\ : std_logic;
SIGNAL \inst9|Mux1~15_combout\ : std_logic;
SIGNAL \inst9|Mux1~1_combout\ : std_logic;
SIGNAL \inst9|Mux1~16_combout\ : std_logic;
SIGNAL \inst9|Mux1~0_combout\ : std_logic;
SIGNAL \inst9|Mux1~17_combout\ : std_logic;
SIGNAL \inst9|Mux1~2_combout\ : std_logic;
SIGNAL \inst9|Mux1~9_combout\ : std_logic;
SIGNAL \inst9|sdio_do~1_combout\ : std_logic;
SIGNAL \inst9|sdio_oe~1_combout\ : std_logic;
SIGNAL \inst9|SCLK~0_combout\ : std_logic;
SIGNAL \inst9|SDENB~0_combout\ : std_logic;
SIGNAL \Parallel_Data_CLK_IN~input_o\ : std_logic;
SIGNAL \Parallel_Data_CLK_IN~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst10|output_p[3]~0_combout\ : std_logic;
SIGNAL \inst10|Add0~45_sumout\ : std_logic;
SIGNAL \inst10|Add0~46\ : std_logic;
SIGNAL \inst10|Add0~41_sumout\ : std_logic;
SIGNAL \inst10|Add0~42\ : std_logic;
SIGNAL \inst10|Add0~37_sumout\ : std_logic;
SIGNAL \inst10|Add0~38\ : std_logic;
SIGNAL \inst10|Add0~33_sumout\ : std_logic;
SIGNAL \inst10|counter[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst10|counter[6]~DUPLICATE_q\ : std_logic;
SIGNAL \inst10|output_p[6]~DUPLICATE_q\ : std_logic;
SIGNAL \inst10|Add0~34\ : std_logic;
SIGNAL \inst10|Add0~29_sumout\ : std_logic;
SIGNAL \inst10|counter[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|Equal0~4_combout\ : std_logic;
SIGNAL \inst10|counter[5]~DUPLICATE_q\ : std_logic;
SIGNAL \inst10|output_p[5]~feeder_combout\ : std_logic;
SIGNAL \inst10|output_p[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|latched_data[3]~0_combout\ : std_logic;
SIGNAL \inst10|counter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|Equal0~3_combout\ : std_logic;
SIGNAL \inst10|Add0~30\ : std_logic;
SIGNAL \inst10|Add0~25_sumout\ : std_logic;
SIGNAL \inst10|Add0~26\ : std_logic;
SIGNAL \inst10|Add0~21_sumout\ : std_logic;
SIGNAL \inst10|counter[10]~DUPLICATE_q\ : std_logic;
SIGNAL \inst10|output_p[10]~feeder_combout\ : std_logic;
SIGNAL \inst10|output_p[10]~DUPLICATE_q\ : std_logic;
SIGNAL \inst10|counter[9]~DUPLICATE_q\ : std_logic;
SIGNAL \inst10|Add0~22\ : std_logic;
SIGNAL \inst10|Add0~17_sumout\ : std_logic;
SIGNAL \inst10|output_p[11]~feeder_combout\ : std_logic;
SIGNAL \inst2|Equal0~2_combout\ : std_logic;
SIGNAL \inst10|Add0~18\ : std_logic;
SIGNAL \inst10|Add0~13_sumout\ : std_logic;
SIGNAL \inst10|Add0~14\ : std_logic;
SIGNAL \inst10|Add0~9_sumout\ : std_logic;
SIGNAL \inst10|Add0~10\ : std_logic;
SIGNAL \inst10|Add0~5_sumout\ : std_logic;
SIGNAL \inst10|Add0~6\ : std_logic;
SIGNAL \inst10|Add0~1_sumout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst10|output_p[14]~feeder_combout\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|counter~0_combout\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|counter~1_combout\ : std_logic;
SIGNAL \inst2|Add0~1_combout\ : std_logic;
SIGNAL \inst2|counter~2_combout\ : std_logic;
SIGNAL \inst2|counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|counter~3_combout\ : std_logic;
SIGNAL \inst2|enable~0_combout\ : std_logic;
SIGNAL \inst2|enable~1_combout\ : std_logic;
SIGNAL \inst2|enable~q\ : std_logic;
SIGNAL \inst2|clk_counter[0]~0_combout\ : std_logic;
SIGNAL \inst2|Add1~0_combout\ : std_logic;
SIGNAL \inst2|Add1~1_combout\ : std_logic;
SIGNAL \inst2|sync~0_combout\ : std_logic;
SIGNAL \inst2|sync~reg0_q\ : std_logic;
SIGNAL \inst9|stateRegOut[2]~3_combout\ : std_logic;
SIGNAL \inst9|stateRegOut[1]~4_combout\ : std_logic;
SIGNAL \inst9|stateRegOut[0]~5_combout\ : std_logic;
SIGNAL \inst2|clk_counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst9|dataIndex\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst10|output_p\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst9|WaitingBuffer\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst10|counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst9|clockDividerBuffer\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|latched_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|ALT_INV_counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst9|ALT_INV_clockDividerBuffer[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst9|ALT_INV_clockDividerBuffer[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst10|ALT_INV_counter[5]~DUPLICATE_q\ : std_logic;
SIGNAL \inst10|ALT_INV_counter[10]~DUPLICATE_q\ : std_logic;
SIGNAL \inst10|ALT_INV_output_p[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst10|ALT_INV_output_p[10]~DUPLICATE_q\ : std_logic;
SIGNAL \inst9|ALT_INV_state.SEND~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Run~input_o\ : std_logic;
SIGNAL \ALT_INV_Reset~input_o\ : std_logic;
SIGNAL \inst9|ALT_INV_sclk_reg~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux1~17_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux1~16_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux1~15_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux1~14_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux1~13_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~2_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~1_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Equal3~2_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_needWait~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_discardBuffer~q\ : std_logic;
SIGNAL \inst2|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_latched_data\ : std_logic_vector(15 DOWNTO 3);
SIGNAL \inst2|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_enable~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_sendData~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_state.IDLE~q\ : std_logic;
SIGNAL \inst9|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_WaitingDone~q\ : std_logic;
SIGNAL \inst9|ALT_INV_needWait~q\ : std_logic;
SIGNAL \inst9|ALT_INV_discarded~q\ : std_logic;
SIGNAL \inst9|ALT_INV_clockDividerBuffer\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst10|ALT_INV_counter\ : std_logic_vector(15 DOWNTO 4);
SIGNAL \inst2|ALT_INV_clk_counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|ALT_INV_enable~q\ : std_logic;
SIGNAL \inst9|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_sdio_do~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux1~8_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux1~7_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux1~6_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux1~5_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux1~4_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux1~3_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_nextState.SEND~q\ : std_logic;
SIGNAL \inst9|ALT_INV_internalClock~q\ : std_logic;
SIGNAL \inst10|ALT_INV_output_p\ : std_logic_vector(15 DOWNTO 3);
SIGNAL \inst9|ALT_INV_stateRegOut[0]~5_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_stateRegOut[1]~4_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_stateRegOut[2]~3_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_state.INTER~q\ : std_logic;
SIGNAL \inst9|ALT_INV_state.DONE~q\ : std_logic;
SIGNAL \inst2|ALT_INV_sync~reg0_q\ : std_logic;
SIGNAL \inst9|ALT_INV_configOK~reg0_q\ : std_logic;
SIGNAL \inst9|ALT_INV_state.DISCARD~q\ : std_logic;
SIGNAL \inst9|ALT_INV_state.SEND~q\ : std_logic;
SIGNAL \inst9|ALT_INV_sclk_reg~q\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux1~9_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_WaitingBuffer\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst9|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \inst9|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \inst9|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \inst9|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \inst9|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \inst9|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \inst9|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \inst9|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \inst9|ALT_INV_counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst9|ALT_INV_dataIndex\ : std_logic_vector(7 DOWNTO 0);

BEGIN

\DATACLK(n)\ <= \ww_DATACLK(n)\;
\Sync(n)\ <= \ww_Sync(n)\;
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
ww_Run <= Run;
ww_Clock <= Clock;
ww_Reset <= Reset;
ww_Wr_Re_Button <= Wr_Re_Button;
SDENB <= ww_SDENB;
SDIO <= ww_SDIO;
Done <= ww_Done;
Wr_Re_Status <= ww_Wr_Re_Status;
SCLK_LED <= ww_SCLK_LED;
SDENB_LED <= ww_SDENB_LED;
SDIO_LED <= ww_SDIO_LED;
DATACLK <= ww_DATACLK;
ww_Parallel_Data_CLK_IN <= Parallel_Data_CLK_IN;
Sync <= ww_Sync;
Current_State <= ww_Current_State;
Parallel_Data_Out <= ww_Parallel_Data_Out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst2|ALT_INV_counter[3]~DUPLICATE_q\ <= NOT \inst2|counter[3]~DUPLICATE_q\;
\inst9|ALT_INV_clockDividerBuffer[0]~DUPLICATE_q\ <= NOT \inst9|clockDividerBuffer[0]~DUPLICATE_q\;
\inst9|ALT_INV_clockDividerBuffer[1]~DUPLICATE_q\ <= NOT \inst9|clockDividerBuffer[1]~DUPLICATE_q\;
\inst10|ALT_INV_counter[5]~DUPLICATE_q\ <= NOT \inst10|counter[5]~DUPLICATE_q\;
\inst10|ALT_INV_counter[10]~DUPLICATE_q\ <= NOT \inst10|counter[10]~DUPLICATE_q\;
\inst10|ALT_INV_output_p[3]~DUPLICATE_q\ <= NOT \inst10|output_p[3]~DUPLICATE_q\;
\inst10|ALT_INV_output_p[10]~DUPLICATE_q\ <= NOT \inst10|output_p[10]~DUPLICATE_q\;
\inst9|ALT_INV_state.SEND~DUPLICATE_q\ <= NOT \inst9|state.SEND~DUPLICATE_q\;
\ALT_INV_Run~input_o\ <= NOT \Run~input_o\;
\ALT_INV_Reset~input_o\ <= NOT \Reset~input_o\;
\inst9|ALT_INV_sclk_reg~0_combout\ <= NOT \inst9|sclk_reg~0_combout\;
\inst9|ALT_INV_Mux1~17_combout\ <= NOT \inst9|Mux1~17_combout\;
\inst9|ALT_INV_Mux1~16_combout\ <= NOT \inst9|Mux1~16_combout\;
\inst9|ALT_INV_Mux1~15_combout\ <= NOT \inst9|Mux1~15_combout\;
\inst9|ALT_INV_Mux1~14_combout\ <= NOT \inst9|Mux1~14_combout\;
\inst9|ALT_INV_Mux1~13_combout\ <= NOT \inst9|Mux1~13_combout\;
\inst2|ALT_INV_Add0~2_combout\ <= NOT \inst2|Add0~2_combout\;
\inst2|ALT_INV_Add0~1_combout\ <= NOT \inst2|Add0~1_combout\;
\inst2|ALT_INV_Add0~0_combout\ <= NOT \inst2|Add0~0_combout\;
\inst9|ALT_INV_Equal3~2_combout\ <= NOT \inst9|Equal3~2_combout\;
\inst9|ALT_INV_Equal3~1_combout\ <= NOT \inst9|Equal3~1_combout\;
\inst9|ALT_INV_Equal3~0_combout\ <= NOT \inst9|Equal3~0_combout\;
\inst9|ALT_INV_needWait~0_combout\ <= NOT \inst9|needWait~0_combout\;
\inst9|ALT_INV_discardBuffer~q\ <= NOT \inst9|discardBuffer~q\;
\inst2|ALT_INV_Equal0~4_combout\ <= NOT \inst2|Equal0~4_combout\;
\inst2|ALT_INV_latched_data\(8) <= NOT \inst2|latched_data\(8);
\inst2|ALT_INV_latched_data\(7) <= NOT \inst2|latched_data\(7);
\inst2|ALT_INV_latched_data\(6) <= NOT \inst2|latched_data\(6);
\inst2|ALT_INV_Equal0~3_combout\ <= NOT \inst2|Equal0~3_combout\;
\inst2|ALT_INV_latched_data\(5) <= NOT \inst2|latched_data\(5);
\inst2|ALT_INV_latched_data\(4) <= NOT \inst2|latched_data\(4);
\inst2|ALT_INV_latched_data\(3) <= NOT \inst2|latched_data\(3);
\inst2|ALT_INV_Equal0~2_combout\ <= NOT \inst2|Equal0~2_combout\;
\inst2|ALT_INV_latched_data\(11) <= NOT \inst2|latched_data\(11);
\inst2|ALT_INV_latched_data\(10) <= NOT \inst2|latched_data\(10);
\inst2|ALT_INV_latched_data\(9) <= NOT \inst2|latched_data\(9);
\inst2|ALT_INV_Equal0~1_combout\ <= NOT \inst2|Equal0~1_combout\;
\inst2|ALT_INV_latched_data\(14) <= NOT \inst2|latched_data\(14);
\inst2|ALT_INV_latched_data\(13) <= NOT \inst2|latched_data\(13);
\inst2|ALT_INV_latched_data\(12) <= NOT \inst2|latched_data\(12);
\inst2|ALT_INV_enable~0_combout\ <= NOT \inst2|enable~0_combout\;
\inst2|ALT_INV_counter\(3) <= NOT \inst2|counter\(3);
\inst2|ALT_INV_counter\(2) <= NOT \inst2|counter\(2);
\inst2|ALT_INV_counter\(1) <= NOT \inst2|counter\(1);
\inst2|ALT_INV_counter\(0) <= NOT \inst2|counter\(0);
\inst2|ALT_INV_Equal0~0_combout\ <= NOT \inst2|Equal0~0_combout\;
\inst2|ALT_INV_latched_data\(15) <= NOT \inst2|latched_data\(15);
\inst9|ALT_INV_sendData~0_combout\ <= NOT \inst9|sendData~0_combout\;
\inst9|ALT_INV_state.IDLE~q\ <= NOT \inst9|state.IDLE~q\;
\inst9|ALT_INV_Selector3~0_combout\ <= NOT \inst9|Selector3~0_combout\;
\inst9|ALT_INV_WaitingDone~q\ <= NOT \inst9|WaitingDone~q\;
\inst9|ALT_INV_needWait~q\ <= NOT \inst9|needWait~q\;
\inst9|ALT_INV_discarded~q\ <= NOT \inst9|discarded~q\;
\inst9|ALT_INV_clockDividerBuffer\(0) <= NOT \inst9|clockDividerBuffer\(0);
\inst9|ALT_INV_clockDividerBuffer\(1) <= NOT \inst9|clockDividerBuffer\(1);
\inst9|ALT_INV_clockDividerBuffer\(2) <= NOT \inst9|clockDividerBuffer\(2);
\inst9|ALT_INV_clockDividerBuffer\(3) <= NOT \inst9|clockDividerBuffer\(3);
\inst10|ALT_INV_counter\(4) <= NOT \inst10|counter\(4);
\inst10|ALT_INV_counter\(5) <= NOT \inst10|counter\(5);
\inst10|ALT_INV_counter\(6) <= NOT \inst10|counter\(6);
\inst10|ALT_INV_counter\(7) <= NOT \inst10|counter\(7);
\inst10|ALT_INV_counter\(8) <= NOT \inst10|counter\(8);
\inst10|ALT_INV_counter\(9) <= NOT \inst10|counter\(9);
\inst10|ALT_INV_counter\(10) <= NOT \inst10|counter\(10);
\inst10|ALT_INV_counter\(11) <= NOT \inst10|counter\(11);
\inst10|ALT_INV_counter\(12) <= NOT \inst10|counter\(12);
\inst10|ALT_INV_counter\(13) <= NOT \inst10|counter\(13);
\inst10|ALT_INV_counter\(14) <= NOT \inst10|counter\(14);
\inst10|ALT_INV_counter\(15) <= NOT \inst10|counter\(15);
\inst2|ALT_INV_clk_counter\(2) <= NOT \inst2|clk_counter\(2);
\inst2|ALT_INV_clk_counter\(1) <= NOT \inst2|clk_counter\(1);
\inst2|ALT_INV_clk_counter\(0) <= NOT \inst2|clk_counter\(0);
\inst2|ALT_INV_enable~q\ <= NOT \inst2|enable~q\;
\inst9|ALT_INV_LessThan1~0_combout\ <= NOT \inst9|LessThan1~0_combout\;
\inst9|ALT_INV_LessThan2~0_combout\ <= NOT \inst9|LessThan2~0_combout\;
\inst9|ALT_INV_sdio_do~0_combout\ <= NOT \inst9|sdio_do~0_combout\;
\inst9|ALT_INV_Mux0~0_combout\ <= NOT \inst9|Mux0~0_combout\;
\inst9|ALT_INV_Equal0~0_combout\ <= NOT \inst9|Equal0~0_combout\;
\inst9|ALT_INV_Mux1~8_combout\ <= NOT \inst9|Mux1~8_combout\;
\inst9|ALT_INV_Mux1~7_combout\ <= NOT \inst9|Mux1~7_combout\;
\inst9|ALT_INV_Mux1~6_combout\ <= NOT \inst9|Mux1~6_combout\;
\inst9|ALT_INV_Mux1~5_combout\ <= NOT \inst9|Mux1~5_combout\;
\inst9|ALT_INV_Mux1~4_combout\ <= NOT \inst9|Mux1~4_combout\;
\inst9|ALT_INV_Mux1~3_combout\ <= NOT \inst9|Mux1~3_combout\;
\inst9|ALT_INV_Mux1~2_combout\ <= NOT \inst9|Mux1~2_combout\;
\inst9|ALT_INV_Mux1~1_combout\ <= NOT \inst9|Mux1~1_combout\;
\inst9|ALT_INV_Mux1~0_combout\ <= NOT \inst9|Mux1~0_combout\;
\inst9|ALT_INV_nextState.SEND~q\ <= NOT \inst9|nextState.SEND~q\;
\inst9|ALT_INV_internalClock~q\ <= NOT \inst9|internalClock~q\;
\inst10|ALT_INV_output_p\(3) <= NOT \inst10|output_p\(3);
\inst10|ALT_INV_output_p\(4) <= NOT \inst10|output_p\(4);
\inst10|ALT_INV_output_p\(5) <= NOT \inst10|output_p\(5);
\inst10|ALT_INV_output_p\(6) <= NOT \inst10|output_p\(6);
\inst10|ALT_INV_output_p\(7) <= NOT \inst10|output_p\(7);
\inst10|ALT_INV_output_p\(8) <= NOT \inst10|output_p\(8);
\inst10|ALT_INV_output_p\(9) <= NOT \inst10|output_p\(9);
\inst10|ALT_INV_output_p\(11) <= NOT \inst10|output_p\(11);
\inst10|ALT_INV_output_p\(12) <= NOT \inst10|output_p\(12);
\inst10|ALT_INV_output_p\(13) <= NOT \inst10|output_p\(13);
\inst10|ALT_INV_output_p\(14) <= NOT \inst10|output_p\(14);
\inst10|ALT_INV_output_p\(15) <= NOT \inst10|output_p\(15);
\inst9|ALT_INV_stateRegOut[0]~5_combout\ <= NOT \inst9|stateRegOut[0]~5_combout\;
\inst9|ALT_INV_stateRegOut[1]~4_combout\ <= NOT \inst9|stateRegOut[1]~4_combout\;
\inst9|ALT_INV_stateRegOut[2]~3_combout\ <= NOT \inst9|stateRegOut[2]~3_combout\;
\inst9|ALT_INV_state.INTER~q\ <= NOT \inst9|state.INTER~q\;
\inst9|ALT_INV_state.DONE~q\ <= NOT \inst9|state.DONE~q\;
\inst2|ALT_INV_sync~reg0_q\ <= NOT \inst2|sync~reg0_q\;
\inst9|ALT_INV_configOK~reg0_q\ <= NOT \inst9|configOK~reg0_q\;
\inst9|ALT_INV_state.DISCARD~q\ <= NOT \inst9|state.DISCARD~q\;
\inst9|ALT_INV_state.SEND~q\ <= NOT \inst9|state.SEND~q\;
\inst9|ALT_INV_sclk_reg~q\ <= NOT \inst9|sclk_reg~q\;
\inst9|ALT_INV_Mux1~9_combout\ <= NOT \inst9|Mux1~9_combout\;
\inst9|ALT_INV_WaitingBuffer\(1) <= NOT \inst9|WaitingBuffer\(1);
\inst9|ALT_INV_WaitingBuffer\(5) <= NOT \inst9|WaitingBuffer\(5);
\inst9|ALT_INV_WaitingBuffer\(6) <= NOT \inst9|WaitingBuffer\(6);
\inst9|ALT_INV_WaitingBuffer\(7) <= NOT \inst9|WaitingBuffer\(7);
\inst9|ALT_INV_WaitingBuffer\(8) <= NOT \inst9|WaitingBuffer\(8);
\inst9|ALT_INV_WaitingBuffer\(9) <= NOT \inst9|WaitingBuffer\(9);
\inst9|ALT_INV_WaitingBuffer\(10) <= NOT \inst9|WaitingBuffer\(10);
\inst9|ALT_INV_WaitingBuffer\(11) <= NOT \inst9|WaitingBuffer\(11);
\inst9|ALT_INV_WaitingBuffer\(12) <= NOT \inst9|WaitingBuffer\(12);
\inst9|ALT_INV_WaitingBuffer\(4) <= NOT \inst9|WaitingBuffer\(4);
\inst9|ALT_INV_WaitingBuffer\(3) <= NOT \inst9|WaitingBuffer\(3);
\inst9|ALT_INV_WaitingBuffer\(2) <= NOT \inst9|WaitingBuffer\(2);
\inst9|ALT_INV_WaitingBuffer\(13) <= NOT \inst9|WaitingBuffer\(13);
\inst9|ALT_INV_WaitingBuffer\(14) <= NOT \inst9|WaitingBuffer\(14);
\inst9|ALT_INV_WaitingBuffer\(15) <= NOT \inst9|WaitingBuffer\(15);
\inst9|ALT_INV_WaitingBuffer\(0) <= NOT \inst9|WaitingBuffer\(0);
\inst9|ALT_INV_Add1~29_sumout\ <= NOT \inst9|Add1~29_sumout\;
\inst9|ALT_INV_Add1~25_sumout\ <= NOT \inst9|Add1~25_sumout\;
\inst9|ALT_INV_Add1~21_sumout\ <= NOT \inst9|Add1~21_sumout\;
\inst9|ALT_INV_Add1~17_sumout\ <= NOT \inst9|Add1~17_sumout\;
\inst9|ALT_INV_Add1~13_sumout\ <= NOT \inst9|Add1~13_sumout\;
\inst9|ALT_INV_Add1~9_sumout\ <= NOT \inst9|Add1~9_sumout\;
\inst9|ALT_INV_Add1~5_sumout\ <= NOT \inst9|Add1~5_sumout\;
\inst9|ALT_INV_Add1~1_sumout\ <= NOT \inst9|Add1~1_sumout\;
\inst9|ALT_INV_counter\(6) <= NOT \inst9|counter\(6);
\inst9|ALT_INV_dataIndex\(4) <= NOT \inst9|dataIndex\(4);
\inst9|ALT_INV_dataIndex\(5) <= NOT \inst9|dataIndex\(5);
\inst9|ALT_INV_dataIndex\(7) <= NOT \inst9|dataIndex\(7);
\inst9|ALT_INV_dataIndex\(6) <= NOT \inst9|dataIndex\(6);
\inst9|ALT_INV_counter\(4) <= NOT \inst9|counter\(4);
\inst9|ALT_INV_counter\(3) <= NOT \inst9|counter\(3);
\inst9|ALT_INV_counter\(1) <= NOT \inst9|counter\(1);
\inst9|ALT_INV_counter\(2) <= NOT \inst9|counter\(2);
\inst9|ALT_INV_counter\(5) <= NOT \inst9|counter\(5);
\inst9|ALT_INV_counter\(0) <= NOT \inst9|counter\(0);
\inst9|ALT_INV_dataIndex\(3) <= NOT \inst9|dataIndex\(3);
\inst9|ALT_INV_dataIndex\(0) <= NOT \inst9|dataIndex\(0);
\inst9|ALT_INV_dataIndex\(1) <= NOT \inst9|dataIndex\(1);
\inst9|ALT_INV_dataIndex\(2) <= NOT \inst9|dataIndex\(2);

-- Location: IOOBUF_X68_Y14_N45
\SDIO~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|sdio_do~1_combout\,
	oe => \inst9|sdio_oe~1_combout\,
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
	i => \inst9|sdio_do~1_combout\,
	oe => \inst9|sdio_oe~1_combout\,
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
	i => \inst9|SCLK~0_combout\,
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
	i => \inst9|SDENB~0_combout\,
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
	i => \inst9|configOK~reg0_q\,
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
	i => GND,
	devoe => ww_devoe,
	o => ww_Wr_Re_Status);

-- Location: IOOBUF_X19_Y61_N19
\SCLK_LED~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|SCLK~0_combout\,
	devoe => ww_devoe,
	o => ww_SCLK_LED);

-- Location: IOOBUF_X19_Y61_N53
\SDENB_LED~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|SDENB~0_combout\,
	devoe => ww_devoe,
	o => ww_SDENB_LED);

-- Location: IOOBUF_X57_Y61_N36
\DATACLK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	devoe => ww_devoe,
	o => ww_DATACLK,
	obar => \ww_DATACLK(n)\);

-- Location: IOOBUF_X55_Y61_N76
\Sync~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|sync~reg0_q\,
	devoe => ww_devoe,
	o => ww_Sync,
	obar => \ww_Sync(n)\);

-- Location: IOOBUF_X15_Y61_N53
\Current_State[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|ALT_INV_stateRegOut[2]~3_combout\,
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
	i => \inst9|ALT_INV_stateRegOut[1]~4_combout\,
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
	i => \inst9|ALT_INV_stateRegOut[0]~5_combout\,
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
	i => \inst10|output_p\(15),
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
	i => \inst10|output_p\(14),
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
	i => \inst10|output_p\(13),
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
	i => \inst10|output_p\(12),
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
	i => \inst10|output_p\(11),
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
	i => \inst10|output_p\(10),
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
	i => \inst10|output_p\(9),
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
	i => \inst10|output_p\(8),
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
	i => \inst10|output_p\(7),
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
	i => \inst10|output_p[6]~DUPLICATE_q\,
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
	i => \inst10|output_p\(5),
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
	i => \inst10|output_p\(4),
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
	i => \inst10|ALT_INV_output_p[3]~DUPLICATE_q\,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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

-- Location: FF_X28_Y57_N37
\inst9|clockDividerBuffer[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \inst9|clockDividerBuffer~3_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|clockDividerBuffer[0]~DUPLICATE_q\);

-- Location: FF_X28_Y57_N47
\inst9|clockDividerBuffer[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \inst9|clockDividerBuffer~2_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|clockDividerBuffer[1]~DUPLICATE_q\);

-- Location: LABCELL_X28_Y57_N54
\inst9|clockDividerBuffer[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|clockDividerBuffer[2]~1_combout\ = ( \inst9|clockDividerBuffer\(2) & ( \inst9|clockDividerBuffer[1]~DUPLICATE_q\ & ( !\inst9|clockDividerBuffer[0]~DUPLICATE_q\ ) ) ) # ( !\inst9|clockDividerBuffer\(2) & ( \inst9|clockDividerBuffer[1]~DUPLICATE_q\ & 
-- ( \inst9|clockDividerBuffer[0]~DUPLICATE_q\ ) ) ) # ( \inst9|clockDividerBuffer\(2) & ( !\inst9|clockDividerBuffer[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst9|ALT_INV_clockDividerBuffer[0]~DUPLICATE_q\,
	datae => \inst9|ALT_INV_clockDividerBuffer\(2),
	dataf => \inst9|ALT_INV_clockDividerBuffer[1]~DUPLICATE_q\,
	combout => \inst9|clockDividerBuffer[2]~1_combout\);

-- Location: FF_X28_Y57_N56
\inst9|clockDividerBuffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \inst9|clockDividerBuffer[2]~1_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|clockDividerBuffer\(2));

-- Location: LABCELL_X28_Y57_N45
\inst9|clockDividerBuffer~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|clockDividerBuffer~2_combout\ = ( \inst9|clockDividerBuffer\(1) & ( \inst9|clockDividerBuffer\(2) & ( !\inst9|clockDividerBuffer[0]~DUPLICATE_q\ ) ) ) # ( !\inst9|clockDividerBuffer\(1) & ( \inst9|clockDividerBuffer\(2) & ( 
-- \inst9|clockDividerBuffer[0]~DUPLICATE_q\ ) ) ) # ( \inst9|clockDividerBuffer\(1) & ( !\inst9|clockDividerBuffer\(2) & ( (!\inst9|clockDividerBuffer\(3) & !\inst9|clockDividerBuffer[0]~DUPLICATE_q\) ) ) ) # ( !\inst9|clockDividerBuffer\(1) & ( 
-- !\inst9|clockDividerBuffer\(2) & ( \inst9|clockDividerBuffer[0]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111110000001100000000001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ALT_INV_clockDividerBuffer\(3),
	datac => \inst9|ALT_INV_clockDividerBuffer[0]~DUPLICATE_q\,
	datae => \inst9|ALT_INV_clockDividerBuffer\(1),
	dataf => \inst9|ALT_INV_clockDividerBuffer\(2),
	combout => \inst9|clockDividerBuffer~2_combout\);

-- Location: FF_X28_Y57_N46
\inst9|clockDividerBuffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \inst9|clockDividerBuffer~2_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|clockDividerBuffer\(1));

-- Location: LABCELL_X28_Y57_N6
\inst9|clockDividerBuffer~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|clockDividerBuffer~0_combout\ = ( \inst9|clockDividerBuffer\(3) & ( \inst9|clockDividerBuffer\(2) & ( (!\inst9|clockDividerBuffer[0]~DUPLICATE_q\) # (!\inst9|clockDividerBuffer\(1)) ) ) ) # ( !\inst9|clockDividerBuffer\(3) & ( 
-- \inst9|clockDividerBuffer\(2) & ( (\inst9|clockDividerBuffer[0]~DUPLICATE_q\ & \inst9|clockDividerBuffer\(1)) ) ) ) # ( \inst9|clockDividerBuffer\(3) & ( !\inst9|clockDividerBuffer\(2) & ( (!\inst9|clockDividerBuffer\(1)) # 
-- (\inst9|clockDividerBuffer[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000001100111111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ALT_INV_clockDividerBuffer[0]~DUPLICATE_q\,
	datad => \inst9|ALT_INV_clockDividerBuffer\(1),
	datae => \inst9|ALT_INV_clockDividerBuffer\(3),
	dataf => \inst9|ALT_INV_clockDividerBuffer\(2),
	combout => \inst9|clockDividerBuffer~0_combout\);

-- Location: FF_X28_Y57_N8
\inst9|clockDividerBuffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \inst9|clockDividerBuffer~0_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|clockDividerBuffer\(3));

-- Location: LABCELL_X28_Y57_N36
\inst9|clockDividerBuffer~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|clockDividerBuffer~3_combout\ = ( !\inst9|clockDividerBuffer\(0) & ( \inst9|clockDividerBuffer\(2) ) ) # ( !\inst9|clockDividerBuffer\(0) & ( !\inst9|clockDividerBuffer\(2) & ( (!\inst9|clockDividerBuffer\(3)) # (!\inst9|clockDividerBuffer\(1)) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ALT_INV_clockDividerBuffer\(3),
	datad => \inst9|ALT_INV_clockDividerBuffer\(1),
	datae => \inst9|ALT_INV_clockDividerBuffer\(0),
	dataf => \inst9|ALT_INV_clockDividerBuffer\(2),
	combout => \inst9|clockDividerBuffer~3_combout\);

-- Location: FF_X28_Y57_N38
\inst9|clockDividerBuffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \inst9|clockDividerBuffer~3_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|clockDividerBuffer\(0));

-- Location: LABCELL_X28_Y57_N18
\inst9|internalClock~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|internalClock~0_combout\ = ( \inst9|clockDividerBuffer[1]~DUPLICATE_q\ & ( \inst9|internalClock~q\ & ( ((!\inst9|clockDividerBuffer\(3)) # (\inst9|clockDividerBuffer\(2))) # (\inst9|clockDividerBuffer\(0)) ) ) ) # ( 
-- !\inst9|clockDividerBuffer[1]~DUPLICATE_q\ & ( \inst9|internalClock~q\ ) ) # ( \inst9|clockDividerBuffer[1]~DUPLICATE_q\ & ( !\inst9|internalClock~q\ & ( (!\inst9|clockDividerBuffer\(0) & (!\inst9|clockDividerBuffer\(2) & \inst9|clockDividerBuffer\(3))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010000011111111111111111111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_clockDividerBuffer\(0),
	datac => \inst9|ALT_INV_clockDividerBuffer\(2),
	datad => \inst9|ALT_INV_clockDividerBuffer\(3),
	datae => \inst9|ALT_INV_clockDividerBuffer[1]~DUPLICATE_q\,
	dataf => \inst9|ALT_INV_internalClock~q\,
	combout => \inst9|internalClock~0_combout\);

-- Location: FF_X28_Y57_N2
\inst9|internalClock\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \inst9|internalClock~0_combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|internalClock~q\);

-- Location: LABCELL_X23_Y57_N51
\inst9|sclk_reg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|sclk_reg~0_combout\ = ( !\inst9|sclk_reg~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst9|ALT_INV_sclk_reg~q\,
	combout => \inst9|sclk_reg~0_combout\);

-- Location: LABCELL_X23_Y57_N0
\inst9|sclk_reg~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|sclk_reg~feeder_combout\ = ( \inst9|sclk_reg~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst9|ALT_INV_sclk_reg~0_combout\,
	combout => \inst9|sclk_reg~feeder_combout\);

-- Location: FF_X23_Y57_N2
\inst9|sclk_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|internalClock~q\,
	d => \inst9|sclk_reg~feeder_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|sclk_reg~q\);

-- Location: LABCELL_X23_Y58_N30
\inst9|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add1~29_sumout\ = SUM(( \inst9|dataIndex\(0) ) + ( VCC ) + ( !VCC ))
-- \inst9|Add1~30\ = CARRY(( \inst9|dataIndex\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst9|ALT_INV_dataIndex\(0),
	cin => GND,
	sumout => \inst9|Add1~29_sumout\,
	cout => \inst9|Add1~30\);

-- Location: FF_X22_Y57_N29
\inst9|dataIndex[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|ALT_INV_sclk_reg~q\,
	asdata => \inst9|Add1~1_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst9|LessThan1~1_combout\,
	sload => VCC,
	ena => \inst9|sendData~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|dataIndex\(7));

-- Location: LABCELL_X23_Y58_N33
\inst9|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add1~25_sumout\ = SUM(( \inst9|dataIndex\(1) ) + ( GND ) + ( \inst9|Add1~30\ ))
-- \inst9|Add1~26\ = CARRY(( \inst9|dataIndex\(1) ) + ( GND ) + ( \inst9|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst9|ALT_INV_dataIndex\(1),
	cin => \inst9|Add1~30\,
	sumout => \inst9|Add1~25_sumout\,
	cout => \inst9|Add1~26\);

-- Location: LABCELL_X23_Y58_N36
\inst9|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add1~21_sumout\ = SUM(( \inst9|dataIndex\(2) ) + ( GND ) + ( \inst9|Add1~26\ ))
-- \inst9|Add1~22\ = CARRY(( \inst9|dataIndex\(2) ) + ( GND ) + ( \inst9|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst9|ALT_INV_dataIndex\(2),
	cin => \inst9|Add1~26\,
	sumout => \inst9|Add1~21_sumout\,
	cout => \inst9|Add1~22\);

-- Location: FF_X25_Y58_N2
\inst9|dataIndex[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|ALT_INV_sclk_reg~q\,
	asdata => \inst9|Add1~21_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst9|LessThan1~1_combout\,
	sload => VCC,
	ena => \inst9|sendData~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|dataIndex\(2));

-- Location: LABCELL_X23_Y58_N39
\inst9|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add1~13_sumout\ = SUM(( \inst9|dataIndex\(3) ) + ( GND ) + ( \inst9|Add1~22\ ))
-- \inst9|Add1~14\ = CARRY(( \inst9|dataIndex\(3) ) + ( GND ) + ( \inst9|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_dataIndex\(3),
	cin => \inst9|Add1~22\,
	sumout => \inst9|Add1~13_sumout\,
	cout => \inst9|Add1~14\);

-- Location: LABCELL_X22_Y57_N57
\inst9|dataIndex[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|dataIndex[3]~feeder_combout\ = ( \inst9|Add1~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst9|ALT_INV_Add1~13_sumout\,
	combout => \inst9|dataIndex[3]~feeder_combout\);

-- Location: FF_X22_Y57_N59
\inst9|dataIndex[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|ALT_INV_sclk_reg~q\,
	d => \inst9|dataIndex[3]~feeder_combout\,
	clrn => \Reset~input_o\,
	sclr => \inst9|LessThan1~1_combout\,
	ena => \inst9|sendData~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|dataIndex\(3));

-- Location: LABCELL_X23_Y58_N42
\inst9|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add1~17_sumout\ = SUM(( \inst9|dataIndex\(4) ) + ( GND ) + ( \inst9|Add1~14\ ))
-- \inst9|Add1~18\ = CARRY(( \inst9|dataIndex\(4) ) + ( GND ) + ( \inst9|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst9|ALT_INV_dataIndex\(4),
	cin => \inst9|Add1~14\,
	sumout => \inst9|Add1~17_sumout\,
	cout => \inst9|Add1~18\);

-- Location: FF_X22_Y57_N37
\inst9|dataIndex[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|ALT_INV_sclk_reg~q\,
	asdata => \inst9|Add1~17_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst9|LessThan1~1_combout\,
	sload => VCC,
	ena => \inst9|sendData~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|dataIndex\(4));

-- Location: LABCELL_X23_Y58_N45
\inst9|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add1~5_sumout\ = SUM(( \inst9|dataIndex\(5) ) + ( GND ) + ( \inst9|Add1~18\ ))
-- \inst9|Add1~6\ = CARRY(( \inst9|dataIndex\(5) ) + ( GND ) + ( \inst9|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_dataIndex\(5),
	cin => \inst9|Add1~18\,
	sumout => \inst9|Add1~5_sumout\,
	cout => \inst9|Add1~6\);

-- Location: LABCELL_X22_Y57_N42
\inst9|dataIndex[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|dataIndex[5]~feeder_combout\ = ( \inst9|Add1~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst9|ALT_INV_Add1~5_sumout\,
	combout => \inst9|dataIndex[5]~feeder_combout\);

-- Location: FF_X22_Y57_N44
\inst9|dataIndex[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|ALT_INV_sclk_reg~q\,
	d => \inst9|dataIndex[5]~feeder_combout\,
	clrn => \Reset~input_o\,
	sclr => \inst9|LessThan1~1_combout\,
	ena => \inst9|sendData~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|dataIndex\(5));

-- Location: LABCELL_X23_Y58_N48
\inst9|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add1~9_sumout\ = SUM(( \inst9|dataIndex\(6) ) + ( GND ) + ( \inst9|Add1~6\ ))
-- \inst9|Add1~10\ = CARRY(( \inst9|dataIndex\(6) ) + ( GND ) + ( \inst9|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst9|ALT_INV_dataIndex\(6),
	cin => \inst9|Add1~6\,
	sumout => \inst9|Add1~9_sumout\,
	cout => \inst9|Add1~10\);

-- Location: LABCELL_X23_Y58_N51
\inst9|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add1~1_sumout\ = SUM(( \inst9|dataIndex\(7) ) + ( GND ) + ( \inst9|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_dataIndex\(7),
	cin => \inst9|Add1~10\,
	sumout => \inst9|Add1~1_sumout\);

-- Location: LABCELL_X23_Y58_N27
\inst9|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|LessThan1~0_combout\ = ( !\inst9|Add1~5_sumout\ & ( !\inst9|Add1~9_sumout\ & ( (!\inst9|Add1~13_sumout\) # (!\inst9|Add1~17_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ALT_INV_Add1~13_sumout\,
	datac => \inst9|ALT_INV_Add1~17_sumout\,
	datae => \inst9|ALT_INV_Add1~5_sumout\,
	dataf => \inst9|ALT_INV_Add1~9_sumout\,
	combout => \inst9|LessThan1~0_combout\);

-- Location: LABCELL_X22_Y58_N0
\inst9|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add2~1_sumout\ = SUM(( \inst9|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \inst9|Add2~2\ = CARRY(( \inst9|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_counter\(0),
	cin => GND,
	sumout => \inst9|Add2~1_sumout\,
	cout => \inst9|Add2~2\);

-- Location: LABCELL_X23_Y58_N0
\inst9|counter[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|counter[0]~0_combout\ = ( \inst9|Add1~5_sumout\ & ( \inst9|sendData~0_combout\ ) ) # ( !\inst9|Add1~5_sumout\ & ( \inst9|sendData~0_combout\ & ( (((\inst9|Add1~17_sumout\ & \inst9|Add1~13_sumout\)) # (\inst9|Add1~1_sumout\)) # 
-- (\inst9|Add1~9_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111011111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_Add1~9_sumout\,
	datab => \inst9|ALT_INV_Add1~17_sumout\,
	datac => \inst9|ALT_INV_Add1~1_sumout\,
	datad => \inst9|ALT_INV_Add1~13_sumout\,
	datae => \inst9|ALT_INV_Add1~5_sumout\,
	dataf => \inst9|ALT_INV_sendData~0_combout\,
	combout => \inst9|counter[0]~0_combout\);

-- Location: FF_X22_Y58_N38
\inst9|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|ALT_INV_sclk_reg~q\,
	asdata => \inst9|Add2~1_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst9|LessThan2~0_combout\,
	sload => VCC,
	ena => \inst9|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|counter\(0));

-- Location: LABCELL_X22_Y58_N3
\inst9|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add2~13_sumout\ = SUM(( \inst9|counter\(1) ) + ( GND ) + ( \inst9|Add2~2\ ))
-- \inst9|Add2~14\ = CARRY(( \inst9|counter\(1) ) + ( GND ) + ( \inst9|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_counter\(1),
	cin => \inst9|Add2~2\,
	sumout => \inst9|Add2~13_sumout\,
	cout => \inst9|Add2~14\);

-- Location: FF_X22_Y58_N47
\inst9|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|ALT_INV_sclk_reg~q\,
	asdata => \inst9|Add2~13_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst9|LessThan2~0_combout\,
	sload => VCC,
	ena => \inst9|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|counter\(1));

-- Location: LABCELL_X22_Y58_N6
\inst9|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add2~9_sumout\ = SUM(( \inst9|counter\(2) ) + ( GND ) + ( \inst9|Add2~14\ ))
-- \inst9|Add2~10\ = CARRY(( \inst9|counter\(2) ) + ( GND ) + ( \inst9|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_counter\(2),
	cin => \inst9|Add2~14\,
	sumout => \inst9|Add2~9_sumout\,
	cout => \inst9|Add2~10\);

-- Location: FF_X22_Y58_N53
\inst9|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|ALT_INV_sclk_reg~q\,
	asdata => \inst9|Add2~9_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst9|LessThan2~0_combout\,
	sload => VCC,
	ena => \inst9|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|counter\(2));

-- Location: LABCELL_X22_Y58_N9
\inst9|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add2~17_sumout\ = SUM(( \inst9|counter\(3) ) + ( GND ) + ( \inst9|Add2~10\ ))
-- \inst9|Add2~18\ = CARRY(( \inst9|counter\(3) ) + ( GND ) + ( \inst9|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst9|ALT_INV_counter\(3),
	cin => \inst9|Add2~10\,
	sumout => \inst9|Add2~17_sumout\,
	cout => \inst9|Add2~18\);

-- Location: FF_X22_Y58_N29
\inst9|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|ALT_INV_sclk_reg~q\,
	asdata => \inst9|Add2~17_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst9|LessThan2~0_combout\,
	sload => VCC,
	ena => \inst9|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|counter\(3));

-- Location: LABCELL_X22_Y58_N12
\inst9|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add2~21_sumout\ = SUM(( \inst9|counter\(4) ) + ( GND ) + ( \inst9|Add2~18\ ))
-- \inst9|Add2~22\ = CARRY(( \inst9|counter\(4) ) + ( GND ) + ( \inst9|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ALT_INV_counter\(4),
	cin => \inst9|Add2~18\,
	sumout => \inst9|Add2~21_sumout\,
	cout => \inst9|Add2~22\);

-- Location: FF_X22_Y58_N59
\inst9|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|ALT_INV_sclk_reg~q\,
	asdata => \inst9|Add2~21_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst9|LessThan2~0_combout\,
	sload => VCC,
	ena => \inst9|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|counter\(4));

-- Location: LABCELL_X22_Y58_N15
\inst9|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add2~5_sumout\ = SUM(( \inst9|counter\(5) ) + ( GND ) + ( \inst9|Add2~22\ ))
-- \inst9|Add2~6\ = CARRY(( \inst9|counter\(5) ) + ( GND ) + ( \inst9|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_counter\(5),
	cin => \inst9|Add2~22\,
	sumout => \inst9|Add2~5_sumout\,
	cout => \inst9|Add2~6\);

-- Location: FF_X22_Y58_N35
\inst9|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|ALT_INV_sclk_reg~q\,
	asdata => \inst9|Add2~5_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst9|LessThan2~0_combout\,
	sload => VCC,
	ena => \inst9|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|counter\(5));

-- Location: LABCELL_X22_Y58_N18
\inst9|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add2~25_sumout\ = SUM(( \inst9|counter\(6) ) + ( GND ) + ( \inst9|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_counter\(6),
	cin => \inst9|Add2~6\,
	sumout => \inst9|Add2~25_sumout\);

-- Location: FF_X22_Y58_N23
\inst9|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|ALT_INV_sclk_reg~q\,
	asdata => \inst9|Add2~25_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst9|LessThan2~0_combout\,
	sload => VCC,
	ena => \inst9|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|counter\(6));

-- Location: LABCELL_X22_Y58_N54
\inst9|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|LessThan2~0_combout\ = ( \inst9|counter\(5) & ( (\inst9|counter\(4)) # (\inst9|counter\(6)) ) ) # ( !\inst9|counter\(5) & ( \inst9|counter\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_counter\(6),
	datad => \inst9|ALT_INV_counter\(4),
	dataf => \inst9|ALT_INV_counter\(5),
	combout => \inst9|LessThan2~0_combout\);

-- Location: LABCELL_X23_Y58_N6
\inst9|configOK~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|configOK~0_combout\ = ( \inst9|LessThan1~0_combout\ & ( \inst9|LessThan2~0_combout\ & ( ((\Reset~input_o\ & (\inst9|Add1~1_sumout\ & \inst9|state.SEND~q\))) # (\inst9|configOK~reg0_q\) ) ) ) # ( !\inst9|LessThan1~0_combout\ & ( 
-- \inst9|LessThan2~0_combout\ & ( ((\Reset~input_o\ & \inst9|state.SEND~q\)) # (\inst9|configOK~reg0_q\) ) ) ) # ( \inst9|LessThan1~0_combout\ & ( !\inst9|LessThan2~0_combout\ & ( \inst9|configOK~reg0_q\ ) ) ) # ( !\inst9|LessThan1~0_combout\ & ( 
-- !\inst9|LessThan2~0_combout\ & ( \inst9|configOK~reg0_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011011101110011001100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reset~input_o\,
	datab => \inst9|ALT_INV_configOK~reg0_q\,
	datac => \inst9|ALT_INV_Add1~1_sumout\,
	datad => \inst9|ALT_INV_state.SEND~q\,
	datae => \inst9|ALT_INV_LessThan1~0_combout\,
	dataf => \inst9|ALT_INV_LessThan2~0_combout\,
	combout => \inst9|configOK~0_combout\);

-- Location: FF_X23_Y58_N59
\inst9|configOK~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|ALT_INV_sclk_reg~q\,
	asdata => \inst9|configOK~0_combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|configOK~reg0_q\);

-- Location: MLABCELL_X25_Y57_N0
\inst9|Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add4~1_sumout\ = SUM(( \inst9|WaitingBuffer\(0) ) + ( VCC ) + ( !VCC ))
-- \inst9|Add4~2\ = CARRY(( \inst9|WaitingBuffer\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_WaitingBuffer\(0),
	cin => GND,
	sumout => \inst9|Add4~1_sumout\,
	cout => \inst9|Add4~2\);

-- Location: MLABCELL_X25_Y57_N18
\inst9|Add4~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add4~53_sumout\ = SUM(( \inst9|WaitingBuffer\(6) ) + ( GND ) + ( \inst9|Add4~58\ ))
-- \inst9|Add4~54\ = CARRY(( \inst9|WaitingBuffer\(6) ) + ( GND ) + ( \inst9|Add4~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ALT_INV_WaitingBuffer\(6),
	cin => \inst9|Add4~58\,
	sumout => \inst9|Add4~53_sumout\,
	cout => \inst9|Add4~54\);

-- Location: MLABCELL_X25_Y57_N21
\inst9|Add4~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add4~49_sumout\ = SUM(( \inst9|WaitingBuffer\(7) ) + ( GND ) + ( \inst9|Add4~54\ ))
-- \inst9|Add4~50\ = CARRY(( \inst9|WaitingBuffer\(7) ) + ( GND ) + ( \inst9|Add4~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_WaitingBuffer\(7),
	cin => \inst9|Add4~54\,
	sumout => \inst9|Add4~49_sumout\,
	cout => \inst9|Add4~50\);

-- Location: LABCELL_X23_Y57_N15
\inst9|waiting~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|waiting~0_combout\ = ( \inst9|state.INTER~q\ & ( \Reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reset~input_o\,
	dataf => \inst9|ALT_INV_state.INTER~q\,
	combout => \inst9|waiting~0_combout\);

-- Location: FF_X25_Y57_N23
\inst9|WaitingBuffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|sclk_reg~q\,
	d => \inst9|Add4~49_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst9|Equal3~3_combout\,
	ena => \inst9|waiting~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|WaitingBuffer\(7));

-- Location: MLABCELL_X25_Y57_N24
\inst9|Add4~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add4~45_sumout\ = SUM(( \inst9|WaitingBuffer\(8) ) + ( GND ) + ( \inst9|Add4~50\ ))
-- \inst9|Add4~46\ = CARRY(( \inst9|WaitingBuffer\(8) ) + ( GND ) + ( \inst9|Add4~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_WaitingBuffer\(8),
	cin => \inst9|Add4~50\,
	sumout => \inst9|Add4~45_sumout\,
	cout => \inst9|Add4~46\);

-- Location: FF_X25_Y57_N26
\inst9|WaitingBuffer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|sclk_reg~q\,
	d => \inst9|Add4~45_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst9|Equal3~3_combout\,
	ena => \inst9|waiting~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|WaitingBuffer\(8));

-- Location: MLABCELL_X25_Y57_N27
\inst9|Add4~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add4~41_sumout\ = SUM(( \inst9|WaitingBuffer\(9) ) + ( GND ) + ( \inst9|Add4~46\ ))
-- \inst9|Add4~42\ = CARRY(( \inst9|WaitingBuffer\(9) ) + ( GND ) + ( \inst9|Add4~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_WaitingBuffer\(9),
	cin => \inst9|Add4~46\,
	sumout => \inst9|Add4~41_sumout\,
	cout => \inst9|Add4~42\);

-- Location: FF_X25_Y57_N29
\inst9|WaitingBuffer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|sclk_reg~q\,
	d => \inst9|Add4~41_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst9|Equal3~3_combout\,
	ena => \inst9|waiting~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|WaitingBuffer\(9));

-- Location: MLABCELL_X25_Y57_N30
\inst9|Add4~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add4~37_sumout\ = SUM(( \inst9|WaitingBuffer\(10) ) + ( GND ) + ( \inst9|Add4~42\ ))
-- \inst9|Add4~38\ = CARRY(( \inst9|WaitingBuffer\(10) ) + ( GND ) + ( \inst9|Add4~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ALT_INV_WaitingBuffer\(10),
	cin => \inst9|Add4~42\,
	sumout => \inst9|Add4~37_sumout\,
	cout => \inst9|Add4~38\);

-- Location: FF_X25_Y57_N32
\inst9|WaitingBuffer[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|sclk_reg~q\,
	d => \inst9|Add4~37_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst9|Equal3~3_combout\,
	ena => \inst9|waiting~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|WaitingBuffer\(10));

-- Location: MLABCELL_X25_Y57_N33
\inst9|Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add4~33_sumout\ = SUM(( \inst9|WaitingBuffer\(11) ) + ( GND ) + ( \inst9|Add4~38\ ))
-- \inst9|Add4~34\ = CARRY(( \inst9|WaitingBuffer\(11) ) + ( GND ) + ( \inst9|Add4~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_WaitingBuffer\(11),
	cin => \inst9|Add4~38\,
	sumout => \inst9|Add4~33_sumout\,
	cout => \inst9|Add4~34\);

-- Location: FF_X25_Y57_N35
\inst9|WaitingBuffer[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|sclk_reg~q\,
	d => \inst9|Add4~33_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst9|Equal3~3_combout\,
	ena => \inst9|waiting~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|WaitingBuffer\(11));

-- Location: MLABCELL_X25_Y57_N36
\inst9|Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add4~29_sumout\ = SUM(( \inst9|WaitingBuffer\(12) ) + ( GND ) + ( \inst9|Add4~34\ ))
-- \inst9|Add4~30\ = CARRY(( \inst9|WaitingBuffer\(12) ) + ( GND ) + ( \inst9|Add4~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_WaitingBuffer\(12),
	cin => \inst9|Add4~34\,
	sumout => \inst9|Add4~29_sumout\,
	cout => \inst9|Add4~30\);

-- Location: FF_X25_Y57_N38
\inst9|WaitingBuffer[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|sclk_reg~q\,
	d => \inst9|Add4~29_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst9|Equal3~3_combout\,
	ena => \inst9|waiting~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|WaitingBuffer\(12));

-- Location: MLABCELL_X25_Y57_N48
\inst9|Equal3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Equal3~1_combout\ = ( \inst9|WaitingBuffer\(9) & ( !\inst9|WaitingBuffer\(4) & ( (!\inst9|WaitingBuffer\(11) & (!\inst9|WaitingBuffer\(10) & (\inst9|WaitingBuffer\(12) & \inst9|WaitingBuffer\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_WaitingBuffer\(11),
	datab => \inst9|ALT_INV_WaitingBuffer\(10),
	datac => \inst9|ALT_INV_WaitingBuffer\(12),
	datad => \inst9|ALT_INV_WaitingBuffer\(3),
	datae => \inst9|ALT_INV_WaitingBuffer\(9),
	dataf => \inst9|ALT_INV_WaitingBuffer\(4),
	combout => \inst9|Equal3~1_combout\);

-- Location: MLABCELL_X25_Y57_N39
\inst9|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add4~13_sumout\ = SUM(( \inst9|WaitingBuffer\(13) ) + ( GND ) + ( \inst9|Add4~30\ ))
-- \inst9|Add4~14\ = CARRY(( \inst9|WaitingBuffer\(13) ) + ( GND ) + ( \inst9|Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_WaitingBuffer\(13),
	cin => \inst9|Add4~30\,
	sumout => \inst9|Add4~13_sumout\,
	cout => \inst9|Add4~14\);

-- Location: FF_X25_Y57_N41
\inst9|WaitingBuffer[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|sclk_reg~q\,
	d => \inst9|Add4~13_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst9|Equal3~3_combout\,
	ena => \inst9|waiting~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|WaitingBuffer\(13));

-- Location: MLABCELL_X25_Y57_N42
\inst9|Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add4~9_sumout\ = SUM(( \inst9|WaitingBuffer\(14) ) + ( GND ) + ( \inst9|Add4~14\ ))
-- \inst9|Add4~10\ = CARRY(( \inst9|WaitingBuffer\(14) ) + ( GND ) + ( \inst9|Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ALT_INV_WaitingBuffer\(14),
	cin => \inst9|Add4~14\,
	sumout => \inst9|Add4~9_sumout\,
	cout => \inst9|Add4~10\);

-- Location: FF_X25_Y57_N44
\inst9|WaitingBuffer[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|sclk_reg~q\,
	d => \inst9|Add4~9_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst9|Equal3~3_combout\,
	ena => \inst9|waiting~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|WaitingBuffer\(14));

-- Location: MLABCELL_X25_Y57_N45
\inst9|Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add4~5_sumout\ = SUM(( \inst9|WaitingBuffer\(15) ) + ( GND ) + ( \inst9|Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_WaitingBuffer\(15),
	cin => \inst9|Add4~10\,
	sumout => \inst9|Add4~5_sumout\);

-- Location: FF_X25_Y57_N47
\inst9|WaitingBuffer[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|sclk_reg~q\,
	d => \inst9|Add4~5_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst9|Equal3~3_combout\,
	ena => \inst9|waiting~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|WaitingBuffer\(15));

-- Location: LABCELL_X23_Y57_N45
\inst9|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Equal3~0_combout\ = ( !\inst9|WaitingBuffer\(15) & ( (!\inst9|WaitingBuffer\(13) & (!\inst9|WaitingBuffer\(14) & !\inst9|WaitingBuffer\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ALT_INV_WaitingBuffer\(13),
	datac => \inst9|ALT_INV_WaitingBuffer\(14),
	datad => \inst9|ALT_INV_WaitingBuffer\(2),
	dataf => \inst9|ALT_INV_WaitingBuffer\(15),
	combout => \inst9|Equal3~0_combout\);

-- Location: LABCELL_X23_Y57_N21
\inst9|Equal3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Equal3~3_combout\ = ( \inst9|Equal3~1_combout\ & ( \inst9|Equal3~0_combout\ & ( (!\inst9|WaitingBuffer\(0) & \inst9|Equal3~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_WaitingBuffer\(0),
	datad => \inst9|ALT_INV_Equal3~2_combout\,
	datae => \inst9|ALT_INV_Equal3~1_combout\,
	dataf => \inst9|ALT_INV_Equal3~0_combout\,
	combout => \inst9|Equal3~3_combout\);

-- Location: FF_X25_Y57_N2
\inst9|WaitingBuffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|sclk_reg~q\,
	d => \inst9|Add4~1_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst9|Equal3~3_combout\,
	ena => \inst9|waiting~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|WaitingBuffer\(0));

-- Location: MLABCELL_X25_Y57_N3
\inst9|Add4~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add4~61_sumout\ = SUM(( \inst9|WaitingBuffer\(1) ) + ( GND ) + ( \inst9|Add4~2\ ))
-- \inst9|Add4~62\ = CARRY(( \inst9|WaitingBuffer\(1) ) + ( GND ) + ( \inst9|Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_WaitingBuffer\(1),
	cin => \inst9|Add4~2\,
	sumout => \inst9|Add4~61_sumout\,
	cout => \inst9|Add4~62\);

-- Location: FF_X25_Y57_N5
\inst9|WaitingBuffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|sclk_reg~q\,
	d => \inst9|Add4~61_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst9|Equal3~3_combout\,
	ena => \inst9|waiting~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|WaitingBuffer\(1));

-- Location: MLABCELL_X25_Y57_N6
\inst9|Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add4~17_sumout\ = SUM(( \inst9|WaitingBuffer\(2) ) + ( GND ) + ( \inst9|Add4~62\ ))
-- \inst9|Add4~18\ = CARRY(( \inst9|WaitingBuffer\(2) ) + ( GND ) + ( \inst9|Add4~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ALT_INV_WaitingBuffer\(2),
	cin => \inst9|Add4~62\,
	sumout => \inst9|Add4~17_sumout\,
	cout => \inst9|Add4~18\);

-- Location: FF_X25_Y57_N8
\inst9|WaitingBuffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|sclk_reg~q\,
	d => \inst9|Add4~17_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst9|Equal3~3_combout\,
	ena => \inst9|waiting~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|WaitingBuffer\(2));

-- Location: MLABCELL_X25_Y57_N9
\inst9|Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add4~21_sumout\ = SUM(( \inst9|WaitingBuffer\(3) ) + ( GND ) + ( \inst9|Add4~18\ ))
-- \inst9|Add4~22\ = CARRY(( \inst9|WaitingBuffer\(3) ) + ( GND ) + ( \inst9|Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_WaitingBuffer\(3),
	cin => \inst9|Add4~18\,
	sumout => \inst9|Add4~21_sumout\,
	cout => \inst9|Add4~22\);

-- Location: FF_X25_Y57_N11
\inst9|WaitingBuffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|sclk_reg~q\,
	d => \inst9|Add4~21_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst9|Equal3~3_combout\,
	ena => \inst9|waiting~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|WaitingBuffer\(3));

-- Location: MLABCELL_X25_Y57_N12
\inst9|Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add4~25_sumout\ = SUM(( \inst9|WaitingBuffer\(4) ) + ( GND ) + ( \inst9|Add4~22\ ))
-- \inst9|Add4~26\ = CARRY(( \inst9|WaitingBuffer\(4) ) + ( GND ) + ( \inst9|Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ALT_INV_WaitingBuffer\(4),
	cin => \inst9|Add4~22\,
	sumout => \inst9|Add4~25_sumout\,
	cout => \inst9|Add4~26\);

-- Location: FF_X25_Y57_N14
\inst9|WaitingBuffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|sclk_reg~q\,
	d => \inst9|Add4~25_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst9|Equal3~3_combout\,
	ena => \inst9|waiting~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|WaitingBuffer\(4));

-- Location: MLABCELL_X25_Y57_N15
\inst9|Add4~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add4~57_sumout\ = SUM(( \inst9|WaitingBuffer\(5) ) + ( GND ) + ( \inst9|Add4~26\ ))
-- \inst9|Add4~58\ = CARRY(( \inst9|WaitingBuffer\(5) ) + ( GND ) + ( \inst9|Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_WaitingBuffer\(5),
	cin => \inst9|Add4~26\,
	sumout => \inst9|Add4~57_sumout\,
	cout => \inst9|Add4~58\);

-- Location: FF_X25_Y57_N17
\inst9|WaitingBuffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|sclk_reg~q\,
	d => \inst9|Add4~57_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst9|Equal3~3_combout\,
	ena => \inst9|waiting~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|WaitingBuffer\(5));

-- Location: FF_X25_Y57_N20
\inst9|WaitingBuffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|sclk_reg~q\,
	d => \inst9|Add4~53_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst9|Equal3~3_combout\,
	ena => \inst9|waiting~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|WaitingBuffer\(6));

-- Location: MLABCELL_X25_Y57_N54
\inst9|Equal3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Equal3~2_combout\ = ( \inst9|WaitingBuffer\(7) & ( \inst9|WaitingBuffer\(8) & ( (!\inst9|WaitingBuffer\(6) & (!\inst9|WaitingBuffer\(1) & !\inst9|WaitingBuffer\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_WaitingBuffer\(6),
	datac => \inst9|ALT_INV_WaitingBuffer\(1),
	datad => \inst9|ALT_INV_WaitingBuffer\(5),
	datae => \inst9|ALT_INV_WaitingBuffer\(7),
	dataf => \inst9|ALT_INV_WaitingBuffer\(8),
	combout => \inst9|Equal3~2_combout\);

-- Location: LABCELL_X23_Y57_N6
\inst9|WaitingDone~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|WaitingDone~0_combout\ = ( \inst9|Equal3~0_combout\ & ( \inst9|Equal3~1_combout\ & ( (\Reset~input_o\ & (\inst9|state.INTER~q\ & (\inst9|Equal3~2_combout\ & !\inst9|WaitingBuffer\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reset~input_o\,
	datab => \inst9|ALT_INV_state.INTER~q\,
	datac => \inst9|ALT_INV_Equal3~2_combout\,
	datad => \inst9|ALT_INV_WaitingBuffer\(0),
	datae => \inst9|ALT_INV_Equal3~0_combout\,
	dataf => \inst9|ALT_INV_Equal3~1_combout\,
	combout => \inst9|WaitingDone~0_combout\);

-- Location: FF_X23_Y57_N8
\inst9|WaitingDone\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|sclk_reg~q\,
	d => \inst9|WaitingDone~0_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|WaitingDone~q\);

-- Location: LABCELL_X23_Y58_N18
\inst9|needWait~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|needWait~0_combout\ = ( \inst9|Add1~25_sumout\ & ( \inst9|state.SEND~q\ & ( (\Reset~input_o\ & (\inst9|Add1~29_sumout\ & (\inst9|Add1~21_sumout\ & !\inst9|Add1~13_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reset~input_o\,
	datab => \inst9|ALT_INV_Add1~29_sumout\,
	datac => \inst9|ALT_INV_Add1~21_sumout\,
	datad => \inst9|ALT_INV_Add1~13_sumout\,
	datae => \inst9|ALT_INV_Add1~25_sumout\,
	dataf => \inst9|ALT_INV_state.SEND~q\,
	combout => \inst9|needWait~0_combout\);

-- Location: LABCELL_X23_Y58_N54
\inst9|needWait~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|needWait~1_combout\ = ( \inst9|LessThan1~0_combout\ & ( \inst9|Add1~17_sumout\ & ( (!\inst9|needWait~q\ & (((\inst9|needWait~0_combout\ & !\inst9|Add1~1_sumout\)))) # (\inst9|needWait~q\ & ((!\inst9|sendData~0_combout\) # 
-- ((!\inst9|Add1~1_sumout\)))) ) ) ) # ( !\inst9|LessThan1~0_combout\ & ( \inst9|Add1~17_sumout\ & ( (\inst9|needWait~q\ & !\inst9|sendData~0_combout\) ) ) ) # ( \inst9|LessThan1~0_combout\ & ( !\inst9|Add1~17_sumout\ & ( (\inst9|needWait~q\ & 
-- ((!\inst9|sendData~0_combout\) # (!\inst9|Add1~1_sumout\))) ) ) ) # ( !\inst9|LessThan1~0_combout\ & ( !\inst9|Add1~17_sumout\ & ( (\inst9|needWait~q\ & !\inst9|sendData~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010101010100010001000100010001000101111101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_needWait~q\,
	datab => \inst9|ALT_INV_sendData~0_combout\,
	datac => \inst9|ALT_INV_needWait~0_combout\,
	datad => \inst9|ALT_INV_Add1~1_sumout\,
	datae => \inst9|ALT_INV_LessThan1~0_combout\,
	dataf => \inst9|ALT_INV_Add1~17_sumout\,
	combout => \inst9|needWait~1_combout\);

-- Location: FF_X23_Y58_N5
\inst9|needWait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|ALT_INV_sclk_reg~q\,
	asdata => \inst9|needWait~1_combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|needWait~q\);

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

-- Location: FF_X23_Y58_N10
\inst9|state.SEND~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|sclk_reg~q\,
	asdata => \inst9|nextState.SEND~q\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|state.SEND~DUPLICATE_q\);

-- Location: LABCELL_X22_Y57_N6
\inst9|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Selector2~0_combout\ = ( \Run~input_o\ & ( \inst9|state.SEND~DUPLICATE_q\ & ( (!\inst9|WaitingDone~q\ & (!\inst9|configOK~reg0_q\ & \inst9|state.INTER~q\)) ) ) ) # ( !\Run~input_o\ & ( \inst9|state.SEND~DUPLICATE_q\ & ( (!\inst9|configOK~reg0_q\ & 
-- (((!\inst9|WaitingDone~q\ & \inst9|state.INTER~q\)) # (\inst9|needWait~q\))) ) ) ) # ( \Run~input_o\ & ( !\inst9|state.SEND~DUPLICATE_q\ & ( (!\inst9|WaitingDone~q\ & (!\inst9|configOK~reg0_q\ & \inst9|state.INTER~q\)) ) ) ) # ( !\Run~input_o\ & ( 
-- !\inst9|state.SEND~DUPLICATE_q\ & ( (!\inst9|WaitingDone~q\ & (!\inst9|configOK~reg0_q\ & \inst9|state.INTER~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000110000101100000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_WaitingDone~q\,
	datab => \inst9|ALT_INV_needWait~q\,
	datac => \inst9|ALT_INV_configOK~reg0_q\,
	datad => \inst9|ALT_INV_state.INTER~q\,
	datae => \ALT_INV_Run~input_o\,
	dataf => \inst9|ALT_INV_state.SEND~DUPLICATE_q\,
	combout => \inst9|Selector2~0_combout\);

-- Location: FF_X22_Y57_N7
\inst9|nextState.INTER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|ALT_INV_sclk_reg~q\,
	d => \inst9|Selector2~0_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|nextState.INTER~q\);

-- Location: FF_X23_Y57_N56
\inst9|state.INTER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|sclk_reg~q\,
	asdata => \inst9|nextState.INTER~q\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|state.INTER~q\);

-- Location: LABCELL_X22_Y57_N15
\inst9|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Selector4~0_combout\ = ( \inst9|state.SEND~DUPLICATE_q\ & ( (!\inst9|configOK~reg0_q\ & (\inst9|state.DONE~q\ & ((!\Run~input_o\)))) # (\inst9|configOK~reg0_q\ & (((!\Run~input_o\) # (\inst9|state.INTER~q\)))) ) ) # ( 
-- !\inst9|state.SEND~DUPLICATE_q\ & ( (!\inst9|configOK~reg0_q\ & (\inst9|state.DONE~q\ & ((!\Run~input_o\)))) # (\inst9|configOK~reg0_q\ & (((\inst9|state.DONE~q\ & !\Run~input_o\)) # (\inst9|state.INTER~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100000101001101110000010101110111000001010111011100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_configOK~reg0_q\,
	datab => \inst9|ALT_INV_state.DONE~q\,
	datac => \inst9|ALT_INV_state.INTER~q\,
	datad => \ALT_INV_Run~input_o\,
	dataf => \inst9|ALT_INV_state.SEND~DUPLICATE_q\,
	combout => \inst9|Selector4~0_combout\);

-- Location: FF_X22_Y57_N16
\inst9|nextState.DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|ALT_INV_sclk_reg~q\,
	d => \inst9|Selector4~0_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|nextState.DONE~q\);

-- Location: FF_X23_Y57_N38
\inst9|state.DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|sclk_reg~q\,
	asdata => \inst9|nextState.DONE~q\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|state.DONE~q\);

-- Location: LABCELL_X22_Y57_N12
\inst9|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Selector0~0_combout\ = ( \inst9|state.SEND~DUPLICATE_q\ & ( (!\Run~input_o\ & ((!\inst9|configOK~reg0_q\) # (\inst9|state.IDLE~q\))) ) ) # ( !\inst9|state.SEND~DUPLICATE_q\ & ( (!\inst9|state.IDLE~q\ & (!\inst9|configOK~reg0_q\ & 
-- ((!\Run~input_o\)))) # (\inst9|state.IDLE~q\ & (((!\inst9|state.DONE~q\) # (!\Run~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111100001100101011110000110010101111000000001010111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_configOK~reg0_q\,
	datab => \inst9|ALT_INV_state.DONE~q\,
	datac => \inst9|ALT_INV_state.IDLE~q\,
	datad => \ALT_INV_Run~input_o\,
	dataf => \inst9|ALT_INV_state.SEND~DUPLICATE_q\,
	combout => \inst9|Selector0~0_combout\);

-- Location: FF_X22_Y57_N13
\inst9|nextState.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|ALT_INV_sclk_reg~q\,
	d => \inst9|Selector0~0_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|nextState.IDLE~q\);

-- Location: FF_X23_Y57_N11
\inst9|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|sclk_reg~q\,
	asdata => \inst9|nextState.IDLE~q\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|state.IDLE~q\);

-- Location: LABCELL_X23_Y57_N54
\inst9|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Selector3~0_combout\ = (\inst9|WaitingDone~q\ & \inst9|state.INTER~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ALT_INV_WaitingDone~q\,
	datad => \inst9|ALT_INV_state.INTER~q\,
	combout => \inst9|Selector3~0_combout\);

-- Location: LABCELL_X23_Y57_N42
\inst9|discardBuffer~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|discardBuffer~0_combout\ = ( !\inst9|discardBuffer~q\ & ( \inst9|state.DISCARD~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_state.DISCARD~q\,
	dataf => \inst9|ALT_INV_discardBuffer~q\,
	combout => \inst9|discardBuffer~0_combout\);

-- Location: FF_X23_Y57_N17
\inst9|discardBuffer\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|internalClock~q\,
	asdata => \inst9|discardBuffer~0_combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|discardBuffer~q\);

-- Location: LABCELL_X23_Y57_N33
\inst9|discarded~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|discarded~0_combout\ = ( \inst9|discarded~q\ & ( (!\inst9|state.INTER~q\) # (!\Reset~input_o\) ) ) # ( !\inst9|discarded~q\ & ( (\inst9|discardBuffer~q\ & ((!\inst9|state.INTER~q\) # (!\Reset~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011100000111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_state.INTER~q\,
	datab => \ALT_INV_Reset~input_o\,
	datac => \inst9|ALT_INV_discardBuffer~q\,
	dataf => \inst9|ALT_INV_discarded~q\,
	combout => \inst9|discarded~0_combout\);

-- Location: FF_X23_Y57_N26
\inst9|discarded\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|internalClock~q\,
	asdata => \inst9|discarded~0_combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|discarded~q\);

-- Location: LABCELL_X22_Y57_N30
\inst9|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Selector3~1_combout\ = ( \inst9|Selector3~0_combout\ & ( \inst9|discarded~q\ & ( !\inst9|configOK~reg0_q\ ) ) ) # ( !\inst9|Selector3~0_combout\ & ( \inst9|discarded~q\ & ( (!\inst9|state.IDLE~q\ & (!\inst9|configOK~reg0_q\ & !\Run~input_o\)) ) ) ) 
-- # ( \inst9|Selector3~0_combout\ & ( !\inst9|discarded~q\ & ( (!\inst9|configOK~reg0_q\) # (\inst9|state.DISCARD~q\) ) ) ) # ( !\inst9|Selector3~0_combout\ & ( !\inst9|discarded~q\ & ( ((!\inst9|state.IDLE~q\ & (!\inst9|configOK~reg0_q\ & !\Run~input_o\))) 
-- # (\inst9|state.DISCARD~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010101010101111101011111010111000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_state.DISCARD~q\,
	datab => \inst9|ALT_INV_state.IDLE~q\,
	datac => \inst9|ALT_INV_configOK~reg0_q\,
	datad => \ALT_INV_Run~input_o\,
	datae => \inst9|ALT_INV_Selector3~0_combout\,
	dataf => \inst9|ALT_INV_discarded~q\,
	combout => \inst9|Selector3~1_combout\);

-- Location: FF_X22_Y57_N31
\inst9|nextState.DISCARD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|ALT_INV_sclk_reg~q\,
	d => \inst9|Selector3~1_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|nextState.DISCARD~q\);

-- Location: FF_X23_Y57_N23
\inst9|state.DISCARD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|sclk_reg~q\,
	asdata => \inst9|nextState.DISCARD~q\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|state.DISCARD~q\);

-- Location: LABCELL_X22_Y57_N0
\inst9|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Selector1~0_combout\ = ( \Run~input_o\ & ( \inst9|discarded~q\ & ( \inst9|state.DISCARD~q\ ) ) ) # ( !\Run~input_o\ & ( \inst9|discarded~q\ & ( ((!\inst9|needWait~q\ & (!\inst9|configOK~reg0_q\ & \inst9|state.SEND~DUPLICATE_q\))) # 
-- (\inst9|state.DISCARD~q\) ) ) ) # ( !\Run~input_o\ & ( !\inst9|discarded~q\ & ( (!\inst9|needWait~q\ & (!\inst9|configOK~reg0_q\ & \inst9|state.SEND~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000000000000001010101110101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_state.DISCARD~q\,
	datab => \inst9|ALT_INV_needWait~q\,
	datac => \inst9|ALT_INV_configOK~reg0_q\,
	datad => \inst9|ALT_INV_state.SEND~DUPLICATE_q\,
	datae => \ALT_INV_Run~input_o\,
	dataf => \inst9|ALT_INV_discarded~q\,
	combout => \inst9|Selector1~0_combout\);

-- Location: FF_X22_Y57_N2
\inst9|nextState.SEND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|ALT_INV_sclk_reg~q\,
	d => \inst9|Selector1~0_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|nextState.SEND~q\);

-- Location: FF_X23_Y58_N11
\inst9|state.SEND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|sclk_reg~q\,
	asdata => \inst9|nextState.SEND~q\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|state.SEND~q\);

-- Location: LABCELL_X23_Y58_N15
\inst9|sendData~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|sendData~0_combout\ = ( \inst9|state.SEND~q\ & ( \Reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Reset~input_o\,
	dataf => \inst9|ALT_INV_state.SEND~q\,
	combout => \inst9|sendData~0_combout\);

-- Location: FF_X22_Y57_N20
\inst9|dataIndex[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|ALT_INV_sclk_reg~q\,
	asdata => \inst9|Add1~9_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst9|LessThan1~1_combout\,
	sload => VCC,
	ena => \inst9|sendData~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|dataIndex\(6));

-- Location: LABCELL_X23_Y58_N12
\inst9|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|LessThan1~1_combout\ = ( \inst9|Add1~17_sumout\ & ( (((\inst9|Add1~5_sumout\) # (\inst9|Add1~1_sumout\)) # (\inst9|Add1~13_sumout\)) # (\inst9|Add1~9_sumout\) ) ) # ( !\inst9|Add1~17_sumout\ & ( ((\inst9|Add1~5_sumout\) # (\inst9|Add1~1_sumout\)) # 
-- (\inst9|Add1~9_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111111010111111111111101111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_Add1~9_sumout\,
	datab => \inst9|ALT_INV_Add1~13_sumout\,
	datac => \inst9|ALT_INV_Add1~1_sumout\,
	datad => \inst9|ALT_INV_Add1~5_sumout\,
	dataf => \inst9|ALT_INV_Add1~17_sumout\,
	combout => \inst9|LessThan1~1_combout\);

-- Location: FF_X25_Y58_N35
\inst9|dataIndex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|ALT_INV_sclk_reg~q\,
	asdata => \inst9|Add1~29_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst9|LessThan1~1_combout\,
	sload => VCC,
	ena => \inst9|sendData~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|dataIndex\(0));

-- Location: FF_X25_Y58_N23
\inst9|dataIndex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|ALT_INV_sclk_reg~q\,
	asdata => \inst9|Add1~25_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst9|LessThan1~1_combout\,
	sload => VCC,
	ena => \inst9|sendData~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|dataIndex\(1));

-- Location: LABCELL_X22_Y58_N42
\inst9|sdio_do~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|sdio_do~0_combout\ = ( \inst9|counter\(4) & ( \inst9|dataIndex\(0) & ( (\inst9|counter\(6)) # (\inst9|dataIndex\(1)) ) ) ) # ( !\inst9|counter\(4) & ( \inst9|dataIndex\(0) & ( (!\inst9|dataIndex\(1) & \inst9|counter\(6)) ) ) ) # ( 
-- \inst9|counter\(4) & ( !\inst9|dataIndex\(0) & ( (\inst9|counter\(5) & \inst9|dataIndex\(1)) ) ) ) # ( !\inst9|counter\(4) & ( !\inst9|dataIndex\(0) & ( (\inst9|counter\(5) & \inst9|dataIndex\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_counter\(5),
	datab => \inst9|ALT_INV_dataIndex\(1),
	datac => \inst9|ALT_INV_counter\(6),
	datae => \inst9|ALT_INV_counter\(4),
	dataf => \inst9|ALT_INV_dataIndex\(0),
	combout => \inst9|sdio_do~0_combout\);

-- Location: LABCELL_X22_Y58_N30
\inst9|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux0~0_combout\ = ( \inst9|counter\(0) & ( \inst9|dataIndex\(0) & ( (\inst9|counter\(2)) # (\inst9|dataIndex\(1)) ) ) ) # ( !\inst9|counter\(0) & ( \inst9|dataIndex\(0) & ( (!\inst9|dataIndex\(1) & \inst9|counter\(2)) ) ) ) # ( \inst9|counter\(0) & 
-- ( !\inst9|dataIndex\(0) & ( (!\inst9|dataIndex\(1) & (\inst9|counter\(3))) # (\inst9|dataIndex\(1) & ((\inst9|counter\(1)))) ) ) ) # ( !\inst9|counter\(0) & ( !\inst9|dataIndex\(0) & ( (!\inst9|dataIndex\(1) & (\inst9|counter\(3))) # (\inst9|dataIndex\(1) 
-- & ((\inst9|counter\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_counter\(3),
	datab => \inst9|ALT_INV_dataIndex\(1),
	datac => \inst9|ALT_INV_counter\(2),
	datad => \inst9|ALT_INV_counter\(1),
	datae => \inst9|ALT_INV_counter\(0),
	dataf => \inst9|ALT_INV_dataIndex\(0),
	combout => \inst9|Mux0~0_combout\);

-- Location: LABCELL_X22_Y57_N36
\inst9|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Equal0~0_combout\ = ( !\inst9|dataIndex\(5) & ( (!\inst9|dataIndex\(7) & (!\inst9|dataIndex\(3) & (!\inst9|dataIndex\(6) & !\inst9|dataIndex\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_dataIndex\(7),
	datab => \inst9|ALT_INV_dataIndex\(3),
	datac => \inst9|ALT_INV_dataIndex\(6),
	datad => \inst9|ALT_INV_dataIndex\(4),
	dataf => \inst9|ALT_INV_dataIndex\(5),
	combout => \inst9|Equal0~0_combout\);

-- Location: MLABCELL_X25_Y58_N12
\inst9|Mux1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux1~5_combout\ = ( \inst9|dataIndex\(0) & ( (!\inst9|counter\(1) & (!\inst9|counter\(0) $ (((\inst9|dataIndex\(1) & !\inst9|dataIndex\(2)))))) # (\inst9|counter\(1) & (!\inst9|counter\(0) & (!\inst9|dataIndex\(1) $ (!\inst9|dataIndex\(2))))) ) ) # 
-- ( !\inst9|dataIndex\(0) & ( (!\inst9|counter\(0) & (\inst9|dataIndex\(1) & (\inst9|counter\(1) & \inst9|dataIndex\(2)))) # (\inst9|counter\(0) & (((\inst9|dataIndex\(2)) # (\inst9|counter\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110111000000110011011110010100110010001001010011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_dataIndex\(1),
	datab => \inst9|ALT_INV_counter\(0),
	datac => \inst9|ALT_INV_counter\(1),
	datad => \inst9|ALT_INV_dataIndex\(2),
	dataf => \inst9|ALT_INV_dataIndex\(0),
	combout => \inst9|Mux1~5_combout\);

-- Location: MLABCELL_X25_Y58_N15
\inst9|Mux1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux1~4_combout\ = ( \inst9|dataIndex\(0) & ( (!\inst9|dataIndex\(1) & (\inst9|dataIndex\(3) & \inst9|dataIndex\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_dataIndex\(1),
	datac => \inst9|ALT_INV_dataIndex\(3),
	datad => \inst9|ALT_INV_dataIndex\(2),
	dataf => \inst9|ALT_INV_dataIndex\(0),
	combout => \inst9|Mux1~4_combout\);

-- Location: MLABCELL_X25_Y58_N18
\inst9|Mux1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux1~3_combout\ = ( !\inst9|dataIndex\(2) & ( !\inst9|dataIndex\(0) & ( (!\inst9|counter\(1) & (\inst9|dataIndex\(3) & (!\inst9|dataIndex\(1) & \inst9|counter\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_counter\(1),
	datab => \inst9|ALT_INV_dataIndex\(3),
	datac => \inst9|ALT_INV_dataIndex\(1),
	datad => \inst9|ALT_INV_counter\(0),
	datae => \inst9|ALT_INV_dataIndex\(2),
	dataf => \inst9|ALT_INV_dataIndex\(0),
	combout => \inst9|Mux1~3_combout\);

-- Location: MLABCELL_X25_Y58_N30
\inst9|Mux1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux1~6_combout\ = ( \inst9|dataIndex\(2) & ( !\inst9|counter\(1) & ( (!\inst9|dataIndex\(0) & (!\inst9|counter\(0) & (\inst9|dataIndex\(1)))) # (\inst9|dataIndex\(0) & (!\inst9|dataIndex\(1) & ((!\inst9|counter\(0)) # (!\inst9|dataIndex\(3))))) ) ) 
-- ) # ( !\inst9|dataIndex\(2) & ( !\inst9|counter\(1) & ( (!\inst9|counter\(0) & !\inst9|dataIndex\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000010110000100100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_dataIndex\(0),
	datab => \inst9|ALT_INV_counter\(0),
	datac => \inst9|ALT_INV_dataIndex\(1),
	datad => \inst9|ALT_INV_dataIndex\(3),
	datae => \inst9|ALT_INV_dataIndex\(2),
	dataf => \inst9|ALT_INV_counter\(1),
	combout => \inst9|Mux1~6_combout\);

-- Location: MLABCELL_X25_Y58_N24
\inst9|Mux1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux1~7_combout\ = ( \inst9|Mux1~3_combout\ & ( \inst9|Mux1~6_combout\ & ( (!\inst9|counter\(5) & (((!\inst9|counter\(2)) # (\inst9|Mux1~4_combout\)))) # (\inst9|counter\(5) & (((\inst9|counter\(2))) # (\inst9|Mux1~5_combout\))) ) ) ) # ( 
-- !\inst9|Mux1~3_combout\ & ( \inst9|Mux1~6_combout\ & ( (!\inst9|counter\(5) & (((\inst9|counter\(2) & \inst9|Mux1~4_combout\)))) # (\inst9|counter\(5) & (((\inst9|counter\(2))) # (\inst9|Mux1~5_combout\))) ) ) ) # ( \inst9|Mux1~3_combout\ & ( 
-- !\inst9|Mux1~6_combout\ & ( (!\inst9|counter\(5) & (((!\inst9|counter\(2)) # (\inst9|Mux1~4_combout\)))) # (\inst9|counter\(5) & (\inst9|Mux1~5_combout\ & (!\inst9|counter\(2)))) ) ) ) # ( !\inst9|Mux1~3_combout\ & ( !\inst9|Mux1~6_combout\ & ( 
-- (!\inst9|counter\(5) & (((\inst9|counter\(2) & \inst9|Mux1~4_combout\)))) # (\inst9|counter\(5) & (\inst9|Mux1~5_combout\ & (!\inst9|counter\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010101100001011101000010101000111111011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_counter\(5),
	datab => \inst9|ALT_INV_Mux1~5_combout\,
	datac => \inst9|ALT_INV_counter\(2),
	datad => \inst9|ALT_INV_Mux1~4_combout\,
	datae => \inst9|ALT_INV_Mux1~3_combout\,
	dataf => \inst9|ALT_INV_Mux1~6_combout\,
	combout => \inst9|Mux1~7_combout\);

-- Location: MLABCELL_X25_Y58_N6
\inst9|Mux1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux1~8_combout\ = ( !\inst9|counter\(2) & ( (\inst9|counter\(5) & (!\inst9|counter\(0) & !\inst9|counter\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_counter\(5),
	datab => \inst9|ALT_INV_counter\(0),
	datac => \inst9|ALT_INV_counter\(1),
	dataf => \inst9|ALT_INV_counter\(2),
	combout => \inst9|Mux1~8_combout\);

-- Location: LABCELL_X22_Y58_N39
\inst9|Mux1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux1~13_combout\ = ( \inst9|counter\(0) & ( \inst9|dataIndex\(0) & ( (!\inst9|dataIndex\(2) & (!\inst9|dataIndex\(3) & (!\inst9|counter\(1) $ (\inst9|counter\(2))))) # (\inst9|dataIndex\(2) & (\inst9|dataIndex\(3) & (!\inst9|counter\(1) & 
-- !\inst9|counter\(2)))) ) ) ) # ( !\inst9|counter\(0) & ( \inst9|dataIndex\(0) & ( (\inst9|dataIndex\(2) & (!\inst9|dataIndex\(3) & (!\inst9|counter\(1) & !\inst9|counter\(2)))) ) ) ) # ( \inst9|counter\(0) & ( !\inst9|dataIndex\(0) & ( 
-- (\inst9|dataIndex\(2) & (\inst9|dataIndex\(3) & (\inst9|counter\(1) & !\inst9|counter\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000001000000000000001001000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_dataIndex\(2),
	datab => \inst9|ALT_INV_dataIndex\(3),
	datac => \inst9|ALT_INV_counter\(1),
	datad => \inst9|ALT_INV_counter\(2),
	datae => \inst9|ALT_INV_counter\(0),
	dataf => \inst9|ALT_INV_dataIndex\(0),
	combout => \inst9|Mux1~13_combout\);

-- Location: LABCELL_X22_Y58_N48
\inst9|Mux1~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux1~14_combout\ = ( \inst9|counter\(0) & ( \inst9|counter\(2) & ( (\inst9|counter\(1) & (\inst9|dataIndex\(0) & \inst9|dataIndex\(3))) ) ) ) # ( !\inst9|counter\(0) & ( \inst9|counter\(2) & ( (\inst9|counter\(1) & \inst9|dataIndex\(0)) ) ) ) # ( 
-- !\inst9|counter\(0) & ( !\inst9|counter\(2) & ( (!\inst9|counter\(1) & ((!\inst9|dataIndex\(2) & (!\inst9|dataIndex\(0) & \inst9|dataIndex\(3))) # (\inst9|dataIndex\(2) & ((!\inst9|dataIndex\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010000000000000000000000000000011000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_dataIndex\(2),
	datab => \inst9|ALT_INV_counter\(1),
	datac => \inst9|ALT_INV_dataIndex\(0),
	datad => \inst9|ALT_INV_dataIndex\(3),
	datae => \inst9|ALT_INV_counter\(0),
	dataf => \inst9|ALT_INV_counter\(2),
	combout => \inst9|Mux1~14_combout\);

-- Location: LABCELL_X22_Y58_N57
\inst9|Mux1~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux1~15_combout\ = ( \inst9|Mux1~14_combout\ & ( (\inst9|Mux1~13_combout\) # (\inst9|dataIndex\(1)) ) ) # ( !\inst9|Mux1~14_combout\ & ( (!\inst9|dataIndex\(1) & \inst9|Mux1~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ALT_INV_dataIndex\(1),
	datac => \inst9|ALT_INV_Mux1~13_combout\,
	dataf => \inst9|ALT_INV_Mux1~14_combout\,
	combout => \inst9|Mux1~15_combout\);

-- Location: LABCELL_X22_Y58_N24
\inst9|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux1~1_combout\ = ( \inst9|dataIndex\(2) & ( \inst9|dataIndex\(0) & ( (!\inst9|counter\(5) & ((!\inst9|counter\(0)))) # (\inst9|counter\(5) & ((\inst9|counter\(0)) # (\inst9|dataIndex\(1)))) ) ) ) # ( !\inst9|dataIndex\(2) & ( \inst9|dataIndex\(0) 
-- & ( (!\inst9|counter\(5) & (!\inst9|counter\(0) & ((!\inst9|dataIndex\(1)) # (!\inst9|dataIndex\(3))))) # (\inst9|counter\(5) & (!\inst9|dataIndex\(1) $ (((\inst9|counter\(0)))))) ) ) ) # ( \inst9|dataIndex\(2) & ( !\inst9|dataIndex\(0) & ( 
-- (!\inst9|counter\(0) & ((!\inst9|dataIndex\(1)) # ((!\inst9|counter\(5) & !\inst9|dataIndex\(3))))) ) ) ) # ( !\inst9|dataIndex\(2) & ( !\inst9|dataIndex\(0) & ( (!\inst9|counter\(5) & (!\inst9|counter\(0) & ((!\inst9|dataIndex\(1)) # 
-- (!\inst9|dataIndex\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100000000000111011000000000011101100000100011011101101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_counter\(5),
	datab => \inst9|ALT_INV_dataIndex\(1),
	datac => \inst9|ALT_INV_dataIndex\(3),
	datad => \inst9|ALT_INV_counter\(0),
	datae => \inst9|ALT_INV_dataIndex\(2),
	dataf => \inst9|ALT_INV_dataIndex\(0),
	combout => \inst9|Mux1~1_combout\);

-- Location: MLABCELL_X25_Y58_N3
\inst9|Mux1~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux1~16_combout\ = ( \inst9|dataIndex\(2) & ( \inst9|dataIndex\(0) & ( (!\inst9|dataIndex\(1) & (\inst9|counter\(0) & ((\inst9|counter\(5))))) # (\inst9|dataIndex\(1) & (((\inst9|counter\(0) & !\inst9|dataIndex\(3))) # (\inst9|counter\(5)))) ) ) ) 
-- # ( !\inst9|dataIndex\(2) & ( \inst9|dataIndex\(0) & ( (!\inst9|dataIndex\(1) & (\inst9|counter\(0) & ((\inst9|counter\(5)) # (\inst9|dataIndex\(3))))) # (\inst9|dataIndex\(1) & (((\inst9|counter\(5))))) ) ) ) # ( \inst9|dataIndex\(2) & ( 
-- !\inst9|dataIndex\(0) & ( \inst9|counter\(5) ) ) ) # ( !\inst9|dataIndex\(2) & ( !\inst9|dataIndex\(0) & ( (\inst9|counter\(0) & ((\inst9|counter\(5)) # (\inst9|dataIndex\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000001111111100000010011101110001000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_dataIndex\(1),
	datab => \inst9|ALT_INV_counter\(0),
	datac => \inst9|ALT_INV_dataIndex\(3),
	datad => \inst9|ALT_INV_counter\(5),
	datae => \inst9|ALT_INV_dataIndex\(2),
	dataf => \inst9|ALT_INV_dataIndex\(0),
	combout => \inst9|Mux1~16_combout\);

-- Location: MLABCELL_X25_Y58_N9
\inst9|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux1~0_combout\ = ( \inst9|dataIndex\(0) & ( (!\inst9|counter\(5) & (!\inst9|counter\(0))) # (\inst9|counter\(5) & (\inst9|counter\(0) & !\inst9|dataIndex\(2))) ) ) # ( !\inst9|dataIndex\(0) & ( (!\inst9|counter\(5) & (!\inst9|counter\(0))) # 
-- (\inst9|counter\(5) & (\inst9|counter\(0) & ((\inst9|dataIndex\(2)) # (\inst9|dataIndex\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100110011001100010011001100110011001100010001001100110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_counter\(5),
	datab => \inst9|ALT_INV_counter\(0),
	datac => \inst9|ALT_INV_dataIndex\(1),
	datad => \inst9|ALT_INV_dataIndex\(2),
	dataf => \inst9|ALT_INV_dataIndex\(0),
	combout => \inst9|Mux1~0_combout\);

-- Location: MLABCELL_X25_Y58_N42
\inst9|Mux1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux1~17_combout\ = ( \inst9|dataIndex\(2) & ( \inst9|counter\(0) & ( (!\inst9|counter\(5) & ((!\inst9|dataIndex\(1) & (\inst9|dataIndex\(0) & !\inst9|dataIndex\(3))) # (\inst9|dataIndex\(1) & (!\inst9|dataIndex\(0) $ (\inst9|dataIndex\(3)))))) ) ) 
-- ) # ( !\inst9|dataIndex\(2) & ( \inst9|counter\(0) & ( (!\inst9|counter\(5) & (\inst9|dataIndex\(1) & (\inst9|dataIndex\(0) & \inst9|dataIndex\(3)))) ) ) ) # ( \inst9|dataIndex\(2) & ( !\inst9|counter\(0) & ( (!\inst9|dataIndex\(1) & ((!\inst9|counter\(5) 
-- & ((!\inst9|dataIndex\(3)))) # (\inst9|counter\(5) & (\inst9|dataIndex\(0) & \inst9|dataIndex\(3))))) ) ) ) # ( !\inst9|dataIndex\(2) & ( !\inst9|counter\(0) & ( (!\inst9|counter\(5) & (!\inst9|dataIndex\(3) & (!\inst9|dataIndex\(1) $ 
-- (\inst9|dataIndex\(0))))) # (\inst9|counter\(5) & (\inst9|dataIndex\(1) & (!\inst9|dataIndex\(0) & \inst9|dataIndex\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000010000100010000000010000000000000000100010100000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_counter\(5),
	datab => \inst9|ALT_INV_dataIndex\(1),
	datac => \inst9|ALT_INV_dataIndex\(0),
	datad => \inst9|ALT_INV_dataIndex\(3),
	datae => \inst9|ALT_INV_dataIndex\(2),
	dataf => \inst9|ALT_INV_counter\(0),
	combout => \inst9|Mux1~17_combout\);

-- Location: MLABCELL_X25_Y58_N54
\inst9|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux1~2_combout\ = ( \inst9|Mux1~17_combout\ & ( \inst9|counter\(1) & ( (!\inst9|counter\(2) & ((\inst9|Mux1~16_combout\))) # (\inst9|counter\(2) & (!\inst9|Mux1~1_combout\)) ) ) ) # ( !\inst9|Mux1~17_combout\ & ( \inst9|counter\(1) & ( 
-- (!\inst9|counter\(2) & ((\inst9|Mux1~16_combout\))) # (\inst9|counter\(2) & (!\inst9|Mux1~1_combout\)) ) ) ) # ( \inst9|Mux1~17_combout\ & ( !\inst9|counter\(1) & ( (!\inst9|counter\(2)) # (\inst9|Mux1~0_combout\) ) ) ) # ( !\inst9|Mux1~17_combout\ & ( 
-- !\inst9|counter\(1) & ( (\inst9|counter\(2) & \inst9|Mux1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111101001110010011100100111001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_counter\(2),
	datab => \inst9|ALT_INV_Mux1~1_combout\,
	datac => \inst9|ALT_INV_Mux1~16_combout\,
	datad => \inst9|ALT_INV_Mux1~0_combout\,
	datae => \inst9|ALT_INV_Mux1~17_combout\,
	dataf => \inst9|ALT_INV_counter\(1),
	combout => \inst9|Mux1~2_combout\);

-- Location: MLABCELL_X25_Y58_N36
\inst9|Mux1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux1~9_combout\ = ( !\inst9|counter\(4) & ( (((!\inst9|counter\(3) & ((\inst9|Mux1~2_combout\))) # (\inst9|counter\(3) & (\inst9|Mux1~7_combout\)))) ) ) # ( \inst9|counter\(4) & ( ((!\inst9|counter\(3) & (\inst9|Mux1~8_combout\)) # 
-- (\inst9|counter\(3) & (((!\inst9|counter\(5) & \inst9|Mux1~15_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_Mux1~7_combout\,
	datab => \inst9|ALT_INV_Mux1~8_combout\,
	datac => \inst9|ALT_INV_counter\(5),
	datad => \inst9|ALT_INV_Mux1~15_combout\,
	datae => \inst9|ALT_INV_counter\(4),
	dataf => \inst9|ALT_INV_counter\(3),
	datag => \inst9|ALT_INV_Mux1~2_combout\,
	combout => \inst9|Mux1~9_combout\);

-- Location: MLABCELL_X25_Y58_N48
\inst9|sdio_do~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|sdio_do~1_combout\ = ( !\inst9|Equal0~0_combout\ & ( (((\inst9|Mux1~9_combout\))) ) ) # ( \inst9|Equal0~0_combout\ & ( (!\inst9|dataIndex\(2) & (\inst9|sdio_do~0_combout\ & (((\inst9|dataIndex\(0))) # (\inst9|dataIndex\(1))))) # 
-- (\inst9|dataIndex\(2) & ((((\inst9|Mux0~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111000100000001111100001111000011110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_dataIndex\(1),
	datab => \inst9|ALT_INV_sdio_do~0_combout\,
	datac => \inst9|ALT_INV_dataIndex\(2),
	datad => \inst9|ALT_INV_Mux0~0_combout\,
	datae => \inst9|ALT_INV_Equal0~0_combout\,
	dataf => \inst9|ALT_INV_dataIndex\(0),
	datag => \inst9|ALT_INV_Mux1~9_combout\,
	combout => \inst9|sdio_do~1_combout\);

-- Location: LABCELL_X22_Y57_N39
\inst9|sdio_oe~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|sdio_oe~1_combout\ = (!\inst9|Equal0~0_combout\) # (\inst9|nextState.SEND~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_Equal0~0_combout\,
	datad => \inst9|ALT_INV_nextState.SEND~q\,
	combout => \inst9|sdio_oe~1_combout\);

-- Location: LABCELL_X23_Y57_N57
\inst9|SCLK~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|SCLK~0_combout\ = (\inst9|sclk_reg~q\ & \inst9|state.SEND~DUPLICATE_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_sclk_reg~q\,
	datac => \inst9|ALT_INV_state.SEND~DUPLICATE_q\,
	combout => \inst9|SCLK~0_combout\);

-- Location: LABCELL_X23_Y57_N30
\inst9|SDENB~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|SDENB~0_combout\ = ( \Reset~input_o\ & ( (!\inst9|state.DISCARD~q\ & !\inst9|state.SEND~DUPLICATE_q\) ) ) # ( !\Reset~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_state.DISCARD~q\,
	datad => \inst9|ALT_INV_state.SEND~DUPLICATE_q\,
	dataf => \ALT_INV_Reset~input_o\,
	combout => \inst9|SDENB~0_combout\);

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

-- Location: FF_X55_Y60_N11
\inst10|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst10|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|counter\(7));

-- Location: MLABCELL_X55_Y60_N36
\inst10|output_p[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|output_p[3]~0_combout\ = !\inst10|output_p\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst10|ALT_INV_output_p\(3),
	combout => \inst10|output_p[3]~0_combout\);

-- Location: FF_X55_Y60_N38
\inst10|output_p[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst10|output_p[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|output_p\(3));

-- Location: MLABCELL_X55_Y60_N0
\inst10|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Add0~45_sumout\ = SUM(( \inst10|counter\(4) ) + ( \inst10|output_p\(3) ) + ( !VCC ))
-- \inst10|Add0~46\ = CARRY(( \inst10|counter\(4) ) + ( \inst10|output_p\(3) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst10|ALT_INV_output_p\(3),
	datad => \inst10|ALT_INV_counter\(4),
	cin => GND,
	sumout => \inst10|Add0~45_sumout\,
	cout => \inst10|Add0~46\);

-- Location: FF_X55_Y60_N2
\inst10|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst10|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|counter\(4));

-- Location: MLABCELL_X55_Y60_N3
\inst10|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Add0~41_sumout\ = SUM(( \inst10|counter\(5) ) + ( VCC ) + ( \inst10|Add0~46\ ))
-- \inst10|Add0~42\ = CARRY(( \inst10|counter\(5) ) + ( VCC ) + ( \inst10|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst10|ALT_INV_counter\(5),
	cin => \inst10|Add0~46\,
	sumout => \inst10|Add0~41_sumout\,
	cout => \inst10|Add0~42\);

-- Location: FF_X55_Y60_N5
\inst10|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst10|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|counter\(5));

-- Location: MLABCELL_X55_Y60_N6
\inst10|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Add0~37_sumout\ = SUM(( \inst10|counter\(6) ) + ( VCC ) + ( \inst10|Add0~42\ ))
-- \inst10|Add0~38\ = CARRY(( \inst10|counter\(6) ) + ( VCC ) + ( \inst10|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst10|ALT_INV_counter\(6),
	cin => \inst10|Add0~42\,
	sumout => \inst10|Add0~37_sumout\,
	cout => \inst10|Add0~38\);

-- Location: FF_X55_Y60_N7
\inst10|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst10|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|counter\(6));

-- Location: MLABCELL_X55_Y60_N9
\inst10|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Add0~33_sumout\ = SUM(( \inst10|counter\(7) ) + ( VCC ) + ( \inst10|Add0~38\ ))
-- \inst10|Add0~34\ = CARRY(( \inst10|counter\(7) ) + ( VCC ) + ( \inst10|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst10|ALT_INV_counter\(7),
	cin => \inst10|Add0~38\,
	sumout => \inst10|Add0~33_sumout\,
	cout => \inst10|Add0~34\);

-- Location: FF_X55_Y60_N10
\inst10|counter[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst10|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|counter[7]~DUPLICATE_q\);

-- Location: FF_X55_Y60_N22
\inst10|output_p[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	asdata => \inst10|counter[7]~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|output_p\(7));

-- Location: FF_X55_Y60_N8
\inst10|counter[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst10|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|counter[6]~DUPLICATE_q\);

-- Location: FF_X54_Y60_N40
\inst10|output_p[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	asdata => \inst10|counter[6]~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|output_p[6]~DUPLICATE_q\);

-- Location: FF_X54_Y60_N47
\inst2|latched_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	asdata => \inst10|output_p[6]~DUPLICATE_q\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|latched_data\(6));

-- Location: FF_X54_Y60_N5
\inst2|latched_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	asdata => \inst10|output_p\(7),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|latched_data\(7));

-- Location: FF_X55_Y60_N14
\inst10|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst10|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|counter\(8));

-- Location: MLABCELL_X55_Y60_N12
\inst10|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Add0~29_sumout\ = SUM(( \inst10|counter\(8) ) + ( VCC ) + ( \inst10|Add0~34\ ))
-- \inst10|Add0~30\ = CARRY(( \inst10|counter\(8) ) + ( VCC ) + ( \inst10|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst10|ALT_INV_counter\(8),
	cin => \inst10|Add0~34\,
	sumout => \inst10|Add0~29_sumout\,
	cout => \inst10|Add0~30\);

-- Location: FF_X55_Y60_N13
\inst10|counter[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst10|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|counter[8]~DUPLICATE_q\);

-- Location: FF_X54_Y60_N55
\inst10|output_p[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	asdata => \inst10|counter[8]~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|output_p\(8));

-- Location: FF_X54_Y60_N8
\inst2|latched_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	asdata => \inst10|output_p\(8),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|latched_data\(8));

-- Location: FF_X54_Y60_N41
\inst10|output_p[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	asdata => \inst10|counter[6]~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|output_p\(6));

-- Location: LABCELL_X54_Y60_N36
\inst2|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Equal0~4_combout\ = ( \inst10|output_p\(8) & ( \inst10|output_p\(6) & ( (\inst2|latched_data\(6) & (\inst2|latched_data\(8) & (!\inst10|output_p\(7) $ (\inst2|latched_data\(7))))) ) ) ) # ( !\inst10|output_p\(8) & ( \inst10|output_p\(6) & ( 
-- (\inst2|latched_data\(6) & (!\inst2|latched_data\(8) & (!\inst10|output_p\(7) $ (\inst2|latched_data\(7))))) ) ) ) # ( \inst10|output_p\(8) & ( !\inst10|output_p\(6) & ( (!\inst2|latched_data\(6) & (\inst2|latched_data\(8) & (!\inst10|output_p\(7) $ 
-- (\inst2|latched_data\(7))))) ) ) ) # ( !\inst10|output_p\(8) & ( !\inst10|output_p\(6) & ( (!\inst2|latched_data\(6) & (!\inst2|latched_data\(8) & (!\inst10|output_p\(7) $ (\inst2|latched_data\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000000000001000010000100001000000000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_output_p\(7),
	datab => \inst2|ALT_INV_latched_data\(6),
	datac => \inst2|ALT_INV_latched_data\(7),
	datad => \inst2|ALT_INV_latched_data\(8),
	datae => \inst10|ALT_INV_output_p\(8),
	dataf => \inst10|ALT_INV_output_p\(6),
	combout => \inst2|Equal0~4_combout\);

-- Location: FF_X55_Y60_N4
\inst10|counter[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst10|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|counter[5]~DUPLICATE_q\);

-- Location: MLABCELL_X55_Y60_N39
\inst10|output_p[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|output_p[5]~feeder_combout\ = ( \inst10|counter[5]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst10|ALT_INV_counter[5]~DUPLICATE_q\,
	combout => \inst10|output_p[5]~feeder_combout\);

-- Location: FF_X55_Y60_N41
\inst10|output_p[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst10|output_p[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|output_p\(5));

-- Location: FF_X55_Y60_N56
\inst2|latched_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	asdata => \inst10|output_p\(5),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|latched_data\(5));

-- Location: FF_X55_Y60_N37
\inst10|output_p[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst10|output_p[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|output_p[3]~DUPLICATE_q\);

-- Location: MLABCELL_X55_Y60_N42
\inst2|latched_data[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|latched_data[3]~0_combout\ = ( !\inst10|output_p[3]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst10|ALT_INV_output_p[3]~DUPLICATE_q\,
	combout => \inst2|latched_data[3]~0_combout\);

-- Location: FF_X55_Y60_N44
\inst2|latched_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst2|latched_data[3]~0_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|latched_data\(3));

-- Location: FF_X55_Y60_N1
\inst10|counter[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst10|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|counter[4]~DUPLICATE_q\);

-- Location: FF_X55_Y60_N40
\inst10|output_p[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	asdata => \inst10|counter[4]~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|output_p\(4));

-- Location: FF_X55_Y60_N47
\inst2|latched_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	asdata => \inst10|output_p\(4),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|latched_data\(4));

-- Location: MLABCELL_X55_Y60_N57
\inst2|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Equal0~3_combout\ = ( \inst2|latched_data\(4) & ( \inst10|output_p\(5) & ( (\inst2|latched_data\(5) & (\inst10|output_p\(4) & (!\inst2|latched_data\(3) $ (!\inst10|output_p\(3))))) ) ) ) # ( !\inst2|latched_data\(4) & ( \inst10|output_p\(5) & ( 
-- (\inst2|latched_data\(5) & (!\inst10|output_p\(4) & (!\inst2|latched_data\(3) $ (!\inst10|output_p\(3))))) ) ) ) # ( \inst2|latched_data\(4) & ( !\inst10|output_p\(5) & ( (!\inst2|latched_data\(5) & (\inst10|output_p\(4) & (!\inst2|latched_data\(3) $ 
-- (!\inst10|output_p\(3))))) ) ) ) # ( !\inst2|latched_data\(4) & ( !\inst10|output_p\(5) & ( (!\inst2|latched_data\(5) & (!\inst10|output_p\(4) & (!\inst2|latched_data\(3) $ (!\inst10|output_p\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010000000000000100000100000010000010000000000000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_latched_data\(5),
	datab => \inst2|ALT_INV_latched_data\(3),
	datac => \inst10|ALT_INV_output_p\(4),
	datad => \inst10|ALT_INV_output_p\(3),
	datae => \inst2|ALT_INV_latched_data\(4),
	dataf => \inst10|ALT_INV_output_p\(5),
	combout => \inst2|Equal0~3_combout\);

-- Location: FF_X55_Y60_N20
\inst10|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst10|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|counter\(10));

-- Location: MLABCELL_X55_Y60_N15
\inst10|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Add0~25_sumout\ = SUM(( \inst10|counter\(9) ) + ( VCC ) + ( \inst10|Add0~30\ ))
-- \inst10|Add0~26\ = CARRY(( \inst10|counter\(9) ) + ( VCC ) + ( \inst10|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst10|ALT_INV_counter\(9),
	cin => \inst10|Add0~30\,
	sumout => \inst10|Add0~25_sumout\,
	cout => \inst10|Add0~26\);

-- Location: FF_X55_Y60_N17
\inst10|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst10|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|counter\(9));

-- Location: MLABCELL_X55_Y60_N18
\inst10|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Add0~21_sumout\ = SUM(( \inst10|counter\(10) ) + ( GND ) + ( \inst10|Add0~26\ ))
-- \inst10|Add0~22\ = CARRY(( \inst10|counter\(10) ) + ( GND ) + ( \inst10|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst10|ALT_INV_counter\(10),
	cin => \inst10|Add0~26\,
	sumout => \inst10|Add0~21_sumout\,
	cout => \inst10|Add0~22\);

-- Location: FF_X55_Y60_N19
\inst10|counter[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst10|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|counter[10]~DUPLICATE_q\);

-- Location: LABCELL_X53_Y60_N0
\inst10|output_p[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|output_p[10]~feeder_combout\ = ( \inst10|counter[10]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst10|ALT_INV_counter[10]~DUPLICATE_q\,
	combout => \inst10|output_p[10]~feeder_combout\);

-- Location: FF_X53_Y60_N2
\inst10|output_p[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst10|output_p[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|output_p[10]~DUPLICATE_q\);

-- Location: FF_X55_Y60_N16
\inst10|counter[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst10|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|counter[9]~DUPLICATE_q\);

-- Location: FF_X53_Y60_N55
\inst10|output_p[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	asdata => \inst10|counter[9]~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|output_p\(9));

-- Location: FF_X53_Y60_N11
\inst2|latched_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	asdata => \inst10|output_p\(9),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|latched_data\(9));

-- Location: MLABCELL_X55_Y60_N21
\inst10|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Add0~17_sumout\ = SUM(( \inst10|counter\(11) ) + ( GND ) + ( \inst10|Add0~22\ ))
-- \inst10|Add0~18\ = CARRY(( \inst10|counter\(11) ) + ( GND ) + ( \inst10|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst10|ALT_INV_counter\(11),
	cin => \inst10|Add0~22\,
	sumout => \inst10|Add0~17_sumout\,
	cout => \inst10|Add0~18\);

-- Location: FF_X55_Y60_N23
\inst10|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst10|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|counter\(11));

-- Location: LABCELL_X53_Y60_N45
\inst10|output_p[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|output_p[11]~feeder_combout\ = ( \inst10|counter\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst10|ALT_INV_counter\(11),
	combout => \inst10|output_p[11]~feeder_combout\);

-- Location: FF_X53_Y60_N47
\inst10|output_p[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst10|output_p[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|output_p\(11));

-- Location: FF_X53_Y60_N7
\inst2|latched_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	asdata => \inst10|output_p\(11),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|latched_data\(11));

-- Location: FF_X53_Y60_N53
\inst2|latched_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	asdata => \inst10|output_p[10]~DUPLICATE_q\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|latched_data\(10));

-- Location: LABCELL_X53_Y60_N27
\inst2|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Equal0~2_combout\ = ( \inst10|output_p\(11) & ( \inst2|latched_data\(10) & ( (\inst10|output_p[10]~DUPLICATE_q\ & (\inst2|latched_data\(11) & (!\inst2|latched_data\(9) $ (\inst10|output_p\(9))))) ) ) ) # ( !\inst10|output_p\(11) & ( 
-- \inst2|latched_data\(10) & ( (\inst10|output_p[10]~DUPLICATE_q\ & (!\inst2|latched_data\(11) & (!\inst2|latched_data\(9) $ (\inst10|output_p\(9))))) ) ) ) # ( \inst10|output_p\(11) & ( !\inst2|latched_data\(10) & ( (!\inst10|output_p[10]~DUPLICATE_q\ & 
-- (\inst2|latched_data\(11) & (!\inst2|latched_data\(9) $ (\inst10|output_p\(9))))) ) ) ) # ( !\inst10|output_p\(11) & ( !\inst2|latched_data\(10) & ( (!\inst10|output_p[10]~DUPLICATE_q\ & (!\inst2|latched_data\(11) & (!\inst2|latched_data\(9) $ 
-- (\inst10|output_p\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000000000001000001001000001000000000000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_output_p[10]~DUPLICATE_q\,
	datab => \inst2|ALT_INV_latched_data\(9),
	datac => \inst10|ALT_INV_output_p\(9),
	datad => \inst2|ALT_INV_latched_data\(11),
	datae => \inst10|ALT_INV_output_p\(11),
	dataf => \inst2|ALT_INV_latched_data\(10),
	combout => \inst2|Equal0~2_combout\);

-- Location: MLABCELL_X55_Y60_N24
\inst10|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Add0~13_sumout\ = SUM(( \inst10|counter\(12) ) + ( GND ) + ( \inst10|Add0~18\ ))
-- \inst10|Add0~14\ = CARRY(( \inst10|counter\(12) ) + ( GND ) + ( \inst10|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst10|ALT_INV_counter\(12),
	cin => \inst10|Add0~18\,
	sumout => \inst10|Add0~13_sumout\,
	cout => \inst10|Add0~14\);

-- Location: FF_X55_Y60_N26
\inst10|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst10|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|counter\(12));

-- Location: MLABCELL_X55_Y60_N27
\inst10|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Add0~9_sumout\ = SUM(( \inst10|counter\(13) ) + ( GND ) + ( \inst10|Add0~14\ ))
-- \inst10|Add0~10\ = CARRY(( \inst10|counter\(13) ) + ( GND ) + ( \inst10|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst10|ALT_INV_counter\(13),
	cin => \inst10|Add0~14\,
	sumout => \inst10|Add0~9_sumout\,
	cout => \inst10|Add0~10\);

-- Location: FF_X55_Y60_N29
\inst10|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst10|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|counter\(13));

-- Location: MLABCELL_X55_Y60_N30
\inst10|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Add0~5_sumout\ = SUM(( \inst10|counter\(14) ) + ( GND ) + ( \inst10|Add0~10\ ))
-- \inst10|Add0~6\ = CARRY(( \inst10|counter\(14) ) + ( GND ) + ( \inst10|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst10|ALT_INV_counter\(14),
	cin => \inst10|Add0~10\,
	sumout => \inst10|Add0~5_sumout\,
	cout => \inst10|Add0~6\);

-- Location: FF_X55_Y60_N31
\inst10|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst10|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|counter\(14));

-- Location: MLABCELL_X55_Y60_N33
\inst10|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Add0~1_sumout\ = SUM(( \inst10|counter\(15) ) + ( GND ) + ( \inst10|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_counter\(15),
	cin => \inst10|Add0~6\,
	sumout => \inst10|Add0~1_sumout\);

-- Location: FF_X55_Y60_N35
\inst10|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst10|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|counter\(15));

-- Location: FF_X55_Y60_N49
\inst10|output_p[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	asdata => \inst10|counter\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|output_p\(15));

-- Location: FF_X54_Y60_N17
\inst2|latched_data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	asdata => \inst10|output_p\(15),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|latched_data\(15));

-- Location: LABCELL_X54_Y60_N57
\inst2|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = !\inst2|latched_data\(15) $ (!\inst10|output_p\(15))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_latched_data\(15),
	datad => \inst10|ALT_INV_output_p\(15),
	combout => \inst2|Equal0~0_combout\);

-- Location: FF_X55_Y60_N53
\inst10|output_p[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	asdata => \inst10|counter\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|output_p\(13));

-- Location: FF_X54_Y60_N23
\inst2|latched_data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	asdata => \inst10|output_p\(13),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|latched_data\(13));

-- Location: FF_X54_Y60_N38
\inst10|output_p[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	asdata => \inst10|counter\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|output_p\(12));

-- Location: FF_X54_Y60_N25
\inst2|latched_data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	asdata => \inst10|output_p\(12),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|latched_data\(12));

-- Location: MLABCELL_X55_Y60_N48
\inst10|output_p[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|output_p[14]~feeder_combout\ = ( \inst10|counter\(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst10|ALT_INV_counter\(14),
	combout => \inst10|output_p[14]~feeder_combout\);

-- Location: FF_X55_Y60_N50
\inst10|output_p[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst10|output_p[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|output_p\(14));

-- Location: FF_X54_Y60_N1
\inst2|latched_data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	asdata => \inst10|output_p\(14),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|latched_data\(14));

-- Location: LABCELL_X54_Y60_N9
\inst2|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = ( \inst10|output_p\(14) & ( \inst10|output_p\(13) & ( (\inst2|latched_data\(13) & (\inst2|latched_data\(14) & (!\inst2|latched_data\(12) $ (\inst10|output_p\(12))))) ) ) ) # ( !\inst10|output_p\(14) & ( \inst10|output_p\(13) & ( 
-- (\inst2|latched_data\(13) & (!\inst2|latched_data\(14) & (!\inst2|latched_data\(12) $ (\inst10|output_p\(12))))) ) ) ) # ( \inst10|output_p\(14) & ( !\inst10|output_p\(13) & ( (!\inst2|latched_data\(13) & (\inst2|latched_data\(14) & 
-- (!\inst2|latched_data\(12) $ (\inst10|output_p\(12))))) ) ) ) # ( !\inst10|output_p\(14) & ( !\inst10|output_p\(13) & ( (!\inst2|latched_data\(13) & (!\inst2|latched_data\(14) & (!\inst2|latched_data\(12) $ (\inst10|output_p\(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000000000001000001001000001000000000000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_latched_data\(13),
	datab => \inst2|ALT_INV_latched_data\(12),
	datac => \inst10|ALT_INV_output_p\(12),
	datad => \inst2|ALT_INV_latched_data\(14),
	datae => \inst10|ALT_INV_output_p\(14),
	dataf => \inst10|ALT_INV_output_p\(13),
	combout => \inst2|Equal0~1_combout\);

-- Location: LABCELL_X54_Y60_N30
\inst2|counter~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|counter~0_combout\ = ( !\inst2|counter\(0) & ( \inst2|Equal0~1_combout\ & ( (\inst2|Equal0~4_combout\ & (\inst2|Equal0~3_combout\ & (\inst2|Equal0~2_combout\ & !\inst2|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Equal0~4_combout\,
	datab => \inst2|ALT_INV_Equal0~3_combout\,
	datac => \inst2|ALT_INV_Equal0~2_combout\,
	datad => \inst2|ALT_INV_Equal0~0_combout\,
	datae => \inst2|ALT_INV_counter\(0),
	dataf => \inst2|ALT_INV_Equal0~1_combout\,
	combout => \inst2|counter~0_combout\);

-- Location: FF_X54_Y60_N32
\inst2|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst2|counter~0_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(0));

-- Location: LABCELL_X54_Y60_N18
\inst2|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = ( !\inst2|counter\(1) & ( \inst2|counter\(0) ) ) # ( \inst2|counter\(1) & ( !\inst2|counter\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst2|ALT_INV_counter\(1),
	dataf => \inst2|ALT_INV_counter\(0),
	combout => \inst2|Add0~0_combout\);

-- Location: LABCELL_X54_Y60_N48
\inst2|counter~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|counter~1_combout\ = ( \inst2|Equal0~4_combout\ & ( \inst2|Add0~0_combout\ & ( (\inst2|Equal0~2_combout\ & (\inst2|Equal0~1_combout\ & (!\inst2|Equal0~0_combout\ & \inst2|Equal0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Equal0~2_combout\,
	datab => \inst2|ALT_INV_Equal0~1_combout\,
	datac => \inst2|ALT_INV_Equal0~0_combout\,
	datad => \inst2|ALT_INV_Equal0~3_combout\,
	datae => \inst2|ALT_INV_Equal0~4_combout\,
	dataf => \inst2|ALT_INV_Add0~0_combout\,
	combout => \inst2|counter~1_combout\);

-- Location: FF_X54_Y60_N49
\inst2|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst2|counter~1_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(1));

-- Location: LABCELL_X54_Y60_N27
\inst2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~1_combout\ = ( \inst2|counter\(1) & ( \inst2|counter\(0) & ( !\inst2|counter\(2) ) ) ) # ( !\inst2|counter\(1) & ( \inst2|counter\(0) & ( \inst2|counter\(2) ) ) ) # ( \inst2|counter\(1) & ( !\inst2|counter\(0) & ( \inst2|counter\(2) ) ) ) # ( 
-- !\inst2|counter\(1) & ( !\inst2|counter\(0) & ( \inst2|counter\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_counter\(2),
	datae => \inst2|ALT_INV_counter\(1),
	dataf => \inst2|ALT_INV_counter\(0),
	combout => \inst2|Add0~1_combout\);

-- Location: LABCELL_X54_Y60_N51
\inst2|counter~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|counter~2_combout\ = ( \inst2|Equal0~4_combout\ & ( \inst2|Add0~1_combout\ & ( (\inst2|Equal0~2_combout\ & (\inst2|Equal0~1_combout\ & (\inst2|Equal0~3_combout\ & !\inst2|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Equal0~2_combout\,
	datab => \inst2|ALT_INV_Equal0~1_combout\,
	datac => \inst2|ALT_INV_Equal0~3_combout\,
	datad => \inst2|ALT_INV_Equal0~0_combout\,
	datae => \inst2|ALT_INV_Equal0~4_combout\,
	dataf => \inst2|ALT_INV_Add0~1_combout\,
	combout => \inst2|counter~2_combout\);

-- Location: FF_X54_Y60_N53
\inst2|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst2|counter~2_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(2));

-- Location: FF_X54_Y60_N44
\inst2|counter[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst2|counter~3_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter[3]~DUPLICATE_q\);

-- Location: LABCELL_X54_Y60_N0
\inst2|Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = ( \inst2|counter\(1) & ( \inst2|counter\(0) & ( !\inst2|counter[3]~DUPLICATE_q\ $ (!\inst2|counter\(2)) ) ) ) # ( !\inst2|counter\(1) & ( \inst2|counter\(0) & ( \inst2|counter[3]~DUPLICATE_q\ ) ) ) # ( \inst2|counter\(1) & ( 
-- !\inst2|counter\(0) & ( \inst2|counter[3]~DUPLICATE_q\ ) ) ) # ( !\inst2|counter\(1) & ( !\inst2|counter\(0) & ( \inst2|counter[3]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_counter[3]~DUPLICATE_q\,
	datac => \inst2|ALT_INV_counter\(2),
	datae => \inst2|ALT_INV_counter\(1),
	dataf => \inst2|ALT_INV_counter\(0),
	combout => \inst2|Add0~2_combout\);

-- Location: LABCELL_X54_Y60_N42
\inst2|counter~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|counter~3_combout\ = ( !\inst2|Equal0~0_combout\ & ( \inst2|Equal0~1_combout\ & ( (\inst2|Add0~2_combout\ & (\inst2|Equal0~3_combout\ & (\inst2|Equal0~2_combout\ & \inst2|Equal0~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add0~2_combout\,
	datab => \inst2|ALT_INV_Equal0~3_combout\,
	datac => \inst2|ALT_INV_Equal0~2_combout\,
	datad => \inst2|ALT_INV_Equal0~4_combout\,
	datae => \inst2|ALT_INV_Equal0~0_combout\,
	dataf => \inst2|ALT_INV_Equal0~1_combout\,
	combout => \inst2|counter~3_combout\);

-- Location: FF_X54_Y60_N43
\inst2|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst2|counter~3_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(3));

-- Location: LABCELL_X54_Y60_N54
\inst2|enable~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|enable~0_combout\ = ( \inst2|counter\(0) & ( \inst2|enable~q\ ) ) # ( !\inst2|counter\(0) & ( (\inst2|enable~q\ & ((!\inst2|counter\(2)) # ((!\inst2|counter\(3)) # (!\inst2|counter\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110010001100110011001000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_counter\(2),
	datab => \inst2|ALT_INV_enable~q\,
	datac => \inst2|ALT_INV_counter\(3),
	datad => \inst2|ALT_INV_counter\(1),
	dataf => \inst2|ALT_INV_counter\(0),
	combout => \inst2|enable~0_combout\);

-- Location: LABCELL_X54_Y60_N12
\inst2|enable~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|enable~1_combout\ = ( \inst2|enable~0_combout\ & ( \inst2|Equal0~1_combout\ ) ) # ( !\inst2|enable~0_combout\ & ( \inst2|Equal0~1_combout\ & ( (!\inst2|Equal0~4_combout\) # ((!\inst2|Equal0~3_combout\) # ((!\inst2|Equal0~2_combout\) # 
-- (\inst2|Equal0~0_combout\))) ) ) ) # ( \inst2|enable~0_combout\ & ( !\inst2|Equal0~1_combout\ ) ) # ( !\inst2|enable~0_combout\ & ( !\inst2|Equal0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111110111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Equal0~4_combout\,
	datab => \inst2|ALT_INV_Equal0~3_combout\,
	datac => \inst2|ALT_INV_Equal0~2_combout\,
	datad => \inst2|ALT_INV_Equal0~0_combout\,
	datae => \inst2|ALT_INV_enable~0_combout\,
	dataf => \inst2|ALT_INV_Equal0~1_combout\,
	combout => \inst2|enable~1_combout\);

-- Location: FF_X54_Y60_N14
\inst2|enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst2|enable~1_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|enable~q\);

-- Location: LABCELL_X53_Y60_N12
\inst2|clk_counter[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|clk_counter[0]~0_combout\ = ( !\inst2|clk_counter\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst2|ALT_INV_clk_counter\(0),
	combout => \inst2|clk_counter[0]~0_combout\);

-- Location: FF_X53_Y60_N14
\inst2|clk_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst2|clk_counter[0]~0_combout\,
	clrn => \Reset~input_o\,
	ena => \inst2|enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clk_counter\(0));

-- Location: LABCELL_X53_Y60_N21
\inst2|Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~0_combout\ = ( !\inst2|clk_counter\(1) & ( \inst2|clk_counter\(0) ) ) # ( \inst2|clk_counter\(1) & ( !\inst2|clk_counter\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst2|ALT_INV_clk_counter\(1),
	dataf => \inst2|ALT_INV_clk_counter\(0),
	combout => \inst2|Add1~0_combout\);

-- Location: FF_X53_Y60_N22
\inst2|clk_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst2|Add1~0_combout\,
	clrn => \Reset~input_o\,
	ena => \inst2|enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clk_counter\(1));

-- Location: LABCELL_X53_Y60_N6
\inst2|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~1_combout\ = ( \inst2|clk_counter\(0) & ( !\inst2|clk_counter\(1) $ (!\inst2|clk_counter\(2)) ) ) # ( !\inst2|clk_counter\(0) & ( \inst2|clk_counter\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_clk_counter\(1),
	datac => \inst2|ALT_INV_clk_counter\(2),
	dataf => \inst2|ALT_INV_clk_counter\(0),
	combout => \inst2|Add1~1_combout\);

-- Location: FF_X53_Y60_N29
\inst2|clk_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	asdata => \inst2|Add1~1_combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	ena => \inst2|enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clk_counter\(2));

-- Location: LABCELL_X53_Y60_N36
\inst2|sync~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|sync~0_combout\ = ( \inst2|sync~reg0_q\ & ( \inst2|clk_counter\(1) & ( (\inst2|enable~q\ & ((!\inst2|clk_counter\(2)) # (\inst2|clk_counter\(0)))) ) ) ) # ( !\inst2|sync~reg0_q\ & ( \inst2|clk_counter\(1) & ( (\inst2|enable~q\ & 
-- (\inst2|clk_counter\(2) & !\inst2|clk_counter\(0))) ) ) ) # ( \inst2|sync~reg0_q\ & ( !\inst2|clk_counter\(1) & ( \inst2|enable~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000101000000000101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_enable~q\,
	datac => \inst2|ALT_INV_clk_counter\(2),
	datad => \inst2|ALT_INV_clk_counter\(0),
	datae => \inst2|ALT_INV_sync~reg0_q\,
	dataf => \inst2|ALT_INV_clk_counter\(1),
	combout => \inst2|sync~0_combout\);

-- Location: FF_X53_Y60_N37
\inst2|sync~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst2|sync~0_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sync~reg0_q\);

-- Location: LABCELL_X22_Y57_N48
\inst9|stateRegOut[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|stateRegOut[2]~3_combout\ = ( \inst9|state.DONE~q\ ) # ( !\inst9|state.DONE~q\ & ( (!\Reset~input_o\) # (\inst9|state.INTER~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011111100111111001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ALT_INV_state.INTER~q\,
	datac => \ALT_INV_Reset~input_o\,
	dataf => \inst9|ALT_INV_state.DONE~q\,
	combout => \inst9|stateRegOut[2]~3_combout\);

-- Location: LABCELL_X22_Y57_N21
\inst9|stateRegOut[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|stateRegOut[1]~4_combout\ = ( \Reset~input_o\ & ( \inst9|state.SEND~DUPLICATE_q\ ) ) # ( !\Reset~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_state.SEND~DUPLICATE_q\,
	dataf => \ALT_INV_Reset~input_o\,
	combout => \inst9|stateRegOut[1]~4_combout\);

-- Location: LABCELL_X22_Y57_N24
\inst9|stateRegOut[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|stateRegOut[0]~5_combout\ = ( \inst9|state.INTER~q\ & ( \Reset~input_o\ ) ) # ( !\inst9|state.INTER~q\ & ( \Reset~input_o\ & ( \inst9|state.DISCARD~q\ ) ) ) # ( \inst9|state.INTER~q\ & ( !\Reset~input_o\ ) ) # ( !\inst9|state.INTER~q\ & ( 
-- !\Reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_state.DISCARD~q\,
	datae => \inst9|ALT_INV_state.INTER~q\,
	dataf => \ALT_INV_Reset~input_o\,
	combout => \inst9|stateRegOut[0]~5_combout\);

-- Location: FF_X53_Y60_N1
\inst10|output_p[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst10|output_p[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|output_p\(10));

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

-- Location: LABCELL_X41_Y30_N3
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


