-- This file is part of the course "Circuitos Digitales II"
-- by Guillermo Adolfo Cuéllar Fonseca
-- File name: Proyecto_1/And16_test.vhdl

-- And16 gate:
-- for i=0..15, f[i] = a[i] or b[i]

library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (empty)
entity And16_test is	
end entity;

-- Architecture (test process)
architecture arch_test of and16_test is

	-- Component declaration
	component And16
		port(
			a	:	in 	std_logic_vector(15 downto 0);
			b	:	in 	std_logic_vector(15 downto 0);
			f	:	out	std_logic_vector(15 downto 0)
		);
	end component;
	
	-- Signal declaration
	signal a_test	: std_logic_vector(15 downto 0) := "0000000000000000";
	signal b_test	: std_logic_vector(15 downto 0) := "0000000000000000";
	signal x_test	: std_logic_vector(15 downto 0) := "0000000000000000";
	signal f_test	: std_logic_vector(15 downto 0);
	
	begin
	
	-- DUT instantiation
	dut1	: And16 
		port map (
			a => a_test,
			b => b_test,
			f => f_test
		);

	-- Stimulus generation
	Stimulus	: process
	begin
	  
	  report "Start of the test of And16"	  
		severity note;
		
		a_test <= "0000000000000000"; 
		b_test <= "0000000000000000"; 
		wait for 1 ns;
		assert f_test = "0000000000000000"
		  report "Failure for f = [0000000000000000]"
		  severity failure;
		
		a_test <= "0000000000000000";
		b_test <= "1111111111111111"; 	
		wait for 1 ns;
		assert f_test = "0000000000000000"
		  report "Failure for f = [0000000000000000]"
		  severity failure;
		
		a_test <= "1111111111111111"; 
		b_test <= "0000000000000000";
		wait for 1 ns;
		assert f_test = "0000000000000000"
		  report "Failure for f = [1111111111111111]"
		  severity failure;
		
		a_test <= "1111111111111111";   
		b_test <= "1111111111111111";
		wait for 1 ns;
		assert f_test = "1111111111111111"
		  report "Failure for f = [1111111111111111]"
		  severity failure;
		  
		a_test <= "0000111000110010";   
		b_test <= "1111000111001101";
		wait for 1 ns;
		assert f_test = "0000000000000000"
		  report "Failure for f = [0000000000000000]"
		  severity failure;
		 
		a_test <= "1011100101110001";   
		b_test <= "0011011101110101";
		wait for 1 ns;
		assert f_test = "0011000101110001"
		  report "Failure for f = [0011000101110001]"
		  severity failure;
		  
		report "Test successful"
		severity note;
		wait;
		
	end process;

end architecture;