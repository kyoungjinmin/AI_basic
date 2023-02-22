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

-- DATE "12/06/2022 15:06:48"

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

ENTITY 	multiplier_a IS
    PORT (
	clk : IN std_logic;
	n_rst : IN std_logic;
	start : IN std_logic;
	m1 : IN std_logic_vector(3 DOWNTO 0);
	m2 : IN std_logic_vector(3 DOWNTO 0);
	product : OUT std_logic_vector(7 DOWNTO 0)
	);
END multiplier_a;

-- Design Ports Information
-- product[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[1]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[2]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[4]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[5]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[6]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[7]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_rst	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m1[0]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m2[0]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m1[1]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m2[1]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m2[2]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m1[2]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m2[3]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m1[3]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF multiplier_a IS
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
SIGNAL \half_adder_0|Add0~8_combout\ : std_logic;
SIGNAL \product[1]~reg0_q\ : std_logic;
SIGNAL \m2[2]~input_o\ : std_logic;
SIGNAL \half_adder_0|Add0~9_combout\ : std_logic;
SIGNAL \m1[2]~input_o\ : std_logic;
SIGNAL \half_adder_1|Add0~0_combout\ : std_logic;
SIGNAL \product[2]~reg0_q\ : std_logic;
SIGNAL \m2[3]~input_o\ : std_logic;
SIGNAL \half_adder_0|Add0~10_combout\ : std_logic;
SIGNAL \m1[3]~input_o\ : std_logic;
SIGNAL \full_adder_1|Add0~0_combout\ : std_logic;
SIGNAL \full_adder_1|Add1~4_combout\ : std_logic;
SIGNAL \half_adder_1|Add0~1_combout\ : std_logic;
SIGNAL \half_adder_2|Add0~4_combout\ : std_logic;
SIGNAL \product[3]~reg0_q\ : std_logic;
SIGNAL \half_adder_1|Add0~2_combout\ : std_logic;
SIGNAL \half_adder_3|Add0~13_combout\ : std_logic;
SIGNAL \half_adder_3|Add0~14_combout\ : std_logic;
SIGNAL \full_adder_3|Add1~0_combout\ : std_logic;
SIGNAL \half_adder_2|Add0~2_combout\ : std_logic;
SIGNAL \product[4]~reg0_q\ : std_logic;
SIGNAL \half_adder_0|Add0~11_combout\ : std_logic;
SIGNAL \full_adder_1|Add1~5_combout\ : std_logic;
SIGNAL \half_adder_3|Add0~11_combout\ : std_logic;
SIGNAL \half_adder_2|Add0~3_combout\ : std_logic;
SIGNAL \full_adder_3|Add1~1_combout\ : std_logic;
SIGNAL \full_adder_6|Add1~0_combout\ : std_logic;
SIGNAL \product[5]~reg0_q\ : std_logic;
SIGNAL \full_adder_6|Add1~1_combout\ : std_logic;
SIGNAL \half_adder_3|Add0~12_combout\ : std_logic;
SIGNAL \full_adder_5|Add1~0_combout\ : std_logic;
SIGNAL \full_adder_7|Add1~0_combout\ : std_logic;
SIGNAL \product[6]~reg0_q\ : std_logic;
SIGNAL \full_adder_7|Add1~1_combout\ : std_logic;
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

-- Location: IOOBUF_X0_Y7_N9
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

-- Location: IOOBUF_X3_Y29_N9
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

-- Location: IOOBUF_X0_Y26_N9
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

-- Location: IOOBUF_X16_Y29_N23
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

-- Location: IOOBUF_X19_Y29_N30
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

-- Location: IOOBUF_X9_Y29_N30
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

-- Location: IOOBUF_X30_Y29_N9
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

-- Location: IOOBUF_X11_Y29_N9
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

-- Location: IOIBUF_X7_Y29_N15
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

-- Location: IOIBUF_X9_Y0_N8
\start~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: FF_X6_Y26_N31
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

-- Location: FF_X6_Y26_N13
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

-- Location: LCCOMB_X1_Y7_N16
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

-- Location: FF_X1_Y7_N17
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

-- Location: IOIBUF_X7_Y29_N29
\m2[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m2(1),
	o => \m2[1]~input_o\);

-- Location: FF_X6_Y26_N19
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

-- Location: IOIBUF_X0_Y26_N22
\m1[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m1(1),
	o => \m1[1]~input_o\);

-- Location: FF_X6_Y26_N25
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

-- Location: LCCOMB_X6_Y26_N16
\half_adder_0|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \half_adder_0|Add0~8_combout\ = (m1_d(0) & (m2_d(1) $ (((m2_d(0) & m1_d(1)))))) # (!m1_d(0) & (m2_d(0) & ((m1_d(1)))))

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
	combout => \half_adder_0|Add0~8_combout\);

-- Location: FF_X6_Y26_N17
\product[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \half_adder_0|Add0~8_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product[1]~reg0_q\);

-- Location: IOIBUF_X9_Y0_N22
\m2[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m2(2),
	o => \m2[2]~input_o\);

-- Location: FF_X10_Y28_N19
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

-- Location: LCCOMB_X6_Y26_N12
\m1m2[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- m1m2(5) = (m1_d(0) & m2_d(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => m1_d(0),
	datad => m2_d(2),
	combout => m1m2(5));

-- Location: LCCOMB_X6_Y26_N24
\half_adder_0|Add0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \half_adder_0|Add0~9_combout\ = (m2_d(1) & (m2_d(0) & (m1_d(1) & m1_d(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m2_d(1),
	datab => m2_d(0),
	datac => m1_d(1),
	datad => m1_d(0),
	combout => \half_adder_0|Add0~9_combout\);

-- Location: IOIBUF_X0_Y26_N15
\m1[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m1(2),
	o => \m1[2]~input_o\);

-- Location: FF_X6_Y26_N5
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

-- Location: LCCOMB_X6_Y26_N30
\m1m2[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- m1m2(4) = (m1_d(2) & m2_d(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => m1_d(2),
	datac => m2_d(0),
	combout => m1m2(4));

-- Location: LCCOMB_X6_Y26_N18
\m1m2[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- m1m2(3) = (m2_d(1) & m1_d(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => m2_d(1),
	datad => m1_d(1),
	combout => m1m2(3));

-- Location: LCCOMB_X6_Y26_N26
\half_adder_1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \half_adder_1|Add0~0_combout\ = m1m2(5) $ (\half_adder_0|Add0~9_combout\ $ (m1m2(4) $ (m1m2(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m1m2(5),
	datab => \half_adder_0|Add0~9_combout\,
	datac => m1m2(4),
	datad => m1m2(3),
	combout => \half_adder_1|Add0~0_combout\);

-- Location: FF_X6_Y26_N27
\product[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \half_adder_1|Add0~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product[2]~reg0_q\);

-- Location: IOIBUF_X14_Y29_N8
\m2[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m2(3),
	o => \m2[3]~input_o\);

-- Location: FF_X10_Y28_N13
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

-- Location: LCCOMB_X6_Y26_N0
\half_adder_0|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \half_adder_0|Add0~10_combout\ = \half_adder_0|Add0~9_combout\ $ (m1m2(4) $ (((m2_d(1) & m1_d(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m2_d(1),
	datab => \half_adder_0|Add0~9_combout\,
	datac => m1m2(4),
	datad => m1_d(1),
	combout => \half_adder_0|Add0~10_combout\);

-- Location: IOIBUF_X0_Y24_N22
\m1[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m1(3),
	o => \m1[3]~input_o\);

-- Location: FF_X6_Y26_N15
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

-- Location: LCCOMB_X6_Y26_N14
\full_adder_1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \full_adder_1|Add0~0_combout\ = (m2_d(1) & (m1_d(2) $ (((m1_d(3) & m2_d(0)))))) # (!m2_d(1) & (((m1_d(3) & m2_d(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m2_d(1),
	datab => m1_d(2),
	datac => m1_d(3),
	datad => m2_d(0),
	combout => \full_adder_1|Add0~0_combout\);

-- Location: LCCOMB_X6_Y26_N8
\full_adder_1|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \full_adder_1|Add1~4_combout\ = \full_adder_1|Add0~0_combout\ $ (((\half_adder_0|Add0~9_combout\ & ((m1m2(4)) # (m1m2(3)))) # (!\half_adder_0|Add0~9_combout\ & (m1m2(4) & m1m2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \full_adder_1|Add0~0_combout\,
	datab => \half_adder_0|Add0~9_combout\,
	datac => m1m2(4),
	datad => m1m2(3),
	combout => \full_adder_1|Add1~4_combout\);

-- Location: LCCOMB_X10_Y28_N18
\m1m2[8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- m1m2(8) = (m2_d(2) & m1_d(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => m2_d(2),
	datad => m1_d(1),
	combout => m1m2(8));

-- Location: LCCOMB_X6_Y26_N2
\half_adder_1|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \half_adder_1|Add0~1_combout\ = \full_adder_1|Add1~4_combout\ $ (m1m2(8) $ (((m1m2(5) & \half_adder_0|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m1m2(5),
	datab => \half_adder_0|Add0~10_combout\,
	datac => \full_adder_1|Add1~4_combout\,
	datad => m1m2(8),
	combout => \half_adder_1|Add0~1_combout\);

-- Location: LCCOMB_X10_Y28_N24
\half_adder_2|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \half_adder_2|Add0~4_combout\ = \half_adder_1|Add0~1_combout\ $ (((m1_d(0) & m2_d(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m1_d(0),
	datab => m2_d(3),
	datac => \half_adder_1|Add0~1_combout\,
	combout => \half_adder_2|Add0~4_combout\);

-- Location: FF_X10_Y28_N25
\product[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \half_adder_2|Add0~4_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product[3]~reg0_q\);

-- Location: LCCOMB_X10_Y28_N6
\m1m2[12]\ : cycloneiii_lcell_comb
-- Equation(s):
-- m1m2(12) = (m1_d(1) & m2_d(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m1_d(1),
	datac => m2_d(3),
	combout => m1m2(12));

-- Location: LCCOMB_X6_Y26_N6
\half_adder_1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \half_adder_1|Add0~2_combout\ = (\full_adder_1|Add1~4_combout\ & ((m1m2(8)) # ((m1m2(5) & \half_adder_0|Add0~10_combout\)))) # (!\full_adder_1|Add1~4_combout\ & (m1m2(5) & (\half_adder_0|Add0~10_combout\ & m1m2(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m1m2(5),
	datab => \half_adder_0|Add0~10_combout\,
	datac => \full_adder_1|Add1~4_combout\,
	datad => m1m2(8),
	combout => \half_adder_1|Add0~2_combout\);

-- Location: LCCOMB_X6_Y26_N4
\half_adder_3|Add0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \half_adder_3|Add0~13_combout\ = (m1_d(3) & (!m1_d(2) & ((!m1_d(1)) # (!m1_d(0))))) # (!m1_d(3) & (((m1_d(2) & m1_d(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m1_d(0),
	datab => m1_d(3),
	datac => m1_d(2),
	datad => m1_d(1),
	combout => \half_adder_3|Add0~13_combout\);

-- Location: LCCOMB_X6_Y26_N22
\half_adder_3|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \half_adder_3|Add0~14_combout\ = (m2_d(1) & ((m2_d(0) & (\half_adder_3|Add0~13_combout\)) # (!m2_d(0) & ((m1_d(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m2_d(1),
	datab => \half_adder_3|Add0~13_combout\,
	datac => m1_d(3),
	datad => m2_d(0),
	combout => \half_adder_3|Add0~14_combout\);

-- Location: LCCOMB_X10_Y28_N16
\full_adder_3|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \full_adder_3|Add1~0_combout\ = \half_adder_1|Add0~2_combout\ $ (\half_adder_3|Add0~14_combout\ $ (((m1_d(2) & m2_d(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \half_adder_1|Add0~2_combout\,
	datab => m1_d(2),
	datac => \half_adder_3|Add0~14_combout\,
	datad => m2_d(2),
	combout => \full_adder_3|Add1~0_combout\);

-- Location: LCCOMB_X10_Y28_N12
\m1m2[9]\ : cycloneiii_lcell_comb
-- Equation(s):
-- m1m2(9) = (m2_d(3) & m1_d(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => m2_d(3),
	datad => m1_d(0),
	combout => m1m2(9));

-- Location: LCCOMB_X10_Y28_N2
\half_adder_2|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \half_adder_2|Add0~2_combout\ = m1m2(12) $ (\full_adder_3|Add1~0_combout\ $ (((\half_adder_1|Add0~1_combout\ & m1m2(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m1m2(12),
	datab => \full_adder_3|Add1~0_combout\,
	datac => \half_adder_1|Add0~1_combout\,
	datad => m1m2(9),
	combout => \half_adder_2|Add0~2_combout\);

-- Location: FF_X10_Y28_N3
\product[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \half_adder_2|Add0~2_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product[4]~reg0_q\);

-- Location: LCCOMB_X10_Y28_N26
\m1m2[14]\ : cycloneiii_lcell_comb
-- Equation(s):
-- m1m2(14) = (m1_d(2) & m2_d(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => m1_d(2),
	datac => m2_d(3),
	combout => m1m2(14));

-- Location: LCCOMB_X6_Y26_N10
\half_adder_0|Add0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \half_adder_0|Add0~11_combout\ = (\half_adder_0|Add0~9_combout\ & ((m1m2(4)) # ((m2_d(1) & m1_d(1))))) # (!\half_adder_0|Add0~9_combout\ & (m2_d(1) & (m1m2(4) & m1_d(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m2_d(1),
	datab => \half_adder_0|Add0~9_combout\,
	datac => m1m2(4),
	datad => m1_d(1),
	combout => \half_adder_0|Add0~11_combout\);

-- Location: LCCOMB_X6_Y26_N28
\m1m2[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- m1m2(7) = (m2_d(0) & m1_d(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => m2_d(0),
	datac => m1_d(3),
	combout => m1m2(7));

-- Location: LCCOMB_X6_Y26_N20
\full_adder_1|Add1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \full_adder_1|Add1~5_combout\ = (\half_adder_0|Add0~11_combout\ & ((m1m2(7)) # ((m1_d(2) & m2_d(1))))) # (!\half_adder_0|Add0~11_combout\ & (m1_d(2) & (m2_d(1) & m1m2(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \half_adder_0|Add0~11_combout\,
	datab => m1_d(2),
	datac => m2_d(1),
	datad => m1m2(7),
	combout => \full_adder_1|Add1~5_combout\);

-- Location: LCCOMB_X10_Y28_N20
\half_adder_3|Add0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \half_adder_3|Add0~11_combout\ = (m1_d(3) & (m2_d(2) $ (((m2_d(1) & \full_adder_1|Add1~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m1_d(3),
	datab => m2_d(2),
	datac => m2_d(1),
	datad => \full_adder_1|Add1~5_combout\,
	combout => \half_adder_3|Add0~11_combout\);

-- Location: LCCOMB_X10_Y28_N30
\half_adder_2|Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \half_adder_2|Add0~3_combout\ = (m1m2(12) & ((\full_adder_3|Add1~0_combout\) # ((\half_adder_1|Add0~1_combout\ & m1m2(9))))) # (!m1m2(12) & (\full_adder_3|Add1~0_combout\ & (\half_adder_1|Add0~1_combout\ & m1m2(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m1m2(12),
	datab => \full_adder_3|Add1~0_combout\,
	datac => \half_adder_1|Add0~1_combout\,
	datad => m1m2(9),
	combout => \half_adder_2|Add0~3_combout\);

-- Location: LCCOMB_X10_Y28_N28
\full_adder_3|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \full_adder_3|Add1~1_combout\ = (\half_adder_1|Add0~2_combout\ & ((\half_adder_3|Add0~14_combout\) # ((m1_d(2) & m2_d(2))))) # (!\half_adder_1|Add0~2_combout\ & (m1_d(2) & (\half_adder_3|Add0~14_combout\ & m2_d(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \half_adder_1|Add0~2_combout\,
	datab => m1_d(2),
	datac => \half_adder_3|Add0~14_combout\,
	datad => m2_d(2),
	combout => \full_adder_3|Add1~1_combout\);

-- Location: LCCOMB_X10_Y28_N4
\full_adder_6|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \full_adder_6|Add1~0_combout\ = m1m2(14) $ (\half_adder_3|Add0~11_combout\ $ (\half_adder_2|Add0~3_combout\ $ (\full_adder_3|Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m1m2(14),
	datab => \half_adder_3|Add0~11_combout\,
	datac => \half_adder_2|Add0~3_combout\,
	datad => \full_adder_3|Add1~1_combout\,
	combout => \full_adder_6|Add1~0_combout\);

-- Location: FF_X10_Y28_N5
\product[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \full_adder_6|Add1~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product[5]~reg0_q\);

-- Location: LCCOMB_X10_Y28_N10
\full_adder_6|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \full_adder_6|Add1~1_combout\ = (m1m2(14) & ((\half_adder_2|Add0~3_combout\) # (\half_adder_3|Add0~11_combout\ $ (\full_adder_3|Add1~1_combout\)))) # (!m1m2(14) & (\half_adder_2|Add0~3_combout\ & (\half_adder_3|Add0~11_combout\ $ 
-- (\full_adder_3|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m1m2(14),
	datab => \half_adder_3|Add0~11_combout\,
	datac => \half_adder_2|Add0~3_combout\,
	datad => \full_adder_3|Add1~1_combout\,
	combout => \full_adder_6|Add1~1_combout\);

-- Location: LCCOMB_X10_Y28_N22
\half_adder_3|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \half_adder_3|Add0~12_combout\ = (m1_d(3) & (m2_d(2) & (m2_d(1) & \full_adder_1|Add1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m1_d(3),
	datab => m2_d(2),
	datac => m2_d(1),
	datad => \full_adder_1|Add1~5_combout\,
	combout => \half_adder_3|Add0~12_combout\);

-- Location: LCCOMB_X10_Y28_N8
\full_adder_5|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \full_adder_5|Add1~0_combout\ = (\half_adder_3|Add0~12_combout\) # ((\full_adder_3|Add1~1_combout\ & \half_adder_3|Add0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \full_adder_3|Add1~1_combout\,
	datac => \half_adder_3|Add0~12_combout\,
	datad => \half_adder_3|Add0~11_combout\,
	combout => \full_adder_5|Add1~0_combout\);

-- Location: LCCOMB_X10_Y28_N14
\full_adder_7|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \full_adder_7|Add1~0_combout\ = \full_adder_6|Add1~1_combout\ $ (\full_adder_5|Add1~0_combout\ $ (((m2_d(3) & m1_d(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \full_adder_6|Add1~1_combout\,
	datab => m2_d(3),
	datac => \full_adder_5|Add1~0_combout\,
	datad => m1_d(3),
	combout => \full_adder_7|Add1~0_combout\);

-- Location: FF_X10_Y28_N15
\product[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \full_adder_7|Add1~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product[6]~reg0_q\);

-- Location: LCCOMB_X10_Y28_N0
\full_adder_7|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \full_adder_7|Add1~1_combout\ = (\full_adder_6|Add1~1_combout\ & ((\full_adder_5|Add1~0_combout\) # ((m2_d(3) & m1_d(3))))) # (!\full_adder_6|Add1~1_combout\ & (m2_d(3) & (\full_adder_5|Add1~0_combout\ & m1_d(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \full_adder_6|Add1~1_combout\,
	datab => m2_d(3),
	datac => \full_adder_5|Add1~0_combout\,
	datad => m1_d(3),
	combout => \full_adder_7|Add1~1_combout\);

-- Location: FF_X10_Y28_N1
\product[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \full_adder_7|Add1~1_combout\,
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


