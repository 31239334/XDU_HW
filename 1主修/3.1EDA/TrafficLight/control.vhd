LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_arith.all;
USE IEEE.std_logic_unsigned.all;

entity control is
	port(
		i_sys_rst:in std_logic;
		i_div_clk:in std_logic;									--1hz时钟输入
		i_tim_tens:in std_logic_vector(3 downto 0);		--输入倒计时十位BCD
		i_tim_units:in std_logic_vector(3 downto 0);		--输入倒计时个位BCD
      i_tim_carry:in std_logic;								--输入进位
		i_sys_emergency:in std_logic;							--紧急状态
		o_tim_tens_ew:out std_logic_vector(3 downto 0);	--输出东西倒计时十位BCD
		o_tim_units_ew:out std_logic_vector(3 downto 0);--输出东西倒计时个位BCD
		o_tim_tens_ns:out std_logic_vector(3 downto 0);	--输出南北倒计时十位BCD
		o_tim_units_ns:out std_logic_vector(3 downto 0);--输出南北倒计时个位BCD
		o_seg_en:out std_logic;
		o_ew_red,o_ew_yellow,o_ew_green,o_ns_red,o_ns_yellow,o_ns_green:out std_logic--输出东西南北红绿灯
		
	);
end entity control;

architecture behavior of control is
	signal r_tim_tens_ew:std_logic_vector(3 downto 0);
	signal r_tim_units_ew:std_logic_vector(3 downto 0);
	signal r_tim_tens_ns:std_logic_vector(3 downto 0);
	signal r_tim_units_ns:std_logic_vector(3 downto 0);
	signal r_dir_flag:std_logic;								--方向标志位
	signal r_ew_red,r_ew_yellow,r_ew_green,r_ns_red,r_ns_yellow,r_ns_green:std_logic;--输出东西南北红绿灯
	signal r_seg_en:std_logic;
	begin
	process(i_sys_rst,i_div_clk,i_tim_tens,i_tim_units,i_tim_carry,i_sys_emergency)
		begin
			if(i_sys_rst='1')then
				r_dir_flag<='0';
			else
				if(i_tim_carry'event AND i_tim_carry='0')then--交换通行
					r_dir_flag<=NOT r_dir_flag;
				end if;
				if(i_sys_emergency='1')then
					r_seg_en<=i_div_clk;
					--r_ew_red<='1';
					r_ew_red<=i_div_clk;
					r_ew_yellow<='0';
					r_ew_green<='0';
					--r_ns_red<='1';
					r_ns_red<=i_div_clk;
					r_ns_yellow<='0';
					r_ns_green<='0';
				else
					r_seg_en<='1';
					if(r_dir_flag='1')then--东西通行
						if(i_tim_tens=0 AND i_tim_units<5)then
							r_ew_red<='0';
							r_ew_yellow<='1';
							r_ew_green<='0';
							r_tim_tens_ew<=i_tim_tens;
							r_tim_units_ew<=i_tim_units;
							r_seg_en<=i_div_clk;
							
							r_ns_red<='1';
							r_ns_yellow<='1';
							r_ns_green<='0';
						else
							r_ew_red<='0';
							r_ew_yellow<='0';
							if(i_tim_tens=0 AND i_tim_units<=9)then--最后5秒绿灯闪烁
								r_ew_green<=i_div_clk;
							else
								r_ew_green<='1';
							end if;
							
							if(i_tim_units<5)then
								r_tim_tens_ew<=i_tim_tens-1;
								r_tim_units_ew<=i_tim_units+5;
							else
								r_tim_tens_ew<=i_tim_tens;
								r_tim_units_ew<=i_tim_units-5;
							end if;
							r_ns_red<='1';
							r_ns_yellow<='0';
							r_ns_green<='0';
						end if;
						r_tim_tens_ns<=i_tim_tens;
						r_tim_units_ns<=i_tim_units;
						
					else--南北通行
						if(i_tim_tens=0 AND i_tim_units<5)then
							r_ns_red<='0';
							r_ns_yellow<='1';
							r_ns_green<='0';
							r_tim_tens_ns<=i_tim_tens;
							r_tim_units_ns<=i_tim_units;
							r_seg_en<=i_div_clk;
							
							r_ew_red<='1';
							r_ew_yellow<='1';
							r_ew_green<='0';
						else
							r_ns_red<='0';
							r_ns_yellow<='0';
							if(i_tim_tens=0 AND i_tim_units<=9)then--最后5秒绿灯闪烁
								r_ns_green<=i_div_clk;
							else
								r_ns_green<='1';
							end if;
							if(i_tim_units<5)then
								r_tim_tens_ns<=i_tim_tens-1;
								r_tim_units_ns<=i_tim_units+5;
							else
								r_tim_tens_ns<=i_tim_tens;
								r_tim_units_ns<=i_tim_units-5;
							end if;
							r_ew_red<='1';
							r_ew_yellow<='0';
							r_ew_green<='0';
						end if;
						r_tim_tens_ew<=i_tim_tens;
						r_tim_units_ew<=i_tim_units;
					end if;
				end if;
			end if;
	end process;
	o_tim_tens_ew<=r_tim_tens_ew;
	o_tim_units_ew<=r_tim_units_ew;
	o_tim_tens_ns<=r_tim_tens_ns;
	o_tim_units_ns<=r_tim_units_ns;
	o_seg_en<=r_seg_en;
	o_ew_red<=r_ew_red;
	o_ew_yellow<=r_ew_yellow;
	o_ew_green<=r_ew_green;
	o_ns_red<=r_ns_red;
	o_ns_yellow<=r_ns_yellow;
	o_ns_green<=r_ns_green;
end architecture behavior;