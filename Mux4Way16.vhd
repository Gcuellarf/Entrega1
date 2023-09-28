-- This file is part of the course "Circuitos Digitales II"
-- by Guillermo Adolfo Cuéllar Fonseca
-- File name: Proyecto_1/Mux4Way16.vhdl

-- Library and packages
library IEEE;
use IEEE.std_logic_1164.all;

entity Mux4Way16 is 
	Port(
		a 	: in std_logic_vector(15 downto 0);
		b 	: in std_logic_vector(15 downto 0);
		c	: in std_logic_vector(15 downto 0);
		d 	: in std_logic_vector(15 downto 0);
		s1 : in std_logic;	
		s2 : in std_logic;
		o 	: out std_logic_vector(15 downto 0)
	);
end entity;

architecture arch of Mux4Way16 is
	component Mux4Way is
		Port(
			a	:	in 	std_logic;
			b	:	in		std_logic;
			c	: 	in		std_logic;
			d	: 	in 	std_logic;
			s1 : 	in 	std_logic;
			s2	:	in 	std_logic;
			o	:	out	std_logic
		);
	end component;
begin
	Mux15: Mux4Way
		Port map(
			a => a(15),
			b => b(15),
			c => c(15),
			d => d(15),
			s1 => s1,
			s2 => s2,
			o => o(15)
		);
	Mux14: Mux4Way
		Port map(
			a => a(14),
			b => b(14),
			c => c(14),
			d => d(14),
			s1 => s1,
			s2 => s2,
			o => o(14)
		);
	Mux13: Mux4Way
		Port map(
			a => a(13),
			b => b(13),
		   c => c(13),
			d => d(13),
			s1 => s1,
			s2 => s2,
			o => o(13)
		);
	Mux12: Mux4Way
		Port map(
			a => a(12),
			b => b(12),
			c => c(12),
			d => d(12),
			s1 => s1,
			s2 => s2,
			o => o(12)
		);
	Mux11: Mux4Way
		Port map(
			a => a(11),
			b => b(11),
			c => c(11),
			d => d(11),
			s1 => s1,
			s2 => s2,
			o => o(11)
		);
	Mux10: Mux4Way
		Port map(
			a => a(10),
			b => b(10),
			c => c(10),
			d => d(10),
			s1 => s1,
			s2 => s2,
			o => o(10)
		);
	Mux9: Mux4Way
		Port map(
			a => a(9),
			b => b(9),
			c => c(9),
			d => d(9),
			s1 => s1,
			s2 => s2,
			o => o(9)
		);
	Mux8: Mux4Way
		Port map(
			a => a(8),
			b => b(8),
			c => c(8),
			d => d(8),
			s1 => s1,
			s2 => s2,
			o => o(8)
		);
	Mux7: Mux4Way
		Port map(
			a => a(7),
			b => b(7),
			c => c(7),
			d => d(7),
			s1 => s1,
			s2 => s2,
			o => o(7)
		);
	Mux6: Mux4Way
		Port map(
			a => a(6),
			b => b(6),
			c => c(6),
			d => d(6),
			s1 => s1,
			s2 => s2,
			o => o(6)
		);
	Mux5: Mux4Way
		Port map(
			a => a(5),
			b => b(5),
			c => c(5),
			d => d(5),
			s1 => s1,
			s2 => s2,
			o => o(5)
		);
	Mux4: Mux4Way
		Port map(
			a => a(4),
			b => b(4),
			c => c(4),
			d => d(4),
			s1 => s1,
			s2 => s2,
			o => o(4)
		);
	Mux3: Mux4Way
		Port map(
			a => a(3),
			b => b(3),
			c => c(3),
			d => d(3),
			s1 => s1,
			s2 => s2,
			o => o(3)
		);
	Mux2: Mux4Way
		Port map(
			a => a(2),
			b => b(2),
			c => c(2),
			d => d(2),
			s1 => s1,
			s2 => s2,
			o => o(2)
		);
	Mux1: Mux4Way
		Port map(
			a => a(1),
			b => b(1),
			c => c(1),
			d => d(1),
			s1 => s1,
			s2 => s2,
			o => o(1)
		);
	Mux0: Mux4Way
		Port map(
			a => a(0),
			b => b(0),
			c => c(0),
			d => d(0),
			s1 => s1,
			s2 => s2,
			o => o(0)
		);

end architecture;