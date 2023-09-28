-- This file is part of the course "Circuitos Digitales II"
-- by Guillermo Adolfo Cuéllar Fonseca
-- File name: Proyecto_1/XorGate.vhdl

-- Xor gate:
-- f = a xor b

-- Library and packages 
library ieee;
use ieee.std_logic_1164.all;

-- Entity (Interface)
entity XorGate is 
	port (a : in std_logic;
			b : in std_logic;
			f : out std_logic);
end entity;

-- Architecture (Implementation)
architecture arch of XorGate is 
	signal x : std_logic := '0';
	signal y : std_logic := '0';
	signal z : std_logic := '0';
begin 
	x <= (a nand b);
	y <= (a nand x);
	z <= (b nand x);
	f <= (y nand z);
end architecture;