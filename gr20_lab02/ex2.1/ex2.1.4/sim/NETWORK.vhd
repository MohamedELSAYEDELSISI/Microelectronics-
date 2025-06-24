library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity NETWORK is

       port( A: in std_logic;
             B: in std_logic;
             P: out std_logic;
             G: out std_logic);
       
end NETWORK;

architecture BEHAVIORAL of NETWORK is

begin
   G <= A and B;
   P <= A xor B;
  
end BEHAVIORAL;

configuration CFG_NETWORK_BEHAVIORAL of NETWORK is
   for BEHAVIORAL
   end for;
end CFG_NETWORK_BEHAVIORAL;
