library ieee;
use ieee.std_logic_1164.all;

entity MainFSM is
	port(
		output_p: out std_logic_vector(15 downto 0);
		sclk: inout std_logic;
		sdenb: inout std_logic;
		sdio: out std_logic;
		configok: inout std_logic;
		writeconfig: in std_logic;
		serialTimer: in std_logic;
		ClkOUT: out std_logic;
		writeConfigReceived: out std_logic;
		stateRegOut: out std_logic_vector(2 downto 0);
		nextStateRegOut: out std_logic_vector(2 downto 0);
		clockBuffOut: inout std_logic_vector(2 downto 0);
		resetn: inout std_logic;
		discardBuffer: inout std_logic
		);
end entity;

architecture basic of MainFSM is

	signal currentState: integer := 0;
	
begin

--Data transfer 

	snythesizer: entity work.SinLUT(basic)
							port map(serialTimer, output_p);
							
	configurator: entity work.ConfigureADC(basic)
							port map(writeconfig, configok, sdenb, sclk, sdio, serialTimer, ClkOUT, writeConfigReceived, stateRegOut, nextStateRegOut, resetn, discardBuffer);
							
							
end architecture;
		