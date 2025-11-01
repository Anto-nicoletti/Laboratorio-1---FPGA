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

-- DATE "10/31/2025 17:33:41"

-- 
-- Device: Altera EP3C120F780C7 Package FBGA780
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

ENTITY 	Multiplicador_con_signo_Block IS
    PORT (
	P0 : OUT std_logic;
	CLK : IN std_logic;
	B0 : IN std_logic;
	A0 : IN std_logic;
	P1 : OUT std_logic;
	B1 : IN std_logic;
	A1 : IN std_logic;
	P2 : OUT std_logic;
	P3 : OUT std_logic;
	NC : OUT std_logic
	);
END Multiplicador_con_signo_Block;

-- Design Ports Information
-- P0	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P1	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P2	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P3	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NC	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Multiplicador_con_signo_Block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_P0 : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_P1 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_P2 : std_logic;
SIGNAL ww_P3 : std_logic;
SIGNAL ww_NC : std_logic;
SIGNAL \P0~output_o\ : std_logic;
SIGNAL \P1~output_o\ : std_logic;
SIGNAL \P2~output_o\ : std_logic;
SIGNAL \P3~output_o\ : std_logic;
SIGNAL \NC~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \A0~input_o\ : std_logic;
SIGNAL \inst12~feeder_combout\ : std_logic;
SIGNAL \inst12~q\ : std_logic;
SIGNAL \B0~input_o\ : std_logic;
SIGNAL \inst11~feeder_combout\ : std_logic;
SIGNAL \inst11~q\ : std_logic;
SIGNAL \10~combout\ : std_logic;
SIGNAL \inst6~q\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \inst13~feeder_combout\ : std_logic;
SIGNAL \inst13~q\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \inst10~feeder_combout\ : std_logic;
SIGNAL \inst10~q\ : std_logic;
SIGNAL \13|S~combout\ : std_logic;
SIGNAL \inst9~q\ : std_logic;
SIGNAL \inst14|S~0_combout\ : std_logic;
SIGNAL \inst8~q\ : std_logic;
SIGNAL \inst15|S~0_combout\ : std_logic;
SIGNAL \inst7~q\ : std_logic;
SIGNAL \inst15|Cout~0_combout\ : std_logic;

BEGIN

P0 <= ww_P0;
ww_CLK <= CLK;
ww_B0 <= B0;
ww_A0 <= A0;
P1 <= ww_P1;
ww_B1 <= B1;
ww_A1 <= A1;
P2 <= ww_P2;
P3 <= ww_P3;
NC <= ww_NC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X83_Y0_N16
\P0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6~q\,
	devoe => ww_devoe,
	o => \P0~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\P1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9~q\,
	devoe => ww_devoe,
	o => \P1~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\P2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8~q\,
	devoe => ww_devoe,
	o => \P2~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\P3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7~q\,
	devoe => ww_devoe,
	o => \P3~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\NC~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|Cout~0_combout\,
	devoe => ww_devoe,
	o => \NC~output_o\);

-- Location: IOIBUF_X79_Y0_N15
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: IOIBUF_X56_Y0_N22
\A0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0,
	o => \A0~input_o\);

-- Location: LCCOMB_X80_Y1_N8
\inst12~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12~feeder_combout\ = \A0~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A0~input_o\,
	combout => \inst12~feeder_combout\);

-- Location: FF_X80_Y1_N9
inst12 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst12~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12~q\);

-- Location: IOIBUF_X81_Y0_N22
\B0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0,
	o => \B0~input_o\);

-- Location: LCCOMB_X80_Y1_N2
\inst11~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11~feeder_combout\ = \B0~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B0~input_o\,
	combout => \inst11~feeder_combout\);

-- Location: FF_X80_Y1_N3
inst11 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst11~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11~q\);

-- Location: LCCOMB_X80_Y1_N24
\10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \10~combout\ = (\inst12~q\ & \inst11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12~q\,
	datad => \inst11~q\,
	combout => \10~combout\);

-- Location: FF_X80_Y1_N25
inst6 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6~q\);

-- Location: IOIBUF_X94_Y0_N8
\B1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

-- Location: LCCOMB_X80_Y1_N20
\inst13~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13~feeder_combout\ = \B1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B1~input_o\,
	combout => \inst13~feeder_combout\);

-- Location: FF_X80_Y1_N21
inst13 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst13~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13~q\);

-- Location: IOIBUF_X85_Y0_N8
\A1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: LCCOMB_X80_Y1_N4
\inst10~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10~feeder_combout\ = \A1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A1~input_o\,
	combout => \inst10~feeder_combout\);

-- Location: FF_X80_Y1_N5
inst10 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst10~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10~q\);

-- Location: LCCOMB_X80_Y1_N22
\13|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \13|S~combout\ = (\inst11~q\ & (\inst10~q\ $ (((\inst13~q\ & \inst12~q\))))) # (!\inst11~q\ & (\inst13~q\ & (\inst12~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11~q\,
	datab => \inst13~q\,
	datac => \inst12~q\,
	datad => \inst10~q\,
	combout => \13|S~combout\);

-- Location: FF_X80_Y1_N23
inst9 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \13|S~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9~q\);

-- Location: LCCOMB_X80_Y1_N28
\inst14|S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|S~0_combout\ = (\inst10~q\ & ((\inst11~q\ & ((!\inst13~q\))) # (!\inst11~q\ & (!\inst12~q\ & \inst13~q\)))) # (!\inst10~q\ & (((\inst12~q\ & \inst13~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11~q\,
	datab => \inst12~q\,
	datac => \inst10~q\,
	datad => \inst13~q\,
	combout => \inst14|S~0_combout\);

-- Location: FF_X80_Y1_N29
inst8 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst14|S~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8~q\);

-- Location: LCCOMB_X80_Y1_N6
\inst15|S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|S~0_combout\ = (\inst10~q\ & (\inst11~q\ & ((!\inst13~q\)))) # (!\inst10~q\ & (((\inst12~q\ & \inst13~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11~q\,
	datab => \inst12~q\,
	datac => \inst10~q\,
	datad => \inst13~q\,
	combout => \inst15|S~0_combout\);

-- Location: FF_X80_Y1_N7
inst7 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst15|S~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7~q\);

-- Location: LCCOMB_X80_Y1_N30
\inst15|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|Cout~0_combout\ = (\inst11~q\ & (\inst13~q\ & \inst10~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11~q\,
	datac => \inst13~q\,
	datad => \inst10~q\,
	combout => \inst15|Cout~0_combout\);

ww_P0 <= \P0~output_o\;

ww_P1 <= \P1~output_o\;

ww_P2 <= \P2~output_o\;

ww_P3 <= \P3~output_o\;

ww_NC <= \NC~output_o\;
END structure;


