-- This file is part of the course "Circuitos Digitales II"
-- by Guillermo Adolfo Cuéllar Fonseca
-- File name: Proyecto_1/Or8Way_test.vhdl

-- Or8Way gate:
-- for i=0..15, f[i] = a[i] or b[i]

-- Library and packages 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (empty)
entity Or8Way_test is	
end entity;

-- Architecture (test process)
architecture arch_test of Or8Way_test is

-- Component declaration
	component Or8Way
		port(
			a	:	in 	std_logic;
			b	:	in 	std_logic;
			c  :  in		std_logic;
			d	:	in		std_logic;
			e	:	in		std_logic;
			f	:	in		std_logic;
			g	:	in		std_logic;
			h	:	in		std_logic;
			o	:	out	std_logic);
	end component;
	
-- Signal declaration
	signal a_test	: std_logic := '0';
	signal b_test	: std_logic := '0';
	signal c_test	: std_logic := '0';
	signal d_test	: std_logic := '0';
	signal e_test	: std_logic := '0';
	signal f_test	: std_logic := '0';
	signal g_test	: std_logic := '0';
	signal h_test	: std_logic := '0';
	signal o_test  : std_logic := '0';
	signal x_test  : std_logic;
	signal y_test	: std_logic;
	signal z_test  : std_logic;
	signal w_test	: std_logic;
	signal v_test  : std_logic;
	signal u_test	: std_logic;
	
	begin
	
-- DUT instantiation
	dut1	: Or8Way
		port map (
			a => a_test,
			b => b_test,
			c => c_test,
			d => d_test,
			e => e_test,
			f => f_test,
			g => g_test,
			h => h_test,
			o => o_test
		);

	-- Stimulus generation
	Stimulus	: process
	begin
	  
	  report "Start of the test of Or8Way"  
		severity note;
		
		a_test <= '0'; 
		b_test <= '0';
		c_test <= '0'; 
		d_test <= '0';
		e_test <= '0'; 
		f_test <= '0';
		g_test <= '0'; 
		h_test <= '0';
		wait for 1 ns;
		assert o_test = '0'
		  report "Failure for f = 0"
		  severity failure;
		  
		a_test <= '0'; 
		b_test <= '0';
		c_test <= '0'; 
		d_test <= '1';
		e_test <= '0'; 
		f_test <= '0';
		g_test <= '0'; 
		h_test <= '0';
		wait for 1 ns;
		assert o_test = '1'
		  report "Failure for f = 1"
		  severity failure;
		
		a_test <= '0'; 
		b_test <= '0';
		c_test <= '0'; 
		d_test <= '0';
		e_test <= '0'; 
		f_test <= '1';
		g_test <= '0'; 
		h_test <= '0';
		wait for 1 ns;
		assert o_test = '1'
		  report "Failure for f = 1"
		  severity failure;
		  
		a_test <= '0'; 
		b_test <= '0';
		c_test <= '0'; 
		d_test <= '0';
		e_test <= '0'; 
		f_test <= '0';
		g_test <= '1'; 
		h_test <= '0';
		wait for 1 ns;
		assert o_test = '1'
		  report "Failure for f = 1"
		  severity failure;
		
		a_test <= '0'; 
		b_test <= '0';
		c_test <= '0'; 
		d_test <= '0';
		e_test <= '0'; 
		f_test <= '0';
		g_test <= '1'; 
		h_test <= '1';
		wait for 1 ns;
		assert o_test = '1'
		  report "Failure for f = 1"
		  severity failure;
		
		a_test <= '0'; 
		b_test <= '0';
		c_test <= '0'; 
		d_test <= '1';
		e_test <= '1'; 
		f_test <= '1';
		g_test <= '0'; 
		h_test <= '0';
		wait for 1 ns;
		assert o_test = '1'
		  report "Failure for f = 1"
		  severity failure;
		  
		a_test <= '1'; 
		b_test <= '1';
		c_test <= '1'; 
		d_test <= '1';
		e_test <= '1'; 
		f_test <= '1';
		g_test <= '1'; 
		h_test <= '1';
		wait for 1 ns;
		assert o_test = '0'
		  report "Failure for f = 0"
		  severity failure;
		
		report "Test successful"
		severity note;
		wait;
		
	end process;

end architecture;