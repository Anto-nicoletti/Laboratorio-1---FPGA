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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "10/29/2025 14:50:37"

-- 
-- Device: Altera EP3C120F780C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	opcion_multi IS
    PORT (
	A_unsigned : IN std_logic_vector(1 DOWNTO 0);
	B_unsigned : IN std_logic_vector(1 DOWNTO 0);
	P_unsigned : OUT std_logic_vector(3 DOWNTO 0);
	A_signed : IN std_logic_vector(1 DOWNTO 0);
	B_signed : IN std_logic_vector(1 DOWNTO 0);
	P_signed : OUT std_logic_vector(3 DOWNTO 0)
	);
END opcion_multi;

-- Design Ports Information
-- P_unsigned[0]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P_unsigned[1]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P_unsigned[2]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P_unsigned[3]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P_signed[0]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P_signed[1]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P_signed[2]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P_signed[3]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_unsigned[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_unsigned[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_unsigned[1]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_unsigned[1]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_signed[0]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_signed[0]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_signed[1]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_signed[1]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF opcion_multi IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A_unsigned : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_B_unsigned : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_P_unsigned : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_A_signed : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_B_signed : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_P_signed : std_logic_vector(3 DOWNTO 0);
SIGNAL \P_unsigned[0]~output_o\ : std_logic;
SIGNAL \P_unsigned[1]~output_o\ : std_logic;
SIGNAL \P_unsigned[2]~output_o\ : std_logic;
SIGNAL \P_unsigned[3]~output_o\ : std_logic;
SIGNAL \P_signed[0]~output_o\ : std_logic;
SIGNAL \P_signed[1]~output_o\ : std_logic;
SIGNAL \P_signed[2]~output_o\ : std_logic;
SIGNAL \P_signed[3]~output_o\ : std_logic;
SIGNAL \A_unsigned[0]~input_o\ : std_logic;
SIGNAL \B_unsigned[0]~input_o\ : std_logic;
SIGNAL \Mult0|mult_core|result[0]~0_combout\ : std_logic;
SIGNAL \B_unsigned[1]~input_o\ : std_logic;
SIGNAL \A_unsigned[1]~input_o\ : std_logic;
SIGNAL \Mult0|mult_core|result[1]~1_combout\ : std_logic;
SIGNAL \Mult0|mult_core|result[2]~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|result[3]~3_combout\ : std_logic;
SIGNAL \B_signed[0]~input_o\ : std_logic;
SIGNAL \A_signed[0]~input_o\ : std_logic;
SIGNAL \Mult1|mult_core|result[0]~0_combout\ : std_logic;
SIGNAL \B_signed[1]~input_o\ : std_logic;
SIGNAL \A_signed[1]~input_o\ : std_logic;
SIGNAL \Mult1|mult_core|result[1]~1_combout\ : std_logic;
SIGNAL \Mult1|mult_core|result[2]~2_combout\ : std_logic;
SIGNAL \Mult1|mult_core|result[3]~3_combout\ : std_logic;

BEGIN

ww_A_unsigned <= A_unsigned;
ww_B_unsigned <= B_unsigned;
P_unsigned <= ww_P_unsigned;
ww_A_signed <= A_signed;
ww_B_signed <= B_signed;
P_signed <= ww_P_signed;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X27_Y73_N16
\P_unsigned[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult0|mult_core|result[0]~0_combout\,
	devoe => ww_devoe,
	o => \P_unsigned[0]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\P_unsigned[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult0|mult_core|result[1]~1_combout\,
	devoe => ww_devoe,
	o => \P_unsigned[1]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\P_unsigned[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult0|mult_core|result[2]~2_combout\,
	devoe => ww_devoe,
	o => \P_unsigned[2]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\P_unsigned[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult0|mult_core|result[3]~3_combout\,
	devoe => ww_devoe,
	o => \P_unsigned[3]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\P_signed[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1|mult_core|result[0]~0_combout\,
	devoe => ww_devoe,
	o => \P_signed[0]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\P_signed[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1|mult_core|result[1]~1_combout\,
	devoe => ww_devoe,
	o => \P_signed[1]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\P_signed[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1|mult_core|result[2]~2_combout\,
	devoe => ww_devoe,
	o => \P_signed[2]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\P_signed[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1|mult_core|result[3]~3_combout\,
	devoe => ww_devoe,
	o => \P_signed[3]~output_o\);

-- Location: IOIBUF_X29_Y73_N1
\A_unsigned[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_unsigned(0),
	o => \A_unsigned[0]~input_o\);

-- Location: IOIBUF_X31_Y73_N1
\B_unsigned[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_unsigned(0),
	o => \B_unsigned[0]~input_o\);

-- Location: LCCOMB_X28_Y72_N0
\Mult0|mult_core|result[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|result[0]~0_combout\ = (\A_unsigned[0]~input_o\ & \B_unsigned[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A_unsigned[0]~input_o\,
	datad => \B_unsigned[0]~input_o\,
	combout => \Mult0|mult_core|result[0]~0_combout\);

-- Location: IOIBUF_X29_Y73_N8
\B_unsigned[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_unsigned(1),
	o => \B_unsigned[1]~input_o\);

-- Location: IOIBUF_X25_Y73_N22
\A_unsigned[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_unsigned(1),
	o => \A_unsigned[1]~input_o\);

-- Location: LCCOMB_X28_Y72_N2
\Mult0|mult_core|result[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|result[1]~1_combout\ = (\A_unsigned[0]~input_o\ & (\B_unsigned[1]~input_o\ $ (((\A_unsigned[1]~input_o\ & \B_unsigned[0]~input_o\))))) # (!\A_unsigned[0]~input_o\ & (((\A_unsigned[1]~input_o\ & \B_unsigned[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_unsigned[0]~input_o\,
	datab => \B_unsigned[1]~input_o\,
	datac => \A_unsigned[1]~input_o\,
	datad => \B_unsigned[0]~input_o\,
	combout => \Mult0|mult_core|result[1]~1_combout\);

-- Location: LCCOMB_X28_Y72_N4
\Mult0|mult_core|result[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|result[2]~2_combout\ = (\B_unsigned[1]~input_o\ & (\A_unsigned[1]~input_o\ & ((!\B_unsigned[0]~input_o\) # (!\A_unsigned[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_unsigned[0]~input_o\,
	datab => \B_unsigned[1]~input_o\,
	datac => \A_unsigned[1]~input_o\,
	datad => \B_unsigned[0]~input_o\,
	combout => \Mult0|mult_core|result[2]~2_combout\);

-- Location: LCCOMB_X28_Y72_N6
\Mult0|mult_core|result[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|result[3]~3_combout\ = (\A_unsigned[0]~input_o\ & (\B_unsigned[1]~input_o\ & (\A_unsigned[1]~input_o\ & \B_unsigned[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_unsigned[0]~input_o\,
	datab => \B_unsigned[1]~input_o\,
	datac => \A_unsigned[1]~input_o\,
	datad => \B_unsigned[0]~input_o\,
	combout => \Mult0|mult_core|result[3]~3_combout\);

-- Location: IOIBUF_X1_Y0_N1
\B_signed[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_signed(0),
	o => \B_signed[0]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\A_signed[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_signed(0),
	o => \A_signed[0]~input_o\);

-- Location: LCCOMB_X1_Y4_N0
\Mult1|mult_core|result[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|result[0]~0_combout\ = (\B_signed[0]~input_o\ & \A_signed[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_signed[0]~input_o\,
	datad => \A_signed[0]~input_o\,
	combout => \Mult1|mult_core|result[0]~0_combout\);

-- Location: IOIBUF_X0_Y4_N1
\B_signed[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_signed(1),
	o => \B_signed[1]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\A_signed[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_signed(1),
	o => \A_signed[1]~input_o\);

-- Location: LCCOMB_X1_Y4_N2
\Mult1|mult_core|result[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|result[1]~1_combout\ = (\B_signed[1]~input_o\ & (\A_signed[0]~input_o\ $ (((\B_signed[0]~input_o\ & \A_signed[1]~input_o\))))) # (!\B_signed[1]~input_o\ & (\B_signed[0]~input_o\ & (\A_signed[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_signed[1]~input_o\,
	datab => \B_signed[0]~input_o\,
	datac => \A_signed[1]~input_o\,
	datad => \A_signed[0]~input_o\,
	combout => \Mult1|mult_core|result[1]~1_combout\);

-- Location: LCCOMB_X1_Y4_N20
\Mult1|mult_core|result[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|result[2]~2_combout\ = (\B_signed[1]~input_o\ & ((\A_signed[1]~input_o\ & (!\B_signed[0]~input_o\ & !\A_signed[0]~input_o\)) # (!\A_signed[1]~input_o\ & ((\A_signed[0]~input_o\))))) # (!\B_signed[1]~input_o\ & (\B_signed[0]~input_o\ & 
-- (\A_signed[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_signed[1]~input_o\,
	datab => \B_signed[0]~input_o\,
	datac => \A_signed[1]~input_o\,
	datad => \A_signed[0]~input_o\,
	combout => \Mult1|mult_core|result[2]~2_combout\);

-- Location: LCCOMB_X1_Y4_N22
\Mult1|mult_core|result[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|result[3]~3_combout\ = (\B_signed[1]~input_o\ & (((!\A_signed[1]~input_o\ & \A_signed[0]~input_o\)))) # (!\B_signed[1]~input_o\ & (\B_signed[0]~input_o\ & (\A_signed[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_signed[1]~input_o\,
	datab => \B_signed[0]~input_o\,
	datac => \A_signed[1]~input_o\,
	datad => \A_signed[0]~input_o\,
	combout => \Mult1|mult_core|result[3]~3_combout\);

ww_P_unsigned(0) <= \P_unsigned[0]~output_o\;

ww_P_unsigned(1) <= \P_unsigned[1]~output_o\;

ww_P_unsigned(2) <= \P_unsigned[2]~output_o\;

ww_P_unsigned(3) <= \P_unsigned[3]~output_o\;

ww_P_signed(0) <= \P_signed[0]~output_o\;

ww_P_signed(1) <= \P_signed[1]~output_o\;

ww_P_signed(2) <= \P_signed[2]~output_o\;

ww_P_signed(3) <= \P_signed[3]~output_o\;
END structure;


