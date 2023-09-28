-- This file is part of the course "Circuitos Digitales II"
-- by Guillermo Adolfo Cuéllar Fonseca
-- File name: Proyecto_1/NotGate_test.vhdl

-- Not gate:
-- f = not x

-- Library and packages 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (empty)
entity NotGate_test is	
end entity;

-- Architecture (test process)
architecture arch_test of NotGate_test is

	-- Component declaration
	component NotGate
		port(x:	in 	std_logic;
			f	:	out	std_logic);
	end component;
	
	-- Signal declaration
	signal x_test	: std_logic := '0';
	signal f_test	: std_logic;
	
	begin
	
	-- DUT instantiation
	dut1	: NotGate 
		port map (
			x => x_test,
			f => f_test
		);

	-- Stimulus generation
	Stimulus	: process
	begin
	  
	  report "Start of the test of NotGate"	  
		severity note;
		
		x_test <= '0'; 
		wait for 1 ns;
		assert f_test = '1'
		  report "Failure for f = 0"
		  severity failure;
		  
		x_test <= '1'; 
		wait for 10 ns;
		assert f_test = '0'
		  report "Failure for f = 1"
		  severity failure;
		 
		report "Test successful"
		severity note;
		wait;
		
	end process;

end architecture;