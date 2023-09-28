-- This file is part of the course "Circuitos Digitales II"
-- by Guillermo Adolfo Cuéllar Fonseca
-- File name: Proyecto_1/NandGate_test.vhdl

-- Nand gate:
-- f = a Nand b

-- Library and packages 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (empty)
entity NandGate_test is	
end entity;

-- Architecture (test process)
architecture arch_test of NandGate_test is

-- Component declaration
	component NandGate
		port(a:	in 	std_logic;
			b	:	in 	std_logic;
			f	:	out	std_logic);
	end component;
	
-- Signal declaration
	signal a_test	: std_logic := '0';
	signal b_test	: std_logic := '0';
	signal x_test  : std_logic := '0';
	signal f_test	: std_logic;
	
	begin
	
-- DUT instantiation
	dut1	: NandGate
		port map (
			a => a_test,
			b => b_test,
			f => f_test);

	-- Stimulus generation
	Stimulus	: process
	begin
	  
	  report "Start of the test of NandGate"	  
		severity note;
		
		a_test <= '0'; 
		b_test <= '0'; 
		wait for 1 ns;
		assert f_test = '1'
		  report "Failure for f = 1"
		  severity failure;
		  
		a_test <= '0'; 
		b_test <= '1'; 
		wait for 1 ns;
		assert f_test = '1'
		  report "Failure for f = 1"
		  severity failure;
		  
		a_test <= '1'; 
		b_test <= '0'; 
		wait for 1 ns;
		assert f_test = '1'
		  report "Failure for f = 1"
		  severity failure;
		  
		a_test <= '1'; 
		b_test <= '1'; 
		wait for 10 ns;
		assert f_test = '0'
		  report "Failure for f = 0"
		  severity failure;
		 
		report "Test successful"
		severity note;
		wait;
		
	end process;

end architecture;