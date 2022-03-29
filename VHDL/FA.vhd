library IEEE;
use IEEE.std_logic_1164.all;
	entity FA is 
		port(a, b, cin : in std_logic;
			  QFA, cout : out std_logic );
		end;
		
	architecture FAcalisma of FA is
	begin 
		QFA <= (a xor b) xor cin;
		cout <= (a and b) or ((a xor b) and cin);
	end;