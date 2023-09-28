-- This file is part of the course "Circuitos Digitales II"
-- by Guillermo Adolfo Cuéllar Fonseca
-- File name: Proyecto_1/OrGate.vhdl

-- Or gate:
-- f = a or b

-- Library and packages 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (Interface)
entity OrGate is
	port(a:	in 	std_logic;
		b	:	in 	std_logic;
		f	:	out	std_logic);
end entity;

-- Architecture (Implementation)
architecture arch of OrGate is
	signal x: std_logic := '0';
	signal y: std_logic := '0';
begin
	x <= (a nand a);
	y <= (b nand b);
	f <= (x nand y);
end architecture;