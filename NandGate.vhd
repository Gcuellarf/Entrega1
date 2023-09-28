-- This file is part of the course "Circuitos Digitales II"
-- by Guillermo Adolfo Cuéllar Fonseca
-- File name: Proyecto_1/NandGate.vhdl

-- Nand gate:
-- f = a Nand b

-- Library and packages 
library ieee;
use ieee.std_logic_1164.all;

-- Entity (Interface)
entity NandGate is 
	port (a : in std_logic;
			b : in std_logic;
			f : out std_logic);
end entity;

-- Architecture (Implementation)
architecture arch of NandGate is 
	signal x : std_logic := '0';
begin 
	x <= (a and b);
	f <= not x;
end architecture;