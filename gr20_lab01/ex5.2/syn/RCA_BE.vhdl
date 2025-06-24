
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_RCA is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_RCA;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_RCA.all;

entity RCA is

   port( A, B : in std_logic_vector (5 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (5 downto 0);  Co : out std_logic);

end RCA;

architecture SYN_BEHAVIORAL of RCA is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
      n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83
      , n84, n85, n86, n87, n88, n89 : std_logic;

begin
   
   U40 : XOR2_X1 port map( A => n55, B => n56, Z => S(5));
   U41 : XNOR2_X1 port map( A => B(5), B => n57, ZN => n56);
   U42 : OAI22_X1 port map( A1 => n58, A2 => n59, B1 => n60, B2 => n61, ZN => 
                           n55);
   U43 : AND2_X1 port map( A1 => n59, A2 => n58, ZN => n60);
   U44 : XNOR2_X1 port map( A => n58, B => n62, ZN => S(4));
   U45 : XOR2_X1 port map( A => B(4), B => A(4), Z => n62);
   U46 : AOI22_X1 port map( A1 => n63, A2 => A(3), B1 => n64, B2 => B(3), ZN =>
                           n58);
   U47 : NAND2_X1 port map( A1 => n65, A2 => n66, ZN => n64);
   U48 : INV_X1 port map( A => n66, ZN => n63);
   U49 : XNOR2_X1 port map( A => n66, B => n67, ZN => S(3));
   U50 : XOR2_X1 port map( A => B(3), B => A(3), Z => n67);
   U51 : AOI21_X1 port map( B1 => n68, B2 => A(2), A => n69, ZN => n66);
   U52 : INV_X1 port map( A => n70, ZN => n69);
   U53 : OAI21_X1 port map( B1 => A(2), B2 => n68, A => B(2), ZN => n70);
   U54 : XNOR2_X1 port map( A => n71, B => n68, ZN => S(2));
   U55 : OAI21_X1 port map( B1 => n72, B2 => n73, A => n74, ZN => n68);
   U56 : OAI21_X1 port map( B1 => n75, B2 => A(1), A => B(1), ZN => n74);
   U57 : XNOR2_X1 port map( A => B(2), B => A(2), ZN => n71);
   U58 : XOR2_X1 port map( A => n75, B => n76, Z => S(1));
   U59 : XOR2_X1 port map( A => B(1), B => A(1), Z => n76);
   U60 : XOR2_X1 port map( A => B(0), B => A(0), Z => S(0));
   U61 : OAI21_X1 port map( B1 => n57, B2 => n77, A => n78, ZN => Co);
   U62 : OAI21_X1 port map( B1 => n79, B2 => A(5), A => B(5), ZN => n78);
   U63 : INV_X1 port map( A => n79, ZN => n77);
   U64 : AOI22_X1 port map( A1 => n59, A2 => n80, B1 => n61, B2 => n81, ZN => 
                           n79);
   U65 : OR2_X1 port map( A1 => n59, A2 => n80, ZN => n81);
   U66 : INV_X1 port map( A => B(4), ZN => n61);
   U67 : OAI22_X1 port map( A1 => A(3), A2 => n82, B1 => B(3), B2 => n83, ZN =>
                           n80);
   U68 : NOR2_X1 port map( A1 => n65, A2 => n84, ZN => n83);
   U69 : INV_X1 port map( A => A(3), ZN => n65);
   U70 : INV_X1 port map( A => n84, ZN => n82);
   U71 : OAI22_X1 port map( A1 => A(2), A2 => n85, B1 => B(2), B2 => n86, ZN =>
                           n84);
   U72 : AND2_X1 port map( A1 => A(2), A2 => n85, ZN => n86);
   U73 : AOI21_X1 port map( B1 => n73, B2 => n87, A => n88, ZN => n85);
   U74 : AOI21_X1 port map( B1 => A(1), B2 => n89, A => B(1), ZN => n88);
   U75 : INV_X1 port map( A => n87, ZN => n89);
   U76 : OAI22_X1 port map( A1 => B(0), A2 => A(0), B1 => Ci, B2 => n75, ZN => 
                           n87);
   U77 : INV_X1 port map( A => n72, ZN => n75);
   U78 : NAND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n72);
   U79 : INV_X1 port map( A => A(1), ZN => n73);
   U80 : INV_X1 port map( A => A(4), ZN => n59);
   U81 : INV_X1 port map( A => A(5), ZN => n57);

end SYN_BEHAVIORAL;
