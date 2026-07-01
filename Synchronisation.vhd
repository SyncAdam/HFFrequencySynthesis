library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity synchronisation is
	port(clk: in std_logic;
		  resetn: in std_logic;
		  data: in std_logic_vector(15 downto 0);
		  sync: inout std_logic := '0');
end entity;

architecture rtl of synchronisation is
	signal latched_data: std_logic_vector(15 downto 0) := x"0000";
	signal counter: unsigned(3 downto 0) := to_unsigned(0, 4);
	signal clk_counter: unsigned(2 downto 0) := to_unsigned(0, 3);
	signal enable: std_logic := '0';
begin

	StoreData: process(clk)
	begin
		if (clk'event and clk = '1') then
			latched_data <= data;
		end if;
		if (resetn = '0') then
			latched_data <= x"0000";
		end if;
	end process;

	Supervise: process(clk)
		variable tmp_counter: unsigned(3 downto 0);
	begin
		if (clk'event and clk = '1') then
			if not (latched_data = data) then
				enable <= '1';
				counter <= x"0";
			else
				tmp_counter := counter + 1;
				counter <= tmp_counter;
				if(tmp_counter = x"F") then
					enable <= '0';
				end if;
			end if;
		end if;
		if (resetn = '0') then
			enable <= '0';
			counter <= x"0";
		end if;
	end process;
	
	Synchronise: process(clk)
		variable tmp_clk_counter: unsigned(2 downto 0);
	begin
		if (clk'event and clk = '1') then
			if (enable = '1') then
				tmp_clk_counter := clk_counter + 1;
				clk_counter <= tmp_clk_counter;
				if(tmp_clk_counter = x"7") then
					sync <= not sync;
				end if;
			else
				sync <= '0';
			end if;
		end if;
		if (resetn = '0') then
			clk_counter <= b"000";
			sync <= '0';
		end if;
	end process;

end architecture;