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

-- DATE "12/21/2022 18:43:46"

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

ENTITY 	final_359 IS
    PORT (
	clk : IN std_logic;
	n_rst : IN std_logic;
	button_2_1 : IN std_logic_vector(1 DOWNTO 0);
	button_star : IN std_logic;
	lock : OUT std_logic;
	\open\ : OUT std_logic;
	led_red : OUT std_logic;
	led_green : OUT std_logic
	);
END final_359;

-- Design Ports Information
-- clk	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_rst	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button_2_1[0]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button_2_1[1]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button_star	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lock	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- open	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_red	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_green	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF final_359 IS
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
SIGNAL ww_button_2_1 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_button_star : std_logic;
SIGNAL ww_lock : std_logic;
SIGNAL \ww_open\ : std_logic;
SIGNAL ww_led_red : std_logic;
SIGNAL ww_led_green : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \n_rst~input_o\ : std_logic;
SIGNAL \button_2_1[0]~input_o\ : std_logic;
SIGNAL \button_2_1[1]~input_o\ : std_logic;
SIGNAL \button_star~input_o\ : std_logic;
SIGNAL \lock~output_o\ : std_logic;
SIGNAL \open~output_o\ : std_logic;
SIGNAL \led_red~output_o\ : std_logic;
SIGNAL \led_green~output_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_n_rst <= n_rst;
ww_button_2_1 <= button_2_1;
ww_button_star <= button_star;
lock <= ww_lock;
\open\ <= \ww_open\;
led_red <= ww_led_red;
led_green <= ww_led_green;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y2_N16
\lock~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \lock~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\open~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \open~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\led_red~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led_red~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\led_green~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_green~output_o\);

-- Location: IOIBUF_X41_Y19_N22
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X32_Y29_N29
\n_rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_rst,
	o => \n_rst~input_o\);

-- Location: IOIBUF_X41_Y2_N1
\button_2_1[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button_2_1(0),
	o => \button_2_1[0]~input_o\);

-- Location: IOIBUF_X1_Y29_N22
\button_2_1[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button_2_1(1),
	o => \button_2_1[1]~input_o\);

-- Location: IOIBUF_X41_Y25_N8
\button_star~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button_star,
	o => \button_star~input_o\);

ww_lock <= \lock~output_o\;

\ww_open\ <= \open~output_o\;

ww_led_red <= \led_red~output_o\;

ww_led_green <= \led_green~output_o\;
END structure;


