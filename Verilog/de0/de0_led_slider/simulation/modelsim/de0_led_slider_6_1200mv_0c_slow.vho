-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "11/09/2022 12:05:04"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	de0_led_slider IS
    PORT (
	din : IN std_logic_vector(3 DOWNTO 0);
	dout : BUFFER std_logic_vector(7 DOWNTO 0);
	fnd_on_0 : BUFFER std_logic_vector(6 DOWNTO 0);
	fnd_on_1 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END de0_led_slider;

-- Design Ports Information
-- dout[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_on_0[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_on_0[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_on_0[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_on_0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_on_0[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_on_0[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_on_0[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_on_1[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_on_1[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_on_1[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_on_1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_on_1[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_on_1[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_on_1[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF de0_led_slider IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_din : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_dout : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_fnd_on_0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_fnd_on_1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \dout[0]~output_o\ : std_logic;
SIGNAL \dout[1]~output_o\ : std_logic;
SIGNAL \dout[2]~output_o\ : std_logic;
SIGNAL \dout[3]~output_o\ : std_logic;
SIGNAL \dout[4]~output_o\ : std_logic;
SIGNAL \dout[5]~output_o\ : std_logic;
SIGNAL \dout[6]~output_o\ : std_logic;
SIGNAL \dout[7]~output_o\ : std_logic;
SIGNAL \fnd_on_0[0]~output_o\ : std_logic;
SIGNAL \fnd_on_0[1]~output_o\ : std_logic;
SIGNAL \fnd_on_0[2]~output_o\ : std_logic;
SIGNAL \fnd_on_0[3]~output_o\ : std_logic;
SIGNAL \fnd_on_0[4]~output_o\ : std_logic;
SIGNAL \fnd_on_0[5]~output_o\ : std_logic;
SIGNAL \fnd_on_0[6]~output_o\ : std_logic;
SIGNAL \fnd_on_1[0]~output_o\ : std_logic;
SIGNAL \fnd_on_1[1]~output_o\ : std_logic;
SIGNAL \fnd_on_1[2]~output_o\ : std_logic;
SIGNAL \fnd_on_1[3]~output_o\ : std_logic;
SIGNAL \fnd_on_1[4]~output_o\ : std_logic;
SIGNAL \fnd_on_1[5]~output_o\ : std_logic;
SIGNAL \fnd_on_1[6]~output_o\ : std_logic;
SIGNAL \din[0]~input_o\ : std_logic;
SIGNAL \din[1]~input_o\ : std_logic;
SIGNAL \din[2]~input_o\ : std_logic;
SIGNAL \din[3]~input_o\ : std_logic;
SIGNAL \fnd_0|WideOr0~0_combout\ : std_logic;
SIGNAL \fnd_0|WideOr1~0_combout\ : std_logic;
SIGNAL \fnd_0|WideOr2~0_combout\ : std_logic;
SIGNAL \fnd_0|WideOr3~0_combout\ : std_logic;
SIGNAL \fnd_0|WideOr4~0_combout\ : std_logic;
SIGNAL \fnd_0|WideOr5~0_combout\ : std_logic;
SIGNAL \fnd_0|WideOr6~0_combout\ : std_logic;
SIGNAL \fnd_1|WideOr0~0_combout\ : std_logic;
SIGNAL \fnd_1|WideOr1~0_combout\ : std_logic;
SIGNAL \fnd_1|WideOr2~0_combout\ : std_logic;
SIGNAL \fnd_1|WideOr3~0_combout\ : std_logic;
SIGNAL \fnd_1|WideOr4~0_combout\ : std_logic;
SIGNAL \fnd_1|WideOr5~0_combout\ : std_logic;
SIGNAL \fnd_1|WideOr6~0_combout\ : std_logic;
SIGNAL \ALT_INV_din[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[0]~input_o\ : std_logic;
SIGNAL \fnd_1|ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \fnd_1|ALT_INV_WideOr5~0_combout\ : std_logic;
SIGNAL \fnd_1|ALT_INV_WideOr4~0_combout\ : std_logic;
SIGNAL \fnd_1|ALT_INV_WideOr3~0_combout\ : std_logic;
SIGNAL \fnd_1|ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \fnd_1|ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \fnd_1|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \fnd_0|ALT_INV_WideOr6~0_combout\ : std_logic;

BEGIN

ww_din <= din;
dout <= ww_dout;
fnd_on_0 <= ww_fnd_on_0;
fnd_on_1 <= ww_fnd_on_1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_din[3]~input_o\ <= NOT \din[3]~input_o\;
\ALT_INV_din[2]~input_o\ <= NOT \din[2]~input_o\;
\ALT_INV_din[1]~input_o\ <= NOT \din[1]~input_o\;
\ALT_INV_din[0]~input_o\ <= NOT \din[0]~input_o\;
\fnd_1|ALT_INV_WideOr6~0_combout\ <= NOT \fnd_1|WideOr6~0_combout\;
\fnd_1|ALT_INV_WideOr5~0_combout\ <= NOT \fnd_1|WideOr5~0_combout\;
\fnd_1|ALT_INV_WideOr4~0_combout\ <= NOT \fnd_1|WideOr4~0_combout\;
\fnd_1|ALT_INV_WideOr3~0_combout\ <= NOT \fnd_1|WideOr3~0_combout\;
\fnd_1|ALT_INV_WideOr2~0_combout\ <= NOT \fnd_1|WideOr2~0_combout\;
\fnd_1|ALT_INV_WideOr1~0_combout\ <= NOT \fnd_1|WideOr1~0_combout\;
\fnd_1|ALT_INV_WideOr0~0_combout\ <= NOT \fnd_1|WideOr0~0_combout\;
\fnd_0|ALT_INV_WideOr6~0_combout\ <= NOT \fnd_0|WideOr6~0_combout\;

-- Location: IOOBUF_X0_Y20_N9
\dout[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \din[0]~input_o\,
	devoe => ww_devoe,
	o => \dout[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\dout[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \din[1]~input_o\,
	devoe => ww_devoe,
	o => \dout[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\dout[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \din[2]~input_o\,
	devoe => ww_devoe,
	o => \dout[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\dout[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \din[3]~input_o\,
	devoe => ww_devoe,
	o => \dout[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\dout[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_din[0]~input_o\,
	devoe => ww_devoe,
	o => \dout[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\dout[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_din[1]~input_o\,
	devoe => ww_devoe,
	o => \dout[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\dout[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_din[2]~input_o\,
	devoe => ww_devoe,
	o => \dout[6]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\dout[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_din[3]~input_o\,
	devoe => ww_devoe,
	o => \dout[7]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\fnd_on_0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fnd_0|WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \fnd_on_0[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\fnd_on_0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fnd_0|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \fnd_on_0[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\fnd_on_0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fnd_0|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \fnd_on_0[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\fnd_on_0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fnd_0|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \fnd_on_0[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\fnd_on_0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fnd_0|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \fnd_on_0[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\fnd_on_0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fnd_0|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \fnd_on_0[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\fnd_on_0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fnd_0|ALT_INV_WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \fnd_on_0[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\fnd_on_1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fnd_1|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \fnd_on_1[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\fnd_on_1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fnd_1|ALT_INV_WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \fnd_on_1[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\fnd_on_1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fnd_1|ALT_INV_WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \fnd_on_1[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\fnd_on_1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fnd_1|ALT_INV_WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \fnd_on_1[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\fnd_on_1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fnd_1|ALT_INV_WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \fnd_on_1[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\fnd_on_1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fnd_1|ALT_INV_WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \fnd_on_1[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\fnd_on_1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fnd_1|ALT_INV_WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \fnd_on_1[6]~output_o\);

-- Location: IOIBUF_X0_Y24_N1
\din[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(0),
	o => \din[0]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\din[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(1),
	o => \din[1]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\din[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(2),
	o => \din[2]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\din[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(3),
	o => \din[3]~input_o\);

-- Location: LCCOMB_X31_Y27_N24
\fnd_0|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fnd_0|WideOr0~0_combout\ = (\din[1]~input_o\ & (((\din[3]~input_o\)))) # (!\din[1]~input_o\ & (\din[2]~input_o\ $ (((\din[0]~input_o\ & !\din[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din[0]~input_o\,
	datab => \din[3]~input_o\,
	datac => \din[2]~input_o\,
	datad => \din[1]~input_o\,
	combout => \fnd_0|WideOr0~0_combout\);

-- Location: LCCOMB_X31_Y27_N18
\fnd_0|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fnd_0|WideOr1~0_combout\ = (\din[3]~input_o\ & (((\din[2]~input_o\) # (\din[1]~input_o\)))) # (!\din[3]~input_o\ & (\din[2]~input_o\ & (\din[0]~input_o\ $ (\din[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din[0]~input_o\,
	datab => \din[3]~input_o\,
	datac => \din[2]~input_o\,
	datad => \din[1]~input_o\,
	combout => \fnd_0|WideOr1~0_combout\);

-- Location: LCCOMB_X31_Y27_N4
\fnd_0|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fnd_0|WideOr2~0_combout\ = (\din[2]~input_o\ & (((\din[3]~input_o\)))) # (!\din[2]~input_o\ & (\din[1]~input_o\ & ((\din[3]~input_o\) # (!\din[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din[0]~input_o\,
	datab => \din[3]~input_o\,
	datac => \din[2]~input_o\,
	datad => \din[1]~input_o\,
	combout => \fnd_0|WideOr2~0_combout\);

-- Location: LCCOMB_X31_Y27_N6
\fnd_0|WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fnd_0|WideOr3~0_combout\ = (\din[1]~input_o\ & ((\din[3]~input_o\) # ((\din[0]~input_o\ & \din[2]~input_o\)))) # (!\din[1]~input_o\ & (\din[2]~input_o\ $ (((\din[0]~input_o\ & !\din[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din[0]~input_o\,
	datab => \din[3]~input_o\,
	datac => \din[2]~input_o\,
	datad => \din[1]~input_o\,
	combout => \fnd_0|WideOr3~0_combout\);

-- Location: LCCOMB_X31_Y27_N0
\fnd_0|WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fnd_0|WideOr4~0_combout\ = (\din[0]~input_o\) # ((\din[1]~input_o\ & (\din[3]~input_o\)) # (!\din[1]~input_o\ & ((\din[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din[0]~input_o\,
	datab => \din[3]~input_o\,
	datac => \din[2]~input_o\,
	datad => \din[1]~input_o\,
	combout => \fnd_0|WideOr4~0_combout\);

-- Location: LCCOMB_X31_Y27_N10
\fnd_0|WideOr5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fnd_0|WideOr5~0_combout\ = (\din[2]~input_o\ & (((\din[3]~input_o\)))) # (!\din[2]~input_o\ & ((\din[1]~input_o\) # ((\din[0]~input_o\ & !\din[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din[0]~input_o\,
	datab => \din[3]~input_o\,
	datac => \din[2]~input_o\,
	datad => \din[1]~input_o\,
	combout => \fnd_0|WideOr5~0_combout\);

-- Location: LCCOMB_X31_Y27_N12
\fnd_0|WideOr6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fnd_0|WideOr6~0_combout\ = (\din[2]~input_o\ & (!\din[3]~input_o\ & ((!\din[1]~input_o\) # (!\din[0]~input_o\)))) # (!\din[2]~input_o\ & ((\din[3]~input_o\ $ (\din[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din[0]~input_o\,
	datab => \din[3]~input_o\,
	datac => \din[2]~input_o\,
	datad => \din[1]~input_o\,
	combout => \fnd_0|WideOr6~0_combout\);

-- Location: LCCOMB_X31_Y27_N30
\fnd_1|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fnd_1|WideOr0~0_combout\ = (\din[1]~input_o\ & (\din[2]~input_o\ $ (((!\din[0]~input_o\ & \din[3]~input_o\))))) # (!\din[1]~input_o\ & (((\din[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din[0]~input_o\,
	datab => \din[3]~input_o\,
	datac => \din[2]~input_o\,
	datad => \din[1]~input_o\,
	combout => \fnd_1|WideOr0~0_combout\);

-- Location: LCCOMB_X31_Y27_N8
\fnd_1|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fnd_1|WideOr1~0_combout\ = (\din[3]~input_o\ & ((\din[2]~input_o\) # (\din[0]~input_o\ $ (!\din[1]~input_o\)))) # (!\din[3]~input_o\ & (((\din[2]~input_o\ & \din[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din[0]~input_o\,
	datab => \din[3]~input_o\,
	datac => \din[2]~input_o\,
	datad => \din[1]~input_o\,
	combout => \fnd_1|WideOr1~0_combout\);

-- Location: LCCOMB_X31_Y27_N2
\fnd_1|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fnd_1|WideOr2~0_combout\ = (\din[2]~input_o\ & ((\din[1]~input_o\) # ((!\din[0]~input_o\ & \din[3]~input_o\)))) # (!\din[2]~input_o\ & (((\din[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din[0]~input_o\,
	datab => \din[3]~input_o\,
	datac => \din[2]~input_o\,
	datad => \din[1]~input_o\,
	combout => \fnd_1|WideOr2~0_combout\);

-- Location: LCCOMB_X31_Y27_N20
\fnd_1|WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fnd_1|WideOr3~0_combout\ = (\din[1]~input_o\ & (\din[2]~input_o\ $ (((!\din[0]~input_o\ & \din[3]~input_o\))))) # (!\din[1]~input_o\ & (\din[3]~input_o\ & ((\din[0]~input_o\) # (\din[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din[0]~input_o\,
	datab => \din[3]~input_o\,
	datac => \din[2]~input_o\,
	datad => \din[1]~input_o\,
	combout => \fnd_1|WideOr3~0_combout\);

-- Location: LCCOMB_X31_Y27_N14
\fnd_1|WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fnd_1|WideOr4~0_combout\ = (\din[0]~input_o\ & ((\din[1]~input_o\ & ((\din[2]~input_o\))) # (!\din[1]~input_o\ & (\din[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din[0]~input_o\,
	datab => \din[3]~input_o\,
	datac => \din[2]~input_o\,
	datad => \din[1]~input_o\,
	combout => \fnd_1|WideOr4~0_combout\);

-- Location: LCCOMB_X31_Y27_N16
\fnd_1|WideOr5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fnd_1|WideOr5~0_combout\ = (\din[2]~input_o\ & (\din[1]~input_o\ & ((\din[0]~input_o\) # (!\din[3]~input_o\)))) # (!\din[2]~input_o\ & (((\din[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din[0]~input_o\,
	datab => \din[3]~input_o\,
	datac => \din[2]~input_o\,
	datad => \din[1]~input_o\,
	combout => \fnd_1|WideOr5~0_combout\);

-- Location: LCCOMB_X31_Y27_N26
\fnd_1|WideOr6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fnd_1|WideOr6~0_combout\ = (\din[2]~input_o\ & ((\din[3]~input_o\ $ (\din[1]~input_o\)))) # (!\din[2]~input_o\ & (\din[3]~input_o\ & ((\din[0]~input_o\) # (\din[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din[0]~input_o\,
	datab => \din[3]~input_o\,
	datac => \din[2]~input_o\,
	datad => \din[1]~input_o\,
	combout => \fnd_1|WideOr6~0_combout\);

ww_dout(0) <= \dout[0]~output_o\;

ww_dout(1) <= \dout[1]~output_o\;

ww_dout(2) <= \dout[2]~output_o\;

ww_dout(3) <= \dout[3]~output_o\;

ww_dout(4) <= \dout[4]~output_o\;

ww_dout(5) <= \dout[5]~output_o\;

ww_dout(6) <= \dout[6]~output_o\;

ww_dout(7) <= \dout[7]~output_o\;

ww_fnd_on_0(0) <= \fnd_on_0[0]~output_o\;

ww_fnd_on_0(1) <= \fnd_on_0[1]~output_o\;

ww_fnd_on_0(2) <= \fnd_on_0[2]~output_o\;

ww_fnd_on_0(3) <= \fnd_on_0[3]~output_o\;

ww_fnd_on_0(4) <= \fnd_on_0[4]~output_o\;

ww_fnd_on_0(5) <= \fnd_on_0[5]~output_o\;

ww_fnd_on_0(6) <= \fnd_on_0[6]~output_o\;

ww_fnd_on_1(0) <= \fnd_on_1[0]~output_o\;

ww_fnd_on_1(1) <= \fnd_on_1[1]~output_o\;

ww_fnd_on_1(2) <= \fnd_on_1[2]~output_o\;

ww_fnd_on_1(3) <= \fnd_on_1[3]~output_o\;

ww_fnd_on_1(4) <= \fnd_on_1[4]~output_o\;

ww_fnd_on_1(5) <= \fnd_on_1[5]~output_o\;

ww_fnd_on_1(6) <= \fnd_on_1[6]~output_o\;
END structure;


