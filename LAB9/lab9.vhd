LIBRARY ieee;
USE		ieee.std_logic_1164.all;

ENTITY lab9 IS
	PORT(w, clk, reset 	:IN std_logic;
			z					:OUT std_logic);
END ENTITY;

ARCHITECTURE rtl OF lab9 IS
	SIGNAL present_state, next_state	: std_logic_vector(1 DOWNTO 0);
	
	BEGIN
	-- state register
		PROCESS(reset, clk)
		 BEGIN
			if(reset='0') then
				present_state <= "00";
			elsif (rising_edge(clk)) then
				present_state <= next_state;
			end if;
		END PROCESS;
	-- next-state logic (combinational circuit)
		next_state(0) <= w AND (NOT present_state(0)) AND (NOT present_state(0));
		next_state(1) <= w AND (present_state(0) OR present_state(1));
		
	-- output logic
		z <= present_state(1);
END ARCHITECTURE;