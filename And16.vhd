-- This file is part of the course "Circuitos Digitales II"
-- by Guillermo Adolfo Cuéllar Fonseca
-- File name: Proyecto_1/And16.vhdl

-- And16 gate:
-- for i=0..15, f[i] = a[i] or b[i]

-- Library and packages 
library ieee;
use ieee.std_logic_1164.all;

-- Entity (Interface)
entity And16 is 
port (a : in std_logic_vector(15 downto 0);
		b : in std_logic_vector(15 downto 0);
		f : out std_logic_vector(15 downto 0));
end entity;

-- Architecture (Implementation)
architecture arch of And16 is 
	signal x : std_logic_vector(15 downto 0);
	
begin 
x(0)  <= a(0)  nand b(0);
x(1)  <= a(1)  nand b(1);
x(2)  <= a(2)  nand b(2);
x(3)  <= a(3)  nand b(3);
x(4)  <= a(4)  nand b(4);
x(5)  <= a(5)  nand b(5);
x(6)  <= a(6)  nand b(6);
x(7)  <= a(7)  nand b(7);
x(8)  <= a(8)  nand b(8);
x(9)  <= a(9)  nand b(9);
x(10) <= a(10) nand b(10);
x(11) <= a(11) nand b(11);
x(12) <= a(12) nand b(12);
x(13) <= a(13) nand b(13);
x(14) <= a(14) nand b(14);
x(15) <= a(15) nand b(15);

f(0)  <= x(0)  nand x(0);
f(1)  <= x(1)  nand x(1);
f(2)  <= x(2)  nand x(2);
f(3)  <= x(3)  nand x(3);
f(4)  <= x(4)  nand x(4);
f(5)  <= x(5)  nand x(5);
f(6)  <= x(6)  nand x(6);
f(7)  <= x(7)  nand x(7);
f(8)  <= x(8)  nand x(8);
f(9)  <= x(9)  nand x(9);
f(10) <= x(10) nand x(10);
f(11) <= x(11) nand x(11);
f(12) <= x(12) nand x(12);
f(13) <= x(13) nand x(13);
f(14) <= x(14) nand x(14);
f(15) <= x(15) nand x(15);
end architecture;