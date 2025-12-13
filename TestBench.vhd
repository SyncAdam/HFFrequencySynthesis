library ieee;
use ieee.std_logic_1164.all;

entity TestBench is
end entity;

architecture basic of TestBench is

	signal clock: std_logic := '0';
	signal outputValue: std_logic_vector(15 downto 0);
	signal writeConfig: std_logic := '0';
	signal configOK: std_logic;
	signal SDENB: std_logic;
	signal SCLK: std_logic;
	signal SDIO: std_logic;
	
begin

	DUT: entity work.MainFSM(basic)
				port map(outputValue, SCLK, SDENB, SDIO, configOK, writeConfig, clock);
	
	ClockProc: process begin
		clock <= not clock;
		wait for 10ns;
	end process;

	process
	begin
	
		wait for 10ns;
		writeConfig <= '1';
		wait for 120us;
		writeConfig <= '0';		
		wait until configOK = '1';		
		wait;
	end process;
	
end architecture;