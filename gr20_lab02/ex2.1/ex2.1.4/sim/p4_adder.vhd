library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity P4_ADDER is

	generic (NBIT : integer := 32);

        port (A : in std_logic_vector(NBIT-1 downto 0);
	      B : in std_logic_vector(NBIT-1 downto 0);
	      Cin : in std_logic;
	      S : out std_logic_vector(NBIT-1 downto 0);
	      Cout : out std_logic);
  
end P4_ADDER;

architecture STRUCTURAL of P4_ADDER is

constant NBLOCKS: integer := 8;
constant NBIT_PER_BLOCK: integer := 4;
  
component SUM_GENERATOR is
       	generic (NBIT_PER_BLOCK: integer := 4;
	         NBLOCKS: integer := 8);
       	port (
       	      A:    in	std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0);
       	      B:    in	std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0);
       	      Ci:   in	std_logic_vector(NBLOCKS-1 downto 0);
       	      S:    out	std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0));
end component;

component CARRY_GENERATOR is
      generic (NBIT : integer := 32;
	       NBIT_PER_BLOCK: integer := 4);
      
      port (A :	in std_logic_vector(NBIT-1 downto 0);
            B : in std_logic_vector(NBIT-1 downto 0);
	    Cin : in std_logic;
	    Co : out std_logic_vector((NBIT/NBIT_PER_BLOCK)-1 downto 0));
       
end component;

signal C1: std_logic_vector((NBIT/NBIT_PER_BLOCK)-1 downto 0);
signal C2: std_logic_vector((NBIT/NBIT_PER_BLOCK)-1 downto 0);

begin

  CG: CARRY_GENERATOR port map(A, B, Cin, C1);
  C2 <= C1((NBIT/NBIT_PER_BLOCK)-2 downto 0) & Cin;
  SG: SUM_GENERATOR port map(A, B, C2, S);
  Cout <= C1((NBIT/NBIT_PER_BLOCK)-1);

end STRUCTURAL;

configuration CFG_P4_ADDER_STRUCTURAL of P4_ADDER is
  for STRUCTURAL
    for CG: CARRY_GENERATOR
      use configuration WORK.CFG_CARRY_GENERATOR_STRUCTURAL;
    end for;
    for SG: SUM_GENERATOR
      use configuration WORK.CFG_SUM_GENERATOR_STRUCTURAL;
    end for;
  end for;
end CFG_P4_ADDER_STRUCTURAL;
