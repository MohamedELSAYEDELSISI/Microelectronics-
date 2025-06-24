library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity PG_BLOCK is

       port(Pik: in std_logic;
            Gik: in std_logic;
            Gkj: in std_logic;
            Pkj: in std_logic;
            Pout: out std_logic;
            Gout: out std_logic);
       
end PG_BLOCK;

architecture BEHAVIORAL of PG_BLOCK is

begin

 Pout <= Pik and Pkj;
 Gout <= Gik or (Pik and Gkj);
  
end BEHAVIORAL;

configuration CFG_PG_BLOCK_BEHAVIORAL of PG_BLOCK is
  for BEHAVIORAL
    end for;
end CFG_PG_BLOCK_BEHAVIORAL;
