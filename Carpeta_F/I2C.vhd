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
-- CREATED		"Wed Nov 05 20:23:49 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY I2C IS 
	PORT
	(
		SCL :  IN  STD_LOGIC;
		Reset_registro :  IN  STD_LOGIC;
		Clock_registro :  IN  STD_LOGIC;
		CARGA_DIRECCION :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		SDA :  INOUT  STD_LOGIC;
		DATA :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		DIRE :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		NC2 :  OUT  STD_LOGIC;
		NC1 :  OUT  STD_LOGIC;
		NC0 :  OUT  STD_LOGIC;
		NC23 :  OUT  STD_LOGIC;
		NC22 :  OUT  STD_LOGIC;
		NC21 :  OUT  STD_LOGIC;
		NC20 :  OUT  STD_LOGIC
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

COMPONENT alt_iobuf
	PORT(i : IN STD_LOGIC;
		 oe : IN STD_LOGIC;
		 io : INOUT STD_LOGIC;
		 o : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT contador_8
	PORT(clock : IN STD_LOGIC;
		 aclr : IN STD_LOGIC;
		 cout : OUT STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT registro8
	PORT(clock : IN STD_LOGIC;
		 shiftin : IN STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT contador7
	PORT(clock : IN STD_LOGIC;
		 aclr : IN STD_LOGIC;
		 cout : OUT STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;

COMPONENT comprardor
	PORT(dataa : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 aeb : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_25 :  STD_LOGIC_VECTOR(3 DOWNTO 0);


BEGIN 
DIRE <= SYNTHESIZED_WIRE_14;
NC2 <= SYNTHESIZED_WIRE_24(2);
NC1 <= SYNTHESIZED_WIRE_24(1);
NC0 <= SYNTHESIZED_WIRE_24(0);
NC23 <= SYNTHESIZED_WIRE_25(3);
NC22 <= SYNTHESIZED_WIRE_25(2);
NC21 <= SYNTHESIZED_WIRE_25(1);
NC20 <= SYNTHESIZED_WIRE_25(0);
SYNTHESIZED_WIRE_4 <= '1';



b2v_DIRECCION : registro7
PORT MAP(clock => Clock_registro,
		 shiftin => CARGA_DIRECCION,
		 aclr => Reset_registro,
		 q => SYNTHESIZED_WIRE_15);


b2v_inst : i2c_maquina_estado
PORT MAP(reset => reset,
		 clock => SCL,
		 sda => SYNTHESIZED_WIRE_21,
		 fin_dir => SYNTHESIZED_WIRE_1,
		 soy => SYNTHESIZED_WIRE_2,
		 fin_dato => SYNTHESIZED_WIRE_3,
		 ack => SYNTHESIZED_WIRE_5,
		 hab_dir => SYNTHESIZED_WIRE_11,
		 hab_dat => SYNTHESIZED_WIRE_12);


b2v_inst1 : alt_iobuf
PORT MAP(i => SYNTHESIZED_WIRE_4,
		 oe => SYNTHESIZED_WIRE_5,
		 io => SDA,
		 o => SYNTHESIZED_WIRE_21);



b2v_inst12 : contador_8
PORT MAP(clock => SYNTHESIZED_WIRE_22,
		 aclr => reset,
		 cout => SYNTHESIZED_WIRE_3,
		 q => SYNTHESIZED_WIRE_25);


b2v_inst13 : registro7
PORT MAP(clock => SYNTHESIZED_WIRE_23,
		 shiftin => SYNTHESIZED_WIRE_21,
		 aclr => reset,
		 q => SYNTHESIZED_WIRE_14);


b2v_inst14 : registro8
PORT MAP(clock => SYNTHESIZED_WIRE_22,
		 shiftin => SYNTHESIZED_WIRE_21,
		 q => DATA);


SYNTHESIZED_WIRE_23 <= SYNTHESIZED_WIRE_11 AND SCL;


SYNTHESIZED_WIRE_22 <= SYNTHESIZED_WIRE_12 AND SCL;


b2v_inst4 : contador7
PORT MAP(clock => SYNTHESIZED_WIRE_23,
		 aclr => reset,
		 cout => SYNTHESIZED_WIRE_1,
		 q => SYNTHESIZED_WIRE_24);


b2v_inst8 : comprardor
PORT MAP(dataa => SYNTHESIZED_WIRE_14,
		 datab => SYNTHESIZED_WIRE_15,
		 aeb => SYNTHESIZED_WIRE_2);


END bdf_type;