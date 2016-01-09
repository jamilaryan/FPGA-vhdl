LIBRARY ieee;
USE ieee.std_logic_1164.all;


ENTITY Sevenseg IS

	PORT ( --bcd     : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			 bcd     : IN NATURAL RANGE 0 TO 15;
			 seven_seg :OUT STD_LOGIC_VECTOR (6 DOWNTO 0)
	);
	
END ENTITY;

ARCHITECTURE one OF Sevenseg IS
	BEGIN
		PROCESS(bcd)
		BEGIN
			CASE bcd IS  --the object bcdis evaluated
			
				WHEN 0 => seven_seg <= "1000000"; 
				WHEN 1 => seven_seg<=  "1111001"; 
				WHEN 2 => seven_seg<=  "0100100"; 
				WHEN 3 => seven_seg<=  "0110000"; 
				WHEN 4 => seven_seg<=  "0011001"; 
				WHEN 5 => seven_seg <= "0010010"; 
				WHEN 6 => seven_seg<=  "0000010"; 
				WHEN 7 => seven_seg<=  "1111000"; 
				WHEN 8 => seven_seg<=  "0000000"; 
				WHEN 9 => seven_seg <= "0010000";
				WHEN 10 => seven_seg <= "0001000"; 
				WHEN 11 => seven_seg <= "0000011";
				WHEN 12 => seven_seg <= "1000110";
				WHEN 13 => seven_seg <= "0100001";
				WHEN 14 => seven_seg <= "0000100";
				WHEN OTHERS => seven_seg <= "0001110"; 
			
			
--				WHEN "0000" => seven_seg <= "1000000"; 
--				WHEN "0001" => seven_seg<=  "1111001"; 
--				WHEN "0010" => seven_seg<=  "0100100"; 
--				WHEN "0011" => seven_seg<=  "0110000"; 
--				WHEN "0100" => seven_seg<=  "0011001"; 
--				WHEN "0101" => seven_seg <= "0010010"; 
--				WHEN "0110" => seven_seg<=  "0000010"; 
--				WHEN "0111" => seven_seg<=  "1111000"; 
--				WHEN "1000" => seven_seg<=  "0000000"; 
--				WHEN "1001" => seven_seg <= "0010000";
--				WHEN "1010" => seven_seg <= "0001000"; 
--				WHEN "1011" => seven_seg <= "0000011";
--				WHEN "1100" => seven_seg <= "1000110";
--				WHEN "1101" => seven_seg <= "0100001";
--				WHEN "1110" => seven_seg <= "0000100";
--				WHEN OTHERS => seven_seg <= "0001110"; 
			END CASE;
		END PROCESS;
END ARCHITECTURE;