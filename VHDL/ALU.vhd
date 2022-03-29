library IEEE;
	use IEEE.std_logic_1164.all;
	
	entity ALU is
		port( AC_ALU : in std_logic_vector(15 downto 0);
				DR_ALU : in std_logic_vector(15 downto 0);
				INPR_ALU : in std_logic_vector(15 downto 0);
				C_ALU : in std_logic;
				S_ALU : in std_logic_vector(3 downto 0);
				COUT_ALU: out std_logic;
				Q_ALU : out std_logic_vector(15 downto 0)
			);
	end;		
		
	architecture ALUcalisma of ALU is
		component ACMUX
			port( AC : in std_logic_vector(15 downto 0);
					INPR : in std_logic_vector(15 downto 0);
					SAC : in std_logic_vector(3 downto 0);
					QACMUX : out std_logic_vector(15 downto 0)
				);
			end component;
			
		component DRMUX 
			port( DR : in std_logic_vector(15 downto 0);
					SDR : in std_logic_vector(3 downto 0);
					QDRMUX : out std_logic_vector(15 downto 0)
				);
			end component;
			
		component MUX16
			port( d : in std_logic_vector(15 downto 0);
					s : in std_logic_vector(3 downto 0); 
					QMUX : out std_logic);
		end component;
		
		component FA
			port( a, b, cin : in std_logic;
					QFA, cout : out std_logic
				);
		end component;
		
		
		
			signal Sgnl_QFA ,Sgnl_QACMUX ,Sgnl_QDRMUX , c, x12, x13, x14, x15, o : std_logic_vector(15 downto 0);
			signal carry : std_logic;
			
		begin
			no1: ACMUX port map(AC=>AC_ALU, SAC=>S_ALU, INPR=>INPR_ALU, QACMUX=>Sgnl_QACMUX);
			no2: DRMUX port map(DR=>DR_ALU, SDR=>S_ALU, QDRMUX=>Sgnl_QDRMUX);
			no3: MUX16 port map(d(0)=>'0', d(1)=>C_ALU, d(2)=>'1', d(3)=>'0', d(4)=>'0', d(5)=>'1', d(6)=>'0', d(7)=>'0', d(8)=>'1', d(9)=>'0', d(10)=>'0', d(11)=>'1', s(0)=>S_ALU(0), s(1)=>S_ALU(1), s(2)=>S_ALU(2), s(3)=>S_ALU(3), QMUX=>carry);
			
			no4: FA port map(a=>Sgnl_QACMUX(0), b=>Sgnl_QDRMUX(0), cin=>carry, cout=>c(0), QFA=>Sgnl_QFA(0));
			no5: FA port map(a=>Sgnl_QACMUX(1), b=>Sgnl_QDRMUX(1), cin=>c(0), cout=>c(1), QFA=>Sgnl_QFA(1));
			no6: FA port map(a=>Sgnl_QACMUX(2), b=>Sgnl_QDRMUX(2), cin=>c(1), cout=>c(2), QFA=>Sgnl_QFA(2));
			no7: FA port map(a=>Sgnl_QACMUX(3), b=>Sgnl_QDRMUX(3), cin=>c(2), cout=>c(3), QFA=>Sgnl_QFA(3));
			no8: FA port map(a=>Sgnl_QACMUX(4), b=>Sgnl_QDRMUX(4), cin=>c(3), cout=>c(4), QFA=>Sgnl_QFA(4));
			no9: FA port map(a=>Sgnl_QACMUX(5), b=>Sgnl_QDRMUX(5), cin=>c(4), cout=>c(5), QFA=>Sgnl_QFA(5));
			no10: FA port map(a=>Sgnl_QACMUX(6), b=>Sgnl_QDRMUX(6), cin=>c(5), cout=>c(6), QFA=>Sgnl_QFA(6));
			no11: FA port map(a=>Sgnl_QACMUX(7), b=>Sgnl_QDRMUX(7), cin=>c(6), cout=>c(7), QFA=>Sgnl_QFA(7));
			no12: FA port map(a=>Sgnl_QACMUX(8), b=>Sgnl_QDRMUX(8), cin=>c(7), cout=>c(8), QFA=>Sgnl_QFA(8));
			no13: FA port map(a=>Sgnl_QACMUX(9), b=>Sgnl_QDRMUX(9), cin=>c(8), cout=>c(9), QFA=>Sgnl_QFA(9));
			no14: FA port map(a=>Sgnl_QACMUX(10), b=>Sgnl_QDRMUX(10), cin=>c(9), cout=>c(10), QFA=>Sgnl_QFA(10));
			no15: FA port map(a=>Sgnl_QACMUX(11), b=>Sgnl_QDRMUX(11), cin=>c(10), cout=>c(11), QFA=>Sgnl_QFA(11));
			no16: FA port map(a=>Sgnl_QACMUX(12), b=>Sgnl_QDRMUX(12), cin=>c(11), cout=>c(12), QFA=>Sgnl_QFA(12));
			no17: FA port map(a=>Sgnl_QACMUX(13), b=>Sgnl_QDRMUX(13), cin=>c(12), cout=>c(13), QFA=>Sgnl_QFA(13));
			no18: FA port map(a=>Sgnl_QACMUX(14), b=>Sgnl_QDRMUX(14), cin=>c(13), cout=>c(14), QFA=>Sgnl_QFA(14));
			no19: FA port map(a=>Sgnl_QACMUX(15), b=>Sgnl_QDRMUX(15), cin=>c(14), cout=>c(15), QFA=>Sgnl_QFA(15));
			COUT_ALU <= c(15);
			
		
			x12 <= Sgnl_QACMUX or Sgnl_QDRMUX;
			x13 <= Sgnl_QACMUX and Sgnl_QDRMUX;
			x14 <= not Sgnl_QDRMUX;
			x15 <= not Sgnl_QACMUX;
			
			with S_ALU select
				o <=  Sgnl_QFA when "0000",
							Sgnl_QFA when "0001",
							Sgnl_QFA when "0010",
							Sgnl_QFA when "0011",
							Sgnl_QFA when "0100",
							Sgnl_QFA when "0101",
							Sgnl_QFA when "0110",
							Sgnl_QFA when "0111",
							Sgnl_QFA when "1000",
							Sgnl_QFA when "1001",
							Sgnl_QFA when "1010",
							Sgnl_QFA when "1011",
							x12 when "1100",
							x13 when "1101",
							x14 when "1110",
							x15 when "1111";
			
			Q_ALU(0)<=o(0);
			Q_ALU(1)<=o(1);
			Q_ALU(2)<=o(2);
			Q_ALU(3)<=o(3);
			Q_ALU(4)<=o(4);
			Q_ALU(5)<=o(5);
			Q_ALU(6)<=o(6);
			Q_ALU(7)<=o(7);
			Q_ALU(8)<=o(8);
			Q_ALU(9)<=o(9);
			Q_ALU(10)<=o(10);
			Q_ALU(11)<=o(11);
			Q_ALU(12)<=o(12);
			Q_ALU(13)<=o(13);
			Q_ALU(14)<=o(14);
			Q_ALU(15)<=o(15);
			
			
	end;
			