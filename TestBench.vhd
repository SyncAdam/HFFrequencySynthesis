library ieee;
use ieee.std_logic_1164.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;

entity TestBench is
end entity;

architecture basic of TestBench is

	signal clock: std_logic := '0';
	signal output_i: std_logic_vector(15 downto 0);
	signal output_q: std_logic_vector(15 downto 0);
	signal writeConfig: std_logic := '0';
	signal configOK: std_logic;
	signal SDENB: std_logic;
	signal SCLK: std_logic;
	signal SDIO: std_logic;
	signal DataCLK: std_logic;
	
	signal DataCLK_OUT: std_logic;

	signal ClkOUT: std_logic;
	signal writeConfigReceived: std_logic;
	signal stateRegOut:  std_logic_vector(2 downto 0);
	signal nextStateRegOut:  std_logic_vector(2 downto 0);
	signal resetn: std_logic := '1';
	signal discardBuffer:  std_logic;
	signal WrReEn: std_logic := '0';
	signal WrReStatus: std_logic;
	
	signal aclr: std_logic := '0';
	signal ddrData: std_logic_vector(15 downto 0);

	signal PLL_Locked : std_logic := '0';
	signal PLL_Clock: std_logic := '0';
	
	signal reset: std_logic := '0';

	signal signalGenClockEnable: std_logic := '1';
	signal signalGenCeOut: std_logic;

	signal sinLUT_output: std_logic_vector(15 downto 0);
	signal syncr: std_logic;
	
begin

	reset <= not resetn;

	DUT: entity work.MainFSM(basic)
				port map(WrReEn, WrReStatus, clock, resetn);

	Config: entity work.ConfigureDAC(basic)
				port map(writeConfig => writeConfig,
					 CLKIN => clock,
					 resetn => resetn,
					 WrReEn => WrReStatus,
					 configOK => configOK,
					 SDENB => SDENB,
					 SCLK => SCLK,
					 SDIO => SDIO,
					 stateRegOut => stateRegOut);

	SignalGen: entity work.NewSignalGenerator(rtl)
				port map(clk => clock,
					 reset => reset,
					 clk_enable => signalGenClockEnable,
					 ce_out => signalGenCeOut,
					 Out1 => output_i,
					 Out2 => output_q);

	DDSSignalGen: entity work.SinLUT(basic)
				port map(clk => clock,
					 output_p => sinLUT_output);	

	Sync: entity work.synchronisation(rtl)
				port map(clk => clock,
					 resetn => resetn,
					 data => sinLUT_output,
					 sync => syncr);

	DDR: entity work.DDROUT(SYN)
			port map(aclr => aclr,
		datain_h => output_i,
		datain_l => output_q,
		outclock => clock,
		dataout => ddrData);	

	PLL: entity work.PLL_OUT(RTL)
			port map(locked	=> PLL_Locked,
		 outclk_0 => PLL_Clock,
		 refclk	=> clock,
		 rst => reset);

	ClockProc: process begin
		clock <= not clock;
		wait for 6.53594771241830ns;
	end process;

	process
	begin
		resetn <= '0';
		wait for 100ps;
		resetn <= '1';
		WrReEn <= '1';
		wait for 10ms;
		resetn <= '0';
		wait for 200ns;
		resetn <= '1';
		wait for 200ns;
		WrReEn <= '0';
		wait for 200ns;
		WrReEn <= '1';
		wait for 200ns;
	end process;


	process
	begin
		wait for 10ns;
		writeConfig <= '0';	
		wait until configOK = '1';
		writeConfig <= '1';
		wait until WrReStatus = '1';
		wait for 500us;
		writeConfig <= '0';
		wait;
	end process;
	
end architecture;