library IEEE;
	use IEEE.std_logic_1164.all;
		
		entity DRMUX is
			port(	DR : in std_logic_vector(15 downto 0);
					SDR : in std_logic_vector(3 downto 0);
					QDRMUX : out std_logic_vector(15 downto 0)					
				);
		end;
		
		architecture DRMUXcalisma of DRMUX is
			component MUX16
				port( d : in std_logic_vector(15 downto 0);
						s : in std_logic_vector(3 downto 0); 
						QMUX : out std_logic);
			end component;
			begin
				no1 : MUX16 port map(d(0)=>DR(0), d(1)=>DR(0), d(2)=>not(DR(0)), d(3)=>not(DR(0)), d(4)=>DR(0), d(5)=>DR(0), d(6)=>'0', d(7)=>'0', d(8)=>'0', d(9)=>DR(0), d(10)=>'0', d(11)=>'0', d(12)=>DR(0), d(13)=>DR(0), d(14)=>not DR(0), d(15)=>'0', s(0)=>SDR(0), s(1)=>SDR(1), s(2)=>SDR(2), s(3)=>SDR(3), QMUX=>QDRMUX(0));
				no2 : MUX16 port map(d(0)=>DR(1), d(1)=>DR(1), d(2)=>not(DR(1)), d(3)=>not(DR(1)), d(4)=>DR(1), d(5)=>DR(1), d(6)=>'0', d(7)=>'0', d(8)=>'0', d(9)=>DR(1), d(10)=>'0', d(11)=>'0', d(12)=>DR(1), d(13)=>DR(1), d(14)=>not DR(1), d(15)=>'0', s(0)=>SDR(0), s(1)=>SDR(1), s(2)=>SDR(2), s(3)=>SDR(3), QMUX=>QDRMUX(1));
				no3 : MUX16 port map(d(0)=>DR(2), d(1)=>DR(2), d(2)=>not(DR(2)), d(3)=>not(DR(2)), d(4)=>DR(2), d(5)=>DR(2), d(6)=>'0', d(7)=>'0', d(8)=>'0', d(9)=>DR(2), d(10)=>'0', d(11)=>'0', d(12)=>DR(2), d(13)=>DR(2), d(14)=>not DR(2), d(15)=>'0', s(0)=>SDR(0), s(1)=>SDR(1), s(2)=>SDR(2), s(3)=>SDR(3), QMUX=>QDRMUX(2));
				no4 : MUX16 port map(d(0)=>DR(3), d(1)=>DR(3), d(2)=>not(DR(3)), d(3)=>not(DR(3)), d(4)=>DR(3), d(5)=>DR(3), d(6)=>'0', d(7)=>'0', d(8)=>'0', d(9)=>DR(3), d(10)=>'0', d(11)=>'0', d(12)=>DR(3), d(13)=>DR(3), d(14)=>not DR(3), d(15)=>'0', s(0)=>SDR(0), s(1)=>SDR(1), s(2)=>SDR(2), s(3)=>SDR(3), QMUX=>QDRMUX(3));
				no5 : MUX16 port map(d(0)=>DR(4), d(1)=>DR(4), d(2)=>not(DR(4)), d(3)=>not(DR(4)), d(4)=>DR(4), d(5)=>DR(4), d(6)=>'0', d(7)=>'0', d(8)=>'0', d(9)=>DR(4), d(10)=>'0', d(11)=>'0', d(12)=>DR(4), d(13)=>DR(4), d(14)=>not DR(4), d(15)=>'0', s(0)=>SDR(0), s(1)=>SDR(1), s(2)=>SDR(2), s(3)=>SDR(3), QMUX=>QDRMUX(4));
				no6 : MUX16 port map(d(0)=>DR(5), d(1)=>DR(5), d(2)=>not(DR(5)), d(3)=>not(DR(5)), d(4)=>DR(5), d(5)=>DR(5), d(6)=>'0', d(7)=>'0', d(8)=>'0', d(9)=>DR(5), d(10)=>'0', d(11)=>'0', d(12)=>DR(5), d(13)=>DR(5), d(14)=>not DR(5), d(15)=>'0', s(0)=>SDR(0), s(1)=>SDR(1), s(2)=>SDR(2), s(3)=>SDR(3), QMUX=>QDRMUX(5));
				no7 : MUX16 port map(d(0)=>DR(6), d(1)=>DR(6), d(2)=>not(DR(6)), d(3)=>not(DR(6)), d(4)=>DR(6), d(5)=>DR(6), d(6)=>'0', d(7)=>'0', d(8)=>'0', d(9)=>DR(6), d(10)=>'0', d(11)=>'0', d(12)=>DR(6), d(13)=>DR(6), d(14)=>not DR(6), d(15)=>'0', s(0)=>SDR(0), s(1)=>SDR(1), s(2)=>SDR(2), s(3)=>SDR(3), QMUX=>QDRMUX(6));
				no8 : MUX16 port map(d(0)=>DR(7), d(1)=>DR(7), d(2)=>not(DR(7)), d(3)=>not(DR(7)), d(4)=>DR(7), d(5)=>DR(7), d(6)=>'0', d(7)=>'0', d(8)=>'0', d(9)=>DR(7), d(10)=>'0', d(11)=>'0', d(12)=>DR(7), d(13)=>DR(7), d(14)=>not DR(7), d(15)=>'0', s(0)=>SDR(0), s(1)=>SDR(1), s(2)=>SDR(2), s(3)=>SDR(3), QMUX=>QDRMUX(7));
				no9 : MUX16 port map(d(0)=>DR(8), d(1)=>DR(8), d(2)=>not(DR(8)), d(3)=>not(DR(8)), d(4)=>DR(8), d(5)=>DR(8), d(6)=>'0', d(7)=>'0', d(8)=>'0', d(9)=>DR(8), d(10)=>'0', d(11)=>'0', d(12)=>DR(8), d(13)=>DR(8), d(14)=>not DR(8), d(15)=>'0', s(0)=>SDR(0), s(1)=>SDR(1), s(2)=>SDR(2), s(3)=>SDR(3), QMUX=>QDRMUX(8));
				no10 : MUX16 port map(d(0)=>DR(9), d(1)=>DR(9), d(2)=>not(DR(9)), d(3)=>not(DR(9)), d(4)=>DR(9), d(5)=>DR(9), d(6)=>'0', d(7)=>'0', d(8)=>'0', d(9)=>DR(9), d(10)=>'0', d(11)=>'0', d(12)=>DR(9), d(13)=>DR(9), d(14)=>not DR(9), d(15)=>'0', s(0)=>SDR(0), s(1)=>SDR(1), s(2)=>SDR(2), s(3)=>SDR(3), QMUX=>QDRMUX(9));
				no11 : MUX16 port map(d(0)=>DR(10), d(1)=>DR(10), d(2)=>not(DR(10)), d(3)=>not(DR(10)), d(4)=>DR(10), d(5)=>DR(10), d(6)=>'0', d(7)=>'0', d(8)=>'0', d(9)=>DR(10), d(10)=>'0', d(11)=>'0', d(12)=>DR(10), d(13)=>DR(10), d(14)=>not DR(10), d(15)=>'0', s(0)=>SDR(0), s(1)=>SDR(1), s(2)=>SDR(2), s(3)=>SDR(3), QMUX=>QDRMUX(10));
				no12 : MUX16 port map(d(0)=>DR(11), d(1)=>DR(11), d(2)=>not(DR(11)), d(3)=>not(DR(11)), d(4)=>DR(11), d(5)=>DR(11), d(6)=>'0', d(7)=>'0', d(8)=>'0', d(9)=>DR(11), d(10)=>'0', d(11)=>'0', d(12)=>DR(11), d(13)=>DR(11), d(14)=>not DR(11), d(15)=>'0', s(0)=>SDR(0), s(1)=>SDR(1), s(2)=>SDR(2), s(3)=>SDR(3), QMUX=>QDRMUX(11));
				no13 : MUX16 port map(d(0)=>DR(12), d(1)=>DR(12), d(2)=>not(DR(12)), d(3)=>not(DR(12)), d(4)=>DR(12), d(5)=>DR(12), d(6)=>'0', d(7)=>'0', d(8)=>'0', d(9)=>DR(12), d(10)=>'0', d(11)=>'0', d(12)=>DR(12), d(13)=>DR(12), d(14)=>not DR(12), d(15)=>'0', s(0)=>SDR(0), s(1)=>SDR(1), s(2)=>SDR(2), s(3)=>SDR(3), QMUX=>QDRMUX(12));
				no14 : MUX16 port map(d(0)=>DR(13), d(1)=>DR(13), d(2)=>not(DR(13)), d(3)=>not(DR(13)), d(4)=>DR(13), d(5)=>DR(13), d(6)=>'0', d(7)=>'0', d(8)=>'0', d(9)=>DR(13), d(10)=>'0', d(11)=>'0', d(12)=>DR(13), d(13)=>DR(13), d(14)=>not DR(13), d(15)=>'0', s(0)=>SDR(0), s(1)=>SDR(1), s(2)=>SDR(2), s(3)=>SDR(3), QMUX=>QDRMUX(13));
				no15 : MUX16 port map(d(0)=>DR(14), d(1)=>DR(14), d(2)=>not(DR(14)), d(3)=>not(DR(14)), d(4)=>DR(14), d(5)=>DR(14), d(6)=>'0', d(7)=>'0', d(8)=>'0', d(9)=>DR(14), d(10)=>'0', d(11)=>'0', d(12)=>DR(14), d(13)=>DR(14), d(14)=>not DR(14), d(15)=>'0', s(0)=>SDR(0), s(1)=>SDR(1), s(2)=>SDR(2), s(3)=>SDR(3), QMUX=>QDRMUX(14));
				no16 : MUX16 port map(d(0)=>DR(15), d(1)=>DR(15), d(2)=>not(DR(15)), d(3)=>not(DR(15)), d(4)=>DR(15), d(5)=>DR(15), d(6)=>'0', d(7)=>'0', d(8)=>'0', d(9)=>DR(15), d(10)=>'0', d(11)=>'0', d(12)=>DR(15), d(13)=>DR(15), d(14)=>not DR(15), d(15)=>'0', s(0)=>SDR(0), s(1)=>SDR(1), s(2)=>SDR(2), s(3)=>SDR(3), QMUX=>QDRMUX(15));
				
		end;
				