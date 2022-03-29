library IEEE;
use IEEE.std_logic_1164.all;
	entity MUX16 is 
		port( d : in std_logic_vector(15 downto 0);
				s : in std_logic_vector(3 downto 0); 
			   QMUX : out std_logic);
		end;
		
	architecture MUXcalisma of MUX16 is
		begin 
			with s select
			QMUX <=  d(0) when "0000",
						d(1) when "0001",
						d(2) when "0010",
						d(3) when "0011",
						d(4) when "0100",
						d(5) when "0101",
						d(6) when "0110",
						d(7) when "0111",
						d(8) when "1000",
						d(9) when "1001",
						d(10) when "1010",
						d(11) when "1011",
						d(12) when "1100",
						d(13) when "1101",
						d(14) when "1110",
						d(15) when "1111";
			
		end;