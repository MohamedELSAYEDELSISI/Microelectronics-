library IEEE;
------------------------
use IEEE.std_logic_1164.all;
use WORK.constants.all;
-------------------------------

entity MUX21 is

Generic (NBIT: integer:= NumBit;
       DELAY_MUX: Time:= TP_MUX);

port(A:	In	std_logic_vector(NBIT-1 downto 0);
		B:	In	std_logic_vector(NBIT-1 downto 0);
		SEL: In	std_logic;
		Y:	Out	std_logic_vector(NBIT-1 downto 0)); 

end MUX21;

architecture STRUCTURAL of MUX21 is

   signal A_S :  std_logic_vector(NBIT-1 downto 0); 
   signal B_S :  std_logic_vector(NBIT-1 downto 0);
   signal S_S :  std_logic;

   component ND2
	
	Port (	A:	In	std_logic;
		B:	In	std_logic;
		Y:	Out	std_logic);
	end component;
	
	component IV
	
	Port (	A:	In	std_logic;
		Y:	Out	std_logic);
	end component;

begin

  INV: IV Port Map ( SEL, S_S);

  UND1: for i in 0 to NBIT-1 generate 
     r1: ND2 Port Map ( A(i), SEL, A_S(i));
  end generate;

  UND2: for i in 0 to NBIT-1 generate 
      r2:  ND2 Port Map ( B(i), SEL, B_S(i));
  end generate;

  UND3: for i in 0 to NBIT-1 generate 
      r4: ND2 Port Map ( A_S(i), B_S(i), Y(i));
  end generate;

end STRUCTURAL;


architecture BEHAVIORAL of MUX21 is

begin
	
 Y <= A when SEL = '1' else B;
	
end BEHAVIORAL;


configuration CFG_MUX21_BEHAVIORAL of MUX21 is
	for BEHAVIORAL
	end for;
end CFG_MUX21_BEHAVIORAL;

configuration CFG_MUX21_STRUCTURAL of MUX21 is
	for STRUCTURAL
	end for;
end CFG_MUX21_STRUCTURAL;

