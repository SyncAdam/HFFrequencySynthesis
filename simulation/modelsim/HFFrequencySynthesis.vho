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

-- DATE "07/01/2026 16:10:58"

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
SIGNAL \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|pll_out_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|pll_out_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|pll_out_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst1|pll_out_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Wr_Re_Button~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \inst9|clockDividerBuffer[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst9|clockDividerBuffer~2_combout\ : std_logic;
SIGNAL \inst9|clockDividerBuffer[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst9|clockDividerBuffer[2]~1_combout\ : std_logic;
SIGNAL \inst9|clockDividerBuffer[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst9|clockDividerBuffer~0_combout\ : std_logic;
SIGNAL \inst9|clockDividerBuffer~3_combout\ : std_logic;
SIGNAL \inst9|clockDividerBuffer[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst9|internalClock~0_combout\ : std_logic;
SIGNAL \inst9|internalClock~feeder_combout\ : std_logic;
SIGNAL \inst9|internalClock~q\ : std_logic;
SIGNAL \inst9|sclk_reg~0_combout\ : std_logic;
SIGNAL \inst9|sclk_reg~q\ : std_logic;
SIGNAL \inst9|Add1~29_sumout\ : std_logic;
SIGNAL \inst9|Add1~26\ : std_logic;
SIGNAL \inst9|Add1~21_sumout\ : std_logic;
SIGNAL \inst9|Add1~22\ : std_logic;
SIGNAL \inst9|Add1~14\ : std_logic;
SIGNAL \inst9|Add1~17_sumout\ : std_logic;
SIGNAL \inst9|Add1~18\ : std_logic;
SIGNAL \inst9|Add1~5_sumout\ : std_logic;
SIGNAL \inst9|Add1~6\ : std_logic;
SIGNAL \inst9|Add1~9_sumout\ : std_logic;
SIGNAL \inst9|Add1~10\ : std_logic;
SIGNAL \inst9|Add1~1_sumout\ : std_logic;
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
SIGNAL \inst9|LessThan1~0_combout\ : std_logic;
SIGNAL \inst9|configOK~0_combout\ : std_logic;
SIGNAL \inst9|configOK~reg0_q\ : std_logic;
SIGNAL \Run~input_o\ : std_logic;
SIGNAL \inst9|needWait~0_combout\ : std_logic;
SIGNAL \inst9|needWait~1_combout\ : std_logic;
SIGNAL \inst9|needWait~q\ : std_logic;
SIGNAL \inst9|Add4~1_sumout\ : std_logic;
SIGNAL \inst9|Add4~2\ : std_logic;
SIGNAL \inst9|Add4~61_sumout\ : std_logic;
SIGNAL \inst9|waiting~0_combout\ : std_logic;
SIGNAL \inst9|Add4~62\ : std_logic;
SIGNAL \inst9|Add4~57_sumout\ : std_logic;
SIGNAL \inst9|Add4~58\ : std_logic;
SIGNAL \inst9|Add4~53_sumout\ : std_logic;
SIGNAL \inst9|Add4~54\ : std_logic;
SIGNAL \inst9|Add4~49_sumout\ : std_logic;
SIGNAL \inst9|Add4~50\ : std_logic;
SIGNAL \inst9|Add4~45_sumout\ : std_logic;
SIGNAL \inst9|Equal3~2_combout\ : std_logic;
SIGNAL \inst9|Add4~46\ : std_logic;
SIGNAL \inst9|Add4~41_sumout\ : std_logic;
SIGNAL \inst9|Add4~42\ : std_logic;
SIGNAL \inst9|Add4~37_sumout\ : std_logic;
SIGNAL \inst9|Add4~38\ : std_logic;
SIGNAL \inst9|Add4~33_sumout\ : std_logic;
SIGNAL \inst9|Add4~34\ : std_logic;
SIGNAL \inst9|Add4~29_sumout\ : std_logic;
SIGNAL \inst9|Add4~30\ : std_logic;
SIGNAL \inst9|Add4~25_sumout\ : std_logic;
SIGNAL \inst9|Add4~26\ : std_logic;
SIGNAL \inst9|Add4~21_sumout\ : std_logic;
SIGNAL \inst9|Equal3~1_combout\ : std_logic;
SIGNAL \inst9|Add4~22\ : std_logic;
SIGNAL \inst9|Add4~17_sumout\ : std_logic;
SIGNAL \inst9|Add4~18\ : std_logic;
SIGNAL \inst9|Add4~13_sumout\ : std_logic;
SIGNAL \inst9|Add4~14\ : std_logic;
SIGNAL \inst9|Add4~9_sumout\ : std_logic;
SIGNAL \inst9|Add4~10\ : std_logic;
SIGNAL \inst9|Add4~5_sumout\ : std_logic;
SIGNAL \inst9|Equal3~0_combout\ : std_logic;
SIGNAL \inst9|Equal3~3_combout\ : std_logic;
SIGNAL \inst9|WaitingDone~0_combout\ : std_logic;
SIGNAL \inst9|WaitingDone~q\ : std_logic;
SIGNAL \inst9|Selector2~0_combout\ : std_logic;
SIGNAL \inst9|nextState.INTER~q\ : std_logic;
SIGNAL \inst9|state.INTER~feeder_combout\ : std_logic;
SIGNAL \inst9|state.INTER~q\ : std_logic;
SIGNAL \inst9|Selector4~0_combout\ : std_logic;
SIGNAL \inst9|nextState.DONE~q\ : std_logic;
SIGNAL \inst9|state.DONE~feeder_combout\ : std_logic;
SIGNAL \inst9|state.DONE~q\ : std_logic;
SIGNAL \inst9|Selector0~0_combout\ : std_logic;
SIGNAL \inst9|nextState.IDLE~q\ : std_logic;
SIGNAL \inst9|state.IDLE~feeder_combout\ : std_logic;
SIGNAL \inst9|state.IDLE~q\ : std_logic;
SIGNAL \inst9|Selector3~0_combout\ : std_logic;
SIGNAL \inst9|discardBuffer~0_combout\ : std_logic;
SIGNAL \inst9|discardBuffer~q\ : std_logic;
SIGNAL \inst9|discarded~0_combout\ : std_logic;
SIGNAL \inst9|discarded~q\ : std_logic;
SIGNAL \inst9|Selector3~1_combout\ : std_logic;
SIGNAL \inst9|nextState.DISCARD~q\ : std_logic;
SIGNAL \inst9|state.DISCARD~feeder_combout\ : std_logic;
SIGNAL \inst9|state.DISCARD~q\ : std_logic;
SIGNAL \inst9|Selector1~0_combout\ : std_logic;
SIGNAL \inst9|nextState.SEND~q\ : std_logic;
SIGNAL \inst9|state.SEND~q\ : std_logic;
SIGNAL \inst9|sendData~0_combout\ : std_logic;
SIGNAL \inst9|Add1~13_sumout\ : std_logic;
SIGNAL \inst9|LessThan1~1_combout\ : std_logic;
SIGNAL \inst9|Add1~30\ : std_logic;
SIGNAL \inst9|Add1~25_sumout\ : std_logic;
SIGNAL \inst9|sdio_do~0_combout\ : std_logic;
SIGNAL \inst9|Equal0~0_combout\ : std_logic;
SIGNAL \inst9|Mux0~0_combout\ : std_logic;
SIGNAL \inst9|Mux1~3_combout\ : std_logic;
SIGNAL \inst9|Mux1~5_combout\ : std_logic;
SIGNAL \inst9|Mux1~6_combout\ : std_logic;
SIGNAL \inst9|Mux1~4_combout\ : std_logic;
SIGNAL \inst9|Mux1~7_combout\ : std_logic;
SIGNAL \inst9|Mux1~8_combout\ : std_logic;
SIGNAL \inst9|Mux1~14_combout\ : std_logic;
SIGNAL \inst9|Mux1~13_combout\ : std_logic;
SIGNAL \inst9|Mux1~15_combout\ : std_logic;
SIGNAL \inst9|Mux1~0_combout\ : std_logic;
SIGNAL \inst9|Mux1~16_combout\ : std_logic;
SIGNAL \inst9|Mux1~1_combout\ : std_logic;
SIGNAL \inst9|Mux1~17_combout\ : std_logic;
SIGNAL \inst9|Mux1~2_combout\ : std_logic;
SIGNAL \inst9|Mux1~9_combout\ : std_logic;
SIGNAL \inst9|sdio_do~1_combout\ : std_logic;
SIGNAL \inst9|sdio_oe~1_combout\ : std_logic;
SIGNAL \inst9|SCLK~0_combout\ : std_logic;
SIGNAL \inst9|SDENB~0_combout\ : std_logic;
SIGNAL \Parallel_Data_CLK_IN~input_o\ : std_logic;
SIGNAL \inst1|pll_out_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\ : std_logic;
SIGNAL \inst1|pll_out_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\ : std_logic;
SIGNAL \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ : std_logic;
SIGNAL \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ : std_logic;
SIGNAL \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ : std_logic;
SIGNAL \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ : std_logic;
SIGNAL \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ : std_logic;
SIGNAL \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ : std_logic;
SIGNAL \inst1|pll_out_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\ : std_logic;
SIGNAL \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ : std_logic;
SIGNAL \inst1|pll_out_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\ : std_logic;
SIGNAL \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ : std_logic;
SIGNAL \inst1|pll_out_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\ : std_logic;
SIGNAL \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\ : std_logic;
SIGNAL \inst1|pll_out_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN6\ : std_logic;
SIGNAL \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\ : std_logic;
SIGNAL \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ : std_logic;
SIGNAL \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ : std_logic;
SIGNAL \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ : std_logic;
SIGNAL \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ : std_logic;
SIGNAL \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ : std_logic;
SIGNAL \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ : std_logic;
SIGNAL \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ : std_logic;
SIGNAL \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ : std_logic;
SIGNAL \inst1|pll_out_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\ : std_logic;
SIGNAL \Parallel_Data_CLK_IN~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst5|clk_counter[0]~0_combout\ : std_logic;
SIGNAL \inst5|clk_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst5|Add0~0_combout\ : std_logic;
SIGNAL \inst5|clk_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst5|Add0~1_combout\ : std_logic;
SIGNAL \inst5|sync~0_combout\ : std_logic;
SIGNAL \inst5|sync~reg0_q\ : std_logic;
SIGNAL \inst9|stateRegOut[2]~3_combout\ : std_logic;
SIGNAL \inst9|stateRegOut[1]~4_combout\ : std_logic;
SIGNAL \inst9|stateRegOut[0]~5_combout\ : std_logic;
SIGNAL \inst10|counter[10]~5_combout\ : std_logic;
SIGNAL \inst10|counter[11]~4_combout\ : std_logic;
SIGNAL \inst10|counter[11]~DUPLICATE_q\ : std_logic;
SIGNAL \inst10|counter[12]~3_combout\ : std_logic;
SIGNAL \inst10|counter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \inst10|counter[13]~2_combout\ : std_logic;
SIGNAL \inst10|counter[14]~1_combout\ : std_logic;
SIGNAL \inst10|counter[15]~0_combout\ : std_logic;
SIGNAL \inst10|counter[14]~DUPLICATE_q\ : std_logic;
SIGNAL \inst10|output_p[14]~feeder_combout\ : std_logic;
SIGNAL \inst10|counter[13]~DUPLICATE_q\ : std_logic;
SIGNAL \inst10|output_p[13]~feeder_combout\ : std_logic;
SIGNAL \inst10|output_p[11]~feeder_combout\ : std_logic;
SIGNAL \inst10|output_p[10]~feeder_combout\ : std_logic;
SIGNAL \inst1|pll_out_inst|altera_pll_i|outclk_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst9|dataIndex\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|clk_counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst9|counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst9|WaitingBuffer\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst10|output_p\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst10|counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|pll_out_inst|altera_pll_i|fboutclk_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst9|clockDividerBuffer\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst9|ALT_INV_clockDividerBuffer[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst9|ALT_INV_clockDividerBuffer[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst9|ALT_INV_clockDividerBuffer[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst9|ALT_INV_clockDividerBuffer[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst10|ALT_INV_counter[11]~DUPLICATE_q\ : std_logic;
SIGNAL \inst10|ALT_INV_counter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \inst10|ALT_INV_counter[13]~DUPLICATE_q\ : std_logic;
SIGNAL \inst10|ALT_INV_counter[14]~DUPLICATE_q\ : std_logic;
SIGNAL \inst5|ALT_INV_clk_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst5|ALT_INV_clk_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Run~input_o\ : std_logic;
SIGNAL \ALT_INV_Reset~input_o\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux1~17_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux1~16_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux1~15_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux1~14_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux1~13_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_nextState.IDLE~q\ : std_logic;
SIGNAL \inst9|ALT_INV_Equal3~2_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_needWait~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_discardBuffer~q\ : std_logic;
SIGNAL \inst9|ALT_INV_sendData~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_state.IDLE~q\ : std_logic;
SIGNAL \inst9|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_WaitingDone~q\ : std_logic;
SIGNAL \inst9|ALT_INV_needWait~q\ : std_logic;
SIGNAL \inst9|ALT_INV_discarded~q\ : std_logic;
SIGNAL \inst9|ALT_INV_internalClock~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_clockDividerBuffer\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst10|ALT_INV_counter\ : std_logic_vector(15 DOWNTO 10);
SIGNAL \inst9|ALT_INV_nextState.INTER~q\ : std_logic;
SIGNAL \inst9|ALT_INV_nextState.DONE~q\ : std_logic;
SIGNAL \inst5|ALT_INV_clk_counter\ : std_logic_vector(2 DOWNTO 0);
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
SIGNAL \inst9|ALT_INV_nextState.DISCARD~q\ : std_logic;
SIGNAL \inst9|ALT_INV_nextState.SEND~q\ : std_logic;
SIGNAL \inst9|ALT_INV_internalClock~q\ : std_logic;
SIGNAL \inst9|ALT_INV_stateRegOut[0]~5_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_stateRegOut[1]~4_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_stateRegOut[2]~3_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_state.INTER~q\ : std_logic;
SIGNAL \inst9|ALT_INV_state.DONE~q\ : std_logic;
SIGNAL \inst5|ALT_INV_sync~reg0_q\ : std_logic;
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

\inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ <= \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(0);
\inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ <= \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(1);
\inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ <= \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(2);
\inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ <= \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(3);
\inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ <= \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(4);
\inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ <= \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(5);
\inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ <= \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(6);
\inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ <= \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(7);

\inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ <= \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(0);
\inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ <= \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(1);
\inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ <= \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(2);
\inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ <= \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(3);
\inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ <= \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(4);
\inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ <= \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(5);
\inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ <= \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(6);
\inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ <= \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(7);

\inst1|pll_out_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ <= (\Parallel_Data_CLK_IN~input_o\ & gnd & gnd & gnd);

\inst1|pll_out_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ <= (\inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ & \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ & 
\inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ & \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ & \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ & 
\inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ & \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ & \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\);

\inst1|pll_out_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN6\ <= \inst1|pll_out_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\(6);

\inst1|pll_out_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ <= (\inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ & \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ & 
\inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ & \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ & \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ & 
\inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ & \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ & \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\);
\inst9|ALT_INV_clockDividerBuffer[0]~DUPLICATE_q\ <= NOT \inst9|clockDividerBuffer[0]~DUPLICATE_q\;
\inst9|ALT_INV_clockDividerBuffer[1]~DUPLICATE_q\ <= NOT \inst9|clockDividerBuffer[1]~DUPLICATE_q\;
\inst9|ALT_INV_clockDividerBuffer[2]~DUPLICATE_q\ <= NOT \inst9|clockDividerBuffer[2]~DUPLICATE_q\;
\inst9|ALT_INV_clockDividerBuffer[3]~DUPLICATE_q\ <= NOT \inst9|clockDividerBuffer[3]~DUPLICATE_q\;
\inst10|ALT_INV_counter[11]~DUPLICATE_q\ <= NOT \inst10|counter[11]~DUPLICATE_q\;
\inst10|ALT_INV_counter[12]~DUPLICATE_q\ <= NOT \inst10|counter[12]~DUPLICATE_q\;
\inst10|ALT_INV_counter[13]~DUPLICATE_q\ <= NOT \inst10|counter[13]~DUPLICATE_q\;
\inst10|ALT_INV_counter[14]~DUPLICATE_q\ <= NOT \inst10|counter[14]~DUPLICATE_q\;
\inst5|ALT_INV_clk_counter[1]~DUPLICATE_q\ <= NOT \inst5|clk_counter[1]~DUPLICATE_q\;
\inst5|ALT_INV_clk_counter[0]~DUPLICATE_q\ <= NOT \inst5|clk_counter[0]~DUPLICATE_q\;
\ALT_INV_Run~input_o\ <= NOT \Run~input_o\;
\ALT_INV_Reset~input_o\ <= NOT \Reset~input_o\;
\inst9|ALT_INV_Mux1~17_combout\ <= NOT \inst9|Mux1~17_combout\;
\inst9|ALT_INV_Mux1~16_combout\ <= NOT \inst9|Mux1~16_combout\;
\inst9|ALT_INV_Mux1~15_combout\ <= NOT \inst9|Mux1~15_combout\;
\inst9|ALT_INV_Mux1~14_combout\ <= NOT \inst9|Mux1~14_combout\;
\inst9|ALT_INV_Mux1~13_combout\ <= NOT \inst9|Mux1~13_combout\;
\inst9|ALT_INV_nextState.IDLE~q\ <= NOT \inst9|nextState.IDLE~q\;
\inst9|ALT_INV_Equal3~2_combout\ <= NOT \inst9|Equal3~2_combout\;
\inst9|ALT_INV_Equal3~1_combout\ <= NOT \inst9|Equal3~1_combout\;
\inst9|ALT_INV_Equal3~0_combout\ <= NOT \inst9|Equal3~0_combout\;
\inst9|ALT_INV_needWait~0_combout\ <= NOT \inst9|needWait~0_combout\;
\inst9|ALT_INV_discardBuffer~q\ <= NOT \inst9|discardBuffer~q\;
\inst9|ALT_INV_sendData~0_combout\ <= NOT \inst9|sendData~0_combout\;
\inst9|ALT_INV_state.IDLE~q\ <= NOT \inst9|state.IDLE~q\;
\inst9|ALT_INV_Selector3~0_combout\ <= NOT \inst9|Selector3~0_combout\;
\inst9|ALT_INV_WaitingDone~q\ <= NOT \inst9|WaitingDone~q\;
\inst9|ALT_INV_needWait~q\ <= NOT \inst9|needWait~q\;
\inst9|ALT_INV_discarded~q\ <= NOT \inst9|discarded~q\;
\inst9|ALT_INV_internalClock~0_combout\ <= NOT \inst9|internalClock~0_combout\;
\inst9|ALT_INV_clockDividerBuffer\(0) <= NOT \inst9|clockDividerBuffer\(0);
\inst9|ALT_INV_clockDividerBuffer\(1) <= NOT \inst9|clockDividerBuffer\(1);
\inst9|ALT_INV_clockDividerBuffer\(2) <= NOT \inst9|clockDividerBuffer\(2);
\inst9|ALT_INV_clockDividerBuffer\(3) <= NOT \inst9|clockDividerBuffer\(3);
\inst10|ALT_INV_counter\(10) <= NOT \inst10|counter\(10);
\inst10|ALT_INV_counter\(11) <= NOT \inst10|counter\(11);
\inst10|ALT_INV_counter\(12) <= NOT \inst10|counter\(12);
\inst10|ALT_INV_counter\(13) <= NOT \inst10|counter\(13);
\inst10|ALT_INV_counter\(14) <= NOT \inst10|counter\(14);
\inst10|ALT_INV_counter\(15) <= NOT \inst10|counter\(15);
\inst9|ALT_INV_nextState.INTER~q\ <= NOT \inst9|nextState.INTER~q\;
\inst9|ALT_INV_nextState.DONE~q\ <= NOT \inst9|nextState.DONE~q\;
\inst5|ALT_INV_clk_counter\(2) <= NOT \inst5|clk_counter\(2);
\inst5|ALT_INV_clk_counter\(1) <= NOT \inst5|clk_counter\(1);
\inst5|ALT_INV_clk_counter\(0) <= NOT \inst5|clk_counter\(0);
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
\inst9|ALT_INV_nextState.DISCARD~q\ <= NOT \inst9|nextState.DISCARD~q\;
\inst9|ALT_INV_nextState.SEND~q\ <= NOT \inst9|nextState.SEND~q\;
\inst9|ALT_INV_internalClock~q\ <= NOT \inst9|internalClock~q\;
\inst9|ALT_INV_stateRegOut[0]~5_combout\ <= NOT \inst9|stateRegOut[0]~5_combout\;
\inst9|ALT_INV_stateRegOut[1]~4_combout\ <= NOT \inst9|stateRegOut[1]~4_combout\;
\inst9|ALT_INV_stateRegOut[2]~3_combout\ <= NOT \inst9|stateRegOut[2]~3_combout\;
\inst9|ALT_INV_state.INTER~q\ <= NOT \inst9|state.INTER~q\;
\inst9|ALT_INV_state.DONE~q\ <= NOT \inst9|state.DONE~q\;
\inst5|ALT_INV_sync~reg0_q\ <= NOT \inst5|sync~reg0_q\;
\inst9|ALT_INV_configOK~reg0_q\ <= NOT \inst9|configOK~reg0_q\;
\inst9|ALT_INV_state.DISCARD~q\ <= NOT \inst9|state.DISCARD~q\;
\inst9|ALT_INV_state.SEND~q\ <= NOT \inst9|state.SEND~q\;
\inst9|ALT_INV_sclk_reg~q\ <= NOT \inst9|sclk_reg~q\;
\inst9|ALT_INV_Mux1~9_combout\ <= NOT \inst9|Mux1~9_combout\;
\inst9|ALT_INV_WaitingBuffer\(1) <= NOT \inst9|WaitingBuffer\(1);
\inst9|ALT_INV_WaitingBuffer\(2) <= NOT \inst9|WaitingBuffer\(2);
\inst9|ALT_INV_WaitingBuffer\(3) <= NOT \inst9|WaitingBuffer\(3);
\inst9|ALT_INV_WaitingBuffer\(4) <= NOT \inst9|WaitingBuffer\(4);
\inst9|ALT_INV_WaitingBuffer\(5) <= NOT \inst9|WaitingBuffer\(5);
\inst9|ALT_INV_WaitingBuffer\(6) <= NOT \inst9|WaitingBuffer\(6);
\inst9|ALT_INV_WaitingBuffer\(7) <= NOT \inst9|WaitingBuffer\(7);
\inst9|ALT_INV_WaitingBuffer\(8) <= NOT \inst9|WaitingBuffer\(8);
\inst9|ALT_INV_WaitingBuffer\(9) <= NOT \inst9|WaitingBuffer\(9);
\inst9|ALT_INV_WaitingBuffer\(10) <= NOT \inst9|WaitingBuffer\(10);
\inst9|ALT_INV_WaitingBuffer\(11) <= NOT \inst9|WaitingBuffer\(11);
\inst9|ALT_INV_WaitingBuffer\(12) <= NOT \inst9|WaitingBuffer\(12);
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
\inst9|ALT_INV_dataIndex\(6) <= NOT \inst9|dataIndex\(6);
\inst9|ALT_INV_dataIndex\(5) <= NOT \inst9|dataIndex\(5);
\inst9|ALT_INV_dataIndex\(4) <= NOT \inst9|dataIndex\(4);
\inst9|ALT_INV_dataIndex\(7) <= NOT \inst9|dataIndex\(7);
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
	i => \inst1|pll_out_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
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
	i => \inst5|sync~reg0_q\,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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

-- Location: CLKCTRL_G14
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

-- Location: FF_X25_Y57_N37
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

-- Location: FF_X25_Y57_N29
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

-- Location: FF_X25_Y57_N11
\inst9|clockDividerBuffer[3]~DUPLICATE\ : dffeas
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
	q => \inst9|clockDividerBuffer[3]~DUPLICATE_q\);

-- Location: FF_X25_Y57_N23
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

-- Location: MLABCELL_X25_Y57_N21
\inst9|clockDividerBuffer~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|clockDividerBuffer~2_combout\ = ( \inst9|clockDividerBuffer\(1) & ( \inst9|clockDividerBuffer[2]~DUPLICATE_q\ & ( !\inst9|clockDividerBuffer[0]~DUPLICATE_q\ ) ) ) # ( !\inst9|clockDividerBuffer\(1) & ( \inst9|clockDividerBuffer[2]~DUPLICATE_q\ & ( 
-- \inst9|clockDividerBuffer[0]~DUPLICATE_q\ ) ) ) # ( \inst9|clockDividerBuffer\(1) & ( !\inst9|clockDividerBuffer[2]~DUPLICATE_q\ & ( (!\inst9|clockDividerBuffer[3]~DUPLICATE_q\ & !\inst9|clockDividerBuffer[0]~DUPLICATE_q\) ) ) ) # ( 
-- !\inst9|clockDividerBuffer\(1) & ( !\inst9|clockDividerBuffer[2]~DUPLICATE_q\ & ( \inst9|clockDividerBuffer[0]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111110011000000000000000000111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ALT_INV_clockDividerBuffer[3]~DUPLICATE_q\,
	datad => \inst9|ALT_INV_clockDividerBuffer[0]~DUPLICATE_q\,
	datae => \inst9|ALT_INV_clockDividerBuffer\(1),
	dataf => \inst9|ALT_INV_clockDividerBuffer[2]~DUPLICATE_q\,
	combout => \inst9|clockDividerBuffer~2_combout\);

-- Location: FF_X25_Y57_N22
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

-- Location: MLABCELL_X25_Y57_N27
\inst9|clockDividerBuffer[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|clockDividerBuffer[2]~1_combout\ = ( \inst9|clockDividerBuffer\(2) & ( \inst9|clockDividerBuffer[1]~DUPLICATE_q\ & ( !\inst9|clockDividerBuffer\(0) ) ) ) # ( !\inst9|clockDividerBuffer\(2) & ( \inst9|clockDividerBuffer[1]~DUPLICATE_q\ & ( 
-- \inst9|clockDividerBuffer\(0) ) ) ) # ( \inst9|clockDividerBuffer\(2) & ( !\inst9|clockDividerBuffer[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_clockDividerBuffer\(0),
	datae => \inst9|ALT_INV_clockDividerBuffer\(2),
	dataf => \inst9|ALT_INV_clockDividerBuffer[1]~DUPLICATE_q\,
	combout => \inst9|clockDividerBuffer[2]~1_combout\);

-- Location: FF_X25_Y57_N28
\inst9|clockDividerBuffer[2]~DUPLICATE\ : dffeas
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
	q => \inst9|clockDividerBuffer[2]~DUPLICATE_q\);

-- Location: MLABCELL_X25_Y57_N9
\inst9|clockDividerBuffer~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|clockDividerBuffer~0_combout\ = ( \inst9|clockDividerBuffer\(3) & ( \inst9|clockDividerBuffer[1]~DUPLICATE_q\ & ( !\inst9|clockDividerBuffer\(0) $ (!\inst9|clockDividerBuffer[2]~DUPLICATE_q\) ) ) ) # ( !\inst9|clockDividerBuffer\(3) & ( 
-- \inst9|clockDividerBuffer[1]~DUPLICATE_q\ & ( (\inst9|clockDividerBuffer\(0) & \inst9|clockDividerBuffer[2]~DUPLICATE_q\) ) ) ) # ( \inst9|clockDividerBuffer\(3) & ( !\inst9|clockDividerBuffer[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000011000000110011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ALT_INV_clockDividerBuffer\(0),
	datac => \inst9|ALT_INV_clockDividerBuffer[2]~DUPLICATE_q\,
	datae => \inst9|ALT_INV_clockDividerBuffer\(3),
	dataf => \inst9|ALT_INV_clockDividerBuffer[1]~DUPLICATE_q\,
	combout => \inst9|clockDividerBuffer~0_combout\);

-- Location: FF_X25_Y57_N10
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

-- Location: MLABCELL_X25_Y57_N36
\inst9|clockDividerBuffer~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|clockDividerBuffer~3_combout\ = ( !\inst9|clockDividerBuffer\(0) & ( \inst9|clockDividerBuffer[1]~DUPLICATE_q\ & ( (!\inst9|clockDividerBuffer\(3)) # (\inst9|clockDividerBuffer[2]~DUPLICATE_q\) ) ) ) # ( !\inst9|clockDividerBuffer\(0) & ( 
-- !\inst9|clockDividerBuffer[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011110000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_clockDividerBuffer\(3),
	datad => \inst9|ALT_INV_clockDividerBuffer[2]~DUPLICATE_q\,
	datae => \inst9|ALT_INV_clockDividerBuffer\(0),
	dataf => \inst9|ALT_INV_clockDividerBuffer[1]~DUPLICATE_q\,
	combout => \inst9|clockDividerBuffer~3_combout\);

-- Location: FF_X25_Y57_N38
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

-- Location: MLABCELL_X25_Y57_N48
\inst9|internalClock~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|internalClock~0_combout\ = ( \inst9|clockDividerBuffer\(1) & ( \inst9|internalClock~q\ & ( ((!\inst9|clockDividerBuffer[3]~DUPLICATE_q\) # (\inst9|clockDividerBuffer\(2))) # (\inst9|clockDividerBuffer[0]~DUPLICATE_q\) ) ) ) # ( 
-- !\inst9|clockDividerBuffer\(1) & ( \inst9|internalClock~q\ ) ) # ( \inst9|clockDividerBuffer\(1) & ( !\inst9|internalClock~q\ & ( (!\inst9|clockDividerBuffer[0]~DUPLICATE_q\ & (!\inst9|clockDividerBuffer\(2) & \inst9|clockDividerBuffer[3]~DUPLICATE_q\)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010000011111111111111111111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_clockDividerBuffer[0]~DUPLICATE_q\,
	datac => \inst9|ALT_INV_clockDividerBuffer\(2),
	datad => \inst9|ALT_INV_clockDividerBuffer[3]~DUPLICATE_q\,
	datae => \inst9|ALT_INV_clockDividerBuffer\(1),
	dataf => \inst9|ALT_INV_internalClock~q\,
	combout => \inst9|internalClock~0_combout\);

-- Location: MLABCELL_X25_Y57_N54
\inst9|internalClock~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|internalClock~feeder_combout\ = ( \inst9|internalClock~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst9|ALT_INV_internalClock~0_combout\,
	combout => \inst9|internalClock~feeder_combout\);

-- Location: FF_X25_Y57_N56
\inst9|internalClock\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst9|internalClock~feeder_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|internalClock~q\);

-- Location: LABCELL_X22_Y57_N36
\inst9|sclk_reg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|sclk_reg~0_combout\ = !\inst9|sclk_reg~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ALT_INV_sclk_reg~q\,
	combout => \inst9|sclk_reg~0_combout\);

-- Location: FF_X22_Y57_N26
\inst9|sclk_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|internalClock~q\,
	asdata => \inst9|sclk_reg~0_combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|sclk_reg~q\);

-- Location: LABCELL_X22_Y58_N0
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

-- Location: FF_X21_Y58_N35
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

-- Location: LABCELL_X22_Y58_N3
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

-- Location: LABCELL_X22_Y58_N6
\inst9|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add1~21_sumout\ = SUM(( \inst9|dataIndex\(2) ) + ( GND ) + ( \inst9|Add1~26\ ))
-- \inst9|Add1~22\ = CARRY(( \inst9|dataIndex\(2) ) + ( GND ) + ( \inst9|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_dataIndex\(2),
	cin => \inst9|Add1~26\,
	sumout => \inst9|Add1~21_sumout\,
	cout => \inst9|Add1~22\);

-- Location: FF_X21_Y58_N41
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

-- Location: LABCELL_X22_Y58_N9
\inst9|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add1~13_sumout\ = SUM(( \inst9|dataIndex\(3) ) + ( GND ) + ( \inst9|Add1~22\ ))
-- \inst9|Add1~14\ = CARRY(( \inst9|dataIndex\(3) ) + ( GND ) + ( \inst9|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst9|ALT_INV_dataIndex\(3),
	cin => \inst9|Add1~22\,
	sumout => \inst9|Add1~13_sumout\,
	cout => \inst9|Add1~14\);

-- Location: LABCELL_X22_Y58_N12
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

-- Location: FF_X21_Y58_N11
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

-- Location: LABCELL_X22_Y58_N15
\inst9|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add1~5_sumout\ = SUM(( \inst9|dataIndex\(5) ) + ( GND ) + ( \inst9|Add1~18\ ))
-- \inst9|Add1~6\ = CARRY(( \inst9|dataIndex\(5) ) + ( GND ) + ( \inst9|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst9|ALT_INV_dataIndex\(5),
	cin => \inst9|Add1~18\,
	sumout => \inst9|Add1~5_sumout\,
	cout => \inst9|Add1~6\);

-- Location: FF_X21_Y58_N53
\inst9|dataIndex[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|ALT_INV_sclk_reg~q\,
	asdata => \inst9|Add1~5_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst9|LessThan1~1_combout\,
	sload => VCC,
	ena => \inst9|sendData~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|dataIndex\(5));

-- Location: LABCELL_X22_Y58_N18
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

-- Location: FF_X21_Y58_N23
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

-- Location: LABCELL_X22_Y58_N21
\inst9|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add1~1_sumout\ = SUM(( \inst9|dataIndex\(7) ) + ( GND ) + ( \inst9|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_dataIndex\(7),
	cin => \inst9|Add1~10\,
	sumout => \inst9|Add1~1_sumout\);

-- Location: LABCELL_X23_Y58_N30
\inst9|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add2~1_sumout\ = SUM(( \inst9|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \inst9|Add2~2\ = CARRY(( \inst9|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ALT_INV_counter\(0),
	cin => GND,
	sumout => \inst9|Add2~1_sumout\,
	cout => \inst9|Add2~2\);

-- Location: LABCELL_X22_Y58_N48
\inst9|counter[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|counter[0]~0_combout\ = ( \inst9|Add1~1_sumout\ & ( \inst9|sendData~0_combout\ ) ) # ( !\inst9|Add1~1_sumout\ & ( \inst9|sendData~0_combout\ & ( (((\inst9|Add1~13_sumout\ & \inst9|Add1~17_sumout\)) # (\inst9|Add1~5_sumout\)) # 
-- (\inst9|Add1~9_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000011111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_Add1~13_sumout\,
	datab => \inst9|ALT_INV_Add1~17_sumout\,
	datac => \inst9|ALT_INV_Add1~9_sumout\,
	datad => \inst9|ALT_INV_Add1~5_sumout\,
	datae => \inst9|ALT_INV_Add1~1_sumout\,
	dataf => \inst9|ALT_INV_sendData~0_combout\,
	combout => \inst9|counter[0]~0_combout\);

-- Location: FF_X23_Y58_N14
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

-- Location: LABCELL_X23_Y58_N33
\inst9|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add2~13_sumout\ = SUM(( \inst9|counter\(1) ) + ( GND ) + ( \inst9|Add2~2\ ))
-- \inst9|Add2~14\ = CARRY(( \inst9|counter\(1) ) + ( GND ) + ( \inst9|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst9|ALT_INV_counter\(1),
	cin => \inst9|Add2~2\,
	sumout => \inst9|Add2~13_sumout\,
	cout => \inst9|Add2~14\);

-- Location: FF_X23_Y58_N59
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

-- Location: LABCELL_X23_Y58_N36
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

-- Location: FF_X23_Y58_N29
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

-- Location: LABCELL_X23_Y58_N39
\inst9|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add2~17_sumout\ = SUM(( \inst9|counter\(3) ) + ( GND ) + ( \inst9|Add2~10\ ))
-- \inst9|Add2~18\ = CARRY(( \inst9|counter\(3) ) + ( GND ) + ( \inst9|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_counter\(3),
	cin => \inst9|Add2~10\,
	sumout => \inst9|Add2~17_sumout\,
	cout => \inst9|Add2~18\);

-- Location: FF_X23_Y58_N5
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

-- Location: LABCELL_X23_Y58_N42
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

-- Location: FF_X23_Y58_N11
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

-- Location: LABCELL_X23_Y58_N45
\inst9|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add2~5_sumout\ = SUM(( \inst9|counter\(5) ) + ( GND ) + ( \inst9|Add2~22\ ))
-- \inst9|Add2~6\ = CARRY(( \inst9|counter\(5) ) + ( GND ) + ( \inst9|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst9|ALT_INV_counter\(5),
	cin => \inst9|Add2~22\,
	sumout => \inst9|Add2~5_sumout\,
	cout => \inst9|Add2~6\);

-- Location: FF_X23_Y58_N23
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

-- Location: LABCELL_X23_Y58_N48
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

-- Location: FF_X23_Y58_N53
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

-- Location: LABCELL_X23_Y58_N6
\inst9|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|LessThan2~0_combout\ = ( \inst9|counter\(5) & ( (\inst9|counter\(6)) # (\inst9|counter\(4)) ) ) # ( !\inst9|counter\(5) & ( \inst9|counter\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ALT_INV_counter\(4),
	datac => \inst9|ALT_INV_counter\(6),
	dataf => \inst9|ALT_INV_counter\(5),
	combout => \inst9|LessThan2~0_combout\);

-- Location: LABCELL_X22_Y58_N27
\inst9|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|LessThan1~0_combout\ = ( !\inst9|Add1~9_sumout\ & ( (!\inst9|Add1~5_sumout\ & ((!\inst9|Add1~17_sumout\) # (!\inst9|Add1~13_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011000000111100001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ALT_INV_Add1~17_sumout\,
	datac => \inst9|ALT_INV_Add1~5_sumout\,
	datad => \inst9|ALT_INV_Add1~13_sumout\,
	dataf => \inst9|ALT_INV_Add1~9_sumout\,
	combout => \inst9|LessThan1~0_combout\);

-- Location: LABCELL_X22_Y58_N36
\inst9|configOK~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|configOK~0_combout\ = ( \inst9|LessThan2~0_combout\ & ( \inst9|LessThan1~0_combout\ & ( ((\inst9|state.SEND~q\ & (\Reset~input_o\ & \inst9|Add1~1_sumout\))) # (\inst9|configOK~reg0_q\) ) ) ) # ( !\inst9|LessThan2~0_combout\ & ( 
-- \inst9|LessThan1~0_combout\ & ( \inst9|configOK~reg0_q\ ) ) ) # ( \inst9|LessThan2~0_combout\ & ( !\inst9|LessThan1~0_combout\ & ( ((\inst9|state.SEND~q\ & \Reset~input_o\)) # (\inst9|configOK~reg0_q\) ) ) ) # ( !\inst9|LessThan2~0_combout\ & ( 
-- !\inst9|LessThan1~0_combout\ & ( \inst9|configOK~reg0_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000111110001111100001111000011110000111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_state.SEND~q\,
	datab => \ALT_INV_Reset~input_o\,
	datac => \inst9|ALT_INV_configOK~reg0_q\,
	datad => \inst9|ALT_INV_Add1~1_sumout\,
	datae => \inst9|ALT_INV_LessThan2~0_combout\,
	dataf => \inst9|ALT_INV_LessThan1~0_combout\,
	combout => \inst9|configOK~0_combout\);

-- Location: FF_X22_Y58_N53
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

-- Location: LABCELL_X22_Y58_N42
\inst9|needWait~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|needWait~0_combout\ = ( \inst9|Add1~25_sumout\ & ( \inst9|Add1~21_sumout\ & ( (\inst9|Add1~29_sumout\ & (\Reset~input_o\ & (\inst9|state.SEND~q\ & !\inst9|Add1~13_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_Add1~29_sumout\,
	datab => \ALT_INV_Reset~input_o\,
	datac => \inst9|ALT_INV_state.SEND~q\,
	datad => \inst9|ALT_INV_Add1~13_sumout\,
	datae => \inst9|ALT_INV_Add1~25_sumout\,
	dataf => \inst9|ALT_INV_Add1~21_sumout\,
	combout => \inst9|needWait~0_combout\);

-- Location: LABCELL_X22_Y58_N54
\inst9|needWait~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|needWait~1_combout\ = ( \inst9|needWait~0_combout\ & ( \inst9|LessThan1~0_combout\ & ( (!\inst9|needWait~q\ & (((!\inst9|Add1~1_sumout\ & \inst9|Add1~17_sumout\)))) # (\inst9|needWait~q\ & ((!\inst9|sendData~0_combout\) # 
-- ((!\inst9|Add1~1_sumout\)))) ) ) ) # ( !\inst9|needWait~0_combout\ & ( \inst9|LessThan1~0_combout\ & ( (\inst9|needWait~q\ & ((!\inst9|sendData~0_combout\) # (!\inst9|Add1~1_sumout\))) ) ) ) # ( \inst9|needWait~0_combout\ & ( !\inst9|LessThan1~0_combout\ 
-- & ( (!\inst9|sendData~0_combout\ & \inst9|needWait~q\) ) ) ) # ( !\inst9|needWait~0_combout\ & ( !\inst9|LessThan1~0_combout\ & ( (!\inst9|sendData~0_combout\ & \inst9|needWait~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000110010001100100011001011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_sendData~0_combout\,
	datab => \inst9|ALT_INV_needWait~q\,
	datac => \inst9|ALT_INV_Add1~1_sumout\,
	datad => \inst9|ALT_INV_Add1~17_sumout\,
	datae => \inst9|ALT_INV_needWait~0_combout\,
	dataf => \inst9|ALT_INV_LessThan1~0_combout\,
	combout => \inst9|needWait~1_combout\);

-- Location: FF_X22_Y58_N41
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

-- Location: LABCELL_X21_Y57_N0
\inst9|Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add4~1_sumout\ = SUM(( \inst9|WaitingBuffer\(0) ) + ( VCC ) + ( !VCC ))
-- \inst9|Add4~2\ = CARRY(( \inst9|WaitingBuffer\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_WaitingBuffer\(0),
	cin => GND,
	sumout => \inst9|Add4~1_sumout\,
	cout => \inst9|Add4~2\);

-- Location: LABCELL_X21_Y57_N3
\inst9|Add4~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add4~61_sumout\ = SUM(( \inst9|WaitingBuffer\(1) ) + ( GND ) + ( \inst9|Add4~2\ ))
-- \inst9|Add4~62\ = CARRY(( \inst9|WaitingBuffer\(1) ) + ( GND ) + ( \inst9|Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst9|ALT_INV_WaitingBuffer\(1),
	cin => \inst9|Add4~2\,
	sumout => \inst9|Add4~61_sumout\,
	cout => \inst9|Add4~62\);

-- Location: LABCELL_X22_Y57_N27
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

-- Location: FF_X21_Y57_N5
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

-- Location: LABCELL_X21_Y57_N6
\inst9|Add4~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add4~57_sumout\ = SUM(( \inst9|WaitingBuffer\(2) ) + ( GND ) + ( \inst9|Add4~62\ ))
-- \inst9|Add4~58\ = CARRY(( \inst9|WaitingBuffer\(2) ) + ( GND ) + ( \inst9|Add4~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ALT_INV_WaitingBuffer\(2),
	cin => \inst9|Add4~62\,
	sumout => \inst9|Add4~57_sumout\,
	cout => \inst9|Add4~58\);

-- Location: FF_X21_Y57_N8
\inst9|WaitingBuffer[2]\ : dffeas
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
	q => \inst9|WaitingBuffer\(2));

-- Location: LABCELL_X21_Y57_N9
\inst9|Add4~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add4~53_sumout\ = SUM(( \inst9|WaitingBuffer\(3) ) + ( GND ) + ( \inst9|Add4~58\ ))
-- \inst9|Add4~54\ = CARRY(( \inst9|WaitingBuffer\(3) ) + ( GND ) + ( \inst9|Add4~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst9|ALT_INV_WaitingBuffer\(3),
	cin => \inst9|Add4~58\,
	sumout => \inst9|Add4~53_sumout\,
	cout => \inst9|Add4~54\);

-- Location: FF_X21_Y57_N11
\inst9|WaitingBuffer[3]\ : dffeas
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
	q => \inst9|WaitingBuffer\(3));

-- Location: LABCELL_X21_Y57_N12
\inst9|Add4~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add4~49_sumout\ = SUM(( \inst9|WaitingBuffer\(4) ) + ( GND ) + ( \inst9|Add4~54\ ))
-- \inst9|Add4~50\ = CARRY(( \inst9|WaitingBuffer\(4) ) + ( GND ) + ( \inst9|Add4~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ALT_INV_WaitingBuffer\(4),
	cin => \inst9|Add4~54\,
	sumout => \inst9|Add4~49_sumout\,
	cout => \inst9|Add4~50\);

-- Location: FF_X21_Y57_N14
\inst9|WaitingBuffer[4]\ : dffeas
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
	q => \inst9|WaitingBuffer\(4));

-- Location: LABCELL_X21_Y57_N15
\inst9|Add4~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add4~45_sumout\ = SUM(( \inst9|WaitingBuffer\(5) ) + ( GND ) + ( \inst9|Add4~50\ ))
-- \inst9|Add4~46\ = CARRY(( \inst9|WaitingBuffer\(5) ) + ( GND ) + ( \inst9|Add4~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_WaitingBuffer\(5),
	cin => \inst9|Add4~50\,
	sumout => \inst9|Add4~45_sumout\,
	cout => \inst9|Add4~46\);

-- Location: FF_X21_Y57_N17
\inst9|WaitingBuffer[5]\ : dffeas
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
	q => \inst9|WaitingBuffer\(5));

-- Location: LABCELL_X21_Y57_N54
\inst9|Equal3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Equal3~2_combout\ = ( \inst9|WaitingBuffer\(3) & ( !\inst9|WaitingBuffer\(4) & ( (!\inst9|WaitingBuffer\(5) & (!\inst9|WaitingBuffer\(1) & !\inst9|WaitingBuffer\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ALT_INV_WaitingBuffer\(5),
	datac => \inst9|ALT_INV_WaitingBuffer\(1),
	datad => \inst9|ALT_INV_WaitingBuffer\(2),
	datae => \inst9|ALT_INV_WaitingBuffer\(3),
	dataf => \inst9|ALT_INV_WaitingBuffer\(4),
	combout => \inst9|Equal3~2_combout\);

-- Location: LABCELL_X21_Y57_N18
\inst9|Add4~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add4~41_sumout\ = SUM(( \inst9|WaitingBuffer\(6) ) + ( GND ) + ( \inst9|Add4~46\ ))
-- \inst9|Add4~42\ = CARRY(( \inst9|WaitingBuffer\(6) ) + ( GND ) + ( \inst9|Add4~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_WaitingBuffer\(6),
	cin => \inst9|Add4~46\,
	sumout => \inst9|Add4~41_sumout\,
	cout => \inst9|Add4~42\);

-- Location: FF_X21_Y57_N20
\inst9|WaitingBuffer[6]\ : dffeas
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
	q => \inst9|WaitingBuffer\(6));

-- Location: LABCELL_X21_Y57_N21
\inst9|Add4~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add4~37_sumout\ = SUM(( \inst9|WaitingBuffer\(7) ) + ( GND ) + ( \inst9|Add4~42\ ))
-- \inst9|Add4~38\ = CARRY(( \inst9|WaitingBuffer\(7) ) + ( GND ) + ( \inst9|Add4~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_WaitingBuffer\(7),
	cin => \inst9|Add4~42\,
	sumout => \inst9|Add4~37_sumout\,
	cout => \inst9|Add4~38\);

-- Location: FF_X21_Y57_N23
\inst9|WaitingBuffer[7]\ : dffeas
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
	q => \inst9|WaitingBuffer\(7));

-- Location: LABCELL_X21_Y57_N24
\inst9|Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add4~33_sumout\ = SUM(( \inst9|WaitingBuffer\(8) ) + ( GND ) + ( \inst9|Add4~38\ ))
-- \inst9|Add4~34\ = CARRY(( \inst9|WaitingBuffer\(8) ) + ( GND ) + ( \inst9|Add4~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_WaitingBuffer\(8),
	cin => \inst9|Add4~38\,
	sumout => \inst9|Add4~33_sumout\,
	cout => \inst9|Add4~34\);

-- Location: FF_X21_Y57_N26
\inst9|WaitingBuffer[8]\ : dffeas
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
	q => \inst9|WaitingBuffer\(8));

-- Location: LABCELL_X21_Y57_N27
\inst9|Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add4~29_sumout\ = SUM(( \inst9|WaitingBuffer\(9) ) + ( GND ) + ( \inst9|Add4~34\ ))
-- \inst9|Add4~30\ = CARRY(( \inst9|WaitingBuffer\(9) ) + ( GND ) + ( \inst9|Add4~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_WaitingBuffer\(9),
	cin => \inst9|Add4~34\,
	sumout => \inst9|Add4~29_sumout\,
	cout => \inst9|Add4~30\);

-- Location: FF_X21_Y57_N29
\inst9|WaitingBuffer[9]\ : dffeas
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
	q => \inst9|WaitingBuffer\(9));

-- Location: LABCELL_X21_Y57_N30
\inst9|Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add4~25_sumout\ = SUM(( \inst9|WaitingBuffer\(10) ) + ( GND ) + ( \inst9|Add4~30\ ))
-- \inst9|Add4~26\ = CARRY(( \inst9|WaitingBuffer\(10) ) + ( GND ) + ( \inst9|Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ALT_INV_WaitingBuffer\(10),
	cin => \inst9|Add4~30\,
	sumout => \inst9|Add4~25_sumout\,
	cout => \inst9|Add4~26\);

-- Location: FF_X21_Y57_N32
\inst9|WaitingBuffer[10]\ : dffeas
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
	q => \inst9|WaitingBuffer\(10));

-- Location: LABCELL_X21_Y57_N33
\inst9|Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add4~21_sumout\ = SUM(( \inst9|WaitingBuffer\(11) ) + ( GND ) + ( \inst9|Add4~26\ ))
-- \inst9|Add4~22\ = CARRY(( \inst9|WaitingBuffer\(11) ) + ( GND ) + ( \inst9|Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_WaitingBuffer\(11),
	cin => \inst9|Add4~26\,
	sumout => \inst9|Add4~21_sumout\,
	cout => \inst9|Add4~22\);

-- Location: FF_X21_Y57_N35
\inst9|WaitingBuffer[11]\ : dffeas
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
	q => \inst9|WaitingBuffer\(11));

-- Location: LABCELL_X21_Y57_N48
\inst9|Equal3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Equal3~1_combout\ = ( \inst9|WaitingBuffer\(9) & ( !\inst9|WaitingBuffer\(11) & ( (\inst9|WaitingBuffer\(7) & (\inst9|WaitingBuffer\(8) & (!\inst9|WaitingBuffer\(6) & !\inst9|WaitingBuffer\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_WaitingBuffer\(7),
	datab => \inst9|ALT_INV_WaitingBuffer\(8),
	datac => \inst9|ALT_INV_WaitingBuffer\(6),
	datad => \inst9|ALT_INV_WaitingBuffer\(10),
	datae => \inst9|ALT_INV_WaitingBuffer\(9),
	dataf => \inst9|ALT_INV_WaitingBuffer\(11),
	combout => \inst9|Equal3~1_combout\);

-- Location: LABCELL_X21_Y57_N36
\inst9|Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add4~17_sumout\ = SUM(( \inst9|WaitingBuffer\(12) ) + ( GND ) + ( \inst9|Add4~22\ ))
-- \inst9|Add4~18\ = CARRY(( \inst9|WaitingBuffer\(12) ) + ( GND ) + ( \inst9|Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_WaitingBuffer\(12),
	cin => \inst9|Add4~22\,
	sumout => \inst9|Add4~17_sumout\,
	cout => \inst9|Add4~18\);

-- Location: FF_X21_Y57_N38
\inst9|WaitingBuffer[12]\ : dffeas
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
	q => \inst9|WaitingBuffer\(12));

-- Location: LABCELL_X21_Y57_N39
\inst9|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Add4~13_sumout\ = SUM(( \inst9|WaitingBuffer\(13) ) + ( GND ) + ( \inst9|Add4~18\ ))
-- \inst9|Add4~14\ = CARRY(( \inst9|WaitingBuffer\(13) ) + ( GND ) + ( \inst9|Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_WaitingBuffer\(13),
	cin => \inst9|Add4~18\,
	sumout => \inst9|Add4~13_sumout\,
	cout => \inst9|Add4~14\);

-- Location: FF_X21_Y57_N41
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

-- Location: LABCELL_X21_Y57_N42
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

-- Location: FF_X21_Y57_N44
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

-- Location: LABCELL_X21_Y57_N45
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

-- Location: FF_X21_Y57_N47
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

-- Location: LABCELL_X22_Y57_N30
\inst9|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Equal3~0_combout\ = ( !\inst9|WaitingBuffer\(14) & ( (!\inst9|WaitingBuffer\(13) & (!\inst9|WaitingBuffer\(15) & \inst9|WaitingBuffer\(12))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ALT_INV_WaitingBuffer\(13),
	datac => \inst9|ALT_INV_WaitingBuffer\(15),
	datad => \inst9|ALT_INV_WaitingBuffer\(12),
	dataf => \inst9|ALT_INV_WaitingBuffer\(14),
	combout => \inst9|Equal3~0_combout\);

-- Location: LABCELL_X22_Y57_N39
\inst9|Equal3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Equal3~3_combout\ = ( \inst9|Equal3~0_combout\ & ( (\inst9|Equal3~2_combout\ & (\inst9|Equal3~1_combout\ & !\inst9|WaitingBuffer\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_Equal3~2_combout\,
	datac => \inst9|ALT_INV_Equal3~1_combout\,
	datad => \inst9|ALT_INV_WaitingBuffer\(0),
	dataf => \inst9|ALT_INV_Equal3~0_combout\,
	combout => \inst9|Equal3~3_combout\);

-- Location: FF_X21_Y57_N2
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

-- Location: LABCELL_X22_Y57_N18
\inst9|WaitingDone~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|WaitingDone~0_combout\ = ( \inst9|Equal3~1_combout\ & ( \inst9|Equal3~2_combout\ & ( (!\inst9|WaitingBuffer\(0) & (\Reset~input_o\ & (\inst9|state.INTER~q\ & \inst9|Equal3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_WaitingBuffer\(0),
	datab => \ALT_INV_Reset~input_o\,
	datac => \inst9|ALT_INV_state.INTER~q\,
	datad => \inst9|ALT_INV_Equal3~0_combout\,
	datae => \inst9|ALT_INV_Equal3~1_combout\,
	dataf => \inst9|ALT_INV_Equal3~2_combout\,
	combout => \inst9|WaitingDone~0_combout\);

-- Location: FF_X23_Y57_N26
\inst9|WaitingDone\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|sclk_reg~q\,
	asdata => \inst9|WaitingDone~0_combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|WaitingDone~q\);

-- Location: LABCELL_X22_Y57_N9
\inst9|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Selector2~0_combout\ = ( \Run~input_o\ & ( \inst9|state.SEND~q\ & ( (!\inst9|configOK~reg0_q\ & (!\inst9|WaitingDone~q\ & \inst9|state.INTER~q\)) ) ) ) # ( !\Run~input_o\ & ( \inst9|state.SEND~q\ & ( (!\inst9|configOK~reg0_q\ & 
-- (((!\inst9|WaitingDone~q\ & \inst9|state.INTER~q\)) # (\inst9|needWait~q\))) ) ) ) # ( \Run~input_o\ & ( !\inst9|state.SEND~q\ & ( (!\inst9|configOK~reg0_q\ & (!\inst9|WaitingDone~q\ & \inst9|state.INTER~q\)) ) ) ) # ( !\Run~input_o\ & ( 
-- !\inst9|state.SEND~q\ & ( (!\inst9|configOK~reg0_q\ & (!\inst9|WaitingDone~q\ & \inst9|state.INTER~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000001000100110001000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_needWait~q\,
	datab => \inst9|ALT_INV_configOK~reg0_q\,
	datac => \inst9|ALT_INV_WaitingDone~q\,
	datad => \inst9|ALT_INV_state.INTER~q\,
	datae => \ALT_INV_Run~input_o\,
	dataf => \inst9|ALT_INV_state.SEND~q\,
	combout => \inst9|Selector2~0_combout\);

-- Location: FF_X22_Y57_N11
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

-- Location: LABCELL_X23_Y57_N57
\inst9|state.INTER~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|state.INTER~feeder_combout\ = \inst9|nextState.INTER~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_nextState.INTER~q\,
	combout => \inst9|state.INTER~feeder_combout\);

-- Location: FF_X23_Y57_N59
\inst9|state.INTER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|sclk_reg~q\,
	d => \inst9|state.INTER~feeder_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|state.INTER~q\);

-- Location: LABCELL_X22_Y57_N48
\inst9|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Selector4~0_combout\ = ( \inst9|state.SEND~q\ & ( (!\inst9|configOK~reg0_q\ & (((!\Run~input_o\ & \inst9|state.DONE~q\)))) # (\inst9|configOK~reg0_q\ & (((!\Run~input_o\)) # (\inst9|state.INTER~q\))) ) ) # ( !\inst9|state.SEND~q\ & ( 
-- (!\inst9|state.INTER~q\ & (((!\Run~input_o\ & \inst9|state.DONE~q\)))) # (\inst9|state.INTER~q\ & (((!\Run~input_o\ & \inst9|state.DONE~q\)) # (\inst9|configOK~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111110001000100011111000100110001111100010011000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_state.INTER~q\,
	datab => \inst9|ALT_INV_configOK~reg0_q\,
	datac => \ALT_INV_Run~input_o\,
	datad => \inst9|ALT_INV_state.DONE~q\,
	dataf => \inst9|ALT_INV_state.SEND~q\,
	combout => \inst9|Selector4~0_combout\);

-- Location: FF_X22_Y57_N49
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

-- Location: LABCELL_X23_Y57_N36
\inst9|state.DONE~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|state.DONE~feeder_combout\ = \inst9|nextState.DONE~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ALT_INV_nextState.DONE~q\,
	combout => \inst9|state.DONE~feeder_combout\);

-- Location: FF_X23_Y57_N38
\inst9|state.DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|sclk_reg~q\,
	d => \inst9|state.DONE~feeder_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|state.DONE~q\);

-- Location: LABCELL_X22_Y57_N42
\inst9|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Selector0~0_combout\ = ( \inst9|state.SEND~q\ & ( (!\Run~input_o\ & ((!\inst9|configOK~reg0_q\) # (\inst9|state.IDLE~q\))) ) ) # ( !\inst9|state.SEND~q\ & ( (!\Run~input_o\ & ((!\inst9|configOK~reg0_q\) # ((\inst9|state.IDLE~q\)))) # (\Run~input_o\ 
-- & (((\inst9|state.IDLE~q\ & !\inst9|state.DONE~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111110001010100011111000101010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Run~input_o\,
	datab => \inst9|ALT_INV_configOK~reg0_q\,
	datac => \inst9|ALT_INV_state.IDLE~q\,
	datad => \inst9|ALT_INV_state.DONE~q\,
	dataf => \inst9|ALT_INV_state.SEND~q\,
	combout => \inst9|Selector0~0_combout\);

-- Location: FF_X22_Y57_N43
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

-- Location: LABCELL_X23_Y57_N21
\inst9|state.IDLE~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|state.IDLE~feeder_combout\ = \inst9|nextState.IDLE~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_nextState.IDLE~q\,
	combout => \inst9|state.IDLE~feeder_combout\);

-- Location: FF_X23_Y57_N23
\inst9|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|sclk_reg~q\,
	d => \inst9|state.IDLE~feeder_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|state.IDLE~q\);

-- Location: LABCELL_X22_Y57_N45
\inst9|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Selector3~0_combout\ = ( \inst9|state.INTER~q\ & ( \inst9|WaitingDone~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_WaitingDone~q\,
	dataf => \inst9|ALT_INV_state.INTER~q\,
	combout => \inst9|Selector3~0_combout\);

-- Location: LABCELL_X22_Y57_N51
\inst9|discardBuffer~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|discardBuffer~0_combout\ = ( \inst9|state.DISCARD~q\ & ( !\inst9|discardBuffer~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst9|ALT_INV_discardBuffer~q\,
	dataf => \inst9|ALT_INV_state.DISCARD~q\,
	combout => \inst9|discardBuffer~0_combout\);

-- Location: FF_X22_Y57_N35
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

-- Location: LABCELL_X22_Y57_N15
\inst9|discarded~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|discarded~0_combout\ = ( \inst9|discardBuffer~q\ & ( (!\Reset~input_o\) # (!\inst9|state.INTER~q\) ) ) # ( !\inst9|discardBuffer~q\ & ( (\inst9|discarded~q\ & ((!\Reset~input_o\) # (!\inst9|state.INTER~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010100010101000101010011111100111111001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_discarded~q\,
	datab => \ALT_INV_Reset~input_o\,
	datac => \inst9|ALT_INV_state.INTER~q\,
	dataf => \inst9|ALT_INV_discardBuffer~q\,
	combout => \inst9|discarded~0_combout\);

-- Location: FF_X22_Y57_N20
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

-- Location: LABCELL_X22_Y57_N0
\inst9|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Selector3~1_combout\ = ( \inst9|Selector3~0_combout\ & ( \inst9|discarded~q\ & ( !\inst9|configOK~reg0_q\ ) ) ) # ( !\inst9|Selector3~0_combout\ & ( \inst9|discarded~q\ & ( (!\inst9|configOK~reg0_q\ & (!\inst9|state.IDLE~q\ & !\Run~input_o\)) ) ) ) 
-- # ( \inst9|Selector3~0_combout\ & ( !\inst9|discarded~q\ & ( (!\inst9|configOK~reg0_q\) # (\inst9|state.DISCARD~q\) ) ) ) # ( !\inst9|Selector3~0_combout\ & ( !\inst9|discarded~q\ & ( ((!\inst9|configOK~reg0_q\ & (!\inst9|state.IDLE~q\ & !\Run~input_o\))) 
-- # (\inst9|state.DISCARD~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010101010101110111011101110111000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_state.DISCARD~q\,
	datab => \inst9|ALT_INV_configOK~reg0_q\,
	datac => \inst9|ALT_INV_state.IDLE~q\,
	datad => \ALT_INV_Run~input_o\,
	datae => \inst9|ALT_INV_Selector3~0_combout\,
	dataf => \inst9|ALT_INV_discarded~q\,
	combout => \inst9|Selector3~1_combout\);

-- Location: FF_X22_Y57_N2
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

-- Location: LABCELL_X23_Y57_N30
\inst9|state.DISCARD~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|state.DISCARD~feeder_combout\ = \inst9|nextState.DISCARD~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_nextState.DISCARD~q\,
	combout => \inst9|state.DISCARD~feeder_combout\);

-- Location: FF_X23_Y57_N32
\inst9|state.DISCARD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|sclk_reg~q\,
	d => \inst9|state.DISCARD~feeder_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|state.DISCARD~q\);

-- Location: LABCELL_X22_Y57_N54
\inst9|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Selector1~0_combout\ = ( \inst9|state.SEND~q\ & ( \inst9|discarded~q\ & ( ((!\inst9|configOK~reg0_q\ & (!\inst9|needWait~q\ & !\Run~input_o\))) # (\inst9|state.DISCARD~q\) ) ) ) # ( !\inst9|state.SEND~q\ & ( \inst9|discarded~q\ & ( 
-- \inst9|state.DISCARD~q\ ) ) ) # ( \inst9|state.SEND~q\ & ( !\inst9|discarded~q\ & ( (!\inst9|configOK~reg0_q\ & (!\inst9|needWait~q\ & !\Run~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000000000000001010101010101011101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_state.DISCARD~q\,
	datab => \inst9|ALT_INV_configOK~reg0_q\,
	datac => \inst9|ALT_INV_needWait~q\,
	datad => \ALT_INV_Run~input_o\,
	datae => \inst9|ALT_INV_state.SEND~q\,
	dataf => \inst9|ALT_INV_discarded~q\,
	combout => \inst9|Selector1~0_combout\);

-- Location: FF_X22_Y57_N56
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

-- Location: FF_X22_Y58_N35
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

-- Location: LABCELL_X22_Y58_N24
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

-- Location: FF_X21_Y58_N59
\inst9|dataIndex[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|ALT_INV_sclk_reg~q\,
	asdata => \inst9|Add1~13_sumout\,
	clrn => \Reset~input_o\,
	sclr => \inst9|LessThan1~1_combout\,
	sload => VCC,
	ena => \inst9|sendData~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|dataIndex\(3));

-- Location: LABCELL_X22_Y58_N30
\inst9|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|LessThan1~1_combout\ = ( \inst9|Add1~1_sumout\ ) # ( !\inst9|Add1~1_sumout\ & ( (((\inst9|Add1~13_sumout\ & \inst9|Add1~17_sumout\)) # (\inst9|Add1~9_sumout\)) # (\inst9|Add1~5_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111101111111001111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_Add1~13_sumout\,
	datab => \inst9|ALT_INV_Add1~5_sumout\,
	datac => \inst9|ALT_INV_Add1~9_sumout\,
	datad => \inst9|ALT_INV_Add1~17_sumout\,
	dataf => \inst9|ALT_INV_Add1~1_sumout\,
	combout => \inst9|LessThan1~1_combout\);

-- Location: FF_X21_Y58_N29
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

-- Location: FF_X21_Y58_N5
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

-- Location: LABCELL_X23_Y58_N0
\inst9|sdio_do~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|sdio_do~0_combout\ = ( \inst9|counter\(5) & ( (!\inst9|dataIndex\(1) & (((\inst9|counter\(6) & \inst9|dataIndex\(0))))) # (\inst9|dataIndex\(1) & (((!\inst9|dataIndex\(0))) # (\inst9|counter\(4)))) ) ) # ( !\inst9|counter\(5) & ( 
-- (\inst9|dataIndex\(0) & ((!\inst9|dataIndex\(1) & ((\inst9|counter\(6)))) # (\inst9|dataIndex\(1) & (\inst9|counter\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011010101010001101100000000000110110101010100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_dataIndex\(1),
	datab => \inst9|ALT_INV_counter\(4),
	datac => \inst9|ALT_INV_counter\(6),
	datad => \inst9|ALT_INV_dataIndex\(0),
	datae => \inst9|ALT_INV_counter\(5),
	combout => \inst9|sdio_do~0_combout\);

-- Location: LABCELL_X21_Y58_N21
\inst9|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Equal0~0_combout\ = ( !\inst9|dataIndex\(7) & ( (!\inst9|dataIndex\(5) & (!\inst9|dataIndex\(3) & (!\inst9|dataIndex\(4) & !\inst9|dataIndex\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_dataIndex\(5),
	datab => \inst9|ALT_INV_dataIndex\(3),
	datac => \inst9|ALT_INV_dataIndex\(4),
	datad => \inst9|ALT_INV_dataIndex\(6),
	dataf => \inst9|ALT_INV_dataIndex\(7),
	combout => \inst9|Equal0~0_combout\);

-- Location: LABCELL_X23_Y58_N54
\inst9|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux0~0_combout\ = ( \inst9|counter\(3) & ( \inst9|dataIndex\(0) & ( (!\inst9|dataIndex\(1) & ((\inst9|counter\(2)))) # (\inst9|dataIndex\(1) & (\inst9|counter\(0))) ) ) ) # ( !\inst9|counter\(3) & ( \inst9|dataIndex\(0) & ( (!\inst9|dataIndex\(1) & 
-- ((\inst9|counter\(2)))) # (\inst9|dataIndex\(1) & (\inst9|counter\(0))) ) ) ) # ( \inst9|counter\(3) & ( !\inst9|dataIndex\(0) & ( (!\inst9|dataIndex\(1)) # (\inst9|counter\(1)) ) ) ) # ( !\inst9|counter\(3) & ( !\inst9|dataIndex\(0) & ( 
-- (\inst9|dataIndex\(1) & \inst9|counter\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_dataIndex\(1),
	datab => \inst9|ALT_INV_counter\(0),
	datac => \inst9|ALT_INV_counter\(2),
	datad => \inst9|ALT_INV_counter\(1),
	datae => \inst9|ALT_INV_counter\(3),
	dataf => \inst9|ALT_INV_dataIndex\(0),
	combout => \inst9|Mux0~0_combout\);

-- Location: LABCELL_X21_Y58_N36
\inst9|Mux1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux1~3_combout\ = ( \inst9|dataIndex\(3) & ( !\inst9|dataIndex\(2) & ( (!\inst9|dataIndex\(0) & (\inst9|counter\(0) & (!\inst9|dataIndex\(1) & !\inst9|counter\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_dataIndex\(0),
	datab => \inst9|ALT_INV_counter\(0),
	datac => \inst9|ALT_INV_dataIndex\(1),
	datad => \inst9|ALT_INV_counter\(1),
	datae => \inst9|ALT_INV_dataIndex\(3),
	dataf => \inst9|ALT_INV_dataIndex\(2),
	combout => \inst9|Mux1~3_combout\);

-- Location: LABCELL_X21_Y58_N48
\inst9|Mux1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux1~5_combout\ = ( \inst9|dataIndex\(0) & ( \inst9|counter\(0) & ( (!\inst9|dataIndex\(2) & (\inst9|dataIndex\(1) & !\inst9|counter\(1))) ) ) ) # ( !\inst9|dataIndex\(0) & ( \inst9|counter\(0) & ( (\inst9|counter\(1)) # (\inst9|dataIndex\(2)) ) ) 
-- ) # ( \inst9|dataIndex\(0) & ( !\inst9|counter\(0) & ( (!\inst9|dataIndex\(2) & (!\inst9|dataIndex\(1) $ (\inst9|counter\(1)))) # (\inst9|dataIndex\(2) & ((!\inst9|dataIndex\(1)) # (!\inst9|counter\(1)))) ) ) ) # ( !\inst9|dataIndex\(0) & ( 
-- !\inst9|counter\(0) & ( (\inst9|dataIndex\(2) & (\inst9|dataIndex\(1) & \inst9|counter\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011111100110011110000110011111111110000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ALT_INV_dataIndex\(2),
	datac => \inst9|ALT_INV_dataIndex\(1),
	datad => \inst9|ALT_INV_counter\(1),
	datae => \inst9|ALT_INV_dataIndex\(0),
	dataf => \inst9|ALT_INV_counter\(0),
	combout => \inst9|Mux1~5_combout\);

-- Location: LABCELL_X21_Y58_N30
\inst9|Mux1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux1~6_combout\ = ( \inst9|dataIndex\(3) & ( \inst9|dataIndex\(2) & ( (!\inst9|counter\(0) & (!\inst9|counter\(1) & (!\inst9|dataIndex\(0) $ (!\inst9|dataIndex\(1))))) ) ) ) # ( !\inst9|dataIndex\(3) & ( \inst9|dataIndex\(2) & ( 
-- (!\inst9|counter\(1) & ((!\inst9|dataIndex\(0) & (!\inst9|counter\(0) & \inst9|dataIndex\(1))) # (\inst9|dataIndex\(0) & ((!\inst9|dataIndex\(1)))))) ) ) ) # ( \inst9|dataIndex\(3) & ( !\inst9|dataIndex\(2) & ( (!\inst9|counter\(0) & 
-- (!\inst9|dataIndex\(1) & !\inst9|counter\(1))) ) ) ) # ( !\inst9|dataIndex\(3) & ( !\inst9|dataIndex\(2) & ( (!\inst9|counter\(0) & (!\inst9|dataIndex\(1) & !\inst9|counter\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000001011000000000000100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_dataIndex\(0),
	datab => \inst9|ALT_INV_counter\(0),
	datac => \inst9|ALT_INV_dataIndex\(1),
	datad => \inst9|ALT_INV_counter\(1),
	datae => \inst9|ALT_INV_dataIndex\(3),
	dataf => \inst9|ALT_INV_dataIndex\(2),
	combout => \inst9|Mux1~6_combout\);

-- Location: LABCELL_X21_Y58_N18
\inst9|Mux1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux1~4_combout\ = ( \inst9|dataIndex\(2) & ( (\inst9|dataIndex\(3) & (!\inst9|dataIndex\(1) & \inst9|dataIndex\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ALT_INV_dataIndex\(3),
	datac => \inst9|ALT_INV_dataIndex\(1),
	datad => \inst9|ALT_INV_dataIndex\(0),
	dataf => \inst9|ALT_INV_dataIndex\(2),
	combout => \inst9|Mux1~4_combout\);

-- Location: LABCELL_X21_Y58_N0
\inst9|Mux1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux1~7_combout\ = ( \inst9|counter\(5) & ( \inst9|Mux1~4_combout\ & ( (!\inst9|counter\(2) & (\inst9|Mux1~5_combout\)) # (\inst9|counter\(2) & ((\inst9|Mux1~6_combout\))) ) ) ) # ( !\inst9|counter\(5) & ( \inst9|Mux1~4_combout\ & ( 
-- (\inst9|Mux1~3_combout\) # (\inst9|counter\(2)) ) ) ) # ( \inst9|counter\(5) & ( !\inst9|Mux1~4_combout\ & ( (!\inst9|counter\(2) & (\inst9|Mux1~5_combout\)) # (\inst9|counter\(2) & ((\inst9|Mux1~6_combout\))) ) ) ) # ( !\inst9|counter\(5) & ( 
-- !\inst9|Mux1~4_combout\ & ( (!\inst9|counter\(2) & \inst9|Mux1~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000010100101111101110111011101110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_counter\(2),
	datab => \inst9|ALT_INV_Mux1~3_combout\,
	datac => \inst9|ALT_INV_Mux1~5_combout\,
	datad => \inst9|ALT_INV_Mux1~6_combout\,
	datae => \inst9|ALT_INV_counter\(5),
	dataf => \inst9|ALT_INV_Mux1~4_combout\,
	combout => \inst9|Mux1~7_combout\);

-- Location: LABCELL_X21_Y58_N42
\inst9|Mux1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux1~8_combout\ = ( !\inst9|counter\(2) & ( (\inst9|counter\(5) & (!\inst9|counter\(0) & !\inst9|counter\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_counter\(5),
	datab => \inst9|ALT_INV_counter\(0),
	datad => \inst9|ALT_INV_counter\(1),
	dataf => \inst9|ALT_INV_counter\(2),
	combout => \inst9|Mux1~8_combout\);

-- Location: LABCELL_X23_Y58_N24
\inst9|Mux1~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux1~14_combout\ = ( \inst9|counter\(1) & ( \inst9|counter\(0) & ( (\inst9|dataIndex\(3) & (\inst9|counter\(2) & \inst9|dataIndex\(0))) ) ) ) # ( \inst9|counter\(1) & ( !\inst9|counter\(0) & ( (\inst9|counter\(2) & \inst9|dataIndex\(0)) ) ) ) # ( 
-- !\inst9|counter\(1) & ( !\inst9|counter\(0) & ( (!\inst9|counter\(2) & ((!\inst9|dataIndex\(3) & (\inst9|dataIndex\(2))) # (\inst9|dataIndex\(3) & (!\inst9|dataIndex\(2) & !\inst9|dataIndex\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000000100000000000000000111100000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_dataIndex\(3),
	datab => \inst9|ALT_INV_dataIndex\(2),
	datac => \inst9|ALT_INV_counter\(2),
	datad => \inst9|ALT_INV_dataIndex\(0),
	datae => \inst9|ALT_INV_counter\(1),
	dataf => \inst9|ALT_INV_counter\(0),
	combout => \inst9|Mux1~14_combout\);

-- Location: LABCELL_X23_Y58_N18
\inst9|Mux1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux1~13_combout\ = ( \inst9|counter\(1) & ( \inst9|counter\(0) & ( (!\inst9|dataIndex\(3) & (!\inst9|dataIndex\(2) & (\inst9|counter\(2) & \inst9|dataIndex\(0)))) # (\inst9|dataIndex\(3) & (\inst9|dataIndex\(2) & (!\inst9|counter\(2) & 
-- !\inst9|dataIndex\(0)))) ) ) ) # ( !\inst9|counter\(1) & ( \inst9|counter\(0) & ( (!\inst9|counter\(2) & (\inst9|dataIndex\(0) & (!\inst9|dataIndex\(3) $ (\inst9|dataIndex\(2))))) ) ) ) # ( !\inst9|counter\(1) & ( !\inst9|counter\(0) & ( 
-- (!\inst9|dataIndex\(3) & (\inst9|dataIndex\(2) & (!\inst9|counter\(2) & \inst9|dataIndex\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000100100000001000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_dataIndex\(3),
	datab => \inst9|ALT_INV_dataIndex\(2),
	datac => \inst9|ALT_INV_counter\(2),
	datad => \inst9|ALT_INV_dataIndex\(0),
	datae => \inst9|ALT_INV_counter\(1),
	dataf => \inst9|ALT_INV_counter\(0),
	combout => \inst9|Mux1~13_combout\);

-- Location: LABCELL_X23_Y58_N9
\inst9|Mux1~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux1~15_combout\ = ( \inst9|Mux1~13_combout\ & ( (!\inst9|dataIndex\(1)) # (\inst9|Mux1~14_combout\) ) ) # ( !\inst9|Mux1~13_combout\ & ( (\inst9|dataIndex\(1) & \inst9|Mux1~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_dataIndex\(1),
	datac => \inst9|ALT_INV_Mux1~14_combout\,
	dataf => \inst9|ALT_INV_Mux1~13_combout\,
	combout => \inst9|Mux1~15_combout\);

-- Location: LABCELL_X21_Y58_N45
\inst9|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux1~0_combout\ = ( \inst9|dataIndex\(0) & ( (!\inst9|counter\(5) & (!\inst9|counter\(0))) # (\inst9|counter\(5) & (\inst9|counter\(0) & !\inst9|dataIndex\(2))) ) ) # ( !\inst9|dataIndex\(0) & ( (!\inst9|counter\(5) & (!\inst9|counter\(0))) # 
-- (\inst9|counter\(5) & (\inst9|counter\(0) & ((\inst9|dataIndex\(1)) # (\inst9|dataIndex\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100110011001100010011001100110011000100110001001100010011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_counter\(5),
	datab => \inst9|ALT_INV_counter\(0),
	datac => \inst9|ALT_INV_dataIndex\(2),
	datad => \inst9|ALT_INV_dataIndex\(1),
	dataf => \inst9|ALT_INV_dataIndex\(0),
	combout => \inst9|Mux1~0_combout\);

-- Location: LABCELL_X21_Y58_N24
\inst9|Mux1~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux1~16_combout\ = ( \inst9|counter\(5) & ( \inst9|counter\(0) ) ) # ( !\inst9|counter\(5) & ( \inst9|counter\(0) & ( (!\inst9|dataIndex\(3) & (\inst9|dataIndex\(0) & (\inst9|dataIndex\(1) & \inst9|dataIndex\(2)))) # (\inst9|dataIndex\(3) & 
-- (!\inst9|dataIndex\(2) & ((!\inst9|dataIndex\(0)) # (!\inst9|dataIndex\(1))))) ) ) ) # ( \inst9|counter\(5) & ( !\inst9|counter\(0) & ( (!\inst9|dataIndex\(0) & ((\inst9|dataIndex\(2)))) # (\inst9|dataIndex\(0) & (\inst9|dataIndex\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011010111100110010000001001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_dataIndex\(0),
	datab => \inst9|ALT_INV_dataIndex\(3),
	datac => \inst9|ALT_INV_dataIndex\(1),
	datad => \inst9|ALT_INV_dataIndex\(2),
	datae => \inst9|ALT_INV_counter\(5),
	dataf => \inst9|ALT_INV_counter\(0),
	combout => \inst9|Mux1~16_combout\);

-- Location: LABCELL_X23_Y58_N15
\inst9|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux1~1_combout\ = ( \inst9|dataIndex\(1) & ( \inst9|dataIndex\(0) & ( (!\inst9|counter\(0) & (((!\inst9|dataIndex\(3) & !\inst9|counter\(5))) # (\inst9|dataIndex\(2)))) # (\inst9|counter\(0) & (((\inst9|counter\(5))))) ) ) ) # ( 
-- !\inst9|dataIndex\(1) & ( \inst9|dataIndex\(0) & ( !\inst9|counter\(0) $ (((\inst9|counter\(5) & \inst9|dataIndex\(2)))) ) ) ) # ( \inst9|dataIndex\(1) & ( !\inst9|dataIndex\(0) & ( (!\inst9|dataIndex\(3) & (!\inst9|counter\(5) & !\inst9|counter\(0))) ) ) 
-- ) # ( !\inst9|dataIndex\(1) & ( !\inst9|dataIndex\(0) & ( (!\inst9|counter\(0) & ((!\inst9|counter\(5)) # (\inst9|dataIndex\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100000000100010000000000011111100000000111000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_dataIndex\(3),
	datab => \inst9|ALT_INV_counter\(5),
	datac => \inst9|ALT_INV_dataIndex\(2),
	datad => \inst9|ALT_INV_counter\(0),
	datae => \inst9|ALT_INV_dataIndex\(1),
	dataf => \inst9|ALT_INV_dataIndex\(0),
	combout => \inst9|Mux1~1_combout\);

-- Location: LABCELL_X21_Y58_N6
\inst9|Mux1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux1~17_combout\ = ( \inst9|dataIndex\(3) & ( \inst9|dataIndex\(0) & ( (!\inst9|dataIndex\(1) & (\inst9|dataIndex\(2) & (\inst9|counter\(5) & !\inst9|counter\(0)))) # (\inst9|dataIndex\(1) & (((!\inst9|counter\(5) & \inst9|counter\(0))))) ) ) ) # ( 
-- !\inst9|dataIndex\(3) & ( \inst9|dataIndex\(0) & ( (!\inst9|counter\(5) & ((!\inst9|dataIndex\(1) & (\inst9|dataIndex\(2))) # (\inst9|dataIndex\(1) & (!\inst9|dataIndex\(2) & !\inst9|counter\(0))))) ) ) ) # ( \inst9|dataIndex\(3) & ( !\inst9|dataIndex\(0) 
-- & ( (\inst9|dataIndex\(1) & (!\inst9|dataIndex\(2) & (\inst9|counter\(5) & !\inst9|counter\(0)))) ) ) ) # ( !\inst9|dataIndex\(3) & ( !\inst9|dataIndex\(0) & ( (!\inst9|counter\(5) & ((!\inst9|dataIndex\(1) & ((!\inst9|counter\(0)))) # 
-- (\inst9|dataIndex\(1) & (\inst9|dataIndex\(2) & \inst9|counter\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000010000000001000000000001100000001000000000001001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_dataIndex\(1),
	datab => \inst9|ALT_INV_dataIndex\(2),
	datac => \inst9|ALT_INV_counter\(5),
	datad => \inst9|ALT_INV_counter\(0),
	datae => \inst9|ALT_INV_dataIndex\(3),
	dataf => \inst9|ALT_INV_dataIndex\(0),
	combout => \inst9|Mux1~17_combout\);

-- Location: LABCELL_X21_Y58_N54
\inst9|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux1~2_combout\ = ( \inst9|Mux1~1_combout\ & ( \inst9|Mux1~17_combout\ & ( (!\inst9|counter\(2) & (((!\inst9|counter\(1)) # (\inst9|Mux1~16_combout\)))) # (\inst9|counter\(2) & (\inst9|Mux1~0_combout\ & ((!\inst9|counter\(1))))) ) ) ) # ( 
-- !\inst9|Mux1~1_combout\ & ( \inst9|Mux1~17_combout\ & ( (!\inst9|counter\(2) & (((!\inst9|counter\(1)) # (\inst9|Mux1~16_combout\)))) # (\inst9|counter\(2) & (((\inst9|counter\(1))) # (\inst9|Mux1~0_combout\))) ) ) ) # ( \inst9|Mux1~1_combout\ & ( 
-- !\inst9|Mux1~17_combout\ & ( (!\inst9|counter\(2) & (((\inst9|Mux1~16_combout\ & \inst9|counter\(1))))) # (\inst9|counter\(2) & (\inst9|Mux1~0_combout\ & ((!\inst9|counter\(1))))) ) ) ) # ( !\inst9|Mux1~1_combout\ & ( !\inst9|Mux1~17_combout\ & ( 
-- (!\inst9|counter\(2) & (((\inst9|Mux1~16_combout\ & \inst9|counter\(1))))) # (\inst9|counter\(2) & (((\inst9|counter\(1))) # (\inst9|Mux1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101011111000100010000101010111011010111111011101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_counter\(2),
	datab => \inst9|ALT_INV_Mux1~0_combout\,
	datac => \inst9|ALT_INV_Mux1~16_combout\,
	datad => \inst9|ALT_INV_counter\(1),
	datae => \inst9|ALT_INV_Mux1~1_combout\,
	dataf => \inst9|ALT_INV_Mux1~17_combout\,
	combout => \inst9|Mux1~2_combout\);

-- Location: LABCELL_X21_Y58_N12
\inst9|Mux1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux1~9_combout\ = ( !\inst9|counter\(4) & ( (!\inst9|counter\(3) & (((\inst9|Mux1~2_combout\)))) # (\inst9|counter\(3) & (\inst9|Mux1~7_combout\)) ) ) # ( \inst9|counter\(4) & ( ((!\inst9|counter\(3) & (((\inst9|Mux1~8_combout\)))) # 
-- (\inst9|counter\(3) & (!\inst9|counter\(5) & ((\inst9|Mux1~15_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001110100011101000000001100110000011101000111010011000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_Mux1~7_combout\,
	datab => \inst9|ALT_INV_counter\(3),
	datac => \inst9|ALT_INV_counter\(5),
	datad => \inst9|ALT_INV_Mux1~8_combout\,
	datae => \inst9|ALT_INV_counter\(4),
	dataf => \inst9|ALT_INV_Mux1~15_combout\,
	datag => \inst9|ALT_INV_Mux1~2_combout\,
	combout => \inst9|Mux1~9_combout\);

-- Location: MLABCELL_X19_Y58_N48
\inst9|sdio_do~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|sdio_do~1_combout\ = ( !\inst9|Equal0~0_combout\ & ( (((\inst9|Mux1~9_combout\))) ) ) # ( \inst9|Equal0~0_combout\ & ( (!\inst9|dataIndex\(2) & (\inst9|sdio_do~0_combout\ & (((\inst9|dataIndex\(0))) # (\inst9|dataIndex\(1))))) # 
-- (\inst9|dataIndex\(2) & ((((\inst9|Mux0~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111000100000011000000001111000011110001111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_dataIndex\(1),
	datab => \inst9|ALT_INV_sdio_do~0_combout\,
	datac => \inst9|ALT_INV_dataIndex\(2),
	datad => \inst9|ALT_INV_dataIndex\(0),
	datae => \inst9|ALT_INV_Equal0~0_combout\,
	dataf => \inst9|ALT_INV_Mux0~0_combout\,
	datag => \inst9|ALT_INV_Mux1~9_combout\,
	combout => \inst9|sdio_do~1_combout\);

-- Location: LABCELL_X22_Y58_N33
\inst9|sdio_oe~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|sdio_oe~1_combout\ = ( \inst9|Equal0~0_combout\ & ( \inst9|nextState.SEND~q\ ) ) # ( !\inst9|Equal0~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst9|ALT_INV_nextState.SEND~q\,
	dataf => \inst9|ALT_INV_Equal0~0_combout\,
	combout => \inst9|sdio_oe~1_combout\);

-- Location: LABCELL_X23_Y57_N6
\inst9|SCLK~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|SCLK~0_combout\ = ( \inst9|state.SEND~q\ & ( \inst9|sclk_reg~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst9|ALT_INV_sclk_reg~q\,
	dataf => \inst9|ALT_INV_state.SEND~q\,
	combout => \inst9|SCLK~0_combout\);

-- Location: LABCELL_X23_Y57_N48
\inst9|SDENB~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|SDENB~0_combout\ = ( \inst9|state.SEND~q\ & ( !\Reset~input_o\ ) ) # ( !\inst9|state.SEND~q\ & ( (!\inst9|state.DISCARD~q\) # (!\Reset~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100111111001111110011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst9|ALT_INV_state.DISCARD~q\,
	datac => \ALT_INV_Reset~input_o\,
	dataf => \inst9|ALT_INV_state.SEND~q\,
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

-- Location: PLLREFCLKSELECT_X0_Y20_N0
\inst1|pll_out_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT\ : cyclonev_pll_refclk_select
-- pragma translate_off
GENERIC MAP (
	pll_auto_clk_sw_en => "false",
	pll_clk_loss_edge => "both_edges",
	pll_clk_loss_sw_en => "false",
	pll_clk_sw_dly => 0,
	pll_clkin_0_src => "clk_3",
	pll_clkin_1_src => "ref_clk1",
	pll_manu_clk_sw_en => "false",
	pll_sw_refclk_src => "clk_0")
-- pragma translate_on
PORT MAP (
	clkin => \inst1|pll_out_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\,
	clkout => \inst1|pll_out_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	extswitchbuf => \inst1|pll_out_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\);

-- Location: FRACTIONALPLL_X0_Y14_N0
\inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL\ : cyclonev_fractional_pll
-- pragma translate_off
GENERIC MAP (
	dsm_accumulator_reset_value => 0,
	forcelock => "false",
	mimic_fbclk_type => "none",
	nreset_invert => "true",
	output_clock_frequency => "307.2 mhz",
	pll_atb => 0,
	pll_bwctrl => 2000,
	pll_cmp_buf_dly => "0 ps",
	pll_cp_comp => "true",
	pll_cp_current => 10,
	pll_ctrl_override_setting => "false",
	pll_dsm_dither => "disable",
	pll_dsm_out_sel => "disable",
	pll_dsm_reset => "false",
	pll_ecn_bypass => "false",
	pll_ecn_test_en => "false",
	pll_enable => "true",
	pll_fbclk_mux_1 => "glb",
	pll_fbclk_mux_2 => "m_cnt",
	pll_fractional_carry_out => 32,
	pll_fractional_division => 1,
	pll_fractional_division_string => "'0'",
	pll_fractional_value_ready => "true",
	pll_lf_testen => "false",
	pll_lock_fltr_cfg => 25,
	pll_lock_fltr_test => "false",
	pll_m_cnt_bypass_en => "false",
	pll_m_cnt_coarse_dly => "0 ps",
	pll_m_cnt_fine_dly => "0 ps",
	pll_m_cnt_hi_div => 2,
	pll_m_cnt_in_src => "ph_mux_clk",
	pll_m_cnt_lo_div => 2,
	pll_m_cnt_odd_div_duty_en => "false",
	pll_m_cnt_ph_mux_prst => 0,
	pll_m_cnt_prst => 1,
	pll_n_cnt_bypass_en => "false",
	pll_n_cnt_coarse_dly => "0 ps",
	pll_n_cnt_fine_dly => "0 ps",
	pll_n_cnt_hi_div => 1,
	pll_n_cnt_lo_div => 1,
	pll_n_cnt_odd_div_duty_en => "false",
	pll_ref_buf_dly => "0 ps",
	pll_reg_boost => 0,
	pll_regulator_bypass => "false",
	pll_ripplecap_ctrl => 0,
	pll_slf_rst => "false",
	pll_tclk_mux_en => "false",
	pll_tclk_sel => "n_src",
	pll_test_enable => "false",
	pll_testdn_enable => "false",
	pll_testup_enable => "false",
	pll_unlock_fltr_cfg => 2,
	pll_vco_div => 2,
	pll_vco_ph0_en => "true",
	pll_vco_ph1_en => "true",
	pll_vco_ph2_en => "true",
	pll_vco_ph3_en => "true",
	pll_vco_ph4_en => "true",
	pll_vco_ph5_en => "true",
	pll_vco_ph6_en => "true",
	pll_vco_ph7_en => "true",
	pll_vctrl_test_voltage => 750,
	reference_clock_frequency => "153.6 mhz",
	vccd0g_atb => "disable",
	vccd0g_output => 0,
	vccd1g_atb => "disable",
	vccd1g_output => 0,
	vccm1g_tap => 2,
	vccr_pd => "false",
	vcodiv_override => "false",
  fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	coreclkfb => \inst1|pll_out_inst|altera_pll_i|fboutclk_wire\(0),
	ecnc1test => \inst1|pll_out_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\,
	nresync => GND,
	refclkin => \inst1|pll_out_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	shift => \inst1|pll_out_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftdonein => \inst1|pll_out_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \inst1|pll_out_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \inst1|pll_out_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	cntnen => \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	fbclk => \inst1|pll_out_inst|altera_pll_i|fboutclk_wire\(0),
	tclk => \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	vcoph => \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\,
	mhi => \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\);

-- Location: PLLRECONFIG_X0_Y18_N0
\inst1|pll_out_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG\ : cyclonev_pll_reconfig
-- pragma translate_off
GENERIC MAP (
  fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	cntnen => \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	mhi => \inst1|pll_out_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\,
	shift => \inst1|pll_out_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftenm => \inst1|pll_out_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \inst1|pll_out_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	shiften => \inst1|pll_out_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\);

-- Location: PLLOUTPUTCOUNTER_X0_Y19_N1
\inst1|pll_out_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER\ : cyclonev_pll_output_counter
-- pragma translate_off
GENERIC MAP (
	c_cnt_coarse_dly => "0 ps",
	c_cnt_fine_dly => "0 ps",
	c_cnt_in_src => "ph_mux_clk",
	c_cnt_ph_mux_prst => 0,
	c_cnt_prst => 2,
	cnt_fpll_src => "fpll_0",
	dprio0_cnt_bypass_en => "false",
	dprio0_cnt_hi_div => 1,
	dprio0_cnt_lo_div => 1,
	dprio0_cnt_odd_div_even_duty_en => "false",
	duty_cycle => 50,
	output_clock_frequency => "153.6 mhz",
	phase_shift => "3255 ps",
  fractional_pll_index => 0,
  output_counter_index => 6)
-- pragma translate_on
PORT MAP (
	nen0 => \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	shift0 => \inst1|pll_out_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \inst1|pll_out_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN6\,
	tclk0 => \inst1|pll_out_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	up0 => \inst1|pll_out_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	vco0ph => \inst1|pll_out_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\,
	divclk => \inst1|pll_out_inst|altera_pll_i|outclk_wire\(0));

-- Location: CLKCTRL_G1
\inst1|pll_out_inst|altera_pll_i|outclk_wire[0]~CLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|pll_out_inst|altera_pll_i|outclk_wire\(0),
	outclk => \inst1|pll_out_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\);

-- Location: CLKCTRL_G13
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

-- Location: LABCELL_X46_Y58_N33
\inst5|clk_counter[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|clk_counter[0]~0_combout\ = ( !\inst5|clk_counter\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst5|ALT_INV_clk_counter\(0),
	combout => \inst5|clk_counter[0]~0_combout\);

-- Location: FF_X46_Y58_N35
\inst5|clk_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst5|clk_counter[0]~0_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|clk_counter\(0));

-- Location: FF_X46_Y58_N34
\inst5|clk_counter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst5|clk_counter[0]~0_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|clk_counter[0]~DUPLICATE_q\);

-- Location: LABCELL_X46_Y58_N0
\inst5|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~0_combout\ = ( !\inst5|clk_counter\(1) & ( \inst5|clk_counter[0]~DUPLICATE_q\ ) ) # ( \inst5|clk_counter\(1) & ( !\inst5|clk_counter[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst5|ALT_INV_clk_counter\(1),
	dataf => \inst5|ALT_INV_clk_counter[0]~DUPLICATE_q\,
	combout => \inst5|Add0~0_combout\);

-- Location: FF_X46_Y58_N2
\inst5|clk_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst5|Add0~0_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|clk_counter\(1));

-- Location: FF_X46_Y58_N1
\inst5|clk_counter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst5|Add0~0_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|clk_counter[1]~DUPLICATE_q\);

-- Location: LABCELL_X46_Y58_N27
\inst5|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~1_combout\ = ( \inst5|clk_counter[1]~DUPLICATE_q\ & ( !\inst5|clk_counter\(0) $ (!\inst5|clk_counter\(2)) ) ) # ( !\inst5|clk_counter[1]~DUPLICATE_q\ & ( \inst5|clk_counter\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_clk_counter\(0),
	datad => \inst5|ALT_INV_clk_counter\(2),
	dataf => \inst5|ALT_INV_clk_counter[1]~DUPLICATE_q\,
	combout => \inst5|Add0~1_combout\);

-- Location: FF_X46_Y58_N28
\inst5|clk_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst5|Add0~1_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|clk_counter\(2));

-- Location: LABCELL_X46_Y58_N24
\inst5|sync~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|sync~0_combout\ = ( \inst5|clk_counter\(2) & ( !\inst5|sync~reg0_q\ $ (((!\inst5|clk_counter\(1)) # (\inst5|clk_counter\(0)))) ) ) # ( !\inst5|clk_counter\(2) & ( \inst5|sync~reg0_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001010111101010000101011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_clk_counter\(0),
	datac => \inst5|ALT_INV_clk_counter\(1),
	datad => \inst5|ALT_INV_sync~reg0_q\,
	dataf => \inst5|ALT_INV_clk_counter\(2),
	combout => \inst5|sync~0_combout\);

-- Location: FF_X46_Y58_N25
\inst5|sync~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst5|sync~0_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sync~reg0_q\);

-- Location: LABCELL_X22_Y57_N33
\inst9|stateRegOut[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|stateRegOut[2]~3_combout\ = ( \Reset~input_o\ & ( (\inst9|state.DONE~q\) # (\inst9|state.INTER~q\) ) ) # ( !\Reset~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_state.INTER~q\,
	datac => \inst9|ALT_INV_state.DONE~q\,
	dataf => \ALT_INV_Reset~input_o\,
	combout => \inst9|stateRegOut[2]~3_combout\);

-- Location: LABCELL_X22_Y57_N12
\inst9|stateRegOut[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|stateRegOut[1]~4_combout\ = ( \inst9|state.SEND~q\ ) # ( !\inst9|state.SEND~q\ & ( !\Reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Reset~input_o\,
	dataf => \inst9|ALT_INV_state.SEND~q\,
	combout => \inst9|stateRegOut[1]~4_combout\);

-- Location: LABCELL_X22_Y57_N24
\inst9|stateRegOut[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|stateRegOut[0]~5_combout\ = ( \inst9|state.DISCARD~q\ ) # ( !\inst9|state.DISCARD~q\ & ( (!\Reset~input_o\) # (\inst9|state.INTER~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111010111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Reset~input_o\,
	datac => \inst9|ALT_INV_state.INTER~q\,
	dataf => \inst9|ALT_INV_state.DISCARD~q\,
	combout => \inst9|stateRegOut[0]~5_combout\);

-- Location: LABCELL_X56_Y60_N18
\inst10|counter[10]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|counter[10]~5_combout\ = !\inst10|counter\(10)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst10|ALT_INV_counter\(10),
	combout => \inst10|counter[10]~5_combout\);

-- Location: FF_X56_Y60_N19
\inst10|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst10|counter[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|counter\(10));

-- Location: FF_X56_Y60_N23
\inst10|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst10|counter[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|counter\(11));

-- Location: LABCELL_X56_Y60_N21
\inst10|counter[11]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|counter[11]~4_combout\ = ( \inst10|counter\(10) & ( !\inst10|counter\(11) ) ) # ( !\inst10|counter\(10) & ( \inst10|counter\(11) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst10|ALT_INV_counter\(11),
	dataf => \inst10|ALT_INV_counter\(10),
	combout => \inst10|counter[11]~4_combout\);

-- Location: FF_X56_Y60_N22
\inst10|counter[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst10|counter[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|counter[11]~DUPLICATE_q\);

-- Location: FF_X56_Y60_N13
\inst10|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst10|counter[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|counter\(12));

-- Location: LABCELL_X56_Y60_N12
\inst10|counter[12]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|counter[12]~3_combout\ = ( \inst10|counter\(12) & ( \inst10|counter\(10) & ( !\inst10|counter\(11) ) ) ) # ( !\inst10|counter\(12) & ( \inst10|counter\(10) & ( \inst10|counter\(11) ) ) ) # ( \inst10|counter\(12) & ( !\inst10|counter\(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst10|ALT_INV_counter\(11),
	datae => \inst10|ALT_INV_counter\(12),
	dataf => \inst10|ALT_INV_counter\(10),
	combout => \inst10|counter[12]~3_combout\);

-- Location: FF_X56_Y60_N14
\inst10|counter[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst10|counter[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|counter[12]~DUPLICATE_q\);

-- Location: LABCELL_X56_Y60_N9
\inst10|counter[13]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|counter[13]~2_combout\ = ( \inst10|counter\(13) & ( \inst10|counter\(10) & ( (!\inst10|counter[12]~DUPLICATE_q\) # (!\inst10|counter\(11)) ) ) ) # ( !\inst10|counter\(13) & ( \inst10|counter\(10) & ( (\inst10|counter[12]~DUPLICATE_q\ & 
-- \inst10|counter\(11)) ) ) ) # ( \inst10|counter\(13) & ( !\inst10|counter\(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000011111111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst10|ALT_INV_counter[12]~DUPLICATE_q\,
	datad => \inst10|ALT_INV_counter\(11),
	datae => \inst10|ALT_INV_counter\(13),
	dataf => \inst10|ALT_INV_counter\(10),
	combout => \inst10|counter[13]~2_combout\);

-- Location: FF_X56_Y60_N11
\inst10|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst10|counter[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|counter\(13));

-- Location: LABCELL_X56_Y60_N36
\inst10|counter[14]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|counter[14]~1_combout\ = ( \inst10|counter\(14) & ( \inst10|counter\(12) & ( (!\inst10|counter\(10)) # ((!\inst10|counter\(11)) # (!\inst10|counter\(13))) ) ) ) # ( !\inst10|counter\(14) & ( \inst10|counter\(12) & ( (\inst10|counter\(10) & 
-- (\inst10|counter\(11) & \inst10|counter\(13))) ) ) ) # ( \inst10|counter\(14) & ( !\inst10|counter\(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000111111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst10|ALT_INV_counter\(10),
	datac => \inst10|ALT_INV_counter\(11),
	datad => \inst10|ALT_INV_counter\(13),
	datae => \inst10|ALT_INV_counter\(14),
	dataf => \inst10|ALT_INV_counter\(12),
	combout => \inst10|counter[14]~1_combout\);

-- Location: FF_X56_Y60_N38
\inst10|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst10|counter[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|counter\(14));

-- Location: LABCELL_X56_Y60_N48
\inst10|counter[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|counter[15]~0_combout\ = ( \inst10|counter\(15) & ( \inst10|counter\(12) & ( (!\inst10|counter\(10)) # ((!\inst10|counter[11]~DUPLICATE_q\) # ((!\inst10|counter\(14)) # (!\inst10|counter\(13)))) ) ) ) # ( !\inst10|counter\(15) & ( 
-- \inst10|counter\(12) & ( (\inst10|counter\(10) & (\inst10|counter[11]~DUPLICATE_q\ & (\inst10|counter\(14) & \inst10|counter\(13)))) ) ) ) # ( \inst10|counter\(15) & ( !\inst10|counter\(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_counter\(10),
	datab => \inst10|ALT_INV_counter[11]~DUPLICATE_q\,
	datac => \inst10|ALT_INV_counter\(14),
	datad => \inst10|ALT_INV_counter\(13),
	datae => \inst10|ALT_INV_counter\(15),
	dataf => \inst10|ALT_INV_counter\(12),
	combout => \inst10|counter[15]~0_combout\);

-- Location: FF_X56_Y60_N49
\inst10|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst10|counter[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|counter\(15));

-- Location: FF_X56_Y60_N52
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

-- Location: FF_X56_Y60_N37
\inst10|counter[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst10|counter[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|counter[14]~DUPLICATE_q\);

-- Location: LABCELL_X56_Y60_N42
\inst10|output_p[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|output_p[14]~feeder_combout\ = ( \inst10|counter[14]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst10|ALT_INV_counter[14]~DUPLICATE_q\,
	combout => \inst10|output_p[14]~feeder_combout\);

-- Location: FF_X56_Y60_N43
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

-- Location: FF_X56_Y60_N10
\inst10|counter[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst10|counter[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|counter[13]~DUPLICATE_q\);

-- Location: LABCELL_X56_Y60_N24
\inst10|output_p[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|output_p[13]~feeder_combout\ = ( \inst10|counter[13]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst10|ALT_INV_counter[13]~DUPLICATE_q\,
	combout => \inst10|output_p[13]~feeder_combout\);

-- Location: FF_X56_Y60_N25
\inst10|output_p[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	d => \inst10|output_p[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|output_p\(13));

-- Location: FF_X56_Y60_N59
\inst10|output_p[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parallel_Data_CLK_IN~inputCLKENA0_outclk\,
	asdata => \inst10|counter[12]~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|output_p\(12));

-- Location: LABCELL_X61_Y60_N12
\inst10|output_p[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|output_p[11]~feeder_combout\ = ( \inst10|counter[11]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst10|ALT_INV_counter[11]~DUPLICATE_q\,
	combout => \inst10|output_p[11]~feeder_combout\);

-- Location: FF_X61_Y60_N13
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

-- Location: MLABCELL_X50_Y60_N27
\inst10|output_p[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|output_p[10]~feeder_combout\ = ( \inst10|counter\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst10|ALT_INV_counter\(10),
	combout => \inst10|output_p[10]~feeder_combout\);

-- Location: FF_X50_Y60_N28
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

-- Location: LABCELL_X40_Y30_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;


pll_reconfig_inst_tasks : altera_pll_reconfig_tasks
-- pragma translate_off
GENERIC MAP (
      number_of_fplls => 1);
-- pragma translate_on
END structure;


