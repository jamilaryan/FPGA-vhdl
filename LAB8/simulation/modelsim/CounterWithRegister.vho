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

-- DATE "11/20/2015 11:51:51"

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

ENTITY 	CounterWithRegister IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	q : OUT std_logic_vector(3 DOWNTO 0)
	);
END CounterWithRegister;

-- Design Ports Information
-- q[0]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CounterWithRegister IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_q : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \r_reg[0]~1_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \r_reg[2]~0_combout\ : std_logic;
SIGNAL \r_next[3]~1_combout\ : std_logic;
SIGNAL \r_next[1]~0_combout\ : std_logic;
SIGNAL \r_reg[1]~DUPLICATE_q\ : std_logic;
SIGNAL \r_reg[2]~DUPLICATE_q\ : std_logic;
SIGNAL \r_reg[3]~DUPLICATE_q\ : std_logic;
SIGNAL r_reg : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL ALT_INV_r_reg : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
ALT_INV_r_reg(3) <= NOT r_reg(3);
ALT_INV_r_reg(2) <= NOT r_reg(2);
ALT_INV_r_reg(1) <= NOT r_reg(1);
ALT_INV_r_reg(0) <= NOT r_reg(0);

-- Location: IOOBUF_X89_Y21_N22
\q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => r_reg(0),
	devoe => ww_devoe,
	o => ww_q(0));

-- Location: IOOBUF_X89_Y21_N39
\q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \r_reg[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_q(1));

-- Location: IOOBUF_X89_Y21_N56
\q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \r_reg[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_q(2));

-- Location: IOOBUF_X89_Y21_N5
\q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \r_reg[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_q(3));

-- Location: IOIBUF_X89_Y23_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G11
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: LABCELL_X88_Y21_N57
\r_reg[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \r_reg[0]~1_combout\ = ( !r_reg(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_r_reg(0),
	combout => \r_reg[0]~1_combout\);

-- Location: IOIBUF_X89_Y20_N44
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X88_Y21_N59
\r_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r_reg[0]~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_reg(0));

-- Location: FF_X88_Y21_N31
\r_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r_next[1]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_reg(1));

-- Location: LABCELL_X88_Y21_N42
\r_reg[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \r_reg[2]~0_combout\ = ( r_reg(2) & ( r_reg(1) & ( !r_reg(0) ) ) ) # ( !r_reg(2) & ( r_reg(1) & ( r_reg(0) ) ) ) # ( r_reg(2) & ( !r_reg(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_r_reg(0),
	datae => ALT_INV_r_reg(2),
	dataf => ALT_INV_r_reg(1),
	combout => \r_reg[2]~0_combout\);

-- Location: FF_X88_Y21_N44
\r_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r_reg[2]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_reg(2));

-- Location: LABCELL_X88_Y21_N51
\r_next[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \r_next[3]~1_combout\ = ( r_reg(3) & ( r_reg(1) & ( (!r_reg(2)) # (!r_reg(0)) ) ) ) # ( !r_reg(3) & ( r_reg(1) & ( (r_reg(2) & r_reg(0)) ) ) ) # ( r_reg(3) & ( !r_reg(1) & ( (!r_reg(0)) # (r_reg(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000011000000111111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_r_reg(2),
	datac => ALT_INV_r_reg(0),
	datae => ALT_INV_r_reg(3),
	dataf => ALT_INV_r_reg(1),
	combout => \r_next[3]~1_combout\);

-- Location: FF_X88_Y21_N53
\r_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r_next[3]~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_reg(3));

-- Location: LABCELL_X88_Y21_N30
\r_next[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \r_next[1]~0_combout\ = ( r_reg(1) & ( r_reg(3) & ( !r_reg(0) ) ) ) # ( !r_reg(1) & ( r_reg(3) & ( (r_reg(2) & r_reg(0)) ) ) ) # ( r_reg(1) & ( !r_reg(3) & ( !r_reg(0) ) ) ) # ( !r_reg(1) & ( !r_reg(3) & ( r_reg(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000000000000001100111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_r_reg(2),
	datad => ALT_INV_r_reg(0),
	datae => ALT_INV_r_reg(1),
	dataf => ALT_INV_r_reg(3),
	combout => \r_next[1]~0_combout\);

-- Location: FF_X88_Y21_N32
\r_reg[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r_next[1]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_reg[1]~DUPLICATE_q\);

-- Location: FF_X88_Y21_N43
\r_reg[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r_reg[2]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_reg[2]~DUPLICATE_q\);

-- Location: FF_X88_Y21_N52
\r_reg[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \r_next[3]~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_reg[3]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y30_N3
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


