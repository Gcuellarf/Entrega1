-- This file is part of the course "Circuitos Digitales II"
-- by Guillermo Adolfo Cuéllar Fonseca
-- File name: Proyecto_2/HalfAdder.vhdl

-- Library and packages 
library ieee;
use ieee.std_logic_1164.all;

-- Entity (Interface)
entity HalfAdder is
	Port(a, b     : in std_logic;
		sum, carry : out std_logic);
end entity;

-- Architecture (Implementation)
architecture arch_HalfAdder of HalfAdder is
begin

	sum <= a xor b;
	carry <= a and b;
	
end architecture;