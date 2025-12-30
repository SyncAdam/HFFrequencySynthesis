library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MainFSM is
	port(
		output_p: out std_logic_vector(15 downto 0);
		parallelDataClk_p: out std_logic;
		
		sclk: inout std_logic;
		sdenb: inout std_logic;
		sdio: out std_logic;
		
		configok: inout std_logic;
		writeconfig: in std_logic;
		inputClock: in std_logic;
		ClkOUT: out std_logic;
		writeConfigReceived: out std_logic;
		stateRegOut: out std_logic_vector(2 downto 0);
		nextStateRegOut: out std_logic_vector(2 downto 0);
		resetn: inout std_logic;
		discardBuffer: inout std_logic
		);
end entity;

architecture basic of MainFSM is

	signal currentState: integer := 0;
	signal innerDataClock: std_logic := '0';
	signal clockDivideBuffer: std_logic_vector(7 downto 0) := x"00";
	
begin

--Data transfer 

	ClockRepeat: process(inputClock)
	begin
	if rising_edge(inputClock) then
		clockDivideBuffer <= std_logic_vector(unsigned(clockDivideBuffer) + 1);
		if(clockDivideBuffer = x"00") then
			innerDataClock <= not innerDataClock;
			parallelDataClk_p <= not innerDataClock;
		end if;
	end if;
	end process;

	snythesizer: entity work.SinLUT(basic)
							port map(innerDataClock, output_p);
							
	configurator: entity work.ConfigureADC(basic)
							port map(writeconfig, configok, sdenb, sclk, sdio, inputClock, ClkOUT, writeConfigReceived, stateRegOut, nextStateRegOut, resetn, discardBuffer);
							
							
end architecture;
		