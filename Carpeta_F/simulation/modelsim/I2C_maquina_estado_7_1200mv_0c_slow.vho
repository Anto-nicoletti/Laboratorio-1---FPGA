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

-- DATE "11/01/2025 21:38:08"

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

ENTITY 	I2C IS
    PORT (
	SCL : IN std_logic;
	SDA : IN std_logic;
	clock : IN std_logic;
	Reset_registro : IN std_logic;
	Clock_registro : IN std_logic;
	CARGA_DIRECCION : IN std_logic;
	reset : IN std_logic;
	ACK : OUT std_logic;
	DATA : OUT std_logic_vector(7 DOWNTO 0);
	NC : OUT std_logic_vector(2 DOWNTO 0);
	NC_2 : OUT std_logic_vector(2 DOWNTO 0)
	);
END I2C;

-- Design Ports Information
-- ACK	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[0]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[3]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[4]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[5]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[6]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[7]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NC[0]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NC[1]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NC[2]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NC_2[0]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NC_2[1]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NC_2[2]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDA	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SCL	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock_registro	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset_registro	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CARGA_DIRECCION	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF I2C IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SCL : std_logic;
SIGNAL ww_SDA : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_Reset_registro : std_logic;
SIGNAL ww_Clock_registro : std_logic;
SIGNAL ww_CARGA_DIRECCION : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_ACK : std_logic;
SIGNAL ww_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_NC : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_NC_2 : std_logic_vector(2 DOWNTO 0);
SIGNAL \Clock_registro~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SYNTHESIZED_WIRE_17~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SYNTHESIZED_WIRE_18~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset_registro~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita2~0_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \Clock_registro~input_o\ : std_logic;
SIGNAL \Clock_registro~inputclkctrl_outclk\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \ACK~output_o\ : std_logic;
SIGNAL \DATA[0]~output_o\ : std_logic;
SIGNAL \DATA[1]~output_o\ : std_logic;
SIGNAL \DATA[2]~output_o\ : std_logic;
SIGNAL \DATA[3]~output_o\ : std_logic;
SIGNAL \DATA[4]~output_o\ : std_logic;
SIGNAL \DATA[5]~output_o\ : std_logic;
SIGNAL \DATA[6]~output_o\ : std_logic;
SIGNAL \DATA[7]~output_o\ : std_logic;
SIGNAL \NC[0]~output_o\ : std_logic;
SIGNAL \NC[1]~output_o\ : std_logic;
SIGNAL \NC[2]~output_o\ : std_logic;
SIGNAL \NC_2[0]~output_o\ : std_logic;
SIGNAL \NC_2[1]~output_o\ : std_logic;
SIGNAL \NC_2[2]~output_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \SDA~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst13|LPM_SHIFTREG_component|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|LPM_SHIFTREG_component|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|LPM_SHIFTREG_component|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|LPM_SHIFTREG_component|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|LPM_SHIFTREG_component|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \CARGA_DIRECCION~input_o\ : std_logic;
SIGNAL \b2v_DIRECCION|LPM_SHIFTREG_component|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \Reset_registro~input_o\ : std_logic;
SIGNAL \Reset_registro~inputclkctrl_outclk\ : std_logic;
SIGNAL \b2v_DIRECCION|LPM_SHIFTREG_component|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \b2v_DIRECCION|LPM_SHIFTREG_component|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_DIRECCION|LPM_SHIFTREG_component|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \b2v_DIRECCION|LPM_SHIFTREG_component|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \b2v_DIRECCION|LPM_SHIFTREG_component|dffs[6]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \DFF_inst5~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|reg_fstate.R_W~2_combout\ : std_logic;
SIGNAL \DFF_inst5~q\ : std_logic;
SIGNAL \b2v_inst|Selector0~0_combout\ : std_logic;
SIGNAL \DFF_inst7~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|hab_dat~0_combout\ : std_logic;
SIGNAL \DFF_inst7~q\ : std_logic;
SIGNAL \b2v_inst|Selector2~0_combout\ : std_logic;
SIGNAL \b2v_inst|fstate.guardar_dato~q\ : std_logic;
SIGNAL \b2v_inst|reg_fstate.Oscioso~0_combout\ : std_logic;
SIGNAL \b2v_inst8|LPM_COMPARE_component|auto_generated|data_wire[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2_combout\ : std_logic;
SIGNAL \b2v_inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~3_combout\ : std_logic;
SIGNAL \b2v_inst|reg_fstate.Oscioso~1_combout\ : std_logic;
SIGNAL \b2v_inst|fstate.Oscioso~q\ : std_logic;
SIGNAL \b2v_inst|Selector1~0_combout\ : std_logic;
SIGNAL \b2v_inst|fstate.Guardar_dir~q\ : std_logic;
SIGNAL \b2v_inst|reg_fstate.R_W~0_combout\ : std_logic;
SIGNAL \b2v_inst|reg_fstate.R_W~1_combout\ : std_logic;
SIGNAL \b2v_inst|fstate.R_W~q\ : std_logic;
SIGNAL \b2v_inst|reg_fstate.AC~0_combout\ : std_logic;
SIGNAL \b2v_inst|fstate.AC~q\ : std_logic;
SIGNAL \b2v_inst|ack~0_combout\ : std_logic;
SIGNAL \SCL~input_o\ : std_logic;
SIGNAL \SYNTHESIZED_WIRE_18~combout\ : std_logic;
SIGNAL \SYNTHESIZED_WIRE_18~clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst14|LPM_SHIFTREG_component|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst14|LPM_SHIFTREG_component|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst14|LPM_SHIFTREG_component|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst14|LPM_SHIFTREG_component|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst14|LPM_SHIFTREG_component|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst14|LPM_SHIFTREG_component|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst14|LPM_SHIFTREG_component|dffs[6]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst14|LPM_SHIFTREG_component|dffs[7]~feeder_combout\ : std_logic;
SIGNAL \SYNTHESIZED_WIRE_17~combout\ : std_logic;
SIGNAL \SYNTHESIZED_WIRE_17~clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst11|LPM_COUNTER_component|auto_generated|trigger_mux_w[1]~1_combout\ : std_logic;
SIGNAL \b2v_inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst11|LPM_COUNTER_component|auto_generated|trigger_mux_w[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst11|LPM_COUNTER_component|auto_generated|cout_actual~combout\ : std_logic;
SIGNAL \b2v_inst11|LPM_COUNTER_component|auto_generated|trigger_mux_w[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \b2v_inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \b2v_inst13|LPM_SHIFTREG_component|dffs\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \b2v_inst14|LPM_SHIFTREG_component|dffs\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_DIRECCION|LPM_SHIFTREG_component|dffs\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_Reset_registro~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_hab_dat~0_combout\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_reg_fstate.R_W~2_combout\ : std_logic;

BEGIN

ww_SCL <= SCL;
ww_SDA <= SDA;
ww_clock <= clock;
ww_Reset_registro <= Reset_registro;
ww_Clock_registro <= Clock_registro;
ww_CARGA_DIRECCION <= CARGA_DIRECCION;
ww_reset <= reset;
ACK <= ww_ACK;
DATA <= ww_DATA;
NC <= ww_NC;
NC_2 <= ww_NC_2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clock_registro~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock_registro~input_o\);

\SYNTHESIZED_WIRE_17~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SYNTHESIZED_WIRE_17~combout\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\SYNTHESIZED_WIRE_18~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SYNTHESIZED_WIRE_18~combout\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\Reset_registro~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reset_registro~input_o\);
\ALT_INV_Reset_registro~inputclkctrl_outclk\ <= NOT \Reset_registro~inputclkctrl_outclk\;
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\b2v_inst|ALT_INV_hab_dat~0_combout\ <= NOT \b2v_inst|hab_dat~0_combout\;
\b2v_inst|ALT_INV_reg_fstate.R_W~2_combout\ <= NOT \b2v_inst|reg_fstate.R_W~2_combout\;

-- Location: LCCOMB_X1_Y34_N0
\b2v_inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\b2v_inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X1_Y34_N4
\b2v_inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\b2v_inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\b2v_inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\b2v_inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\b2v_inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\b2v_inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\b2v_inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X1_Y34_N6
\b2v_inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita2~0_combout\ = \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita2~0_combout\);

-- Location: IOIBUF_X0_Y36_N8
\clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

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

-- Location: IOOBUF_X0_Y33_N16
\ACK~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|ack~0_combout\,
	devoe => ww_devoe,
	o => \ACK~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\DATA[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst14|LPM_SHIFTREG_component|dffs\(0),
	devoe => ww_devoe,
	o => \DATA[0]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\DATA[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst14|LPM_SHIFTREG_component|dffs\(1),
	devoe => ww_devoe,
	o => \DATA[1]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\DATA[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst14|LPM_SHIFTREG_component|dffs\(2),
	devoe => ww_devoe,
	o => \DATA[2]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\DATA[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst14|LPM_SHIFTREG_component|dffs\(3),
	devoe => ww_devoe,
	o => \DATA[3]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\DATA[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst14|LPM_SHIFTREG_component|dffs\(4),
	devoe => ww_devoe,
	o => \DATA[4]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\DATA[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst14|LPM_SHIFTREG_component|dffs\(5),
	devoe => ww_devoe,
	o => \DATA[5]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\DATA[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst14|LPM_SHIFTREG_component|dffs\(6),
	devoe => ww_devoe,
	o => \DATA[6]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\DATA[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst14|LPM_SHIFTREG_component|dffs\(7),
	devoe => ww_devoe,
	o => \DATA[7]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\NC[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	devoe => ww_devoe,
	o => \NC[0]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\NC[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	devoe => ww_devoe,
	o => \NC[1]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\NC[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	devoe => ww_devoe,
	o => \NC[2]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\NC_2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	devoe => ww_devoe,
	o => \NC_2[0]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\NC_2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	devoe => ww_devoe,
	o => \NC_2[1]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\NC_2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	devoe => ww_devoe,
	o => \NC_2[2]~output_o\);

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

-- Location: IOIBUF_X0_Y42_N8
\SDA~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SDA,
	o => \SDA~input_o\);

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

-- Location: FF_X2_Y34_N15
\b2v_inst13|LPM_SHIFTREG_component|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYNTHESIZED_WIRE_17~clkctrl_outclk\,
	asdata => \SDA~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|LPM_SHIFTREG_component|dffs\(0));

-- Location: LCCOMB_X2_Y34_N16
\b2v_inst13|LPM_SHIFTREG_component|dffs[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst13|LPM_SHIFTREG_component|dffs[1]~feeder_combout\ = \b2v_inst13|LPM_SHIFTREG_component|dffs\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst13|LPM_SHIFTREG_component|dffs\(0),
	combout => \b2v_inst13|LPM_SHIFTREG_component|dffs[1]~feeder_combout\);

-- Location: FF_X2_Y34_N17
\b2v_inst13|LPM_SHIFTREG_component|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYNTHESIZED_WIRE_17~clkctrl_outclk\,
	d => \b2v_inst13|LPM_SHIFTREG_component|dffs[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|LPM_SHIFTREG_component|dffs\(1));

-- Location: LCCOMB_X2_Y34_N12
\b2v_inst13|LPM_SHIFTREG_component|dffs[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst13|LPM_SHIFTREG_component|dffs[2]~feeder_combout\ = \b2v_inst13|LPM_SHIFTREG_component|dffs\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst13|LPM_SHIFTREG_component|dffs\(1),
	combout => \b2v_inst13|LPM_SHIFTREG_component|dffs[2]~feeder_combout\);

-- Location: FF_X2_Y34_N13
\b2v_inst13|LPM_SHIFTREG_component|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYNTHESIZED_WIRE_17~clkctrl_outclk\,
	d => \b2v_inst13|LPM_SHIFTREG_component|dffs[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|LPM_SHIFTREG_component|dffs\(2));

-- Location: LCCOMB_X2_Y34_N6
\b2v_inst13|LPM_SHIFTREG_component|dffs[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst13|LPM_SHIFTREG_component|dffs[3]~feeder_combout\ = \b2v_inst13|LPM_SHIFTREG_component|dffs\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst13|LPM_SHIFTREG_component|dffs\(2),
	combout => \b2v_inst13|LPM_SHIFTREG_component|dffs[3]~feeder_combout\);

-- Location: FF_X2_Y34_N7
\b2v_inst13|LPM_SHIFTREG_component|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYNTHESIZED_WIRE_17~clkctrl_outclk\,
	d => \b2v_inst13|LPM_SHIFTREG_component|dffs[3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|LPM_SHIFTREG_component|dffs\(3));

-- Location: LCCOMB_X2_Y34_N10
\b2v_inst13|LPM_SHIFTREG_component|dffs[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst13|LPM_SHIFTREG_component|dffs[4]~feeder_combout\ = \b2v_inst13|LPM_SHIFTREG_component|dffs\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst13|LPM_SHIFTREG_component|dffs\(3),
	combout => \b2v_inst13|LPM_SHIFTREG_component|dffs[4]~feeder_combout\);

-- Location: FF_X2_Y34_N11
\b2v_inst13|LPM_SHIFTREG_component|dffs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYNTHESIZED_WIRE_17~clkctrl_outclk\,
	d => \b2v_inst13|LPM_SHIFTREG_component|dffs[4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|LPM_SHIFTREG_component|dffs\(4));

-- Location: LCCOMB_X2_Y34_N8
\b2v_inst13|LPM_SHIFTREG_component|dffs[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst13|LPM_SHIFTREG_component|dffs[5]~feeder_combout\ = \b2v_inst13|LPM_SHIFTREG_component|dffs\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst13|LPM_SHIFTREG_component|dffs\(4),
	combout => \b2v_inst13|LPM_SHIFTREG_component|dffs[5]~feeder_combout\);

-- Location: FF_X2_Y34_N9
\b2v_inst13|LPM_SHIFTREG_component|dffs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYNTHESIZED_WIRE_17~clkctrl_outclk\,
	d => \b2v_inst13|LPM_SHIFTREG_component|dffs[5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|LPM_SHIFTREG_component|dffs\(5));

-- Location: IOIBUF_X0_Y33_N22
\CARGA_DIRECCION~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CARGA_DIRECCION,
	o => \CARGA_DIRECCION~input_o\);

-- Location: LCCOMB_X2_Y34_N18
\b2v_DIRECCION|LPM_SHIFTREG_component|dffs[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_DIRECCION|LPM_SHIFTREG_component|dffs[0]~feeder_combout\ = \CARGA_DIRECCION~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CARGA_DIRECCION~input_o\,
	combout => \b2v_DIRECCION|LPM_SHIFTREG_component|dffs[0]~feeder_combout\);

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

-- Location: FF_X2_Y34_N19
\b2v_DIRECCION|LPM_SHIFTREG_component|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_registro~inputclkctrl_outclk\,
	d => \b2v_DIRECCION|LPM_SHIFTREG_component|dffs[0]~feeder_combout\,
	clrn => \ALT_INV_Reset_registro~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_DIRECCION|LPM_SHIFTREG_component|dffs\(0));

-- Location: LCCOMB_X2_Y34_N4
\b2v_DIRECCION|LPM_SHIFTREG_component|dffs[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_DIRECCION|LPM_SHIFTREG_component|dffs[1]~feeder_combout\ = \b2v_DIRECCION|LPM_SHIFTREG_component|dffs\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_DIRECCION|LPM_SHIFTREG_component|dffs\(0),
	combout => \b2v_DIRECCION|LPM_SHIFTREG_component|dffs[1]~feeder_combout\);

-- Location: FF_X2_Y34_N5
\b2v_DIRECCION|LPM_SHIFTREG_component|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_registro~inputclkctrl_outclk\,
	d => \b2v_DIRECCION|LPM_SHIFTREG_component|dffs[1]~feeder_combout\,
	clrn => \ALT_INV_Reset_registro~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_DIRECCION|LPM_SHIFTREG_component|dffs\(1));

-- Location: FF_X2_Y34_N25
\b2v_DIRECCION|LPM_SHIFTREG_component|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_registro~inputclkctrl_outclk\,
	asdata => \b2v_DIRECCION|LPM_SHIFTREG_component|dffs\(1),
	clrn => \ALT_INV_Reset_registro~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_DIRECCION|LPM_SHIFTREG_component|dffs\(2));

-- Location: LCCOMB_X2_Y34_N24
\b2v_inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\ = (\b2v_DIRECCION|LPM_SHIFTREG_component|dffs\(5) & ((\b2v_DIRECCION|LPM_SHIFTREG_component|dffs\(2) $ (\b2v_inst13|LPM_SHIFTREG_component|dffs\(2))) # 
-- (!\b2v_inst13|LPM_SHIFTREG_component|dffs\(5)))) # (!\b2v_DIRECCION|LPM_SHIFTREG_component|dffs\(5) & ((\b2v_inst13|LPM_SHIFTREG_component|dffs\(5)) # (\b2v_DIRECCION|LPM_SHIFTREG_component|dffs\(2) $ (\b2v_inst13|LPM_SHIFTREG_component|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_DIRECCION|LPM_SHIFTREG_component|dffs\(5),
	datab => \b2v_inst13|LPM_SHIFTREG_component|dffs\(5),
	datac => \b2v_DIRECCION|LPM_SHIFTREG_component|dffs\(2),
	datad => \b2v_inst13|LPM_SHIFTREG_component|dffs\(2),
	combout => \b2v_inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\);

-- Location: LCCOMB_X2_Y34_N30
\b2v_DIRECCION|LPM_SHIFTREG_component|dffs[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_DIRECCION|LPM_SHIFTREG_component|dffs[3]~feeder_combout\ = \b2v_DIRECCION|LPM_SHIFTREG_component|dffs\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_DIRECCION|LPM_SHIFTREG_component|dffs\(2),
	combout => \b2v_DIRECCION|LPM_SHIFTREG_component|dffs[3]~feeder_combout\);

-- Location: FF_X2_Y34_N31
\b2v_DIRECCION|LPM_SHIFTREG_component|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_registro~inputclkctrl_outclk\,
	d => \b2v_DIRECCION|LPM_SHIFTREG_component|dffs[3]~feeder_combout\,
	clrn => \ALT_INV_Reset_registro~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_DIRECCION|LPM_SHIFTREG_component|dffs\(3));

-- Location: LCCOMB_X2_Y34_N22
\b2v_DIRECCION|LPM_SHIFTREG_component|dffs[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_DIRECCION|LPM_SHIFTREG_component|dffs[4]~feeder_combout\ = \b2v_DIRECCION|LPM_SHIFTREG_component|dffs\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_DIRECCION|LPM_SHIFTREG_component|dffs\(3),
	combout => \b2v_DIRECCION|LPM_SHIFTREG_component|dffs[4]~feeder_combout\);

-- Location: FF_X2_Y34_N23
\b2v_DIRECCION|LPM_SHIFTREG_component|dffs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_registro~inputclkctrl_outclk\,
	d => \b2v_DIRECCION|LPM_SHIFTREG_component|dffs[4]~feeder_combout\,
	clrn => \ALT_INV_Reset_registro~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_DIRECCION|LPM_SHIFTREG_component|dffs\(4));

-- Location: LCCOMB_X2_Y34_N26
\b2v_DIRECCION|LPM_SHIFTREG_component|dffs[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_DIRECCION|LPM_SHIFTREG_component|dffs[5]~feeder_combout\ = \b2v_DIRECCION|LPM_SHIFTREG_component|dffs\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_DIRECCION|LPM_SHIFTREG_component|dffs\(4),
	combout => \b2v_DIRECCION|LPM_SHIFTREG_component|dffs[5]~feeder_combout\);

-- Location: FF_X2_Y34_N27
\b2v_DIRECCION|LPM_SHIFTREG_component|dffs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_registro~inputclkctrl_outclk\,
	d => \b2v_DIRECCION|LPM_SHIFTREG_component|dffs[5]~feeder_combout\,
	clrn => \ALT_INV_Reset_registro~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_DIRECCION|LPM_SHIFTREG_component|dffs\(5));

-- Location: LCCOMB_X2_Y34_N0
\b2v_DIRECCION|LPM_SHIFTREG_component|dffs[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_DIRECCION|LPM_SHIFTREG_component|dffs[6]~feeder_combout\ = \b2v_DIRECCION|LPM_SHIFTREG_component|dffs\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_DIRECCION|LPM_SHIFTREG_component|dffs\(5),
	combout => \b2v_DIRECCION|LPM_SHIFTREG_component|dffs[6]~feeder_combout\);

-- Location: FF_X2_Y34_N1
\b2v_DIRECCION|LPM_SHIFTREG_component|dffs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_registro~inputclkctrl_outclk\,
	d => \b2v_DIRECCION|LPM_SHIFTREG_component|dffs[6]~feeder_combout\,
	clrn => \ALT_INV_Reset_registro~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_DIRECCION|LPM_SHIFTREG_component|dffs\(6));

-- Location: FF_X2_Y34_N21
\b2v_inst13|LPM_SHIFTREG_component|dffs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYNTHESIZED_WIRE_17~clkctrl_outclk\,
	asdata => \b2v_inst13|LPM_SHIFTREG_component|dffs\(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|LPM_SHIFTREG_component|dffs\(6));

-- Location: LCCOMB_X2_Y34_N20
\b2v_inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\ = (\b2v_DIRECCION|LPM_SHIFTREG_component|dffs\(4) & ((\b2v_DIRECCION|LPM_SHIFTREG_component|dffs\(6) $ (\b2v_inst13|LPM_SHIFTREG_component|dffs\(6))) # 
-- (!\b2v_inst13|LPM_SHIFTREG_component|dffs\(4)))) # (!\b2v_DIRECCION|LPM_SHIFTREG_component|dffs\(4) & ((\b2v_inst13|LPM_SHIFTREG_component|dffs\(4)) # (\b2v_DIRECCION|LPM_SHIFTREG_component|dffs\(6) $ (\b2v_inst13|LPM_SHIFTREG_component|dffs\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_DIRECCION|LPM_SHIFTREG_component|dffs\(4),
	datab => \b2v_DIRECCION|LPM_SHIFTREG_component|dffs\(6),
	datac => \b2v_inst13|LPM_SHIFTREG_component|dffs\(6),
	datad => \b2v_inst13|LPM_SHIFTREG_component|dffs\(4),
	combout => \b2v_inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X3_Y34_N6
\DFF_inst5~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DFF_inst5~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \DFF_inst5~feeder_combout\);

-- Location: LCCOMB_X3_Y34_N22
\b2v_inst|reg_fstate.R_W~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|reg_fstate.R_W~2_combout\ = (\reset~input_o\) # (!\b2v_inst|fstate.Guardar_dir~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \b2v_inst|fstate.Guardar_dir~q\,
	combout => \b2v_inst|reg_fstate.R_W~2_combout\);

-- Location: FF_X3_Y34_N7
DFF_inst5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst11|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	d => \DFF_inst5~feeder_combout\,
	clrn => \b2v_inst|ALT_INV_reg_fstate.R_W~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF_inst5~q\);

-- Location: LCCOMB_X3_Y34_N0
\b2v_inst|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector0~0_combout\ = (\b2v_inst|fstate.Guardar_dir~q\ & \DFF_inst5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|fstate.Guardar_dir~q\,
	datac => \DFF_inst5~q\,
	combout => \b2v_inst|Selector0~0_combout\);

-- Location: LCCOMB_X5_Y34_N28
\DFF_inst7~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DFF_inst7~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \DFF_inst7~feeder_combout\);

-- Location: LCCOMB_X4_Y34_N6
\b2v_inst|hab_dat~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|hab_dat~0_combout\ = (\reset~input_o\) # (!\b2v_inst|fstate.guardar_dato~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \b2v_inst|fstate.guardar_dato~q\,
	combout => \b2v_inst|hab_dat~0_combout\);

-- Location: FF_X5_Y34_N29
DFF_inst7 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita2~0_combout\,
	d => \DFF_inst7~feeder_combout\,
	clrn => \b2v_inst|ALT_INV_hab_dat~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF_inst7~q\);

-- Location: LCCOMB_X4_Y34_N18
\b2v_inst|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector2~0_combout\ = (\b2v_inst|fstate.AC~q\) # ((\b2v_inst|fstate.guardar_dato~q\ & !\DFF_inst7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|fstate.AC~q\,
	datac => \b2v_inst|fstate.guardar_dato~q\,
	datad => \DFF_inst7~q\,
	combout => \b2v_inst|Selector2~0_combout\);

-- Location: FF_X4_Y34_N19
\b2v_inst|fstate.guardar_dato\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \b2v_inst|Selector2~0_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|fstate.guardar_dato~q\);

-- Location: LCCOMB_X3_Y34_N26
\b2v_inst|reg_fstate.Oscioso~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|reg_fstate.Oscioso~0_combout\ = (\DFF_inst7~q\ & ((\b2v_inst|fstate.guardar_dato~q\) # ((\SDA~input_o\ & !\b2v_inst|fstate.Oscioso~q\)))) # (!\DFF_inst7~q\ & (((\SDA~input_o\ & !\b2v_inst|fstate.Oscioso~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DFF_inst7~q\,
	datab => \b2v_inst|fstate.guardar_dato~q\,
	datac => \SDA~input_o\,
	datad => \b2v_inst|fstate.Oscioso~q\,
	combout => \b2v_inst|reg_fstate.Oscioso~0_combout\);

-- Location: LCCOMB_X2_Y34_N14
\b2v_inst8|LPM_COMPARE_component|auto_generated|data_wire[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|LPM_COMPARE_component|auto_generated|data_wire[0]~0_combout\ = \b2v_DIRECCION|LPM_SHIFTREG_component|dffs\(1) $ (\b2v_inst13|LPM_SHIFTREG_component|dffs\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_DIRECCION|LPM_SHIFTREG_component|dffs\(1),
	datad => \b2v_inst13|LPM_SHIFTREG_component|dffs\(1),
	combout => \b2v_inst8|LPM_COMPARE_component|auto_generated|data_wire[0]~0_combout\);

-- Location: LCCOMB_X2_Y34_N28
\b2v_inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2_combout\ = (\b2v_DIRECCION|LPM_SHIFTREG_component|dffs\(3) & ((\b2v_DIRECCION|LPM_SHIFTREG_component|dffs\(0) $ (\b2v_inst13|LPM_SHIFTREG_component|dffs\(0))) # 
-- (!\b2v_inst13|LPM_SHIFTREG_component|dffs\(3)))) # (!\b2v_DIRECCION|LPM_SHIFTREG_component|dffs\(3) & ((\b2v_inst13|LPM_SHIFTREG_component|dffs\(3)) # (\b2v_DIRECCION|LPM_SHIFTREG_component|dffs\(0) $ (\b2v_inst13|LPM_SHIFTREG_component|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_DIRECCION|LPM_SHIFTREG_component|dffs\(3),
	datab => \b2v_DIRECCION|LPM_SHIFTREG_component|dffs\(0),
	datac => \b2v_inst13|LPM_SHIFTREG_component|dffs\(0),
	datad => \b2v_inst13|LPM_SHIFTREG_component|dffs\(3),
	combout => \b2v_inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2_combout\);

-- Location: LCCOMB_X2_Y34_N2
\b2v_inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~3_combout\ = (\b2v_inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\) # ((\b2v_inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\) # 
-- ((\b2v_inst8|LPM_COMPARE_component|auto_generated|data_wire[0]~0_combout\) # (\b2v_inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\,
	datab => \b2v_inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\,
	datac => \b2v_inst8|LPM_COMPARE_component|auto_generated|data_wire[0]~0_combout\,
	datad => \b2v_inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2_combout\,
	combout => \b2v_inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~3_combout\);

-- Location: LCCOMB_X3_Y34_N12
\b2v_inst|reg_fstate.Oscioso~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|reg_fstate.Oscioso~1_combout\ = (!\reset~input_o\ & (!\b2v_inst|reg_fstate.Oscioso~0_combout\ & ((!\b2v_inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~3_combout\) # (!\b2v_inst|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \b2v_inst|Selector0~0_combout\,
	datac => \b2v_inst|reg_fstate.Oscioso~0_combout\,
	datad => \b2v_inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~3_combout\,
	combout => \b2v_inst|reg_fstate.Oscioso~1_combout\);

-- Location: FF_X3_Y34_N13
\b2v_inst|fstate.Oscioso\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst|reg_fstate.Oscioso~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|fstate.Oscioso~q\);

-- Location: LCCOMB_X4_Y34_N22
\b2v_inst|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector1~0_combout\ = (\DFF_inst5~q\ & (!\SDA~input_o\ & ((!\b2v_inst|fstate.Oscioso~q\)))) # (!\DFF_inst5~q\ & ((\b2v_inst|fstate.Guardar_dir~q\) # ((!\SDA~input_o\ & !\b2v_inst|fstate.Oscioso~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DFF_inst5~q\,
	datab => \SDA~input_o\,
	datac => \b2v_inst|fstate.Guardar_dir~q\,
	datad => \b2v_inst|fstate.Oscioso~q\,
	combout => \b2v_inst|Selector1~0_combout\);

-- Location: FF_X4_Y34_N23
\b2v_inst|fstate.Guardar_dir\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \b2v_inst|Selector1~0_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|fstate.Guardar_dir~q\);

-- Location: LCCOMB_X3_Y34_N28
\b2v_inst|reg_fstate.R_W~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|reg_fstate.R_W~0_combout\ = (!\reset~input_o\ & (\b2v_inst|fstate.Guardar_dir~q\ & (\DFF_inst5~q\ & !\b2v_inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \b2v_inst|fstate.Guardar_dir~q\,
	datac => \DFF_inst5~q\,
	datad => \b2v_inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2_combout\,
	combout => \b2v_inst|reg_fstate.R_W~0_combout\);

-- Location: LCCOMB_X3_Y34_N24
\b2v_inst|reg_fstate.R_W~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|reg_fstate.R_W~1_combout\ = (!\b2v_inst8|LPM_COMPARE_component|auto_generated|data_wire[0]~0_combout\ & (!\b2v_inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\ & 
-- (!\b2v_inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\ & \b2v_inst|reg_fstate.R_W~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|LPM_COMPARE_component|auto_generated|data_wire[0]~0_combout\,
	datab => \b2v_inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\,
	datac => \b2v_inst8|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\,
	datad => \b2v_inst|reg_fstate.R_W~0_combout\,
	combout => \b2v_inst|reg_fstate.R_W~1_combout\);

-- Location: FF_X3_Y34_N25
\b2v_inst|fstate.R_W\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst|reg_fstate.R_W~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|fstate.R_W~q\);

-- Location: LCCOMB_X4_Y34_N0
\b2v_inst|reg_fstate.AC~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|reg_fstate.AC~0_combout\ = (!\reset~input_o\ & \b2v_inst|fstate.R_W~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \b2v_inst|fstate.R_W~q\,
	combout => \b2v_inst|reg_fstate.AC~0_combout\);

-- Location: FF_X4_Y34_N1
\b2v_inst|fstate.AC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst|reg_fstate.AC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|fstate.AC~q\);

-- Location: LCCOMB_X4_Y34_N30
\b2v_inst|ack~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|ack~0_combout\ = (\b2v_inst|fstate.AC~q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|fstate.AC~q\,
	datac => \reset~input_o\,
	combout => \b2v_inst|ack~0_combout\);

-- Location: IOIBUF_X0_Y34_N8
\SCL~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SCL,
	o => \SCL~input_o\);

-- Location: LCCOMB_X1_Y34_N24
SYNTHESIZED_WIRE_18 : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNTHESIZED_WIRE_18~combout\ = LCELL((!\reset~input_o\ & (\b2v_inst|fstate.guardar_dato~q\ & \SCL~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \b2v_inst|fstate.guardar_dato~q\,
	datad => \SCL~input_o\,
	combout => \SYNTHESIZED_WIRE_18~combout\);

-- Location: CLKCTRL_G0
\SYNTHESIZED_WIRE_18~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SYNTHESIZED_WIRE_18~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SYNTHESIZED_WIRE_18~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y44_N28
\b2v_inst14|LPM_SHIFTREG_component|dffs[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst14|LPM_SHIFTREG_component|dffs[0]~feeder_combout\ = \SDA~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SDA~input_o\,
	combout => \b2v_inst14|LPM_SHIFTREG_component|dffs[0]~feeder_combout\);

-- Location: FF_X1_Y44_N29
\b2v_inst14|LPM_SHIFTREG_component|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYNTHESIZED_WIRE_18~clkctrl_outclk\,
	d => \b2v_inst14|LPM_SHIFTREG_component|dffs[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst14|LPM_SHIFTREG_component|dffs\(0));

-- Location: LCCOMB_X1_Y44_N10
\b2v_inst14|LPM_SHIFTREG_component|dffs[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst14|LPM_SHIFTREG_component|dffs[1]~feeder_combout\ = \b2v_inst14|LPM_SHIFTREG_component|dffs\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst14|LPM_SHIFTREG_component|dffs\(0),
	combout => \b2v_inst14|LPM_SHIFTREG_component|dffs[1]~feeder_combout\);

-- Location: FF_X1_Y44_N11
\b2v_inst14|LPM_SHIFTREG_component|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYNTHESIZED_WIRE_18~clkctrl_outclk\,
	d => \b2v_inst14|LPM_SHIFTREG_component|dffs[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst14|LPM_SHIFTREG_component|dffs\(1));

-- Location: LCCOMB_X1_Y44_N0
\b2v_inst14|LPM_SHIFTREG_component|dffs[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst14|LPM_SHIFTREG_component|dffs[2]~feeder_combout\ = \b2v_inst14|LPM_SHIFTREG_component|dffs\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst14|LPM_SHIFTREG_component|dffs\(1),
	combout => \b2v_inst14|LPM_SHIFTREG_component|dffs[2]~feeder_combout\);

-- Location: FF_X1_Y44_N1
\b2v_inst14|LPM_SHIFTREG_component|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYNTHESIZED_WIRE_18~clkctrl_outclk\,
	d => \b2v_inst14|LPM_SHIFTREG_component|dffs[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst14|LPM_SHIFTREG_component|dffs\(2));

-- Location: LCCOMB_X1_Y44_N6
\b2v_inst14|LPM_SHIFTREG_component|dffs[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst14|LPM_SHIFTREG_component|dffs[3]~feeder_combout\ = \b2v_inst14|LPM_SHIFTREG_component|dffs\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst14|LPM_SHIFTREG_component|dffs\(2),
	combout => \b2v_inst14|LPM_SHIFTREG_component|dffs[3]~feeder_combout\);

-- Location: FF_X1_Y44_N7
\b2v_inst14|LPM_SHIFTREG_component|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYNTHESIZED_WIRE_18~clkctrl_outclk\,
	d => \b2v_inst14|LPM_SHIFTREG_component|dffs[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst14|LPM_SHIFTREG_component|dffs\(3));

-- Location: LCCOMB_X1_Y44_N20
\b2v_inst14|LPM_SHIFTREG_component|dffs[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst14|LPM_SHIFTREG_component|dffs[4]~feeder_combout\ = \b2v_inst14|LPM_SHIFTREG_component|dffs\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst14|LPM_SHIFTREG_component|dffs\(3),
	combout => \b2v_inst14|LPM_SHIFTREG_component|dffs[4]~feeder_combout\);

-- Location: FF_X1_Y44_N21
\b2v_inst14|LPM_SHIFTREG_component|dffs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYNTHESIZED_WIRE_18~clkctrl_outclk\,
	d => \b2v_inst14|LPM_SHIFTREG_component|dffs[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst14|LPM_SHIFTREG_component|dffs\(4));

-- Location: LCCOMB_X1_Y44_N2
\b2v_inst14|LPM_SHIFTREG_component|dffs[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst14|LPM_SHIFTREG_component|dffs[5]~feeder_combout\ = \b2v_inst14|LPM_SHIFTREG_component|dffs\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst14|LPM_SHIFTREG_component|dffs\(4),
	combout => \b2v_inst14|LPM_SHIFTREG_component|dffs[5]~feeder_combout\);

-- Location: FF_X1_Y44_N3
\b2v_inst14|LPM_SHIFTREG_component|dffs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYNTHESIZED_WIRE_18~clkctrl_outclk\,
	d => \b2v_inst14|LPM_SHIFTREG_component|dffs[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst14|LPM_SHIFTREG_component|dffs\(5));

-- Location: LCCOMB_X1_Y44_N12
\b2v_inst14|LPM_SHIFTREG_component|dffs[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst14|LPM_SHIFTREG_component|dffs[6]~feeder_combout\ = \b2v_inst14|LPM_SHIFTREG_component|dffs\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst14|LPM_SHIFTREG_component|dffs\(5),
	combout => \b2v_inst14|LPM_SHIFTREG_component|dffs[6]~feeder_combout\);

-- Location: FF_X1_Y44_N13
\b2v_inst14|LPM_SHIFTREG_component|dffs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYNTHESIZED_WIRE_18~clkctrl_outclk\,
	d => \b2v_inst14|LPM_SHIFTREG_component|dffs[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst14|LPM_SHIFTREG_component|dffs\(6));

-- Location: LCCOMB_X1_Y44_N18
\b2v_inst14|LPM_SHIFTREG_component|dffs[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst14|LPM_SHIFTREG_component|dffs[7]~feeder_combout\ = \b2v_inst14|LPM_SHIFTREG_component|dffs\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst14|LPM_SHIFTREG_component|dffs\(6),
	combout => \b2v_inst14|LPM_SHIFTREG_component|dffs[7]~feeder_combout\);

-- Location: FF_X1_Y44_N19
\b2v_inst14|LPM_SHIFTREG_component|dffs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYNTHESIZED_WIRE_18~clkctrl_outclk\,
	d => \b2v_inst14|LPM_SHIFTREG_component|dffs[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst14|LPM_SHIFTREG_component|dffs\(7));

-- Location: LCCOMB_X1_Y34_N8
SYNTHESIZED_WIRE_17 : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNTHESIZED_WIRE_17~combout\ = LCELL((!\reset~input_o\ & (\b2v_inst|fstate.Guardar_dir~q\ & \SCL~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \b2v_inst|fstate.Guardar_dir~q\,
	datad => \SCL~input_o\,
	combout => \SYNTHESIZED_WIRE_17~combout\);

-- Location: CLKCTRL_G3
\SYNTHESIZED_WIRE_17~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SYNTHESIZED_WIRE_17~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SYNTHESIZED_WIRE_17~clkctrl_outclk\);

-- Location: LCCOMB_X2_Y35_N24
\b2v_inst11|LPM_COUNTER_component|auto_generated|trigger_mux_w[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst11|LPM_COUNTER_component|auto_generated|trigger_mux_w[1]~1_combout\ = (!\b2v_inst11|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) $ 
-- (\b2v_inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \b2v_inst11|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \b2v_inst11|LPM_COUNTER_component|auto_generated|trigger_mux_w[1]~1_combout\);

-- Location: LCCOMB_X2_Y35_N2
\b2v_inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder_combout\ = \b2v_inst11|LPM_COUNTER_component|auto_generated|trigger_mux_w[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst11|LPM_COUNTER_component|auto_generated|trigger_mux_w[1]~1_combout\,
	combout => \b2v_inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder_combout\);

-- Location: FF_X2_Y35_N3
\b2v_inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYNTHESIZED_WIRE_17~clkctrl_outclk\,
	d => \b2v_inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X2_Y35_N26
\b2v_inst11|LPM_COUNTER_component|auto_generated|trigger_mux_w[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst11|LPM_COUNTER_component|auto_generated|trigger_mux_w[2]~2_combout\ = (!\b2v_inst11|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) $ 
-- (((\b2v_inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & \b2v_inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datab => \b2v_inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \b2v_inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \b2v_inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \b2v_inst11|LPM_COUNTER_component|auto_generated|trigger_mux_w[2]~2_combout\);

-- Location: FF_X2_Y35_N27
\b2v_inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYNTHESIZED_WIRE_17~combout\,
	d => \b2v_inst11|LPM_COUNTER_component|auto_generated|trigger_mux_w[2]~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X2_Y35_N30
\b2v_inst11|LPM_COUNTER_component|auto_generated|cout_actual\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst11|LPM_COUNTER_component|auto_generated|cout_actual~combout\ = LCELL((\b2v_inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & \b2v_inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \b2v_inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \b2v_inst11|LPM_COUNTER_component|auto_generated|cout_actual~combout\);

-- Location: LCCOMB_X2_Y35_N12
\b2v_inst11|LPM_COUNTER_component|auto_generated|trigger_mux_w[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst11|LPM_COUNTER_component|auto_generated|trigger_mux_w[0]~0_combout\ = (!\b2v_inst11|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & !\b2v_inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst11|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \b2v_inst11|LPM_COUNTER_component|auto_generated|trigger_mux_w[0]~0_combout\);

-- Location: LCCOMB_X2_Y35_N20
\b2v_inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\ = \b2v_inst11|LPM_COUNTER_component|auto_generated|trigger_mux_w[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst11|LPM_COUNTER_component|auto_generated|trigger_mux_w[0]~0_combout\,
	combout => \b2v_inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\);

-- Location: FF_X2_Y35_N21
\b2v_inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYNTHESIZED_WIRE_17~clkctrl_outclk\,
	d => \b2v_inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst11|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X1_Y34_N12
\b2v_inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\ = \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	combout => \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\);

-- Location: FF_X1_Y34_N13
\b2v_inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYNTHESIZED_WIRE_18~clkctrl_outclk\,
	d => \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X1_Y34_N2
\b2v_inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\b2v_inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\b2v_inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\b2v_inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\b2v_inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\b2v_inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\b2v_inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X1_Y34_N26
\b2v_inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder_combout\ = \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	combout => \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder_combout\);

-- Location: FF_X1_Y34_N27
\b2v_inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYNTHESIZED_WIRE_18~combout\,
	d => \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: FF_X1_Y34_N5
\b2v_inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SYNTHESIZED_WIRE_18~combout\,
	d => \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst12|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

ww_ACK <= \ACK~output_o\;

ww_DATA(0) <= \DATA[0]~output_o\;

ww_DATA(1) <= \DATA[1]~output_o\;

ww_DATA(2) <= \DATA[2]~output_o\;

ww_DATA(3) <= \DATA[3]~output_o\;

ww_DATA(4) <= \DATA[4]~output_o\;

ww_DATA(5) <= \DATA[5]~output_o\;

ww_DATA(6) <= \DATA[6]~output_o\;

ww_DATA(7) <= \DATA[7]~output_o\;

ww_NC(0) <= \NC[0]~output_o\;

ww_NC(1) <= \NC[1]~output_o\;

ww_NC(2) <= \NC[2]~output_o\;

ww_NC_2(0) <= \NC_2[0]~output_o\;

ww_NC_2(1) <= \NC_2[1]~output_o\;

ww_NC_2(2) <= \NC_2[2]~output_o\;
END structure;


