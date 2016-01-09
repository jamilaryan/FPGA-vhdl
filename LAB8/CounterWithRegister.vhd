-- decade counter
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY CounterWithRegister IS
	port(clk, reset		: IN std_logic;
			q					:OUT std_logic_vector(3 DOWNTO 0));
END ENTITY;

ARCHITECTURE example OF CounterWithRegister IS
	constant TEN		:integer := 10;
	signal r_reg: unsigned(3 DOWNTO 0);
	signal r_next: unsigned(3 DOWNTO 0);
	
	BEGIN
		PROCESS(clk, reset)	-- state register
			BEGIN
				if(reset = '1') then
					r_reg <= (OTHERS => '0');
				elsif (clk'event and clk ='1') then
					r_reg <= r_next;
				end if;
		END PROCESS;
		-- next-state logic
		r_next <= (OTHERS =>'0') when r_reg = (TEN-1) else
					r_reg + 1;
		-- output logic
		q <= std_logic_vector(r_reg);
END ARCHITECTURE;