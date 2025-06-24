library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.constants.all;

entity SUM_GENERATOR is
       	generic (NBIT_PER_BLOCK: integer := 4;
	         NBLOCKS: integer := 8);
       	port (
       	      A:    in	std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0);
       	      B:    in	std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0);
       	      Ci:   in	std_logic_vector(NBLOCKS-1 downto 0);
       	      S:    out	std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0));
end SUM_GENERATOR;


architecture STRUCTURAL of SUM_GENERATOR is

  component CSB is
        Generic (NBIT: integer:= 4);
	Port    (A      : in  std_logic_vector(NBIT- 1 downto 0);
                 B      : in  std_logic_vector(NBIT- 1 downto 0);
                 Ci_s   : in  std_logic;  --carryin of last stage to select
                 S_4    : out std_logic_vector(NBIT - 1 downto 0));  
  end component;

  type wire is array(NBLOCKS-1 downto 0) of std_logic_vector(NBIT_PER_BLOCK-1 downto 0);

  signal intA,intB,intS: wire;


  
begin
  
      INIT:process(A,B)
      begin
       for i in 0 to NBLOCKS-1 loop
         intA(i) <= A((NBIT_PER_BLOCK*(i+1))-1 downto NBIT_PER_BLOCK*(i));
         intB(i) <= B((NBIT_PER_BLOCK*(i+1))-1 downto NBIT_PER_BLOCK*(i));
       end loop;
      end process INIT;

      SG: for i in 0 to NBLOCKS-1 generate
          BLOCKS: CSB generic map (NBIT_PER_BLOCK) port map(intA(i),intB(i),Ci(i),intS(i));
      end generate SG;

      OUTPUT:process(intS)
      begin
        for i in 0 to NBLOCKS-1 loop
          S((NBIT_PER_BLOCK*(i+1))-1 downto NBIT_PER_BLOCK*(i)) <= intS(i);
        end loop;
      end process OUTPUT;
      
end STRUCTURAL;


configuration CFG_SUM_GENERATOR_STRUCTURAL of SUM_GENERATOR is
            for STRUCTURAL
              for SG
                for all: CSB
                  use configuration WORK.CFG_CSB_STRUCTURAL;
                end for;
              end for;
            end for;
end CFG_SUM_GENERATOR_STRUCTURAL;
