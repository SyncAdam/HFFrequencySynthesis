library ieee;
use ieee.std_logic_1164.all;

entity MainFSM is
	port(
		clk: in std_logic;
		output: out std_logic_vector(15 downto 0);
		sclk: inout std_logic;
		sdenb: inout std_logic;
		sdio: out std_logic;
		configok: inout std_logic;
		writeconfig: in std_logic;
		serialTimer: in std_logic
		);
end entity;

architecture basic of MainFSM is

	signal currentState: integer := 0;
	
begin

--Data transfer 

	snythesizer: entity work.SinLUT(basic)
							port map(clk, output);
							
	configurator: entity work.ConfigureADC(basic)
							port map(writeconfig, configok, sdenb, sclk, sdio, serialTimer);
							
							
end architecture;
		