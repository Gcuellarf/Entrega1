-- This file is part of the course "Circuitos Digitales II"
-- by Guillermo Adolfo Cuéllar Fonseca
-- File name: Proyecto_1/Or8Way.vhdl

-- Or8Way gate:
-- for i=0..15, f[i] = a[i] or b[i]

-- Library and packages 
library ieee;
use ieee.std_logic_1164.all;

-- Entity (empty)
entity compuerta_or8way is 
port (a : in std_logic;
		b : in std_logic;
		c : in std_logic;
		d : in std_logic;
		e : in std_logic;
		f : in std_logic;
		g : in std_logic;
		h : in std_logic;
		o : out std_logic);
end entity;

-- Architecture (Implementation)
architecture arch of compuerta_or8way is 
	signal x : std_logic := '0';
	signal y : std_logic := '0';
	signal z : std_logic := '0';
	signal w : std_logic := '0';
	signal v : std_logic := '0';
	signal u : std_logic := '0';
begin 
x <= (a nand a) nand (b nand b);
y <= (c nand c) nand (d nand d);
z <= (e nand e) nand (f nand f);
w <= (g nand g) nand (h nand h);
v <= (x nand x) nand (y nand y);
u <= (z nand z) nand (w nand w);
o <= (v nand v) nand (u nand u);
end architecture;