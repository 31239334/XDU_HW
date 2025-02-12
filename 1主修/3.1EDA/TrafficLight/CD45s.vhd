LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_arith.all;
USE IEEE.std_logic_unsigned.all;
 
--倒计时45秒
entity CD45s is
	port(
		i_div_clk:in std_logic;								--1hz时钟输入
		i_sys_rst:in std_logic;								--复位
		i_sys_emergency:in std_logic;						--紧急状态
		o_tim_tens:out std_logic_vector(3 downto 0);	--输出倒计时十位BCD
		o_tim_units:out std_logic_vector(3 downto 0);--输出倒计时个位BCD
      o_tim_carry:out std_logic							--输出进位
	);
end entity CD45s;

architecture behavior of CD45s is
	signal cout_tens,cout_units:std_logic_vector(3 downto 0);
	signal r_tim_carry:std_logic;
	begin
		process(i_sys_rst,i_div_clk,i_sys_emergency)
			begin
				if i_sys_rst='1'then
					cout_tens<="0000";
					cout_units<="0000";
				elsif(i_div_clk'event AND i_div_clk='1')then
					if i_sys_emergency='0'then
					
						if(cout_tens=0 AND cout_units=1)then
							r_tim_carry<='1';
						else
							r_tim_carry<='0';
						end if;
						
						if(cout_tens=0 AND cout_units=0)then
							cout_tens<="0100";
							cout_units<="0100";
							--r_tim_carry<='1';
						elsif(cout_units=0)then
							cout_tens<=cout_tens-1;
							cout_units<="1001";
							--r_tim_carry<='0';
						else
							cout_units<=cout_units-1;
							--r_tim_carry<='0';
						end if;
					end if;
				end if;
		end process;
		o_tim_tens<=cout_tens;
		o_tim_units<=cout_units;
		o_tim_carry<=r_tim_carry;
end architecture behavior;