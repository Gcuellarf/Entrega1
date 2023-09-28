-- This file is part of the course "Circuitos Digitales II"
-- by Guillermo Adolfo Cuéllar Fonseca
-- File name: Proyecto_2/FullAdder.vhdl

-- Library and packages 
library IEEE;
use IEEE.std_logic_1164.all;

-- Entity (Interface)
entity FullAdder is
	Port(a 	: in std_logic;
		b    	: in std_logic;
		c     : in std_logic;	
		sum   : out std_logic;
		carry : out std_logic);
end entity;

-- Architecture (Implementation)
architecture arch of FullAdder is
	signal sum1 : std_logic;
	signal carry1 : std_logic;
	signal carry2 : std_logic;
	
	component HalfAdder is
		Port(a	:	in 	std_logic;
			b	   :	in		std_logic;
			sum   :	out 	std_logic;
			carry	:	out	std_logic);
	end component;
begin
	HalfAdder1: HalfAdder
		Port map(
			a     => a,
			b     => b,
			sum   => sum1,
			carry => carry1
		);
   HalfAdder2: HalfAdder
		Port map(
			a     => sum1,
			b     => c,
			sum   => sum,
			carry => carry2
		);

end architecture;