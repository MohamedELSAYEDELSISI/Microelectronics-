library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity G_BLOCK is

         port(Gik: in std_logic;
              Pik: in std_logic;
              Gkj: in std_logic;
              Gout: out std_logic);
         
end G_BLOCK;

architecture BEHAVIORAL of G_BLOCK is

begin

  Gout <= Gik or (Pik and Gkj);
  
end BEHAVIORAL;

configuration CFG_G_BLOCK_BEHAVIORAL of G_BLOCK is
  for BEHAVIORAL
  end for;
end CFG_G_BLOCK_BEHAVIORAL;
