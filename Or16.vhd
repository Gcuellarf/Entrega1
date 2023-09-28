-- This file is part of the course "Circuitos Digitales II"
-- by Guillermo Adolfo Cuéllar Fonseca
-- File name: Proyecto_1/Or16.vhdl

-- Or16 gate:
-- for i=0..15, f[i] = a[i] or b[i]

-- Library and packages 
library ieee;
use ieee.std_logic_1164.all;

-- Entity (empty)
entity compuerta_or16 is 
port (a : in std_logic_vector(15 downto 0);
		b : in std_logic_vector(15 downto 0);
		f : out std_logic_vector(15 downto 0));
end entity;

-- Architecture (Implementation)
architecture arch of compuerta_or16 is 
	signal x : std_logic_vector(15 downto 0);
	signal y : std_logic_vector(15 downto 0);
	
begin 
x(0) <= a(0) nand a(0);
x(1) <= a(1) nand a(1);
x(2) <= a(2) nand a(2);
x(3) <= a(3) nand a(3);
x(4) <= a(4) nand a(4);
x(5) <= a(5) nand a(5);
x(6) <= a(6) nand a(6);
x(7) <= a(7) nand a(7);
x(8) <= a(8) nand a(8);
x(9) <= a(9) nand a(9);
x(10)<= a(10)nand a(10);
x(11)<= a(11)nand a(11);
x(12)<= a(12)nand a(12);
x(13)<= a(13)nand a(13);
x(14)<= a(14)nand a(14);
x(15)<= a(15)nand a(15);

y(0) <= b(0) nand b(0);
y(1) <= b(1) nand b(1);
y(2) <= b(2) nand b(2);
y(3) <= b(3) nand b(3);
y(4) <= b(4) nand b(4);
y(5) <= b(5) nand b(5);
y(6) <= b(6) nand b(6);
y(7) <= b(7) nand b(7);
y(8) <= b(8) nand b(8);
y(9) <= b(9) nand b(9);
y(10)<= b(10)nand b(10);
y(11)<= b(11)nand b(11);
y(12)<= b(12)nand b(12);
y(13)<= b(13)nand b(13);
y(14)<= b(14)nand b(14);
y(15)<= b(15)nand b(15);

f(0) 	<= x(0) 	nand y(0);
f(1) 	<= x(1) 	nand y(1);
f(2) 	<= x(2) 	nand y(2);
f(3) 	<= x(3) 	nand y(3);
f(4) 	<= x(4) 	nand y(4);
f(5) 	<= x(5) 	nand y(5);
f(6) 	<= x(6) 	nand y(6);
f(7)	<= x(7) 	nand y(7);
f(8) 	<= x(8) 	nand y(8);
f(9) 	<= x(9) 	nand y(9);
f(10) <= x(10) nand y(10);
f(11) <= x(11) nand y(11);
f(12) <= x(12) nand y(12);
f(13) <= x(13) nand y(13);
f(14) <= x(14) nand y(14);
f(15) <= x(15) nand y(15);
end architecture; 