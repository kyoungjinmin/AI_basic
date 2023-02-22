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

-- DATE "12/06/2022 15:03:30"

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

ENTITY 	multiplier_c IS
    PORT (
	clk : IN std_logic;
	n_rst : IN std_logic;
	start : IN std_logic;
	m1 : IN std_logic_vector(3 DOWNTO 0);
	m2 : IN std_logic_vector(3 DOWNTO 0);
	product : OUT std_logic_vector(7 DOWNTO 0)
	);
END multiplier_c;

-- Design Ports Information
-- product[0]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[1]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[2]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[3]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[4]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[5]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[6]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[7]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_rst	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m1[0]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m2[0]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m1[1]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m2[1]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m2[2]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m1[2]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m2[3]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m1[3]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF multiplier_c IS
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
SIGNAL ww_m1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_m2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_product : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \n_rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \product[0]~output_o\ : std_logic;
SIGNAL \product[1]~output_o\ : std_logic;
SIGNAL \product[2]~output_o\ : std_logic;
SIGNAL \product[3]~output_o\ : std_logic;
SIGNAL \product[4]~output_o\ : std_logic;
SIGNAL \product[5]~output_o\ : std_logic;
SIGNAL \product[6]~output_o\ : std_logic;
SIGNAL \product[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \m2[0]~input_o\ : std_logic;
SIGNAL \n_rst~input_o\ : std_logic;
SIGNAL \n_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \m1[0]~input_o\ : std_logic;
SIGNAL \product[0]~reg0_q\ : std_logic;
SIGNAL \m2[1]~input_o\ : std_logic;
SIGNAL \m1[1]~input_o\ : std_logic;
SIGNAL \c_half_adder_0|Add0~0_combout\ : std_logic;
SIGNAL \product[1]~reg0_q\ : std_logic;
SIGNAL \c_half_adder_0|Add0~1_combout\ : std_logic;
SIGNAL \m1[2]~input_o\ : std_logic;
SIGNAL \c_half_adder_1|Add0~0_combout\ : std_logic;
SIGNAL \m2[2]~input_o\ : std_logic;
SIGNAL \c_half_adder_0|Add0~2_combout\ : std_logic;
SIGNAL \product[2]~reg0_q\ : std_logic;
SIGNAL \m1[3]~input_o\ : std_logic;
SIGNAL \c_half_adder_2|Add0~0_combout\ : std_logic;
SIGNAL \c_half_adder_1|Add0~1_combout\ : std_logic;
SIGNAL \c_half_adder_1|Add0~2_combout\ : std_logic;
SIGNAL \m2[3]~input_o\ : std_logic;
SIGNAL \c_half_adder_0|Add0~3_combout\ : std_logic;
SIGNAL \c_full_adder_2|Add1~0_combout\ : std_logic;
SIGNAL \product[3]~reg0_q\ : std_logic;
SIGNAL \c_full_adder_2|Add1~1_combout\ : std_logic;
SIGNAL \c_half_adder_1|Add0~3_combout\ : std_logic;
SIGNAL \c_half_adder_2|Add0~1_combout\ : std_logic;
SIGNAL \c_half_adder_2|Add0~2_combout\ : std_logic;
SIGNAL \c_full_adder_4|Add1~0_combout\ : std_logic;
SIGNAL \c_half_adder_4|Add0~0_combout\ : std_logic;
SIGNAL \product[4]~reg0_q\ : std_logic;
SIGNAL \c_half_adder_2|Add0~3_combout\ : std_logic;
SIGNAL \c_full_adder_5|Add1~0_combout\ : std_logic;
SIGNAL \c_full_adder_4|Add1~1_combout\ : std_logic;
SIGNAL \c_half_adder_4|Add0~1_combout\ : std_logic;
SIGNAL \product[5]~reg0_q\ : std_logic;
SIGNAL \c_half_adder_4|Add0~2_combout\ : std_logic;
SIGNAL \c_full_adder_5|Add1~1_combout\ : std_logic;
SIGNAL \c_full_adder_7|Add1~0_combout\ : std_logic;
SIGNAL \product[6]~reg0_q\ : std_logic;
SIGNAL \c_full_adder_7|Add1~1_combout\ : std_logic;
SIGNAL \product[7]~reg0_q\ : std_logic;
SIGNAL m2_d : std_logic_vector(3 DOWNTO 0);
SIGNAL m1m2 : std_logic_vector(15 DOWNTO 0);
SIGNAL m1_d : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_n_rst <= n_rst;
ww_start <= start;
ww_m1 <= m1;
ww_m2 <= m2;
product <= ww_product;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\n_rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \n_rst~input_o\);

-- Location: IOOBUF_X0_Y3_N9
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

-- Location: IOOBUF_X0_Y5_N23
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

-- Location: IOOBUF_X0_Y8_N9
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

-- Location: IOOBUF_X0_Y2_N16
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

-- Location: IOOBUF_X1_Y0_N2
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

-- Location: IOOBUF_X1_Y0_N16
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

-- Location: IOOBUF_X41_Y6_N2
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

-- Location: IOOBUF_X3_Y0_N23
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

-- Location: IOIBUF_X0_Y14_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
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

-- Location: IOIBUF_X5_Y0_N8
\m2[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m2(0),
	o => \m2[0]~input_o\);

-- Location: IOIBUF_X0_Y14_N8
\n_rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_rst,
	o => \n_rst~input_o\);

-- Location: CLKCTRL_G2
\n_rst~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \n_rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \n_rst~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y4_N1
\start~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: FF_X1_Y3_N11
\m2_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \m2[0]~input_o\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m2_d(0));

-- Location: IOIBUF_X7_Y0_N22
\m1[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m1(0),
	o => \m1[0]~input_o\);

-- Location: FF_X1_Y3_N1
\m1_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \m1[0]~input_o\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m1_d(0));

-- Location: LCCOMB_X1_Y3_N24
\m1m2[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- m1m2(0) = (m2_d(0) & m1_d(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => m2_d(0),
	datad => m1_d(0),
	combout => m1m2(0));

-- Location: FF_X1_Y3_N25
\product[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => m1m2(0),
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product[0]~reg0_q\);

-- Location: IOIBUF_X0_Y2_N8
\m2[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m2(1),
	o => \m2[1]~input_o\);

-- Location: FF_X1_Y3_N23
\m2_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \m2[1]~input_o\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m2_d(1));

-- Location: IOIBUF_X0_Y3_N1
\m1[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m1(1),
	o => \m1[1]~input_o\);

-- Location: FF_X1_Y3_N5
\m1_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \m1[1]~input_o\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m1_d(1));

-- Location: LCCOMB_X1_Y3_N26
\c_half_adder_0|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \c_half_adder_0|Add0~0_combout\ = (m1_d(0) & (m2_d(1) $ (((m2_d(0) & m1_d(1)))))) # (!m1_d(0) & (m2_d(0) & ((m1_d(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m1_d(0),
	datab => m2_d(0),
	datac => m2_d(1),
	datad => m1_d(1),
	combout => \c_half_adder_0|Add0~0_combout\);

-- Location: FF_X1_Y3_N27
\product[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \c_half_adder_0|Add0~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product[1]~reg0_q\);

-- Location: LCCOMB_X1_Y3_N0
\c_half_adder_0|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \c_half_adder_0|Add0~1_combout\ = (m2_d(1) & (m2_d(0) & (m1_d(0) & m1_d(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m2_d(1),
	datab => m2_d(0),
	datac => m1_d(0),
	datad => m1_d(1),
	combout => \c_half_adder_0|Add0~1_combout\);

-- Location: IOIBUF_X1_Y0_N29
\m1[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m1(2),
	o => \m1[2]~input_o\);

-- Location: FF_X1_Y3_N3
\m1_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \m1[2]~input_o\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m1_d(2));

-- Location: LCCOMB_X1_Y3_N10
\c_half_adder_1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \c_half_adder_1|Add0~0_combout\ = (m2_d(1) & (m1_d(1) $ (((m2_d(0) & m1_d(2)))))) # (!m2_d(1) & (((m2_d(0) & m1_d(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m2_d(1),
	datab => m1_d(1),
	datac => m2_d(0),
	datad => m1_d(2),
	combout => \c_half_adder_1|Add0~0_combout\);

-- Location: IOIBUF_X3_Y0_N8
\m2[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m2(2),
	o => \m2[2]~input_o\);

-- Location: FF_X1_Y3_N9
\m2_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \m2[2]~input_o\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m2_d(2));

-- Location: LCCOMB_X1_Y3_N20
\c_half_adder_0|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \c_half_adder_0|Add0~2_combout\ = \c_half_adder_0|Add0~1_combout\ $ (\c_half_adder_1|Add0~0_combout\ $ (((m1_d(0) & m2_d(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m1_d(0),
	datab => \c_half_adder_0|Add0~1_combout\,
	datac => \c_half_adder_1|Add0~0_combout\,
	datad => m2_d(2),
	combout => \c_half_adder_0|Add0~2_combout\);

-- Location: FF_X1_Y3_N21
\product[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \c_half_adder_0|Add0~2_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product[2]~reg0_q\);

-- Location: IOIBUF_X1_Y0_N8
\m1[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m1(3),
	o => \m1[3]~input_o\);

-- Location: FF_X1_Y3_N15
\m1_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \m1[3]~input_o\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m1_d(3));

-- Location: LCCOMB_X1_Y3_N2
\c_half_adder_2|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \c_half_adder_2|Add0~0_combout\ = (m2_d(1) & (m1_d(2) $ (((m2_d(0) & m1_d(3)))))) # (!m2_d(1) & (m2_d(0) & ((m1_d(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m2_d(1),
	datab => m2_d(0),
	datac => m1_d(2),
	datad => m1_d(3),
	combout => \c_half_adder_2|Add0~0_combout\);

-- Location: LCCOMB_X1_Y3_N4
\c_half_adder_1|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \c_half_adder_1|Add0~1_combout\ = (m2_d(1) & (m2_d(0) & (m1_d(1) & m1_d(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m2_d(1),
	datab => m2_d(0),
	datac => m1_d(1),
	datad => m1_d(2),
	combout => \c_half_adder_1|Add0~1_combout\);

-- Location: LCCOMB_X1_Y3_N16
\c_half_adder_1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \c_half_adder_1|Add0~2_combout\ = \c_half_adder_2|Add0~0_combout\ $ (\c_half_adder_1|Add0~1_combout\ $ (((m2_d(2) & m1_d(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_half_adder_2|Add0~0_combout\,
	datab => m2_d(2),
	datac => \c_half_adder_1|Add0~1_combout\,
	datad => m1_d(1),
	combout => \c_half_adder_1|Add0~2_combout\);

-- Location: IOIBUF_X0_Y7_N1
\m2[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m2(3),
	o => \m2[3]~input_o\);

-- Location: FF_X1_Y3_N29
\m2_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \m2[3]~input_o\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m2_d(3));

-- Location: LCCOMB_X1_Y3_N18
\c_half_adder_0|Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \c_half_adder_0|Add0~3_combout\ = (\c_half_adder_0|Add0~1_combout\ & ((\c_half_adder_1|Add0~0_combout\) # ((m1_d(0) & m2_d(2))))) # (!\c_half_adder_0|Add0~1_combout\ & (m1_d(0) & (\c_half_adder_1|Add0~0_combout\ & m2_d(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m1_d(0),
	datab => \c_half_adder_0|Add0~1_combout\,
	datac => \c_half_adder_1|Add0~0_combout\,
	datad => m2_d(2),
	combout => \c_half_adder_0|Add0~3_combout\);

-- Location: LCCOMB_X1_Y3_N30
\c_full_adder_2|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \c_full_adder_2|Add1~0_combout\ = \c_half_adder_1|Add0~2_combout\ $ (\c_half_adder_0|Add0~3_combout\ $ (((m2_d(3) & m1_d(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_half_adder_1|Add0~2_combout\,
	datab => m2_d(3),
	datac => \c_half_adder_0|Add0~3_combout\,
	datad => m1_d(0),
	combout => \c_full_adder_2|Add1~0_combout\);

-- Location: FF_X1_Y3_N31
\product[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \c_full_adder_2|Add1~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product[3]~reg0_q\);

-- Location: LCCOMB_X1_Y3_N28
\c_full_adder_2|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \c_full_adder_2|Add1~1_combout\ = (\c_half_adder_0|Add0~3_combout\ & ((\c_half_adder_1|Add0~2_combout\) # ((m1_d(0) & m2_d(3))))) # (!\c_half_adder_0|Add0~3_combout\ & (m1_d(0) & (m2_d(3) & \c_half_adder_1|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m1_d(0),
	datab => \c_half_adder_0|Add0~3_combout\,
	datac => m2_d(3),
	datad => \c_half_adder_1|Add0~2_combout\,
	combout => \c_full_adder_2|Add1~1_combout\);

-- Location: LCCOMB_X1_Y3_N8
\c_half_adder_1|Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \c_half_adder_1|Add0~3_combout\ = (\c_half_adder_2|Add0~0_combout\ & ((\c_half_adder_1|Add0~1_combout\) # ((m2_d(2) & m1_d(1))))) # (!\c_half_adder_2|Add0~0_combout\ & (\c_half_adder_1|Add0~1_combout\ & (m2_d(2) & m1_d(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_half_adder_2|Add0~0_combout\,
	datab => \c_half_adder_1|Add0~1_combout\,
	datac => m2_d(2),
	datad => m1_d(1),
	combout => \c_half_adder_1|Add0~3_combout\);

-- Location: LCCOMB_X1_Y3_N14
\c_half_adder_2|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \c_half_adder_2|Add0~1_combout\ = (m2_d(1) & (m2_d(0) & (m1_d(3) & m1_d(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m2_d(1),
	datab => m2_d(0),
	datac => m1_d(3),
	datad => m1_d(2),
	combout => \c_half_adder_2|Add0~1_combout\);

-- Location: LCCOMB_X1_Y3_N22
\m1m2[10]\ : cycloneiii_lcell_comb
-- Equation(s):
-- m1m2(10) = (m2_d(1) & m1_d(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => m2_d(1),
	datad => m1_d(3),
	combout => m1m2(10));

-- Location: LCCOMB_X2_Y3_N0
\c_half_adder_2|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \c_half_adder_2|Add0~2_combout\ = \c_half_adder_2|Add0~1_combout\ $ (m1m2(10) $ (((m2_d(2) & m1_d(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_half_adder_2|Add0~1_combout\,
	datab => m2_d(2),
	datac => m1m2(10),
	datad => m1_d(2),
	combout => \c_half_adder_2|Add0~2_combout\);

-- Location: LCCOMB_X2_Y3_N2
\c_full_adder_4|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \c_full_adder_4|Add1~0_combout\ = \c_half_adder_1|Add0~3_combout\ $ (\c_half_adder_2|Add0~2_combout\ $ (((m2_d(3) & m1_d(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_half_adder_1|Add0~3_combout\,
	datab => m2_d(3),
	datac => m1_d(1),
	datad => \c_half_adder_2|Add0~2_combout\,
	combout => \c_full_adder_4|Add1~0_combout\);

-- Location: LCCOMB_X2_Y3_N8
\c_half_adder_4|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \c_half_adder_4|Add0~0_combout\ = \c_full_adder_2|Add1~1_combout\ $ (\c_full_adder_4|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_full_adder_2|Add1~1_combout\,
	datad => \c_full_adder_4|Add1~0_combout\,
	combout => \c_half_adder_4|Add0~0_combout\);

-- Location: FF_X2_Y3_N9
\product[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \c_half_adder_4|Add0~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product[4]~reg0_q\);

-- Location: LCCOMB_X2_Y3_N22
\c_half_adder_2|Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \c_half_adder_2|Add0~3_combout\ = (\c_half_adder_2|Add0~1_combout\ & ((m1m2(10)) # ((m2_d(2) & m1_d(2))))) # (!\c_half_adder_2|Add0~1_combout\ & (m2_d(2) & (m1m2(10) & m1_d(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_half_adder_2|Add0~1_combout\,
	datab => m2_d(2),
	datac => m1m2(10),
	datad => m1_d(2),
	combout => \c_half_adder_2|Add0~3_combout\);

-- Location: LCCOMB_X2_Y3_N28
\m1m2[13]\ : cycloneiii_lcell_comb
-- Equation(s):
-- m1m2(13) = (m2_d(2) & m1_d(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => m2_d(2),
	datac => m1_d(3),
	combout => m1m2(13));

-- Location: LCCOMB_X2_Y3_N24
\c_full_adder_5|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \c_full_adder_5|Add1~0_combout\ = \c_half_adder_2|Add0~3_combout\ $ (m1m2(13) $ (((m1_d(2) & m2_d(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m1_d(2),
	datab => m2_d(3),
	datac => \c_half_adder_2|Add0~3_combout\,
	datad => m1m2(13),
	combout => \c_full_adder_5|Add1~0_combout\);

-- Location: LCCOMB_X2_Y3_N26
\c_full_adder_4|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \c_full_adder_4|Add1~1_combout\ = (\c_half_adder_1|Add0~3_combout\ & ((\c_half_adder_2|Add0~2_combout\) # ((m2_d(3) & m1_d(1))))) # (!\c_half_adder_1|Add0~3_combout\ & (m2_d(3) & (m1_d(1) & \c_half_adder_2|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_half_adder_1|Add0~3_combout\,
	datab => m2_d(3),
	datac => m1_d(1),
	datad => \c_half_adder_2|Add0~2_combout\,
	combout => \c_full_adder_4|Add1~1_combout\);

-- Location: LCCOMB_X2_Y3_N18
\c_half_adder_4|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \c_half_adder_4|Add0~1_combout\ = \c_full_adder_5|Add1~0_combout\ $ (\c_full_adder_4|Add1~1_combout\ $ (((\c_full_adder_2|Add1~1_combout\ & \c_full_adder_4|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_full_adder_2|Add1~1_combout\,
	datab => \c_full_adder_5|Add1~0_combout\,
	datac => \c_full_adder_4|Add1~1_combout\,
	datad => \c_full_adder_4|Add1~0_combout\,
	combout => \c_half_adder_4|Add0~1_combout\);

-- Location: FF_X2_Y3_N19
\product[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \c_half_adder_4|Add0~1_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product[5]~reg0_q\);

-- Location: LCCOMB_X2_Y3_N6
\c_half_adder_4|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \c_half_adder_4|Add0~2_combout\ = (\c_full_adder_5|Add1~0_combout\ & ((\c_full_adder_4|Add1~1_combout\) # ((\c_full_adder_2|Add1~1_combout\ & \c_full_adder_4|Add1~0_combout\)))) # (!\c_full_adder_5|Add1~0_combout\ & (\c_full_adder_2|Add1~1_combout\ & 
-- (\c_full_adder_4|Add1~1_combout\ & \c_full_adder_4|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_full_adder_2|Add1~1_combout\,
	datab => \c_full_adder_5|Add1~0_combout\,
	datac => \c_full_adder_4|Add1~1_combout\,
	datad => \c_full_adder_4|Add1~0_combout\,
	combout => \c_half_adder_4|Add0~2_combout\);

-- Location: LCCOMB_X2_Y3_N20
\c_full_adder_5|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \c_full_adder_5|Add1~1_combout\ = (\c_half_adder_2|Add0~3_combout\ & ((m1m2(13)) # ((m1_d(2) & m2_d(3))))) # (!\c_half_adder_2|Add0~3_combout\ & (m1_d(2) & (m2_d(3) & m1m2(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m1_d(2),
	datab => m2_d(3),
	datac => \c_half_adder_2|Add0~3_combout\,
	datad => m1m2(13),
	combout => \c_full_adder_5|Add1~1_combout\);

-- Location: LCCOMB_X2_Y3_N12
\c_full_adder_7|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \c_full_adder_7|Add1~0_combout\ = \c_half_adder_4|Add0~2_combout\ $ (\c_full_adder_5|Add1~1_combout\ $ (((m2_d(3) & m1_d(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_half_adder_4|Add0~2_combout\,
	datab => m2_d(3),
	datac => m1_d(3),
	datad => \c_full_adder_5|Add1~1_combout\,
	combout => \c_full_adder_7|Add1~0_combout\);

-- Location: FF_X2_Y3_N13
\product[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \c_full_adder_7|Add1~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product[6]~reg0_q\);

-- Location: LCCOMB_X2_Y3_N14
\c_full_adder_7|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \c_full_adder_7|Add1~1_combout\ = (\c_half_adder_4|Add0~2_combout\ & ((\c_full_adder_5|Add1~1_combout\) # ((m2_d(3) & m1_d(3))))) # (!\c_half_adder_4|Add0~2_combout\ & (m2_d(3) & (m1_d(3) & \c_full_adder_5|Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_half_adder_4|Add0~2_combout\,
	datab => m2_d(3),
	datac => m1_d(3),
	datad => \c_full_adder_5|Add1~1_combout\,
	combout => \c_full_adder_7|Add1~1_combout\);

-- Location: FF_X2_Y3_N15
\product[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \c_full_adder_7|Add1~1_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product[7]~reg0_q\);

ww_product(0) <= \product[0]~output_o\;

ww_product(1) <= \product[1]~output_o\;

ww_product(2) <= \product[2]~output_o\;

ww_product(3) <= \product[3]~output_o\;

ww_product(4) <= \product[4]~output_o\;

ww_product(5) <= \product[5]~output_o\;

ww_product(6) <= \product[6]~output_o\;

ww_product(7) <= \product[7]~output_o\;
END structure;


