library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity TB_CARRY_GENERATOR is 
end TB_CARRY_GENERATOR; 

architecture TEST of TB_CARRY_GENERATOR is


  component CARRY_GENERATOR is
    generic (
	     NBIT : integer := 32;
	     NBIT_PER_BLOCK: integer := 4);
    port (
	  A : in std_logic_vector(NBIT-1 downto 0);
	  B : in std_logic_vector(NBIT-1 downto 0);
	  Cin :	in std_logic;
          Co :	out std_logic_vector((NBIT/NBIT_PER_BLOCK)-1 downto 0));
  end component;

  constant NBIT: integer := 32;
  constant NBIT_PER_BLOCK: integer := 4;
  
  signal A_T,B_T: std_logic_vector(NBIT-1 downto 0);
  signal Cout_T: std_logic_vector((NBIT/NBIT_PER_BLOCK)-1 downto 0);
        
begin
    DUT: CARRY_GENERATOR port map(A_T,B_T,'0',Cout_T);
    process
    begin
    A_T <= "00000000000000100100000001111111";
    B_T <= "00011111110000001011000000011111";
    wait for 20 ns;

    A_T <= "11000011110000100100001101100100";
    B_T <= "01010100011111001011001000011100";
    wait for 20 ns;
    
    A_T <= "00010111000011111110001010100001";
    B_T <= "11100000101010010101100001111001";
    wait;
    end process;
end TEST;

configuration CFG_TEST of TB_CARRY_GENERATOR is
  for TEST
    for DUT: CARRY_GENERATOR
      use configuration WORK.CFG_CARRY_GENERATOR_STRUCTURAL;
    end for;
  end for;
end CFG_TEST;
