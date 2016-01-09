library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY top_model IS
		PORT ( -- in0 :IN STD_LOGIC_VECTOR (3 DOWNTO 0);   --
				in1  :IN std_logic;		-- push button key[0], counter0 clock
				in2  :IN std_logic;		-- push button key[1], counter0 reset
				in3  :IN std_logic;		-- push button key[2], counter0 direction
		ledR :OUT STD_LOGIC_VECTOR (6 DOWNTO 0);		-- seven_seg module[0], sevseg0 leds
		ledR2 :OUT STD_LOGIC_VECTOR(6 DOWNTO 0));		-- seven_seg module[1], sevseg0 leds
END ENTITY;


ARCHITECTURE struct OF Top_Model IS
		SIGNAL sig : NATURAL RANGE 0 TO 15; -- intermediate signal, input for counter0 & output for sevseg0
		SIGNAL sig1 : NATURAL RANGE 0 TO 15; -- intermediate signal, input for counter1 & output for sevseg1
		SIGNAL 	y : STD_logic;					-- intermediate signal, AND-gate output in heirarchical design
		SIGNAL 	x : STD_LOGIC_VECTOR (3 DOWNTO 0);	-- intermediate signal, AND-gate input, x[0] & x[3] is needed for y
		
		COMPONENT sevseg IS -- component declaration
			PORT ( bcd     : IN NATURAL RANGE 0 TO 15;	-- bcd input from counter0
			seven_seg		:OUT STD_LOGIC_VECTOR (6 DOWNTO 0));	--seven_seg led output 
		END COMPONENT;
		
		COMPONENT counter IS -- component declaration
			PORT( clock	:IN std_logic;	-- clock input from push button in1
			reset :IN std_logic;			-- reset input from push button in2
			direction:IN std_logic;		-- direction input from push button in3
			digit	:OUT natural range 0 to 9); 	-- counter output that goes into seven_seg input
		END COMPONENT;
		
		
		
		-----------------------
		
BEGIN
	x <= std_LOGIC_VECTOR(to_unsigned(sig,4));		-- type conversion from natural to std_LOGIC_VECTOR
																-- x has to be logic vector so that the individual bits can be used in y

   y <= (not in1) AND x(0) AND x(3);

-- components instantiations
	CC0:sevseg PORT MAP(sig, ledR);			-- INPUT(digit from counter), OUTPUT(seven_seg leds)
	CC1:counter PORT MAP(in1, in2, in3, sig);	-- INPUT(clock, reset, direction, digit that goes to sevseg)
	
	CC2:counter PORT MAP(y,in2,in3,sig1);	-- INPUT(y from AND, reset, direction, x
	CC3:sevseg PORT MAP(sig1,ledR2);
END ARCHITECTURE;