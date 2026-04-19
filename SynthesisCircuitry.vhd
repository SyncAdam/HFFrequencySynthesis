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

type rawTableData is array (0 to 24) of signed(0 to 15);
	
	constant values: rawTableData := (to_signed(0, 16),
to_signed(3980, 16),
to_signed(7709, 16),
to_signed(10953, 16),
to_signed(13510, 16),
to_signed(15217, 16),
to_signed(15969, 16),
to_signed(15717, 16),
to_signed(14478, 16),
to_signed(12329, 16),
to_signed(9405, 16),
to_signed(5890, 16),
to_signed(2006, 16),
to_signed(-2005, 16),
to_signed(-5889, 16),
to_signed(-9404, 16),
to_signed(-12328, 16),
to_signed(-14477, 16),
to_signed(-15716, 16),
to_signed(-15968, 16),
to_signed(-15216, 16),
to_signed(-13509, 16),
to_signed(-10952, 16),
to_signed(-7708, 16),
to_signed(-3979, 16)
												 );														
begin

process(clk)

	variable counter: integer := 0;
	
	begin
	if rising_edge(clk) then
		output_p <= std_logic_vector(values(counter));
		counter := counter + 1;
		if(counter > 24) then
			counter := 0;
		end if;
	end if;
	
end process;

end architecture basic;