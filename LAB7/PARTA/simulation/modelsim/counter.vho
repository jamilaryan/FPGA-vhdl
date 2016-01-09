-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Full Version"

-- DATE "11/06/2015 11:36:13"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

ENTITY 	counter IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	direction : IN std_logic;
	digit : OUT STD.STANDARD.natural range 0 TO 9
	);
END counter;

-- Design Ports Information
-- digit[0]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit[1]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit[2]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit[3]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- direction	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF counter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_direction : std_logic;
SIGNAL ww_digit : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \temp[0]~3_combout\ : std_logic;
SIGNAL \temp[0]~DUPLICATE_q\ : std_logic;
SIGNAL \direction~input_o\ : std_logic;
SIGNAL \temp[3]~2_combout\ : std_logic;
SIGNAL \temp[2]~1_combout\ : std_logic;
SIGNAL \temp[1]~0_combout\ : std_logic;
SIGNAL temp : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_temp[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_direction~input_o\ : std_logic;
SIGNAL ALT_INV_temp : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_direction <= direction;
digit <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_digit));
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_temp[0]~DUPLICATE_q\ <= NOT \temp[0]~DUPLICATE_q\;
\ALT_INV_direction~input_o\ <= NOT \direction~input_o\;
ALT_INV_temp(3) <= NOT temp(3);
ALT_INV_temp(2) <= NOT temp(2);
ALT_INV_temp(1) <= NOT temp(1);
ALT_INV_temp(0) <= NOT temp(0);

-- Location: IOOBUF_X89_Y21_N5
\digit[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \temp[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_digit(0));

-- Location: IOOBUF_X89_Y20_N62
\digit[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => temp(1),
	devoe => ww_devoe,
	o => ww_digit(1));

-- Location: IOOBUF_X89_Y20_N45
\digit[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => temp(2),
	devoe => ww_devoe,
	o => ww_digit(2));

-- Location: IOOBUF_X89_Y21_N56
\digit[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => temp(3),
	devoe => ww_devoe,
	o => ww_digit(3));

-- Location: IOIBUF_X89_Y23_N21
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G11
\clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock~input_o\,
	outclk => \clock~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y20_N78
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X88_Y20_N58
\temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \temp[0]~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(0));

-- Location: LABCELL_X88_Y20_N57
\temp[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp[0]~3_combout\ = ( !temp(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_temp(0),
	combout => \temp[0]~3_combout\);

-- Location: FF_X88_Y20_N59
\temp[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \temp[0]~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp[0]~DUPLICATE_q\);

-- Location: IOIBUF_X89_Y20_N95
\direction~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_direction,
	o => \direction~input_o\);

-- Location: LABCELL_X88_Y20_N39
\temp[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp[3]~2_combout\ = ( temp(3) & ( temp(1) & ( ((!temp(2)) # (!\temp[0]~DUPLICATE_q\)) # (\direction~input_o\) ) ) ) # ( !temp(3) & ( temp(1) & ( (!\direction~input_o\ & (temp(2) & \temp[0]~DUPLICATE_q\)) ) ) ) # ( temp(3) & ( !temp(1) & ( 
-- (!\direction~input_o\ $ (\temp[0]~DUPLICATE_q\)) # (temp(2)) ) ) ) # ( !temp(3) & ( !temp(1) & ( (\direction~input_o\ & (!temp(2) & !\temp[0]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000101101111011011100000010000000101111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_direction~input_o\,
	datab => ALT_INV_temp(2),
	datac => \ALT_INV_temp[0]~DUPLICATE_q\,
	datae => ALT_INV_temp(3),
	dataf => ALT_INV_temp(1),
	combout => \temp[3]~2_combout\);

-- Location: FF_X88_Y20_N41
\temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \temp[3]~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(3));

-- Location: LABCELL_X88_Y20_N42
\temp[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp[2]~1_combout\ = ( temp(2) & ( temp(1) & ( (!\temp[0]~DUPLICATE_q\) # (\direction~input_o\) ) ) ) # ( !temp(2) & ( temp(1) & ( (!\direction~input_o\ & \temp[0]~DUPLICATE_q\) ) ) ) # ( temp(2) & ( !temp(1) & ( (!\direction~input_o\) # 
-- (\temp[0]~DUPLICATE_q\) ) ) ) # ( !temp(2) & ( !temp(1) & ( (temp(3) & (\direction~input_o\ & !\temp[0]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000111100001111111100000000111100001111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_temp(3),
	datac => \ALT_INV_direction~input_o\,
	datad => \ALT_INV_temp[0]~DUPLICATE_q\,
	datae => ALT_INV_temp(2),
	dataf => ALT_INV_temp(1),
	combout => \temp[2]~1_combout\);

-- Location: FF_X88_Y20_N44
\temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \temp[2]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(2));

-- Location: LABCELL_X88_Y20_N48
\temp[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp[1]~0_combout\ = ( temp(1) & ( temp(0) & ( \direction~input_o\ ) ) ) # ( !temp(1) & ( temp(0) & ( (!\direction~input_o\ & ((!temp(3)) # (temp(2)))) ) ) ) # ( temp(1) & ( !temp(0) & ( !\direction~input_o\ ) ) ) # ( !temp(1) & ( !temp(0) & ( 
-- (\direction~input_o\ & ((temp(3)) # (temp(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111111100001111000011110000001100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_temp(2),
	datac => \ALT_INV_direction~input_o\,
	datad => ALT_INV_temp(3),
	datae => ALT_INV_temp(1),
	dataf => ALT_INV_temp(0),
	combout => \temp[1]~0_combout\);

-- Location: FF_X88_Y20_N50
\temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \temp[1]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(1));

-- Location: LABCELL_X83_Y24_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


