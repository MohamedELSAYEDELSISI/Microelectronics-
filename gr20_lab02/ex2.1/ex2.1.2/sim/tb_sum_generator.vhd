library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity TBSUM_GENERATOR is 
end TBSUM_GENERATOR; 

architecture TEST of TBSUM_GENERATOR is


	component SUM_GENERATOR is
		generic (
			NBIT_PER_BLOCK: integer := 4;
			NBLOCKS:	integer := 8);
		port (
			A:	in	std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0);
			B:	in	std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0);
			Ci:	in	std_logic_vector(NBLOCKS-1 downto 0);
			S:	out	std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0));
	end component;

        constant NBIT_PER_BLOCK: integer:=4;
        constant NBLOCKS: integer:= 8;
        
        signal T_A: std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0);
        signal T_B: std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0);
        signal T_Ci: std_logic_vector(NBLOCKS-1 downto 0);
        signal T_S: std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0);

        
begin

    T_SG:SUM_GENERATOR port map(T_A,T_B,T_Ci,T_S);

    process
    begin
    T_A <= "00010010001001000010000101000001";
    T_B <= "01110100000101000010000101100011";
    T_Ci <= (others => '0');
    wait;
    end process;
     
end TEST;

configuration SUM_GENERATORTEST of TBSUM_GENERATOR is
  for TEST
    for all: SUM_GENERATOR
      use configuration WORK.CFG_SUM_GENERATOR_STRUCTURAL;
    end for;
  end for;
end SUM_GENERATORTEST;
