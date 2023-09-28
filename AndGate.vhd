-- This file is part of the course "Circuitos Digitales II"
-- by Guillermo Adolfo Cuéllar Fonseca
-- File name: Proyecto_1/AndGate.vhdl


-- And gate:
-- f = a and b

-- Library and packages 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (Interface)
entity AndGate is
	port( a	:	in 	std_logic;
			b	:	in 	std_logic;
			f	:	out	std_logic);
end entity;

-- Architecture (Implementation)
architecture arch of AndGate is
	signal x: std_logic := '0';
	
begin
	x<=(a nand b);
	f<=(x nand x);
end architecture;