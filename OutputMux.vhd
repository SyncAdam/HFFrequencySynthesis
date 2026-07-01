library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity OutputMux is 
	port(sel: in std_logic;
		  Data1: in std_logic_vector(15 downto 0);
		  Data2: in std_logic_vector(15 downto 0);
		  DataOut: out std_logic_vector(15 downto 0));
end entity;


architecture rtl of OutputMux is
begin

	DataOut <= Data1 when sel = '1' else
				  Data2;
				  
end architecture;