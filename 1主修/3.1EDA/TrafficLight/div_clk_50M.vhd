LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_arith.all;
USE IEEE.std_logic_unsigned.all;

--分频器
entity div_clk_50M is
	generic(
		sys_clk_val:INTEGER:=50000000;
		div_clk_val:INTEGER:=2
	);
	port(
		i_sys_clk:in std_logic;
		i_sys_rst:in std_logic;
		--i_sys_emergency:in std_logic;
		o_div_clk:out std_logic
	);
end entity div_clk_50M;

architecture behavior of div_clk_50M is
	signal r_div_count:std_logic_vector(31 downto 0);
	signal r_div_clk:std_logic;
	begin
	process(i_sys_rst,i_sys_clk)
		begin
			if(i_sys_rst='1')then--复位键
				r_div_count<=x"00000000";
				r_div_clk<='0';
			elsif(i_sys_clk'event AND i_sys_clk='1')then--上升沿计数
				if(r_div_count=sys_clk_val/div_clk_val/2-1)then--到达24999999清零，输出反相
					r_div_count<=x"00000000";
					r_div_clk<=NOT r_div_clk;
				else
					r_div_count<=r_div_count+1;
				end if;
			end if;
	end process;
	o_div_clk<=r_div_clk;
end architecture behavior;