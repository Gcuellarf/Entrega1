-- This file is part of the course "Circuitos Digitales II"
-- by Guillermo Adolfo Cuéllar Fonseca
-- File name: Proyecto_1/Dmux_test.vhdl

-- Mux gate:
-- o = a, if sel = 0
--     b, in other case

-- Library and packages 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (empty)
entity Dmux_test is	
end entity;

-- Architecture (test process)
architecture arch_test of Dmux_test is

	-- Component declaration
	component Dmux
		port(a:	in 	std_logic;
		  sel	:	in		std_logic;
		  x	:	out	std_logic;
		  o	:	out	std_logic);
	end component;
	
	-- Signal declaration
	signal a_test		: std_logic := '0';
	signal sel_test	: std_logic := '0';
	signal x_test  	: std_logic;
	signal o_test		: std_logic;
	
	begin
	
	-- DUT instantiation
	dut1	: Dmux
		port map (
			a 	 => a_test,
			sel => sel_test,
			x 	 => x_test,
			o 	 => o_test);

	-- Stimulus generation
	Stimulus	: process
	begin
	  
	   report "Start of the test of Dmux"	  
		severity note;
		
		a_test 	<= '0';
		sel_test <= '0';
		wait for 1 ns;
		assert x_test = '0';
		assert o_test = '0';
		  report "Failure for {x,sel} = {0,0}"
		  severity failure;
		  
		a_test 	<= '0';
		sel_test <= '1';
		wait for 1 ns;
		assert x_test = '0';
		assert o_test = '0';
		  report "Failure for {x,sel} = {0,0}"
		  severity failure;
		
		a_test 	<= '1';
		sel_test <= '0';
		wait for 1 ns;
		assert x_test = '0';
		assert o_test = '1';
		  report "Failure for {x,sel} = {0,1}"
		  severity failure;
		
		a_test 	<= '1';
		sel_test <= '1';
		wait for 1 ns;
		assert x_test = '1';
		assert o_test = '0';
		  report "Failure for {x,sel} = {1,0}"
		  severity failure;
		 
		report "Test successful"
		severity note;
		wait;
		
	end process;

end architecture;