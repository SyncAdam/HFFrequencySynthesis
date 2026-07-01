library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SinLUT is
	port(
		     clk: in std_logic;
			  output_p: out std_logic_vector(15 downto 0)
		 );
end SinLUT;

architecture basic of SinLUT is												
begin

process(clk)
	variable counter: unsigned(15 downto 0) := x"0000";
begin
	if rising_edge(clk) then
		output_p <= std_logic_vector(counter);
		counter := counter + 1024;
	end if;
end process;

end architecture basic;