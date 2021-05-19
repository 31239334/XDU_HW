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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "11/05/2020 16:11:48"

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

ENTITY 	TrafficLight IS
    PORT (
	i_sys_rst : IN std_logic;
	i_sys_clk : IN std_logic;
	i_sys_emergency : IN std_logic;
	o_ew_red : BUFFER std_logic;
	o_ew_yellow : BUFFER std_logic;
	o_ew_green : BUFFER std_logic;
	o_ns_red : BUFFER std_logic;
	o_ns_yellow : BUFFER std_logic;
	o_ns_green : BUFFER std_logic;
	o_ew_tens_a : BUFFER std_logic;
	o_ew_tens_b : BUFFER std_logic;
	o_ew_tens_c : BUFFER std_logic;
	o_ew_tens_d : BUFFER std_logic;
	o_ew_tens_e : BUFFER std_logic;
	o_ew_tens_f : BUFFER std_logic;
	o_ew_tens_g : BUFFER std_logic;
	o_ew_units_a : BUFFER std_logic;
	o_ew_units_b : BUFFER std_logic;
	o_ew_units_c : BUFFER std_logic;
	o_ew_units_d : BUFFER std_logic;
	o_ew_units_e : BUFFER std_logic;
	o_ew_units_f : BUFFER std_logic;
	o_ew_units_g : BUFFER std_logic;
	o_ns_tens_a : BUFFER std_logic;
	o_ns_tens_b : BUFFER std_logic;
	o_ns_tens_c : BUFFER std_logic;
	o_ns_tens_d : BUFFER std_logic;
	o_ns_tens_e : BUFFER std_logic;
	o_ns_tens_f : BUFFER std_logic;
	o_ns_tens_g : BUFFER std_logic;
	o_ns_units_a : BUFFER std_logic;
	o_ns_units_b : BUFFER std_logic;
	o_ns_units_c : BUFFER std_logic;
	o_ns_units_d : BUFFER std_logic;
	o_ns_units_e : BUFFER std_logic;
	o_ns_units_f : BUFFER std_logic;
	o_ns_units_g : BUFFER std_logic
	);
END TrafficLight;

-- Design Ports Information
-- o_ew_red	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ew_yellow	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ew_green	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ns_red	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ns_yellow	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ns_green	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ew_tens_a	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ew_tens_b	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ew_tens_c	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ew_tens_d	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ew_tens_e	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ew_tens_f	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ew_tens_g	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ew_units_a	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ew_units_b	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ew_units_c	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ew_units_d	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ew_units_e	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ew_units_f	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ew_units_g	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ns_tens_a	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ns_tens_b	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ns_tens_c	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ns_tens_d	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ns_tens_e	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ns_tens_f	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ns_tens_g	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ns_units_a	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ns_units_b	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ns_units_c	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ns_units_d	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ns_units_e	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ns_units_f	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ns_units_g	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_sys_rst	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_sys_emergency	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_sys_clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TrafficLight IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_sys_rst : std_logic;
SIGNAL ww_i_sys_clk : std_logic;
SIGNAL ww_i_sys_emergency : std_logic;
SIGNAL ww_o_ew_red : std_logic;
SIGNAL ww_o_ew_yellow : std_logic;
SIGNAL ww_o_ew_green : std_logic;
SIGNAL ww_o_ns_red : std_logic;
SIGNAL ww_o_ns_yellow : std_logic;
SIGNAL ww_o_ns_green : std_logic;
SIGNAL ww_o_ew_tens_a : std_logic;
SIGNAL ww_o_ew_tens_b : std_logic;
SIGNAL ww_o_ew_tens_c : std_logic;
SIGNAL ww_o_ew_tens_d : std_logic;
SIGNAL ww_o_ew_tens_e : std_logic;
SIGNAL ww_o_ew_tens_f : std_logic;
SIGNAL ww_o_ew_tens_g : std_logic;
SIGNAL ww_o_ew_units_a : std_logic;
SIGNAL ww_o_ew_units_b : std_logic;
SIGNAL ww_o_ew_units_c : std_logic;
SIGNAL ww_o_ew_units_d : std_logic;
SIGNAL ww_o_ew_units_e : std_logic;
SIGNAL ww_o_ew_units_f : std_logic;
SIGNAL ww_o_ew_units_g : std_logic;
SIGNAL ww_o_ns_tens_a : std_logic;
SIGNAL ww_o_ns_tens_b : std_logic;
SIGNAL ww_o_ns_tens_c : std_logic;
SIGNAL ww_o_ns_tens_d : std_logic;
SIGNAL ww_o_ns_tens_e : std_logic;
SIGNAL ww_o_ns_tens_f : std_logic;
SIGNAL ww_o_ns_tens_g : std_logic;
SIGNAL ww_o_ns_units_a : std_logic;
SIGNAL ww_o_ns_units_b : std_logic;
SIGNAL ww_o_ns_units_c : std_logic;
SIGNAL ww_o_ns_units_d : std_logic;
SIGNAL ww_o_ns_units_e : std_logic;
SIGNAL ww_o_ns_units_f : std_logic;
SIGNAL ww_o_ns_units_g : std_logic;
SIGNAL \b2v_inst8|r_div_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|r_tim_tens_ew[3]~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_sys_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_ew_red~output_o\ : std_logic;
SIGNAL \o_ew_yellow~output_o\ : std_logic;
SIGNAL \o_ew_green~output_o\ : std_logic;
SIGNAL \o_ns_red~output_o\ : std_logic;
SIGNAL \o_ns_yellow~output_o\ : std_logic;
SIGNAL \o_ns_green~output_o\ : std_logic;
SIGNAL \o_ew_tens_a~output_o\ : std_logic;
SIGNAL \o_ew_tens_b~output_o\ : std_logic;
SIGNAL \o_ew_tens_c~output_o\ : std_logic;
SIGNAL \o_ew_tens_d~output_o\ : std_logic;
SIGNAL \o_ew_tens_e~output_o\ : std_logic;
SIGNAL \o_ew_tens_f~output_o\ : std_logic;
SIGNAL \o_ew_tens_g~output_o\ : std_logic;
SIGNAL \o_ew_units_a~output_o\ : std_logic;
SIGNAL \o_ew_units_b~output_o\ : std_logic;
SIGNAL \o_ew_units_c~output_o\ : std_logic;
SIGNAL \o_ew_units_d~output_o\ : std_logic;
SIGNAL \o_ew_units_e~output_o\ : std_logic;
SIGNAL \o_ew_units_f~output_o\ : std_logic;
SIGNAL \o_ew_units_g~output_o\ : std_logic;
SIGNAL \o_ns_tens_a~output_o\ : std_logic;
SIGNAL \o_ns_tens_b~output_o\ : std_logic;
SIGNAL \o_ns_tens_c~output_o\ : std_logic;
SIGNAL \o_ns_tens_d~output_o\ : std_logic;
SIGNAL \o_ns_tens_e~output_o\ : std_logic;
SIGNAL \o_ns_tens_f~output_o\ : std_logic;
SIGNAL \o_ns_tens_g~output_o\ : std_logic;
SIGNAL \o_ns_units_a~output_o\ : std_logic;
SIGNAL \o_ns_units_b~output_o\ : std_logic;
SIGNAL \o_ns_units_c~output_o\ : std_logic;
SIGNAL \o_ns_units_d~output_o\ : std_logic;
SIGNAL \o_ns_units_e~output_o\ : std_logic;
SIGNAL \o_ns_units_f~output_o\ : std_logic;
SIGNAL \o_ns_units_g~output_o\ : std_logic;
SIGNAL \i_sys_clk~input_o\ : std_logic;
SIGNAL \i_sys_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst8|Add0~0_combout\ : std_logic;
SIGNAL \i_sys_rst~input_o\ : std_logic;
SIGNAL \b2v_inst8|Add0~1\ : std_logic;
SIGNAL \b2v_inst8|Add0~2_combout\ : std_logic;
SIGNAL \b2v_inst8|Add0~3\ : std_logic;
SIGNAL \b2v_inst8|Add0~4_combout\ : std_logic;
SIGNAL \b2v_inst8|Add0~5\ : std_logic;
SIGNAL \b2v_inst8|Add0~6_combout\ : std_logic;
SIGNAL \b2v_inst8|Add0~7\ : std_logic;
SIGNAL \b2v_inst8|Add0~8_combout\ : std_logic;
SIGNAL \b2v_inst8|Add0~9\ : std_logic;
SIGNAL \b2v_inst8|Add0~10_combout\ : std_logic;
SIGNAL \b2v_inst8|r_div_count~11_combout\ : std_logic;
SIGNAL \b2v_inst8|Add0~11\ : std_logic;
SIGNAL \b2v_inst8|Add0~12_combout\ : std_logic;
SIGNAL \b2v_inst8|Add0~13\ : std_logic;
SIGNAL \b2v_inst8|Add0~14_combout\ : std_logic;
SIGNAL \b2v_inst8|Equal0~8_combout\ : std_logic;
SIGNAL \b2v_inst8|Equal0~9_combout\ : std_logic;
SIGNAL \b2v_inst8|Add0~15\ : std_logic;
SIGNAL \b2v_inst8|Add0~16_combout\ : std_logic;
SIGNAL \b2v_inst8|Add0~17\ : std_logic;
SIGNAL \b2v_inst8|Add0~18_combout\ : std_logic;
SIGNAL \b2v_inst8|Add0~19\ : std_logic;
SIGNAL \b2v_inst8|Add0~20_combout\ : std_logic;
SIGNAL \b2v_inst8|r_div_count~10_combout\ : std_logic;
SIGNAL \b2v_inst8|Add0~21\ : std_logic;
SIGNAL \b2v_inst8|Add0~22_combout\ : std_logic;
SIGNAL \b2v_inst8|r_div_count~9_combout\ : std_logic;
SIGNAL \b2v_inst8|Add0~23\ : std_logic;
SIGNAL \b2v_inst8|Add0~24_combout\ : std_logic;
SIGNAL \b2v_inst8|r_div_count~8_combout\ : std_logic;
SIGNAL \b2v_inst8|Add0~25\ : std_logic;
SIGNAL \b2v_inst8|Add0~26_combout\ : std_logic;
SIGNAL \b2v_inst8|r_div_count~7_combout\ : std_logic;
SIGNAL \b2v_inst8|Add0~27\ : std_logic;
SIGNAL \b2v_inst8|Add0~28_combout\ : std_logic;
SIGNAL \b2v_inst8|Add0~29\ : std_logic;
SIGNAL \b2v_inst8|Add0~30_combout\ : std_logic;
SIGNAL \b2v_inst8|r_div_count~6_combout\ : std_logic;
SIGNAL \b2v_inst8|Equal0~5_combout\ : std_logic;
SIGNAL \b2v_inst8|Equal0~6_combout\ : std_logic;
SIGNAL \b2v_inst8|Equal0~7_combout\ : std_logic;
SIGNAL \b2v_inst8|Add0~31\ : std_logic;
SIGNAL \b2v_inst8|Add0~32_combout\ : std_logic;
SIGNAL \b2v_inst8|r_div_count[16]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|Add0~33\ : std_logic;
SIGNAL \b2v_inst8|Add0~34_combout\ : std_logic;
SIGNAL \b2v_inst8|r_div_count~5_combout\ : std_logic;
SIGNAL \b2v_inst8|Add0~35\ : std_logic;
SIGNAL \b2v_inst8|Add0~36_combout\ : std_logic;
SIGNAL \b2v_inst8|r_div_count~4_combout\ : std_logic;
SIGNAL \b2v_inst8|Add0~37\ : std_logic;
SIGNAL \b2v_inst8|Add0~38_combout\ : std_logic;
SIGNAL \b2v_inst8|r_div_count~3_combout\ : std_logic;
SIGNAL \b2v_inst8|Add0~39\ : std_logic;
SIGNAL \b2v_inst8|Add0~40_combout\ : std_logic;
SIGNAL \b2v_inst8|r_div_count~2_combout\ : std_logic;
SIGNAL \b2v_inst8|Add0~41\ : std_logic;
SIGNAL \b2v_inst8|Add0~42_combout\ : std_logic;
SIGNAL \b2v_inst8|r_div_count~1_combout\ : std_logic;
SIGNAL \b2v_inst8|Add0~43\ : std_logic;
SIGNAL \b2v_inst8|Add0~44_combout\ : std_logic;
SIGNAL \b2v_inst8|Add0~45\ : std_logic;
SIGNAL \b2v_inst8|Add0~46_combout\ : std_logic;
SIGNAL \b2v_inst8|r_div_count~0_combout\ : std_logic;
SIGNAL \b2v_inst8|Equal0~2_combout\ : std_logic;
SIGNAL \b2v_inst8|Equal0~3_combout\ : std_logic;
SIGNAL \b2v_inst8|Add0~47\ : std_logic;
SIGNAL \b2v_inst8|Add0~48_combout\ : std_logic;
SIGNAL \b2v_inst8|Add0~49\ : std_logic;
SIGNAL \b2v_inst8|Add0~50_combout\ : std_logic;
SIGNAL \b2v_inst8|Add0~51\ : std_logic;
SIGNAL \b2v_inst8|Add0~52_combout\ : std_logic;
SIGNAL \b2v_inst8|Add0~53\ : std_logic;
SIGNAL \b2v_inst8|Add0~54_combout\ : std_logic;
SIGNAL \b2v_inst8|Equal0~1_combout\ : std_logic;
SIGNAL \b2v_inst8|Add0~55\ : std_logic;
SIGNAL \b2v_inst8|Add0~56_combout\ : std_logic;
SIGNAL \b2v_inst8|Add0~57\ : std_logic;
SIGNAL \b2v_inst8|Add0~58_combout\ : std_logic;
SIGNAL \b2v_inst8|Add0~59\ : std_logic;
SIGNAL \b2v_inst8|Add0~60_combout\ : std_logic;
SIGNAL \b2v_inst8|Add0~61\ : std_logic;
SIGNAL \b2v_inst8|Add0~62_combout\ : std_logic;
SIGNAL \b2v_inst8|Equal0~0_combout\ : std_logic;
SIGNAL \b2v_inst8|Equal0~4_combout\ : std_logic;
SIGNAL \b2v_inst8|Equal0~10_combout\ : std_logic;
SIGNAL \b2v_inst8|r_div_clk~0_combout\ : std_logic;
SIGNAL \b2v_inst8|r_div_clk~q\ : std_logic;
SIGNAL \i_sys_emergency~input_o\ : std_logic;
SIGNAL \b2v_inst8|r_div_clk~clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst1|cout_units~1_combout\ : std_logic;
SIGNAL \b2v_inst1|cout_units~4_combout\ : std_logic;
SIGNAL \b2v_inst1|cout_units~5_combout\ : std_logic;
SIGNAL \b2v_inst1|cout_units~0_combout\ : std_logic;
SIGNAL \b2v_inst1|cout_units~2_combout\ : std_logic;
SIGNAL \b2v_inst1|cout_units~3_combout\ : std_logic;
SIGNAL \b2v_inst1|Equal2~0_combout\ : std_logic;
SIGNAL \b2v_inst1|cout_tens~4_combout\ : std_logic;
SIGNAL \b2v_inst1|cout_tens[3]~1_combout\ : std_logic;
SIGNAL \b2v_inst1|cout_tens[3]~2_combout\ : std_logic;
SIGNAL \b2v_inst1|cout_tens~3_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~0_combout\ : std_logic;
SIGNAL \b2v_inst|Equal0~1_combout\ : std_logic;
SIGNAL \b2v_inst1|cout_tens~0_combout\ : std_logic;
SIGNAL \b2v_inst|Equal0~0_combout\ : std_logic;
SIGNAL \b2v_inst|r_tim_tens_ew[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst1|r_tim_carry~0_combout\ : std_logic;
SIGNAL \b2v_inst1|r_tim_carry~1_combout\ : std_logic;
SIGNAL \b2v_inst1|r_tim_carry~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|r_tim_carry~q\ : std_logic;
SIGNAL \b2v_inst|r_dir_flag~0_combout\ : std_logic;
SIGNAL \b2v_inst|r_dir_flag~q\ : std_logic;
SIGNAL \b2v_inst|r_ew_red~0_combout\ : std_logic;
SIGNAL \b2v_inst|r_ew_red~combout\ : std_logic;
SIGNAL \b2v_inst|LessThan1~0_combout\ : std_logic;
SIGNAL \b2v_inst|r_ew_yellow~0_combout\ : std_logic;
SIGNAL \b2v_inst|r_ew_yellow~combout\ : std_logic;
SIGNAL \b2v_inst|r_ew_green~0_combout\ : std_logic;
SIGNAL \b2v_inst|r_ew_green~1_combout\ : std_logic;
SIGNAL \b2v_inst|r_ew_green~2_combout\ : std_logic;
SIGNAL \b2v_inst|r_ew_green~combout\ : std_logic;
SIGNAL \b2v_inst|r_ns_red~0_combout\ : std_logic;
SIGNAL \b2v_inst|r_ns_red~combout\ : std_logic;
SIGNAL \b2v_inst|r_ns_green~0_combout\ : std_logic;
SIGNAL \b2v_inst|r_ns_green~1_combout\ : std_logic;
SIGNAL \b2v_inst|r_ns_green~combout\ : std_logic;
SIGNAL \b2v_inst|r_seg_en~0_combout\ : std_logic;
SIGNAL \b2v_inst|r_seg_en~combout\ : std_logic;
SIGNAL \b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst|r_tim_tens_ew~4_combout\ : std_logic;
SIGNAL \b2v_inst|r_tim_tens_ew~5_combout\ : std_logic;
SIGNAL \b2v_inst|r_tim_tens_ew~6_combout\ : std_logic;
SIGNAL \b2v_inst|r_tim_tens_ew~7_combout\ : std_logic;
SIGNAL \b2v_inst|r_tim_tens_ew~2_combout\ : std_logic;
SIGNAL \b2v_inst4|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst4|a~0_combout\ : std_logic;
SIGNAL \b2v_inst4|Mux1~0_combout\ : std_logic;
SIGNAL \b2v_inst4|b~0_combout\ : std_logic;
SIGNAL \b2v_inst4|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst4|c~0_combout\ : std_logic;
SIGNAL \b2v_inst4|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst4|d~0_combout\ : std_logic;
SIGNAL \b2v_inst4|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst4|e~0_combout\ : std_logic;
SIGNAL \b2v_inst4|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst4|f~0_combout\ : std_logic;
SIGNAL \b2v_inst4|Mux6~0_combout\ : std_logic;
SIGNAL \b2v_inst4|g~0_combout\ : std_logic;
SIGNAL \b2v_inst|r_tim_units_ew~4_combout\ : std_logic;
SIGNAL \b2v_inst|r_ew_green~3_combout\ : std_logic;
SIGNAL \b2v_inst|r_tim_units_ew~5_combout\ : std_logic;
SIGNAL \b2v_inst|r_tim_units_ew~2_combout\ : std_logic;
SIGNAL \b2v_inst|r_tim_units_ew~3_combout\ : std_logic;
SIGNAL \b2v_inst|r_tim_units_ew~0_combout\ : std_logic;
SIGNAL \b2v_inst|r_tim_units_ew~1_combout\ : std_logic;
SIGNAL \b2v_inst5|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst5|a~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Mux1~0_combout\ : std_logic;
SIGNAL \b2v_inst5|b~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst5|c~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst5|d~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst5|e~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst5|f~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Mux6~0_combout\ : std_logic;
SIGNAL \b2v_inst5|g~0_combout\ : std_logic;
SIGNAL \b2v_inst|r_tim_tens_ns~3_combout\ : std_logic;
SIGNAL \b2v_inst|r_tim_tens_ns~4_combout\ : std_logic;
SIGNAL \b2v_inst|r_tim_tens_ns~2_combout\ : std_logic;
SIGNAL \b2v_inst|r_tim_tens_ns~6_combout\ : std_logic;
SIGNAL \b2v_inst|r_tim_tens_ns~5_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst6|a~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux1~0_combout\ : std_logic;
SIGNAL \b2v_inst6|b~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst6|c~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst6|d~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst6|e~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst6|f~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Mux6~0_combout\ : std_logic;
SIGNAL \b2v_inst6|g~0_combout\ : std_logic;
SIGNAL \b2v_inst|r_tim_units_ns~2_combout\ : std_logic;
SIGNAL \b2v_inst|r_tim_units_ns~3_combout\ : std_logic;
SIGNAL \b2v_inst|r_tim_units_ns~1_combout\ : std_logic;
SIGNAL \b2v_inst|r_tim_units_ns~0_combout\ : std_logic;
SIGNAL \b2v_inst7|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst7|a~0_combout\ : std_logic;
SIGNAL \b2v_inst7|Mux1~0_combout\ : std_logic;
SIGNAL \b2v_inst7|b~0_combout\ : std_logic;
SIGNAL \b2v_inst7|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst7|c~0_combout\ : std_logic;
SIGNAL \b2v_inst7|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst7|d~0_combout\ : std_logic;
SIGNAL \b2v_inst7|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst7|e~0_combout\ : std_logic;
SIGNAL \b2v_inst7|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst7|f~0_combout\ : std_logic;
SIGNAL \b2v_inst7|Mux6~0_combout\ : std_logic;
SIGNAL \b2v_inst7|g~0_combout\ : std_logic;
SIGNAL \b2v_inst|r_tim_units_ew\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|r_tim_tens_ns\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst1|cout_tens\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|r_tim_units_ns\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst1|cout_units\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|r_tim_tens_ew\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst8|r_div_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \b2v_inst1|ALT_INV_r_tim_carry~q\ : std_logic;
SIGNAL \ALT_INV_i_sys_emergency~input_o\ : std_logic;
SIGNAL \ALT_INV_i_sys_rst~input_o\ : std_logic;

BEGIN

ww_i_sys_rst <= i_sys_rst;
ww_i_sys_clk <= i_sys_clk;
ww_i_sys_emergency <= i_sys_emergency;
o_ew_red <= ww_o_ew_red;
o_ew_yellow <= ww_o_ew_yellow;
o_ew_green <= ww_o_ew_green;
o_ns_red <= ww_o_ns_red;
o_ns_yellow <= ww_o_ns_yellow;
o_ns_green <= ww_o_ns_green;
o_ew_tens_a <= ww_o_ew_tens_a;
o_ew_tens_b <= ww_o_ew_tens_b;
o_ew_tens_c <= ww_o_ew_tens_c;
o_ew_tens_d <= ww_o_ew_tens_d;
o_ew_tens_e <= ww_o_ew_tens_e;
o_ew_tens_f <= ww_o_ew_tens_f;
o_ew_tens_g <= ww_o_ew_tens_g;
o_ew_units_a <= ww_o_ew_units_a;
o_ew_units_b <= ww_o_ew_units_b;
o_ew_units_c <= ww_o_ew_units_c;
o_ew_units_d <= ww_o_ew_units_d;
o_ew_units_e <= ww_o_ew_units_e;
o_ew_units_f <= ww_o_ew_units_f;
o_ew_units_g <= ww_o_ew_units_g;
o_ns_tens_a <= ww_o_ns_tens_a;
o_ns_tens_b <= ww_o_ns_tens_b;
o_ns_tens_c <= ww_o_ns_tens_c;
o_ns_tens_d <= ww_o_ns_tens_d;
o_ns_tens_e <= ww_o_ns_tens_e;
o_ns_tens_f <= ww_o_ns_tens_f;
o_ns_tens_g <= ww_o_ns_tens_g;
o_ns_units_a <= ww_o_ns_units_a;
o_ns_units_b <= ww_o_ns_units_b;
o_ns_units_c <= ww_o_ns_units_c;
o_ns_units_d <= ww_o_ns_units_d;
o_ns_units_e <= ww_o_ns_units_e;
o_ns_units_f <= ww_o_ns_units_f;
o_ns_units_g <= ww_o_ns_units_g;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\b2v_inst8|r_div_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \b2v_inst8|r_div_clk~q\);

\b2v_inst|r_tim_tens_ew[3]~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \b2v_inst|r_tim_tens_ew[3]~3_combout\);

\i_sys_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_sys_clk~input_o\);
\b2v_inst1|ALT_INV_r_tim_carry~q\ <= NOT \b2v_inst1|r_tim_carry~q\;
\ALT_INV_i_sys_emergency~input_o\ <= NOT \i_sys_emergency~input_o\;
\ALT_INV_i_sys_rst~input_o\ <= NOT \i_sys_rst~input_o\;

-- Location: IOOBUF_X0_Y27_N16
\o_ew_red~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|r_ew_red~combout\,
	devoe => ww_devoe,
	o => \o_ew_red~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\o_ew_yellow~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|r_ew_yellow~combout\,
	devoe => ww_devoe,
	o => \o_ew_yellow~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\o_ew_green~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|r_ew_green~combout\,
	devoe => ww_devoe,
	o => \o_ew_green~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\o_ns_red~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|r_ns_red~combout\,
	devoe => ww_devoe,
	o => \o_ns_red~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\o_ns_yellow~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|r_ew_yellow~combout\,
	devoe => ww_devoe,
	o => \o_ns_yellow~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\o_ns_green~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|r_ns_green~combout\,
	devoe => ww_devoe,
	o => \o_ns_green~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\o_ew_tens_a~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|a~0_combout\,
	devoe => ww_devoe,
	o => \o_ew_tens_a~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\o_ew_tens_b~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|b~0_combout\,
	devoe => ww_devoe,
	o => \o_ew_tens_b~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\o_ew_tens_c~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|c~0_combout\,
	devoe => ww_devoe,
	o => \o_ew_tens_c~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\o_ew_tens_d~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|d~0_combout\,
	devoe => ww_devoe,
	o => \o_ew_tens_d~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\o_ew_tens_e~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|e~0_combout\,
	devoe => ww_devoe,
	o => \o_ew_tens_e~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\o_ew_tens_f~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|f~0_combout\,
	devoe => ww_devoe,
	o => \o_ew_tens_f~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\o_ew_tens_g~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|g~0_combout\,
	devoe => ww_devoe,
	o => \o_ew_tens_g~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\o_ew_units_a~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst5|a~0_combout\,
	devoe => ww_devoe,
	o => \o_ew_units_a~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\o_ew_units_b~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst5|b~0_combout\,
	devoe => ww_devoe,
	o => \o_ew_units_b~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\o_ew_units_c~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst5|c~0_combout\,
	devoe => ww_devoe,
	o => \o_ew_units_c~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\o_ew_units_d~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst5|d~0_combout\,
	devoe => ww_devoe,
	o => \o_ew_units_d~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\o_ew_units_e~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst5|e~0_combout\,
	devoe => ww_devoe,
	o => \o_ew_units_e~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\o_ew_units_f~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst5|f~0_combout\,
	devoe => ww_devoe,
	o => \o_ew_units_f~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\o_ew_units_g~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst5|g~0_combout\,
	devoe => ww_devoe,
	o => \o_ew_units_g~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\o_ns_tens_a~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst6|a~0_combout\,
	devoe => ww_devoe,
	o => \o_ns_tens_a~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\o_ns_tens_b~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst6|b~0_combout\,
	devoe => ww_devoe,
	o => \o_ns_tens_b~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\o_ns_tens_c~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst6|c~0_combout\,
	devoe => ww_devoe,
	o => \o_ns_tens_c~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\o_ns_tens_d~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst6|d~0_combout\,
	devoe => ww_devoe,
	o => \o_ns_tens_d~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\o_ns_tens_e~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst6|e~0_combout\,
	devoe => ww_devoe,
	o => \o_ns_tens_e~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\o_ns_tens_f~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst6|f~0_combout\,
	devoe => ww_devoe,
	o => \o_ns_tens_f~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\o_ns_tens_g~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst6|g~0_combout\,
	devoe => ww_devoe,
	o => \o_ns_tens_g~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\o_ns_units_a~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst7|a~0_combout\,
	devoe => ww_devoe,
	o => \o_ns_units_a~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\o_ns_units_b~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst7|b~0_combout\,
	devoe => ww_devoe,
	o => \o_ns_units_b~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\o_ns_units_c~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst7|c~0_combout\,
	devoe => ww_devoe,
	o => \o_ns_units_c~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\o_ns_units_d~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst7|d~0_combout\,
	devoe => ww_devoe,
	o => \o_ns_units_d~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\o_ns_units_e~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst7|e~0_combout\,
	devoe => ww_devoe,
	o => \o_ns_units_e~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\o_ns_units_f~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst7|f~0_combout\,
	devoe => ww_devoe,
	o => \o_ns_units_f~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\o_ns_units_g~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst7|g~0_combout\,
	devoe => ww_devoe,
	o => \o_ns_units_g~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\i_sys_clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sys_clk,
	o => \i_sys_clk~input_o\);

-- Location: CLKCTRL_G9
\i_sys_clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_sys_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_sys_clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y25_N0
\b2v_inst8|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Add0~0_combout\ = \b2v_inst8|r_div_count\(0) $ (VCC)
-- \b2v_inst8|Add0~1\ = CARRY(\b2v_inst8|r_div_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|r_div_count\(0),
	datad => VCC,
	combout => \b2v_inst8|Add0~0_combout\,
	cout => \b2v_inst8|Add0~1\);

-- Location: IOIBUF_X0_Y25_N1
\i_sys_rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sys_rst,
	o => \i_sys_rst~input_o\);

-- Location: FF_X1_Y25_N1
\b2v_inst8|r_div_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_sys_clk~inputclkctrl_outclk\,
	d => \b2v_inst8|Add0~0_combout\,
	clrn => \ALT_INV_i_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|r_div_count\(0));

-- Location: LCCOMB_X1_Y25_N2
\b2v_inst8|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Add0~2_combout\ = (\b2v_inst8|r_div_count\(1) & (!\b2v_inst8|Add0~1\)) # (!\b2v_inst8|r_div_count\(1) & ((\b2v_inst8|Add0~1\) # (GND)))
-- \b2v_inst8|Add0~3\ = CARRY((!\b2v_inst8|Add0~1\) # (!\b2v_inst8|r_div_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|r_div_count\(1),
	datad => VCC,
	cin => \b2v_inst8|Add0~1\,
	combout => \b2v_inst8|Add0~2_combout\,
	cout => \b2v_inst8|Add0~3\);

-- Location: FF_X1_Y25_N3
\b2v_inst8|r_div_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_sys_clk~inputclkctrl_outclk\,
	d => \b2v_inst8|Add0~2_combout\,
	clrn => \ALT_INV_i_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|r_div_count\(1));

-- Location: LCCOMB_X1_Y25_N4
\b2v_inst8|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Add0~4_combout\ = (\b2v_inst8|r_div_count\(2) & (\b2v_inst8|Add0~3\ $ (GND))) # (!\b2v_inst8|r_div_count\(2) & (!\b2v_inst8|Add0~3\ & VCC))
-- \b2v_inst8|Add0~5\ = CARRY((\b2v_inst8|r_div_count\(2) & !\b2v_inst8|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|r_div_count\(2),
	datad => VCC,
	cin => \b2v_inst8|Add0~3\,
	combout => \b2v_inst8|Add0~4_combout\,
	cout => \b2v_inst8|Add0~5\);

-- Location: FF_X1_Y25_N5
\b2v_inst8|r_div_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_sys_clk~inputclkctrl_outclk\,
	d => \b2v_inst8|Add0~4_combout\,
	clrn => \ALT_INV_i_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|r_div_count\(2));

-- Location: LCCOMB_X1_Y25_N6
\b2v_inst8|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Add0~6_combout\ = (\b2v_inst8|r_div_count\(3) & (!\b2v_inst8|Add0~5\)) # (!\b2v_inst8|r_div_count\(3) & ((\b2v_inst8|Add0~5\) # (GND)))
-- \b2v_inst8|Add0~7\ = CARRY((!\b2v_inst8|Add0~5\) # (!\b2v_inst8|r_div_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|r_div_count\(3),
	datad => VCC,
	cin => \b2v_inst8|Add0~5\,
	combout => \b2v_inst8|Add0~6_combout\,
	cout => \b2v_inst8|Add0~7\);

-- Location: FF_X1_Y25_N7
\b2v_inst8|r_div_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_sys_clk~inputclkctrl_outclk\,
	d => \b2v_inst8|Add0~6_combout\,
	clrn => \ALT_INV_i_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|r_div_count\(3));

-- Location: LCCOMB_X1_Y25_N8
\b2v_inst8|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Add0~8_combout\ = (\b2v_inst8|r_div_count\(4) & (\b2v_inst8|Add0~7\ $ (GND))) # (!\b2v_inst8|r_div_count\(4) & (!\b2v_inst8|Add0~7\ & VCC))
-- \b2v_inst8|Add0~9\ = CARRY((\b2v_inst8|r_div_count\(4) & !\b2v_inst8|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|r_div_count\(4),
	datad => VCC,
	cin => \b2v_inst8|Add0~7\,
	combout => \b2v_inst8|Add0~8_combout\,
	cout => \b2v_inst8|Add0~9\);

-- Location: FF_X1_Y25_N9
\b2v_inst8|r_div_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_sys_clk~inputclkctrl_outclk\,
	d => \b2v_inst8|Add0~8_combout\,
	clrn => \ALT_INV_i_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|r_div_count\(4));

-- Location: LCCOMB_X1_Y25_N10
\b2v_inst8|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Add0~10_combout\ = (\b2v_inst8|r_div_count\(5) & (!\b2v_inst8|Add0~9\)) # (!\b2v_inst8|r_div_count\(5) & ((\b2v_inst8|Add0~9\) # (GND)))
-- \b2v_inst8|Add0~11\ = CARRY((!\b2v_inst8|Add0~9\) # (!\b2v_inst8|r_div_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|r_div_count\(5),
	datad => VCC,
	cin => \b2v_inst8|Add0~9\,
	combout => \b2v_inst8|Add0~10_combout\,
	cout => \b2v_inst8|Add0~11\);

-- Location: LCCOMB_X2_Y25_N20
\b2v_inst8|r_div_count~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|r_div_count~11_combout\ = (\b2v_inst8|Add0~10_combout\ & !\b2v_inst8|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|Add0~10_combout\,
	datad => \b2v_inst8|Equal0~10_combout\,
	combout => \b2v_inst8|r_div_count~11_combout\);

-- Location: FF_X2_Y25_N21
\b2v_inst8|r_div_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_sys_clk~inputclkctrl_outclk\,
	d => \b2v_inst8|r_div_count~11_combout\,
	clrn => \ALT_INV_i_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|r_div_count\(5));

-- Location: LCCOMB_X1_Y25_N12
\b2v_inst8|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Add0~12_combout\ = (\b2v_inst8|r_div_count\(6) & (\b2v_inst8|Add0~11\ $ (GND))) # (!\b2v_inst8|r_div_count\(6) & (!\b2v_inst8|Add0~11\ & VCC))
-- \b2v_inst8|Add0~13\ = CARRY((\b2v_inst8|r_div_count\(6) & !\b2v_inst8|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|r_div_count\(6),
	datad => VCC,
	cin => \b2v_inst8|Add0~11\,
	combout => \b2v_inst8|Add0~12_combout\,
	cout => \b2v_inst8|Add0~13\);

-- Location: FF_X1_Y25_N13
\b2v_inst8|r_div_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_sys_clk~inputclkctrl_outclk\,
	d => \b2v_inst8|Add0~12_combout\,
	clrn => \ALT_INV_i_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|r_div_count\(6));

-- Location: LCCOMB_X1_Y25_N14
\b2v_inst8|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Add0~14_combout\ = (\b2v_inst8|r_div_count\(7) & (!\b2v_inst8|Add0~13\)) # (!\b2v_inst8|r_div_count\(7) & ((\b2v_inst8|Add0~13\) # (GND)))
-- \b2v_inst8|Add0~15\ = CARRY((!\b2v_inst8|Add0~13\) # (!\b2v_inst8|r_div_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|r_div_count\(7),
	datad => VCC,
	cin => \b2v_inst8|Add0~13\,
	combout => \b2v_inst8|Add0~14_combout\,
	cout => \b2v_inst8|Add0~15\);

-- Location: FF_X1_Y25_N15
\b2v_inst8|r_div_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_sys_clk~inputclkctrl_outclk\,
	d => \b2v_inst8|Add0~14_combout\,
	clrn => \ALT_INV_i_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|r_div_count\(7));

-- Location: LCCOMB_X2_Y25_N30
\b2v_inst8|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Equal0~8_combout\ = (!\b2v_inst8|r_div_count\(6) & (!\b2v_inst8|r_div_count\(5) & (!\b2v_inst8|r_div_count\(7) & \b2v_inst8|r_div_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|r_div_count\(6),
	datab => \b2v_inst8|r_div_count\(5),
	datac => \b2v_inst8|r_div_count\(7),
	datad => \b2v_inst8|r_div_count\(4),
	combout => \b2v_inst8|Equal0~8_combout\);

-- Location: LCCOMB_X2_Y25_N4
\b2v_inst8|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Equal0~9_combout\ = (\b2v_inst8|r_div_count\(0) & (\b2v_inst8|r_div_count\(2) & (\b2v_inst8|r_div_count\(3) & \b2v_inst8|r_div_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|r_div_count\(0),
	datab => \b2v_inst8|r_div_count\(2),
	datac => \b2v_inst8|r_div_count\(3),
	datad => \b2v_inst8|r_div_count\(1),
	combout => \b2v_inst8|Equal0~9_combout\);

-- Location: LCCOMB_X1_Y25_N16
\b2v_inst8|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Add0~16_combout\ = (\b2v_inst8|r_div_count\(8) & (\b2v_inst8|Add0~15\ $ (GND))) # (!\b2v_inst8|r_div_count\(8) & (!\b2v_inst8|Add0~15\ & VCC))
-- \b2v_inst8|Add0~17\ = CARRY((\b2v_inst8|r_div_count\(8) & !\b2v_inst8|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|r_div_count\(8),
	datad => VCC,
	cin => \b2v_inst8|Add0~15\,
	combout => \b2v_inst8|Add0~16_combout\,
	cout => \b2v_inst8|Add0~17\);

-- Location: FF_X1_Y25_N17
\b2v_inst8|r_div_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_sys_clk~inputclkctrl_outclk\,
	d => \b2v_inst8|Add0~16_combout\,
	clrn => \ALT_INV_i_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|r_div_count\(8));

-- Location: LCCOMB_X1_Y25_N18
\b2v_inst8|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Add0~18_combout\ = (\b2v_inst8|r_div_count\(9) & (!\b2v_inst8|Add0~17\)) # (!\b2v_inst8|r_div_count\(9) & ((\b2v_inst8|Add0~17\) # (GND)))
-- \b2v_inst8|Add0~19\ = CARRY((!\b2v_inst8|Add0~17\) # (!\b2v_inst8|r_div_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|r_div_count\(9),
	datad => VCC,
	cin => \b2v_inst8|Add0~17\,
	combout => \b2v_inst8|Add0~18_combout\,
	cout => \b2v_inst8|Add0~19\);

-- Location: FF_X1_Y25_N19
\b2v_inst8|r_div_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_sys_clk~inputclkctrl_outclk\,
	d => \b2v_inst8|Add0~18_combout\,
	clrn => \ALT_INV_i_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|r_div_count\(9));

-- Location: LCCOMB_X1_Y25_N20
\b2v_inst8|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Add0~20_combout\ = (\b2v_inst8|r_div_count\(10) & (\b2v_inst8|Add0~19\ $ (GND))) # (!\b2v_inst8|r_div_count\(10) & (!\b2v_inst8|Add0~19\ & VCC))
-- \b2v_inst8|Add0~21\ = CARRY((\b2v_inst8|r_div_count\(10) & !\b2v_inst8|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|r_div_count\(10),
	datad => VCC,
	cin => \b2v_inst8|Add0~19\,
	combout => \b2v_inst8|Add0~20_combout\,
	cout => \b2v_inst8|Add0~21\);

-- Location: LCCOMB_X2_Y25_N14
\b2v_inst8|r_div_count~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|r_div_count~10_combout\ = (!\b2v_inst8|Equal0~10_combout\ & \b2v_inst8|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|Equal0~10_combout\,
	datad => \b2v_inst8|Add0~20_combout\,
	combout => \b2v_inst8|r_div_count~10_combout\);

-- Location: FF_X2_Y25_N15
\b2v_inst8|r_div_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_sys_clk~inputclkctrl_outclk\,
	d => \b2v_inst8|r_div_count~10_combout\,
	clrn => \ALT_INV_i_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|r_div_count\(10));

-- Location: LCCOMB_X1_Y25_N22
\b2v_inst8|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Add0~22_combout\ = (\b2v_inst8|r_div_count\(11) & (!\b2v_inst8|Add0~21\)) # (!\b2v_inst8|r_div_count\(11) & ((\b2v_inst8|Add0~21\) # (GND)))
-- \b2v_inst8|Add0~23\ = CARRY((!\b2v_inst8|Add0~21\) # (!\b2v_inst8|r_div_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|r_div_count\(11),
	datad => VCC,
	cin => \b2v_inst8|Add0~21\,
	combout => \b2v_inst8|Add0~22_combout\,
	cout => \b2v_inst8|Add0~23\);

-- Location: LCCOMB_X2_Y25_N28
\b2v_inst8|r_div_count~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|r_div_count~9_combout\ = (!\b2v_inst8|Equal0~10_combout\ & \b2v_inst8|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|Equal0~10_combout\,
	datad => \b2v_inst8|Add0~22_combout\,
	combout => \b2v_inst8|r_div_count~9_combout\);

-- Location: FF_X2_Y25_N29
\b2v_inst8|r_div_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_sys_clk~inputclkctrl_outclk\,
	d => \b2v_inst8|r_div_count~9_combout\,
	clrn => \ALT_INV_i_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|r_div_count\(11));

-- Location: LCCOMB_X1_Y25_N24
\b2v_inst8|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Add0~24_combout\ = (\b2v_inst8|r_div_count\(12) & (\b2v_inst8|Add0~23\ $ (GND))) # (!\b2v_inst8|r_div_count\(12) & (!\b2v_inst8|Add0~23\ & VCC))
-- \b2v_inst8|Add0~25\ = CARRY((\b2v_inst8|r_div_count\(12) & !\b2v_inst8|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|r_div_count\(12),
	datad => VCC,
	cin => \b2v_inst8|Add0~23\,
	combout => \b2v_inst8|Add0~24_combout\,
	cout => \b2v_inst8|Add0~25\);

-- Location: LCCOMB_X2_Y25_N12
\b2v_inst8|r_div_count~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|r_div_count~8_combout\ = (!\b2v_inst8|Equal0~10_combout\ & \b2v_inst8|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|Equal0~10_combout\,
	datad => \b2v_inst8|Add0~24_combout\,
	combout => \b2v_inst8|r_div_count~8_combout\);

-- Location: FF_X2_Y25_N13
\b2v_inst8|r_div_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_sys_clk~inputclkctrl_outclk\,
	d => \b2v_inst8|r_div_count~8_combout\,
	clrn => \ALT_INV_i_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|r_div_count\(12));

-- Location: LCCOMB_X1_Y25_N26
\b2v_inst8|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Add0~26_combout\ = (\b2v_inst8|r_div_count\(13) & (!\b2v_inst8|Add0~25\)) # (!\b2v_inst8|r_div_count\(13) & ((\b2v_inst8|Add0~25\) # (GND)))
-- \b2v_inst8|Add0~27\ = CARRY((!\b2v_inst8|Add0~25\) # (!\b2v_inst8|r_div_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|r_div_count\(13),
	datad => VCC,
	cin => \b2v_inst8|Add0~25\,
	combout => \b2v_inst8|Add0~26_combout\,
	cout => \b2v_inst8|Add0~27\);

-- Location: LCCOMB_X2_Y25_N18
\b2v_inst8|r_div_count~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|r_div_count~7_combout\ = (\b2v_inst8|Add0~26_combout\ & !\b2v_inst8|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst8|Add0~26_combout\,
	datad => \b2v_inst8|Equal0~10_combout\,
	combout => \b2v_inst8|r_div_count~7_combout\);

-- Location: FF_X2_Y25_N19
\b2v_inst8|r_div_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_sys_clk~inputclkctrl_outclk\,
	d => \b2v_inst8|r_div_count~7_combout\,
	clrn => \ALT_INV_i_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|r_div_count\(13));

-- Location: LCCOMB_X1_Y25_N28
\b2v_inst8|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Add0~28_combout\ = (\b2v_inst8|r_div_count\(14) & (\b2v_inst8|Add0~27\ $ (GND))) # (!\b2v_inst8|r_div_count\(14) & (!\b2v_inst8|Add0~27\ & VCC))
-- \b2v_inst8|Add0~29\ = CARRY((\b2v_inst8|r_div_count\(14) & !\b2v_inst8|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|r_div_count\(14),
	datad => VCC,
	cin => \b2v_inst8|Add0~27\,
	combout => \b2v_inst8|Add0~28_combout\,
	cout => \b2v_inst8|Add0~29\);

-- Location: FF_X1_Y25_N29
\b2v_inst8|r_div_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_sys_clk~inputclkctrl_outclk\,
	d => \b2v_inst8|Add0~28_combout\,
	clrn => \ALT_INV_i_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|r_div_count\(14));

-- Location: LCCOMB_X1_Y25_N30
\b2v_inst8|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Add0~30_combout\ = (\b2v_inst8|r_div_count\(15) & (!\b2v_inst8|Add0~29\)) # (!\b2v_inst8|r_div_count\(15) & ((\b2v_inst8|Add0~29\) # (GND)))
-- \b2v_inst8|Add0~31\ = CARRY((!\b2v_inst8|Add0~29\) # (!\b2v_inst8|r_div_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|r_div_count\(15),
	datad => VCC,
	cin => \b2v_inst8|Add0~29\,
	combout => \b2v_inst8|Add0~30_combout\,
	cout => \b2v_inst8|Add0~31\);

-- Location: LCCOMB_X2_Y25_N8
\b2v_inst8|r_div_count~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|r_div_count~6_combout\ = (!\b2v_inst8|Equal0~10_combout\ & \b2v_inst8|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|Equal0~10_combout\,
	datad => \b2v_inst8|Add0~30_combout\,
	combout => \b2v_inst8|r_div_count~6_combout\);

-- Location: FF_X2_Y25_N9
\b2v_inst8|r_div_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_sys_clk~inputclkctrl_outclk\,
	d => \b2v_inst8|r_div_count~6_combout\,
	clrn => \ALT_INV_i_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|r_div_count\(15));

-- Location: LCCOMB_X2_Y25_N22
\b2v_inst8|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Equal0~5_combout\ = (\b2v_inst8|r_div_count\(12) & (\b2v_inst8|r_div_count\(13) & (\b2v_inst8|r_div_count\(15) & !\b2v_inst8|r_div_count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|r_div_count\(12),
	datab => \b2v_inst8|r_div_count\(13),
	datac => \b2v_inst8|r_div_count\(15),
	datad => \b2v_inst8|r_div_count\(14),
	combout => \b2v_inst8|Equal0~5_combout\);

-- Location: LCCOMB_X2_Y25_N24
\b2v_inst8|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Equal0~6_combout\ = (!\b2v_inst8|r_div_count\(8) & !\b2v_inst8|r_div_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst8|r_div_count\(8),
	datad => \b2v_inst8|r_div_count\(9),
	combout => \b2v_inst8|Equal0~6_combout\);

-- Location: LCCOMB_X2_Y25_N26
\b2v_inst8|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Equal0~7_combout\ = (\b2v_inst8|r_div_count\(11) & (\b2v_inst8|r_div_count\(10) & (\b2v_inst8|Equal0~5_combout\ & \b2v_inst8|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|r_div_count\(11),
	datab => \b2v_inst8|r_div_count\(10),
	datac => \b2v_inst8|Equal0~5_combout\,
	datad => \b2v_inst8|Equal0~6_combout\,
	combout => \b2v_inst8|Equal0~7_combout\);

-- Location: LCCOMB_X1_Y24_N0
\b2v_inst8|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Add0~32_combout\ = (\b2v_inst8|r_div_count\(16) & (\b2v_inst8|Add0~31\ $ (GND))) # (!\b2v_inst8|r_div_count\(16) & (!\b2v_inst8|Add0~31\ & VCC))
-- \b2v_inst8|Add0~33\ = CARRY((\b2v_inst8|r_div_count\(16) & !\b2v_inst8|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|r_div_count\(16),
	datad => VCC,
	cin => \b2v_inst8|Add0~31\,
	combout => \b2v_inst8|Add0~32_combout\,
	cout => \b2v_inst8|Add0~33\);

-- Location: LCCOMB_X2_Y24_N10
\b2v_inst8|r_div_count[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|r_div_count[16]~feeder_combout\ = \b2v_inst8|Add0~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst8|Add0~32_combout\,
	combout => \b2v_inst8|r_div_count[16]~feeder_combout\);

-- Location: FF_X2_Y24_N11
\b2v_inst8|r_div_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_sys_clk~inputclkctrl_outclk\,
	d => \b2v_inst8|r_div_count[16]~feeder_combout\,
	clrn => \ALT_INV_i_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|r_div_count\(16));

-- Location: LCCOMB_X1_Y24_N2
\b2v_inst8|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Add0~34_combout\ = (\b2v_inst8|r_div_count\(17) & (!\b2v_inst8|Add0~33\)) # (!\b2v_inst8|r_div_count\(17) & ((\b2v_inst8|Add0~33\) # (GND)))
-- \b2v_inst8|Add0~35\ = CARRY((!\b2v_inst8|Add0~33\) # (!\b2v_inst8|r_div_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|r_div_count\(17),
	datad => VCC,
	cin => \b2v_inst8|Add0~33\,
	combout => \b2v_inst8|Add0~34_combout\,
	cout => \b2v_inst8|Add0~35\);

-- Location: LCCOMB_X2_Y24_N28
\b2v_inst8|r_div_count~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|r_div_count~5_combout\ = (!\b2v_inst8|Equal0~10_combout\ & \b2v_inst8|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|Equal0~10_combout\,
	datad => \b2v_inst8|Add0~34_combout\,
	combout => \b2v_inst8|r_div_count~5_combout\);

-- Location: FF_X2_Y24_N29
\b2v_inst8|r_div_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_sys_clk~inputclkctrl_outclk\,
	d => \b2v_inst8|r_div_count~5_combout\,
	clrn => \ALT_INV_i_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|r_div_count\(17));

-- Location: LCCOMB_X1_Y24_N4
\b2v_inst8|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Add0~36_combout\ = (\b2v_inst8|r_div_count\(18) & (\b2v_inst8|Add0~35\ $ (GND))) # (!\b2v_inst8|r_div_count\(18) & (!\b2v_inst8|Add0~35\ & VCC))
-- \b2v_inst8|Add0~37\ = CARRY((\b2v_inst8|r_div_count\(18) & !\b2v_inst8|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|r_div_count\(18),
	datad => VCC,
	cin => \b2v_inst8|Add0~35\,
	combout => \b2v_inst8|Add0~36_combout\,
	cout => \b2v_inst8|Add0~37\);

-- Location: LCCOMB_X2_Y24_N26
\b2v_inst8|r_div_count~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|r_div_count~4_combout\ = (\b2v_inst8|Add0~36_combout\ & !\b2v_inst8|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst8|Add0~36_combout\,
	datad => \b2v_inst8|Equal0~10_combout\,
	combout => \b2v_inst8|r_div_count~4_combout\);

-- Location: FF_X2_Y24_N27
\b2v_inst8|r_div_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_sys_clk~inputclkctrl_outclk\,
	d => \b2v_inst8|r_div_count~4_combout\,
	clrn => \ALT_INV_i_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|r_div_count\(18));

-- Location: LCCOMB_X1_Y24_N6
\b2v_inst8|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Add0~38_combout\ = (\b2v_inst8|r_div_count\(19) & (!\b2v_inst8|Add0~37\)) # (!\b2v_inst8|r_div_count\(19) & ((\b2v_inst8|Add0~37\) # (GND)))
-- \b2v_inst8|Add0~39\ = CARRY((!\b2v_inst8|Add0~37\) # (!\b2v_inst8|r_div_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|r_div_count\(19),
	datad => VCC,
	cin => \b2v_inst8|Add0~37\,
	combout => \b2v_inst8|Add0~38_combout\,
	cout => \b2v_inst8|Add0~39\);

-- Location: LCCOMB_X2_Y24_N24
\b2v_inst8|r_div_count~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|r_div_count~3_combout\ = (\b2v_inst8|Add0~38_combout\ & !\b2v_inst8|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst8|Add0~38_combout\,
	datad => \b2v_inst8|Equal0~10_combout\,
	combout => \b2v_inst8|r_div_count~3_combout\);

-- Location: FF_X2_Y24_N25
\b2v_inst8|r_div_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_sys_clk~inputclkctrl_outclk\,
	d => \b2v_inst8|r_div_count~3_combout\,
	clrn => \ALT_INV_i_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|r_div_count\(19));

-- Location: LCCOMB_X1_Y24_N8
\b2v_inst8|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Add0~40_combout\ = (\b2v_inst8|r_div_count\(20) & (\b2v_inst8|Add0~39\ $ (GND))) # (!\b2v_inst8|r_div_count\(20) & (!\b2v_inst8|Add0~39\ & VCC))
-- \b2v_inst8|Add0~41\ = CARRY((\b2v_inst8|r_div_count\(20) & !\b2v_inst8|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|r_div_count\(20),
	datad => VCC,
	cin => \b2v_inst8|Add0~39\,
	combout => \b2v_inst8|Add0~40_combout\,
	cout => \b2v_inst8|Add0~41\);

-- Location: LCCOMB_X2_Y24_N12
\b2v_inst8|r_div_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|r_div_count~2_combout\ = (!\b2v_inst8|Equal0~10_combout\ & \b2v_inst8|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|Equal0~10_combout\,
	datad => \b2v_inst8|Add0~40_combout\,
	combout => \b2v_inst8|r_div_count~2_combout\);

-- Location: FF_X2_Y24_N13
\b2v_inst8|r_div_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_sys_clk~inputclkctrl_outclk\,
	d => \b2v_inst8|r_div_count~2_combout\,
	clrn => \ALT_INV_i_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|r_div_count\(20));

-- Location: LCCOMB_X1_Y24_N10
\b2v_inst8|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Add0~42_combout\ = (\b2v_inst8|r_div_count\(21) & (!\b2v_inst8|Add0~41\)) # (!\b2v_inst8|r_div_count\(21) & ((\b2v_inst8|Add0~41\) # (GND)))
-- \b2v_inst8|Add0~43\ = CARRY((!\b2v_inst8|Add0~41\) # (!\b2v_inst8|r_div_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|r_div_count\(21),
	datad => VCC,
	cin => \b2v_inst8|Add0~41\,
	combout => \b2v_inst8|Add0~42_combout\,
	cout => \b2v_inst8|Add0~43\);

-- Location: LCCOMB_X2_Y24_N14
\b2v_inst8|r_div_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|r_div_count~1_combout\ = (!\b2v_inst8|Equal0~10_combout\ & \b2v_inst8|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|Equal0~10_combout\,
	datad => \b2v_inst8|Add0~42_combout\,
	combout => \b2v_inst8|r_div_count~1_combout\);

-- Location: FF_X2_Y24_N15
\b2v_inst8|r_div_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_sys_clk~inputclkctrl_outclk\,
	d => \b2v_inst8|r_div_count~1_combout\,
	clrn => \ALT_INV_i_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|r_div_count\(21));

-- Location: LCCOMB_X1_Y24_N12
\b2v_inst8|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Add0~44_combout\ = (\b2v_inst8|r_div_count\(22) & (\b2v_inst8|Add0~43\ $ (GND))) # (!\b2v_inst8|r_div_count\(22) & (!\b2v_inst8|Add0~43\ & VCC))
-- \b2v_inst8|Add0~45\ = CARRY((\b2v_inst8|r_div_count\(22) & !\b2v_inst8|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|r_div_count\(22),
	datad => VCC,
	cin => \b2v_inst8|Add0~43\,
	combout => \b2v_inst8|Add0~44_combout\,
	cout => \b2v_inst8|Add0~45\);

-- Location: FF_X1_Y24_N13
\b2v_inst8|r_div_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_sys_clk~inputclkctrl_outclk\,
	d => \b2v_inst8|Add0~44_combout\,
	clrn => \ALT_INV_i_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|r_div_count\(22));

-- Location: LCCOMB_X1_Y24_N14
\b2v_inst8|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Add0~46_combout\ = (\b2v_inst8|r_div_count\(23) & (!\b2v_inst8|Add0~45\)) # (!\b2v_inst8|r_div_count\(23) & ((\b2v_inst8|Add0~45\) # (GND)))
-- \b2v_inst8|Add0~47\ = CARRY((!\b2v_inst8|Add0~45\) # (!\b2v_inst8|r_div_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|r_div_count\(23),
	datad => VCC,
	cin => \b2v_inst8|Add0~45\,
	combout => \b2v_inst8|Add0~46_combout\,
	cout => \b2v_inst8|Add0~47\);

-- Location: LCCOMB_X2_Y24_N20
\b2v_inst8|r_div_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|r_div_count~0_combout\ = (!\b2v_inst8|Equal0~10_combout\ & \b2v_inst8|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|Equal0~10_combout\,
	datad => \b2v_inst8|Add0~46_combout\,
	combout => \b2v_inst8|r_div_count~0_combout\);

-- Location: FF_X2_Y24_N21
\b2v_inst8|r_div_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_sys_clk~inputclkctrl_outclk\,
	d => \b2v_inst8|r_div_count~0_combout\,
	clrn => \ALT_INV_i_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|r_div_count\(23));

-- Location: LCCOMB_X2_Y24_N22
\b2v_inst8|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Equal0~2_combout\ = (\b2v_inst8|r_div_count\(20) & (\b2v_inst8|r_div_count\(23) & (\b2v_inst8|r_div_count\(21) & !\b2v_inst8|r_div_count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|r_div_count\(20),
	datab => \b2v_inst8|r_div_count\(23),
	datac => \b2v_inst8|r_div_count\(21),
	datad => \b2v_inst8|r_div_count\(22),
	combout => \b2v_inst8|Equal0~2_combout\);

-- Location: LCCOMB_X2_Y24_N8
\b2v_inst8|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Equal0~3_combout\ = (!\b2v_inst8|r_div_count\(16) & (\b2v_inst8|r_div_count\(19) & (\b2v_inst8|r_div_count\(18) & \b2v_inst8|r_div_count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|r_div_count\(16),
	datab => \b2v_inst8|r_div_count\(19),
	datac => \b2v_inst8|r_div_count\(18),
	datad => \b2v_inst8|r_div_count\(17),
	combout => \b2v_inst8|Equal0~3_combout\);

-- Location: LCCOMB_X1_Y24_N16
\b2v_inst8|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Add0~48_combout\ = (\b2v_inst8|r_div_count\(24) & (\b2v_inst8|Add0~47\ $ (GND))) # (!\b2v_inst8|r_div_count\(24) & (!\b2v_inst8|Add0~47\ & VCC))
-- \b2v_inst8|Add0~49\ = CARRY((\b2v_inst8|r_div_count\(24) & !\b2v_inst8|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|r_div_count\(24),
	datad => VCC,
	cin => \b2v_inst8|Add0~47\,
	combout => \b2v_inst8|Add0~48_combout\,
	cout => \b2v_inst8|Add0~49\);

-- Location: FF_X1_Y24_N17
\b2v_inst8|r_div_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_sys_clk~inputclkctrl_outclk\,
	d => \b2v_inst8|Add0~48_combout\,
	clrn => \ALT_INV_i_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|r_div_count\(24));

-- Location: LCCOMB_X1_Y24_N18
\b2v_inst8|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Add0~50_combout\ = (\b2v_inst8|r_div_count\(25) & (!\b2v_inst8|Add0~49\)) # (!\b2v_inst8|r_div_count\(25) & ((\b2v_inst8|Add0~49\) # (GND)))
-- \b2v_inst8|Add0~51\ = CARRY((!\b2v_inst8|Add0~49\) # (!\b2v_inst8|r_div_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|r_div_count\(25),
	datad => VCC,
	cin => \b2v_inst8|Add0~49\,
	combout => \b2v_inst8|Add0~50_combout\,
	cout => \b2v_inst8|Add0~51\);

-- Location: FF_X1_Y24_N19
\b2v_inst8|r_div_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_sys_clk~inputclkctrl_outclk\,
	d => \b2v_inst8|Add0~50_combout\,
	clrn => \ALT_INV_i_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|r_div_count\(25));

-- Location: LCCOMB_X1_Y24_N20
\b2v_inst8|Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Add0~52_combout\ = (\b2v_inst8|r_div_count\(26) & (\b2v_inst8|Add0~51\ $ (GND))) # (!\b2v_inst8|r_div_count\(26) & (!\b2v_inst8|Add0~51\ & VCC))
-- \b2v_inst8|Add0~53\ = CARRY((\b2v_inst8|r_div_count\(26) & !\b2v_inst8|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|r_div_count\(26),
	datad => VCC,
	cin => \b2v_inst8|Add0~51\,
	combout => \b2v_inst8|Add0~52_combout\,
	cout => \b2v_inst8|Add0~53\);

-- Location: FF_X1_Y24_N21
\b2v_inst8|r_div_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_sys_clk~inputclkctrl_outclk\,
	d => \b2v_inst8|Add0~52_combout\,
	clrn => \ALT_INV_i_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|r_div_count\(26));

-- Location: LCCOMB_X1_Y24_N22
\b2v_inst8|Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Add0~54_combout\ = (\b2v_inst8|r_div_count\(27) & (!\b2v_inst8|Add0~53\)) # (!\b2v_inst8|r_div_count\(27) & ((\b2v_inst8|Add0~53\) # (GND)))
-- \b2v_inst8|Add0~55\ = CARRY((!\b2v_inst8|Add0~53\) # (!\b2v_inst8|r_div_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|r_div_count\(27),
	datad => VCC,
	cin => \b2v_inst8|Add0~53\,
	combout => \b2v_inst8|Add0~54_combout\,
	cout => \b2v_inst8|Add0~55\);

-- Location: FF_X1_Y24_N23
\b2v_inst8|r_div_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_sys_clk~inputclkctrl_outclk\,
	d => \b2v_inst8|Add0~54_combout\,
	clrn => \ALT_INV_i_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|r_div_count\(27));

-- Location: LCCOMB_X2_Y24_N30
\b2v_inst8|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Equal0~1_combout\ = (!\b2v_inst8|r_div_count\(24) & (!\b2v_inst8|r_div_count\(26) & (!\b2v_inst8|r_div_count\(27) & !\b2v_inst8|r_div_count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|r_div_count\(24),
	datab => \b2v_inst8|r_div_count\(26),
	datac => \b2v_inst8|r_div_count\(27),
	datad => \b2v_inst8|r_div_count\(25),
	combout => \b2v_inst8|Equal0~1_combout\);

-- Location: LCCOMB_X1_Y24_N24
\b2v_inst8|Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Add0~56_combout\ = (\b2v_inst8|r_div_count\(28) & (\b2v_inst8|Add0~55\ $ (GND))) # (!\b2v_inst8|r_div_count\(28) & (!\b2v_inst8|Add0~55\ & VCC))
-- \b2v_inst8|Add0~57\ = CARRY((\b2v_inst8|r_div_count\(28) & !\b2v_inst8|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|r_div_count\(28),
	datad => VCC,
	cin => \b2v_inst8|Add0~55\,
	combout => \b2v_inst8|Add0~56_combout\,
	cout => \b2v_inst8|Add0~57\);

-- Location: FF_X1_Y24_N25
\b2v_inst8|r_div_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_sys_clk~inputclkctrl_outclk\,
	d => \b2v_inst8|Add0~56_combout\,
	clrn => \ALT_INV_i_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|r_div_count\(28));

-- Location: LCCOMB_X1_Y24_N26
\b2v_inst8|Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Add0~58_combout\ = (\b2v_inst8|r_div_count\(29) & (!\b2v_inst8|Add0~57\)) # (!\b2v_inst8|r_div_count\(29) & ((\b2v_inst8|Add0~57\) # (GND)))
-- \b2v_inst8|Add0~59\ = CARRY((!\b2v_inst8|Add0~57\) # (!\b2v_inst8|r_div_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|r_div_count\(29),
	datad => VCC,
	cin => \b2v_inst8|Add0~57\,
	combout => \b2v_inst8|Add0~58_combout\,
	cout => \b2v_inst8|Add0~59\);

-- Location: FF_X1_Y24_N27
\b2v_inst8|r_div_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_sys_clk~inputclkctrl_outclk\,
	d => \b2v_inst8|Add0~58_combout\,
	clrn => \ALT_INV_i_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|r_div_count\(29));

-- Location: LCCOMB_X1_Y24_N28
\b2v_inst8|Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Add0~60_combout\ = (\b2v_inst8|r_div_count\(30) & (\b2v_inst8|Add0~59\ $ (GND))) # (!\b2v_inst8|r_div_count\(30) & (!\b2v_inst8|Add0~59\ & VCC))
-- \b2v_inst8|Add0~61\ = CARRY((\b2v_inst8|r_div_count\(30) & !\b2v_inst8|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|r_div_count\(30),
	datad => VCC,
	cin => \b2v_inst8|Add0~59\,
	combout => \b2v_inst8|Add0~60_combout\,
	cout => \b2v_inst8|Add0~61\);

-- Location: FF_X1_Y24_N29
\b2v_inst8|r_div_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_sys_clk~inputclkctrl_outclk\,
	d => \b2v_inst8|Add0~60_combout\,
	clrn => \ALT_INV_i_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|r_div_count\(30));

-- Location: LCCOMB_X1_Y24_N30
\b2v_inst8|Add0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Add0~62_combout\ = \b2v_inst8|r_div_count\(31) $ (\b2v_inst8|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|r_div_count\(31),
	cin => \b2v_inst8|Add0~61\,
	combout => \b2v_inst8|Add0~62_combout\);

-- Location: FF_X1_Y24_N31
\b2v_inst8|r_div_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_sys_clk~inputclkctrl_outclk\,
	d => \b2v_inst8|Add0~62_combout\,
	clrn => \ALT_INV_i_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|r_div_count\(31));

-- Location: LCCOMB_X2_Y24_N16
\b2v_inst8|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Equal0~0_combout\ = (!\b2v_inst8|r_div_count\(28) & (!\b2v_inst8|r_div_count\(31) & (!\b2v_inst8|r_div_count\(29) & !\b2v_inst8|r_div_count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|r_div_count\(28),
	datab => \b2v_inst8|r_div_count\(31),
	datac => \b2v_inst8|r_div_count\(29),
	datad => \b2v_inst8|r_div_count\(30),
	combout => \b2v_inst8|Equal0~0_combout\);

-- Location: LCCOMB_X2_Y24_N6
\b2v_inst8|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Equal0~4_combout\ = (\b2v_inst8|Equal0~2_combout\ & (\b2v_inst8|Equal0~3_combout\ & (\b2v_inst8|Equal0~1_combout\ & \b2v_inst8|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|Equal0~2_combout\,
	datab => \b2v_inst8|Equal0~3_combout\,
	datac => \b2v_inst8|Equal0~1_combout\,
	datad => \b2v_inst8|Equal0~0_combout\,
	combout => \b2v_inst8|Equal0~4_combout\);

-- Location: LCCOMB_X2_Y25_N2
\b2v_inst8|Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Equal0~10_combout\ = (\b2v_inst8|Equal0~8_combout\ & (\b2v_inst8|Equal0~9_combout\ & (\b2v_inst8|Equal0~7_combout\ & \b2v_inst8|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|Equal0~8_combout\,
	datab => \b2v_inst8|Equal0~9_combout\,
	datac => \b2v_inst8|Equal0~7_combout\,
	datad => \b2v_inst8|Equal0~4_combout\,
	combout => \b2v_inst8|Equal0~10_combout\);

-- Location: LCCOMB_X3_Y26_N8
\b2v_inst8|r_div_clk~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|r_div_clk~0_combout\ = \b2v_inst8|r_div_clk~q\ $ (\b2v_inst8|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst8|r_div_clk~q\,
	datad => \b2v_inst8|Equal0~10_combout\,
	combout => \b2v_inst8|r_div_clk~0_combout\);

-- Location: FF_X3_Y26_N13
\b2v_inst8|r_div_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_sys_clk~inputclkctrl_outclk\,
	asdata => \b2v_inst8|r_div_clk~0_combout\,
	clrn => \ALT_INV_i_sys_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|r_div_clk~q\);

-- Location: IOIBUF_X0_Y26_N1
\i_sys_emergency~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sys_emergency,
	o => \i_sys_emergency~input_o\);

-- Location: CLKCTRL_G0
\b2v_inst8|r_div_clk~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \b2v_inst8|r_div_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \b2v_inst8|r_div_clk~clkctrl_outclk\);

-- Location: LCCOMB_X2_Y26_N28
\b2v_inst1|cout_units~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|cout_units~1_combout\ = (\b2v_inst1|Equal2~0_combout\ & (\b2v_inst|Equal0~0_combout\)) # (!\b2v_inst1|Equal2~0_combout\ & ((!\b2v_inst1|cout_units\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Equal0~0_combout\,
	datac => \b2v_inst1|cout_units\(0),
	datad => \b2v_inst1|Equal2~0_combout\,
	combout => \b2v_inst1|cout_units~1_combout\);

-- Location: FF_X2_Y26_N29
\b2v_inst1|cout_units[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst8|r_div_clk~clkctrl_outclk\,
	d => \b2v_inst1|cout_units~1_combout\,
	clrn => \ALT_INV_i_sys_rst~input_o\,
	ena => \ALT_INV_i_sys_emergency~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|cout_units\(0));

-- Location: LCCOMB_X4_Y26_N22
\b2v_inst1|cout_units~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|cout_units~4_combout\ = (\b2v_inst1|cout_units\(3) & ((\b2v_inst1|cout_units\(1)) # ((\b2v_inst1|cout_units\(2)) # (\b2v_inst1|cout_units\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|cout_units\(1),
	datab => \b2v_inst1|cout_units\(3),
	datac => \b2v_inst1|cout_units\(2),
	datad => \b2v_inst1|cout_units\(0),
	combout => \b2v_inst1|cout_units~4_combout\);

-- Location: LCCOMB_X3_Y26_N18
\b2v_inst1|cout_units~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|cout_units~5_combout\ = (\b2v_inst1|cout_units~4_combout\) # ((\b2v_inst|Equal0~0_combout\ & \b2v_inst1|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Equal0~0_combout\,
	datac => \b2v_inst1|Equal2~0_combout\,
	datad => \b2v_inst1|cout_units~4_combout\,
	combout => \b2v_inst1|cout_units~5_combout\);

-- Location: FF_X3_Y26_N19
\b2v_inst1|cout_units[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst8|r_div_clk~clkctrl_outclk\,
	d => \b2v_inst1|cout_units~5_combout\,
	clrn => \ALT_INV_i_sys_rst~input_o\,
	ena => \ALT_INV_i_sys_emergency~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|cout_units\(3));

-- Location: LCCOMB_X4_Y26_N0
\b2v_inst1|cout_units~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|cout_units~0_combout\ = (\b2v_inst1|cout_units\(0) & (((\b2v_inst1|cout_units\(1))))) # (!\b2v_inst1|cout_units\(0) & (!\b2v_inst1|cout_units\(1) & ((\b2v_inst1|cout_units\(3)) # (\b2v_inst1|cout_units\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|cout_units\(3),
	datab => \b2v_inst1|cout_units\(0),
	datac => \b2v_inst1|cout_units\(1),
	datad => \b2v_inst1|cout_units\(2),
	combout => \b2v_inst1|cout_units~0_combout\);

-- Location: FF_X4_Y26_N1
\b2v_inst1|cout_units[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst8|r_div_clk~clkctrl_outclk\,
	d => \b2v_inst1|cout_units~0_combout\,
	clrn => \ALT_INV_i_sys_rst~input_o\,
	ena => \ALT_INV_i_sys_emergency~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|cout_units\(1));

-- Location: LCCOMB_X1_Y26_N14
\b2v_inst1|cout_units~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|cout_units~2_combout\ = \b2v_inst1|cout_units\(2) $ (((\b2v_inst1|cout_units\(0)) # (\b2v_inst1|cout_units\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|cout_units\(0),
	datac => \b2v_inst1|cout_units\(1),
	datad => \b2v_inst1|cout_units\(2),
	combout => \b2v_inst1|cout_units~2_combout\);

-- Location: LCCOMB_X2_Y26_N6
\b2v_inst1|cout_units~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|cout_units~3_combout\ = (!\b2v_inst1|cout_units~2_combout\ & ((!\b2v_inst1|Equal2~0_combout\) # (!\b2v_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Equal0~0_combout\,
	datac => \b2v_inst1|Equal2~0_combout\,
	datad => \b2v_inst1|cout_units~2_combout\,
	combout => \b2v_inst1|cout_units~3_combout\);

-- Location: FF_X2_Y26_N7
\b2v_inst1|cout_units[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst8|r_div_clk~clkctrl_outclk\,
	d => \b2v_inst1|cout_units~3_combout\,
	clrn => \ALT_INV_i_sys_rst~input_o\,
	ena => \ALT_INV_i_sys_emergency~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|cout_units\(2));

-- Location: LCCOMB_X2_Y26_N26
\b2v_inst1|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|Equal2~0_combout\ = (!\b2v_inst1|cout_units\(2) & (!\b2v_inst1|cout_units\(0) & (!\b2v_inst1|cout_units\(1) & !\b2v_inst1|cout_units\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|cout_units\(2),
	datab => \b2v_inst1|cout_units\(0),
	datac => \b2v_inst1|cout_units\(1),
	datad => \b2v_inst1|cout_units\(3),
	combout => \b2v_inst1|Equal2~0_combout\);

-- Location: LCCOMB_X2_Y26_N2
\b2v_inst1|cout_tens~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|cout_tens~4_combout\ = (!\b2v_inst1|cout_tens\(0) & ((\b2v_inst|Equal0~0_combout\) # (!\b2v_inst1|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Equal0~0_combout\,
	datac => \b2v_inst1|cout_tens\(0),
	datad => \b2v_inst1|Equal2~0_combout\,
	combout => \b2v_inst1|cout_tens~4_combout\);

-- Location: LCCOMB_X2_Y26_N4
\b2v_inst1|cout_tens[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|cout_tens[3]~1_combout\ = (!\i_sys_emergency~input_o\ & !\b2v_inst1|cout_units\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_sys_emergency~input_o\,
	datad => \b2v_inst1|cout_units\(2),
	combout => \b2v_inst1|cout_tens[3]~1_combout\);

-- Location: LCCOMB_X2_Y26_N10
\b2v_inst1|cout_tens[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|cout_tens[3]~2_combout\ = (!\b2v_inst1|cout_units\(3) & (!\b2v_inst1|cout_units\(0) & (\b2v_inst1|cout_tens[3]~1_combout\ & !\b2v_inst1|cout_units\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|cout_units\(3),
	datab => \b2v_inst1|cout_units\(0),
	datac => \b2v_inst1|cout_tens[3]~1_combout\,
	datad => \b2v_inst1|cout_units\(1),
	combout => \b2v_inst1|cout_tens[3]~2_combout\);

-- Location: FF_X2_Y26_N3
\b2v_inst1|cout_tens[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst8|r_div_clk~clkctrl_outclk\,
	d => \b2v_inst1|cout_tens~4_combout\,
	clrn => \ALT_INV_i_sys_rst~input_o\,
	ena => \b2v_inst1|cout_tens[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|cout_tens\(0));

-- Location: LCCOMB_X2_Y26_N20
\b2v_inst1|cout_tens~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|cout_tens~3_combout\ = (\b2v_inst|Equal0~0_combout\ & (\b2v_inst1|cout_tens\(0) $ ((!\b2v_inst1|cout_tens\(1))))) # (!\b2v_inst|Equal0~0_combout\ & (!\b2v_inst1|Equal2~0_combout\ & (\b2v_inst1|cout_tens\(0) $ (!\b2v_inst1|cout_tens\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|cout_tens\(0),
	datab => \b2v_inst|Equal0~0_combout\,
	datac => \b2v_inst1|cout_tens\(1),
	datad => \b2v_inst1|Equal2~0_combout\,
	combout => \b2v_inst1|cout_tens~3_combout\);

-- Location: FF_X2_Y26_N21
\b2v_inst1|cout_tens[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst8|r_div_clk~clkctrl_outclk\,
	d => \b2v_inst1|cout_tens~3_combout\,
	clrn => \ALT_INV_i_sys_rst~input_o\,
	ena => \b2v_inst1|cout_tens[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|cout_tens\(1));

-- Location: LCCOMB_X2_Y26_N14
\b2v_inst|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~0_combout\ = \b2v_inst1|cout_tens\(2) $ (((!\b2v_inst1|cout_tens\(0) & !\b2v_inst1|cout_tens\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|cout_tens\(0),
	datac => \b2v_inst1|cout_tens\(2),
	datad => \b2v_inst1|cout_tens\(1),
	combout => \b2v_inst|Add0~0_combout\);

-- Location: FF_X2_Y26_N15
\b2v_inst1|cout_tens[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst8|r_div_clk~clkctrl_outclk\,
	d => \b2v_inst|Add0~0_combout\,
	clrn => \ALT_INV_i_sys_rst~input_o\,
	ena => \b2v_inst1|cout_tens[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|cout_tens\(2));

-- Location: LCCOMB_X5_Y26_N20
\b2v_inst|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal0~1_combout\ = (!\b2v_inst1|cout_tens\(1) & (!\b2v_inst1|cout_tens\(2) & !\b2v_inst1|cout_tens\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|cout_tens\(1),
	datac => \b2v_inst1|cout_tens\(2),
	datad => \b2v_inst1|cout_tens\(0),
	combout => \b2v_inst|Equal0~1_combout\);

-- Location: LCCOMB_X2_Y26_N8
\b2v_inst1|cout_tens~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|cout_tens~0_combout\ = (\b2v_inst1|cout_tens\(3) & ((!\b2v_inst|Equal0~1_combout\))) # (!\b2v_inst1|cout_tens\(3) & (!\b2v_inst1|Equal2~0_combout\ & \b2v_inst|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Equal2~0_combout\,
	datac => \b2v_inst1|cout_tens\(3),
	datad => \b2v_inst|Equal0~1_combout\,
	combout => \b2v_inst1|cout_tens~0_combout\);

-- Location: FF_X2_Y26_N9
\b2v_inst1|cout_tens[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst8|r_div_clk~clkctrl_outclk\,
	d => \b2v_inst1|cout_tens~0_combout\,
	clrn => \ALT_INV_i_sys_rst~input_o\,
	ena => \b2v_inst1|cout_tens[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|cout_tens\(3));

-- Location: LCCOMB_X2_Y26_N16
\b2v_inst|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal0~0_combout\ = (\b2v_inst1|cout_tens\(0)) # ((\b2v_inst1|cout_tens\(2)) # ((\b2v_inst1|cout_tens\(3)) # (\b2v_inst1|cout_tens\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|cout_tens\(0),
	datab => \b2v_inst1|cout_tens\(2),
	datac => \b2v_inst1|cout_tens\(3),
	datad => \b2v_inst1|cout_tens\(1),
	combout => \b2v_inst|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y26_N18
\b2v_inst|r_tim_tens_ew[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_tim_tens_ew[3]~3_combout\ = (\i_sys_emergency~input_o\) # (\i_sys_rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_sys_emergency~input_o\,
	datad => \i_sys_rst~input_o\,
	combout => \b2v_inst|r_tim_tens_ew[3]~3_combout\);

-- Location: LCCOMB_X2_Y26_N24
\b2v_inst1|r_tim_carry~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|r_tim_carry~0_combout\ = (!\b2v_inst1|cout_units\(2) & (\b2v_inst1|cout_units\(0) & (!\b2v_inst1|cout_units\(3) & !\b2v_inst1|cout_units\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|cout_units\(2),
	datab => \b2v_inst1|cout_units\(0),
	datac => \b2v_inst1|cout_units\(3),
	datad => \b2v_inst1|cout_units\(1),
	combout => \b2v_inst1|r_tim_carry~0_combout\);

-- Location: LCCOMB_X1_Y26_N24
\b2v_inst1|r_tim_carry~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|r_tim_carry~1_combout\ = (\b2v_inst|r_tim_tens_ew[3]~3_combout\ & (\b2v_inst1|r_tim_carry~q\)) # (!\b2v_inst|r_tim_tens_ew[3]~3_combout\ & (((!\b2v_inst|Equal0~0_combout\ & \b2v_inst1|r_tim_carry~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|r_tim_carry~q\,
	datab => \b2v_inst|Equal0~0_combout\,
	datac => \b2v_inst|r_tim_tens_ew[3]~3_combout\,
	datad => \b2v_inst1|r_tim_carry~0_combout\,
	combout => \b2v_inst1|r_tim_carry~1_combout\);

-- Location: LCCOMB_X1_Y26_N16
\b2v_inst1|r_tim_carry~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|r_tim_carry~feeder_combout\ = \b2v_inst1|r_tim_carry~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|r_tim_carry~1_combout\,
	combout => \b2v_inst1|r_tim_carry~feeder_combout\);

-- Location: FF_X1_Y26_N17
\b2v_inst1|r_tim_carry\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst8|r_div_clk~clkctrl_outclk\,
	d => \b2v_inst1|r_tim_carry~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|r_tim_carry~q\);

-- Location: LCCOMB_X1_Y26_N22
\b2v_inst|r_dir_flag~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_dir_flag~0_combout\ = !\b2v_inst|r_dir_flag~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|r_dir_flag~q\,
	combout => \b2v_inst|r_dir_flag~0_combout\);

-- Location: FF_X1_Y26_N23
\b2v_inst|r_dir_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst1|ALT_INV_r_tim_carry~q\,
	d => \b2v_inst|r_dir_flag~0_combout\,
	clrn => \ALT_INV_i_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|r_dir_flag~q\);

-- Location: LCCOMB_X1_Y26_N26
\b2v_inst|r_ew_red~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_ew_red~0_combout\ = (\i_sys_emergency~input_o\ & (\b2v_inst8|r_div_clk~q\)) # (!\i_sys_emergency~input_o\ & ((!\b2v_inst|r_dir_flag~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|r_div_clk~q\,
	datab => \i_sys_emergency~input_o\,
	datad => \b2v_inst|r_dir_flag~q\,
	combout => \b2v_inst|r_ew_red~0_combout\);

-- Location: LCCOMB_X1_Y26_N20
\b2v_inst|r_ew_red\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_ew_red~combout\ = (\i_sys_rst~input_o\ & (\b2v_inst|r_ew_red~combout\)) # (!\i_sys_rst~input_o\ & ((\b2v_inst|r_ew_red~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|r_ew_red~combout\,
	datac => \b2v_inst|r_ew_red~0_combout\,
	datad => \i_sys_rst~input_o\,
	combout => \b2v_inst|r_ew_red~combout\);

-- Location: LCCOMB_X3_Y26_N16
\b2v_inst|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan1~0_combout\ = (!\b2v_inst1|cout_units\(3) & (((!\b2v_inst1|cout_units\(1) & !\b2v_inst1|cout_units\(0))) # (!\b2v_inst1|cout_units\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|cout_units\(3),
	datab => \b2v_inst1|cout_units\(2),
	datac => \b2v_inst1|cout_units\(1),
	datad => \b2v_inst1|cout_units\(0),
	combout => \b2v_inst|LessThan1~0_combout\);

-- Location: LCCOMB_X3_Y26_N4
\b2v_inst|r_ew_yellow~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_ew_yellow~0_combout\ = (!\b2v_inst|Equal0~0_combout\ & (!\i_sys_emergency~input_o\ & \b2v_inst|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Equal0~0_combout\,
	datab => \i_sys_emergency~input_o\,
	datad => \b2v_inst|LessThan1~0_combout\,
	combout => \b2v_inst|r_ew_yellow~0_combout\);

-- Location: LCCOMB_X3_Y26_N28
\b2v_inst|r_ew_yellow\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_ew_yellow~combout\ = (\i_sys_rst~input_o\ & (\b2v_inst|r_ew_yellow~combout\)) # (!\i_sys_rst~input_o\ & ((\b2v_inst|r_ew_yellow~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|r_ew_yellow~combout\,
	datac => \b2v_inst|r_ew_yellow~0_combout\,
	datad => \i_sys_rst~input_o\,
	combout => \b2v_inst|r_ew_yellow~combout\);

-- Location: LCCOMB_X3_Y26_N12
\b2v_inst|r_ew_green~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_ew_green~0_combout\ = (\b2v_inst8|r_div_clk~q\) # ((\b2v_inst1|cout_units\(3) & ((\b2v_inst1|cout_units\(2)) # (\b2v_inst1|cout_units\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|cout_units\(3),
	datab => \b2v_inst1|cout_units\(2),
	datac => \b2v_inst8|r_div_clk~q\,
	datad => \b2v_inst1|cout_units\(1),
	combout => \b2v_inst|r_ew_green~0_combout\);

-- Location: LCCOMB_X3_Y26_N14
\b2v_inst|r_ew_green~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_ew_green~1_combout\ = (!\i_sys_emergency~input_o\ & ((\b2v_inst|Equal0~0_combout\) # (!\b2v_inst|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_sys_emergency~input_o\,
	datac => \b2v_inst|Equal0~0_combout\,
	datad => \b2v_inst|LessThan1~0_combout\,
	combout => \b2v_inst|r_ew_green~1_combout\);

-- Location: LCCOMB_X3_Y26_N0
\b2v_inst|r_ew_green~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_ew_green~2_combout\ = (\b2v_inst|r_ew_green~1_combout\ & (\b2v_inst|r_dir_flag~q\ & ((\b2v_inst|Equal0~0_combout\) # (\b2v_inst|r_ew_green~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Equal0~0_combout\,
	datab => \b2v_inst|r_ew_green~0_combout\,
	datac => \b2v_inst|r_ew_green~1_combout\,
	datad => \b2v_inst|r_dir_flag~q\,
	combout => \b2v_inst|r_ew_green~2_combout\);

-- Location: LCCOMB_X3_Y26_N24
\b2v_inst|r_ew_green\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_ew_green~combout\ = (\i_sys_rst~input_o\ & (\b2v_inst|r_ew_green~combout\)) # (!\i_sys_rst~input_o\ & ((\b2v_inst|r_ew_green~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|r_ew_green~combout\,
	datac => \b2v_inst|r_ew_green~2_combout\,
	datad => \i_sys_rst~input_o\,
	combout => \b2v_inst|r_ew_green~combout\);

-- Location: LCCOMB_X1_Y26_N28
\b2v_inst|r_ns_red~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_ns_red~0_combout\ = (\i_sys_emergency~input_o\ & (\b2v_inst8|r_div_clk~q\)) # (!\i_sys_emergency~input_o\ & ((\b2v_inst|r_dir_flag~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|r_div_clk~q\,
	datac => \i_sys_emergency~input_o\,
	datad => \b2v_inst|r_dir_flag~q\,
	combout => \b2v_inst|r_ns_red~0_combout\);

-- Location: LCCOMB_X1_Y26_N30
\b2v_inst|r_ns_red\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_ns_red~combout\ = (\i_sys_rst~input_o\ & (\b2v_inst|r_ns_red~combout\)) # (!\i_sys_rst~input_o\ & ((\b2v_inst|r_ns_red~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_ns_red~combout\,
	datac => \i_sys_rst~input_o\,
	datad => \b2v_inst|r_ns_red~0_combout\,
	combout => \b2v_inst|r_ns_red~combout\);

-- Location: LCCOMB_X3_Y26_N10
\b2v_inst|r_ns_green~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_ns_green~0_combout\ = (!\b2v_inst|r_dir_flag~q\ & ((\b2v_inst|Equal0~0_combout\) # (!\b2v_inst|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|LessThan1~0_combout\,
	datac => \b2v_inst|Equal0~0_combout\,
	datad => \b2v_inst|r_dir_flag~q\,
	combout => \b2v_inst|r_ns_green~0_combout\);

-- Location: LCCOMB_X3_Y26_N6
\b2v_inst|r_ns_green~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_ns_green~1_combout\ = (!\i_sys_emergency~input_o\ & (\b2v_inst|r_ns_green~0_combout\ & ((\b2v_inst|Equal0~0_combout\) # (\b2v_inst|r_ew_green~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Equal0~0_combout\,
	datab => \i_sys_emergency~input_o\,
	datac => \b2v_inst|r_ew_green~0_combout\,
	datad => \b2v_inst|r_ns_green~0_combout\,
	combout => \b2v_inst|r_ns_green~1_combout\);

-- Location: LCCOMB_X3_Y26_N22
\b2v_inst|r_ns_green\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_ns_green~combout\ = (\i_sys_rst~input_o\ & (\b2v_inst|r_ns_green~combout\)) # (!\i_sys_rst~input_o\ & ((\b2v_inst|r_ns_green~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_sys_rst~input_o\,
	datac => \b2v_inst|r_ns_green~combout\,
	datad => \b2v_inst|r_ns_green~1_combout\,
	combout => \b2v_inst|r_ns_green~combout\);

-- Location: LCCOMB_X3_Y26_N20
\b2v_inst|r_seg_en~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_seg_en~0_combout\ = (\b2v_inst8|r_div_clk~q\) # ((!\i_sys_emergency~input_o\ & ((\b2v_inst|Equal0~0_combout\) # (!\b2v_inst|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|r_div_clk~q\,
	datab => \i_sys_emergency~input_o\,
	datac => \b2v_inst|Equal0~0_combout\,
	datad => \b2v_inst|LessThan1~0_combout\,
	combout => \b2v_inst|r_seg_en~0_combout\);

-- Location: LCCOMB_X3_Y26_N26
\b2v_inst|r_seg_en\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_seg_en~combout\ = (\i_sys_rst~input_o\ & (\b2v_inst|r_seg_en~combout\)) # (!\i_sys_rst~input_o\ & ((\b2v_inst|r_seg_en~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_sys_rst~input_o\,
	datac => \b2v_inst|r_seg_en~combout\,
	datad => \b2v_inst|r_seg_en~0_combout\,
	combout => \b2v_inst|r_seg_en~combout\);

-- Location: CLKCTRL_G2
\b2v_inst|r_tim_tens_ew[3]~3clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \b2v_inst|r_tim_tens_ew[3]~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\);

-- Location: LCCOMB_X5_Y26_N28
\b2v_inst|r_tim_tens_ew~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_tim_tens_ew~4_combout\ = (\b2v_inst|r_dir_flag~q\ & (\b2v_inst|Equal0~0_combout\ & \b2v_inst|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|r_dir_flag~q\,
	datac => \b2v_inst|Equal0~0_combout\,
	datad => \b2v_inst|LessThan1~0_combout\,
	combout => \b2v_inst|r_tim_tens_ew~4_combout\);

-- Location: LCCOMB_X5_Y26_N18
\b2v_inst|r_tim_tens_ew~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_tim_tens_ew~5_combout\ = \b2v_inst1|cout_tens\(1) $ (((!\b2v_inst1|cout_tens\(0) & \b2v_inst|r_tim_tens_ew~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|cout_tens\(0),
	datac => \b2v_inst1|cout_tens\(1),
	datad => \b2v_inst|r_tim_tens_ew~4_combout\,
	combout => \b2v_inst|r_tim_tens_ew~5_combout\);

-- Location: LCCOMB_X5_Y26_N14
\b2v_inst|r_tim_tens_ew[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_tim_tens_ew\(1) = (GLOBAL(\b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\) & (\b2v_inst|r_tim_tens_ew\(1))) # (!GLOBAL(\b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\) & ((\b2v_inst|r_tim_tens_ew~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|r_tim_tens_ew\(1),
	datac => \b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\,
	datad => \b2v_inst|r_tim_tens_ew~5_combout\,
	combout => \b2v_inst|r_tim_tens_ew\(1));

-- Location: LCCOMB_X5_Y26_N22
\b2v_inst|r_tim_tens_ew~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_tim_tens_ew~6_combout\ = (\b2v_inst1|cout_tens\(3) & (((!\b2v_inst|LessThan1~0_combout\) # (!\b2v_inst|r_dir_flag~q\)) # (!\b2v_inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|cout_tens\(3),
	datab => \b2v_inst|Equal0~1_combout\,
	datac => \b2v_inst|r_dir_flag~q\,
	datad => \b2v_inst|LessThan1~0_combout\,
	combout => \b2v_inst|r_tim_tens_ew~6_combout\);

-- Location: LCCOMB_X5_Y26_N26
\b2v_inst|r_tim_tens_ew[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_tim_tens_ew\(3) = (GLOBAL(\b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\) & ((\b2v_inst|r_tim_tens_ew\(3)))) # (!GLOBAL(\b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\) & (\b2v_inst|r_tim_tens_ew~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_tim_tens_ew~6_combout\,
	datac => \b2v_inst|r_tim_tens_ew\(3),
	datad => \b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\,
	combout => \b2v_inst|r_tim_tens_ew\(3));

-- Location: LCCOMB_X5_Y26_N24
\b2v_inst|r_tim_tens_ew~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_tim_tens_ew~7_combout\ = \b2v_inst1|cout_tens\(2) $ (((!\b2v_inst1|cout_tens\(1) & (!\b2v_inst1|cout_tens\(0) & \b2v_inst|r_tim_tens_ew~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|cout_tens\(1),
	datab => \b2v_inst1|cout_tens\(0),
	datac => \b2v_inst1|cout_tens\(2),
	datad => \b2v_inst|r_tim_tens_ew~4_combout\,
	combout => \b2v_inst|r_tim_tens_ew~7_combout\);

-- Location: LCCOMB_X5_Y26_N16
\b2v_inst|r_tim_tens_ew[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_tim_tens_ew\(2) = (GLOBAL(\b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\) & (\b2v_inst|r_tim_tens_ew\(2))) # (!GLOBAL(\b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\) & ((\b2v_inst|r_tim_tens_ew~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|r_tim_tens_ew\(2),
	datac => \b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\,
	datad => \b2v_inst|r_tim_tens_ew~7_combout\,
	combout => \b2v_inst|r_tim_tens_ew\(2));

-- Location: LCCOMB_X7_Y26_N12
\b2v_inst|r_tim_tens_ew~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_tim_tens_ew~2_combout\ = \b2v_inst1|cout_tens\(0) $ (((\b2v_inst|r_dir_flag~q\ & (\b2v_inst|Equal0~0_combout\ & \b2v_inst|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|cout_tens\(0),
	datab => \b2v_inst|r_dir_flag~q\,
	datac => \b2v_inst|Equal0~0_combout\,
	datad => \b2v_inst|LessThan1~0_combout\,
	combout => \b2v_inst|r_tim_tens_ew~2_combout\);

-- Location: LCCOMB_X7_Y26_N8
\b2v_inst|r_tim_tens_ew[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_tim_tens_ew\(0) = (GLOBAL(\b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\) & ((\b2v_inst|r_tim_tens_ew\(0)))) # (!GLOBAL(\b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\) & (\b2v_inst|r_tim_tens_ew~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_tim_tens_ew~2_combout\,
	datac => \b2v_inst|r_tim_tens_ew\(0),
	datad => \b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\,
	combout => \b2v_inst|r_tim_tens_ew\(0));

-- Location: LCCOMB_X24_Y28_N0
\b2v_inst4|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux0~0_combout\ = (\b2v_inst|r_tim_tens_ew\(3) & (\b2v_inst|r_tim_tens_ew\(0) & (\b2v_inst|r_tim_tens_ew\(1) $ (\b2v_inst|r_tim_tens_ew\(2))))) # (!\b2v_inst|r_tim_tens_ew\(3) & (!\b2v_inst|r_tim_tens_ew\(1) & (\b2v_inst|r_tim_tens_ew\(2) $ 
-- (\b2v_inst|r_tim_tens_ew\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_tim_tens_ew\(1),
	datab => \b2v_inst|r_tim_tens_ew\(3),
	datac => \b2v_inst|r_tim_tens_ew\(2),
	datad => \b2v_inst|r_tim_tens_ew\(0),
	combout => \b2v_inst4|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y28_N10
\b2v_inst4|a~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst4|a~0_combout\ = (\i_sys_rst~input_o\) # ((\b2v_inst4|Mux0~0_combout\) # (!\b2v_inst|r_seg_en~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_sys_rst~input_o\,
	datac => \b2v_inst|r_seg_en~combout\,
	datad => \b2v_inst4|Mux0~0_combout\,
	combout => \b2v_inst4|a~0_combout\);

-- Location: LCCOMB_X24_Y28_N24
\b2v_inst4|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux1~0_combout\ = (\b2v_inst|r_tim_tens_ew\(1) & ((\b2v_inst|r_tim_tens_ew\(0) & (\b2v_inst|r_tim_tens_ew\(3))) # (!\b2v_inst|r_tim_tens_ew\(0) & ((\b2v_inst|r_tim_tens_ew\(2)))))) # (!\b2v_inst|r_tim_tens_ew\(1) & (\b2v_inst|r_tim_tens_ew\(2) 
-- & (\b2v_inst|r_tim_tens_ew\(3) $ (\b2v_inst|r_tim_tens_ew\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_tim_tens_ew\(1),
	datab => \b2v_inst|r_tim_tens_ew\(3),
	datac => \b2v_inst|r_tim_tens_ew\(2),
	datad => \b2v_inst|r_tim_tens_ew\(0),
	combout => \b2v_inst4|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y28_N2
\b2v_inst4|b~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst4|b~0_combout\ = (\i_sys_rst~input_o\) # ((\b2v_inst4|Mux1~0_combout\) # (!\b2v_inst|r_seg_en~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_sys_rst~input_o\,
	datac => \b2v_inst|r_seg_en~combout\,
	datad => \b2v_inst4|Mux1~0_combout\,
	combout => \b2v_inst4|b~0_combout\);

-- Location: LCCOMB_X24_Y28_N12
\b2v_inst4|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux2~0_combout\ = (\b2v_inst|r_tim_tens_ew\(3) & (\b2v_inst|r_tim_tens_ew\(2) & ((\b2v_inst|r_tim_tens_ew\(1)) # (!\b2v_inst|r_tim_tens_ew\(0))))) # (!\b2v_inst|r_tim_tens_ew\(3) & (\b2v_inst|r_tim_tens_ew\(1) & (!\b2v_inst|r_tim_tens_ew\(2) & 
-- !\b2v_inst|r_tim_tens_ew\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_tim_tens_ew\(1),
	datab => \b2v_inst|r_tim_tens_ew\(3),
	datac => \b2v_inst|r_tim_tens_ew\(2),
	datad => \b2v_inst|r_tim_tens_ew\(0),
	combout => \b2v_inst4|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y28_N30
\b2v_inst4|c~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst4|c~0_combout\ = (\i_sys_rst~input_o\) # ((\b2v_inst4|Mux2~0_combout\) # (!\b2v_inst|r_seg_en~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_sys_rst~input_o\,
	datac => \b2v_inst|r_seg_en~combout\,
	datad => \b2v_inst4|Mux2~0_combout\,
	combout => \b2v_inst4|c~0_combout\);

-- Location: LCCOMB_X24_Y28_N28
\b2v_inst4|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux3~0_combout\ = (\b2v_inst|r_tim_tens_ew\(1) & ((\b2v_inst|r_tim_tens_ew\(2) & ((\b2v_inst|r_tim_tens_ew\(0)))) # (!\b2v_inst|r_tim_tens_ew\(2) & (\b2v_inst|r_tim_tens_ew\(3) & !\b2v_inst|r_tim_tens_ew\(0))))) # (!\b2v_inst|r_tim_tens_ew\(1) 
-- & (!\b2v_inst|r_tim_tens_ew\(3) & (\b2v_inst|r_tim_tens_ew\(2) $ (\b2v_inst|r_tim_tens_ew\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_tim_tens_ew\(1),
	datab => \b2v_inst|r_tim_tens_ew\(3),
	datac => \b2v_inst|r_tim_tens_ew\(2),
	datad => \b2v_inst|r_tim_tens_ew\(0),
	combout => \b2v_inst4|Mux3~0_combout\);

-- Location: LCCOMB_X24_Y28_N22
\b2v_inst4|d~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst4|d~0_combout\ = (\i_sys_rst~input_o\) # ((\b2v_inst4|Mux3~0_combout\) # (!\b2v_inst|r_seg_en~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_sys_rst~input_o\,
	datac => \b2v_inst|r_seg_en~combout\,
	datad => \b2v_inst4|Mux3~0_combout\,
	combout => \b2v_inst4|d~0_combout\);

-- Location: LCCOMB_X24_Y28_N16
\b2v_inst4|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux4~0_combout\ = (\b2v_inst|r_tim_tens_ew\(1) & (!\b2v_inst|r_tim_tens_ew\(3) & ((\b2v_inst|r_tim_tens_ew\(0))))) # (!\b2v_inst|r_tim_tens_ew\(1) & ((\b2v_inst|r_tim_tens_ew\(2) & (!\b2v_inst|r_tim_tens_ew\(3))) # (!\b2v_inst|r_tim_tens_ew\(2) 
-- & ((\b2v_inst|r_tim_tens_ew\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_tim_tens_ew\(1),
	datab => \b2v_inst|r_tim_tens_ew\(3),
	datac => \b2v_inst|r_tim_tens_ew\(2),
	datad => \b2v_inst|r_tim_tens_ew\(0),
	combout => \b2v_inst4|Mux4~0_combout\);

-- Location: LCCOMB_X24_Y28_N14
\b2v_inst4|e~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst4|e~0_combout\ = (\i_sys_rst~input_o\) # ((\b2v_inst4|Mux4~0_combout\) # (!\b2v_inst|r_seg_en~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_sys_rst~input_o\,
	datac => \b2v_inst|r_seg_en~combout\,
	datad => \b2v_inst4|Mux4~0_combout\,
	combout => \b2v_inst4|e~0_combout\);

-- Location: LCCOMB_X24_Y28_N20
\b2v_inst4|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux5~0_combout\ = (\b2v_inst|r_tim_tens_ew\(1) & (!\b2v_inst|r_tim_tens_ew\(3) & ((\b2v_inst|r_tim_tens_ew\(0)) # (!\b2v_inst|r_tim_tens_ew\(2))))) # (!\b2v_inst|r_tim_tens_ew\(1) & (\b2v_inst|r_tim_tens_ew\(0) & (\b2v_inst|r_tim_tens_ew\(3) $ 
-- (!\b2v_inst|r_tim_tens_ew\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_tim_tens_ew\(1),
	datab => \b2v_inst|r_tim_tens_ew\(3),
	datac => \b2v_inst|r_tim_tens_ew\(2),
	datad => \b2v_inst|r_tim_tens_ew\(0),
	combout => \b2v_inst4|Mux5~0_combout\);

-- Location: LCCOMB_X29_Y26_N8
\b2v_inst4|f~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst4|f~0_combout\ = ((\i_sys_rst~input_o\) # (\b2v_inst4|Mux5~0_combout\)) # (!\b2v_inst|r_seg_en~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_seg_en~combout\,
	datac => \i_sys_rst~input_o\,
	datad => \b2v_inst4|Mux5~0_combout\,
	combout => \b2v_inst4|f~0_combout\);

-- Location: LCCOMB_X24_Y28_N18
\b2v_inst4|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst4|Mux6~0_combout\ = (\b2v_inst|r_tim_tens_ew\(0) & ((\b2v_inst|r_tim_tens_ew\(3)) # (\b2v_inst|r_tim_tens_ew\(1) $ (\b2v_inst|r_tim_tens_ew\(2))))) # (!\b2v_inst|r_tim_tens_ew\(0) & ((\b2v_inst|r_tim_tens_ew\(1)) # (\b2v_inst|r_tim_tens_ew\(3) $ 
-- (\b2v_inst|r_tim_tens_ew\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_tim_tens_ew\(1),
	datab => \b2v_inst|r_tim_tens_ew\(3),
	datac => \b2v_inst|r_tim_tens_ew\(2),
	datad => \b2v_inst|r_tim_tens_ew\(0),
	combout => \b2v_inst4|Mux6~0_combout\);

-- Location: LCCOMB_X24_Y28_N8
\b2v_inst4|g~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst4|g~0_combout\ = (\i_sys_rst~input_o\) # ((!\b2v_inst4|Mux6~0_combout\) # (!\b2v_inst|r_seg_en~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_sys_rst~input_o\,
	datac => \b2v_inst|r_seg_en~combout\,
	datad => \b2v_inst4|Mux6~0_combout\,
	combout => \b2v_inst4|g~0_combout\);

-- Location: LCCOMB_X4_Y26_N6
\b2v_inst|r_tim_units_ew~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_tim_units_ew~4_combout\ = (\b2v_inst1|cout_units\(2) & (\b2v_inst1|cout_units\(3) $ (((!\b2v_inst1|cout_units\(1) & !\b2v_inst1|cout_units\(0)))))) # (!\b2v_inst1|cout_units\(2) & (\b2v_inst1|cout_units\(1) & (!\b2v_inst1|cout_units\(3) & 
-- \b2v_inst1|cout_units\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|cout_units\(1),
	datab => \b2v_inst1|cout_units\(3),
	datac => \b2v_inst1|cout_units\(2),
	datad => \b2v_inst1|cout_units\(0),
	combout => \b2v_inst|r_tim_units_ew~4_combout\);

-- Location: LCCOMB_X4_Y26_N14
\b2v_inst|r_ew_green~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_ew_green~3_combout\ = (\b2v_inst|r_dir_flag~q\ & ((\b2v_inst|Equal0~0_combout\) # (!\b2v_inst|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_dir_flag~q\,
	datac => \b2v_inst|LessThan1~0_combout\,
	datad => \b2v_inst|Equal0~0_combout\,
	combout => \b2v_inst|r_ew_green~3_combout\);

-- Location: LCCOMB_X4_Y26_N8
\b2v_inst|r_tim_units_ew~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_tim_units_ew~5_combout\ = (\b2v_inst|r_tim_units_ew~4_combout\ & ((\b2v_inst|r_ew_green~3_combout\) # ((\b2v_inst1|cout_units\(3) & !\b2v_inst|r_dir_flag~q\)))) # (!\b2v_inst|r_tim_units_ew~4_combout\ & (\b2v_inst1|cout_units\(3) & 
-- ((!\b2v_inst|r_dir_flag~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_tim_units_ew~4_combout\,
	datab => \b2v_inst1|cout_units\(3),
	datac => \b2v_inst|r_ew_green~3_combout\,
	datad => \b2v_inst|r_dir_flag~q\,
	combout => \b2v_inst|r_tim_units_ew~5_combout\);

-- Location: LCCOMB_X4_Y26_N16
\b2v_inst|r_tim_units_ew[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_tim_units_ew\(3) = (GLOBAL(\b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\) & (\b2v_inst|r_tim_units_ew\(3))) # (!GLOBAL(\b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\) & ((\b2v_inst|r_tim_units_ew~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|r_tim_units_ew\(3),
	datac => \b2v_inst|r_tim_units_ew~5_combout\,
	datad => \b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\,
	combout => \b2v_inst|r_tim_units_ew\(3));

-- Location: LCCOMB_X4_Y26_N10
\b2v_inst|r_tim_units_ew~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_tim_units_ew~2_combout\ = (\b2v_inst1|cout_units\(3) & (\b2v_inst1|cout_units\(2) $ (((\b2v_inst1|cout_units\(0)) # (\b2v_inst1|cout_units\(1)))))) # (!\b2v_inst1|cout_units\(3) & (!\b2v_inst1|cout_units\(2) & ((!\b2v_inst1|cout_units\(1)) # 
-- (!\b2v_inst1|cout_units\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|cout_units\(3),
	datab => \b2v_inst1|cout_units\(0),
	datac => \b2v_inst1|cout_units\(2),
	datad => \b2v_inst1|cout_units\(1),
	combout => \b2v_inst|r_tim_units_ew~2_combout\);

-- Location: LCCOMB_X4_Y26_N24
\b2v_inst|r_tim_units_ew~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_tim_units_ew~3_combout\ = (\b2v_inst|r_ew_green~3_combout\ & (\b2v_inst|r_tim_units_ew~2_combout\)) # (!\b2v_inst|r_ew_green~3_combout\ & ((\b2v_inst1|cout_units\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_tim_units_ew~2_combout\,
	datac => \b2v_inst|r_ew_green~3_combout\,
	datad => \b2v_inst1|cout_units\(2),
	combout => \b2v_inst|r_tim_units_ew~3_combout\);

-- Location: LCCOMB_X4_Y26_N18
\b2v_inst|r_tim_units_ew[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_tim_units_ew\(2) = (GLOBAL(\b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\) & ((\b2v_inst|r_tim_units_ew\(2)))) # (!GLOBAL(\b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\) & (\b2v_inst|r_tim_units_ew~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|r_tim_units_ew~3_combout\,
	datac => \b2v_inst|r_tim_units_ew\(2),
	datad => \b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\,
	combout => \b2v_inst|r_tim_units_ew\(2));

-- Location: LCCOMB_X7_Y26_N18
\b2v_inst|r_tim_units_ew~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_tim_units_ew~0_combout\ = \b2v_inst1|cout_units\(0) $ (((\b2v_inst|r_dir_flag~q\ & ((\b2v_inst|Equal0~0_combout\) # (!\b2v_inst|LessThan1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Equal0~0_combout\,
	datab => \b2v_inst1|cout_units\(0),
	datac => \b2v_inst|r_dir_flag~q\,
	datad => \b2v_inst|LessThan1~0_combout\,
	combout => \b2v_inst|r_tim_units_ew~0_combout\);

-- Location: LCCOMB_X7_Y26_N30
\b2v_inst|r_tim_units_ew[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_tim_units_ew\(0) = (GLOBAL(\b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\) & (\b2v_inst|r_tim_units_ew\(0))) # (!GLOBAL(\b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\) & ((\b2v_inst|r_tim_units_ew~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_tim_units_ew\(0),
	datac => \b2v_inst|r_tim_units_ew~0_combout\,
	datad => \b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\,
	combout => \b2v_inst|r_tim_units_ew\(0));

-- Location: LCCOMB_X4_Y26_N4
\b2v_inst|r_tim_units_ew~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_tim_units_ew~1_combout\ = \b2v_inst1|cout_units\(1) $ (((\b2v_inst|r_ew_green~3_combout\ & (\b2v_inst|LessThan1~0_combout\ $ (!\b2v_inst1|cout_units\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan1~0_combout\,
	datab => \b2v_inst1|cout_units\(1),
	datac => \b2v_inst|r_ew_green~3_combout\,
	datad => \b2v_inst1|cout_units\(0),
	combout => \b2v_inst|r_tim_units_ew~1_combout\);

-- Location: LCCOMB_X4_Y26_N20
\b2v_inst|r_tim_units_ew[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_tim_units_ew\(1) = (GLOBAL(\b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\) & (\b2v_inst|r_tim_units_ew\(1))) # (!GLOBAL(\b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\) & ((\b2v_inst|r_tim_units_ew~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|r_tim_units_ew\(1),
	datac => \b2v_inst|r_tim_units_ew~1_combout\,
	datad => \b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\,
	combout => \b2v_inst|r_tim_units_ew\(1));

-- Location: LCCOMB_X20_Y28_N12
\b2v_inst5|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst5|Mux0~0_combout\ = (\b2v_inst|r_tim_units_ew\(3) & (\b2v_inst|r_tim_units_ew\(0) & (\b2v_inst|r_tim_units_ew\(2) $ (\b2v_inst|r_tim_units_ew\(1))))) # (!\b2v_inst|r_tim_units_ew\(3) & (!\b2v_inst|r_tim_units_ew\(1) & 
-- (\b2v_inst|r_tim_units_ew\(2) $ (\b2v_inst|r_tim_units_ew\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_tim_units_ew\(3),
	datab => \b2v_inst|r_tim_units_ew\(2),
	datac => \b2v_inst|r_tim_units_ew\(0),
	datad => \b2v_inst|r_tim_units_ew\(1),
	combout => \b2v_inst5|Mux0~0_combout\);

-- Location: LCCOMB_X20_Y28_N2
\b2v_inst5|a~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst5|a~0_combout\ = (\i_sys_rst~input_o\) # ((\b2v_inst5|Mux0~0_combout\) # (!\b2v_inst|r_seg_en~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_sys_rst~input_o\,
	datac => \b2v_inst|r_seg_en~combout\,
	datad => \b2v_inst5|Mux0~0_combout\,
	combout => \b2v_inst5|a~0_combout\);

-- Location: LCCOMB_X20_Y28_N8
\b2v_inst5|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst5|Mux1~0_combout\ = (\b2v_inst|r_tim_units_ew\(3) & ((\b2v_inst|r_tim_units_ew\(0) & ((\b2v_inst|r_tim_units_ew\(1)))) # (!\b2v_inst|r_tim_units_ew\(0) & (\b2v_inst|r_tim_units_ew\(2))))) # (!\b2v_inst|r_tim_units_ew\(3) & 
-- (\b2v_inst|r_tim_units_ew\(2) & (\b2v_inst|r_tim_units_ew\(0) $ (\b2v_inst|r_tim_units_ew\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_tim_units_ew\(3),
	datab => \b2v_inst|r_tim_units_ew\(2),
	datac => \b2v_inst|r_tim_units_ew\(0),
	datad => \b2v_inst|r_tim_units_ew\(1),
	combout => \b2v_inst5|Mux1~0_combout\);

-- Location: LCCOMB_X20_Y28_N22
\b2v_inst5|b~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst5|b~0_combout\ = (\i_sys_rst~input_o\) # ((\b2v_inst5|Mux1~0_combout\) # (!\b2v_inst|r_seg_en~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_sys_rst~input_o\,
	datab => \b2v_inst5|Mux1~0_combout\,
	datac => \b2v_inst|r_seg_en~combout\,
	combout => \b2v_inst5|b~0_combout\);

-- Location: LCCOMB_X20_Y28_N16
\b2v_inst5|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst5|Mux2~0_combout\ = (\b2v_inst|r_tim_units_ew\(3) & (\b2v_inst|r_tim_units_ew\(2) & ((\b2v_inst|r_tim_units_ew\(1)) # (!\b2v_inst|r_tim_units_ew\(0))))) # (!\b2v_inst|r_tim_units_ew\(3) & (!\b2v_inst|r_tim_units_ew\(2) & 
-- (!\b2v_inst|r_tim_units_ew\(0) & \b2v_inst|r_tim_units_ew\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_tim_units_ew\(3),
	datab => \b2v_inst|r_tim_units_ew\(2),
	datac => \b2v_inst|r_tim_units_ew\(0),
	datad => \b2v_inst|r_tim_units_ew\(1),
	combout => \b2v_inst5|Mux2~0_combout\);

-- Location: LCCOMB_X20_Y28_N30
\b2v_inst5|c~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst5|c~0_combout\ = (\i_sys_rst~input_o\) # ((\b2v_inst5|Mux2~0_combout\) # (!\b2v_inst|r_seg_en~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_sys_rst~input_o\,
	datac => \b2v_inst|r_seg_en~combout\,
	datad => \b2v_inst5|Mux2~0_combout\,
	combout => \b2v_inst5|c~0_combout\);

-- Location: LCCOMB_X20_Y28_N24
\b2v_inst5|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst5|Mux3~0_combout\ = (\b2v_inst|r_tim_units_ew\(1) & ((\b2v_inst|r_tim_units_ew\(2) & ((\b2v_inst|r_tim_units_ew\(0)))) # (!\b2v_inst|r_tim_units_ew\(2) & (\b2v_inst|r_tim_units_ew\(3) & !\b2v_inst|r_tim_units_ew\(0))))) # 
-- (!\b2v_inst|r_tim_units_ew\(1) & (!\b2v_inst|r_tim_units_ew\(3) & (\b2v_inst|r_tim_units_ew\(2) $ (\b2v_inst|r_tim_units_ew\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_tim_units_ew\(3),
	datab => \b2v_inst|r_tim_units_ew\(2),
	datac => \b2v_inst|r_tim_units_ew\(0),
	datad => \b2v_inst|r_tim_units_ew\(1),
	combout => \b2v_inst5|Mux3~0_combout\);

-- Location: LCCOMB_X20_Y28_N10
\b2v_inst5|d~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst5|d~0_combout\ = (\i_sys_rst~input_o\) # ((\b2v_inst5|Mux3~0_combout\) # (!\b2v_inst|r_seg_en~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_sys_rst~input_o\,
	datac => \b2v_inst|r_seg_en~combout\,
	datad => \b2v_inst5|Mux3~0_combout\,
	combout => \b2v_inst5|d~0_combout\);

-- Location: LCCOMB_X20_Y28_N20
\b2v_inst5|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst5|Mux4~0_combout\ = (\b2v_inst|r_tim_units_ew\(1) & (!\b2v_inst|r_tim_units_ew\(3) & ((\b2v_inst|r_tim_units_ew\(0))))) # (!\b2v_inst|r_tim_units_ew\(1) & ((\b2v_inst|r_tim_units_ew\(2) & (!\b2v_inst|r_tim_units_ew\(3))) # 
-- (!\b2v_inst|r_tim_units_ew\(2) & ((\b2v_inst|r_tim_units_ew\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_tim_units_ew\(3),
	datab => \b2v_inst|r_tim_units_ew\(2),
	datac => \b2v_inst|r_tim_units_ew\(0),
	datad => \b2v_inst|r_tim_units_ew\(1),
	combout => \b2v_inst5|Mux4~0_combout\);

-- Location: LCCOMB_X20_Y28_N26
\b2v_inst5|e~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst5|e~0_combout\ = (\i_sys_rst~input_o\) # ((\b2v_inst5|Mux4~0_combout\) # (!\b2v_inst|r_seg_en~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_sys_rst~input_o\,
	datac => \b2v_inst|r_seg_en~combout\,
	datad => \b2v_inst5|Mux4~0_combout\,
	combout => \b2v_inst5|e~0_combout\);

-- Location: LCCOMB_X20_Y28_N28
\b2v_inst5|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst5|Mux5~0_combout\ = (\b2v_inst|r_tim_units_ew\(2) & (\b2v_inst|r_tim_units_ew\(0) & (\b2v_inst|r_tim_units_ew\(3) $ (\b2v_inst|r_tim_units_ew\(1))))) # (!\b2v_inst|r_tim_units_ew\(2) & (!\b2v_inst|r_tim_units_ew\(3) & 
-- ((\b2v_inst|r_tim_units_ew\(0)) # (\b2v_inst|r_tim_units_ew\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_tim_units_ew\(3),
	datab => \b2v_inst|r_tim_units_ew\(2),
	datac => \b2v_inst|r_tim_units_ew\(0),
	datad => \b2v_inst|r_tim_units_ew\(1),
	combout => \b2v_inst5|Mux5~0_combout\);

-- Location: LCCOMB_X24_Y28_N26
\b2v_inst5|f~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst5|f~0_combout\ = (\i_sys_rst~input_o\) # ((\b2v_inst5|Mux5~0_combout\) # (!\b2v_inst|r_seg_en~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_sys_rst~input_o\,
	datac => \b2v_inst|r_seg_en~combout\,
	datad => \b2v_inst5|Mux5~0_combout\,
	combout => \b2v_inst5|f~0_combout\);

-- Location: LCCOMB_X20_Y28_N18
\b2v_inst5|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst5|Mux6~0_combout\ = (\b2v_inst|r_tim_units_ew\(0) & ((\b2v_inst|r_tim_units_ew\(3)) # (\b2v_inst|r_tim_units_ew\(2) $ (\b2v_inst|r_tim_units_ew\(1))))) # (!\b2v_inst|r_tim_units_ew\(0) & ((\b2v_inst|r_tim_units_ew\(1)) # 
-- (\b2v_inst|r_tim_units_ew\(3) $ (\b2v_inst|r_tim_units_ew\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_tim_units_ew\(3),
	datab => \b2v_inst|r_tim_units_ew\(2),
	datac => \b2v_inst|r_tim_units_ew\(0),
	datad => \b2v_inst|r_tim_units_ew\(1),
	combout => \b2v_inst5|Mux6~0_combout\);

-- Location: LCCOMB_X20_Y28_N4
\b2v_inst5|g~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst5|g~0_combout\ = (\i_sys_rst~input_o\) # ((!\b2v_inst5|Mux6~0_combout\) # (!\b2v_inst|r_seg_en~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_sys_rst~input_o\,
	datac => \b2v_inst|r_seg_en~combout\,
	datad => \b2v_inst5|Mux6~0_combout\,
	combout => \b2v_inst5|g~0_combout\);

-- Location: LCCOMB_X2_Y26_N22
\b2v_inst|r_tim_tens_ns~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_tim_tens_ns~3_combout\ = (\b2v_inst|r_dir_flag~q\) # ((!\b2v_inst|LessThan1~0_combout\) # (!\b2v_inst|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|r_dir_flag~q\,
	datac => \b2v_inst|Equal0~0_combout\,
	datad => \b2v_inst|LessThan1~0_combout\,
	combout => \b2v_inst|r_tim_tens_ns~3_combout\);

-- Location: LCCOMB_X2_Y26_N12
\b2v_inst|r_tim_tens_ns~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_tim_tens_ns~4_combout\ = \b2v_inst1|cout_tens\(1) $ (((!\b2v_inst1|cout_tens\(0) & !\b2v_inst|r_tim_tens_ns~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|cout_tens\(0),
	datac => \b2v_inst|r_tim_tens_ns~3_combout\,
	datad => \b2v_inst1|cout_tens\(1),
	combout => \b2v_inst|r_tim_tens_ns~4_combout\);

-- Location: LCCOMB_X2_Y26_N0
\b2v_inst|r_tim_tens_ns[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_tim_tens_ns\(1) = (GLOBAL(\b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\) & (\b2v_inst|r_tim_tens_ns\(1))) # (!GLOBAL(\b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\) & ((\b2v_inst|r_tim_tens_ns~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|r_tim_tens_ns\(1),
	datac => \b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\,
	datad => \b2v_inst|r_tim_tens_ns~4_combout\,
	combout => \b2v_inst|r_tim_tens_ns\(1));

-- Location: LCCOMB_X5_Y26_N12
\b2v_inst|r_tim_tens_ns~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_tim_tens_ns~2_combout\ = \b2v_inst1|cout_tens\(0) $ (((\b2v_inst|Equal0~0_combout\ & (!\b2v_inst|r_dir_flag~q\ & \b2v_inst|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|cout_tens\(0),
	datab => \b2v_inst|Equal0~0_combout\,
	datac => \b2v_inst|r_dir_flag~q\,
	datad => \b2v_inst|LessThan1~0_combout\,
	combout => \b2v_inst|r_tim_tens_ns~2_combout\);

-- Location: LCCOMB_X5_Y26_N4
\b2v_inst|r_tim_tens_ns[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_tim_tens_ns\(0) = (GLOBAL(\b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\) & ((\b2v_inst|r_tim_tens_ns\(0)))) # (!GLOBAL(\b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\) & (\b2v_inst|r_tim_tens_ns~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_tim_tens_ns~2_combout\,
	datac => \b2v_inst|r_tim_tens_ns\(0),
	datad => \b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\,
	combout => \b2v_inst|r_tim_tens_ns\(0));

-- Location: LCCOMB_X2_Y26_N30
\b2v_inst|r_tim_tens_ns~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_tim_tens_ns~6_combout\ = \b2v_inst1|cout_tens\(2) $ (((!\b2v_inst1|cout_tens\(0) & (!\b2v_inst|r_tim_tens_ns~3_combout\ & !\b2v_inst1|cout_tens\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|cout_tens\(2),
	datab => \b2v_inst1|cout_tens\(0),
	datac => \b2v_inst|r_tim_tens_ns~3_combout\,
	datad => \b2v_inst1|cout_tens\(1),
	combout => \b2v_inst|r_tim_tens_ns~6_combout\);

-- Location: LCCOMB_X2_Y26_N18
\b2v_inst|r_tim_tens_ns[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_tim_tens_ns\(2) = (GLOBAL(\b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\) & (\b2v_inst|r_tim_tens_ns\(2))) # (!GLOBAL(\b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\) & ((\b2v_inst|r_tim_tens_ns~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|r_tim_tens_ns\(2),
	datac => \b2v_inst|r_tim_tens_ns~6_combout\,
	datad => \b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\,
	combout => \b2v_inst|r_tim_tens_ns\(2));

-- Location: LCCOMB_X4_Y25_N12
\b2v_inst|r_tim_tens_ns~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_tim_tens_ns~5_combout\ = (\b2v_inst1|cout_tens\(3) & ((\b2v_inst|r_dir_flag~q\) # ((!\b2v_inst|Equal0~1_combout\) # (!\b2v_inst|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|cout_tens\(3),
	datab => \b2v_inst|r_dir_flag~q\,
	datac => \b2v_inst|LessThan1~0_combout\,
	datad => \b2v_inst|Equal0~1_combout\,
	combout => \b2v_inst|r_tim_tens_ns~5_combout\);

-- Location: LCCOMB_X4_Y25_N30
\b2v_inst|r_tim_tens_ns[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_tim_tens_ns\(3) = (GLOBAL(\b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\) & (\b2v_inst|r_tim_tens_ns\(3))) # (!GLOBAL(\b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\) & ((\b2v_inst|r_tim_tens_ns~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_tim_tens_ns\(3),
	datac => \b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\,
	datad => \b2v_inst|r_tim_tens_ns~5_combout\,
	combout => \b2v_inst|r_tim_tens_ns\(3));

-- Location: LCCOMB_X24_Y26_N28
\b2v_inst6|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux0~0_combout\ = (\b2v_inst|r_tim_tens_ns\(2) & (!\b2v_inst|r_tim_tens_ns\(1) & (\b2v_inst|r_tim_tens_ns\(0) $ (!\b2v_inst|r_tim_tens_ns\(3))))) # (!\b2v_inst|r_tim_tens_ns\(2) & (\b2v_inst|r_tim_tens_ns\(0) & (\b2v_inst|r_tim_tens_ns\(1) $ 
-- (!\b2v_inst|r_tim_tens_ns\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_tim_tens_ns\(1),
	datab => \b2v_inst|r_tim_tens_ns\(0),
	datac => \b2v_inst|r_tim_tens_ns\(2),
	datad => \b2v_inst|r_tim_tens_ns\(3),
	combout => \b2v_inst6|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y26_N26
\b2v_inst6|a~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst6|a~0_combout\ = (\i_sys_rst~input_o\) # ((\b2v_inst6|Mux0~0_combout\) # (!\b2v_inst|r_seg_en~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_sys_rst~input_o\,
	datab => \b2v_inst6|Mux0~0_combout\,
	datac => \b2v_inst|r_seg_en~combout\,
	combout => \b2v_inst6|a~0_combout\);

-- Location: LCCOMB_X24_Y26_N20
\b2v_inst6|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux1~0_combout\ = (\b2v_inst|r_tim_tens_ns\(1) & ((\b2v_inst|r_tim_tens_ns\(0) & ((\b2v_inst|r_tim_tens_ns\(3)))) # (!\b2v_inst|r_tim_tens_ns\(0) & (\b2v_inst|r_tim_tens_ns\(2))))) # (!\b2v_inst|r_tim_tens_ns\(1) & (\b2v_inst|r_tim_tens_ns\(2) 
-- & (\b2v_inst|r_tim_tens_ns\(0) $ (\b2v_inst|r_tim_tens_ns\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_tim_tens_ns\(1),
	datab => \b2v_inst|r_tim_tens_ns\(0),
	datac => \b2v_inst|r_tim_tens_ns\(2),
	datad => \b2v_inst|r_tim_tens_ns\(3),
	combout => \b2v_inst6|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y26_N6
\b2v_inst6|b~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst6|b~0_combout\ = (\i_sys_rst~input_o\) # ((\b2v_inst6|Mux1~0_combout\) # (!\b2v_inst|r_seg_en~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_sys_rst~input_o\,
	datab => \b2v_inst6|Mux1~0_combout\,
	datac => \b2v_inst|r_seg_en~combout\,
	combout => \b2v_inst6|b~0_combout\);

-- Location: LCCOMB_X24_Y26_N0
\b2v_inst6|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux2~0_combout\ = (\b2v_inst|r_tim_tens_ns\(2) & (\b2v_inst|r_tim_tens_ns\(3) & ((\b2v_inst|r_tim_tens_ns\(1)) # (!\b2v_inst|r_tim_tens_ns\(0))))) # (!\b2v_inst|r_tim_tens_ns\(2) & (\b2v_inst|r_tim_tens_ns\(1) & (!\b2v_inst|r_tim_tens_ns\(0) & 
-- !\b2v_inst|r_tim_tens_ns\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_tim_tens_ns\(1),
	datab => \b2v_inst|r_tim_tens_ns\(0),
	datac => \b2v_inst|r_tim_tens_ns\(2),
	datad => \b2v_inst|r_tim_tens_ns\(3),
	combout => \b2v_inst6|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y28_N4
\b2v_inst6|c~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst6|c~0_combout\ = (\i_sys_rst~input_o\) # ((\b2v_inst6|Mux2~0_combout\) # (!\b2v_inst|r_seg_en~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_sys_rst~input_o\,
	datac => \b2v_inst|r_seg_en~combout\,
	datad => \b2v_inst6|Mux2~0_combout\,
	combout => \b2v_inst6|c~0_combout\);

-- Location: LCCOMB_X24_Y26_N2
\b2v_inst6|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux3~0_combout\ = (\b2v_inst|r_tim_tens_ns\(1) & ((\b2v_inst|r_tim_tens_ns\(0) & (\b2v_inst|r_tim_tens_ns\(2))) # (!\b2v_inst|r_tim_tens_ns\(0) & (!\b2v_inst|r_tim_tens_ns\(2) & \b2v_inst|r_tim_tens_ns\(3))))) # (!\b2v_inst|r_tim_tens_ns\(1) & 
-- (!\b2v_inst|r_tim_tens_ns\(3) & (\b2v_inst|r_tim_tens_ns\(0) $ (\b2v_inst|r_tim_tens_ns\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_tim_tens_ns\(1),
	datab => \b2v_inst|r_tim_tens_ns\(0),
	datac => \b2v_inst|r_tim_tens_ns\(2),
	datad => \b2v_inst|r_tim_tens_ns\(3),
	combout => \b2v_inst6|Mux3~0_combout\);

-- Location: LCCOMB_X24_Y28_N6
\b2v_inst6|d~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst6|d~0_combout\ = (\i_sys_rst~input_o\) # ((\b2v_inst6|Mux3~0_combout\) # (!\b2v_inst|r_seg_en~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_sys_rst~input_o\,
	datac => \b2v_inst|r_seg_en~combout\,
	datad => \b2v_inst6|Mux3~0_combout\,
	combout => \b2v_inst6|d~0_combout\);

-- Location: LCCOMB_X24_Y26_N24
\b2v_inst6|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux4~0_combout\ = (\b2v_inst|r_tim_tens_ns\(1) & (\b2v_inst|r_tim_tens_ns\(0) & ((!\b2v_inst|r_tim_tens_ns\(3))))) # (!\b2v_inst|r_tim_tens_ns\(1) & ((\b2v_inst|r_tim_tens_ns\(2) & ((!\b2v_inst|r_tim_tens_ns\(3)))) # 
-- (!\b2v_inst|r_tim_tens_ns\(2) & (\b2v_inst|r_tim_tens_ns\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_tim_tens_ns\(1),
	datab => \b2v_inst|r_tim_tens_ns\(0),
	datac => \b2v_inst|r_tim_tens_ns\(2),
	datad => \b2v_inst|r_tim_tens_ns\(3),
	combout => \b2v_inst6|Mux4~0_combout\);

-- Location: LCCOMB_X24_Y26_N10
\b2v_inst6|e~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst6|e~0_combout\ = (\i_sys_rst~input_o\) # ((\b2v_inst6|Mux4~0_combout\) # (!\b2v_inst|r_seg_en~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_sys_rst~input_o\,
	datab => \b2v_inst6|Mux4~0_combout\,
	datac => \b2v_inst|r_seg_en~combout\,
	combout => \b2v_inst6|e~0_combout\);

-- Location: LCCOMB_X24_Y26_N16
\b2v_inst6|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux5~0_combout\ = (\b2v_inst|r_tim_tens_ns\(1) & (!\b2v_inst|r_tim_tens_ns\(3) & ((\b2v_inst|r_tim_tens_ns\(0)) # (!\b2v_inst|r_tim_tens_ns\(2))))) # (!\b2v_inst|r_tim_tens_ns\(1) & (\b2v_inst|r_tim_tens_ns\(0) & (\b2v_inst|r_tim_tens_ns\(2) $ 
-- (!\b2v_inst|r_tim_tens_ns\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_tim_tens_ns\(1),
	datab => \b2v_inst|r_tim_tens_ns\(0),
	datac => \b2v_inst|r_tim_tens_ns\(2),
	datad => \b2v_inst|r_tim_tens_ns\(3),
	combout => \b2v_inst6|Mux5~0_combout\);

-- Location: LCCOMB_X29_Y26_N26
\b2v_inst6|f~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst6|f~0_combout\ = ((\i_sys_rst~input_o\) # (\b2v_inst6|Mux5~0_combout\)) # (!\b2v_inst|r_seg_en~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_seg_en~combout\,
	datac => \i_sys_rst~input_o\,
	datad => \b2v_inst6|Mux5~0_combout\,
	combout => \b2v_inst6|f~0_combout\);

-- Location: LCCOMB_X24_Y26_N22
\b2v_inst6|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Mux6~0_combout\ = (\b2v_inst|r_tim_tens_ns\(0) & ((\b2v_inst|r_tim_tens_ns\(3)) # (\b2v_inst|r_tim_tens_ns\(1) $ (\b2v_inst|r_tim_tens_ns\(2))))) # (!\b2v_inst|r_tim_tens_ns\(0) & ((\b2v_inst|r_tim_tens_ns\(1)) # (\b2v_inst|r_tim_tens_ns\(2) $ 
-- (\b2v_inst|r_tim_tens_ns\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_tim_tens_ns\(1),
	datab => \b2v_inst|r_tim_tens_ns\(0),
	datac => \b2v_inst|r_tim_tens_ns\(2),
	datad => \b2v_inst|r_tim_tens_ns\(3),
	combout => \b2v_inst6|Mux6~0_combout\);

-- Location: LCCOMB_X24_Y26_N8
\b2v_inst6|g~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst6|g~0_combout\ = ((\i_sys_rst~input_o\) # (!\b2v_inst6|Mux6~0_combout\)) # (!\b2v_inst|r_seg_en~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_seg_en~combout\,
	datac => \b2v_inst6|Mux6~0_combout\,
	datad => \i_sys_rst~input_o\,
	combout => \b2v_inst6|g~0_combout\);

-- Location: LCCOMB_X4_Y26_N26
\b2v_inst|r_tim_units_ns~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_tim_units_ns~2_combout\ = (\b2v_inst|r_ns_green~0_combout\ & (\b2v_inst|r_tim_units_ew~2_combout\)) # (!\b2v_inst|r_ns_green~0_combout\ & ((\b2v_inst1|cout_units\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_tim_units_ew~2_combout\,
	datac => \b2v_inst1|cout_units\(2),
	datad => \b2v_inst|r_ns_green~0_combout\,
	combout => \b2v_inst|r_tim_units_ns~2_combout\);

-- Location: LCCOMB_X4_Y26_N30
\b2v_inst|r_tim_units_ns[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_tim_units_ns\(2) = (GLOBAL(\b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\) & (\b2v_inst|r_tim_units_ns\(2))) # (!GLOBAL(\b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\) & ((\b2v_inst|r_tim_units_ns~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_tim_units_ns\(2),
	datac => \b2v_inst|r_tim_units_ns~2_combout\,
	datad => \b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\,
	combout => \b2v_inst|r_tim_units_ns\(2));

-- Location: LCCOMB_X4_Y26_N28
\b2v_inst|r_tim_units_ns~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_tim_units_ns~3_combout\ = (\b2v_inst|r_tim_units_ew~4_combout\ & ((\b2v_inst|r_ns_green~0_combout\) # ((\b2v_inst|r_dir_flag~q\ & \b2v_inst1|cout_units\(3))))) # (!\b2v_inst|r_tim_units_ew~4_combout\ & (\b2v_inst|r_dir_flag~q\ & 
-- (\b2v_inst1|cout_units\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_tim_units_ew~4_combout\,
	datab => \b2v_inst|r_dir_flag~q\,
	datac => \b2v_inst1|cout_units\(3),
	datad => \b2v_inst|r_ns_green~0_combout\,
	combout => \b2v_inst|r_tim_units_ns~3_combout\);

-- Location: LCCOMB_X4_Y26_N12
\b2v_inst|r_tim_units_ns[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_tim_units_ns\(3) = (GLOBAL(\b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\) & (\b2v_inst|r_tim_units_ns\(3))) # (!GLOBAL(\b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\) & ((\b2v_inst|r_tim_units_ns~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_tim_units_ns\(3),
	datab => \b2v_inst|r_tim_units_ns~3_combout\,
	datad => \b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\,
	combout => \b2v_inst|r_tim_units_ns\(3));

-- Location: LCCOMB_X3_Y26_N30
\b2v_inst|r_tim_units_ns~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_tim_units_ns~1_combout\ = \b2v_inst1|cout_units\(1) $ (((\b2v_inst|r_ns_green~0_combout\ & (\b2v_inst|LessThan1~0_combout\ $ (!\b2v_inst1|cout_units\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_ns_green~0_combout\,
	datab => \b2v_inst|LessThan1~0_combout\,
	datac => \b2v_inst1|cout_units\(1),
	datad => \b2v_inst1|cout_units\(0),
	combout => \b2v_inst|r_tim_units_ns~1_combout\);

-- Location: LCCOMB_X3_Y26_N2
\b2v_inst|r_tim_units_ns[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_tim_units_ns\(1) = (GLOBAL(\b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\) & (\b2v_inst|r_tim_units_ns\(1))) # (!GLOBAL(\b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\) & ((\b2v_inst|r_tim_units_ns~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\,
	datab => \b2v_inst|r_tim_units_ns\(1),
	datad => \b2v_inst|r_tim_units_ns~1_combout\,
	combout => \b2v_inst|r_tim_units_ns\(1));

-- Location: LCCOMB_X5_Y26_N10
\b2v_inst|r_tim_units_ns~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_tim_units_ns~0_combout\ = \b2v_inst1|cout_units\(0) $ (((!\b2v_inst|r_dir_flag~q\ & ((\b2v_inst|Equal0~0_combout\) # (!\b2v_inst|LessThan1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_dir_flag~q\,
	datab => \b2v_inst|Equal0~0_combout\,
	datac => \b2v_inst1|cout_units\(0),
	datad => \b2v_inst|LessThan1~0_combout\,
	combout => \b2v_inst|r_tim_units_ns~0_combout\);

-- Location: LCCOMB_X5_Y26_N30
\b2v_inst|r_tim_units_ns[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|r_tim_units_ns\(0) = (GLOBAL(\b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\) & ((\b2v_inst|r_tim_units_ns\(0)))) # (!GLOBAL(\b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\) & (\b2v_inst|r_tim_units_ns~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_tim_units_ns~0_combout\,
	datac => \b2v_inst|r_tim_units_ns\(0),
	datad => \b2v_inst|r_tim_tens_ew[3]~3clkctrl_outclk\,
	combout => \b2v_inst|r_tim_units_ns\(0));

-- Location: LCCOMB_X29_Y26_N20
\b2v_inst7|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst7|Mux0~0_combout\ = (\b2v_inst|r_tim_units_ns\(2) & (!\b2v_inst|r_tim_units_ns\(1) & (\b2v_inst|r_tim_units_ns\(3) $ (!\b2v_inst|r_tim_units_ns\(0))))) # (!\b2v_inst|r_tim_units_ns\(2) & (\b2v_inst|r_tim_units_ns\(0) & 
-- (\b2v_inst|r_tim_units_ns\(3) $ (!\b2v_inst|r_tim_units_ns\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_tim_units_ns\(2),
	datab => \b2v_inst|r_tim_units_ns\(3),
	datac => \b2v_inst|r_tim_units_ns\(1),
	datad => \b2v_inst|r_tim_units_ns\(0),
	combout => \b2v_inst7|Mux0~0_combout\);

-- Location: LCCOMB_X29_Y26_N30
\b2v_inst7|a~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst7|a~0_combout\ = ((\i_sys_rst~input_o\) # (\b2v_inst7|Mux0~0_combout\)) # (!\b2v_inst|r_seg_en~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_seg_en~combout\,
	datac => \i_sys_rst~input_o\,
	datad => \b2v_inst7|Mux0~0_combout\,
	combout => \b2v_inst7|a~0_combout\);

-- Location: LCCOMB_X29_Y26_N28
\b2v_inst7|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst7|Mux1~0_combout\ = (\b2v_inst|r_tim_units_ns\(3) & ((\b2v_inst|r_tim_units_ns\(0) & ((\b2v_inst|r_tim_units_ns\(1)))) # (!\b2v_inst|r_tim_units_ns\(0) & (\b2v_inst|r_tim_units_ns\(2))))) # (!\b2v_inst|r_tim_units_ns\(3) & 
-- (\b2v_inst|r_tim_units_ns\(2) & (\b2v_inst|r_tim_units_ns\(1) $ (\b2v_inst|r_tim_units_ns\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_tim_units_ns\(2),
	datab => \b2v_inst|r_tim_units_ns\(3),
	datac => \b2v_inst|r_tim_units_ns\(1),
	datad => \b2v_inst|r_tim_units_ns\(0),
	combout => \b2v_inst7|Mux1~0_combout\);

-- Location: LCCOMB_X29_Y26_N2
\b2v_inst7|b~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst7|b~0_combout\ = ((\i_sys_rst~input_o\) # (\b2v_inst7|Mux1~0_combout\)) # (!\b2v_inst|r_seg_en~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_seg_en~combout\,
	datac => \i_sys_rst~input_o\,
	datad => \b2v_inst7|Mux1~0_combout\,
	combout => \b2v_inst7|b~0_combout\);

-- Location: LCCOMB_X29_Y26_N12
\b2v_inst7|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst7|Mux2~0_combout\ = (\b2v_inst|r_tim_units_ns\(2) & (\b2v_inst|r_tim_units_ns\(3) & ((\b2v_inst|r_tim_units_ns\(1)) # (!\b2v_inst|r_tim_units_ns\(0))))) # (!\b2v_inst|r_tim_units_ns\(2) & (!\b2v_inst|r_tim_units_ns\(3) & 
-- (\b2v_inst|r_tim_units_ns\(1) & !\b2v_inst|r_tim_units_ns\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_tim_units_ns\(2),
	datab => \b2v_inst|r_tim_units_ns\(3),
	datac => \b2v_inst|r_tim_units_ns\(1),
	datad => \b2v_inst|r_tim_units_ns\(0),
	combout => \b2v_inst7|Mux2~0_combout\);

-- Location: LCCOMB_X29_Y26_N14
\b2v_inst7|c~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst7|c~0_combout\ = ((\i_sys_rst~input_o\) # (\b2v_inst7|Mux2~0_combout\)) # (!\b2v_inst|r_seg_en~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_seg_en~combout\,
	datac => \i_sys_rst~input_o\,
	datad => \b2v_inst7|Mux2~0_combout\,
	combout => \b2v_inst7|c~0_combout\);

-- Location: LCCOMB_X29_Y26_N4
\b2v_inst7|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst7|Mux3~0_combout\ = (\b2v_inst|r_tim_units_ns\(1) & ((\b2v_inst|r_tim_units_ns\(2) & ((\b2v_inst|r_tim_units_ns\(0)))) # (!\b2v_inst|r_tim_units_ns\(2) & (\b2v_inst|r_tim_units_ns\(3) & !\b2v_inst|r_tim_units_ns\(0))))) # 
-- (!\b2v_inst|r_tim_units_ns\(1) & (!\b2v_inst|r_tim_units_ns\(3) & (\b2v_inst|r_tim_units_ns\(2) $ (\b2v_inst|r_tim_units_ns\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_tim_units_ns\(2),
	datab => \b2v_inst|r_tim_units_ns\(3),
	datac => \b2v_inst|r_tim_units_ns\(1),
	datad => \b2v_inst|r_tim_units_ns\(0),
	combout => \b2v_inst7|Mux3~0_combout\);

-- Location: LCCOMB_X29_Y26_N22
\b2v_inst7|d~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst7|d~0_combout\ = ((\i_sys_rst~input_o\) # (\b2v_inst7|Mux3~0_combout\)) # (!\b2v_inst|r_seg_en~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_seg_en~combout\,
	datab => \i_sys_rst~input_o\,
	datad => \b2v_inst7|Mux3~0_combout\,
	combout => \b2v_inst7|d~0_combout\);

-- Location: LCCOMB_X29_Y26_N0
\b2v_inst7|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst7|Mux4~0_combout\ = (\b2v_inst|r_tim_units_ns\(1) & (((!\b2v_inst|r_tim_units_ns\(3) & \b2v_inst|r_tim_units_ns\(0))))) # (!\b2v_inst|r_tim_units_ns\(1) & ((\b2v_inst|r_tim_units_ns\(2) & (!\b2v_inst|r_tim_units_ns\(3))) # 
-- (!\b2v_inst|r_tim_units_ns\(2) & ((\b2v_inst|r_tim_units_ns\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_tim_units_ns\(2),
	datab => \b2v_inst|r_tim_units_ns\(3),
	datac => \b2v_inst|r_tim_units_ns\(1),
	datad => \b2v_inst|r_tim_units_ns\(0),
	combout => \b2v_inst7|Mux4~0_combout\);

-- Location: LCCOMB_X29_Y26_N10
\b2v_inst7|e~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst7|e~0_combout\ = ((\i_sys_rst~input_o\) # (\b2v_inst7|Mux4~0_combout\)) # (!\b2v_inst|r_seg_en~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_seg_en~combout\,
	datab => \i_sys_rst~input_o\,
	datad => \b2v_inst7|Mux4~0_combout\,
	combout => \b2v_inst7|e~0_combout\);

-- Location: LCCOMB_X29_Y26_N16
\b2v_inst7|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst7|Mux5~0_combout\ = (\b2v_inst|r_tim_units_ns\(2) & (\b2v_inst|r_tim_units_ns\(0) & (\b2v_inst|r_tim_units_ns\(3) $ (\b2v_inst|r_tim_units_ns\(1))))) # (!\b2v_inst|r_tim_units_ns\(2) & (!\b2v_inst|r_tim_units_ns\(3) & 
-- ((\b2v_inst|r_tim_units_ns\(1)) # (\b2v_inst|r_tim_units_ns\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_tim_units_ns\(2),
	datab => \b2v_inst|r_tim_units_ns\(3),
	datac => \b2v_inst|r_tim_units_ns\(1),
	datad => \b2v_inst|r_tim_units_ns\(0),
	combout => \b2v_inst7|Mux5~0_combout\);

-- Location: LCCOMB_X29_Y26_N18
\b2v_inst7|f~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst7|f~0_combout\ = ((\i_sys_rst~input_o\) # (\b2v_inst7|Mux5~0_combout\)) # (!\b2v_inst|r_seg_en~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_seg_en~combout\,
	datac => \i_sys_rst~input_o\,
	datad => \b2v_inst7|Mux5~0_combout\,
	combout => \b2v_inst7|f~0_combout\);

-- Location: LCCOMB_X29_Y26_N24
\b2v_inst7|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst7|Mux6~0_combout\ = (\b2v_inst|r_tim_units_ns\(0) & ((\b2v_inst|r_tim_units_ns\(3)) # (\b2v_inst|r_tim_units_ns\(2) $ (\b2v_inst|r_tim_units_ns\(1))))) # (!\b2v_inst|r_tim_units_ns\(0) & ((\b2v_inst|r_tim_units_ns\(1)) # 
-- (\b2v_inst|r_tim_units_ns\(2) $ (\b2v_inst|r_tim_units_ns\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_tim_units_ns\(2),
	datab => \b2v_inst|r_tim_units_ns\(3),
	datac => \b2v_inst|r_tim_units_ns\(1),
	datad => \b2v_inst|r_tim_units_ns\(0),
	combout => \b2v_inst7|Mux6~0_combout\);

-- Location: LCCOMB_X29_Y26_N6
\b2v_inst7|g~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst7|g~0_combout\ = ((\i_sys_rst~input_o\) # (!\b2v_inst7|Mux6~0_combout\)) # (!\b2v_inst|r_seg_en~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|r_seg_en~combout\,
	datac => \i_sys_rst~input_o\,
	datad => \b2v_inst7|Mux6~0_combout\,
	combout => \b2v_inst7|g~0_combout\);

ww_o_ew_red <= \o_ew_red~output_o\;

ww_o_ew_yellow <= \o_ew_yellow~output_o\;

ww_o_ew_green <= \o_ew_green~output_o\;

ww_o_ns_red <= \o_ns_red~output_o\;

ww_o_ns_yellow <= \o_ns_yellow~output_o\;

ww_o_ns_green <= \o_ns_green~output_o\;

ww_o_ew_tens_a <= \o_ew_tens_a~output_o\;

ww_o_ew_tens_b <= \o_ew_tens_b~output_o\;

ww_o_ew_tens_c <= \o_ew_tens_c~output_o\;

ww_o_ew_tens_d <= \o_ew_tens_d~output_o\;

ww_o_ew_tens_e <= \o_ew_tens_e~output_o\;

ww_o_ew_tens_f <= \o_ew_tens_f~output_o\;

ww_o_ew_tens_g <= \o_ew_tens_g~output_o\;

ww_o_ew_units_a <= \o_ew_units_a~output_o\;

ww_o_ew_units_b <= \o_ew_units_b~output_o\;

ww_o_ew_units_c <= \o_ew_units_c~output_o\;

ww_o_ew_units_d <= \o_ew_units_d~output_o\;

ww_o_ew_units_e <= \o_ew_units_e~output_o\;

ww_o_ew_units_f <= \o_ew_units_f~output_o\;

ww_o_ew_units_g <= \o_ew_units_g~output_o\;

ww_o_ns_tens_a <= \o_ns_tens_a~output_o\;

ww_o_ns_tens_b <= \o_ns_tens_b~output_o\;

ww_o_ns_tens_c <= \o_ns_tens_c~output_o\;

ww_o_ns_tens_d <= \o_ns_tens_d~output_o\;

ww_o_ns_tens_e <= \o_ns_tens_e~output_o\;

ww_o_ns_tens_f <= \o_ns_tens_f~output_o\;

ww_o_ns_tens_g <= \o_ns_tens_g~output_o\;

ww_o_ns_units_a <= \o_ns_units_a~output_o\;

ww_o_ns_units_b <= \o_ns_units_b~output_o\;

ww_o_ns_units_c <= \o_ns_units_c~output_o\;

ww_o_ns_units_d <= \o_ns_units_d~output_o\;

ww_o_ns_units_e <= \o_ns_units_e~output_o\;

ww_o_ns_units_f <= \o_ns_units_f~output_o\;

ww_o_ns_units_g <= \o_ns_units_g~output_o\;
END structure;


