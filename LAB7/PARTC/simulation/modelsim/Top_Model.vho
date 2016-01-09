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

-- DATE "12/09/2015 18:11:38"

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

ENTITY 	top_model IS
    PORT (
	in1 : IN std_logic;
	in2 : IN std_logic;
	in3 : IN std_logic;
	ledR : BUFFER std_logic_vector(6 DOWNTO 0);
	ledR2 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END top_model;

-- Design Ports Information
-- ledR[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledR[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledR[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledR[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledR[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledR[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledR[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledR2[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledR2[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledR2[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledR2[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledR2[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledR2[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledR2[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in3	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_model IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_in1 : std_logic;
SIGNAL ww_in2 : std_logic;
SIGNAL ww_in3 : std_logic;
SIGNAL ww_ledR : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ledR2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \in1~input_o\ : std_logic;
SIGNAL \in1~inputCLKENA0_outclk\ : std_logic;
SIGNAL \CC1|temp[0]~3_combout\ : std_logic;
SIGNAL \in2~input_o\ : std_logic;
SIGNAL \in3~input_o\ : std_logic;
SIGNAL \CC1|temp[1]~0_combout\ : std_logic;
SIGNAL \CC1|temp[3]~2_combout\ : std_logic;
SIGNAL \CC1|temp[2]~1_combout\ : std_logic;
SIGNAL \CC0|Mux6~0_combout\ : std_logic;
SIGNAL \CC0|Mux5~0_combout\ : std_logic;
SIGNAL \CC0|Mux4~0_combout\ : std_logic;
SIGNAL \CC0|Mux3~0_combout\ : std_logic;
SIGNAL \CC0|Mux2~0_combout\ : std_logic;
SIGNAL \CC0|Mux1~0_combout\ : std_logic;
SIGNAL \CC0|Mux0~0_combout\ : std_logic;
SIGNAL \y~combout\ : std_logic;
SIGNAL \CC2|temp[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CC2|temp[0]~3_combout\ : std_logic;
SIGNAL \CC2|temp[0]~feeder_combout\ : std_logic;
SIGNAL \CC2|temp[3]~2_combout\ : std_logic;
SIGNAL \CC2|temp[2]~1_combout\ : std_logic;
SIGNAL \CC2|temp[1]~0_combout\ : std_logic;
SIGNAL \CC3|Mux6~0_combout\ : std_logic;
SIGNAL \CC3|Mux5~0_combout\ : std_logic;
SIGNAL \CC3|Mux4~0_combout\ : std_logic;
SIGNAL \CC3|Mux3~0_combout\ : std_logic;
SIGNAL \CC3|Mux2~0_combout\ : std_logic;
SIGNAL \CC3|Mux1~0_combout\ : std_logic;
SIGNAL \CC3|Mux0~0_combout\ : std_logic;
SIGNAL \CC1|temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CC2|temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CC2|ALT_INV_temp[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_in3~input_o\ : std_logic;
SIGNAL \ALT_INV_in1~input_o\ : std_logic;
SIGNAL \CC2|ALT_INV_temp[0]~3_combout\ : std_logic;
SIGNAL \CC3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \CC2|ALT_INV_temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CC0|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \CC1|ALT_INV_temp\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_in1 <= in1;
ww_in2 <= in2;
ww_in3 <= in3;
ledR <= ww_ledR;
ledR2 <= ww_ledR2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\CC2|ALT_INV_temp[0]~DUPLICATE_q\ <= NOT \CC2|temp[0]~DUPLICATE_q\;
\ALT_INV_in3~input_o\ <= NOT \in3~input_o\;
\ALT_INV_in1~input_o\ <= NOT \in1~input_o\;
\CC2|ALT_INV_temp[0]~3_combout\ <= NOT \CC2|temp[0]~3_combout\;
\CC3|ALT_INV_Mux0~0_combout\ <= NOT \CC3|Mux0~0_combout\;
\CC2|ALT_INV_temp\(3) <= NOT \CC2|temp\(3);
\CC2|ALT_INV_temp\(2) <= NOT \CC2|temp\(2);
\CC2|ALT_INV_temp\(1) <= NOT \CC2|temp\(1);
\CC2|ALT_INV_temp\(0) <= NOT \CC2|temp\(0);
\CC0|ALT_INV_Mux0~0_combout\ <= NOT \CC0|Mux0~0_combout\;
\CC1|ALT_INV_temp\(3) <= NOT \CC1|temp\(3);
\CC1|ALT_INV_temp\(2) <= NOT \CC1|temp\(2);
\CC1|ALT_INV_temp\(1) <= NOT \CC1|temp\(1);
\CC1|ALT_INV_temp\(0) <= NOT \CC1|temp\(0);

-- Location: IOOBUF_X89_Y8_N39
\ledR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CC0|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_ledR(0));

-- Location: IOOBUF_X89_Y11_N79
\ledR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CC0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_ledR(1));

-- Location: IOOBUF_X89_Y11_N96
\ledR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CC0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_ledR(2));

-- Location: IOOBUF_X89_Y4_N79
\ledR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CC0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_ledR(3));

-- Location: IOOBUF_X89_Y13_N56
\ledR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CC0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_ledR(4));

-- Location: IOOBUF_X89_Y13_N39
\ledR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CC0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_ledR(5));

-- Location: IOOBUF_X89_Y4_N96
\ledR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CC0|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_ledR(6));

-- Location: IOOBUF_X89_Y6_N39
\ledR2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CC3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_ledR2(0));

-- Location: IOOBUF_X89_Y6_N56
\ledR2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CC3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_ledR2(1));

-- Location: IOOBUF_X89_Y16_N39
\ledR2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CC3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_ledR2(2));

-- Location: IOOBUF_X89_Y16_N56
\ledR2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CC3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_ledR2(3));

-- Location: IOOBUF_X89_Y15_N39
\ledR2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CC3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_ledR2(4));

-- Location: IOOBUF_X89_Y15_N56
\ledR2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CC3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_ledR2(5));

-- Location: IOOBUF_X89_Y8_N56
\ledR2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CC3|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_ledR2(6));

-- Location: IOIBUF_X36_Y0_N1
\in1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1,
	o => \in1~input_o\);

-- Location: CLKCTRL_G4
\in1~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \in1~input_o\,
	outclk => \in1~inputCLKENA0_outclk\);

-- Location: LABCELL_X37_Y2_N42
\CC1|temp[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CC1|temp[0]~3_combout\ = !\CC1|temp\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CC1|ALT_INV_temp\(0),
	combout => \CC1|temp[0]~3_combout\);

-- Location: IOIBUF_X36_Y0_N18
\in2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2,
	o => \in2~input_o\);

-- Location: FF_X37_Y2_N44
\CC1|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in1~inputCLKENA0_outclk\,
	d => \CC1|temp[0]~3_combout\,
	clrn => \in2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CC1|temp\(0));

-- Location: IOIBUF_X40_Y0_N1
\in3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in3,
	o => \in3~input_o\);

-- Location: LABCELL_X37_Y2_N39
\CC1|temp[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CC1|temp[1]~0_combout\ = ( \CC1|temp\(1) & ( \CC1|temp\(3) & ( !\in3~input_o\ $ (\CC1|temp\(0)) ) ) ) # ( !\CC1|temp\(1) & ( \CC1|temp\(3) & ( (!\in3~input_o\ & (\CC1|temp\(0) & \CC1|temp\(2))) # (\in3~input_o\ & (!\CC1|temp\(0))) ) ) ) # ( \CC1|temp\(1) 
-- & ( !\CC1|temp\(3) & ( !\in3~input_o\ $ (\CC1|temp\(0)) ) ) ) # ( !\CC1|temp\(1) & ( !\CC1|temp\(3) & ( (!\in3~input_o\ & (\CC1|temp\(0))) # (\in3~input_o\ & (!\CC1|temp\(0) & \CC1|temp\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111100110000111100001100110000001111001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_in3~input_o\,
	datac => \CC1|ALT_INV_temp\(0),
	datad => \CC1|ALT_INV_temp\(2),
	datae => \CC1|ALT_INV_temp\(1),
	dataf => \CC1|ALT_INV_temp\(3),
	combout => \CC1|temp[1]~0_combout\);

-- Location: FF_X37_Y2_N41
\CC1|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in1~inputCLKENA0_outclk\,
	d => \CC1|temp[1]~0_combout\,
	clrn => \in2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CC1|temp\(1));

-- Location: LABCELL_X37_Y2_N51
\CC1|temp[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CC1|temp[3]~2_combout\ = ( \CC1|temp\(3) & ( \CC1|temp\(0) & ( (!\CC1|temp\(1) $ (!\CC1|temp\(2))) # (\in3~input_o\) ) ) ) # ( !\CC1|temp\(3) & ( \CC1|temp\(0) & ( (!\in3~input_o\ & (\CC1|temp\(1) & \CC1|temp\(2))) ) ) ) # ( \CC1|temp\(3) & ( 
-- !\CC1|temp\(0) & ( (!\in3~input_o\) # ((\CC1|temp\(2)) # (\CC1|temp\(1))) ) ) ) # ( !\CC1|temp\(3) & ( !\CC1|temp\(0) & ( (\in3~input_o\ & (!\CC1|temp\(1) & !\CC1|temp\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000110011111111111100000000000011000011111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_in3~input_o\,
	datac => \CC1|ALT_INV_temp\(1),
	datad => \CC1|ALT_INV_temp\(2),
	datae => \CC1|ALT_INV_temp\(3),
	dataf => \CC1|ALT_INV_temp\(0),
	combout => \CC1|temp[3]~2_combout\);

-- Location: FF_X37_Y2_N53
\CC1|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in1~inputCLKENA0_outclk\,
	d => \CC1|temp[3]~2_combout\,
	clrn => \in2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CC1|temp\(3));

-- Location: LABCELL_X37_Y2_N24
\CC1|temp[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CC1|temp[2]~1_combout\ = ( \CC1|temp\(2) & ( \CC1|temp\(1) & ( (!\CC1|temp\(0)) # (\in3~input_o\) ) ) ) # ( !\CC1|temp\(2) & ( \CC1|temp\(1) & ( (!\in3~input_o\ & \CC1|temp\(0)) ) ) ) # ( \CC1|temp\(2) & ( !\CC1|temp\(1) & ( (!\in3~input_o\) # 
-- (\CC1|temp\(0)) ) ) ) # ( !\CC1|temp\(2) & ( !\CC1|temp\(1) & ( (\in3~input_o\ & (\CC1|temp\(3) & !\CC1|temp\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000110011001111111100000000110011001111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_in3~input_o\,
	datac => \CC1|ALT_INV_temp\(3),
	datad => \CC1|ALT_INV_temp\(0),
	datae => \CC1|ALT_INV_temp\(2),
	dataf => \CC1|ALT_INV_temp\(1),
	combout => \CC1|temp[2]~1_combout\);

-- Location: FF_X37_Y2_N26
\CC1|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in1~inputCLKENA0_outclk\,
	d => \CC1|temp[2]~1_combout\,
	clrn => \in2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CC1|temp\(2));

-- Location: LABCELL_X88_Y8_N3
\CC0|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CC0|Mux6~0_combout\ = ( \CC1|temp\(1) & ( (\CC1|temp\(0) & (!\CC1|temp\(2) & \CC1|temp\(3))) ) ) # ( !\CC1|temp\(1) & ( (!\CC1|temp\(0) & (\CC1|temp\(2) & !\CC1|temp\(3))) # (\CC1|temp\(0) & (!\CC1|temp\(2) $ (\CC1|temp\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000101000000000101000001011010000001010000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CC1|ALT_INV_temp\(0),
	datac => \CC1|ALT_INV_temp\(2),
	datad => \CC1|ALT_INV_temp\(3),
	datae => \CC1|ALT_INV_temp\(1),
	combout => \CC0|Mux6~0_combout\);

-- Location: LABCELL_X88_Y8_N33
\CC0|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CC0|Mux5~0_combout\ = ( \CC1|temp\(1) & ( (!\CC1|temp\(0) & (\CC1|temp\(2) & !\CC1|temp\(3))) # (\CC1|temp\(0) & ((\CC1|temp\(3)))) ) ) # ( !\CC1|temp\(1) & ( (\CC1|temp\(2) & (!\CC1|temp\(0) $ (!\CC1|temp\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000010100101010100000101000010100000101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CC1|ALT_INV_temp\(0),
	datac => \CC1|ALT_INV_temp\(2),
	datad => \CC1|ALT_INV_temp\(3),
	datae => \CC1|ALT_INV_temp\(1),
	combout => \CC0|Mux5~0_combout\);

-- Location: LABCELL_X88_Y8_N36
\CC0|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CC0|Mux4~0_combout\ = ( \CC1|temp\(3) & ( (\CC1|temp\(2) & ((!\CC1|temp\(0)) # (\CC1|temp\(1)))) ) ) # ( !\CC1|temp\(3) & ( (\CC1|temp\(1) & (!\CC1|temp\(2) & !\CC1|temp\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000001100010011000101000000010000000011000100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CC1|ALT_INV_temp\(1),
	datab => \CC1|ALT_INV_temp\(2),
	datac => \CC1|ALT_INV_temp\(0),
	datae => \CC1|ALT_INV_temp\(3),
	combout => \CC0|Mux4~0_combout\);

-- Location: MLABCELL_X84_Y6_N48
\CC0|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CC0|Mux3~0_combout\ = ( \CC1|temp\(1) & ( \CC1|temp\(2) & ( \CC1|temp\(0) ) ) ) # ( !\CC1|temp\(1) & ( \CC1|temp\(2) & ( (!\CC1|temp\(0) & !\CC1|temp\(3)) ) ) ) # ( \CC1|temp\(1) & ( !\CC1|temp\(2) & ( (!\CC1|temp\(0) & \CC1|temp\(3)) ) ) ) # ( 
-- !\CC1|temp\(1) & ( !\CC1|temp\(2) & ( (\CC1|temp\(0) & !\CC1|temp\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000000000001100110011001100000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CC1|ALT_INV_temp\(0),
	datad => \CC1|ALT_INV_temp\(3),
	datae => \CC1|ALT_INV_temp\(1),
	dataf => \CC1|ALT_INV_temp\(2),
	combout => \CC0|Mux3~0_combout\);

-- Location: LABCELL_X88_Y8_N45
\CC0|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CC0|Mux2~0_combout\ = ( \CC1|temp\(1) & ( (\CC1|temp\(0) & !\CC1|temp\(3)) ) ) # ( !\CC1|temp\(1) & ( (!\CC1|temp\(2) & (\CC1|temp\(0))) # (\CC1|temp\(2) & ((!\CC1|temp\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101010000010101010000000001011111010100000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CC1|ALT_INV_temp\(0),
	datac => \CC1|ALT_INV_temp\(2),
	datad => \CC1|ALT_INV_temp\(3),
	datae => \CC1|ALT_INV_temp\(1),
	combout => \CC0|Mux2~0_combout\);

-- Location: LABCELL_X88_Y8_N15
\CC0|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CC0|Mux1~0_combout\ = ( \CC1|temp\(1) & ( (!\CC1|temp\(3) & ((!\CC1|temp\(2)) # (\CC1|temp\(0)))) ) ) # ( !\CC1|temp\(1) & ( (\CC1|temp\(0) & (!\CC1|temp\(2) $ (\CC1|temp\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000101111101010000000001010000000001011111010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CC1|ALT_INV_temp\(0),
	datac => \CC1|ALT_INV_temp\(2),
	datad => \CC1|ALT_INV_temp\(3),
	datae => \CC1|ALT_INV_temp\(1),
	combout => \CC0|Mux1~0_combout\);

-- Location: MLABCELL_X84_Y6_N45
\CC0|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CC0|Mux0~0_combout\ = ( \CC1|temp\(1) & ( \CC1|temp\(2) & ( (!\CC1|temp\(0)) # (\CC1|temp\(3)) ) ) ) # ( !\CC1|temp\(1) & ( \CC1|temp\(2) & ( (!\CC1|temp\(3)) # (\CC1|temp\(0)) ) ) ) # ( \CC1|temp\(1) & ( !\CC1|temp\(2) ) ) # ( !\CC1|temp\(1) & ( 
-- !\CC1|temp\(2) & ( \CC1|temp\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111111111111111001111110011111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CC1|ALT_INV_temp\(3),
	datac => \CC1|ALT_INV_temp\(0),
	datae => \CC1|ALT_INV_temp\(1),
	dataf => \CC1|ALT_INV_temp\(2),
	combout => \CC0|Mux0~0_combout\);

-- Location: LABCELL_X37_Y2_N0
y : cyclonev_lcell_comb
-- Equation(s):
-- \y~combout\ = LCELL(( !\in1~input_o\ & ( \CC1|temp\(3) & ( \CC1|temp\(0) ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CC1|ALT_INV_temp\(0),
	datae => \ALT_INV_in1~input_o\,
	dataf => \CC1|ALT_INV_temp\(3),
	combout => \y~combout\);

-- Location: FF_X37_Y2_N32
\CC2|temp[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \y~combout\,
	d => \CC2|temp[0]~feeder_combout\,
	clrn => \in2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CC2|temp[0]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y2_N6
\CC2|temp[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CC2|temp[0]~3_combout\ = ( !\CC2|temp[0]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CC2|ALT_INV_temp[0]~DUPLICATE_q\,
	combout => \CC2|temp[0]~3_combout\);

-- Location: LABCELL_X37_Y2_N30
\CC2|temp[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CC2|temp[0]~feeder_combout\ = ( \CC2|temp[0]~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CC2|ALT_INV_temp[0]~3_combout\,
	combout => \CC2|temp[0]~feeder_combout\);

-- Location: FF_X37_Y2_N31
\CC2|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \y~combout\,
	d => \CC2|temp[0]~feeder_combout\,
	clrn => \in2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CC2|temp\(0));

-- Location: LABCELL_X37_Y2_N45
\CC2|temp[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CC2|temp[3]~2_combout\ = ( \CC2|temp\(0) & ( (!\CC2|temp\(2) & (\CC2|temp\(3) & ((\CC2|temp\(1)) # (\in3~input_o\)))) # (\CC2|temp\(2) & (!\CC2|temp\(3) $ (((!\CC2|temp\(1)) # (\in3~input_o\))))) ) ) # ( !\CC2|temp\(0) & ( !\CC2|temp\(3) $ 
-- ((((!\in3~input_o\) # (\CC2|temp\(1))) # (\CC2|temp\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011011111001000001101111100000100011110110000010001111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CC2|ALT_INV_temp\(2),
	datab => \ALT_INV_in3~input_o\,
	datac => \CC2|ALT_INV_temp\(1),
	datad => \CC2|ALT_INV_temp\(3),
	dataf => \CC2|ALT_INV_temp\(0),
	combout => \CC2|temp[3]~2_combout\);

-- Location: FF_X37_Y2_N5
\CC2|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \y~combout\,
	asdata => \CC2|temp[3]~2_combout\,
	clrn => \in2~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CC2|temp\(3));

-- Location: LABCELL_X37_Y2_N9
\CC2|temp[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CC2|temp[2]~1_combout\ = ( \CC2|temp\(0) & ( !\CC2|temp\(2) $ (((!\CC2|temp\(1)) # (\in3~input_o\))) ) ) # ( !\CC2|temp\(0) & ( (!\CC2|temp\(2) & (\in3~input_o\ & (!\CC2|temp\(1) & \CC2|temp\(3)))) # (\CC2|temp\(2) & ((!\in3~input_o\) # 
-- ((\CC2|temp\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101100101010001010110010101011001010110010101100101011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CC2|ALT_INV_temp\(2),
	datab => \ALT_INV_in3~input_o\,
	datac => \CC2|ALT_INV_temp\(1),
	datad => \CC2|ALT_INV_temp\(3),
	dataf => \CC2|ALT_INV_temp\(0),
	combout => \CC2|temp[2]~1_combout\);

-- Location: FF_X37_Y2_N23
\CC2|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \y~combout\,
	asdata => \CC2|temp[2]~1_combout\,
	clrn => \in2~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CC2|temp\(2));

-- Location: LABCELL_X37_Y2_N54
\CC2|temp[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CC2|temp[1]~0_combout\ = ( \CC2|temp\(3) & ( \CC2|temp\(1) & ( !\in3~input_o\ $ (\CC2|temp[0]~DUPLICATE_q\) ) ) ) # ( !\CC2|temp\(3) & ( \CC2|temp\(1) & ( !\in3~input_o\ $ (\CC2|temp[0]~DUPLICATE_q\) ) ) ) # ( \CC2|temp\(3) & ( !\CC2|temp\(1) & ( 
-- (!\in3~input_o\ & (\CC2|temp\(2) & \CC2|temp[0]~DUPLICATE_q\)) # (\in3~input_o\ & ((!\CC2|temp[0]~DUPLICATE_q\))) ) ) ) # ( !\CC2|temp\(3) & ( !\CC2|temp\(1) & ( (!\in3~input_o\ & ((\CC2|temp[0]~DUPLICATE_q\))) # (\in3~input_o\ & (\CC2|temp\(2) & 
-- !\CC2|temp[0]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001100001100110000110011001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_in3~input_o\,
	datac => \CC2|ALT_INV_temp\(2),
	datad => \CC2|ALT_INV_temp[0]~DUPLICATE_q\,
	datae => \CC2|ALT_INV_temp\(3),
	dataf => \CC2|ALT_INV_temp\(1),
	combout => \CC2|temp[1]~0_combout\);

-- Location: FF_X37_Y2_N14
\CC2|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \y~combout\,
	asdata => \CC2|temp[1]~0_combout\,
	clrn => \in2~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CC2|temp\(1));

-- Location: MLABCELL_X87_Y8_N27
\CC3|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CC3|Mux6~0_combout\ = ( \CC2|temp[0]~DUPLICATE_q\ & ( \CC2|temp\(3) & ( !\CC2|temp\(1) $ (!\CC2|temp\(2)) ) ) ) # ( \CC2|temp[0]~DUPLICATE_q\ & ( !\CC2|temp\(3) & ( (!\CC2|temp\(1) & !\CC2|temp\(2)) ) ) ) # ( !\CC2|temp[0]~DUPLICATE_q\ & ( !\CC2|temp\(3) 
-- & ( (!\CC2|temp\(1) & \CC2|temp\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010101000001010000000000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CC2|ALT_INV_temp\(1),
	datac => \CC2|ALT_INV_temp\(2),
	datae => \CC2|ALT_INV_temp[0]~DUPLICATE_q\,
	dataf => \CC2|ALT_INV_temp\(3),
	combout => \CC3|Mux6~0_combout\);

-- Location: MLABCELL_X87_Y8_N18
\CC3|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CC3|Mux5~0_combout\ = ( \CC2|temp[0]~DUPLICATE_q\ & ( \CC2|temp\(3) & ( \CC2|temp\(1) ) ) ) # ( !\CC2|temp[0]~DUPLICATE_q\ & ( \CC2|temp\(3) & ( (\CC2|temp\(2) & !\CC2|temp\(1)) ) ) ) # ( \CC2|temp[0]~DUPLICATE_q\ & ( !\CC2|temp\(3) & ( (\CC2|temp\(2) & 
-- !\CC2|temp\(1)) ) ) ) # ( !\CC2|temp[0]~DUPLICATE_q\ & ( !\CC2|temp\(3) & ( (\CC2|temp\(2) & \CC2|temp\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001100000011000000110000001100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CC2|ALT_INV_temp\(2),
	datac => \CC2|ALT_INV_temp\(1),
	datae => \CC2|ALT_INV_temp[0]~DUPLICATE_q\,
	dataf => \CC2|ALT_INV_temp\(3),
	combout => \CC3|Mux5~0_combout\);

-- Location: MLABCELL_X87_Y8_N36
\CC3|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CC3|Mux4~0_combout\ = ( \CC2|temp[0]~DUPLICATE_q\ & ( \CC2|temp\(3) & ( (\CC2|temp\(2) & \CC2|temp\(1)) ) ) ) # ( !\CC2|temp[0]~DUPLICATE_q\ & ( \CC2|temp\(3) & ( \CC2|temp\(2) ) ) ) # ( !\CC2|temp[0]~DUPLICATE_q\ & ( !\CC2|temp\(3) & ( (!\CC2|temp\(2) & 
-- \CC2|temp\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000000110011001100110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CC2|ALT_INV_temp\(2),
	datac => \CC2|ALT_INV_temp\(1),
	datae => \CC2|ALT_INV_temp[0]~DUPLICATE_q\,
	dataf => \CC2|ALT_INV_temp\(3),
	combout => \CC3|Mux4~0_combout\);

-- Location: MLABCELL_X87_Y8_N9
\CC3|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CC3|Mux3~0_combout\ = ( \CC2|temp[0]~DUPLICATE_q\ & ( \CC2|temp\(3) & ( (\CC2|temp\(1) & \CC2|temp\(2)) ) ) ) # ( !\CC2|temp[0]~DUPLICATE_q\ & ( \CC2|temp\(3) & ( (\CC2|temp\(1) & !\CC2|temp\(2)) ) ) ) # ( \CC2|temp[0]~DUPLICATE_q\ & ( !\CC2|temp\(3) & ( 
-- !\CC2|temp\(1) $ (\CC2|temp\(2)) ) ) ) # ( !\CC2|temp[0]~DUPLICATE_q\ & ( !\CC2|temp\(3) & ( (!\CC2|temp\(1) & \CC2|temp\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010101001011010010101010000010100000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CC2|ALT_INV_temp\(1),
	datac => \CC2|ALT_INV_temp\(2),
	datae => \CC2|ALT_INV_temp[0]~DUPLICATE_q\,
	dataf => \CC2|ALT_INV_temp\(3),
	combout => \CC3|Mux3~0_combout\);

-- Location: MLABCELL_X87_Y8_N15
\CC3|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CC3|Mux2~0_combout\ = ( \CC2|temp[0]~DUPLICATE_q\ & ( \CC2|temp\(3) & ( (!\CC2|temp\(1) & !\CC2|temp\(2)) ) ) ) # ( \CC2|temp[0]~DUPLICATE_q\ & ( !\CC2|temp\(3) ) ) # ( !\CC2|temp[0]~DUPLICATE_q\ & ( !\CC2|temp\(3) & ( (!\CC2|temp\(1) & \CC2|temp\(2)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010111111111111111100000000000000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CC2|ALT_INV_temp\(1),
	datac => \CC2|ALT_INV_temp\(2),
	datae => \CC2|ALT_INV_temp[0]~DUPLICATE_q\,
	dataf => \CC2|ALT_INV_temp\(3),
	combout => \CC3|Mux2~0_combout\);

-- Location: MLABCELL_X87_Y8_N42
\CC3|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CC3|Mux1~0_combout\ = ( \CC2|temp[0]~DUPLICATE_q\ & ( \CC2|temp\(3) & ( (\CC2|temp\(2) & !\CC2|temp\(1)) ) ) ) # ( \CC2|temp[0]~DUPLICATE_q\ & ( !\CC2|temp\(3) & ( (!\CC2|temp\(2)) # (\CC2|temp\(1)) ) ) ) # ( !\CC2|temp[0]~DUPLICATE_q\ & ( !\CC2|temp\(3) 
-- & ( (!\CC2|temp\(2) & \CC2|temp\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100110011111100111100000000000000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CC2|ALT_INV_temp\(2),
	datac => \CC2|ALT_INV_temp\(1),
	datae => \CC2|ALT_INV_temp[0]~DUPLICATE_q\,
	dataf => \CC2|ALT_INV_temp\(3),
	combout => \CC3|Mux1~0_combout\);

-- Location: MLABCELL_X87_Y8_N0
\CC3|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CC3|Mux0~0_combout\ = ( \CC2|temp[0]~DUPLICATE_q\ & ( \CC2|temp\(3) ) ) # ( !\CC2|temp[0]~DUPLICATE_q\ & ( \CC2|temp\(3) & ( (!\CC2|temp\(2)) # (\CC2|temp\(1)) ) ) ) # ( \CC2|temp[0]~DUPLICATE_q\ & ( !\CC2|temp\(3) & ( !\CC2|temp\(2) $ (!\CC2|temp\(1)) ) 
-- ) ) # ( !\CC2|temp[0]~DUPLICATE_q\ & ( !\CC2|temp\(3) & ( (\CC2|temp\(1)) # (\CC2|temp\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111000011110011001111110011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CC2|ALT_INV_temp\(2),
	datac => \CC2|ALT_INV_temp\(1),
	datae => \CC2|ALT_INV_temp[0]~DUPLICATE_q\,
	dataf => \CC2|ALT_INV_temp\(3),
	combout => \CC3|Mux0~0_combout\);

-- Location: LABCELL_X42_Y57_N0
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


