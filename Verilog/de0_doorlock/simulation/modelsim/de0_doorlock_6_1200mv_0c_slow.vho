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

-- DATE "11/29/2022 14:23:23"

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

ENTITY 	de0_doorlock IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	out_led_1 : OUT std_logic;
	out_led_2 : OUT std_logic;
	num : IN std_logic_vector(9 DOWNTO 0);
	start : IN std_logic;
	stop : IN std_logic;
	fnd_on_0 : OUT std_logic_vector(6 DOWNTO 0)
	);
END de0_doorlock;

-- Design Ports Information
-- out_led_1	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_led_2	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_on_0[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_on_0[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_on_0[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_on_0[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_on_0[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_on_0[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fnd_on_0[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num[9]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num[8]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stop	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF de0_doorlock IS
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
SIGNAL ww_out_led_1 : std_logic;
SIGNAL ww_out_led_2 : std_logic;
SIGNAL ww_num : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_start : std_logic;
SIGNAL ww_stop : std_logic;
SIGNAL ww_fnd_on_0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \out_led_1~output_o\ : std_logic;
SIGNAL \out_led_2~output_o\ : std_logic;
SIGNAL \fnd_on_0[0]~output_o\ : std_logic;
SIGNAL \fnd_on_0[1]~output_o\ : std_logic;
SIGNAL \fnd_on_0[2]~output_o\ : std_logic;
SIGNAL \fnd_on_0[3]~output_o\ : std_logic;
SIGNAL \fnd_on_0[4]~output_o\ : std_logic;
SIGNAL \fnd_on_0[5]~output_o\ : std_logic;
SIGNAL \fnd_on_0[6]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \stop~input_o\ : std_logic;
SIGNAL \stop_d1~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \stop_d1~q\ : std_logic;
SIGNAL \stop_d2~feeder_combout\ : std_logic;
SIGNAL \stop_d2~q\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \start_d1~feeder_combout\ : std_logic;
SIGNAL \start_d1~q\ : std_logic;
SIGNAL \start_d2~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \num[9]~input_o\ : std_logic;
SIGNAL \d1[9]~feeder_combout\ : std_logic;
SIGNAL \num[0]~input_o\ : std_logic;
SIGNAL \num[1]~input_o\ : std_logic;
SIGNAL \d2[1]~feeder_combout\ : std_logic;
SIGNAL \button_on~2_combout\ : std_logic;
SIGNAL \num[8]~input_o\ : std_logic;
SIGNAL \d2[8]~feeder_combout\ : std_logic;
SIGNAL \d2[9]~feeder_combout\ : std_logic;
SIGNAL \num[6]~input_o\ : std_logic;
SIGNAL \num[7]~input_o\ : std_logic;
SIGNAL \d1[7]~feeder_combout\ : std_logic;
SIGNAL \d2[7]~feeder_combout\ : std_logic;
SIGNAL \button_on~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \num[5]~input_o\ : std_logic;
SIGNAL \num[4]~input_o\ : std_logic;
SIGNAL \num[2]~input_o\ : std_logic;
SIGNAL \num[3]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \d2[4]~feeder_combout\ : std_logic;
SIGNAL \button_on~1_combout\ : std_logic;
SIGNAL \button_on~3_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \state.START~q\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \state.S0~q\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \state.S1~q\ : std_logic;
SIGNAL \state.S3~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \state.S2~q\ : std_logic;
SIGNAL \state.S4~q\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \state.S6~q\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \state.LED_2~q\ : std_logic;
SIGNAL \time_out~0_combout\ : std_logic;
SIGNAL \count[0]~29_combout\ : std_logic;
SIGNAL \count[16]~83_combout\ : std_logic;
SIGNAL \count[0]~30\ : std_logic;
SIGNAL \count[1]~31_combout\ : std_logic;
SIGNAL \count[1]~32\ : std_logic;
SIGNAL \count[2]~33_combout\ : std_logic;
SIGNAL \count[2]~34\ : std_logic;
SIGNAL \count[3]~35_combout\ : std_logic;
SIGNAL \count[3]~36\ : std_logic;
SIGNAL \count[4]~37_combout\ : std_logic;
SIGNAL \count[4]~38\ : std_logic;
SIGNAL \count[5]~39_combout\ : std_logic;
SIGNAL \count[5]~40\ : std_logic;
SIGNAL \count[6]~41_combout\ : std_logic;
SIGNAL \count[6]~42\ : std_logic;
SIGNAL \count[7]~43_combout\ : std_logic;
SIGNAL \count[7]~44\ : std_logic;
SIGNAL \count[8]~45_combout\ : std_logic;
SIGNAL \count[8]~46\ : std_logic;
SIGNAL \count[9]~47_combout\ : std_logic;
SIGNAL \count[9]~48\ : std_logic;
SIGNAL \count[10]~49_combout\ : std_logic;
SIGNAL \count[10]~50\ : std_logic;
SIGNAL \count[11]~51_combout\ : std_logic;
SIGNAL \count[11]~52\ : std_logic;
SIGNAL \count[12]~53_combout\ : std_logic;
SIGNAL \count[12]~54\ : std_logic;
SIGNAL \count[13]~55_combout\ : std_logic;
SIGNAL \count[13]~56\ : std_logic;
SIGNAL \count[14]~57_combout\ : std_logic;
SIGNAL \count[14]~58\ : std_logic;
SIGNAL \count[15]~59_combout\ : std_logic;
SIGNAL \count[15]~60\ : std_logic;
SIGNAL \count[16]~61_combout\ : std_logic;
SIGNAL \count[16]~62\ : std_logic;
SIGNAL \count[17]~63_combout\ : std_logic;
SIGNAL \count[17]~64\ : std_logic;
SIGNAL \count[18]~65_combout\ : std_logic;
SIGNAL \count[18]~66\ : std_logic;
SIGNAL \count[19]~67_combout\ : std_logic;
SIGNAL \count[19]~68\ : std_logic;
SIGNAL \count[20]~69_combout\ : std_logic;
SIGNAL \count[20]~70\ : std_logic;
SIGNAL \count[21]~71_combout\ : std_logic;
SIGNAL \count[21]~72\ : std_logic;
SIGNAL \count[22]~73_combout\ : std_logic;
SIGNAL \count[22]~74\ : std_logic;
SIGNAL \count[23]~75_combout\ : std_logic;
SIGNAL \count[23]~76\ : std_logic;
SIGNAL \count[24]~77_combout\ : std_logic;
SIGNAL \count[24]~78\ : std_logic;
SIGNAL \count[25]~79_combout\ : std_logic;
SIGNAL \count[25]~80\ : std_logic;
SIGNAL \count[26]~81_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \time_out~1_combout\ : std_logic;
SIGNAL \time_out~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \state.S5~q\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \state.LED_1~q\ : std_logic;
SIGNAL \bin2dec_0|Equal3~0_combout\ : std_logic;
SIGNAL \bin2dec_0|Equal1~0_combout\ : std_logic;
SIGNAL \bin2dec_0|Equal1~1_combout\ : std_logic;
SIGNAL \bin2dec_0|Equal9~0_combout\ : std_logic;
SIGNAL \bin2dec_0|Equal2~0_combout\ : std_logic;
SIGNAL \bin2dec_0|Equal2~1_combout\ : std_logic;
SIGNAL \bin2dec_0|Equal6~0_combout\ : std_logic;
SIGNAL \bin2dec_0|WideNor0~2_combout\ : std_logic;
SIGNAL \bin2dec_0|Equal5~0_combout\ : std_logic;
SIGNAL \bin2dec_0|Equal0~0_combout\ : std_logic;
SIGNAL \bin2dec_0|WideNor0~3_combout\ : std_logic;
SIGNAL \bin2dec_0|Equal8~0_combout\ : std_logic;
SIGNAL \bin2dec_0|Equal1~2_combout\ : std_logic;
SIGNAL \bin2dec_0|Equal5~1_combout\ : std_logic;
SIGNAL \bin2dec_0|Equal7~0_combout\ : std_logic;
SIGNAL \bin2dec_0|Equal6~1_combout\ : std_logic;
SIGNAL \bin2dec_0|Equal3~1_combout\ : std_logic;
SIGNAL \bin2dec_0|WideNor0~0_combout\ : std_logic;
SIGNAL \bin2dec_0|WideNor0~1_combout\ : std_logic;
SIGNAL \bin2dec_0|WideOr0~combout\ : std_logic;
SIGNAL \bin2dec_0|WideNor0~4_combout\ : std_logic;
SIGNAL \bin2dec_0|WideOr2~combout\ : std_logic;
SIGNAL \bin2dec_0|WideOr1~7_combout\ : std_logic;
SIGNAL \bin2dec_0|WideOr1~3_combout\ : std_logic;
SIGNAL \bin2dec_0|WideOr1~combout\ : std_logic;
SIGNAL \fnd_0|WideOr0~0_combout\ : std_logic;
SIGNAL \fnd_0|WideOr1~0_combout\ : std_logic;
SIGNAL \fnd_0|WideOr2~0_combout\ : std_logic;
SIGNAL \fnd_0|WideOr3~0_combout\ : std_logic;
SIGNAL \fnd_0|WideOr4~0_combout\ : std_logic;
SIGNAL \fnd_0|WideOr5~0_combout\ : std_logic;
SIGNAL \fnd_0|WideOr6~0_combout\ : std_logic;
SIGNAL d2 : std_logic_vector(9 DOWNTO 0);
SIGNAL d1 : std_logic_vector(9 DOWNTO 0);
SIGNAL count : std_logic_vector(26 DOWNTO 0);
SIGNAL \fnd_0|ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~3_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
out_led_1 <= ww_out_led_1;
out_led_2 <= ww_out_led_2;
ww_num <= num;
ww_start <= start;
ww_stop <= stop;
fnd_on_0 <= ww_fnd_on_0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\fnd_0|ALT_INV_WideOr6~0_combout\ <= NOT \fnd_0|WideOr6~0_combout\;
\ALT_INV_Equal2~3_combout\ <= NOT \Equal2~3_combout\;

-- Location: IOOBUF_X0_Y20_N9
\out_led_1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.LED_1~q\,
	devoe => ww_devoe,
	o => \out_led_1~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\out_led_2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.LED_2~q\,
	devoe => ww_devoe,
	o => \out_led_2~output_o\);

-- Location: IOOBUF_X32_Y29_N23
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

-- Location: IOOBUF_X39_Y29_N16
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

-- Location: IOOBUF_X32_Y29_N9
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

-- Location: IOOBUF_X32_Y29_N2
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

-- Location: IOOBUF_X37_Y29_N23
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

-- Location: IOOBUF_X37_Y29_N30
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

-- Location: IOOBUF_X39_Y29_N30
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

-- Location: IOIBUF_X41_Y15_N1
\clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G9
\clock~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y23_N1
\stop~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stop,
	o => \stop~input_o\);

-- Location: LCCOMB_X11_Y23_N2
\stop_d1~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stop_d1~feeder_combout\ = \stop~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stop~input_o\,
	combout => \stop_d1~feeder_combout\);

-- Location: IOIBUF_X0_Y21_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X11_Y23_N3
stop_d1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stop_d1~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stop_d1~q\);

-- Location: LCCOMB_X15_Y23_N6
\stop_d2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stop_d2~feeder_combout\ = \stop_d1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stop_d1~q\,
	combout => \stop_d2~feeder_combout\);

-- Location: FF_X15_Y23_N7
stop_d2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \stop_d2~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stop_d2~q\);

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

-- Location: LCCOMB_X8_Y23_N20
\start_d1~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \start_d1~feeder_combout\ = \start~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \start~input_o\,
	combout => \start_d1~feeder_combout\);

-- Location: FF_X8_Y23_N21
start_d1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \start_d1~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \start_d1~q\);

-- Location: FF_X11_Y23_N11
start_d2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \start_d1~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \start_d2~q\);

-- Location: LCCOMB_X11_Y23_N10
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\start_d1~q\ & !\start_d2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_d1~q\,
	datac => \start_d2~q\,
	combout => \Selector1~0_combout\);

-- Location: IOIBUF_X0_Y25_N1
\num[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num(9),
	o => \num[9]~input_o\);

-- Location: LCCOMB_X10_Y23_N14
\d1[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \d1[9]~feeder_combout\ = \num[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \num[9]~input_o\,
	combout => \d1[9]~feeder_combout\);

-- Location: FF_X10_Y23_N15
\d1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \d1[9]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d1(9));

-- Location: IOIBUF_X0_Y24_N1
\num[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num(0),
	o => \num[0]~input_o\);

-- Location: FF_X10_Y23_N23
\d1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \num[0]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d1(0));

-- Location: FF_X10_Y23_N13
\d2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => d1(0),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d2(0));

-- Location: IOIBUF_X0_Y27_N1
\num[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num(1),
	o => \num[1]~input_o\);

-- Location: FF_X10_Y23_N25
\d1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \num[1]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d1(1));

-- Location: LCCOMB_X10_Y23_N18
\d2[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \d2[1]~feeder_combout\ = d1(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => d1(1),
	combout => \d2[1]~feeder_combout\);

-- Location: FF_X10_Y23_N19
\d2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \d2[1]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d2(1));

-- Location: LCCOMB_X10_Y23_N12
\button_on~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \button_on~2_combout\ = (!d2(0) & !d2(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => d2(0),
	datad => d2(1),
	combout => \button_on~2_combout\);

-- Location: IOIBUF_X0_Y26_N1
\num[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num(8),
	o => \num[8]~input_o\);

-- Location: FF_X10_Y23_N11
\d1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \num[8]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d1(8));

-- Location: LCCOMB_X11_Y23_N12
\d2[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \d2[8]~feeder_combout\ = d1(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => d1(8),
	combout => \d2[8]~feeder_combout\);

-- Location: FF_X11_Y23_N13
\d2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \d2[8]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d2(8));

-- Location: LCCOMB_X11_Y23_N18
\d2[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \d2[9]~feeder_combout\ = d1(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => d1(9),
	combout => \d2[9]~feeder_combout\);

-- Location: FF_X11_Y23_N19
\d2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \d2[9]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d2(9));

-- Location: IOIBUF_X0_Y25_N15
\num[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num(6),
	o => \num[6]~input_o\);

-- Location: FF_X10_Y23_N1
\d1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \num[6]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d1(6));

-- Location: FF_X11_Y23_N29
\d2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => d1(6),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d2(6));

-- Location: IOIBUF_X0_Y26_N8
\num[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num(7),
	o => \num[7]~input_o\);

-- Location: LCCOMB_X11_Y23_N24
\d1[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \d1[7]~feeder_combout\ = \num[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \num[7]~input_o\,
	combout => \d1[7]~feeder_combout\);

-- Location: FF_X11_Y23_N25
\d1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \d1[7]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d1(7));

-- Location: LCCOMB_X11_Y23_N6
\d2[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \d2[7]~feeder_combout\ = d1(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => d1(7),
	combout => \d2[7]~feeder_combout\);

-- Location: FF_X11_Y23_N7
\d2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \d2[7]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d2(7));

-- Location: LCCOMB_X11_Y23_N28
\button_on~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \button_on~0_combout\ = (!d2(8) & (!d2(9) & (!d2(6) & !d2(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d2(8),
	datab => d2(9),
	datac => d2(6),
	datad => d2(7),
	combout => \button_on~0_combout\);

-- Location: LCCOMB_X10_Y23_N0
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!d1(8) & (!d1(9) & (!d1(6) & !d1(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d1(8),
	datab => d1(9),
	datac => d1(6),
	datad => d1(7),
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X0_Y22_N15
\num[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num(5),
	o => \num[5]~input_o\);

-- Location: FF_X10_Y23_N9
\d1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \num[5]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d1(5));

-- Location: IOIBUF_X0_Y27_N22
\num[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num(4),
	o => \num[4]~input_o\);

-- Location: FF_X10_Y23_N3
\d1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \num[4]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d1(4));

-- Location: IOIBUF_X0_Y25_N22
\num[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num(2),
	o => \num[2]~input_o\);

-- Location: FF_X10_Y23_N5
\d1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \num[2]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d1(2));

-- Location: IOIBUF_X0_Y23_N8
\num[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num(3),
	o => \num[3]~input_o\);

-- Location: FF_X10_Y23_N31
\d1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \num[3]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d1(3));

-- Location: LCCOMB_X10_Y23_N4
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!d1(5) & (!d1(4) & (!d1(2) & !d1(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d1(5),
	datab => d1(4),
	datac => d1(2),
	datad => d1(3),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X10_Y23_N22
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!d1(1) & (\Equal0~0_combout\ & (!d1(0) & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d1(1),
	datab => \Equal0~0_combout\,
	datac => d1(0),
	datad => \Equal0~1_combout\,
	combout => \Equal0~2_combout\);

-- Location: FF_X10_Y23_N17
\d2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => d1(3),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d2(3));

-- Location: FF_X10_Y23_N7
\d2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => d1(5),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d2(5));

-- Location: FF_X10_Y23_N27
\d2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => d1(2),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d2(2));

-- Location: LCCOMB_X11_Y23_N22
\d2[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \d2[4]~feeder_combout\ = d1(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => d1(4),
	combout => \d2[4]~feeder_combout\);

-- Location: FF_X11_Y23_N23
\d2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \d2[4]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d2(4));

-- Location: LCCOMB_X10_Y23_N26
\button_on~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \button_on~1_combout\ = (!d2(3) & (!d2(5) & (!d2(2) & !d2(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d2(3),
	datab => d2(5),
	datac => d2(2),
	datad => d2(4),
	combout => \button_on~1_combout\);

-- Location: LCCOMB_X10_Y23_N28
\button_on~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \button_on~3_combout\ = (\button_on~2_combout\ & (\button_on~0_combout\ & (!\Equal0~2_combout\ & \button_on~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_on~2_combout\,
	datab => \button_on~0_combout\,
	datac => \Equal0~2_combout\,
	datad => \button_on~1_combout\,
	combout => \button_on~3_combout\);

-- Location: LCCOMB_X10_Y23_N20
\Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!d1(8) & (!d1(2) & !d1(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d1(8),
	datab => d1(2),
	datad => d1(7),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X10_Y23_N2
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!d1(6) & (!d1(1) & (!d1(4) & !d1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d1(6),
	datab => d1(1),
	datac => d1(4),
	datad => d1(0),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X10_Y23_N16
\Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = ((\Equal2~1_combout\ & (\Equal2~0_combout\ & !d1(3)))) # (!\button_on~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datab => \Equal2~0_combout\,
	datac => d1(3),
	datad => \button_on~3_combout\,
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X10_Y23_N6
\Equal2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (\Equal2~2_combout\ & (((!d1(9) & !d1(5))) # (!\button_on~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d1(9),
	datab => \button_on~3_combout\,
	datac => d1(5),
	datad => \Equal2~2_combout\,
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X15_Y23_N22
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\time_out~0_combout\ & (!\time_out~q\ & ((\state.START~q\) # (\Selector1~0_combout\)))) # (!\time_out~0_combout\ & (((\state.START~q\) # (\Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_out~0_combout\,
	datab => \time_out~q\,
	datac => \state.START~q\,
	datad => \Selector1~0_combout\,
	combout => \Selector0~0_combout\);

-- Location: FF_X15_Y23_N23
\state.START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.START~q\);

-- Location: LCCOMB_X11_Y23_N14
\Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Selector1~0_combout\ & (((\Equal2~3_combout\ & \state.S0~q\)) # (!\state.START~q\))) # (!\Selector1~0_combout\ & (\Equal2~3_combout\ & (\state.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \Equal2~3_combout\,
	datac => \state.S0~q\,
	datad => \state.START~q\,
	combout => \Selector1~1_combout\);

-- Location: FF_X11_Y23_N15
\state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector1~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S0~q\);

-- Location: LCCOMB_X11_Y23_N0
\Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!d1(9) & (\button_on~3_combout\ & (\Equal2~2_combout\ & d1(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d1(9),
	datab => \button_on~3_combout\,
	datac => \Equal2~2_combout\,
	datad => d1(5),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X11_Y23_N26
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\state.S0~q\ & \Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.S0~q\,
	datad => \Equal3~0_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X11_Y23_N27
\state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	clrn => \reset~input_o\,
	ena => \ALT_INV_Equal2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S1~q\);

-- Location: FF_X11_Y23_N31
\state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \state.S1~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \ALT_INV_Equal2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S3~q\);

-- Location: LCCOMB_X11_Y23_N4
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\state.S0~q\ & !\Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.S0~q\,
	datad => \Equal3~0_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X11_Y23_N5
\state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	clrn => \reset~input_o\,
	ena => \ALT_INV_Equal2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S2~q\);

-- Location: FF_X10_Y23_N21
\state.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \state.S2~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \ALT_INV_Equal2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S4~q\);

-- Location: LCCOMB_X10_Y23_N8
\Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (d1(9) & (\button_on~3_combout\ & (!d1(5) & \Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d1(9),
	datab => \button_on~3_combout\,
	datac => d1(5),
	datad => \Equal2~2_combout\,
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X11_Y23_N16
\Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (!\Equal2~3_combout\ & ((\state.S4~q\) # ((\state.S3~q\ & !\Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S3~q\,
	datab => \state.S4~q\,
	datac => \Equal2~3_combout\,
	datad => \Equal4~0_combout\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X11_Y23_N8
\Selector7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\Selector7~0_combout\) # ((\state.S6~q\ & ((\stop_d2~q\) # (!\stop_d1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop_d2~q\,
	datab => \stop_d1~q\,
	datac => \state.S6~q\,
	datad => \Selector7~0_combout\,
	combout => \Selector7~1_combout\);

-- Location: FF_X11_Y23_N9
\state.S6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector7~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S6~q\);

-- Location: LCCOMB_X15_Y23_N0
\Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\stop_d1~q\ & !\stop_d2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stop_d1~q\,
	datad => \stop_d2~q\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X15_Y23_N4
\Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\time_out~q\ & (\state.S6~q\ & ((\Selector8~0_combout\)))) # (!\time_out~q\ & ((\state.LED_2~q\) # ((\state.S6~q\ & \Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_out~q\,
	datab => \state.S6~q\,
	datac => \state.LED_2~q\,
	datad => \Selector8~0_combout\,
	combout => \Selector9~0_combout\);

-- Location: FF_X15_Y23_N5
\state.LED_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector9~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.LED_2~q\);

-- Location: LCCOMB_X15_Y23_N30
\time_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \time_out~0_combout\ = (\state.LED_2~q\) # (\state.LED_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.LED_2~q\,
	datad => \state.LED_1~q\,
	combout => \time_out~0_combout\);

-- Location: LCCOMB_X16_Y23_N6
\count[0]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[0]~29_combout\ = count(0) $ (VCC)
-- \count[0]~30\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datad => VCC,
	combout => \count[0]~29_combout\,
	cout => \count[0]~30\);

-- Location: LCCOMB_X15_Y23_N8
\count[16]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[16]~83_combout\ = ((!\state.LED_1~q\ & !\state.LED_2~q\)) # (!\LessThan0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.LED_1~q\,
	datac => \state.LED_2~q\,
	datad => \LessThan0~7_combout\,
	combout => \count[16]~83_combout\);

-- Location: FF_X16_Y23_N7
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[0]~29_combout\,
	clrn => \reset~input_o\,
	sclr => \count[16]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X16_Y23_N8
\count[1]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[1]~31_combout\ = (count(1) & (!\count[0]~30\)) # (!count(1) & ((\count[0]~30\) # (GND)))
-- \count[1]~32\ = CARRY((!\count[0]~30\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	cin => \count[0]~30\,
	combout => \count[1]~31_combout\,
	cout => \count[1]~32\);

-- Location: FF_X16_Y23_N9
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[1]~31_combout\,
	clrn => \reset~input_o\,
	sclr => \count[16]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X16_Y23_N10
\count[2]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[2]~33_combout\ = (count(2) & (\count[1]~32\ $ (GND))) # (!count(2) & (!\count[1]~32\ & VCC))
-- \count[2]~34\ = CARRY((count(2) & !\count[1]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datad => VCC,
	cin => \count[1]~32\,
	combout => \count[2]~33_combout\,
	cout => \count[2]~34\);

-- Location: FF_X16_Y23_N11
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[2]~33_combout\,
	clrn => \reset~input_o\,
	sclr => \count[16]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X16_Y23_N12
\count[3]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[3]~35_combout\ = (count(3) & (!\count[2]~34\)) # (!count(3) & ((\count[2]~34\) # (GND)))
-- \count[3]~36\ = CARRY((!\count[2]~34\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \count[2]~34\,
	combout => \count[3]~35_combout\,
	cout => \count[3]~36\);

-- Location: FF_X16_Y23_N13
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[3]~35_combout\,
	clrn => \reset~input_o\,
	sclr => \count[16]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X16_Y23_N14
\count[4]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[4]~37_combout\ = (count(4) & (\count[3]~36\ $ (GND))) # (!count(4) & (!\count[3]~36\ & VCC))
-- \count[4]~38\ = CARRY((count(4) & !\count[3]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \count[3]~36\,
	combout => \count[4]~37_combout\,
	cout => \count[4]~38\);

-- Location: FF_X16_Y23_N15
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[4]~37_combout\,
	clrn => \reset~input_o\,
	sclr => \count[16]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X16_Y23_N16
\count[5]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[5]~39_combout\ = (count(5) & (!\count[4]~38\)) # (!count(5) & ((\count[4]~38\) # (GND)))
-- \count[5]~40\ = CARRY((!\count[4]~38\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(5),
	datad => VCC,
	cin => \count[4]~38\,
	combout => \count[5]~39_combout\,
	cout => \count[5]~40\);

-- Location: FF_X16_Y23_N17
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[5]~39_combout\,
	clrn => \reset~input_o\,
	sclr => \count[16]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X16_Y23_N18
\count[6]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[6]~41_combout\ = (count(6) & (\count[5]~40\ $ (GND))) # (!count(6) & (!\count[5]~40\ & VCC))
-- \count[6]~42\ = CARRY((count(6) & !\count[5]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	datad => VCC,
	cin => \count[5]~40\,
	combout => \count[6]~41_combout\,
	cout => \count[6]~42\);

-- Location: FF_X16_Y23_N19
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[6]~41_combout\,
	clrn => \reset~input_o\,
	sclr => \count[16]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X16_Y23_N20
\count[7]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[7]~43_combout\ = (count(7) & (!\count[6]~42\)) # (!count(7) & ((\count[6]~42\) # (GND)))
-- \count[7]~44\ = CARRY((!\count[6]~42\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \count[6]~42\,
	combout => \count[7]~43_combout\,
	cout => \count[7]~44\);

-- Location: FF_X16_Y23_N21
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[7]~43_combout\,
	clrn => \reset~input_o\,
	sclr => \count[16]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X16_Y23_N22
\count[8]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[8]~45_combout\ = (count(8) & (\count[7]~44\ $ (GND))) # (!count(8) & (!\count[7]~44\ & VCC))
-- \count[8]~46\ = CARRY((count(8) & !\count[7]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datad => VCC,
	cin => \count[7]~44\,
	combout => \count[8]~45_combout\,
	cout => \count[8]~46\);

-- Location: FF_X16_Y23_N23
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[8]~45_combout\,
	clrn => \reset~input_o\,
	sclr => \count[16]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X16_Y23_N24
\count[9]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[9]~47_combout\ = (count(9) & (!\count[8]~46\)) # (!count(9) & ((\count[8]~46\) # (GND)))
-- \count[9]~48\ = CARRY((!\count[8]~46\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	datad => VCC,
	cin => \count[8]~46\,
	combout => \count[9]~47_combout\,
	cout => \count[9]~48\);

-- Location: FF_X16_Y23_N25
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[9]~47_combout\,
	clrn => \reset~input_o\,
	sclr => \count[16]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X16_Y23_N26
\count[10]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[10]~49_combout\ = (count(10) & (\count[9]~48\ $ (GND))) # (!count(10) & (!\count[9]~48\ & VCC))
-- \count[10]~50\ = CARRY((count(10) & !\count[9]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datad => VCC,
	cin => \count[9]~48\,
	combout => \count[10]~49_combout\,
	cout => \count[10]~50\);

-- Location: FF_X16_Y23_N27
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[10]~49_combout\,
	clrn => \reset~input_o\,
	sclr => \count[16]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X16_Y23_N28
\count[11]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[11]~51_combout\ = (count(11) & (!\count[10]~50\)) # (!count(11) & ((\count[10]~50\) # (GND)))
-- \count[11]~52\ = CARRY((!\count[10]~50\) # (!count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(11),
	datad => VCC,
	cin => \count[10]~50\,
	combout => \count[11]~51_combout\,
	cout => \count[11]~52\);

-- Location: FF_X16_Y23_N29
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[11]~51_combout\,
	clrn => \reset~input_o\,
	sclr => \count[16]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LCCOMB_X16_Y23_N30
\count[12]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[12]~53_combout\ = (count(12) & (\count[11]~52\ $ (GND))) # (!count(12) & (!\count[11]~52\ & VCC))
-- \count[12]~54\ = CARRY((count(12) & !\count[11]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(12),
	datad => VCC,
	cin => \count[11]~52\,
	combout => \count[12]~53_combout\,
	cout => \count[12]~54\);

-- Location: FF_X15_Y23_N13
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \count[12]~53_combout\,
	clrn => \reset~input_o\,
	sclr => \count[16]~83_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LCCOMB_X16_Y22_N0
\count[13]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[13]~55_combout\ = (count(13) & (!\count[12]~54\)) # (!count(13) & ((\count[12]~54\) # (GND)))
-- \count[13]~56\ = CARRY((!\count[12]~54\) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(13),
	datad => VCC,
	cin => \count[12]~54\,
	combout => \count[13]~55_combout\,
	cout => \count[13]~56\);

-- Location: FF_X15_Y23_N31
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \count[13]~55_combout\,
	clrn => \reset~input_o\,
	sclr => \count[16]~83_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: LCCOMB_X16_Y22_N2
\count[14]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[14]~57_combout\ = (count(14) & (\count[13]~56\ $ (GND))) # (!count(14) & (!\count[13]~56\ & VCC))
-- \count[14]~58\ = CARRY((count(14) & !\count[13]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(14),
	datad => VCC,
	cin => \count[13]~56\,
	combout => \count[14]~57_combout\,
	cout => \count[14]~58\);

-- Location: FF_X16_Y22_N3
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[14]~57_combout\,
	clrn => \reset~input_o\,
	sclr => \count[16]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: LCCOMB_X16_Y22_N4
\count[15]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[15]~59_combout\ = (count(15) & (!\count[14]~58\)) # (!count(15) & ((\count[14]~58\) # (GND)))
-- \count[15]~60\ = CARRY((!\count[14]~58\) # (!count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datad => VCC,
	cin => \count[14]~58\,
	combout => \count[15]~59_combout\,
	cout => \count[15]~60\);

-- Location: FF_X15_Y23_N17
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \count[15]~59_combout\,
	clrn => \reset~input_o\,
	sclr => \count[16]~83_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X16_Y22_N6
\count[16]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[16]~61_combout\ = (count(16) & (\count[15]~60\ $ (GND))) # (!count(16) & (!\count[15]~60\ & VCC))
-- \count[16]~62\ = CARRY((count(16) & !\count[15]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(16),
	datad => VCC,
	cin => \count[15]~60\,
	combout => \count[16]~61_combout\,
	cout => \count[16]~62\);

-- Location: FF_X16_Y22_N7
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[16]~61_combout\,
	clrn => \reset~input_o\,
	sclr => \count[16]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: LCCOMB_X16_Y22_N8
\count[17]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[17]~63_combout\ = (count(17) & (!\count[16]~62\)) # (!count(17) & ((\count[16]~62\) # (GND)))
-- \count[17]~64\ = CARRY((!\count[16]~62\) # (!count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(17),
	datad => VCC,
	cin => \count[16]~62\,
	combout => \count[17]~63_combout\,
	cout => \count[17]~64\);

-- Location: FF_X16_Y22_N9
\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[17]~63_combout\,
	clrn => \reset~input_o\,
	sclr => \count[16]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

-- Location: LCCOMB_X16_Y22_N10
\count[18]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[18]~65_combout\ = (count(18) & (\count[17]~64\ $ (GND))) # (!count(18) & (!\count[17]~64\ & VCC))
-- \count[18]~66\ = CARRY((count(18) & !\count[17]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(18),
	datad => VCC,
	cin => \count[17]~64\,
	combout => \count[18]~65_combout\,
	cout => \count[18]~66\);

-- Location: FF_X16_Y22_N11
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[18]~65_combout\,
	clrn => \reset~input_o\,
	sclr => \count[16]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: LCCOMB_X16_Y22_N12
\count[19]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[19]~67_combout\ = (count(19) & (!\count[18]~66\)) # (!count(19) & ((\count[18]~66\) # (GND)))
-- \count[19]~68\ = CARRY((!\count[18]~66\) # (!count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datad => VCC,
	cin => \count[18]~66\,
	combout => \count[19]~67_combout\,
	cout => \count[19]~68\);

-- Location: FF_X16_Y22_N13
\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[19]~67_combout\,
	clrn => \reset~input_o\,
	sclr => \count[16]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

-- Location: LCCOMB_X16_Y22_N14
\count[20]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[20]~69_combout\ = (count(20) & (\count[19]~68\ $ (GND))) # (!count(20) & (!\count[19]~68\ & VCC))
-- \count[20]~70\ = CARRY((count(20) & !\count[19]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(20),
	datad => VCC,
	cin => \count[19]~68\,
	combout => \count[20]~69_combout\,
	cout => \count[20]~70\);

-- Location: FF_X16_Y22_N15
\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[20]~69_combout\,
	clrn => \reset~input_o\,
	sclr => \count[16]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

-- Location: LCCOMB_X16_Y22_N16
\count[21]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[21]~71_combout\ = (count(21) & (!\count[20]~70\)) # (!count(21) & ((\count[20]~70\) # (GND)))
-- \count[21]~72\ = CARRY((!\count[20]~70\) # (!count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(21),
	datad => VCC,
	cin => \count[20]~70\,
	combout => \count[21]~71_combout\,
	cout => \count[21]~72\);

-- Location: FF_X16_Y22_N17
\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[21]~71_combout\,
	clrn => \reset~input_o\,
	sclr => \count[16]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

-- Location: LCCOMB_X16_Y22_N18
\count[22]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[22]~73_combout\ = (count(22) & (\count[21]~72\ $ (GND))) # (!count(22) & (!\count[21]~72\ & VCC))
-- \count[22]~74\ = CARRY((count(22) & !\count[21]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(22),
	datad => VCC,
	cin => \count[21]~72\,
	combout => \count[22]~73_combout\,
	cout => \count[22]~74\);

-- Location: FF_X16_Y22_N19
\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[22]~73_combout\,
	clrn => \reset~input_o\,
	sclr => \count[16]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

-- Location: LCCOMB_X16_Y22_N20
\count[23]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[23]~75_combout\ = (count(23) & (!\count[22]~74\)) # (!count(23) & ((\count[22]~74\) # (GND)))
-- \count[23]~76\ = CARRY((!\count[22]~74\) # (!count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(23),
	datad => VCC,
	cin => \count[22]~74\,
	combout => \count[23]~75_combout\,
	cout => \count[23]~76\);

-- Location: FF_X16_Y22_N21
\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[23]~75_combout\,
	clrn => \reset~input_o\,
	sclr => \count[16]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

-- Location: LCCOMB_X16_Y22_N22
\count[24]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[24]~77_combout\ = (count(24) & (\count[23]~76\ $ (GND))) # (!count(24) & (!\count[23]~76\ & VCC))
-- \count[24]~78\ = CARRY((count(24) & !\count[23]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(24),
	datad => VCC,
	cin => \count[23]~76\,
	combout => \count[24]~77_combout\,
	cout => \count[24]~78\);

-- Location: FF_X16_Y22_N23
\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[24]~77_combout\,
	clrn => \reset~input_o\,
	sclr => \count[16]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

-- Location: LCCOMB_X16_Y22_N24
\count[25]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[25]~79_combout\ = (count(25) & (!\count[24]~78\)) # (!count(25) & ((\count[24]~78\) # (GND)))
-- \count[25]~80\ = CARRY((!\count[24]~78\) # (!count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(25),
	datad => VCC,
	cin => \count[24]~78\,
	combout => \count[25]~79_combout\,
	cout => \count[25]~80\);

-- Location: FF_X16_Y22_N25
\count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[25]~79_combout\,
	clrn => \reset~input_o\,
	sclr => \count[16]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(25));

-- Location: LCCOMB_X16_Y22_N26
\count[26]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[26]~81_combout\ = count(26) $ (!\count[25]~80\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(26),
	cin => \count[25]~80\,
	combout => \count[26]~81_combout\);

-- Location: FF_X16_Y22_N27
\count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[26]~81_combout\,
	clrn => \reset~input_o\,
	sclr => \count[16]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(26));

-- Location: LCCOMB_X16_Y23_N0
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!count(8) & (!count(7) & (!count(10) & !count(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datab => count(7),
	datac => count(10),
	datad => count(9),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X16_Y22_N28
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!count(16) & (!count(24) & !count(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datac => count(24),
	datad => count(18),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X15_Y23_N28
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (((!count(14)) # (!count(12))) # (!count(13))) # (!count(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datab => count(13),
	datac => count(12),
	datad => count(14),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X15_Y23_N14
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\LessThan0~0_combout\ & ((\LessThan0~1_combout\) # ((!count(11) & \LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datab => \LessThan0~2_combout\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X16_Y22_N30
\LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (((!count(18) & !count(17))) # (!count(19))) # (!count(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	datab => count(17),
	datac => count(20),
	datad => count(19),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X15_Y23_N24
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (!count(23)) # (!count(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(22),
	datad => count(23),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X15_Y23_N18
\LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (!count(24) & (((\LessThan0~4_combout\) # (\LessThan0~5_combout\)) # (!count(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datab => count(24),
	datac => \LessThan0~4_combout\,
	datad => \LessThan0~5_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X15_Y23_N20
\LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (!count(26) & (((\LessThan0~3_combout\) # (\LessThan0~6_combout\)) # (!count(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(26),
	datab => count(25),
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X15_Y23_N26
\time_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \time_out~1_combout\ = (\time_out~0_combout\ & ((\reset~input_o\ & ((!\LessThan0~7_combout\))) # (!\reset~input_o\ & (\time_out~q\)))) # (!\time_out~0_combout\ & (((\time_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_out~0_combout\,
	datab => \reset~input_o\,
	datac => \time_out~q\,
	datad => \LessThan0~7_combout\,
	combout => \time_out~1_combout\);

-- Location: FF_X15_Y23_N27
time_out : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \time_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_out~q\);

-- Location: LCCOMB_X11_Y23_N20
\Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\Equal4~0_combout\ & ((\state.S3~q\) # ((!\Selector8~0_combout\ & \state.S5~q\)))) # (!\Equal4~0_combout\ & (!\Selector8~0_combout\ & (\state.S5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \Selector8~0_combout\,
	datac => \state.S5~q\,
	datad => \state.S3~q\,
	combout => \Selector6~0_combout\);

-- Location: FF_X11_Y23_N21
\state.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S5~q\);

-- Location: LCCOMB_X15_Y23_N10
\Selector8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (\time_out~q\ & (\state.S5~q\ & ((\Selector8~0_combout\)))) # (!\time_out~q\ & ((\state.LED_1~q\) # ((\state.S5~q\ & \Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_out~q\,
	datab => \state.S5~q\,
	datac => \state.LED_1~q\,
	datad => \Selector8~0_combout\,
	combout => \Selector8~1_combout\);

-- Location: FF_X15_Y23_N11
\state.LED_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector8~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.LED_1~q\);

-- Location: LCCOMB_X20_Y26_N8
\bin2dec_0|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin2dec_0|Equal3~0_combout\ = (!\num[0]~input_o\ & !\num[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \num[0]~input_o\,
	datac => \num[4]~input_o\,
	combout => \bin2dec_0|Equal3~0_combout\);

-- Location: LCCOMB_X20_Y26_N10
\bin2dec_0|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin2dec_0|Equal1~0_combout\ = (!\num[3]~input_o\ & (!\num[2]~input_o\ & (\bin2dec_0|Equal3~0_combout\ & !\num[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num[3]~input_o\,
	datab => \num[2]~input_o\,
	datac => \bin2dec_0|Equal3~0_combout\,
	datad => \num[5]~input_o\,
	combout => \bin2dec_0|Equal1~0_combout\);

-- Location: LCCOMB_X20_Y26_N18
\bin2dec_0|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin2dec_0|Equal1~1_combout\ = (!\num[8]~input_o\ & (!\num[6]~input_o\ & !\num[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num[8]~input_o\,
	datac => \num[6]~input_o\,
	datad => \num[7]~input_o\,
	combout => \bin2dec_0|Equal1~1_combout\);

-- Location: LCCOMB_X20_Y26_N28
\bin2dec_0|Equal9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin2dec_0|Equal9~0_combout\ = (\bin2dec_0|Equal1~0_combout\ & (\num[9]~input_o\ & (!\num[1]~input_o\ & \bin2dec_0|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2dec_0|Equal1~0_combout\,
	datab => \num[9]~input_o\,
	datac => \num[1]~input_o\,
	datad => \bin2dec_0|Equal1~1_combout\,
	combout => \bin2dec_0|Equal9~0_combout\);

-- Location: LCCOMB_X21_Y26_N20
\bin2dec_0|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin2dec_0|Equal2~0_combout\ = (\num[2]~input_o\ & (!\num[3]~input_o\ & (!\num[5]~input_o\ & \bin2dec_0|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num[2]~input_o\,
	datab => \num[3]~input_o\,
	datac => \num[5]~input_o\,
	datad => \bin2dec_0|Equal3~0_combout\,
	combout => \bin2dec_0|Equal2~0_combout\);

-- Location: LCCOMB_X20_Y26_N14
\bin2dec_0|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin2dec_0|Equal2~1_combout\ = (\bin2dec_0|Equal2~0_combout\ & (!\num[9]~input_o\ & (!\num[1]~input_o\ & \bin2dec_0|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2dec_0|Equal2~0_combout\,
	datab => \num[9]~input_o\,
	datac => \num[1]~input_o\,
	datad => \bin2dec_0|Equal1~1_combout\,
	combout => \bin2dec_0|Equal2~1_combout\);

-- Location: LCCOMB_X20_Y26_N26
\bin2dec_0|Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin2dec_0|Equal6~0_combout\ = (!\num[7]~input_o\ & (!\num[9]~input_o\ & (!\num[1]~input_o\ & \bin2dec_0|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num[7]~input_o\,
	datab => \num[9]~input_o\,
	datac => \num[1]~input_o\,
	datad => \bin2dec_0|Equal1~0_combout\,
	combout => \bin2dec_0|Equal6~0_combout\);

-- Location: LCCOMB_X20_Y26_N12
\bin2dec_0|WideNor0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin2dec_0|WideNor0~2_combout\ = (!\bin2dec_0|Equal2~1_combout\ & ((\num[8]~input_o\) # ((!\num[6]~input_o\) # (!\bin2dec_0|Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num[8]~input_o\,
	datab => \bin2dec_0|Equal2~1_combout\,
	datac => \bin2dec_0|Equal6~0_combout\,
	datad => \num[6]~input_o\,
	combout => \bin2dec_0|WideNor0~2_combout\);

-- Location: LCCOMB_X20_Y26_N24
\bin2dec_0|Equal5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin2dec_0|Equal5~0_combout\ = (!\num[1]~input_o\ & (!\num[9]~input_o\ & (!\num[2]~input_o\ & \bin2dec_0|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num[1]~input_o\,
	datab => \num[9]~input_o\,
	datac => \num[2]~input_o\,
	datad => \bin2dec_0|Equal1~1_combout\,
	combout => \bin2dec_0|Equal5~0_combout\);

-- Location: LCCOMB_X21_Y26_N6
\bin2dec_0|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin2dec_0|Equal0~0_combout\ = (!\num[3]~input_o\ & (!\num[5]~input_o\ & \bin2dec_0|Equal5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \num[3]~input_o\,
	datac => \num[5]~input_o\,
	datad => \bin2dec_0|Equal5~0_combout\,
	combout => \bin2dec_0|Equal0~0_combout\);

-- Location: LCCOMB_X20_Y26_N30
\bin2dec_0|WideNor0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin2dec_0|WideNor0~3_combout\ = ((\bin2dec_0|Equal0~0_combout\ & (\num[0]~input_o\ $ (\num[4]~input_o\)))) # (!\bin2dec_0|WideNor0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2dec_0|WideNor0~2_combout\,
	datab => \num[0]~input_o\,
	datac => \num[4]~input_o\,
	datad => \bin2dec_0|Equal0~0_combout\,
	combout => \bin2dec_0|WideNor0~3_combout\);

-- Location: LCCOMB_X20_Y26_N0
\bin2dec_0|Equal8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin2dec_0|Equal8~0_combout\ = (\num[8]~input_o\ & (!\num[6]~input_o\ & \bin2dec_0|Equal6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num[8]~input_o\,
	datab => \num[6]~input_o\,
	datac => \bin2dec_0|Equal6~0_combout\,
	combout => \bin2dec_0|Equal8~0_combout\);

-- Location: LCCOMB_X20_Y26_N22
\bin2dec_0|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin2dec_0|Equal1~2_combout\ = (\bin2dec_0|Equal1~0_combout\ & (!\num[9]~input_o\ & (\num[1]~input_o\ & \bin2dec_0|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2dec_0|Equal1~0_combout\,
	datab => \num[9]~input_o\,
	datac => \num[1]~input_o\,
	datad => \bin2dec_0|Equal1~1_combout\,
	combout => \bin2dec_0|Equal1~2_combout\);

-- Location: LCCOMB_X21_Y26_N26
\bin2dec_0|Equal5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin2dec_0|Equal5~1_combout\ = (\bin2dec_0|Equal3~0_combout\ & (!\num[3]~input_o\ & (\num[5]~input_o\ & \bin2dec_0|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2dec_0|Equal3~0_combout\,
	datab => \num[3]~input_o\,
	datac => \num[5]~input_o\,
	datad => \bin2dec_0|Equal5~0_combout\,
	combout => \bin2dec_0|Equal5~1_combout\);

-- Location: LCCOMB_X20_Y26_N20
\bin2dec_0|Equal7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin2dec_0|Equal7~0_combout\ = (!\num[8]~input_o\ & (!\num[6]~input_o\ & \num[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num[8]~input_o\,
	datac => \num[6]~input_o\,
	datad => \num[7]~input_o\,
	combout => \bin2dec_0|Equal7~0_combout\);

-- Location: LCCOMB_X20_Y26_N16
\bin2dec_0|Equal6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin2dec_0|Equal6~1_combout\ = (!\num[9]~input_o\ & (!\num[1]~input_o\ & \bin2dec_0|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \num[9]~input_o\,
	datac => \num[1]~input_o\,
	datad => \bin2dec_0|Equal1~0_combout\,
	combout => \bin2dec_0|Equal6~1_combout\);

-- Location: LCCOMB_X21_Y26_N28
\bin2dec_0|Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin2dec_0|Equal3~1_combout\ = (\bin2dec_0|Equal3~0_combout\ & (\num[3]~input_o\ & (!\num[5]~input_o\ & \bin2dec_0|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2dec_0|Equal3~0_combout\,
	datab => \num[3]~input_o\,
	datac => \num[5]~input_o\,
	datad => \bin2dec_0|Equal5~0_combout\,
	combout => \bin2dec_0|Equal3~1_combout\);

-- Location: LCCOMB_X21_Y26_N18
\bin2dec_0|WideNor0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin2dec_0|WideNor0~0_combout\ = (!\bin2dec_0|Equal3~1_combout\ & ((!\bin2dec_0|Equal6~1_combout\) # (!\bin2dec_0|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2dec_0|Equal7~0_combout\,
	datac => \bin2dec_0|Equal6~1_combout\,
	datad => \bin2dec_0|Equal3~1_combout\,
	combout => \bin2dec_0|WideNor0~0_combout\);

-- Location: LCCOMB_X21_Y26_N0
\bin2dec_0|WideNor0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin2dec_0|WideNor0~1_combout\ = (!\bin2dec_0|Equal9~0_combout\ & (!\bin2dec_0|Equal1~2_combout\ & (!\bin2dec_0|Equal5~1_combout\ & \bin2dec_0|WideNor0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2dec_0|Equal9~0_combout\,
	datab => \bin2dec_0|Equal1~2_combout\,
	datac => \bin2dec_0|Equal5~1_combout\,
	datad => \bin2dec_0|WideNor0~0_combout\,
	combout => \bin2dec_0|WideNor0~1_combout\);

-- Location: LCCOMB_X21_Y26_N10
\bin2dec_0|WideOr0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin2dec_0|WideOr0~combout\ = (\bin2dec_0|Equal9~0_combout\) # ((\bin2dec_0|Equal8~0_combout\) # ((!\bin2dec_0|WideNor0~3_combout\ & \bin2dec_0|WideNor0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2dec_0|Equal9~0_combout\,
	datab => \bin2dec_0|WideNor0~3_combout\,
	datac => \bin2dec_0|Equal8~0_combout\,
	datad => \bin2dec_0|WideNor0~1_combout\,
	combout => \bin2dec_0|WideOr0~combout\);

-- Location: LCCOMB_X21_Y26_N14
\bin2dec_0|WideNor0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin2dec_0|WideNor0~4_combout\ = (\bin2dec_0|WideNor0~3_combout\) # (!\bin2dec_0|WideNor0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2dec_0|WideNor0~3_combout\,
	datad => \bin2dec_0|WideNor0~1_combout\,
	combout => \bin2dec_0|WideNor0~4_combout\);

-- Location: LCCOMB_X21_Y26_N4
\bin2dec_0|WideOr2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin2dec_0|WideOr2~combout\ = (((!\bin2dec_0|Equal8~0_combout\ & !\bin2dec_0|WideNor0~4_combout\)) # (!\bin2dec_0|WideNor0~2_combout\)) # (!\bin2dec_0|WideNor0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2dec_0|Equal8~0_combout\,
	datab => \bin2dec_0|WideNor0~0_combout\,
	datac => \bin2dec_0|WideNor0~4_combout\,
	datad => \bin2dec_0|WideNor0~2_combout\,
	combout => \bin2dec_0|WideOr2~combout\);

-- Location: LCCOMB_X20_Y26_N2
\bin2dec_0|WideOr1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin2dec_0|WideOr1~7_combout\ = (\num[5]~input_o\ & (!\num[6]~input_o\ & (!\num[4]~input_o\ & !\num[7]~input_o\))) # (!\num[5]~input_o\ & ((\num[6]~input_o\ & (!\num[4]~input_o\ & !\num[7]~input_o\)) # (!\num[6]~input_o\ & (\num[4]~input_o\ $ 
-- (\num[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num[5]~input_o\,
	datab => \num[6]~input_o\,
	datac => \num[4]~input_o\,
	datad => \num[7]~input_o\,
	combout => \bin2dec_0|WideOr1~7_combout\);

-- Location: LCCOMB_X20_Y26_N6
\bin2dec_0|WideOr1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin2dec_0|WideOr1~3_combout\ = (!\num[3]~input_o\ & (!\num[0]~input_o\ & (!\num[1]~input_o\ & \bin2dec_0|WideOr1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num[3]~input_o\,
	datab => \num[0]~input_o\,
	datac => \num[1]~input_o\,
	datad => \bin2dec_0|WideOr1~7_combout\,
	combout => \bin2dec_0|WideOr1~3_combout\);

-- Location: LCCOMB_X20_Y26_N4
\bin2dec_0|WideOr1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin2dec_0|WideOr1~combout\ = (!\num[8]~input_o\ & (!\num[9]~input_o\ & (!\num[2]~input_o\ & \bin2dec_0|WideOr1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num[8]~input_o\,
	datab => \num[9]~input_o\,
	datac => \num[2]~input_o\,
	datad => \bin2dec_0|WideOr1~3_combout\,
	combout => \bin2dec_0|WideOr1~combout\);

-- Location: LCCOMB_X21_Y26_N12
\fnd_0|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fnd_0|WideOr0~0_combout\ = (\bin2dec_0|WideOr0~combout\ & ((\bin2dec_0|WideOr2~combout\) # ((\bin2dec_0|WideOr1~combout\ & !\bin2dec_0|WideNor0~1_combout\)))) # (!\bin2dec_0|WideOr0~combout\ & (!\bin2dec_0|WideOr2~combout\ & (\bin2dec_0|WideOr1~combout\ 
-- $ (!\bin2dec_0|WideNor0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2dec_0|WideOr0~combout\,
	datab => \bin2dec_0|WideOr2~combout\,
	datac => \bin2dec_0|WideOr1~combout\,
	datad => \bin2dec_0|WideNor0~1_combout\,
	combout => \fnd_0|WideOr0~0_combout\);

-- Location: LCCOMB_X21_Y26_N22
\fnd_0|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fnd_0|WideOr1~0_combout\ = (\bin2dec_0|WideOr2~combout\ & ((\bin2dec_0|WideOr0~combout\) # ((\bin2dec_0|WideOr1~combout\ & \bin2dec_0|WideNor0~1_combout\)))) # (!\bin2dec_0|WideOr2~combout\ & (((\bin2dec_0|WideOr1~combout\ & 
-- !\bin2dec_0|WideNor0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2dec_0|WideOr0~combout\,
	datab => \bin2dec_0|WideOr2~combout\,
	datac => \bin2dec_0|WideOr1~combout\,
	datad => \bin2dec_0|WideNor0~1_combout\,
	combout => \fnd_0|WideOr1~0_combout\);

-- Location: LCCOMB_X21_Y26_N24
\fnd_0|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fnd_0|WideOr2~0_combout\ = (\bin2dec_0|WideOr0~combout\ & ((\bin2dec_0|WideOr2~combout\) # ((\bin2dec_0|WideOr1~combout\ & !\bin2dec_0|WideNor0~1_combout\)))) # (!\bin2dec_0|WideOr0~combout\ & (\bin2dec_0|WideOr2~combout\ & (!\bin2dec_0|WideOr1~combout\ 
-- & \bin2dec_0|WideNor0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2dec_0|WideOr0~combout\,
	datab => \bin2dec_0|WideOr2~combout\,
	datac => \bin2dec_0|WideOr1~combout\,
	datad => \bin2dec_0|WideNor0~1_combout\,
	combout => \fnd_0|WideOr2~0_combout\);

-- Location: LCCOMB_X21_Y26_N2
\fnd_0|WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fnd_0|WideOr3~0_combout\ = (\bin2dec_0|WideOr0~combout\ & ((\bin2dec_0|WideOr2~combout\) # ((\bin2dec_0|WideOr1~combout\ & !\bin2dec_0|WideNor0~1_combout\)))) # (!\bin2dec_0|WideOr0~combout\ & ((\bin2dec_0|WideOr2~combout\ & (\bin2dec_0|WideOr1~combout\ 
-- & !\bin2dec_0|WideNor0~1_combout\)) # (!\bin2dec_0|WideOr2~combout\ & (\bin2dec_0|WideOr1~combout\ $ (!\bin2dec_0|WideNor0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2dec_0|WideOr0~combout\,
	datab => \bin2dec_0|WideOr2~combout\,
	datac => \bin2dec_0|WideOr1~combout\,
	datad => \bin2dec_0|WideNor0~1_combout\,
	combout => \fnd_0|WideOr3~0_combout\);

-- Location: LCCOMB_X21_Y26_N16
\fnd_0|WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fnd_0|WideOr4~0_combout\ = ((\bin2dec_0|WideOr0~combout\ & (\bin2dec_0|WideOr2~combout\)) # (!\bin2dec_0|WideOr0~combout\ & (!\bin2dec_0|WideOr2~combout\ & \bin2dec_0|WideOr1~combout\))) # (!\bin2dec_0|WideNor0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2dec_0|WideOr0~combout\,
	datab => \bin2dec_0|WideOr2~combout\,
	datac => \bin2dec_0|WideOr1~combout\,
	datad => \bin2dec_0|WideNor0~1_combout\,
	combout => \fnd_0|WideOr4~0_combout\);

-- Location: LCCOMB_X21_Y26_N30
\fnd_0|WideOr5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fnd_0|WideOr5~0_combout\ = (\bin2dec_0|WideOr2~combout\ & ((\bin2dec_0|WideOr0~combout\) # ((!\bin2dec_0|WideOr1~combout\)))) # (!\bin2dec_0|WideOr2~combout\ & (!\bin2dec_0|WideNor0~1_combout\ & (\bin2dec_0|WideOr0~combout\ $ 
-- (!\bin2dec_0|WideOr1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2dec_0|WideOr0~combout\,
	datab => \bin2dec_0|WideOr2~combout\,
	datac => \bin2dec_0|WideOr1~combout\,
	datad => \bin2dec_0|WideNor0~1_combout\,
	combout => \fnd_0|WideOr5~0_combout\);

-- Location: LCCOMB_X21_Y26_N8
\fnd_0|WideOr6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fnd_0|WideOr6~0_combout\ = (\bin2dec_0|WideOr0~combout\ & (!\bin2dec_0|WideOr2~combout\ & ((\bin2dec_0|WideNor0~1_combout\) # (!\bin2dec_0|WideOr1~combout\)))) # (!\bin2dec_0|WideOr0~combout\ & ((\bin2dec_0|WideOr2~combout\ & 
-- ((\bin2dec_0|WideNor0~1_combout\) # (!\bin2dec_0|WideOr1~combout\))) # (!\bin2dec_0|WideOr2~combout\ & (\bin2dec_0|WideOr1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2dec_0|WideOr0~combout\,
	datab => \bin2dec_0|WideOr2~combout\,
	datac => \bin2dec_0|WideOr1~combout\,
	datad => \bin2dec_0|WideNor0~1_combout\,
	combout => \fnd_0|WideOr6~0_combout\);

ww_out_led_1 <= \out_led_1~output_o\;

ww_out_led_2 <= \out_led_2~output_o\;

ww_fnd_on_0(0) <= \fnd_on_0[0]~output_o\;

ww_fnd_on_0(1) <= \fnd_on_0[1]~output_o\;

ww_fnd_on_0(2) <= \fnd_on_0[2]~output_o\;

ww_fnd_on_0(3) <= \fnd_on_0[3]~output_o\;

ww_fnd_on_0(4) <= \fnd_on_0[4]~output_o\;

ww_fnd_on_0(5) <= \fnd_on_0[5]~output_o\;

ww_fnd_on_0(6) <= \fnd_on_0[6]~output_o\;
END structure;


