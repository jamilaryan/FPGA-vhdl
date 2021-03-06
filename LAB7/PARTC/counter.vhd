library ieee;
use ieee.std_logic_1164.all;

entity counter is
	port(clock	:IN std_logic;
			reset :IN std_logic;
			direction:IN std_logic;
			digit	:OUT natural range 0 to 9);
end entity;

architecture one of counter is
begin 
	process(clock)
			variable temp: natural range 0 to 10;
			
			begin
				if reset='0' then
					temp:=0;
				elsif(rising_edge(clock) and direction='0') then
						
						if (temp=9) then
							temp:=0;
						else
							temp :=temp +1;
						end if;
				elsif(rising_edge(clock) and direction='1') then
						
						if (temp=0) then
							temp:=9;
						else
							temp :=temp -1;
						end if;
				end if;
				digit<=temp;
	end process;
end architecture;
			
			
			
			