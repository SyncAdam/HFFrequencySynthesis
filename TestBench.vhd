library ieee;
use ieee.std_logic_1164.all;

entity TestBench is
end entity;

architecture basic of TestBench is

	signal clock: std_logic := '0';
	signal output_p: std_logic_vector(15 downto 0);
	signal writeConfig: std_logic := '0';
	signal configOK: std_logic;
	signal SDENB: std_logic;
	signal SCLK: std_logic;
	signal SDIO: std_logic;
	signal DataCLK: std_logic;

	signal ClkOUT: std_logic;
	signal writeConfigReceived: std_logic;
	signal stateRegOut:  std_logic_vector(2 downto 0);
	signal nextStateRegOut:  std_logic_vector(2 downto 0);
	signal resetn: std_logic := '1';
	signal discardBuffer:  std_logic;
	
begin

	DUT: entity work.MainFSM(basic)
				port map(output_p, DataCLK, SCLK, SDENB, SDIO, configOK, writeConfig, clock, ClkOUT, writeConfigReceived, stateRegOut, nextStateRegOut, resetn, discardBuffer);
	
	ClockProc: process begin
		clock <= not clock;
		wait for 10ns;
	end process;

	process
	begin
		wait for 10ns;
		writeConfig <= '0';	
		wait until configOK = '1';	
		resetn <= '0';
		wait for 500ns;
		resetn <= '1';
		wait;
	end process;
	
end architecture;