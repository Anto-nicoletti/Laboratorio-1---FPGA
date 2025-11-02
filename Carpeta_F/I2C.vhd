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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Sat Nov 01 21:35:24 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY I2C IS 
	PORT
	(
		SCL :  IN  STD_LOGIC;
		SDA :  IN  STD_LOGIC;
		clock :  IN  STD_LOGIC;
		Reset_registro :  IN  STD_LOGIC;
		Clock_registro :  IN  STD_LOGIC;
		CARGA_DIRECCION :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		ACK :  OUT  STD_LOGIC;
		DATA :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		NC :  OUT  STD_LOGIC_VECTOR(2 DOWNTO 0);
		NC_2 :  OUT  STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END I2C;

ARCHITECTURE bdf_type OF I2C IS 

COMPONENT registro7
	PORT(clock : IN STD_LOGIC;
		 shiftin : IN STD_LOGIC;
		 aclr : IN STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

COMPONENT i2c_maquina_estado
	PORT(reset : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 sda : IN STD_LOGIC;
		 fin_dir : IN STD_LOGIC;
		 soy : IN STD_LOGIC;
		 fin_dato : IN STD_LOGIC;
		 ack : OUT STD_LOGIC;
		 hab_dir : OUT STD_LOGIC;
		 hab_dat : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT contador7
	PORT(clock : IN STD_LOGIC;
		 aclr : IN STD_LOGIC;
		 cout : OUT STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;

COMPONENT contador_8
	PORT(clock : IN STD_LOGIC;
		 aclr : IN STD_LOGIC;
		 cout : OUT STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;

COMPONENT registro8
	PORT(clock : IN STD_LOGIC;
		 shiftin : IN STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT comprardor
	PORT(dataa : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 aeb : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	DFF_inst5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	DFF_inst7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC_VECTOR(6 DOWNTO 0);


BEGIN 
SYNTHESIZED_WIRE_21 <= '1';
SYNTHESIZED_WIRE_22 <= '1';



b2v_DIRECCION : registro7
PORT MAP(clock => Clock_registro,
		 shiftin => CARGA_DIRECCION,
		 aclr => Reset_registro,
		 q => SYNTHESIZED_WIRE_16);


b2v_inst : i2c_maquina_estado
PORT MAP(reset => reset,
		 clock => clock,
		 sda => SDA,
		 fin_dir => DFF_inst5,
		 soy => SYNTHESIZED_WIRE_0,
		 fin_dato => DFF_inst7,
		 ack => ACK,
		 hab_dir => SYNTHESIZED_WIRE_19,
		 hab_dat => SYNTHESIZED_WIRE_20);


b2v_inst11 : contador7
PORT MAP(clock => SYNTHESIZED_WIRE_17,
		 aclr => reset,
		 cout => SYNTHESIZED_WIRE_8,
		 q => NC);


b2v_inst12 : contador_8
PORT MAP(clock => SYNTHESIZED_WIRE_18,
		 aclr => reset,
		 cout => SYNTHESIZED_WIRE_12,
		 q => NC_2);


b2v_inst13 : registro7
PORT MAP(clock => SYNTHESIZED_WIRE_17,
		 shiftin => SDA,
		 aclr => reset,
		 q => SYNTHESIZED_WIRE_15);


b2v_inst14 : registro8
PORT MAP(clock => SYNTHESIZED_WIRE_18,
		 shiftin => SDA,
		 q => DATA);


SYNTHESIZED_WIRE_17 <= SYNTHESIZED_WIRE_19 AND SCL;


SYNTHESIZED_WIRE_18 <= SYNTHESIZED_WIRE_20 AND SCL;


PROCESS(SYNTHESIZED_WIRE_8,SYNTHESIZED_WIRE_19,SYNTHESIZED_WIRE_21)
BEGIN
IF (SYNTHESIZED_WIRE_19 = '0') THEN
	DFF_inst5 <= '0';
ELSIF (SYNTHESIZED_WIRE_21 = '0') THEN
	DFF_inst5 <= '1';
ELSIF (RISING_EDGE(SYNTHESIZED_WIRE_8)) THEN
	DFF_inst5 <= SYNTHESIZED_WIRE_21;
END IF;
END PROCESS;



PROCESS(SYNTHESIZED_WIRE_12,SYNTHESIZED_WIRE_20,SYNTHESIZED_WIRE_22)
BEGIN
IF (SYNTHESIZED_WIRE_20 = '0') THEN
	DFF_inst7 <= '0';
ELSIF (SYNTHESIZED_WIRE_22 = '0') THEN
	DFF_inst7 <= '1';
ELSIF (RISING_EDGE(SYNTHESIZED_WIRE_12)) THEN
	DFF_inst7 <= SYNTHESIZED_WIRE_22;
END IF;
END PROCESS;


b2v_inst8 : comprardor
PORT MAP(dataa => SYNTHESIZED_WIRE_15,
		 datab => SYNTHESIZED_WIRE_16,
		 aeb => SYNTHESIZED_WIRE_0);



END bdf_type;