library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MainFSM is
	port(
		output_p: out std_logic_vector(15 downto 0);
		parallelDataClk_p: in std_logic;
		
		sclk: inout std_logic;
		sdenb: inout std_logic;
		sdio: inout std_logic;
		
		configok: inout std_logic;
		writeconfig: in std_logic;
		WrReEnButton: in std_logic;
		WrReStatus: out std_logic;
		inputClock: in std_logic;
		ClkOut: out std_logic;
		stateRegOut: out std_logic_vector(2 downto 0);
		resetn: in std_logic
	);
end entity;

architecture basic of MainFSM is

	signal currentState: integer := 0;
	signal clockDivideBuffer: std_logic_vector(7 downto 0) := x"00";
	signal WrReEn: std_logic := '0';
	
	signal btn_ff1, btn_ff2 : std_logic := '1';
	signal btn_prev         : std_logic := '1';
	
begin

	WrReStatus <= WrReEn;
	
	process(inputClock, resetn)
	begin
	  if resetn = '0' then
	    btn_ff1  <= '1';
	    btn_ff2  <= '1';
	    btn_prev <= '1';
	    WrReEn   <= '0';
	  elsif rising_edge(inputClock) then
	    btn_ff1 <= WrReEnButton;
	    btn_ff2 <= btn_ff1;
	    if (btn_prev = '1') and (btn_ff2 = '0') then
	      WrReEn <= not WrReEn;
	    end if;
	    btn_prev <= btn_ff2;
	  end if;
	end process;
	
	synthesizer: entity work.SinLUT(basic)
						port map(parallelDataClk_p, output_p);
						
	configurator: entity work.ConfigureADC(basic)
						port map(writeconfig, configok, sdenb, sclk, sdio, inputClock, ClkOUT, stateRegOut, resetn, WrReEn);

end architecture;
