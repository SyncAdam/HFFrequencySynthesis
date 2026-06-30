library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity synchronisation is
	port(clk: in std_logic;
		  data: in std_logic_vector(15 downto 0);
		  sync: out std_logic);
end entity;

architecture rtl of synchronisation is
begin


end architecture;