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

-- DATE "11/06/2015 10:42:54"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	sevseg IS
    PORT (
	bcd : IN std_logic_vector(3 DOWNTO 0);
	seven_seg : OUT std_logic_vector(6 DOWNTO 0)
	);
END sevseg;

-- Design Ports Information
-- seven_seg[0]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_seg[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_seg[2]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_seg[3]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_seg[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_seg[5]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_seg[6]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[0]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[1]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[3]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sevseg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_bcd : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_seven_seg : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \bcd[1]~input_o\ : std_logic;
SIGNAL \bcd[3]~input_o\ : std_logic;
SIGNAL \bcd[0]~input_o\ : std_logic;
SIGNAL \bcd[2]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_bcd[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_bcd[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_bcd[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_bcd[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_bcd <= bcd;
seven_seg <= ww_seven_seg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_bcd[3]~input_o\ <= NOT \bcd[3]~input_o\;
\ALT_INV_bcd[2]~input_o\ <= NOT \bcd[2]~input_o\;
\ALT_INV_bcd[1]~input_o\ <= NOT \bcd[1]~input_o\;
\ALT_INV_bcd[0]~input_o\ <= NOT \bcd[0]~input_o\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;

-- Location: IOOBUF_X89_Y25_N5
\seven_seg[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_seven_seg(0));

-- Location: IOOBUF_X89_Y23_N39
\seven_seg[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_seven_seg(1));

-- Location: IOOBUF_X89_Y25_N56
\seven_seg[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_seven_seg(2));

-- Location: IOOBUF_X89_Y25_N39
\seven_seg[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_seven_seg(3));

-- Location: IOOBUF_X89_Y23_N22
\seven_seg[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_seven_seg(4));

-- Location: IOOBUF_X89_Y25_N22
\seven_seg[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_seven_seg(5));

-- Location: IOOBUF_X89_Y21_N5
\seven_seg[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_seven_seg(6));

-- Location: IOIBUF_X89_Y21_N38
\bcd[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(1),
	o => \bcd[1]~input_o\);

-- Location: IOIBUF_X89_Y23_N4
\bcd[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(3),
	o => \bcd[3]~input_o\);

-- Location: IOIBUF_X89_Y21_N55
\bcd[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(0),
	o => \bcd[0]~input_o\);

-- Location: IOIBUF_X89_Y23_N55
\bcd[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(2),
	o => \bcd[2]~input_o\);

-- Location: LABCELL_X88_Y25_N0
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \bcd[0]~input_o\ & ( \bcd[2]~input_o\ & ( (!\bcd[1]~input_o\ & \bcd[3]~input_o\) ) ) ) # ( !\bcd[0]~input_o\ & ( \bcd[2]~input_o\ & ( (!\bcd[1]~input_o\ & !\bcd[3]~input_o\) ) ) ) # ( \bcd[0]~input_o\ & ( !\bcd[2]~input_o\ & ( 
-- !\bcd[1]~input_o\ $ (\bcd[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000111100001111000000110000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_bcd[1]~input_o\,
	datac => \ALT_INV_bcd[3]~input_o\,
	datae => \ALT_INV_bcd[0]~input_o\,
	dataf => \ALT_INV_bcd[2]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X88_Y23_N0
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \bcd[0]~input_o\ & ( (!\bcd[1]~input_o\ & (\bcd[2]~input_o\ & !\bcd[3]~input_o\)) # (\bcd[1]~input_o\ & ((\bcd[3]~input_o\))) ) ) # ( !\bcd[0]~input_o\ & ( (\bcd[2]~input_o\ & (!\bcd[1]~input_o\ $ (!\bcd[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100010000110100001100010100000101000100001101000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd[2]~input_o\,
	datab => \ALT_INV_bcd[1]~input_o\,
	datac => \ALT_INV_bcd[3]~input_o\,
	datae => \ALT_INV_bcd[0]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X88_Y25_N9
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \bcd[0]~input_o\ & ( \bcd[2]~input_o\ & ( (\bcd[3]~input_o\ & \bcd[1]~input_o\) ) ) ) # ( !\bcd[0]~input_o\ & ( \bcd[2]~input_o\ & ( \bcd[3]~input_o\ ) ) ) # ( !\bcd[0]~input_o\ & ( !\bcd[2]~input_o\ & ( (!\bcd[3]~input_o\ & 
-- \bcd[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000000000000000001010101010101010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd[3]~input_o\,
	datac => \ALT_INV_bcd[1]~input_o\,
	datae => \ALT_INV_bcd[0]~input_o\,
	dataf => \ALT_INV_bcd[2]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X88_Y25_N12
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \bcd[0]~input_o\ & ( \bcd[2]~input_o\ & ( \bcd[1]~input_o\ ) ) ) # ( !\bcd[0]~input_o\ & ( \bcd[2]~input_o\ & ( (!\bcd[1]~input_o\ & !\bcd[3]~input_o\) ) ) ) # ( \bcd[0]~input_o\ & ( !\bcd[2]~input_o\ & ( (!\bcd[1]~input_o\ & 
-- !\bcd[3]~input_o\) ) ) ) # ( !\bcd[0]~input_o\ & ( !\bcd[2]~input_o\ & ( (\bcd[1]~input_o\ & \bcd[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110000001100000011000000110000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_bcd[1]~input_o\,
	datac => \ALT_INV_bcd[3]~input_o\,
	datae => \ALT_INV_bcd[0]~input_o\,
	dataf => \ALT_INV_bcd[2]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X88_Y23_N9
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \bcd[0]~input_o\ & ( (!\bcd[3]~input_o\) # ((!\bcd[1]~input_o\ & !\bcd[2]~input_o\)) ) ) # ( !\bcd[0]~input_o\ & ( (!\bcd[3]~input_o\ & (!\bcd[1]~input_o\ & \bcd[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000111110101010101000000000101000001111101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd[3]~input_o\,
	datac => \ALT_INV_bcd[1]~input_o\,
	datad => \ALT_INV_bcd[2]~input_o\,
	datae => \ALT_INV_bcd[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X88_Y25_N51
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \bcd[0]~input_o\ & ( \bcd[2]~input_o\ & ( !\bcd[3]~input_o\ $ (!\bcd[1]~input_o\) ) ) ) # ( \bcd[0]~input_o\ & ( !\bcd[2]~input_o\ & ( !\bcd[3]~input_o\ ) ) ) # ( !\bcd[0]~input_o\ & ( !\bcd[2]~input_o\ & ( (!\bcd[3]~input_o\ & 
-- \bcd[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010101010101010101000000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bcd[3]~input_o\,
	datac => \ALT_INV_bcd[1]~input_o\,
	datae => \ALT_INV_bcd[0]~input_o\,
	dataf => \ALT_INV_bcd[2]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X88_Y25_N54
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \bcd[0]~input_o\ & ( \bcd[2]~input_o\ & ( (!\bcd[1]~input_o\) # (\bcd[3]~input_o\) ) ) ) # ( !\bcd[0]~input_o\ & ( \bcd[2]~input_o\ & ( (!\bcd[3]~input_o\) # (\bcd[1]~input_o\) ) ) ) # ( \bcd[0]~input_o\ & ( !\bcd[2]~input_o\ & ( 
-- (\bcd[3]~input_o\) # (\bcd[1]~input_o\) ) ) ) # ( !\bcd[0]~input_o\ & ( !\bcd[2]~input_o\ & ( (\bcd[3]~input_o\) # (\bcd[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111111110011111100111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_bcd[1]~input_o\,
	datac => \ALT_INV_bcd[3]~input_o\,
	datae => \ALT_INV_bcd[0]~input_o\,
	dataf => \ALT_INV_bcd[2]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X10_Y77_N0
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


