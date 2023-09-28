-- This file is part of the course "Circuitos Digitales II"
-- by Guillermo Adolfo Cuéllar Fonseca
-- File name: Proyecto_1/Dmux.vhdl

-- Mux gate:
-- o = a, if sel = 0
--     b, in other case

-- Library and packages 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (Interface)
entity Dmux is
	port(a:	in 	std_logic;
		sel:	in		std_logic;
		o	:	out 	std_logic);
end entity;

-- Architecture (Implementation)
architecture arch of Dmux is
signal x: std_logic;

begin
	x <= (not sel) and a;
	o <= sel and a;
end architecture;	