library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use work.constants.all;

entity RCA is 
	generic (DRCAS : 	Time := 0 ns;
	         DRCAC : 	Time := 0 ns;
             Nbit_S: integer :=Nbit_A);
	Port (	A:	In	std_logic_vector(Nbit_S-1 downto 0);
		B:	In	std_logic_vector(Nbit_S-1 downto 0);
		Ci:	In	std_logic;
		S:	Out	std_logic_vector(Nbit_S-1 downto 0);
		Co:	Out	std_logic);
end RCA; 

architecture STRUCTURAL of RCA is

  signal STMP : std_logic_vector(Nbit_S-1 downto 0);
  signal CTMP : std_logic_vector(Nbit_S downto 0);

  component FA 
  generic (DFAS : 	Time := 0 ns;
           DFAC : 	Time := 0 ns);
  Port ( A:	In	std_logic;
	 B:	In	std_logic;
	 Ci:	In	std_logic;
	 S:	Out	std_logic;
	 Co:	Out	std_logic);
  end component; 

begin

  CTMP(0) <= Ci;
  S <= STMP;
  Co <= CTMP(Nbit_S);
  
  ADDER1: for I in 1 to Nbit_S generate
    FAI : FA 
	  generic map (DFAS => DRCAS, DFAC => DRCAC) 
	  Port Map (A(I-1), B(I-1), CTMP(I-1), STMP(I-1), CTMP(I)); 
  end generate;

end STRUCTURAL;


architecture BEHAVIORAL of RCA is
 signal carry : std_logic_vector(Nbit_S downto 0);
begin
  carry(0) <= Ci;
  S <= std_logic_vector(unsigned(A) + unsigned(B)) after DRCAS;

  process(A,B,carry)
  begin 
  for i in 1 to Nbit_S loop

  carry(i) <= (A(i-1) and B(i-1)) or (carry(i-1) and ( A(i-1) xor B(i-1)));
  
  end loop; 
  end process;

  Co <= carry(Nbit_S); --after DRCAC;

end BEHAVIORAL;

configuration CFG_RCA_STRUCTURAL of RCA is
  for STRUCTURAL 
    for ADDER1
      for all : FA
        use configuration WORK.CFG_FA_BEHAVIORAL;
      end for;
    end for;
  end for;
end CFG_RCA_STRUCTURAL;

configuration CFG_RCA_BEHAVIORAL of RCA is
  for BEHAVIORAL 
  end for;
end CFG_RCA_BEHAVIORAL;
