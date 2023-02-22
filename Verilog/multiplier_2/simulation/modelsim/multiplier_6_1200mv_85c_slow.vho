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

-- DATE "12/13/2022 19:22:23"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	multiplier IS
    PORT (
	clk : IN std_logic;
	n_rst : IN std_logic;
	start : IN std_logic;
	multiplier_1 : IN std_logic_vector(3 DOWNTO 0);
	multiplicand : IN std_logic_vector(3 DOWNTO 0);
	valid : BUFFER std_logic;
	product : BUFFER std_logic_vector(7 DOWNTO 0);
	fnd_01 : BUFFER std_logic_vector(6 DOWNTO 0);
	fnd_02 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END multiplier;

-- Design Ports Information
-- valid	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_01[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_01[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_01[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_01[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_01[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_01[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_01[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_02[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_02[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_02[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_02[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_02[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_02[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_02[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier_1[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier_1[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier_1[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier_1[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[0]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[1]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[2]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[3]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_rst	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF multiplier IS
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
SIGNAL ww_n_rst : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_multiplier_1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_multiplicand : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_valid : std_logic;
SIGNAL ww_product : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_fnd_01 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_fnd_02 : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \valid~output_o\ : std_logic;
SIGNAL \product[0]~output_o\ : std_logic;
SIGNAL \product[1]~output_o\ : std_logic;
SIGNAL \product[2]~output_o\ : std_logic;
SIGNAL \product[3]~output_o\ : std_logic;
SIGNAL \product[4]~output_o\ : std_logic;
SIGNAL \product[5]~output_o\ : std_logic;
SIGNAL \product[6]~output_o\ : std_logic;
SIGNAL \product[7]~output_o\ : std_logic;
SIGNAL \fnd_01[0]~output_o\ : std_logic;
SIGNAL \fnd_01[1]~output_o\ : std_logic;
SIGNAL \fnd_01[2]~output_o\ : std_logic;
SIGNAL \fnd_01[3]~output_o\ : std_logic;
SIGNAL \fnd_01[4]~output_o\ : std_logic;
SIGNAL \fnd_01[5]~output_o\ : std_logic;
SIGNAL \fnd_01[6]~output_o\ : std_logic;
SIGNAL \fnd_02[0]~output_o\ : std_logic;
SIGNAL \fnd_02[1]~output_o\ : std_logic;
SIGNAL \fnd_02[2]~output_o\ : std_logic;
SIGNAL \fnd_02[3]~output_o\ : std_logic;
SIGNAL \fnd_02[4]~output_o\ : std_logic;
SIGNAL \fnd_02[5]~output_o\ : std_logic;
SIGNAL \fnd_02[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \start_d1~0_combout\ : std_logic;
SIGNAL \n_rst~input_o\ : std_logic;
SIGNAL \start_d1~q\ : std_logic;
SIGNAL \start_d2~q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \next_state~1_combout\ : std_logic;
SIGNAL \next_state~0_combout\ : std_logic;
SIGNAL \valid~0_combout\ : std_logic;
SIGNAL \valid~1_combout\ : std_logic;
SIGNAL \valid~reg0_q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \multiplier_1[0]~input_o\ : std_logic;
SIGNAL \multiplier_1[1]~input_o\ : std_logic;
SIGNAL \multiplier_1[3]~input_o\ : std_logic;
SIGNAL \multiplicand[0]~input_o\ : std_logic;
SIGNAL \multiplicand[1]~input_o\ : std_logic;
SIGNAL \multiplicand[2]~input_o\ : std_logic;
SIGNAL \multiplicand[3]~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \product_i~8_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \product_i~7_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \product_i~6_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \product_i~5_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \product_i~3_combout\ : std_logic;
SIGNAL \product_i~4_combout\ : std_logic;
SIGNAL \multiplier_1[2]~input_o\ : std_logic;
SIGNAL \product_i~2_combout\ : std_logic;
SIGNAL \product_i~1_combout\ : std_logic;
SIGNAL \product_i~0_combout\ : std_logic;
SIGNAL \product[0]~reg0feeder_combout\ : std_logic;
SIGNAL \product[0]~reg0_q\ : std_logic;
SIGNAL \product[1]~reg0feeder_combout\ : std_logic;
SIGNAL \product[1]~reg0_q\ : std_logic;
SIGNAL \product[2]~reg0feeder_combout\ : std_logic;
SIGNAL \product[2]~reg0_q\ : std_logic;
SIGNAL \product[3]~reg0_q\ : std_logic;
SIGNAL \product[4]~reg0feeder_combout\ : std_logic;
SIGNAL \product[4]~reg0_q\ : std_logic;
SIGNAL \product[5]~reg0feeder_combout\ : std_logic;
SIGNAL \product[5]~reg0_q\ : std_logic;
SIGNAL \product[6]~reg0_q\ : std_logic;
SIGNAL \product[7]~reg0_q\ : std_logic;
SIGNAL \f0|WideOr6~0_combout\ : std_logic;
SIGNAL \f0|WideOr5~0_combout\ : std_logic;
SIGNAL \f0|WideOr4~0_combout\ : std_logic;
SIGNAL \f0|WideOr3~0_combout\ : std_logic;
SIGNAL \f0|WideOr2~0_combout\ : std_logic;
SIGNAL \f0|WideOr1~0_combout\ : std_logic;
SIGNAL \f0|WideOr0~0_combout\ : std_logic;
SIGNAL \f1|WideOr6~0_combout\ : std_logic;
SIGNAL \f1|WideOr5~0_combout\ : std_logic;
SIGNAL \f1|WideOr4~0_combout\ : std_logic;
SIGNAL \f1|WideOr3~0_combout\ : std_logic;
SIGNAL \f1|WideOr2~0_combout\ : std_logic;
SIGNAL \f1|WideOr1~0_combout\ : std_logic;
SIGNAL \f1|WideOr0~0_combout\ : std_logic;
SIGNAL state : std_logic_vector(3 DOWNTO 0);
SIGNAL product_i : std_logic_vector(7 DOWNTO 0);
SIGNAL m2 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_valid~0_combout\ : std_logic;
SIGNAL \f1|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \f0|ALT_INV_WideOr0~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_n_rst <= n_rst;
ww_start <= start;
ww_multiplier_1 <= multiplier_1;
ww_multiplicand <= multiplicand;
valid <= ww_valid;
product <= ww_product;
fnd_01 <= ww_fnd_01;
fnd_02 <= ww_fnd_02;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_valid~0_combout\ <= NOT \valid~0_combout\;
\f1|ALT_INV_WideOr0~0_combout\ <= NOT \f1|WideOr0~0_combout\;
\f0|ALT_INV_WideOr0~0_combout\ <= NOT \f0|WideOr0~0_combout\;

-- Location: IOOBUF_X0_Y27_N16
\valid~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \valid~reg0_q\,
	devoe => ww_devoe,
	o => \valid~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\product[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product[0]~reg0_q\,
	devoe => ww_devoe,
	o => \product[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\product[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product[1]~reg0_q\,
	devoe => ww_devoe,
	o => \product[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\product[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product[2]~reg0_q\,
	devoe => ww_devoe,
	o => \product[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\product[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product[3]~reg0_q\,
	devoe => ww_devoe,
	o => \product[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\product[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product[4]~reg0_q\,
	devoe => ww_devoe,
	o => \product[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\product[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product[5]~reg0_q\,
	devoe => ww_devoe,
	o => \product[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\product[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product[6]~reg0_q\,
	devoe => ww_devoe,
	o => \product[6]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\product[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product[7]~reg0_q\,
	devoe => ww_devoe,
	o => \product[7]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\fnd_01[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f0|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \fnd_01[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\fnd_01[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f0|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \fnd_01[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\fnd_01[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f0|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \fnd_01[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\fnd_01[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f0|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \fnd_01[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\fnd_01[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f0|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \fnd_01[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\fnd_01[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f0|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \fnd_01[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\fnd_01[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f0|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \fnd_01[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\fnd_02[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f1|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \fnd_02[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\fnd_02[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f1|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \fnd_02[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\fnd_02[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f1|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \fnd_02[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\fnd_02[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f1|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \fnd_02[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\fnd_02[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f1|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \fnd_02[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\fnd_02[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f1|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \fnd_02[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\fnd_02[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f1|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \fnd_02[6]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y23_N15
\start~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: LCCOMB_X7_Y25_N22
\start_d1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \start_d1~0_combout\ = !\start~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \start~input_o\,
	combout => \start_d1~0_combout\);

-- Location: IOIBUF_X0_Y21_N8
\n_rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_rst,
	o => \n_rst~input_o\);

-- Location: FF_X7_Y25_N23
start_d1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \start_d1~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \start_d1~q\);

-- Location: FF_X7_Y25_N25
start_d2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \start_d1~q\,
	clrn => \n_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \start_d2~q\);

-- Location: LCCOMB_X7_Y25_N24
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\start_d1~q\ & (!state(0) & (!\start_d2~q\ & !state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_d1~q\,
	datab => state(0),
	datac => \start_d2~q\,
	datad => state(1),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X7_Y25_N8
\Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\) # ((!state(0) & (state(2) $ (state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => \Mux0~0_combout\,
	datac => state(0),
	datad => state(1),
	combout => \Mux0~1_combout\);

-- Location: FF_X7_Y25_N9
\state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux0~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(0));

-- Location: LCCOMB_X7_Y25_N26
\next_state~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state~1_combout\ = (state(0) & (!state(2) & state(1))) # (!state(0) & (state(2) & !state(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(0),
	datac => state(2),
	datad => state(1),
	combout => \next_state~1_combout\);

-- Location: FF_X7_Y25_N27
\state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_state~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(2));

-- Location: LCCOMB_X7_Y25_N6
\next_state~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state~0_combout\ = (!state(2) & (state(0) $ (state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(0),
	datac => state(1),
	combout => \next_state~0_combout\);

-- Location: FF_X7_Y25_N7
\state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_state~0_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(1));

-- Location: LCCOMB_X7_Y25_N12
\valid~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \valid~0_combout\ = ((!state(1) & !state(0))) # (!state(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(0),
	datac => state(2),
	combout => \valid~0_combout\);

-- Location: LCCOMB_X7_Y25_N16
\valid~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \valid~1_combout\ = !\valid~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \valid~0_combout\,
	combout => \valid~1_combout\);

-- Location: FF_X7_Y25_N17
\valid~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valid~1_combout\,
	clrn => \n_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \valid~reg0_q\);

-- Location: LCCOMB_X10_Y26_N22
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!state(0) & (!state(2) & !state(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datac => state(2),
	datad => state(1),
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X0_Y24_N1
\multiplier_1[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier_1(0),
	o => \multiplier_1[0]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\multiplier_1[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier_1(1),
	o => \multiplier_1[1]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\multiplier_1[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier_1(3),
	o => \multiplier_1[3]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\multiplicand[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(0),
	o => \multiplicand[0]~input_o\);

-- Location: FF_X10_Y26_N7
\m2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multiplicand[0]~input_o\,
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m2(0));

-- Location: IOIBUF_X0_Y22_N15
\multiplicand[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(1),
	o => \multiplicand[1]~input_o\);

-- Location: FF_X10_Y26_N9
\m2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multiplicand[1]~input_o\,
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m2(1));

-- Location: IOIBUF_X0_Y25_N15
\multiplicand[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(2),
	o => \multiplicand[2]~input_o\);

-- Location: FF_X10_Y26_N11
\m2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multiplicand[2]~input_o\,
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m2(2));

-- Location: IOIBUF_X0_Y26_N8
\multiplicand[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(3),
	o => \multiplicand[3]~input_o\);

-- Location: FF_X10_Y26_N13
\m2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \multiplicand[3]~input_o\,
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m2(3));

-- Location: LCCOMB_X10_Y26_N6
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (m2(0) & (product_i(4) $ (VCC))) # (!m2(0) & (product_i(4) & VCC))
-- \Add0~1\ = CARRY((m2(0) & product_i(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m2(0),
	datab => product_i(4),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X10_Y26_N8
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (m2(1) & ((product_i(5) & (\Add0~1\ & VCC)) # (!product_i(5) & (!\Add0~1\)))) # (!m2(1) & ((product_i(5) & (!\Add0~1\)) # (!product_i(5) & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((m2(1) & (!product_i(5) & !\Add0~1\)) # (!m2(1) & ((!\Add0~1\) # (!product_i(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => m2(1),
	datab => product_i(5),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X10_Y26_N10
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((m2(2) $ (product_i(6) $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((m2(2) & ((product_i(6)) # (!\Add0~3\))) # (!m2(2) & (product_i(6) & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => m2(2),
	datab => product_i(6),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X10_Y26_N12
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (m2(3) & ((product_i(7) & (\Add0~5\ & VCC)) # (!product_i(7) & (!\Add0~5\)))) # (!m2(3) & ((product_i(7) & (!\Add0~5\)) # (!product_i(7) & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((m2(3) & (!product_i(7) & !\Add0~5\)) # (!m2(3) & ((!\Add0~5\) # (!product_i(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => m2(3),
	datab => product_i(7),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X10_Y26_N14
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = !\Add0~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~7\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X10_Y26_N4
\product_i~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \product_i~8_combout\ = (!\Equal0~0_combout\ & (product_i(0) & \Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => product_i(0),
	datac => \Add0~8_combout\,
	combout => \product_i~8_combout\);

-- Location: FF_X10_Y26_N5
\product_i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_i~8_combout\,
	clrn => \n_rst~input_o\,
	ena => \valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => product_i(7));

-- Location: LCCOMB_X10_Y26_N26
\product_i~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \product_i~7_combout\ = (!\Equal0~0_combout\ & ((product_i(0) & (\Add0~6_combout\)) # (!product_i(0) & ((product_i(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => product_i(7),
	datac => \Equal0~0_combout\,
	datad => product_i(0),
	combout => \product_i~7_combout\);

-- Location: FF_X10_Y26_N27
\product_i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_i~7_combout\,
	clrn => \n_rst~input_o\,
	ena => \valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => product_i(6));

-- Location: LCCOMB_X10_Y26_N16
\product_i~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \product_i~6_combout\ = (!\Equal0~0_combout\ & ((product_i(0) & (\Add0~4_combout\)) # (!product_i(0) & ((product_i(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => product_i(0),
	datac => \Equal0~0_combout\,
	datad => product_i(6),
	combout => \product_i~6_combout\);

-- Location: FF_X10_Y26_N17
\product_i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_i~6_combout\,
	clrn => \n_rst~input_o\,
	ena => \valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => product_i(5));

-- Location: LCCOMB_X10_Y26_N28
\product_i~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \product_i~5_combout\ = (!\Equal0~0_combout\ & ((product_i(0) & (\Add0~2_combout\)) # (!product_i(0) & ((product_i(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => product_i(0),
	datac => \Add0~2_combout\,
	datad => product_i(5),
	combout => \product_i~5_combout\);

-- Location: FF_X10_Y26_N29
\product_i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_i~5_combout\,
	clrn => \n_rst~input_o\,
	ena => \valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => product_i(4));

-- Location: LCCOMB_X10_Y26_N24
\product_i~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \product_i~3_combout\ = (!\Equal0~0_combout\ & ((product_i(0) & (\Add0~0_combout\)) # (!product_i(0) & ((product_i(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => product_i(0),
	datac => \Add0~0_combout\,
	datad => product_i(4),
	combout => \product_i~3_combout\);

-- Location: LCCOMB_X10_Y26_N18
\product_i~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \product_i~4_combout\ = (\product_i~3_combout\) # ((\multiplier_1[3]~input_o\ & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_1[3]~input_o\,
	datab => \product_i~3_combout\,
	datac => \Equal0~0_combout\,
	combout => \product_i~4_combout\);

-- Location: FF_X10_Y26_N19
\product_i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_i~4_combout\,
	clrn => \n_rst~input_o\,
	ena => \valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => product_i(3));

-- Location: IOIBUF_X0_Y25_N22
\multiplier_1[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier_1(2),
	o => \multiplier_1[2]~input_o\);

-- Location: LCCOMB_X24_Y24_N12
\product_i~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \product_i~2_combout\ = (\Equal0~0_combout\ & ((\multiplier_1[2]~input_o\))) # (!\Equal0~0_combout\ & (product_i(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => product_i(3),
	datac => \Equal0~0_combout\,
	datad => \multiplier_1[2]~input_o\,
	combout => \product_i~2_combout\);

-- Location: FF_X24_Y24_N13
\product_i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_i~2_combout\,
	clrn => \n_rst~input_o\,
	ena => \valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => product_i(2));

-- Location: LCCOMB_X24_Y24_N18
\product_i~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \product_i~1_combout\ = (\Equal0~0_combout\ & (\multiplier_1[1]~input_o\)) # (!\Equal0~0_combout\ & ((product_i(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_1[1]~input_o\,
	datac => \Equal0~0_combout\,
	datad => product_i(2),
	combout => \product_i~1_combout\);

-- Location: FF_X24_Y24_N19
\product_i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_i~1_combout\,
	clrn => \n_rst~input_o\,
	ena => \valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => product_i(1));

-- Location: LCCOMB_X10_Y26_N0
\product_i~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \product_i~0_combout\ = (\Equal0~0_combout\ & (\multiplier_1[0]~input_o\)) # (!\Equal0~0_combout\ & ((product_i(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datac => \multiplier_1[0]~input_o\,
	datad => product_i(1),
	combout => \product_i~0_combout\);

-- Location: FF_X10_Y26_N1
\product_i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_i~0_combout\,
	clrn => \n_rst~input_o\,
	ena => \valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => product_i(0));

-- Location: LCCOMB_X7_Y25_N2
\product[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \product[0]~reg0feeder_combout\ = product_i(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => product_i(0),
	combout => \product[0]~reg0feeder_combout\);

-- Location: FF_X7_Y25_N3
\product[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product[0]~reg0feeder_combout\,
	clrn => \n_rst~input_o\,
	ena => \ALT_INV_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product[0]~reg0_q\);

-- Location: LCCOMB_X24_Y24_N24
\product[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \product[1]~reg0feeder_combout\ = product_i(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => product_i(1),
	combout => \product[1]~reg0feeder_combout\);

-- Location: FF_X24_Y24_N25
\product[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product[1]~reg0feeder_combout\,
	clrn => \n_rst~input_o\,
	ena => \ALT_INV_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product[1]~reg0_q\);

-- Location: LCCOMB_X24_Y24_N26
\product[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \product[2]~reg0feeder_combout\ = product_i(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => product_i(2),
	combout => \product[2]~reg0feeder_combout\);

-- Location: FF_X24_Y24_N27
\product[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product[2]~reg0feeder_combout\,
	clrn => \n_rst~input_o\,
	ena => \ALT_INV_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product[2]~reg0_q\);

-- Location: FF_X7_Y25_N21
\product[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => product_i(3),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \ALT_INV_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product[3]~reg0_q\);

-- Location: LCCOMB_X7_Y25_N30
\product[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \product[4]~reg0feeder_combout\ = product_i(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => product_i(4),
	combout => \product[4]~reg0feeder_combout\);

-- Location: FF_X7_Y25_N31
\product[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product[4]~reg0feeder_combout\,
	clrn => \n_rst~input_o\,
	ena => \ALT_INV_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product[4]~reg0_q\);

-- Location: LCCOMB_X7_Y25_N0
\product[5]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \product[5]~reg0feeder_combout\ = product_i(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => product_i(5),
	combout => \product[5]~reg0feeder_combout\);

-- Location: FF_X7_Y25_N1
\product[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product[5]~reg0feeder_combout\,
	clrn => \n_rst~input_o\,
	ena => \ALT_INV_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product[5]~reg0_q\);

-- Location: FF_X7_Y25_N11
\product[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => product_i(6),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \ALT_INV_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product[6]~reg0_q\);

-- Location: FF_X7_Y25_N29
\product[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => product_i(7),
	clrn => \n_rst~input_o\,
	sload => VCC,
	ena => \ALT_INV_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product[7]~reg0_q\);

-- Location: LCCOMB_X24_Y24_N4
\f0|WideOr6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \f0|WideOr6~0_combout\ = (\multiplier_1[3]~input_o\ & (\multiplier_1[0]~input_o\ & (\multiplier_1[1]~input_o\ $ (\multiplier_1[2]~input_o\)))) # (!\multiplier_1[3]~input_o\ & (!\multiplier_1[1]~input_o\ & (\multiplier_1[0]~input_o\ $ 
-- (\multiplier_1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_1[0]~input_o\,
	datab => \multiplier_1[3]~input_o\,
	datac => \multiplier_1[1]~input_o\,
	datad => \multiplier_1[2]~input_o\,
	combout => \f0|WideOr6~0_combout\);

-- Location: LCCOMB_X24_Y24_N30
\f0|WideOr5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \f0|WideOr5~0_combout\ = (\multiplier_1[3]~input_o\ & ((\multiplier_1[0]~input_o\ & (\multiplier_1[1]~input_o\)) # (!\multiplier_1[0]~input_o\ & ((\multiplier_1[2]~input_o\))))) # (!\multiplier_1[3]~input_o\ & (\multiplier_1[2]~input_o\ & 
-- (\multiplier_1[0]~input_o\ $ (\multiplier_1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_1[0]~input_o\,
	datab => \multiplier_1[3]~input_o\,
	datac => \multiplier_1[1]~input_o\,
	datad => \multiplier_1[2]~input_o\,
	combout => \f0|WideOr5~0_combout\);

-- Location: LCCOMB_X24_Y24_N0
\f0|WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \f0|WideOr4~0_combout\ = (\multiplier_1[3]~input_o\ & (\multiplier_1[2]~input_o\ & ((\multiplier_1[1]~input_o\) # (!\multiplier_1[0]~input_o\)))) # (!\multiplier_1[3]~input_o\ & (!\multiplier_1[0]~input_o\ & (\multiplier_1[1]~input_o\ & 
-- !\multiplier_1[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_1[0]~input_o\,
	datab => \multiplier_1[3]~input_o\,
	datac => \multiplier_1[1]~input_o\,
	datad => \multiplier_1[2]~input_o\,
	combout => \f0|WideOr4~0_combout\);

-- Location: LCCOMB_X24_Y24_N10
\f0|WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \f0|WideOr3~0_combout\ = (\multiplier_1[1]~input_o\ & ((\multiplier_1[0]~input_o\ & ((\multiplier_1[2]~input_o\))) # (!\multiplier_1[0]~input_o\ & (\multiplier_1[3]~input_o\ & !\multiplier_1[2]~input_o\)))) # (!\multiplier_1[1]~input_o\ & 
-- (!\multiplier_1[3]~input_o\ & (\multiplier_1[0]~input_o\ $ (\multiplier_1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_1[0]~input_o\,
	datab => \multiplier_1[3]~input_o\,
	datac => \multiplier_1[1]~input_o\,
	datad => \multiplier_1[2]~input_o\,
	combout => \f0|WideOr3~0_combout\);

-- Location: LCCOMB_X24_Y24_N20
\f0|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \f0|WideOr2~0_combout\ = (\multiplier_1[1]~input_o\ & (\multiplier_1[0]~input_o\ & (!\multiplier_1[3]~input_o\))) # (!\multiplier_1[1]~input_o\ & ((\multiplier_1[2]~input_o\ & ((!\multiplier_1[3]~input_o\))) # (!\multiplier_1[2]~input_o\ & 
-- (\multiplier_1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_1[0]~input_o\,
	datab => \multiplier_1[3]~input_o\,
	datac => \multiplier_1[1]~input_o\,
	datad => \multiplier_1[2]~input_o\,
	combout => \f0|WideOr2~0_combout\);

-- Location: LCCOMB_X24_Y24_N22
\f0|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \f0|WideOr1~0_combout\ = (\multiplier_1[1]~input_o\ & (((!\multiplier_1[3]~input_o\ & !\multiplier_1[2]~input_o\)))) # (!\multiplier_1[1]~input_o\ & (\multiplier_1[0]~input_o\ & (\multiplier_1[3]~input_o\ $ (!\multiplier_1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_1[0]~input_o\,
	datab => \multiplier_1[3]~input_o\,
	datac => \multiplier_1[1]~input_o\,
	datad => \multiplier_1[2]~input_o\,
	combout => \f0|WideOr1~0_combout\);

-- Location: LCCOMB_X24_Y24_N8
\f0|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \f0|WideOr0~0_combout\ = (\multiplier_1[0]~input_o\ & ((\multiplier_1[3]~input_o\) # (\multiplier_1[1]~input_o\ $ (\multiplier_1[2]~input_o\)))) # (!\multiplier_1[0]~input_o\ & ((\multiplier_1[1]~input_o\) # (\multiplier_1[3]~input_o\ $ 
-- (\multiplier_1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_1[0]~input_o\,
	datab => \multiplier_1[3]~input_o\,
	datac => \multiplier_1[1]~input_o\,
	datad => \multiplier_1[2]~input_o\,
	combout => \f0|WideOr0~0_combout\);

-- Location: LCCOMB_X23_Y28_N0
\f1|WideOr6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \f1|WideOr6~0_combout\ = (\multiplicand[2]~input_o\ & (!\multiplicand[1]~input_o\ & (\multiplicand[3]~input_o\ $ (!\multiplicand[0]~input_o\)))) # (!\multiplicand[2]~input_o\ & (\multiplicand[0]~input_o\ & (\multiplicand[1]~input_o\ $ 
-- (!\multiplicand[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplicand[1]~input_o\,
	datab => \multiplicand[2]~input_o\,
	datac => \multiplicand[3]~input_o\,
	datad => \multiplicand[0]~input_o\,
	combout => \f1|WideOr6~0_combout\);

-- Location: LCCOMB_X23_Y28_N10
\f1|WideOr5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \f1|WideOr5~0_combout\ = (\multiplicand[1]~input_o\ & ((\multiplicand[0]~input_o\ & ((\multiplicand[3]~input_o\))) # (!\multiplicand[0]~input_o\ & (\multiplicand[2]~input_o\)))) # (!\multiplicand[1]~input_o\ & (\multiplicand[2]~input_o\ & 
-- (\multiplicand[3]~input_o\ $ (\multiplicand[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplicand[1]~input_o\,
	datab => \multiplicand[2]~input_o\,
	datac => \multiplicand[3]~input_o\,
	datad => \multiplicand[0]~input_o\,
	combout => \f1|WideOr5~0_combout\);

-- Location: LCCOMB_X23_Y28_N4
\f1|WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \f1|WideOr4~0_combout\ = (\multiplicand[2]~input_o\ & (\multiplicand[3]~input_o\ & ((\multiplicand[1]~input_o\) # (!\multiplicand[0]~input_o\)))) # (!\multiplicand[2]~input_o\ & (\multiplicand[1]~input_o\ & (!\multiplicand[3]~input_o\ & 
-- !\multiplicand[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplicand[1]~input_o\,
	datab => \multiplicand[2]~input_o\,
	datac => \multiplicand[3]~input_o\,
	datad => \multiplicand[0]~input_o\,
	combout => \f1|WideOr4~0_combout\);

-- Location: LCCOMB_X23_Y28_N22
\f1|WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \f1|WideOr3~0_combout\ = (\multiplicand[1]~input_o\ & ((\multiplicand[2]~input_o\ & ((\multiplicand[0]~input_o\))) # (!\multiplicand[2]~input_o\ & (\multiplicand[3]~input_o\ & !\multiplicand[0]~input_o\)))) # (!\multiplicand[1]~input_o\ & 
-- (!\multiplicand[3]~input_o\ & (\multiplicand[2]~input_o\ $ (\multiplicand[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplicand[1]~input_o\,
	datab => \multiplicand[2]~input_o\,
	datac => \multiplicand[3]~input_o\,
	datad => \multiplicand[0]~input_o\,
	combout => \f1|WideOr3~0_combout\);

-- Location: LCCOMB_X23_Y28_N8
\f1|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \f1|WideOr2~0_combout\ = (\multiplicand[1]~input_o\ & (((!\multiplicand[3]~input_o\ & \multiplicand[0]~input_o\)))) # (!\multiplicand[1]~input_o\ & ((\multiplicand[2]~input_o\ & (!\multiplicand[3]~input_o\)) # (!\multiplicand[2]~input_o\ & 
-- ((\multiplicand[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplicand[1]~input_o\,
	datab => \multiplicand[2]~input_o\,
	datac => \multiplicand[3]~input_o\,
	datad => \multiplicand[0]~input_o\,
	combout => \f1|WideOr2~0_combout\);

-- Location: LCCOMB_X23_Y28_N2
\f1|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \f1|WideOr1~0_combout\ = (\multiplicand[1]~input_o\ & (!\multiplicand[2]~input_o\ & (!\multiplicand[3]~input_o\))) # (!\multiplicand[1]~input_o\ & (\multiplicand[0]~input_o\ & (\multiplicand[2]~input_o\ $ (!\multiplicand[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplicand[1]~input_o\,
	datab => \multiplicand[2]~input_o\,
	datac => \multiplicand[3]~input_o\,
	datad => \multiplicand[0]~input_o\,
	combout => \f1|WideOr1~0_combout\);

-- Location: LCCOMB_X23_Y28_N12
\f1|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \f1|WideOr0~0_combout\ = (\multiplicand[0]~input_o\ & ((\multiplicand[3]~input_o\) # (\multiplicand[1]~input_o\ $ (\multiplicand[2]~input_o\)))) # (!\multiplicand[0]~input_o\ & ((\multiplicand[1]~input_o\) # (\multiplicand[2]~input_o\ $ 
-- (\multiplicand[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplicand[1]~input_o\,
	datab => \multiplicand[2]~input_o\,
	datac => \multiplicand[3]~input_o\,
	datad => \multiplicand[0]~input_o\,
	combout => \f1|WideOr0~0_combout\);

ww_valid <= \valid~output_o\;

ww_product(0) <= \product[0]~output_o\;

ww_product(1) <= \product[1]~output_o\;

ww_product(2) <= \product[2]~output_o\;

ww_product(3) <= \product[3]~output_o\;

ww_product(4) <= \product[4]~output_o\;

ww_product(5) <= \product[5]~output_o\;

ww_product(6) <= \product[6]~output_o\;

ww_product(7) <= \product[7]~output_o\;

ww_fnd_01(0) <= \fnd_01[0]~output_o\;

ww_fnd_01(1) <= \fnd_01[1]~output_o\;

ww_fnd_01(2) <= \fnd_01[2]~output_o\;

ww_fnd_01(3) <= \fnd_01[3]~output_o\;

ww_fnd_01(4) <= \fnd_01[4]~output_o\;

ww_fnd_01(5) <= \fnd_01[5]~output_o\;

ww_fnd_01(6) <= \fnd_01[6]~output_o\;

ww_fnd_02(0) <= \fnd_02[0]~output_o\;

ww_fnd_02(1) <= \fnd_02[1]~output_o\;

ww_fnd_02(2) <= \fnd_02[2]~output_o\;

ww_fnd_02(3) <= \fnd_02[3]~output_o\;

ww_fnd_02(4) <= \fnd_02[4]~output_o\;

ww_fnd_02(5) <= \fnd_02[5]~output_o\;

ww_fnd_02(6) <= \fnd_02[6]~output_o\;
END structure;


