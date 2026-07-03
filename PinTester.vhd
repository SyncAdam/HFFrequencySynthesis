library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PinTester is
	port(sel: in unsigned(3 downto 0);
		  clk: in std_logic;
		  data: out unsigned(15 downto 0));
end entity;


architecture rtl of PinTester is
	signal counter: unsigned(7 downto 0) := x"00";
	signal output: std_logic := '0';
begin
	process(clk)
	begin
		if(clk'event and clk = '1') then
			counter <= counter + 1;
			if(counter + 1 = x"ff") then
				output <= not output;
			end if;
		end if;
	end process;
	
	data <= B"000000000000000" & output sll to_integer(sel);
		
end architecture;