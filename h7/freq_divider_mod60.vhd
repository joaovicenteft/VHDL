library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity freq_divider_mod60 is
	port (
		clk : in std_logic;
		divider_clock : buffer std_logic
	);
end freq_divider_mod60;

architecture a_freq_divider_mod60 of freq_divider_mod60 is
begin
	process(clk)
		variable q : natural range 0 to 60000;
		begin
			if (rising_edge(clk)) then
				if (q = 60000) then
					if divider_clock = '1' then
						divider_clock <= '0';
					else
						divider_clock <= '1';
					end if;
					q := 0;
				else 	
					q := q + 1;
				end if;
			end if;
	end process;
end a_freq_divider_mod60; 




