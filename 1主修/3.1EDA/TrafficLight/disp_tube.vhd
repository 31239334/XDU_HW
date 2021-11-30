LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_arith.all;
USE IEEE.std_logic_unsigned.all;

--七段数码管显示
entity disp_tube is
	port(
		i_time_val:in std_logic_vector(3 downto 0);
		i_sys_rst:in std_logic;
		i_sys_en:in std_logic;
		a,b,c,d,e,f,g:out std_logic
		--o_tube_disp_val:out std_logic_vector(6 downto 0)
	);
end entity disp_tube;

architecture behavior of disp_tube is
	signal r_tube_disp_val:std_logic_vector(6 downto 0);
	begin
	process(i_sys_rst,i_time_val,i_sys_en)
		begin
			if(i_sys_en='1')then
				if(i_sys_rst='1')then
					r_tube_disp_val<="1111111";
				else
					case i_time_val is
						when "0000" =>r_tube_disp_val<="0000001";
						when "0001" =>r_tube_disp_val<="1001111";
						when "0010" =>r_tube_disp_val<="0010010";
						when "0011" =>r_tube_disp_val<="0000110";
						when "0100" =>r_tube_disp_val<="1001100";
						when "0101" =>r_tube_disp_val<="0100100";
						when "0110" =>r_tube_disp_val<="0100000";
						when "0111" =>r_tube_disp_val<="0001111";
						when "1000" =>r_tube_disp_val<="0000000";
						when "1001" =>r_tube_disp_val<="0000100";
						when "1010" =>r_tube_disp_val<="0001000";
						when "1011" =>r_tube_disp_val<="1100000";
						when "1100" =>r_tube_disp_val<="0110001";
						when "1101" =>r_tube_disp_val<="1000010";
						when "1110" =>r_tube_disp_val<="0110000";
						when "1111" =>r_tube_disp_val<="0111000";
						when others=>r_tube_disp_val<="1111111";
					end case;
				end if;
			else
				r_tube_disp_val<="1111111";
			end if;
	end process;
	a<=r_tube_disp_val(6);
   b<=r_tube_disp_val(5);
   c<=r_tube_disp_val(4);
   d<=r_tube_disp_val(3);
   e<=r_tube_disp_val(2);
   f<=r_tube_disp_val(1);
   g<=r_tube_disp_val(0);
	--o_tube_disp_val<=r_tube_disp_val;
end architecture behavior;