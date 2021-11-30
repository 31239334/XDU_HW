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
-- VERSION		"Version 13.1.0 Build 162 10/23/2013 SJ Full Version"
-- CREATED		"Fri Oct 30 00:54:53 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY TrafficLight IS 
	PORT
	(
		i_sys_rst :  IN  STD_LOGIC;
		i_sys_clk :  IN  STD_LOGIC;
		i_sys_emergency :  IN  STD_LOGIC;
		o_ew_red :  OUT  STD_LOGIC;
		o_ew_yellow :  OUT  STD_LOGIC;
		o_ew_green :  OUT  STD_LOGIC;
		o_ns_red :  OUT  STD_LOGIC;
		o_ns_yellow :  OUT  STD_LOGIC;
		o_ns_green :  OUT  STD_LOGIC;
		o_ew_tens_a :  OUT  STD_LOGIC;
		o_ew_tens_b :  OUT  STD_LOGIC;
		o_ew_tens_c :  OUT  STD_LOGIC;
		o_ew_tens_d :  OUT  STD_LOGIC;
		o_ew_tens_e :  OUT  STD_LOGIC;
		o_ew_tens_f :  OUT  STD_LOGIC;
		o_ew_tens_g :  OUT  STD_LOGIC;
		o_ew_units_a :  OUT  STD_LOGIC;
		o_ew_units_b :  OUT  STD_LOGIC;
		o_ew_units_c :  OUT  STD_LOGIC;
		o_ew_units_d :  OUT  STD_LOGIC;
		o_ew_units_e :  OUT  STD_LOGIC;
		o_ew_units_f :  OUT  STD_LOGIC;
		o_ew_units_g :  OUT  STD_LOGIC;
		o_ns_tens_a :  OUT  STD_LOGIC;
		o_ns_tens_b :  OUT  STD_LOGIC;
		o_ns_tens_c :  OUT  STD_LOGIC;
		o_ns_tens_d :  OUT  STD_LOGIC;
		o_ns_tens_e :  OUT  STD_LOGIC;
		o_ns_tens_f :  OUT  STD_LOGIC;
		o_ns_tens_g :  OUT  STD_LOGIC;
		o_ns_units_a :  OUT  STD_LOGIC;
		o_ns_units_b :  OUT  STD_LOGIC;
		o_ns_units_c :  OUT  STD_LOGIC;
		o_ns_units_d :  OUT  STD_LOGIC;
		o_ns_units_e :  OUT  STD_LOGIC;
		o_ns_units_f :  OUT  STD_LOGIC;
		o_ns_units_g :  OUT  STD_LOGIC
	);
END TrafficLight;

ARCHITECTURE bdf_type OF TrafficLight IS 

COMPONENT control
	PORT(i_sys_rst : IN STD_LOGIC;
		 i_div_clk : IN STD_LOGIC;
		 i_tim_carry : IN STD_LOGIC;
		 i_sys_emergency : IN STD_LOGIC;
		 i_tim_tens : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 i_tim_units : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 o_seg_en : OUT STD_LOGIC;
		 o_ew_red : OUT STD_LOGIC;
		 o_ew_yellow : OUT STD_LOGIC;
		 o_ew_green : OUT STD_LOGIC;
		 o_ns_red : OUT STD_LOGIC;
		 o_ns_yellow : OUT STD_LOGIC;
		 o_ns_green : OUT STD_LOGIC;
		 o_tim_tens_ew : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 o_tim_tens_ns : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 o_tim_units_ew : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 o_tim_units_ns : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT cd45s
	PORT(i_div_clk : IN STD_LOGIC;
		 i_sys_rst : IN STD_LOGIC;
		 i_sys_emergency : IN STD_LOGIC;
		 o_tim_carry : OUT STD_LOGIC;
		 o_tim_tens : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 o_tim_units : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT disp_tube
	PORT(i_sys_rst : IN STD_LOGIC;
		 i_sys_en : IN STD_LOGIC;
		 i_time_val : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 a : OUT STD_LOGIC;
		 b : OUT STD_LOGIC;
		 c : OUT STD_LOGIC;
		 d : OUT STD_LOGIC;
		 e : OUT STD_LOGIC;
		 f : OUT STD_LOGIC;
		 g : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT div_clk_50m
GENERIC (div_clk_val : INTEGER;
			sys_clk_val : INTEGER
			);
	PORT(i_sys_clk : IN STD_LOGIC;
		 i_sys_rst : IN STD_LOGIC;
		 o_div_clk : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC_VECTOR(3 DOWNTO 0);


BEGIN 



b2v_inst : control
PORT MAP(i_sys_rst => i_sys_rst,
		 i_div_clk => SYNTHESIZED_WIRE_13,
		 i_tim_carry => SYNTHESIZED_WIRE_1,
		 i_sys_emergency => i_sys_emergency,
		 i_tim_tens => SYNTHESIZED_WIRE_2,
		 i_tim_units => SYNTHESIZED_WIRE_3,
		 o_seg_en => SYNTHESIZED_WIRE_14,
		 o_ew_red => o_ew_red,
		 o_ew_yellow => o_ew_yellow,
		 o_ew_green => o_ew_green,
		 o_ns_red => o_ns_red,
		 o_ns_yellow => o_ns_yellow,
		 o_ns_green => o_ns_green,
		 o_tim_tens_ew => SYNTHESIZED_WIRE_6,
		 o_tim_tens_ns => SYNTHESIZED_WIRE_10,
		 o_tim_units_ew => SYNTHESIZED_WIRE_8,
		 o_tim_units_ns => SYNTHESIZED_WIRE_12);


b2v_inst1 : cd45s
PORT MAP(i_div_clk => SYNTHESIZED_WIRE_13,
		 i_sys_rst => i_sys_rst,
		 i_sys_emergency => i_sys_emergency,
		 o_tim_carry => SYNTHESIZED_WIRE_1,
		 o_tim_tens => SYNTHESIZED_WIRE_2,
		 o_tim_units => SYNTHESIZED_WIRE_3);


b2v_inst4 : disp_tube
PORT MAP(i_sys_rst => i_sys_rst,
		 i_sys_en => SYNTHESIZED_WIRE_14,
		 i_time_val => SYNTHESIZED_WIRE_6,
		 a => o_ew_tens_a,
		 b => o_ew_tens_b,
		 c => o_ew_tens_c,
		 d => o_ew_tens_d,
		 e => o_ew_tens_e,
		 f => o_ew_tens_f,
		 g => o_ew_tens_g);


b2v_inst5 : disp_tube
PORT MAP(i_sys_rst => i_sys_rst,
		 i_sys_en => SYNTHESIZED_WIRE_14,
		 i_time_val => SYNTHESIZED_WIRE_8,
		 a => o_ew_units_a,
		 b => o_ew_units_b,
		 c => o_ew_units_c,
		 d => o_ew_units_d,
		 e => o_ew_units_e,
		 f => o_ew_units_f,
		 g => o_ew_units_g);


b2v_inst6 : disp_tube
PORT MAP(i_sys_rst => i_sys_rst,
		 i_sys_en => SYNTHESIZED_WIRE_14,
		 i_time_val => SYNTHESIZED_WIRE_10,
		 a => o_ns_tens_a,
		 b => o_ns_tens_b,
		 c => o_ns_tens_c,
		 d => o_ns_tens_d,
		 e => o_ns_tens_e,
		 f => o_ns_tens_f,
		 g => o_ns_tens_g);


b2v_inst7 : disp_tube
PORT MAP(i_sys_rst => i_sys_rst,
		 i_sys_en => SYNTHESIZED_WIRE_14,
		 i_time_val => SYNTHESIZED_WIRE_12,
		 a => o_ns_units_a,
		 b => o_ns_units_b,
		 c => o_ns_units_c,
		 d => o_ns_units_d,
		 e => o_ns_units_e,
		 f => o_ns_units_f,
		 g => o_ns_units_g);


b2v_inst8 : div_clk_50m
GENERIC MAP(div_clk_val => 2,
			sys_clk_val => 50000000
			)
PORT MAP(i_sys_clk => i_sys_clk,
		 i_sys_rst => i_sys_rst,
		 o_div_clk => SYNTHESIZED_WIRE_13);


END bdf_type;