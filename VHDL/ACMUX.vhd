library IEEE;
	use IEEE.std_logic_1164.all;
		
		entity ACMUX is
			port(	AC : in std_logic_vector(15 downto 0);
					INPR : in std_logic_vector(15 downto 0);
					SAC : in std_logic_vector(3 downto 0);
					QACMUX : out std_logic_vector(15 downto 0)					
				);
		end;
		
		architecture ACMUXcalisma of ACMUX is
			component MUX16
				port( d : in std_logic_vector(15 downto 0);
						s : in std_logic_vector(3 downto 0); 
						QMUX : out std_logic);
			end component;
			begin
				no1 : MUX16 port map(d(0)=>AC(0), d(1)=>AC(0), d(2)=>AC(0), d(3)=>AC(0), d(4)=>'0', d(5)=>'0', d(6)=>AC(0), d(7)=>INPR(0), d(8)=>AC(0), d(9)=>'0', d(10)=>AC(0), d(11)=>INPR(0), d(12)=>AC(0), d(13)=>AC(0), d(14)=>'0', d(15)=>not AC(0), s(0)=>SAC(0), s(1)=>SAC(1), s(2)=>SAC(2), s(3)=>SAC(3), QMUX=>QACMUX(0));
				no2 : MUX16 port map(d(0)=>AC(1), d(1)=>AC(1), d(2)=>AC(1), d(3)=>AC(1), d(4)=>'0', d(5)=>'0', d(6)=>AC(1), d(7)=>INPR(1), d(8)=>AC(1), d(9)=>'0', d(10)=>AC(1), d(11)=>INPR(1), d(12)=>AC(1), d(13)=>AC(1), d(14)=>'0', d(15)=>not AC(1), s(0)=>SAC(0), s(1)=>SAC(1), s(2)=>SAC(2), s(3)=>SAC(3), QMUX=>QACMUX(1));
				no3 : MUX16 port map(d(0)=>AC(2), d(1)=>AC(2), d(2)=>AC(2), d(3)=>AC(2), d(4)=>'0', d(5)=>'0', d(6)=>AC(2), d(7)=>INPR(2), d(8)=>AC(2), d(9)=>'0', d(10)=>AC(2), d(11)=>INPR(2), d(12)=>AC(2), d(13)=>AC(2), d(14)=>'0', d(15)=>not AC(2), s(0)=>SAC(0), s(1)=>SAC(1), s(2)=>SAC(2), s(3)=>SAC(3), QMUX=>QACMUX(2));
				no4 : MUX16 port map(d(0)=>AC(3), d(1)=>AC(3), d(2)=>AC(3), d(3)=>AC(3), d(4)=>'0', d(5)=>'0', d(6)=>AC(3), d(7)=>INPR(3), d(8)=>AC(3), d(9)=>'0', d(10)=>AC(3), d(11)=>INPR(3), d(12)=>AC(3), d(13)=>AC(3), d(14)=>'0', d(15)=>not AC(3), s(0)=>SAC(0), s(1)=>SAC(1), s(2)=>SAC(2), s(3)=>SAC(3), QMUX=>QACMUX(3));
				no5 : MUX16 port map(d(0)=>AC(4), d(1)=>AC(4), d(2)=>AC(4), d(3)=>AC(4), d(4)=>'0', d(5)=>'0', d(6)=>AC(4), d(7)=>INPR(4), d(8)=>AC(4), d(9)=>'0', d(10)=>AC(4), d(11)=>INPR(4), d(12)=>AC(4), d(13)=>AC(4), d(14)=>'0', d(15)=>not AC(4), s(0)=>SAC(0), s(1)=>SAC(1), s(2)=>SAC(2), s(3)=>SAC(3), QMUX=>QACMUX(4));
				no6 : MUX16 port map(d(0)=>AC(5), d(1)=>AC(5), d(2)=>AC(5), d(3)=>AC(5), d(4)=>'0', d(5)=>'0', d(6)=>AC(5), d(7)=>INPR(5), d(8)=>AC(5), d(9)=>'0', d(10)=>AC(5), d(11)=>INPR(5), d(12)=>AC(5), d(13)=>AC(5), d(14)=>'0', d(15)=>not AC(5), s(0)=>SAC(0), s(1)=>SAC(1), s(2)=>SAC(2), s(3)=>SAC(3), QMUX=>QACMUX(5));
				no7 : MUX16 port map(d(0)=>AC(6), d(1)=>AC(6), d(2)=>AC(6), d(3)=>AC(6), d(4)=>'0', d(5)=>'0', d(6)=>AC(6), d(7)=>INPR(6), d(8)=>AC(6), d(9)=>'0', d(10)=>AC(6), d(11)=>INPR(6), d(12)=>AC(6), d(13)=>AC(6), d(14)=>'0', d(15)=>not AC(6), s(0)=>SAC(0), s(1)=>SAC(1), s(2)=>SAC(2), s(3)=>SAC(3), QMUX=>QACMUX(6));
				no8 : MUX16 port map(d(0)=>AC(7), d(1)=>AC(7), d(2)=>AC(7), d(3)=>AC(7), d(4)=>'0', d(5)=>'0', d(6)=>AC(7), d(7)=>INPR(7), d(8)=>AC(7), d(9)=>'0', d(10)=>AC(7), d(11)=>INPR(7), d(12)=>AC(7), d(13)=>AC(7), d(14)=>'0', d(15)=>not AC(7), s(0)=>SAC(0), s(1)=>SAC(1), s(2)=>SAC(2), s(3)=>SAC(3), QMUX=>QACMUX(7));
				no9 : MUX16 port map(d(0)=>AC(8), d(1)=>AC(8), d(2)=>AC(8), d(3)=>AC(8), d(4)=>'0', d(5)=>'0', d(6)=>AC(8), d(7)=>INPR(8), d(8)=>AC(8), d(9)=>'0', d(10)=>AC(8), d(11)=>INPR(8), d(12)=>AC(8), d(13)=>AC(8), d(14)=>'0', d(15)=>not AC(8), s(0)=>SAC(0), s(1)=>SAC(1), s(2)=>SAC(2), s(3)=>SAC(3), QMUX=>QACMUX(8));
				no10 : MUX16 port map(d(0)=>AC(9), d(1)=>AC(9), d(2)=>AC(9), d(3)=>AC(9), d(4)=>'0', d(5)=>'0', d(6)=>AC(9), d(7)=>INPR(9), d(8)=>AC(9), d(9)=>'0', d(10)=>AC(9), d(11)=>INPR(9), d(12)=>AC(9), d(13)=>AC(9), d(14)=>'0', d(15)=>not AC(9), s(0)=>SAC(0), s(1)=>SAC(1), s(2)=>SAC(2), s(3)=>SAC(3), QMUX=>QACMUX(9));
				no11 : MUX16 port map(d(0)=>AC(10), d(1)=>AC(10), d(2)=>AC(10), d(3)=>AC(10), d(4)=>'0', d(5)=>'0', d(6)=>AC(10), d(7)=>INPR(10), d(8)=>AC(10), d(9)=>'0', d(10)=>AC(10), d(11)=>INPR(10), d(12)=>AC(10), d(13)=>AC(10), d(14)=>'0', d(15)=>not AC(10), s(0)=>SAC(0), s(1)=>SAC(1), s(2)=>SAC(2), s(3)=>SAC(3), QMUX=>QACMUX(10));
				no12 : MUX16 port map(d(0)=>AC(11), d(1)=>AC(11), d(2)=>AC(11), d(3)=>AC(11), d(4)=>'0', d(5)=>'0', d(6)=>AC(11), d(7)=>INPR(11), d(8)=>AC(11), d(9)=>'0', d(10)=>AC(11), d(11)=>INPR(11), d(12)=>AC(11), d(13)=>AC(11), d(14)=>'0', d(15)=>not AC(11), s(0)=>SAC(0), s(1)=>SAC(1), s(2)=>SAC(2), s(3)=>SAC(3), QMUX=>QACMUX(11));
				no13 : MUX16 port map(d(0)=>AC(12), d(1)=>AC(12), d(2)=>AC(12), d(3)=>AC(12), d(4)=>'0', d(5)=>'0', d(6)=>AC(12), d(7)=>INPR(12), d(8)=>AC(12), d(9)=>'0', d(10)=>AC(12), d(11)=>INPR(12), d(12)=>AC(12), d(13)=>AC(12), d(14)=>'0', d(15)=>not AC(12), s(0)=>SAC(0), s(1)=>SAC(1), s(2)=>SAC(2), s(3)=>SAC(3), QMUX=>QACMUX(12));
				no14 : MUX16 port map(d(0)=>AC(13), d(1)=>AC(13), d(2)=>AC(13), d(3)=>AC(13), d(4)=>'0', d(5)=>'0', d(6)=>AC(13), d(7)=>INPR(13), d(8)=>AC(13), d(9)=>'0', d(10)=>AC(13), d(11)=>INPR(13), d(12)=>AC(13), d(13)=>AC(13), d(14)=>'0', d(15)=>not AC(13), s(0)=>SAC(0), s(1)=>SAC(1), s(2)=>SAC(2), s(3)=>SAC(3), QMUX=>QACMUX(13));
				no15 : MUX16 port map(d(0)=>AC(14), d(1)=>AC(14), d(2)=>AC(14), d(3)=>AC(14), d(4)=>'0', d(5)=>'0', d(6)=>AC(14), d(7)=>INPR(14), d(8)=>AC(14), d(9)=>'0', d(10)=>AC(14), d(11)=>INPR(14), d(12)=>AC(14), d(13)=>AC(14), d(14)=>'0', d(15)=>not AC(14), s(0)=>SAC(0), s(1)=>SAC(1), s(2)=>SAC(2), s(3)=>SAC(3), QMUX=>QACMUX(14));
				no16 : MUX16 port map(d(0)=>AC(15), d(1)=>AC(15), d(2)=>AC(15), d(3)=>AC(15), d(4)=>'0', d(5)=>'0', d(6)=>AC(15), d(7)=>INPR(15), d(8)=>AC(15), d(9)=>'0', d(10)=>AC(15), d(11)=>INPR(15), d(12)=>AC(15), d(13)=>AC(15), d(14)=>'0', d(15)=>not AC(15), s(0)=>SAC(0), s(1)=>SAC(1), s(2)=>SAC(2), s(3)=>SAC(3), QMUX=>QACMUX(15));

			
		end;
				