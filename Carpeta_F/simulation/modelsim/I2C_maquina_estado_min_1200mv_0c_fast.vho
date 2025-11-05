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

-- DATE "11/05/2025 20:25:43"

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

ENTITY 	bloque_maquina_estado IS
    PORT (
	SDA : INOUT std_logic;
	reset : IN std_logic;
	SCL : IN std_logic;
	Clock_registro : IN std_logic;
	CARGA_DIRECCION : IN std_logic;
	Reset_registro : IN std_logic;
	DATA : OUT std_logic_vector(7 DOWNTO 0);
	DIRE : OUT std_logic_vector(6 DOWNTO 0);
	NC2 : OUT std_logic;
	NC1 : OUT std_logic;
	NC0 : OUT std_logic;
	NC23 : OUT std_logic;
	NC22 : OUT std_logic;
	NC21 : OUT std_logic;
	NC20 : OUT std_logic
	);
END bloque_maquina_estado;

-- Design Ports Information
-- DATA[7]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[6]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[5]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[4]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[3]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[2]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[1]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[0]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIRE[6]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIRE[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIRE[4]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIRE[3]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIRE[2]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIRE[1]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIRE[0]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NC2	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NC1	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NC0	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NC23	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NC22	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NC21	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NC20	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDA	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SCL	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock_registro	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset_registro	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CARGA_DIRECCION	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF bloque_maquina_estado IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_SCL : std_logic;
SIGNAL ww_Clock_registro : std_logic;
SIGNAL ww_CARGA_DIRECCION : std_logic;
SIGNAL ww_Reset_registro : std_logic;
SIGNAL ww_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DIRE : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_NC2 : std_logic;
SIGNAL ww_NC1 : std_logic;
SIGNAL ww_NC0 : std_logic;
SIGNAL ww_NC23 : std_logic;
SIGNAL ww_NC22 : std_logic;
SIGNAL ww_NC21 : std_logic;
SIGNAL ww_NC20 : std_logic;
SIGNAL \Clock_registro~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SCL~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset_registro~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|fstate.R_W~q\ : std_logic;
SIGNAL \inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \inst|reg_fstate.R_W~0_combout\ : std_logic;
SIGNAL \inst|reg_fstate.R_W~1_combout\ : std_logic;
SIGNAL \Clock_registro~input_o\ : std_logic;
SIGNAL \Clock_registro~inputclkctrl_outclk\ : std_logic;
SIGNAL \SCL~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1~o\ : std_logic;
SIGNAL \DATA[7]~output_o\ : std_logic;
SIGNAL \DATA[6]~output_o\ : std_logic;
SIGNAL \DATA[5]~output_o\ : std_logic;
SIGNAL \DATA[4]~output_o\ : std_logic;
SIGNAL \DATA[3]~output_o\ : std_logic;
SIGNAL \DATA[2]~output_o\ : std_logic;
SIGNAL \DATA[1]~output_o\ : std_logic;
SIGNAL \DATA[0]~output_o\ : std_logic;
SIGNAL \DIRE[6]~output_o\ : std_logic;
SIGNAL \DIRE[5]~output_o\ : std_logic;
SIGNAL \DIRE[4]~output_o\ : std_logic;
SIGNAL \DIRE[3]~output_o\ : std_logic;
SIGNAL \DIRE[2]~output_o\ : std_logic;
SIGNAL \DIRE[1]~output_o\ : std_logic;
SIGNAL \DIRE[0]~output_o\ : std_logic;
SIGNAL \NC2~output_o\ : std_logic;
SIGNAL \NC1~output_o\ : std_logic;
SIGNAL \NC0~output_o\ : std_logic;
SIGNAL \NC23~output_o\ : std_logic;
SIGNAL \NC22~output_o\ : std_logic;
SIGNAL \NC21~output_o\ : std_logic;
SIGNAL \NC20~output_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \inst|reg_fstate.AC~0_combout\ : std_logic;
SIGNAL \inst|fstate.AC~q\ : std_logic;
SIGNAL \inst|ack~0_combout\ : std_logic;
SIGNAL \SCL~input_o\ : std_logic;
SIGNAL \inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst12|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst12|LPM_COUNTER_component|auto_generated|cout_actual~combout\ : std_logic;
SIGNAL \inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita3~0_combout\ : std_logic;
SIGNAL \inst|Selector2~0_combout\ : std_logic;
SIGNAL \inst|fstate.guardar_dato~q\ : std_logic;
SIGNAL \inst3~combout\ : std_logic;
SIGNAL \inst3~clkctrl_outclk\ : std_logic;
SIGNAL \inst1_ibuf~o\ : std_logic;
SIGNAL \inst14|LPM_SHIFTREG_component|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \inst14|LPM_SHIFTREG_component|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \inst14|LPM_SHIFTREG_component|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \inst14|LPM_SHIFTREG_component|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \inst14|LPM_SHIFTREG_component|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \inst14|LPM_SHIFTREG_component|dffs[6]~feeder_combout\ : std_logic;
SIGNAL \inst14|LPM_SHIFTREG_component|dffs[7]~feeder_combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~0_combout\ : std_logic;
SIGNAL \inst|reg_fstate.Oscioso~0_combout\ : std_logic;
SIGNAL \inst|reg_fstate.Oscioso~1_combout\ : std_logic;
SIGNAL \inst13|LPM_SHIFTREG_component|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \inst13|LPM_SHIFTREG_component|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \inst13|LPM_SHIFTREG_component|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \inst13|LPM_SHIFTREG_component|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \inst13|LPM_SHIFTREG_component|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \CARGA_DIRECCION~input_o\ : std_logic;
SIGNAL \DIRECCION|LPM_SHIFTREG_component|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \Reset_registro~input_o\ : std_logic;
SIGNAL \Reset_registro~inputclkctrl_outclk\ : std_logic;
SIGNAL \DIRECCION|LPM_SHIFTREG_component|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \DIRECCION|LPM_SHIFTREG_component|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \DIRECCION|LPM_SHIFTREG_component|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \DIRECCION|LPM_SHIFTREG_component|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \DIRECCION|LPM_SHIFTREG_component|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst8|LPM_COMPARE_component|auto_generated|data_wire[0]~0_combout\ : std_logic;
SIGNAL \inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2_combout\ : std_logic;
SIGNAL \inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~3_combout\ : std_logic;
SIGNAL \inst|reg_fstate.Oscioso~2_combout\ : std_logic;
SIGNAL \inst|fstate.Oscioso~q\ : std_logic;
SIGNAL \inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst|fstate.Guardar_dir~q\ : std_logic;
SIGNAL \inst2~combout\ : std_logic;
SIGNAL \inst2~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst13|LPM_SHIFTREG_component|dffs\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst14|LPM_SHIFTREG_component|dffs\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DIRECCION|LPM_SHIFTREG_component|dffs\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Reset_registro~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_reset <= reset;
ww_SCL <= SCL;
ww_Clock_registro <= Clock_registro;
ww_CARGA_DIRECCION <= CARGA_DIRECCION;
ww_Reset_registro <= Reset_registro;
DATA <= ww_DATA;
DIRE <= ww_DIRE;
NC2 <= ww_NC2;
NC1 <= ww_NC1;
NC0 <= ww_NC0;
NC23 <= ww_NC23;
NC22 <= ww_NC22;
NC21 <= ww_NC21;
NC20 <= ww_NC20;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clock_registro~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock_registro~input_o\);

\inst3~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3~combout\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\inst2~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2~combout\);

\SCL~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SCL~input_o\);

\Reset_registro~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reset_registro~input_o\);
\ALT_INV_Reset_registro~inputclkctrl_outclk\ <= NOT \Reset_registro~inputclkctrl_outclk\;
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: FF_X58_Y1_N23
\inst|fstate.R_W\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \inst|reg_fstate.R_W~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.R_W~q\);

-- Location: LCCOMB_X59_Y1_N26
\inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\ = (\DIRECCION|LPM_SHIFTREG_component|dffs\(5) & ((\inst13|LPM_SHIFTREG_component|dffs\(2) $ (\DIRECCION|LPM_SHIFTREG_component|dffs\(2))) # 
-- (!\inst13|LPM_SHIFTREG_component|dffs\(5)))) # (!\DIRECCION|LPM_SHIFTREG_component|dffs\(5) & ((\inst13|LPM_SHIFTREG_component|dffs\(5)) # (\inst13|LPM_SHIFTREG_component|dffs\(2) $ (\DIRECCION|LPM_SHIFTREG_component|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIRECCION|LPM_SHIFTREG_component|dffs\(5),
	datab => \inst13|LPM_SHIFTREG_component|dffs\(2),
	datac => \inst13|LPM_SHIFTREG_component|dffs\(5),
	datad => \DIRECCION|LPM_SHIFTREG_component|dffs\(2),
	combout => \inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\);

-- Location: LCCOMB_X58_Y1_N10
\inst|reg_fstate.R_W~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.R_W~0_combout\ = (!\reset~input_o\ & (\inst|fstate.Guardar_dir~q\ & (\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~0_combout\ & !\inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \inst|fstate.Guardar_dir~q\,
	datac => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~0_combout\,
	datad => \inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2_combout\,
	combout => \inst|reg_fstate.R_W~0_combout\);

-- Location: LCCOMB_X58_Y1_N22
\inst|reg_fstate.R_W~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.R_W~1_combout\ = (!\inst8|LPM_COMPARE_component|auto_generated|data_wire[0]~0_combout\ & (!\inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\ & 
-- (!\inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\ & \inst|reg_fstate.R_W~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|LPM_COMPARE_component|auto_generated|data_wire[0]~0_combout\,
	datab => \inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\,
	datac => \inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\,
	datad => \inst|reg_fstate.R_W~0_combout\,
	combout => \inst|reg_fstate.R_W~1_combout\);

-- Location: IOIBUF_X0_Y36_N1
\Clock_registro~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock_registro,
	o => \Clock_registro~input_o\);

-- Location: CLKCTRL_G4
\Clock_registro~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock_registro~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock_registro~inputclkctrl_outclk\);

-- Location: CLKCTRL_G2
\SCL~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SCL~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SCL~inputclkctrl_outclk\);

-- Location: IOOBUF_X54_Y0_N23
inst1 : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	oe => \inst|ack~0_combout\,
	devoe => ww_devoe,
	o => \inst1~o\);

-- Location: IOOBUF_X0_Y29_N23
\DATA[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|LPM_SHIFTREG_component|dffs\(7),
	devoe => ww_devoe,
	o => \DATA[7]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\DATA[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|LPM_SHIFTREG_component|dffs\(6),
	devoe => ww_devoe,
	o => \DATA[6]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\DATA[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|LPM_SHIFTREG_component|dffs\(5),
	devoe => ww_devoe,
	o => \DATA[5]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\DATA[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|LPM_SHIFTREG_component|dffs\(4),
	devoe => ww_devoe,
	o => \DATA[4]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\DATA[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|LPM_SHIFTREG_component|dffs\(3),
	devoe => ww_devoe,
	o => \DATA[3]~output_o\);

-- Location: IOOBUF_X0_Y29_N16
\DATA[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|LPM_SHIFTREG_component|dffs\(2),
	devoe => ww_devoe,
	o => \DATA[2]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\DATA[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|LPM_SHIFTREG_component|dffs\(1),
	devoe => ww_devoe,
	o => \DATA[1]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\DATA[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|LPM_SHIFTREG_component|dffs\(0),
	devoe => ww_devoe,
	o => \DATA[0]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\DIRE[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|LPM_SHIFTREG_component|dffs\(6),
	devoe => ww_devoe,
	o => \DIRE[6]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\DIRE[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|LPM_SHIFTREG_component|dffs\(5),
	devoe => ww_devoe,
	o => \DIRE[5]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\DIRE[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|LPM_SHIFTREG_component|dffs\(4),
	devoe => ww_devoe,
	o => \DIRE[4]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\DIRE[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|LPM_SHIFTREG_component|dffs\(3),
	devoe => ww_devoe,
	o => \DIRE[3]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\DIRE[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|LPM_SHIFTREG_component|dffs\(2),
	devoe => ww_devoe,
	o => \DIRE[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\DIRE[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|LPM_SHIFTREG_component|dffs\(1),
	devoe => ww_devoe,
	o => \DIRE[1]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\DIRE[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|LPM_SHIFTREG_component|dffs\(0),
	devoe => ww_devoe,
	o => \DIRE[0]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\NC2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	devoe => ww_devoe,
	o => \NC2~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\NC1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	devoe => ww_devoe,
	o => \NC1~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\NC0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	devoe => ww_devoe,
	o => \NC0~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\NC23~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	devoe => ww_devoe,
	o => \NC23~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\NC22~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	devoe => ww_devoe,
	o => \NC22~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\NC21~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	devoe => ww_devoe,
	o => \NC21~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\NC20~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	devoe => ww_devoe,
	o => \NC20~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X58_Y1_N12
\inst|reg_fstate.AC~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.AC~0_combout\ = (\inst|fstate.R_W~q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.R_W~q\,
	datac => \reset~input_o\,
	combout => \inst|reg_fstate.AC~0_combout\);

-- Location: FF_X58_Y1_N13
\inst|fstate.AC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \inst|reg_fstate.AC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.AC~q\);

-- Location: LCCOMB_X58_Y1_N24
\inst|ack~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|ack~0_combout\ = (\inst|fstate.AC~q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|fstate.AC~q\,
	datac => \reset~input_o\,
	combout => \inst|ack~0_combout\);

-- Location: IOIBUF_X0_Y36_N8
\SCL~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SCL,
	o => \SCL~input_o\);

-- Location: LCCOMB_X57_Y1_N16
\inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X57_Y1_N8
\~GND\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: CLKCTRL_G1
\reset~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: LCCOMB_X57_Y1_N22
\inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (!\inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X57_Y1_N23
\inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~clkctrl_outclk\,
	d => \inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \inst12|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X57_Y1_N28
\inst12|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ = (!\inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & 
-- (!\inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & \inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	combout => \inst12|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X57_Y1_N14
\inst12|LPM_COUNTER_component|auto_generated|cout_actual\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LPM_COUNTER_component|auto_generated|cout_actual~combout\ = (\inst12|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\) # (\inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\,
	datad => \inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita3~0_combout\,
	combout => \inst12|LPM_COUNTER_component|auto_generated|cout_actual~combout\);

-- Location: FF_X57_Y1_N17
\inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~clkctrl_outclk\,
	d => \inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \inst12|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X57_Y1_N18
\inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X57_Y1_N19
\inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~clkctrl_outclk\,
	d => \inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \inst12|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X57_Y1_N20
\inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X57_Y1_N21
\inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~clkctrl_outclk\,
	d => \inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \inst12|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X57_Y1_N24
\inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita3~0_combout\ = !\inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita3~0_combout\);

-- Location: LCCOMB_X58_Y1_N18
\inst|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector2~0_combout\ = (\inst|fstate.AC~q\) # ((!\inst12|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ & (\inst|fstate.guardar_dato~q\ & !\inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\,
	datab => \inst|fstate.AC~q\,
	datac => \inst|fstate.guardar_dato~q\,
	datad => \inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita3~0_combout\,
	combout => \inst|Selector2~0_combout\);

-- Location: FF_X58_Y1_N19
\inst|fstate.guardar_dato\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~input_o\,
	d => \inst|Selector2~0_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.guardar_dato~q\);

-- Location: LCCOMB_X58_Y1_N28
inst3 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3~combout\ = LCELL((!\reset~input_o\ & (\SCL~input_o\ & \inst|fstate.guardar_dato~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \SCL~input_o\,
	datad => \inst|fstate.guardar_dato~q\,
	combout => \inst3~combout\);

-- Location: CLKCTRL_G15
\inst3~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3~clkctrl_outclk\);

-- Location: IOIBUF_X54_Y0_N22
inst1_ibuf : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SDA,
	o => \inst1_ibuf~o\);

-- Location: FF_X1_Y27_N11
\inst14|LPM_SHIFTREG_component|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~clkctrl_outclk\,
	asdata => \inst1_ibuf~o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|LPM_SHIFTREG_component|dffs\(0));

-- Location: LCCOMB_X1_Y27_N0
\inst14|LPM_SHIFTREG_component|dffs[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|LPM_SHIFTREG_component|dffs[1]~feeder_combout\ = \inst14|LPM_SHIFTREG_component|dffs\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|LPM_SHIFTREG_component|dffs\(0),
	combout => \inst14|LPM_SHIFTREG_component|dffs[1]~feeder_combout\);

-- Location: FF_X1_Y27_N1
\inst14|LPM_SHIFTREG_component|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~clkctrl_outclk\,
	d => \inst14|LPM_SHIFTREG_component|dffs[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|LPM_SHIFTREG_component|dffs\(1));

-- Location: LCCOMB_X1_Y27_N18
\inst14|LPM_SHIFTREG_component|dffs[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|LPM_SHIFTREG_component|dffs[2]~feeder_combout\ = \inst14|LPM_SHIFTREG_component|dffs\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|LPM_SHIFTREG_component|dffs\(1),
	combout => \inst14|LPM_SHIFTREG_component|dffs[2]~feeder_combout\);

-- Location: FF_X1_Y27_N19
\inst14|LPM_SHIFTREG_component|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~clkctrl_outclk\,
	d => \inst14|LPM_SHIFTREG_component|dffs[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|LPM_SHIFTREG_component|dffs\(2));

-- Location: LCCOMB_X1_Y27_N28
\inst14|LPM_SHIFTREG_component|dffs[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|LPM_SHIFTREG_component|dffs[3]~feeder_combout\ = \inst14|LPM_SHIFTREG_component|dffs\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|LPM_SHIFTREG_component|dffs\(2),
	combout => \inst14|LPM_SHIFTREG_component|dffs[3]~feeder_combout\);

-- Location: FF_X1_Y27_N29
\inst14|LPM_SHIFTREG_component|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~clkctrl_outclk\,
	d => \inst14|LPM_SHIFTREG_component|dffs[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|LPM_SHIFTREG_component|dffs\(3));

-- Location: LCCOMB_X1_Y27_N6
\inst14|LPM_SHIFTREG_component|dffs[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|LPM_SHIFTREG_component|dffs[4]~feeder_combout\ = \inst14|LPM_SHIFTREG_component|dffs\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|LPM_SHIFTREG_component|dffs\(3),
	combout => \inst14|LPM_SHIFTREG_component|dffs[4]~feeder_combout\);

-- Location: FF_X1_Y27_N7
\inst14|LPM_SHIFTREG_component|dffs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~clkctrl_outclk\,
	d => \inst14|LPM_SHIFTREG_component|dffs[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|LPM_SHIFTREG_component|dffs\(4));

-- Location: LCCOMB_X1_Y27_N16
\inst14|LPM_SHIFTREG_component|dffs[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|LPM_SHIFTREG_component|dffs[5]~feeder_combout\ = \inst14|LPM_SHIFTREG_component|dffs\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|LPM_SHIFTREG_component|dffs\(4),
	combout => \inst14|LPM_SHIFTREG_component|dffs[5]~feeder_combout\);

-- Location: FF_X1_Y27_N17
\inst14|LPM_SHIFTREG_component|dffs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~clkctrl_outclk\,
	d => \inst14|LPM_SHIFTREG_component|dffs[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|LPM_SHIFTREG_component|dffs\(5));

-- Location: LCCOMB_X1_Y27_N2
\inst14|LPM_SHIFTREG_component|dffs[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|LPM_SHIFTREG_component|dffs[6]~feeder_combout\ = \inst14|LPM_SHIFTREG_component|dffs\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|LPM_SHIFTREG_component|dffs\(5),
	combout => \inst14|LPM_SHIFTREG_component|dffs[6]~feeder_combout\);

-- Location: FF_X1_Y27_N3
\inst14|LPM_SHIFTREG_component|dffs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~clkctrl_outclk\,
	d => \inst14|LPM_SHIFTREG_component|dffs[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|LPM_SHIFTREG_component|dffs\(6));

-- Location: LCCOMB_X1_Y27_N12
\inst14|LPM_SHIFTREG_component|dffs[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|LPM_SHIFTREG_component|dffs[7]~feeder_combout\ = \inst14|LPM_SHIFTREG_component|dffs\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|LPM_SHIFTREG_component|dffs\(6),
	combout => \inst14|LPM_SHIFTREG_component|dffs[7]~feeder_combout\);

-- Location: FF_X1_Y27_N13
\inst14|LPM_SHIFTREG_component|dffs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~clkctrl_outclk\,
	d => \inst14|LPM_SHIFTREG_component|dffs[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|LPM_SHIFTREG_component|dffs\(7));

-- Location: LCCOMB_X57_Y1_N0
\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: FF_X57_Y1_N1
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~clkctrl_outclk\,
	d => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X57_Y1_N2
\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X57_Y1_N3
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~clkctrl_outclk\,
	d => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X57_Y1_N4
\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X57_Y1_N5
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~clkctrl_outclk\,
	d => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X57_Y1_N6
\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~0_combout\ = \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~0_combout\);

-- Location: LCCOMB_X57_Y2_N30
\inst|reg_fstate.Oscioso~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.Oscioso~0_combout\ = (\reset~input_o\) # ((\inst1_ibuf~o\ & !\inst|fstate.Oscioso~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \inst1_ibuf~o\,
	datad => \inst|fstate.Oscioso~q\,
	combout => \inst|reg_fstate.Oscioso~0_combout\);

-- Location: LCCOMB_X58_Y1_N26
\inst|reg_fstate.Oscioso~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.Oscioso~1_combout\ = (\inst|reg_fstate.Oscioso~0_combout\) # ((\inst|fstate.guardar_dato~q\ & ((\inst12|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\) # 
-- (\inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.guardar_dato~q\,
	datab => \inst12|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\,
	datac => \inst|reg_fstate.Oscioso~0_combout\,
	datad => \inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita3~0_combout\,
	combout => \inst|reg_fstate.Oscioso~1_combout\);

-- Location: LCCOMB_X59_Y1_N14
\inst13|LPM_SHIFTREG_component|dffs[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|LPM_SHIFTREG_component|dffs[0]~feeder_combout\ = \inst1_ibuf~o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1_ibuf~o\,
	combout => \inst13|LPM_SHIFTREG_component|dffs[0]~feeder_combout\);

-- Location: FF_X59_Y1_N15
\inst13|LPM_SHIFTREG_component|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~clkctrl_outclk\,
	d => \inst13|LPM_SHIFTREG_component|dffs[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|LPM_SHIFTREG_component|dffs\(0));

-- Location: LCCOMB_X59_Y1_N10
\inst13|LPM_SHIFTREG_component|dffs[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|LPM_SHIFTREG_component|dffs[1]~feeder_combout\ = \inst13|LPM_SHIFTREG_component|dffs\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|LPM_SHIFTREG_component|dffs\(0),
	combout => \inst13|LPM_SHIFTREG_component|dffs[1]~feeder_combout\);

-- Location: FF_X59_Y1_N11
\inst13|LPM_SHIFTREG_component|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~clkctrl_outclk\,
	d => \inst13|LPM_SHIFTREG_component|dffs[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|LPM_SHIFTREG_component|dffs\(1));

-- Location: LCCOMB_X59_Y1_N20
\inst13|LPM_SHIFTREG_component|dffs[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|LPM_SHIFTREG_component|dffs[2]~feeder_combout\ = \inst13|LPM_SHIFTREG_component|dffs\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|LPM_SHIFTREG_component|dffs\(1),
	combout => \inst13|LPM_SHIFTREG_component|dffs[2]~feeder_combout\);

-- Location: FF_X59_Y1_N21
\inst13|LPM_SHIFTREG_component|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~clkctrl_outclk\,
	d => \inst13|LPM_SHIFTREG_component|dffs[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|LPM_SHIFTREG_component|dffs\(2));

-- Location: LCCOMB_X59_Y1_N24
\inst13|LPM_SHIFTREG_component|dffs[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|LPM_SHIFTREG_component|dffs[3]~feeder_combout\ = \inst13|LPM_SHIFTREG_component|dffs\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|LPM_SHIFTREG_component|dffs\(2),
	combout => \inst13|LPM_SHIFTREG_component|dffs[3]~feeder_combout\);

-- Location: FF_X59_Y1_N25
\inst13|LPM_SHIFTREG_component|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~clkctrl_outclk\,
	d => \inst13|LPM_SHIFTREG_component|dffs[3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|LPM_SHIFTREG_component|dffs\(3));

-- Location: LCCOMB_X59_Y1_N0
\inst13|LPM_SHIFTREG_component|dffs[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|LPM_SHIFTREG_component|dffs[4]~feeder_combout\ = \inst13|LPM_SHIFTREG_component|dffs\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|LPM_SHIFTREG_component|dffs\(3),
	combout => \inst13|LPM_SHIFTREG_component|dffs[4]~feeder_combout\);

-- Location: FF_X59_Y1_N1
\inst13|LPM_SHIFTREG_component|dffs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~clkctrl_outclk\,
	d => \inst13|LPM_SHIFTREG_component|dffs[4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|LPM_SHIFTREG_component|dffs\(4));

-- Location: IOIBUF_X60_Y0_N1
\CARGA_DIRECCION~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CARGA_DIRECCION,
	o => \CARGA_DIRECCION~input_o\);

-- Location: LCCOMB_X59_Y1_N2
\DIRECCION|LPM_SHIFTREG_component|dffs[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIRECCION|LPM_SHIFTREG_component|dffs[0]~feeder_combout\ = \CARGA_DIRECCION~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CARGA_DIRECCION~input_o\,
	combout => \DIRECCION|LPM_SHIFTREG_component|dffs[0]~feeder_combout\);

-- Location: IOIBUF_X58_Y0_N15
\Reset_registro~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset_registro,
	o => \Reset_registro~input_o\);

-- Location: CLKCTRL_G19
\Reset_registro~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset_registro~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset_registro~inputclkctrl_outclk\);

-- Location: FF_X59_Y1_N3
\DIRECCION|LPM_SHIFTREG_component|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_registro~inputclkctrl_outclk\,
	d => \DIRECCION|LPM_SHIFTREG_component|dffs[0]~feeder_combout\,
	clrn => \ALT_INV_Reset_registro~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIRECCION|LPM_SHIFTREG_component|dffs\(0));

-- Location: LCCOMB_X59_Y1_N18
\DIRECCION|LPM_SHIFTREG_component|dffs[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIRECCION|LPM_SHIFTREG_component|dffs[1]~feeder_combout\ = \DIRECCION|LPM_SHIFTREG_component|dffs\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIRECCION|LPM_SHIFTREG_component|dffs\(0),
	combout => \DIRECCION|LPM_SHIFTREG_component|dffs[1]~feeder_combout\);

-- Location: FF_X59_Y1_N19
\DIRECCION|LPM_SHIFTREG_component|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_registro~inputclkctrl_outclk\,
	d => \DIRECCION|LPM_SHIFTREG_component|dffs[1]~feeder_combout\,
	clrn => \ALT_INV_Reset_registro~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIRECCION|LPM_SHIFTREG_component|dffs\(1));

-- Location: LCCOMB_X59_Y1_N12
\DIRECCION|LPM_SHIFTREG_component|dffs[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIRECCION|LPM_SHIFTREG_component|dffs[2]~feeder_combout\ = \DIRECCION|LPM_SHIFTREG_component|dffs\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIRECCION|LPM_SHIFTREG_component|dffs\(1),
	combout => \DIRECCION|LPM_SHIFTREG_component|dffs[2]~feeder_combout\);

-- Location: FF_X59_Y1_N13
\DIRECCION|LPM_SHIFTREG_component|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_registro~inputclkctrl_outclk\,
	d => \DIRECCION|LPM_SHIFTREG_component|dffs[2]~feeder_combout\,
	clrn => \ALT_INV_Reset_registro~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIRECCION|LPM_SHIFTREG_component|dffs\(2));

-- Location: LCCOMB_X59_Y1_N28
\DIRECCION|LPM_SHIFTREG_component|dffs[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIRECCION|LPM_SHIFTREG_component|dffs[3]~feeder_combout\ = \DIRECCION|LPM_SHIFTREG_component|dffs\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIRECCION|LPM_SHIFTREG_component|dffs\(2),
	combout => \DIRECCION|LPM_SHIFTREG_component|dffs[3]~feeder_combout\);

-- Location: FF_X59_Y1_N29
\DIRECCION|LPM_SHIFTREG_component|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_registro~inputclkctrl_outclk\,
	d => \DIRECCION|LPM_SHIFTREG_component|dffs[3]~feeder_combout\,
	clrn => \ALT_INV_Reset_registro~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIRECCION|LPM_SHIFTREG_component|dffs\(3));

-- Location: LCCOMB_X59_Y1_N16
\DIRECCION|LPM_SHIFTREG_component|dffs[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIRECCION|LPM_SHIFTREG_component|dffs[4]~feeder_combout\ = \DIRECCION|LPM_SHIFTREG_component|dffs\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIRECCION|LPM_SHIFTREG_component|dffs\(3),
	combout => \DIRECCION|LPM_SHIFTREG_component|dffs[4]~feeder_combout\);

-- Location: FF_X59_Y1_N17
\DIRECCION|LPM_SHIFTREG_component|dffs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_registro~inputclkctrl_outclk\,
	d => \DIRECCION|LPM_SHIFTREG_component|dffs[4]~feeder_combout\,
	clrn => \ALT_INV_Reset_registro~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIRECCION|LPM_SHIFTREG_component|dffs\(4));

-- Location: LCCOMB_X59_Y1_N30
\DIRECCION|LPM_SHIFTREG_component|dffs[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIRECCION|LPM_SHIFTREG_component|dffs[5]~feeder_combout\ = \DIRECCION|LPM_SHIFTREG_component|dffs\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIRECCION|LPM_SHIFTREG_component|dffs\(4),
	combout => \DIRECCION|LPM_SHIFTREG_component|dffs[5]~feeder_combout\);

-- Location: FF_X59_Y1_N31
\DIRECCION|LPM_SHIFTREG_component|dffs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_registro~inputclkctrl_outclk\,
	d => \DIRECCION|LPM_SHIFTREG_component|dffs[5]~feeder_combout\,
	clrn => \ALT_INV_Reset_registro~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIRECCION|LPM_SHIFTREG_component|dffs\(5));

-- Location: FF_X59_Y1_N5
\DIRECCION|LPM_SHIFTREG_component|dffs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_registro~inputclkctrl_outclk\,
	asdata => \DIRECCION|LPM_SHIFTREG_component|dffs\(5),
	clrn => \ALT_INV_Reset_registro~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIRECCION|LPM_SHIFTREG_component|dffs\(6));

-- Location: LCCOMB_X59_Y1_N4
\inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\ = (\inst13|LPM_SHIFTREG_component|dffs\(6) & ((\inst13|LPM_SHIFTREG_component|dffs\(4) $ (\DIRECCION|LPM_SHIFTREG_component|dffs\(4))) # 
-- (!\DIRECCION|LPM_SHIFTREG_component|dffs\(6)))) # (!\inst13|LPM_SHIFTREG_component|dffs\(6) & ((\DIRECCION|LPM_SHIFTREG_component|dffs\(6)) # (\inst13|LPM_SHIFTREG_component|dffs\(4) $ (\DIRECCION|LPM_SHIFTREG_component|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|LPM_SHIFTREG_component|dffs\(6),
	datab => \inst13|LPM_SHIFTREG_component|dffs\(4),
	datac => \DIRECCION|LPM_SHIFTREG_component|dffs\(6),
	datad => \DIRECCION|LPM_SHIFTREG_component|dffs\(4),
	combout => \inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X59_Y1_N8
\inst8|LPM_COMPARE_component|auto_generated|data_wire[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|LPM_COMPARE_component|auto_generated|data_wire[0]~0_combout\ = \inst13|LPM_SHIFTREG_component|dffs\(1) $ (\DIRECCION|LPM_SHIFTREG_component|dffs\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|LPM_SHIFTREG_component|dffs\(1),
	datad => \DIRECCION|LPM_SHIFTREG_component|dffs\(1),
	combout => \inst8|LPM_COMPARE_component|auto_generated|data_wire[0]~0_combout\);

-- Location: LCCOMB_X59_Y1_N6
\inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2_combout\ = (\inst13|LPM_SHIFTREG_component|dffs\(3) & ((\inst13|LPM_SHIFTREG_component|dffs\(0) $ (\DIRECCION|LPM_SHIFTREG_component|dffs\(0))) # 
-- (!\DIRECCION|LPM_SHIFTREG_component|dffs\(3)))) # (!\inst13|LPM_SHIFTREG_component|dffs\(3) & ((\DIRECCION|LPM_SHIFTREG_component|dffs\(3)) # (\inst13|LPM_SHIFTREG_component|dffs\(0) $ (\DIRECCION|LPM_SHIFTREG_component|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|LPM_SHIFTREG_component|dffs\(3),
	datab => \inst13|LPM_SHIFTREG_component|dffs\(0),
	datac => \DIRECCION|LPM_SHIFTREG_component|dffs\(0),
	datad => \DIRECCION|LPM_SHIFTREG_component|dffs\(3),
	combout => \inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2_combout\);

-- Location: LCCOMB_X59_Y1_N22
\inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~3_combout\ = (\inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\) # ((\inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\) # 
-- ((\inst8|LPM_COMPARE_component|auto_generated|data_wire[0]~0_combout\) # (\inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\,
	datab => \inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\,
	datac => \inst8|LPM_COMPARE_component|auto_generated|data_wire[0]~0_combout\,
	datad => \inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2_combout\,
	combout => \inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~3_combout\);

-- Location: LCCOMB_X58_Y1_N0
\inst|reg_fstate.Oscioso~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.Oscioso~2_combout\ = (!\inst|reg_fstate.Oscioso~1_combout\ & (((!\inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~3_combout\) # (!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~0_combout\)) # 
-- (!\inst|fstate.Guardar_dir~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.Guardar_dir~q\,
	datab => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~0_combout\,
	datac => \inst|reg_fstate.Oscioso~1_combout\,
	datad => \inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~3_combout\,
	combout => \inst|reg_fstate.Oscioso~2_combout\);

-- Location: FF_X58_Y1_N1
\inst|fstate.Oscioso\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \inst|reg_fstate.Oscioso~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.Oscioso~q\);

-- Location: LCCOMB_X57_Y2_N22
\inst|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector1~0_combout\ = (\inst1_ibuf~o\ & (((\inst|fstate.Guardar_dir~q\ & !\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~0_combout\)))) # (!\inst1_ibuf~o\ & (((\inst|fstate.Guardar_dir~q\ & 
-- !\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~0_combout\)) # (!\inst|fstate.Oscioso~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1_ibuf~o\,
	datab => \inst|fstate.Oscioso~q\,
	datac => \inst|fstate.Guardar_dir~q\,
	datad => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~0_combout\,
	combout => \inst|Selector1~0_combout\);

-- Location: FF_X57_Y2_N23
\inst|fstate.Guardar_dir\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~input_o\,
	d => \inst|Selector1~0_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.Guardar_dir~q\);

-- Location: LCCOMB_X57_Y2_N28
inst2 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2~combout\ = LCELL((!\reset~input_o\ & (\inst|fstate.Guardar_dir~q\ & \SCL~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \inst|fstate.Guardar_dir~q\,
	datad => \SCL~input_o\,
	combout => \inst2~combout\);

-- Location: CLKCTRL_G16
\inst2~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2~clkctrl_outclk\);

-- Location: FF_X59_Y1_N27
\inst13|LPM_SHIFTREG_component|dffs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~clkctrl_outclk\,
	asdata => \inst13|LPM_SHIFTREG_component|dffs\(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|LPM_SHIFTREG_component|dffs\(5));

-- Location: FF_X59_Y1_N9
\inst13|LPM_SHIFTREG_component|dffs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~clkctrl_outclk\,
	asdata => \inst13|LPM_SHIFTREG_component|dffs\(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|LPM_SHIFTREG_component|dffs\(6));

ww_DATA(7) <= \DATA[7]~output_o\;

ww_DATA(6) <= \DATA[6]~output_o\;

ww_DATA(5) <= \DATA[5]~output_o\;

ww_DATA(4) <= \DATA[4]~output_o\;

ww_DATA(3) <= \DATA[3]~output_o\;

ww_DATA(2) <= \DATA[2]~output_o\;

ww_DATA(1) <= \DATA[1]~output_o\;

ww_DATA(0) <= \DATA[0]~output_o\;

ww_DIRE(6) <= \DIRE[6]~output_o\;

ww_DIRE(5) <= \DIRE[5]~output_o\;

ww_DIRE(4) <= \DIRE[4]~output_o\;

ww_DIRE(3) <= \DIRE[3]~output_o\;

ww_DIRE(2) <= \DIRE[2]~output_o\;

ww_DIRE(1) <= \DIRE[1]~output_o\;

ww_DIRE(0) <= \DIRE[0]~output_o\;

ww_NC2 <= \NC2~output_o\;

ww_NC1 <= \NC1~output_o\;

ww_NC0 <= \NC0~output_o\;

ww_NC23 <= \NC23~output_o\;

ww_NC22 <= \NC22~output_o\;

ww_NC21 <= \NC21~output_o\;

ww_NC20 <= \NC20~output_o\;

SDA <= \inst1~o\;
END structure;


