library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ConfigROM is 
	port(
			address: in std_logic_vector(6 downto 0);
			output: out std_logic_vector(15 downto 0)
	);
end entity;

architecture basic of ConfigROM is

	type configDataTable is array (0 to 48) of unsigned(15 downto 0);
	
	signal configValues: configDataTable :=
	(
		B"0000010010011100",	-- Config 0		quadrature modulation correction, interpolation, fifo, alarm, sinc filter !! Change needed
		B"0000010000001110",	-- Config 1		disable parity checks
		B"0111000000000000",	-- Config 2		Not configured
		B"1111000000000000",	-- Config 3		Not configured
		B"0000000000000000",	-- Config 4		Not configured
		B"0000000000000000",	-- Config 5		Not configured
		B"0000000000000000",	-- Config 6		Not configured
		B"1111111111111111",	-- Config 7		Not configured
		B"0000000000000000",	-- Config 8		Not configured
		B"1000000000000000",	-- Config 9		Not configured
		B"0000000000000000",	-- Config 10	Not configured
		B"0000000000000000",	-- Config 11	Not configured
		B"0000010000000000",	-- Config 12	Not configured
		B"0000010000000000",	-- Config 13	Not configured
		B"0000010000000000",	-- Config 14	Not configured
		B"0000010000000000",	-- Config 15	Not configured
		B"0000000000000000",	-- Config 16	Not configured
		B"0000000000000000",	-- Config 17	Not configured
		B"0000000000000000",	-- Config 18	Not configured
		B"0000000000000000",	-- Config 19	Not configured
		B"0000000000000000",	-- Config 20	Not configured
		B"0000000000000000",	-- Config 21	Not configured
		B"0000000000000000",	-- Config 22	Not configured
		B"0000000000000000",	-- Config 23	Not configured
		B"0000000000000000",	-- Config 24	Not configured
		B"0000010001000000",	-- Config 25	Not configured
		B"0000000000100000",	-- Config 26	Not configured
		B"0000000000000000",	-- Config 27	Not configured
		B"0000000000000000",	-- Config 28	Not configured
		B"0000000000000000",	-- Config 29	Not configured
		B"0001000100010001",	-- Config 30	Not configured
		B"0001000101000000",	-- Config 31	Not configured
		B"0010010000000000",	-- Config 32	Not configured
		B"0000000000000000",	-- Config 33	Not configured
		B"0001101100011011",	-- Config 34	Not configured
		B"1111111111111111",	-- Config 35	Not configured
		B"0000000000000000",	-- Config 36	Not configured
		B"0111101001111010",	-- Config 37	Not configured
		B"1011011010110110",	-- Config 38	Not configured
		B"1110101011101010",	-- Config 39	Not configured
		B"0100010101000101",	-- Config 40	Not configured
		B"0001101000011010",	-- Config 41	Not configured
		B"0001011000010110",	-- Config 42	Not configured
		B"1010101010101010",	-- Config 43	Not configured
		B"1100011011000110",	-- Config 44	Not configured
		B"0000000000000100",	-- Config 45	Not configured
		B"0000000000000000",	-- Config 46	Not configured
		B"0000000000000000",	-- Config 47	Not configured
		B"1111111111111111"	-- Config 48	Not configured
	);

 
begin

	output <= std_logic_vector(configValues(to_integer(unsigned(address))));

end architecture;