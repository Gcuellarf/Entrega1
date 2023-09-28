-- This file is part of the course "Circuitos Digitales II"
-- by Guillermo Adolfo Cuéllar Fonseca
-- File name: Proyecto_1/DMux4Way.vhdl

-- Library and packages
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (Interface)
entity DMux4Way is
	port(x:	in 	std_logic;
		s1	:	in		std_logic;
		s2 :  in    std_logic;
		a	:	out 	std_logic;
		b	:	out	std_logic;
		c	: 	out 	std_logic;
		d	: 	out 	std_logic);
end entity;

-- Architecture (Implementation)
architecture arch of DMux4Way is
begin
	a <= ((not s1) and (not s2) and x);
	b <= ((not s1) and s2 and x);
	c <= (s1 and (not s2) and x);
	d <= (s1 and s2 and x);
end architecture;	