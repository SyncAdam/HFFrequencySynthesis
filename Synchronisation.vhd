library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity synchronisation is
	port(clk: in std_logic;
		  resetn: in std_logic;
		  sync: inout std_logic := '0');
end entity;

architecture rtl of synchronisation is
	signal latched_data: std_logic_vector(15 downto 0) := x"0000";
	signal counter: unsigned(3 downto 0) := to_unsigned(0, 4);
	signal clk_counter: unsigned(2 downto 0) := to_unsigned(0, 3);
	signal enable: std_logic := '0';
begin
	
	Synchronise: process(clk)
		variable tmp_clk_counter: unsigned(2 downto 0);
	begin
		if (clk'event and clk = '1') then
			tmp_clk_counter := clk_counter + 1;
			clk_counter <= tmp_clk_counter;
			if(tmp_clk_counter = x"7") then
				sync <= not sync;
				end if;
		end if;
		if (resetn = '0') then
			clk_counter <= b"000";
			sync <= '0';
		end if;
	end process;

end architecture;