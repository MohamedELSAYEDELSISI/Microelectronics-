
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_P4_ADDER is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_P4_ADDER;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_Nbit_S4_14 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_Nbit_S4_14;

architecture SYN_BEHAVIORAL of RCA_Nbit_S4_14 is

   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
      n32, n33 : std_logic;

begin
   
   U17 : XOR2_X1 port map( A => A(3), B => B(3), Z => n30);
   U18 : XOR2_X1 port map( A => n19, B => n28, Z => S(2));
   U19 : XOR2_X1 port map( A => B(2), B => A(2), Z => n28);
   U20 : XOR2_X1 port map( A => n25, B => n22, Z => S(1));
   U21 : XOR2_X1 port map( A => B(0), B => A(0), Z => S(0));
   U1 : XNOR2_X1 port map( A => n21, B => n30, ZN => S(3));
   U2 : INV_X1 port map( A => n31, ZN => Co);
   U3 : OAI21_X1 port map( B1 => n18, B2 => n22, A => n24, ZN => n19);
   U4 : NOR2_X1 port map( A1 => A(1), A2 => B(1), ZN => n18);
   U5 : NAND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n22);
   U6 : OAI22_X1 port map( A1 => n20, A2 => B(2), B1 => n19, B2 => A(2), ZN => 
                           n21);
   U7 : AND2_X1 port map( A1 => A(2), A2 => n19, ZN => n20);
   U8 : NAND2_X1 port map( A1 => B(1), A2 => A(1), ZN => n24);
   U9 : OAI21_X1 port map( B1 => B(1), B2 => A(1), A => n24, ZN => n25);
   U10 : AOI22_X1 port map( A1 => B(3), A2 => A(3), B1 => n33, B2 => n30, ZN =>
                           n31);
   U11 : INV_X1 port map( A => n29, ZN => n33);
   U12 : AOI22_X1 port map( A1 => n28, A2 => n27, B1 => A(2), B2 => B(2), ZN =>
                           n29);
   U13 : OAI21_X1 port map( B1 => n26, B2 => n25, A => n24, ZN => n27);
   U14 : AOI21_X1 port map( B1 => Ci, B2 => n23, A => n32, ZN => n26);
   U15 : INV_X1 port map( A => n22, ZN => n32);
   U16 : OR2_X1 port map( A1 => B(0), A2 => A(0), ZN => n23);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_Nbit_S4_13 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_Nbit_S4_13;

architecture SYN_BEHAVIORAL of RCA_Nbit_S4_13 is

   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
      n32, n33 : std_logic;

begin
   
   U17 : XOR2_X1 port map( A => A(3), B => B(3), Z => n30);
   U18 : XOR2_X1 port map( A => n19, B => n28, Z => S(2));
   U19 : XOR2_X1 port map( A => B(2), B => A(2), Z => n28);
   U20 : XOR2_X1 port map( A => n25, B => n22, Z => S(1));
   U21 : XOR2_X1 port map( A => B(0), B => A(0), Z => S(0));
   U1 : XNOR2_X1 port map( A => n21, B => n30, ZN => S(3));
   U2 : INV_X1 port map( A => n31, ZN => Co);
   U3 : OAI21_X1 port map( B1 => n18, B2 => n22, A => n24, ZN => n19);
   U4 : NOR2_X1 port map( A1 => A(1), A2 => B(1), ZN => n18);
   U5 : NAND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n22);
   U6 : OAI22_X1 port map( A1 => n20, A2 => B(2), B1 => n19, B2 => A(2), ZN => 
                           n21);
   U7 : AND2_X1 port map( A1 => A(2), A2 => n19, ZN => n20);
   U8 : NAND2_X1 port map( A1 => B(1), A2 => A(1), ZN => n24);
   U9 : OAI21_X1 port map( B1 => B(1), B2 => A(1), A => n24, ZN => n25);
   U10 : AOI22_X1 port map( A1 => B(3), A2 => A(3), B1 => n33, B2 => n30, ZN =>
                           n31);
   U11 : INV_X1 port map( A => n29, ZN => n33);
   U12 : AOI22_X1 port map( A1 => n28, A2 => n27, B1 => A(2), B2 => B(2), ZN =>
                           n29);
   U13 : OAI21_X1 port map( B1 => n26, B2 => n25, A => n24, ZN => n27);
   U14 : AOI21_X1 port map( B1 => Ci, B2 => n23, A => n32, ZN => n26);
   U15 : INV_X1 port map( A => n22, ZN => n32);
   U16 : OR2_X1 port map( A1 => B(0), A2 => A(0), ZN => n23);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_Nbit_S4_12 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_Nbit_S4_12;

architecture SYN_BEHAVIORAL of RCA_Nbit_S4_12 is

   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
      n32, n33 : std_logic;

begin
   
   U17 : XOR2_X1 port map( A => A(3), B => B(3), Z => n30);
   U18 : XOR2_X1 port map( A => n19, B => n28, Z => S(2));
   U19 : XOR2_X1 port map( A => B(2), B => A(2), Z => n28);
   U20 : XOR2_X1 port map( A => n25, B => n22, Z => S(1));
   U21 : XOR2_X1 port map( A => B(0), B => A(0), Z => S(0));
   U1 : XNOR2_X1 port map( A => n21, B => n30, ZN => S(3));
   U2 : INV_X1 port map( A => n31, ZN => Co);
   U3 : OAI21_X1 port map( B1 => n18, B2 => n22, A => n24, ZN => n19);
   U4 : NOR2_X1 port map( A1 => A(1), A2 => B(1), ZN => n18);
   U5 : NAND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n22);
   U6 : OAI22_X1 port map( A1 => n20, A2 => B(2), B1 => n19, B2 => A(2), ZN => 
                           n21);
   U7 : AND2_X1 port map( A1 => A(2), A2 => n19, ZN => n20);
   U8 : NAND2_X1 port map( A1 => B(1), A2 => A(1), ZN => n24);
   U9 : OAI21_X1 port map( B1 => B(1), B2 => A(1), A => n24, ZN => n25);
   U10 : AOI22_X1 port map( A1 => B(3), A2 => A(3), B1 => n33, B2 => n30, ZN =>
                           n31);
   U11 : INV_X1 port map( A => n29, ZN => n33);
   U12 : AOI22_X1 port map( A1 => n28, A2 => n27, B1 => A(2), B2 => B(2), ZN =>
                           n29);
   U13 : OAI21_X1 port map( B1 => n26, B2 => n25, A => n24, ZN => n27);
   U14 : AOI21_X1 port map( B1 => Ci, B2 => n23, A => n32, ZN => n26);
   U15 : INV_X1 port map( A => n22, ZN => n32);
   U16 : OR2_X1 port map( A1 => B(0), A2 => A(0), ZN => n23);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_Nbit_S4_11 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_Nbit_S4_11;

architecture SYN_BEHAVIORAL of RCA_Nbit_S4_11 is

   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
      n32, n33 : std_logic;

begin
   
   U17 : XOR2_X1 port map( A => A(3), B => B(3), Z => n30);
   U18 : XOR2_X1 port map( A => n19, B => n28, Z => S(2));
   U19 : XOR2_X1 port map( A => B(2), B => A(2), Z => n28);
   U20 : XOR2_X1 port map( A => n25, B => n22, Z => S(1));
   U21 : XOR2_X1 port map( A => B(0), B => A(0), Z => S(0));
   U1 : XNOR2_X1 port map( A => n21, B => n30, ZN => S(3));
   U2 : INV_X1 port map( A => n31, ZN => Co);
   U3 : OAI21_X1 port map( B1 => n18, B2 => n22, A => n24, ZN => n19);
   U4 : NOR2_X1 port map( A1 => A(1), A2 => B(1), ZN => n18);
   U5 : NAND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n22);
   U6 : OAI22_X1 port map( A1 => n20, A2 => B(2), B1 => n19, B2 => A(2), ZN => 
                           n21);
   U7 : AND2_X1 port map( A1 => A(2), A2 => n19, ZN => n20);
   U8 : NAND2_X1 port map( A1 => B(1), A2 => A(1), ZN => n24);
   U9 : OAI21_X1 port map( B1 => B(1), B2 => A(1), A => n24, ZN => n25);
   U10 : AOI22_X1 port map( A1 => B(3), A2 => A(3), B1 => n33, B2 => n30, ZN =>
                           n31);
   U11 : INV_X1 port map( A => n29, ZN => n33);
   U12 : AOI22_X1 port map( A1 => n28, A2 => n27, B1 => A(2), B2 => B(2), ZN =>
                           n29);
   U13 : OAI21_X1 port map( B1 => n26, B2 => n25, A => n24, ZN => n27);
   U14 : AOI21_X1 port map( B1 => Ci, B2 => n23, A => n32, ZN => n26);
   U15 : INV_X1 port map( A => n22, ZN => n32);
   U16 : OR2_X1 port map( A1 => B(0), A2 => A(0), ZN => n23);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_Nbit_S4_10 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_Nbit_S4_10;

architecture SYN_BEHAVIORAL of RCA_Nbit_S4_10 is

   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
      n32, n33 : std_logic;

begin
   
   U17 : XOR2_X1 port map( A => A(3), B => B(3), Z => n30);
   U18 : XOR2_X1 port map( A => n19, B => n28, Z => S(2));
   U19 : XOR2_X1 port map( A => B(2), B => A(2), Z => n28);
   U20 : XOR2_X1 port map( A => n25, B => n22, Z => S(1));
   U21 : XOR2_X1 port map( A => B(0), B => A(0), Z => S(0));
   U1 : XNOR2_X1 port map( A => n21, B => n30, ZN => S(3));
   U2 : INV_X1 port map( A => n31, ZN => Co);
   U3 : OAI21_X1 port map( B1 => n18, B2 => n22, A => n24, ZN => n19);
   U4 : NOR2_X1 port map( A1 => A(1), A2 => B(1), ZN => n18);
   U5 : NAND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n22);
   U6 : OAI22_X1 port map( A1 => n20, A2 => B(2), B1 => n19, B2 => A(2), ZN => 
                           n21);
   U7 : AND2_X1 port map( A1 => A(2), A2 => n19, ZN => n20);
   U8 : NAND2_X1 port map( A1 => B(1), A2 => A(1), ZN => n24);
   U9 : OAI21_X1 port map( B1 => B(1), B2 => A(1), A => n24, ZN => n25);
   U10 : AOI22_X1 port map( A1 => B(3), A2 => A(3), B1 => n33, B2 => n30, ZN =>
                           n31);
   U11 : INV_X1 port map( A => n29, ZN => n33);
   U12 : AOI22_X1 port map( A1 => n28, A2 => n27, B1 => A(2), B2 => B(2), ZN =>
                           n29);
   U13 : OAI21_X1 port map( B1 => n26, B2 => n25, A => n24, ZN => n27);
   U14 : AOI21_X1 port map( B1 => Ci, B2 => n23, A => n32, ZN => n26);
   U15 : INV_X1 port map( A => n22, ZN => n32);
   U16 : OR2_X1 port map( A1 => B(0), A2 => A(0), ZN => n23);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_Nbit_S4_9 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_Nbit_S4_9;

architecture SYN_BEHAVIORAL of RCA_Nbit_S4_9 is

   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
      n32, n33 : std_logic;

begin
   
   U17 : XOR2_X1 port map( A => A(3), B => B(3), Z => n30);
   U18 : XOR2_X1 port map( A => n19, B => n28, Z => S(2));
   U19 : XOR2_X1 port map( A => B(2), B => A(2), Z => n28);
   U20 : XOR2_X1 port map( A => n25, B => n22, Z => S(1));
   U21 : XOR2_X1 port map( A => B(0), B => A(0), Z => S(0));
   U1 : XNOR2_X1 port map( A => n21, B => n30, ZN => S(3));
   U2 : INV_X1 port map( A => n31, ZN => Co);
   U3 : OAI21_X1 port map( B1 => n18, B2 => n22, A => n24, ZN => n19);
   U4 : NOR2_X1 port map( A1 => A(1), A2 => B(1), ZN => n18);
   U5 : NAND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n22);
   U6 : OAI22_X1 port map( A1 => n20, A2 => B(2), B1 => n19, B2 => A(2), ZN => 
                           n21);
   U7 : AND2_X1 port map( A1 => A(2), A2 => n19, ZN => n20);
   U8 : NAND2_X1 port map( A1 => B(1), A2 => A(1), ZN => n24);
   U9 : OAI21_X1 port map( B1 => B(1), B2 => A(1), A => n24, ZN => n25);
   U10 : AOI22_X1 port map( A1 => B(3), A2 => A(3), B1 => n33, B2 => n30, ZN =>
                           n31);
   U11 : INV_X1 port map( A => n29, ZN => n33);
   U12 : AOI22_X1 port map( A1 => n28, A2 => n27, B1 => A(2), B2 => B(2), ZN =>
                           n29);
   U13 : OAI21_X1 port map( B1 => n26, B2 => n25, A => n24, ZN => n27);
   U14 : AOI21_X1 port map( B1 => Ci, B2 => n23, A => n32, ZN => n26);
   U15 : INV_X1 port map( A => n22, ZN => n32);
   U16 : OR2_X1 port map( A1 => B(0), A2 => A(0), ZN => n23);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_Nbit_S4_8 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_Nbit_S4_8;

architecture SYN_BEHAVIORAL of RCA_Nbit_S4_8 is

   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
      n32, n33 : std_logic;

begin
   
   U17 : XOR2_X1 port map( A => A(3), B => B(3), Z => n30);
   U18 : XOR2_X1 port map( A => n19, B => n28, Z => S(2));
   U19 : XOR2_X1 port map( A => B(2), B => A(2), Z => n28);
   U20 : XOR2_X1 port map( A => n25, B => n22, Z => S(1));
   U21 : XOR2_X1 port map( A => B(0), B => A(0), Z => S(0));
   U1 : XNOR2_X1 port map( A => n21, B => n30, ZN => S(3));
   U2 : INV_X1 port map( A => n31, ZN => Co);
   U3 : OAI21_X1 port map( B1 => n18, B2 => n22, A => n24, ZN => n19);
   U4 : NOR2_X1 port map( A1 => A(1), A2 => B(1), ZN => n18);
   U5 : NAND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n22);
   U6 : OAI22_X1 port map( A1 => n20, A2 => B(2), B1 => n19, B2 => A(2), ZN => 
                           n21);
   U7 : AND2_X1 port map( A1 => A(2), A2 => n19, ZN => n20);
   U8 : NAND2_X1 port map( A1 => B(1), A2 => A(1), ZN => n24);
   U9 : OAI21_X1 port map( B1 => B(1), B2 => A(1), A => n24, ZN => n25);
   U10 : AOI22_X1 port map( A1 => B(3), A2 => A(3), B1 => n33, B2 => n30, ZN =>
                           n31);
   U11 : INV_X1 port map( A => n29, ZN => n33);
   U12 : AOI22_X1 port map( A1 => n28, A2 => n27, B1 => A(2), B2 => B(2), ZN =>
                           n29);
   U13 : OAI21_X1 port map( B1 => n26, B2 => n25, A => n24, ZN => n27);
   U14 : AOI21_X1 port map( B1 => Ci, B2 => n23, A => n32, ZN => n26);
   U15 : INV_X1 port map( A => n22, ZN => n32);
   U16 : OR2_X1 port map( A1 => B(0), A2 => A(0), ZN => n23);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_Nbit_S4_7 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_Nbit_S4_7;

architecture SYN_BEHAVIORAL of RCA_Nbit_S4_7 is

   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
      n32, n33 : std_logic;

begin
   
   U17 : XOR2_X1 port map( A => A(3), B => B(3), Z => n30);
   U18 : XOR2_X1 port map( A => n19, B => n28, Z => S(2));
   U19 : XOR2_X1 port map( A => B(2), B => A(2), Z => n28);
   U20 : XOR2_X1 port map( A => n25, B => n22, Z => S(1));
   U21 : XOR2_X1 port map( A => B(0), B => A(0), Z => S(0));
   U1 : XNOR2_X1 port map( A => n21, B => n30, ZN => S(3));
   U2 : INV_X1 port map( A => n31, ZN => Co);
   U3 : OAI21_X1 port map( B1 => n18, B2 => n22, A => n24, ZN => n19);
   U4 : NOR2_X1 port map( A1 => A(1), A2 => B(1), ZN => n18);
   U5 : NAND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n22);
   U6 : OAI22_X1 port map( A1 => n20, A2 => B(2), B1 => n19, B2 => A(2), ZN => 
                           n21);
   U7 : AND2_X1 port map( A1 => A(2), A2 => n19, ZN => n20);
   U8 : NAND2_X1 port map( A1 => B(1), A2 => A(1), ZN => n24);
   U9 : OAI21_X1 port map( B1 => B(1), B2 => A(1), A => n24, ZN => n25);
   U10 : AOI22_X1 port map( A1 => B(3), A2 => A(3), B1 => n33, B2 => n30, ZN =>
                           n31);
   U11 : INV_X1 port map( A => n29, ZN => n33);
   U12 : AOI22_X1 port map( A1 => n28, A2 => n27, B1 => A(2), B2 => B(2), ZN =>
                           n29);
   U13 : OAI21_X1 port map( B1 => n26, B2 => n25, A => n24, ZN => n27);
   U14 : AOI21_X1 port map( B1 => Ci, B2 => n23, A => n32, ZN => n26);
   U15 : INV_X1 port map( A => n22, ZN => n32);
   U16 : OR2_X1 port map( A1 => B(0), A2 => A(0), ZN => n23);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_Nbit_S4_6 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_Nbit_S4_6;

architecture SYN_BEHAVIORAL of RCA_Nbit_S4_6 is

   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
      n32, n33 : std_logic;

begin
   
   U17 : XOR2_X1 port map( A => A(3), B => B(3), Z => n30);
   U18 : XOR2_X1 port map( A => n19, B => n28, Z => S(2));
   U19 : XOR2_X1 port map( A => B(2), B => A(2), Z => n28);
   U20 : XOR2_X1 port map( A => n25, B => n22, Z => S(1));
   U21 : XOR2_X1 port map( A => B(0), B => A(0), Z => S(0));
   U1 : XNOR2_X1 port map( A => n21, B => n30, ZN => S(3));
   U2 : INV_X1 port map( A => n31, ZN => Co);
   U3 : OAI21_X1 port map( B1 => n18, B2 => n22, A => n24, ZN => n19);
   U4 : NOR2_X1 port map( A1 => A(1), A2 => B(1), ZN => n18);
   U5 : NAND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n22);
   U6 : OAI22_X1 port map( A1 => n20, A2 => B(2), B1 => n19, B2 => A(2), ZN => 
                           n21);
   U7 : AND2_X1 port map( A1 => A(2), A2 => n19, ZN => n20);
   U8 : NAND2_X1 port map( A1 => B(1), A2 => A(1), ZN => n24);
   U9 : OAI21_X1 port map( B1 => B(1), B2 => A(1), A => n24, ZN => n25);
   U10 : AOI22_X1 port map( A1 => B(3), A2 => A(3), B1 => n33, B2 => n30, ZN =>
                           n31);
   U11 : INV_X1 port map( A => n29, ZN => n33);
   U12 : AOI22_X1 port map( A1 => n28, A2 => n27, B1 => A(2), B2 => B(2), ZN =>
                           n29);
   U13 : OAI21_X1 port map( B1 => n26, B2 => n25, A => n24, ZN => n27);
   U14 : AOI21_X1 port map( B1 => Ci, B2 => n23, A => n32, ZN => n26);
   U15 : INV_X1 port map( A => n22, ZN => n32);
   U16 : OR2_X1 port map( A1 => B(0), A2 => A(0), ZN => n23);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_Nbit_S4_5 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_Nbit_S4_5;

architecture SYN_BEHAVIORAL of RCA_Nbit_S4_5 is

   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
      n32, n33 : std_logic;

begin
   
   U17 : XOR2_X1 port map( A => A(3), B => B(3), Z => n30);
   U18 : XOR2_X1 port map( A => n19, B => n28, Z => S(2));
   U19 : XOR2_X1 port map( A => B(2), B => A(2), Z => n28);
   U20 : XOR2_X1 port map( A => n25, B => n22, Z => S(1));
   U21 : XOR2_X1 port map( A => B(0), B => A(0), Z => S(0));
   U1 : XNOR2_X1 port map( A => n21, B => n30, ZN => S(3));
   U2 : INV_X1 port map( A => n31, ZN => Co);
   U3 : OAI21_X1 port map( B1 => n18, B2 => n22, A => n24, ZN => n19);
   U4 : NOR2_X1 port map( A1 => A(1), A2 => B(1), ZN => n18);
   U5 : NAND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n22);
   U6 : OAI22_X1 port map( A1 => n20, A2 => B(2), B1 => n19, B2 => A(2), ZN => 
                           n21);
   U7 : AND2_X1 port map( A1 => A(2), A2 => n19, ZN => n20);
   U8 : NAND2_X1 port map( A1 => B(1), A2 => A(1), ZN => n24);
   U9 : OAI21_X1 port map( B1 => B(1), B2 => A(1), A => n24, ZN => n25);
   U10 : AOI22_X1 port map( A1 => B(3), A2 => A(3), B1 => n33, B2 => n30, ZN =>
                           n31);
   U11 : INV_X1 port map( A => n29, ZN => n33);
   U12 : AOI22_X1 port map( A1 => n28, A2 => n27, B1 => A(2), B2 => B(2), ZN =>
                           n29);
   U13 : OAI21_X1 port map( B1 => n26, B2 => n25, A => n24, ZN => n27);
   U14 : AOI21_X1 port map( B1 => Ci, B2 => n23, A => n32, ZN => n26);
   U15 : INV_X1 port map( A => n22, ZN => n32);
   U16 : OR2_X1 port map( A1 => B(0), A2 => A(0), ZN => n23);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_Nbit_S4_4 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_Nbit_S4_4;

architecture SYN_BEHAVIORAL of RCA_Nbit_S4_4 is

   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
      n32, n33 : std_logic;

begin
   
   U17 : XOR2_X1 port map( A => A(3), B => B(3), Z => n30);
   U18 : XOR2_X1 port map( A => n19, B => n28, Z => S(2));
   U19 : XOR2_X1 port map( A => B(2), B => A(2), Z => n28);
   U20 : XOR2_X1 port map( A => n25, B => n22, Z => S(1));
   U21 : XOR2_X1 port map( A => B(0), B => A(0), Z => S(0));
   U1 : XNOR2_X1 port map( A => n21, B => n30, ZN => S(3));
   U2 : INV_X1 port map( A => n31, ZN => Co);
   U3 : OAI21_X1 port map( B1 => n18, B2 => n22, A => n24, ZN => n19);
   U4 : NOR2_X1 port map( A1 => A(1), A2 => B(1), ZN => n18);
   U5 : NAND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n22);
   U6 : OAI22_X1 port map( A1 => n20, A2 => B(2), B1 => n19, B2 => A(2), ZN => 
                           n21);
   U7 : AND2_X1 port map( A1 => A(2), A2 => n19, ZN => n20);
   U8 : NAND2_X1 port map( A1 => B(1), A2 => A(1), ZN => n24);
   U9 : OAI21_X1 port map( B1 => B(1), B2 => A(1), A => n24, ZN => n25);
   U10 : AOI22_X1 port map( A1 => B(3), A2 => A(3), B1 => n33, B2 => n30, ZN =>
                           n31);
   U11 : INV_X1 port map( A => n29, ZN => n33);
   U12 : AOI22_X1 port map( A1 => n28, A2 => n27, B1 => A(2), B2 => B(2), ZN =>
                           n29);
   U13 : OAI21_X1 port map( B1 => n26, B2 => n25, A => n24, ZN => n27);
   U14 : AOI21_X1 port map( B1 => Ci, B2 => n23, A => n32, ZN => n26);
   U15 : INV_X1 port map( A => n22, ZN => n32);
   U16 : OR2_X1 port map( A1 => B(0), A2 => A(0), ZN => n23);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_Nbit_S4_3 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_Nbit_S4_3;

architecture SYN_BEHAVIORAL of RCA_Nbit_S4_3 is

   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
      n32, n33 : std_logic;

begin
   
   U17 : XOR2_X1 port map( A => A(3), B => B(3), Z => n30);
   U18 : XOR2_X1 port map( A => n19, B => n28, Z => S(2));
   U19 : XOR2_X1 port map( A => B(2), B => A(2), Z => n28);
   U20 : XOR2_X1 port map( A => n25, B => n22, Z => S(1));
   U21 : XOR2_X1 port map( A => B(0), B => A(0), Z => S(0));
   U1 : XNOR2_X1 port map( A => n21, B => n30, ZN => S(3));
   U2 : INV_X1 port map( A => n31, ZN => Co);
   U3 : OAI21_X1 port map( B1 => n18, B2 => n22, A => n24, ZN => n19);
   U4 : NOR2_X1 port map( A1 => A(1), A2 => B(1), ZN => n18);
   U5 : NAND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n22);
   U6 : OAI22_X1 port map( A1 => n20, A2 => B(2), B1 => n19, B2 => A(2), ZN => 
                           n21);
   U7 : AND2_X1 port map( A1 => A(2), A2 => n19, ZN => n20);
   U8 : NAND2_X1 port map( A1 => B(1), A2 => A(1), ZN => n24);
   U9 : OAI21_X1 port map( B1 => B(1), B2 => A(1), A => n24, ZN => n25);
   U10 : AOI22_X1 port map( A1 => B(3), A2 => A(3), B1 => n33, B2 => n30, ZN =>
                           n31);
   U11 : INV_X1 port map( A => n29, ZN => n33);
   U12 : AOI22_X1 port map( A1 => n28, A2 => n27, B1 => A(2), B2 => B(2), ZN =>
                           n29);
   U13 : OAI21_X1 port map( B1 => n26, B2 => n25, A => n24, ZN => n27);
   U14 : AOI21_X1 port map( B1 => Ci, B2 => n23, A => n32, ZN => n26);
   U15 : INV_X1 port map( A => n22, ZN => n32);
   U16 : OR2_X1 port map( A1 => B(0), A2 => A(0), ZN => n23);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_Nbit_S4_2 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_Nbit_S4_2;

architecture SYN_BEHAVIORAL of RCA_Nbit_S4_2 is

   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
      n32, n33 : std_logic;

begin
   
   U17 : XOR2_X1 port map( A => A(3), B => B(3), Z => n30);
   U18 : XOR2_X1 port map( A => n19, B => n28, Z => S(2));
   U19 : XOR2_X1 port map( A => B(2), B => A(2), Z => n28);
   U20 : XOR2_X1 port map( A => n25, B => n22, Z => S(1));
   U21 : XOR2_X1 port map( A => B(0), B => A(0), Z => S(0));
   U1 : XNOR2_X1 port map( A => n21, B => n30, ZN => S(3));
   U2 : INV_X1 port map( A => n31, ZN => Co);
   U3 : OAI21_X1 port map( B1 => n18, B2 => n22, A => n24, ZN => n19);
   U4 : NOR2_X1 port map( A1 => A(1), A2 => B(1), ZN => n18);
   U5 : NAND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n22);
   U6 : OAI22_X1 port map( A1 => n20, A2 => B(2), B1 => n19, B2 => A(2), ZN => 
                           n21);
   U7 : AND2_X1 port map( A1 => A(2), A2 => n19, ZN => n20);
   U8 : NAND2_X1 port map( A1 => B(1), A2 => A(1), ZN => n24);
   U9 : OAI21_X1 port map( B1 => B(1), B2 => A(1), A => n24, ZN => n25);
   U10 : AOI22_X1 port map( A1 => B(3), A2 => A(3), B1 => n33, B2 => n30, ZN =>
                           n31);
   U11 : INV_X1 port map( A => n29, ZN => n33);
   U12 : AOI22_X1 port map( A1 => n28, A2 => n27, B1 => A(2), B2 => B(2), ZN =>
                           n29);
   U13 : OAI21_X1 port map( B1 => n26, B2 => n25, A => n24, ZN => n27);
   U14 : AOI21_X1 port map( B1 => Ci, B2 => n23, A => n32, ZN => n26);
   U15 : INV_X1 port map( A => n22, ZN => n32);
   U16 : OR2_X1 port map( A1 => B(0), A2 => A(0), ZN => n23);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_Nbit_S4_1 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_Nbit_S4_1;

architecture SYN_BEHAVIORAL of RCA_Nbit_S4_1 is

   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
      n32, n33 : std_logic;

begin
   
   U17 : XOR2_X1 port map( A => A(3), B => B(3), Z => n30);
   U18 : XOR2_X1 port map( A => n19, B => n28, Z => S(2));
   U19 : XOR2_X1 port map( A => B(2), B => A(2), Z => n28);
   U20 : XOR2_X1 port map( A => n25, B => n22, Z => S(1));
   U21 : XOR2_X1 port map( A => B(0), B => A(0), Z => S(0));
   U1 : XNOR2_X1 port map( A => n21, B => n30, ZN => S(3));
   U2 : INV_X1 port map( A => n31, ZN => Co);
   U3 : OAI21_X1 port map( B1 => n18, B2 => n22, A => n24, ZN => n19);
   U4 : NOR2_X1 port map( A1 => A(1), A2 => B(1), ZN => n18);
   U5 : NAND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n22);
   U6 : OAI22_X1 port map( A1 => n20, A2 => B(2), B1 => n19, B2 => A(2), ZN => 
                           n21);
   U7 : AND2_X1 port map( A1 => A(2), A2 => n19, ZN => n20);
   U8 : NAND2_X1 port map( A1 => B(1), A2 => A(1), ZN => n24);
   U9 : OAI21_X1 port map( B1 => B(1), B2 => A(1), A => n24, ZN => n25);
   U10 : AOI22_X1 port map( A1 => B(3), A2 => A(3), B1 => n33, B2 => n30, ZN =>
                           n31);
   U11 : INV_X1 port map( A => n29, ZN => n33);
   U12 : AOI22_X1 port map( A1 => n28, A2 => n27, B1 => A(2), B2 => B(2), ZN =>
                           n29);
   U13 : OAI21_X1 port map( B1 => n26, B2 => n25, A => n24, ZN => n27);
   U14 : AOI21_X1 port map( B1 => Ci, B2 => n23, A => n32, ZN => n26);
   U15 : INV_X1 port map( A => n22, ZN => n32);
   U16 : OR2_X1 port map( A1 => B(0), A2 => A(0), ZN => n23);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity MUX21_NBIT4_6 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_NBIT4_6;

architecture SYN_BEHAVIORAL of MUX21_NBIT4_6 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n10, n11, n12, n13, n14 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n13, ZN => Y(3));
   U2 : INV_X1 port map( A => n11, ZN => Y(1));
   U3 : INV_X1 port map( A => n12, ZN => Y(2));
   U4 : INV_X1 port map( A => n10, ZN => Y(0));
   U5 : AOI22_X1 port map( A1 => SEL, A2 => A(3), B1 => B(3), B2 => n14, ZN => 
                           n13);
   U6 : AOI22_X1 port map( A1 => A(2), A2 => SEL, B1 => B(2), B2 => n14, ZN => 
                           n12);
   U7 : AOI22_X1 port map( A1 => A(1), A2 => SEL, B1 => B(1), B2 => n14, ZN => 
                           n11);
   U8 : AOI22_X1 port map( A1 => A(0), A2 => SEL, B1 => B(0), B2 => n14, ZN => 
                           n10);
   U9 : INV_X1 port map( A => SEL, ZN => n14);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity MUX21_NBIT4_5 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_NBIT4_5;

architecture SYN_BEHAVIORAL of MUX21_NBIT4_5 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n10, n11, n12, n13, n14, n15 : std_logic;

begin
   
   U1 : BUF_X1 port map( A => SEL, Z => n10);
   U2 : INV_X1 port map( A => SEL, ZN => n15);
   U3 : INV_X1 port map( A => n12, ZN => Y(1));
   U4 : AOI22_X1 port map( A1 => A(1), A2 => SEL, B1 => B(1), B2 => n15, ZN => 
                           n12);
   U5 : INV_X1 port map( A => n13, ZN => Y(2));
   U6 : AOI22_X1 port map( A1 => A(2), A2 => SEL, B1 => B(2), B2 => n15, ZN => 
                           n13);
   U7 : INV_X1 port map( A => n14, ZN => Y(3));
   U8 : AOI22_X1 port map( A1 => n10, A2 => A(3), B1 => B(3), B2 => n15, ZN => 
                           n14);
   U9 : INV_X1 port map( A => n11, ZN => Y(0));
   U10 : AOI22_X1 port map( A1 => n10, A2 => A(0), B1 => B(0), B2 => n15, ZN =>
                           n11);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity MUX21_NBIT4_4 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_NBIT4_4;

architecture SYN_BEHAVIORAL of MUX21_NBIT4_4 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n10, n11, n12, n13, n14, n15, n16, n17 : std_logic;

begin
   
   U1 : INV_X1 port map( A => SEL, ZN => n10);
   U2 : INV_X1 port map( A => SEL, ZN => n11);
   U3 : INV_X1 port map( A => SEL, ZN => n12);
   U4 : INV_X1 port map( A => n14, ZN => Y(1));
   U5 : INV_X1 port map( A => n15, ZN => Y(2));
   U6 : INV_X1 port map( A => n16, ZN => Y(3));
   U7 : INV_X1 port map( A => n13, ZN => Y(0));
   U8 : AOI22_X1 port map( A1 => SEL, A2 => A(3), B1 => n12, B2 => B(3), ZN => 
                           n16);
   U9 : AOI22_X1 port map( A1 => A(2), A2 => SEL, B1 => n11, B2 => B(2), ZN => 
                           n15);
   U10 : AOI22_X1 port map( A1 => A(1), A2 => SEL, B1 => n10, B2 => B(1), ZN =>
                           n14);
   U11 : AOI22_X1 port map( A1 => A(0), A2 => SEL, B1 => n17, B2 => B(0), ZN =>
                           n13);
   U12 : INV_X1 port map( A => SEL, ZN => n17);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity MUX21_NBIT4_3 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_NBIT4_3;

architecture SYN_BEHAVIORAL of MUX21_NBIT4_3 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => B(1), B => A(1), S => SEL, Z => Y(1));
   U2 : MUX2_X1 port map( A => B(3), B => A(3), S => SEL, Z => Y(3));
   U3 : MUX2_X1 port map( A => B(2), B => A(2), S => SEL, Z => Y(2));
   U4 : MUX2_X1 port map( A => B(0), B => A(0), S => SEL, Z => Y(0));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity MUX21_NBIT4_2 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_NBIT4_2;

architecture SYN_BEHAVIORAL of MUX21_NBIT4_2 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => B(1), B => A(1), S => SEL, Z => Y(1));
   U2 : MUX2_X1 port map( A => B(3), B => A(3), S => SEL, Z => Y(3));
   U3 : MUX2_X1 port map( A => B(2), B => A(2), S => SEL, Z => Y(2));
   U4 : MUX2_X1 port map( A => B(0), B => A(0), S => SEL, Z => Y(0));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity MUX21_NBIT4_1 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_NBIT4_1;

architecture SYN_BEHAVIORAL of MUX21_NBIT4_1 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => B(1), B => A(1), S => SEL, Z => Y(1));
   U2 : MUX2_X1 port map( A => B(3), B => A(3), S => SEL, Z => Y(3));
   U3 : MUX2_X1 port map( A => B(2), B => A(2), S => SEL, Z => Y(2));
   U4 : MUX2_X1 port map( A => B(0), B => A(0), S => SEL, Z => Y(0));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity CSB_NBIT4_6 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci_s : in std_logic;  S_4 : 
         out std_logic_vector (3 downto 0);  Cout : out std_logic);

end CSB_NBIT4_6;

architecture SYN_STRUCTURAL of CSB_NBIT4_6 is

   component RCA_Nbit_S4_11
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_Nbit_S4_12
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component MUX21_NBIT4_6
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   signal X_Logic1_port, X_Logic0_port, RCA_OUT_1_3_port, RCA_OUT_1_2_port, 
      RCA_OUT_1_1_port, RCA_OUT_1_0_port, RCA_OUT_2_3_port, RCA_OUT_2_2_port, 
      RCA_OUT_2_1_port, RCA_OUT_2_0_port, n_1001, n_1002 : std_logic;

begin
   
   V1 : MUX21_NBIT4_6 port map( A(3) => RCA_OUT_1_3_port, A(2) => 
                           RCA_OUT_1_2_port, A(1) => RCA_OUT_1_1_port, A(0) => 
                           RCA_OUT_1_0_port, B(3) => RCA_OUT_2_3_port, B(2) => 
                           RCA_OUT_2_2_port, B(1) => RCA_OUT_2_1_port, B(0) => 
                           RCA_OUT_2_0_port, SEL => Ci_s, Y(3) => S_4(3), Y(2) 
                           => S_4(2), Y(1) => S_4(1), Y(0) => S_4(0));
   V2 : RCA_Nbit_S4_12 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           RCA_OUT_1_3_port, S(2) => RCA_OUT_1_2_port, S(1) => 
                           RCA_OUT_1_1_port, S(0) => RCA_OUT_1_0_port, Co => 
                           n_1001);
   V3 : RCA_Nbit_S4_11 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           RCA_OUT_2_3_port, S(2) => RCA_OUT_2_2_port, S(1) => 
                           RCA_OUT_2_1_port, S(0) => RCA_OUT_2_0_port, Co => 
                           n_1002);
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity CSB_NBIT4_5 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci_s : in std_logic;  S_4 : 
         out std_logic_vector (3 downto 0);  Cout : out std_logic);

end CSB_NBIT4_5;

architecture SYN_STRUCTURAL of CSB_NBIT4_5 is

   component RCA_Nbit_S4_9
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_Nbit_S4_10
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component MUX21_NBIT4_5
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   signal X_Logic1_port, X_Logic0_port, RCA_OUT_1_3_port, RCA_OUT_1_2_port, 
      RCA_OUT_1_1_port, RCA_OUT_1_0_port, RCA_OUT_2_3_port, RCA_OUT_2_2_port, 
      RCA_OUT_2_1_port, RCA_OUT_2_0_port, n_1004, n_1005 : std_logic;

begin
   
   V1 : MUX21_NBIT4_5 port map( A(3) => RCA_OUT_1_3_port, A(2) => 
                           RCA_OUT_1_2_port, A(1) => RCA_OUT_1_1_port, A(0) => 
                           RCA_OUT_1_0_port, B(3) => RCA_OUT_2_3_port, B(2) => 
                           RCA_OUT_2_2_port, B(1) => RCA_OUT_2_1_port, B(0) => 
                           RCA_OUT_2_0_port, SEL => Ci_s, Y(3) => S_4(3), Y(2) 
                           => S_4(2), Y(1) => S_4(1), Y(0) => S_4(0));
   V2 : RCA_Nbit_S4_10 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           RCA_OUT_1_3_port, S(2) => RCA_OUT_1_2_port, S(1) => 
                           RCA_OUT_1_1_port, S(0) => RCA_OUT_1_0_port, Co => 
                           n_1004);
   V3 : RCA_Nbit_S4_9 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           RCA_OUT_2_3_port, S(2) => RCA_OUT_2_2_port, S(1) => 
                           RCA_OUT_2_1_port, S(0) => RCA_OUT_2_0_port, Co => 
                           n_1005);
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity CSB_NBIT4_4 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci_s : in std_logic;  S_4 : 
         out std_logic_vector (3 downto 0);  Cout : out std_logic);

end CSB_NBIT4_4;

architecture SYN_STRUCTURAL of CSB_NBIT4_4 is

   component RCA_Nbit_S4_7
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_Nbit_S4_8
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component MUX21_NBIT4_4
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   signal X_Logic1_port, X_Logic0_port, RCA_OUT_1_3_port, RCA_OUT_1_2_port, 
      RCA_OUT_1_1_port, RCA_OUT_1_0_port, RCA_OUT_2_3_port, RCA_OUT_2_2_port, 
      RCA_OUT_2_1_port, RCA_OUT_2_0_port, n_1007, n_1008 : std_logic;

begin
   
   V1 : MUX21_NBIT4_4 port map( A(3) => RCA_OUT_1_3_port, A(2) => 
                           RCA_OUT_1_2_port, A(1) => RCA_OUT_1_1_port, A(0) => 
                           RCA_OUT_1_0_port, B(3) => RCA_OUT_2_3_port, B(2) => 
                           RCA_OUT_2_2_port, B(1) => RCA_OUT_2_1_port, B(0) => 
                           RCA_OUT_2_0_port, SEL => Ci_s, Y(3) => S_4(3), Y(2) 
                           => S_4(2), Y(1) => S_4(1), Y(0) => S_4(0));
   V2 : RCA_Nbit_S4_8 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           RCA_OUT_1_3_port, S(2) => RCA_OUT_1_2_port, S(1) => 
                           RCA_OUT_1_1_port, S(0) => RCA_OUT_1_0_port, Co => 
                           n_1007);
   V3 : RCA_Nbit_S4_7 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           RCA_OUT_2_3_port, S(2) => RCA_OUT_2_2_port, S(1) => 
                           RCA_OUT_2_1_port, S(0) => RCA_OUT_2_0_port, Co => 
                           n_1008);
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity CSB_NBIT4_3 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci_s : in std_logic;  S_4 : 
         out std_logic_vector (3 downto 0);  Cout : out std_logic);

end CSB_NBIT4_3;

architecture SYN_STRUCTURAL of CSB_NBIT4_3 is

   component RCA_Nbit_S4_5
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_Nbit_S4_6
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component MUX21_NBIT4_3
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   signal X_Logic1_port, X_Logic0_port, RCA_OUT_1_3_port, RCA_OUT_1_2_port, 
      RCA_OUT_1_1_port, RCA_OUT_1_0_port, RCA_OUT_2_3_port, RCA_OUT_2_2_port, 
      RCA_OUT_2_1_port, RCA_OUT_2_0_port, n_1010, n_1011 : std_logic;

begin
   
   V1 : MUX21_NBIT4_3 port map( A(3) => RCA_OUT_1_3_port, A(2) => 
                           RCA_OUT_1_2_port, A(1) => RCA_OUT_1_1_port, A(0) => 
                           RCA_OUT_1_0_port, B(3) => RCA_OUT_2_3_port, B(2) => 
                           RCA_OUT_2_2_port, B(1) => RCA_OUT_2_1_port, B(0) => 
                           RCA_OUT_2_0_port, SEL => Ci_s, Y(3) => S_4(3), Y(2) 
                           => S_4(2), Y(1) => S_4(1), Y(0) => S_4(0));
   V2 : RCA_Nbit_S4_6 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           RCA_OUT_1_3_port, S(2) => RCA_OUT_1_2_port, S(1) => 
                           RCA_OUT_1_1_port, S(0) => RCA_OUT_1_0_port, Co => 
                           n_1010);
   V3 : RCA_Nbit_S4_5 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           RCA_OUT_2_3_port, S(2) => RCA_OUT_2_2_port, S(1) => 
                           RCA_OUT_2_1_port, S(0) => RCA_OUT_2_0_port, Co => 
                           n_1011);
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity CSB_NBIT4_2 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci_s : in std_logic;  S_4 : 
         out std_logic_vector (3 downto 0);  Cout : out std_logic);

end CSB_NBIT4_2;

architecture SYN_STRUCTURAL of CSB_NBIT4_2 is

   component RCA_Nbit_S4_3
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_Nbit_S4_4
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component MUX21_NBIT4_2
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   signal X_Logic1_port, X_Logic0_port, RCA_OUT_1_3_port, RCA_OUT_1_2_port, 
      RCA_OUT_1_1_port, RCA_OUT_1_0_port, RCA_OUT_2_3_port, RCA_OUT_2_2_port, 
      RCA_OUT_2_1_port, RCA_OUT_2_0_port, n_1013, n_1014 : std_logic;

begin
   
   V1 : MUX21_NBIT4_2 port map( A(3) => RCA_OUT_1_3_port, A(2) => 
                           RCA_OUT_1_2_port, A(1) => RCA_OUT_1_1_port, A(0) => 
                           RCA_OUT_1_0_port, B(3) => RCA_OUT_2_3_port, B(2) => 
                           RCA_OUT_2_2_port, B(1) => RCA_OUT_2_1_port, B(0) => 
                           RCA_OUT_2_0_port, SEL => Ci_s, Y(3) => S_4(3), Y(2) 
                           => S_4(2), Y(1) => S_4(1), Y(0) => S_4(0));
   V2 : RCA_Nbit_S4_4 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           RCA_OUT_1_3_port, S(2) => RCA_OUT_1_2_port, S(1) => 
                           RCA_OUT_1_1_port, S(0) => RCA_OUT_1_0_port, Co => 
                           n_1013);
   V3 : RCA_Nbit_S4_3 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           RCA_OUT_2_3_port, S(2) => RCA_OUT_2_2_port, S(1) => 
                           RCA_OUT_2_1_port, S(0) => RCA_OUT_2_0_port, Co => 
                           n_1014);
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity CSB_NBIT4_1 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci_s : in std_logic;  S_4 : 
         out std_logic_vector (3 downto 0);  Cout : out std_logic);

end CSB_NBIT4_1;

architecture SYN_STRUCTURAL of CSB_NBIT4_1 is

   component RCA_Nbit_S4_1
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_Nbit_S4_2
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component MUX21_NBIT4_1
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   signal X_Logic1_port, X_Logic0_port, RCA_OUT_1_3_port, RCA_OUT_1_2_port, 
      RCA_OUT_1_1_port, RCA_OUT_1_0_port, RCA_OUT_2_3_port, RCA_OUT_2_2_port, 
      RCA_OUT_2_1_port, RCA_OUT_2_0_port, n_1016, n_1017 : std_logic;

begin
   
   V1 : MUX21_NBIT4_1 port map( A(3) => RCA_OUT_1_3_port, A(2) => 
                           RCA_OUT_1_2_port, A(1) => RCA_OUT_1_1_port, A(0) => 
                           RCA_OUT_1_0_port, B(3) => RCA_OUT_2_3_port, B(2) => 
                           RCA_OUT_2_2_port, B(1) => RCA_OUT_2_1_port, B(0) => 
                           RCA_OUT_2_0_port, SEL => Ci_s, Y(3) => S_4(3), Y(2) 
                           => S_4(2), Y(1) => S_4(1), Y(0) => S_4(0));
   V2 : RCA_Nbit_S4_2 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           RCA_OUT_1_3_port, S(2) => RCA_OUT_1_2_port, S(1) => 
                           RCA_OUT_1_1_port, S(0) => RCA_OUT_1_0_port, Co => 
                           n_1016);
   V3 : RCA_Nbit_S4_1 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           RCA_OUT_2_3_port, S(2) => RCA_OUT_2_2_port, S(1) => 
                           RCA_OUT_2_1_port, S(0) => RCA_OUT_2_0_port, Co => 
                           n_1017);
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_25 is

   port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);

end PG_BLOCK_25;

architecture SYN_BEHAVIORAL of PG_BLOCK_25 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gout);
   U2 : AND2_X1 port map( A1 => Pik, A2 => Pkj, ZN => Pout);
   U3 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_24 is

   port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);

end PG_BLOCK_24;

architecture SYN_BEHAVIORAL of PG_BLOCK_24 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pout);
   U2 : INV_X1 port map( A => n3, ZN => Gout);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_23 is

   port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);

end PG_BLOCK_23;

architecture SYN_BEHAVIORAL of PG_BLOCK_23 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gout);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n3);
   U3 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pout);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_22 is

   port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);

end PG_BLOCK_22;

architecture SYN_BEHAVIORAL of PG_BLOCK_22 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gout);
   U2 : AND2_X1 port map( A1 => Pik, A2 => Pkj, ZN => Pout);
   U3 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_21 is

   port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);

end PG_BLOCK_21;

architecture SYN_BEHAVIORAL of PG_BLOCK_21 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : INV_X1 port map( A => Gik, ZN => n3);
   U2 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pout);
   U3 : NAND2_X1 port map( A1 => Gkj, A2 => Pik, ZN => n4);
   U4 : NAND2_X1 port map( A1 => n3, A2 => n4, ZN => Gout);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_20 is

   port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);

end PG_BLOCK_20;

architecture SYN_BEHAVIORAL of PG_BLOCK_20 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gout);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n3);
   U3 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pout);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_19 is

   port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);

end PG_BLOCK_19;

architecture SYN_BEHAVIORAL of PG_BLOCK_19 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gout);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n3);
   U3 : AND2_X1 port map( A1 => Pik, A2 => Pkj, ZN => Pout);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_18 is

   port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);

end PG_BLOCK_18;

architecture SYN_BEHAVIORAL of PG_BLOCK_18 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : INV_X1 port map( A => Gik, ZN => n3);
   U2 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pout);
   U3 : NAND2_X1 port map( A1 => Gkj, A2 => Pik, ZN => n4);
   U4 : NAND2_X1 port map( A1 => n3, A2 => n4, ZN => Gout);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_17 is

   port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);

end PG_BLOCK_17;

architecture SYN_BEHAVIORAL of PG_BLOCK_17 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pout);
   U2 : NOR2_X1 port map( A1 => Gik, A2 => Pik, ZN => n4);
   U3 : NOR2_X1 port map( A1 => Gkj, A2 => Gik, ZN => n5);
   U4 : NOR2_X1 port map( A1 => n5, A2 => n4, ZN => Gout);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_16 is

   port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);

end PG_BLOCK_16;

architecture SYN_BEHAVIORAL of PG_BLOCK_16 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gout);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n3);
   U3 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pout);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_15 is

   port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);

end PG_BLOCK_15;

architecture SYN_BEHAVIORAL of PG_BLOCK_15 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gout);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n3);
   U3 : AND2_X1 port map( A1 => Pik, A2 => Pkj, ZN => Pout);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_14 is

   port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);

end PG_BLOCK_14;

architecture SYN_BEHAVIORAL of PG_BLOCK_14 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gout);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n3);
   U3 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pout);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_13 is

   port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);

end PG_BLOCK_13;

architecture SYN_BEHAVIORAL of PG_BLOCK_13 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gout);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n3);
   U3 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pout);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_12 is

   port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);

end PG_BLOCK_12;

architecture SYN_BEHAVIORAL of PG_BLOCK_12 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gout);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n3);
   U3 : AND2_X1 port map( A1 => Pik, A2 => Pkj, ZN => Pout);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_11 is

   port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);

end PG_BLOCK_11;

architecture SYN_BEHAVIORAL of PG_BLOCK_11 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gout);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n3);
   U3 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pout);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_10 is

   port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);

end PG_BLOCK_10;

architecture SYN_BEHAVIORAL of PG_BLOCK_10 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gout);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n3);
   U3 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pout);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_9 is

   port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);

end PG_BLOCK_9;

architecture SYN_BEHAVIORAL of PG_BLOCK_9 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gout);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n3);
   U3 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pout);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_8 is

   port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);

end PG_BLOCK_8;

architecture SYN_BEHAVIORAL of PG_BLOCK_8 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gout);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n3);
   U3 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pout);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_7 is

   port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);

end PG_BLOCK_7;

architecture SYN_BEHAVIORAL of PG_BLOCK_7 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gout);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n3);
   U3 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pout);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_6 is

   port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);

end PG_BLOCK_6;

architecture SYN_BEHAVIORAL of PG_BLOCK_6 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : INV_X1 port map( A => Gik, ZN => n4);
   U2 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pout);
   U3 : NAND2_X1 port map( A1 => Gkj, A2 => Pik, ZN => n5);
   U4 : NAND2_X1 port map( A1 => n4, A2 => n5, ZN => Gout);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_5 is

   port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);

end PG_BLOCK_5;

architecture SYN_BEHAVIORAL of PG_BLOCK_5 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gout);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n3);
   U3 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pout);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_4 is

   port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);

end PG_BLOCK_4;

architecture SYN_BEHAVIORAL of PG_BLOCK_4 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gout);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n3);
   U3 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pout);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_3 is

   port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);

end PG_BLOCK_3;

architecture SYN_BEHAVIORAL of PG_BLOCK_3 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n3);
   U2 : INV_X1 port map( A => n3, ZN => Gout);
   U3 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pout);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_2 is

   port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);

end PG_BLOCK_2;

architecture SYN_BEHAVIORAL of PG_BLOCK_2 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gout);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n3);
   U3 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pout);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_1 is

   port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);

end PG_BLOCK_1;

architecture SYN_BEHAVIORAL of PG_BLOCK_1 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pout);
   U2 : INV_X1 port map( A => n3, ZN => Gout);
   U3 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity G_BLOCK_7 is

   port( Gik, Pik, Gkj : in std_logic;  Gout : out std_logic);

end G_BLOCK_7;

architecture SYN_BEHAVIORAL of G_BLOCK_7 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : INV_X1 port map( A => Gik, ZN => n3);
   U2 : NAND2_X1 port map( A1 => n3, A2 => n4, ZN => Gout);
   U3 : NAND2_X1 port map( A1 => Pik, A2 => Gkj, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity G_BLOCK_6 is

   port( Gik, Pik, Gkj : in std_logic;  Gout : out std_logic);

end G_BLOCK_6;

architecture SYN_BEHAVIORAL of G_BLOCK_6 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gout);
   U2 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity G_BLOCK_5 is

   port( Gik, Pik, Gkj : in std_logic;  Gout : out std_logic);

end G_BLOCK_5;

architecture SYN_BEHAVIORAL of G_BLOCK_5 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n3);
   U2 : INV_X1 port map( A => n3, ZN => Gout);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity G_BLOCK_4 is

   port( Gik, Pik, Gkj : in std_logic;  Gout : out std_logic);

end G_BLOCK_4;

architecture SYN_BEHAVIORAL of G_BLOCK_4 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gout);
   U2 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity G_BLOCK_3 is

   port( Gik, Pik, Gkj : in std_logic;  Gout : out std_logic);

end G_BLOCK_3;

architecture SYN_BEHAVIORAL of G_BLOCK_3 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n3);
   U2 : INV_X1 port map( A => n3, ZN => Gout);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity G_BLOCK_2 is

   port( Gik, Pik, Gkj : in std_logic;  Gout : out std_logic);

end G_BLOCK_2;

architecture SYN_BEHAVIORAL of G_BLOCK_2 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gout);
   U2 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity G_BLOCK_1 is

   port( Gik, Pik, Gkj : in std_logic;  Gout : out std_logic);

end G_BLOCK_1;

architecture SYN_BEHAVIORAL of G_BLOCK_1 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gout);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity NETWORK_30 is

   port( A, B : in std_logic;  P, G : out std_logic);

end NETWORK_30;

architecture SYN_BEHAVIORAL of NETWORK_30 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => P);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => G);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity NETWORK_29 is

   port( A, B : in std_logic;  P, G : out std_logic);

end NETWORK_29;

architecture SYN_BEHAVIORAL of NETWORK_29 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => n2, ZN => n3);
   U2 : NAND2_X1 port map( A1 => n1, A2 => A, ZN => n4);
   U3 : NAND2_X1 port map( A1 => n3, A2 => n4, ZN => P);
   U4 : INV_X1 port map( A => B, ZN => n1);
   U5 : INV_X1 port map( A => A, ZN => n2);
   U6 : AND2_X1 port map( A1 => B, A2 => A, ZN => G);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity NETWORK_28 is

   port( A, B : in std_logic;  P, G : out std_logic);

end NETWORK_28;

architecture SYN_BEHAVIORAL of NETWORK_28 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => P);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => G);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity NETWORK_27 is

   port( A, B : in std_logic;  P, G : out std_logic);

end NETWORK_27;

architecture SYN_BEHAVIORAL of NETWORK_27 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => P);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => G);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity NETWORK_26 is

   port( A, B : in std_logic;  P, G : out std_logic);

end NETWORK_26;

architecture SYN_BEHAVIORAL of NETWORK_26 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => P);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => G);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity NETWORK_25 is

   port( A, B : in std_logic;  P, G : out std_logic);

end NETWORK_25;

architecture SYN_BEHAVIORAL of NETWORK_25 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => n2, A2 => B, ZN => n3);
   U2 : NAND2_X1 port map( A1 => n1, A2 => A, ZN => n4);
   U3 : NAND2_X1 port map( A1 => n4, A2 => n3, ZN => P);
   U4 : INV_X1 port map( A => B, ZN => n1);
   U5 : INV_X1 port map( A => A, ZN => n2);
   U6 : AND2_X1 port map( A1 => B, A2 => A, ZN => G);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity NETWORK_24 is

   port( A, B : in std_logic;  P, G : out std_logic);

end NETWORK_24;

architecture SYN_BEHAVIORAL of NETWORK_24 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => P);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => G);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity NETWORK_23 is

   port( A, B : in std_logic;  P, G : out std_logic);

end NETWORK_23;

architecture SYN_BEHAVIORAL of NETWORK_23 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => P);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => G);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity NETWORK_22 is

   port( A, B : in std_logic;  P, G : out std_logic);

end NETWORK_22;

architecture SYN_BEHAVIORAL of NETWORK_22 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => P);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => G);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity NETWORK_21 is

   port( A, B : in std_logic;  P, G : out std_logic);

end NETWORK_21;

architecture SYN_BEHAVIORAL of NETWORK_21 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => n2, A2 => B, ZN => n3);
   U2 : NAND2_X1 port map( A1 => n1, A2 => A, ZN => n4);
   U3 : NAND2_X1 port map( A1 => n3, A2 => n4, ZN => P);
   U4 : INV_X1 port map( A => B, ZN => n1);
   U5 : INV_X1 port map( A => A, ZN => n2);
   U6 : AND2_X1 port map( A1 => B, A2 => A, ZN => G);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity NETWORK_20 is

   port( A, B : in std_logic;  P, G : out std_logic);

end NETWORK_20;

architecture SYN_BEHAVIORAL of NETWORK_20 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => P);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => G);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity NETWORK_19 is

   port( A, B : in std_logic;  P, G : out std_logic);

end NETWORK_19;

architecture SYN_BEHAVIORAL of NETWORK_19 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => P);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => G);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity NETWORK_18 is

   port( A, B : in std_logic;  P, G : out std_logic);

end NETWORK_18;

architecture SYN_BEHAVIORAL of NETWORK_18 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => P);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => G);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity NETWORK_17 is

   port( A, B : in std_logic;  P, G : out std_logic);

end NETWORK_17;

architecture SYN_BEHAVIORAL of NETWORK_17 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => n2, A2 => B, ZN => n3);
   U2 : NAND2_X1 port map( A1 => n1, A2 => A, ZN => n4);
   U3 : NAND2_X1 port map( A1 => n3, A2 => n4, ZN => P);
   U4 : INV_X1 port map( A => B, ZN => n1);
   U5 : INV_X1 port map( A => A, ZN => n2);
   U6 : AND2_X1 port map( A1 => B, A2 => A, ZN => G);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity NETWORK_16 is

   port( A, B : in std_logic;  P, G : out std_logic);

end NETWORK_16;

architecture SYN_BEHAVIORAL of NETWORK_16 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => P);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => G);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity NETWORK_15 is

   port( A, B : in std_logic;  P, G : out std_logic);

end NETWORK_15;

architecture SYN_BEHAVIORAL of NETWORK_15 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => P);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => G);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity NETWORK_14 is

   port( A, B : in std_logic;  P, G : out std_logic);

end NETWORK_14;

architecture SYN_BEHAVIORAL of NETWORK_14 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => P);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => G);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity NETWORK_13 is

   port( A, B : in std_logic;  P, G : out std_logic);

end NETWORK_13;

architecture SYN_BEHAVIORAL of NETWORK_13 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => n2, ZN => n3);
   U2 : NAND2_X1 port map( A1 => n1, A2 => A, ZN => n4);
   U3 : NAND2_X1 port map( A1 => n3, A2 => n4, ZN => P);
   U4 : INV_X1 port map( A => B, ZN => n1);
   U5 : INV_X1 port map( A => A, ZN => n2);
   U6 : AND2_X1 port map( A1 => B, A2 => A, ZN => G);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity NETWORK_12 is

   port( A, B : in std_logic;  P, G : out std_logic);

end NETWORK_12;

architecture SYN_BEHAVIORAL of NETWORK_12 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => P);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => G);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity NETWORK_11 is

   port( A, B : in std_logic;  P, G : out std_logic);

end NETWORK_11;

architecture SYN_BEHAVIORAL of NETWORK_11 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => P);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => G);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity NETWORK_10 is

   port( A, B : in std_logic;  P, G : out std_logic);

end NETWORK_10;

architecture SYN_BEHAVIORAL of NETWORK_10 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => P);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => G);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity NETWORK_9 is

   port( A, B : in std_logic;  P, G : out std_logic);

end NETWORK_9;

architecture SYN_BEHAVIORAL of NETWORK_9 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => n2, A2 => B, ZN => n3);
   U2 : NAND2_X1 port map( A1 => n1, A2 => A, ZN => n4);
   U3 : NAND2_X1 port map( A1 => n3, A2 => n4, ZN => P);
   U4 : INV_X1 port map( A => B, ZN => n1);
   U5 : INV_X1 port map( A => A, ZN => n2);
   U6 : AND2_X1 port map( A1 => B, A2 => A, ZN => G);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity NETWORK_8 is

   port( A, B : in std_logic;  P, G : out std_logic);

end NETWORK_8;

architecture SYN_BEHAVIORAL of NETWORK_8 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => P);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => G);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity NETWORK_7 is

   port( A, B : in std_logic;  P, G : out std_logic);

end NETWORK_7;

architecture SYN_BEHAVIORAL of NETWORK_7 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => P);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => G);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity NETWORK_6 is

   port( A, B : in std_logic;  P, G : out std_logic);

end NETWORK_6;

architecture SYN_BEHAVIORAL of NETWORK_6 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => P);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => G);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity NETWORK_5 is

   port( A, B : in std_logic;  P, G : out std_logic);

end NETWORK_5;

architecture SYN_BEHAVIORAL of NETWORK_5 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => P);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => G);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity NETWORK_4 is

   port( A, B : in std_logic;  P, G : out std_logic);

end NETWORK_4;

architecture SYN_BEHAVIORAL of NETWORK_4 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => P);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => G);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity NETWORK_3 is

   port( A, B : in std_logic;  P, G : out std_logic);

end NETWORK_3;

architecture SYN_BEHAVIORAL of NETWORK_3 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => P);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => G);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity NETWORK_2 is

   port( A, B : in std_logic;  P, G : out std_logic);

end NETWORK_2;

architecture SYN_BEHAVIORAL of NETWORK_2 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => P);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => G);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity NETWORK_1 is

   port( A, B : in std_logic;  P, G : out std_logic);

end NETWORK_1;

architecture SYN_BEHAVIORAL of NETWORK_1 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => P);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => G);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity MUX21_NBIT4_7 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_NBIT4_7;

architecture SYN_BEHAVIORAL of MUX21_NBIT4_7 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n5, n6, n7, n8, n9 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n6, ZN => Y(3));
   U2 : INV_X1 port map( A => n8, ZN => Y(1));
   U3 : INV_X1 port map( A => n7, ZN => Y(2));
   U4 : INV_X1 port map( A => n9, ZN => Y(0));
   U5 : AOI22_X1 port map( A1 => SEL, A2 => A(3), B1 => B(3), B2 => n5, ZN => 
                           n6);
   U6 : AOI22_X1 port map( A1 => A(2), A2 => SEL, B1 => B(2), B2 => n5, ZN => 
                           n7);
   U7 : AOI22_X1 port map( A1 => A(1), A2 => SEL, B1 => B(1), B2 => n5, ZN => 
                           n8);
   U8 : AOI22_X1 port map( A1 => A(0), A2 => SEL, B1 => B(0), B2 => n5, ZN => 
                           n9);
   U9 : INV_X1 port map( A => SEL, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_Nbit_S4_15 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_Nbit_S4_15;

architecture SYN_BEHAVIORAL of RCA_Nbit_S4_15 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, 
      n17 : std_logic;

begin
   
   U17 : XOR2_X1 port map( A => A(3), B => B(3), Z => n5);
   U18 : XOR2_X1 port map( A => n16, B => n7, Z => S(2));
   U19 : XOR2_X1 port map( A => B(2), B => A(2), Z => n7);
   U20 : XOR2_X1 port map( A => n10, B => n13, Z => S(1));
   U21 : XOR2_X1 port map( A => B(0), B => A(0), Z => S(0));
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : OAI21_X1 port map( B1 => n17, B2 => n13, A => n11, ZN => n16);
   U3 : NOR2_X1 port map( A1 => A(1), A2 => B(1), ZN => n17);
   U4 : NAND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n13);
   U5 : OAI22_X1 port map( A1 => n15, A2 => B(2), B1 => n16, B2 => A(2), ZN => 
                           n14);
   U6 : AND2_X1 port map( A1 => A(2), A2 => n16, ZN => n15);
   U7 : XNOR2_X1 port map( A => n14, B => n5, ZN => S(3));
   U8 : NAND2_X1 port map( A1 => B(1), A2 => A(1), ZN => n11);
   U9 : OAI21_X1 port map( B1 => B(1), B2 => A(1), A => n11, ZN => n10);
   U10 : INV_X1 port map( A => n6, ZN => n2);
   U11 : AOI22_X1 port map( A1 => n7, A2 => n8, B1 => A(2), B2 => B(2), ZN => 
                           n6);
   U12 : OAI21_X1 port map( B1 => n9, B2 => n10, A => n11, ZN => n8);
   U13 : AOI21_X1 port map( B1 => Ci, B2 => n12, A => n3, ZN => n9);
   U14 : INV_X1 port map( A => n13, ZN => n3);
   U15 : OR2_X1 port map( A1 => B(0), A2 => A(0), ZN => n12);
   U16 : AOI22_X1 port map( A1 => B(3), A2 => A(3), B1 => n2, B2 => n5, ZN => 
                           n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_Nbit_S4_0 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_Nbit_S4_0;

architecture SYN_BEHAVIORAL of RCA_Nbit_S4_0 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, 
      n17 : std_logic;

begin
   
   U17 : XOR2_X1 port map( A => A(3), B => B(3), Z => n5);
   U18 : XOR2_X1 port map( A => n16, B => n7, Z => S(2));
   U19 : XOR2_X1 port map( A => B(2), B => A(2), Z => n7);
   U20 : XOR2_X1 port map( A => n10, B => n13, Z => S(1));
   U21 : XOR2_X1 port map( A => B(0), B => A(0), Z => S(0));
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : XNOR2_X1 port map( A => n14, B => n5, ZN => S(3));
   U3 : OAI21_X1 port map( B1 => n17, B2 => n13, A => n11, ZN => n16);
   U4 : NOR2_X1 port map( A1 => A(1), A2 => B(1), ZN => n17);
   U5 : NAND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n13);
   U6 : OAI22_X1 port map( A1 => n15, A2 => B(2), B1 => n16, B2 => A(2), ZN => 
                           n14);
   U7 : AND2_X1 port map( A1 => A(2), A2 => n16, ZN => n15);
   U8 : NAND2_X1 port map( A1 => B(1), A2 => A(1), ZN => n11);
   U9 : OAI21_X1 port map( B1 => B(1), B2 => A(1), A => n11, ZN => n10);
   U10 : INV_X1 port map( A => n6, ZN => n2);
   U11 : AOI22_X1 port map( A1 => n7, A2 => n8, B1 => A(2), B2 => B(2), ZN => 
                           n6);
   U12 : OAI21_X1 port map( B1 => n9, B2 => n10, A => n11, ZN => n8);
   U13 : AOI21_X1 port map( B1 => Ci, B2 => n12, A => n3, ZN => n9);
   U14 : INV_X1 port map( A => n13, ZN => n3);
   U15 : OR2_X1 port map( A1 => B(0), A2 => A(0), ZN => n12);
   U16 : AOI22_X1 port map( A1 => B(3), A2 => A(3), B1 => n2, B2 => n5, ZN => 
                           n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity MUX21_NBIT4_0 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_NBIT4_0;

architecture SYN_BEHAVIORAL of MUX21_NBIT4_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n5, n6, n7, n8, n9 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n6, ZN => Y(3));
   U2 : AOI22_X1 port map( A1 => SEL, A2 => A(3), B1 => B(3), B2 => n5, ZN => 
                           n6);
   U3 : INV_X1 port map( A => n7, ZN => Y(2));
   U4 : AOI22_X1 port map( A1 => A(2), A2 => SEL, B1 => B(2), B2 => n5, ZN => 
                           n7);
   U5 : INV_X1 port map( A => n8, ZN => Y(1));
   U6 : AOI22_X1 port map( A1 => A(1), A2 => SEL, B1 => B(1), B2 => n5, ZN => 
                           n8);
   U7 : INV_X1 port map( A => n9, ZN => Y(0));
   U8 : AOI22_X1 port map( A1 => A(0), A2 => SEL, B1 => B(0), B2 => n5, ZN => 
                           n9);
   U9 : INV_X1 port map( A => SEL, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity CSB_NBIT4_7 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci_s : in std_logic;  S_4 : 
         out std_logic_vector (3 downto 0);  Cout : out std_logic);

end CSB_NBIT4_7;

architecture SYN_STRUCTURAL of CSB_NBIT4_7 is

   component RCA_Nbit_S4_13
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_Nbit_S4_14
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component MUX21_NBIT4_7
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   signal X_Logic1_port, X_Logic0_port, RCA_OUT_1_3_port, RCA_OUT_1_2_port, 
      RCA_OUT_1_1_port, RCA_OUT_1_0_port, RCA_OUT_2_3_port, RCA_OUT_2_2_port, 
      RCA_OUT_2_1_port, RCA_OUT_2_0_port, n_1019, n_1020 : std_logic;

begin
   
   V1 : MUX21_NBIT4_7 port map( A(3) => RCA_OUT_1_3_port, A(2) => 
                           RCA_OUT_1_2_port, A(1) => RCA_OUT_1_1_port, A(0) => 
                           RCA_OUT_1_0_port, B(3) => RCA_OUT_2_3_port, B(2) => 
                           RCA_OUT_2_2_port, B(1) => RCA_OUT_2_1_port, B(0) => 
                           RCA_OUT_2_0_port, SEL => Ci_s, Y(3) => S_4(3), Y(2) 
                           => S_4(2), Y(1) => S_4(1), Y(0) => S_4(0));
   V2 : RCA_Nbit_S4_14 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           RCA_OUT_1_3_port, S(2) => RCA_OUT_1_2_port, S(1) => 
                           RCA_OUT_1_1_port, S(0) => RCA_OUT_1_0_port, Co => 
                           n_1019);
   V3 : RCA_Nbit_S4_13 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           RCA_OUT_2_3_port, S(2) => RCA_OUT_2_2_port, S(1) => 
                           RCA_OUT_2_1_port, S(0) => RCA_OUT_2_0_port, Co => 
                           n_1020);
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity CSB_NBIT4_0 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci_s : in std_logic;  S_4 : 
         out std_logic_vector (3 downto 0);  Cout : out std_logic);

end CSB_NBIT4_0;

architecture SYN_STRUCTURAL of CSB_NBIT4_0 is

   component RCA_Nbit_S4_15
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_Nbit_S4_0
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component MUX21_NBIT4_0
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   signal X_Logic1_port, X_Logic0_port, RCA_OUT_1_3_port, RCA_OUT_1_2_port, 
      RCA_OUT_1_1_port, RCA_OUT_1_0_port, RCA_OUT_2_3_port, RCA_OUT_2_2_port, 
      RCA_OUT_2_1_port, RCA_OUT_2_0_port, n_1022, n_1023 : std_logic;

begin
   
   V1 : MUX21_NBIT4_0 port map( A(3) => RCA_OUT_1_3_port, A(2) => 
                           RCA_OUT_1_2_port, A(1) => RCA_OUT_1_1_port, A(0) => 
                           RCA_OUT_1_0_port, B(3) => RCA_OUT_2_3_port, B(2) => 
                           RCA_OUT_2_2_port, B(1) => RCA_OUT_2_1_port, B(0) => 
                           RCA_OUT_2_0_port, SEL => Ci_s, Y(3) => S_4(3), Y(2) 
                           => S_4(2), Y(1) => S_4(1), Y(0) => S_4(0));
   V2 : RCA_Nbit_S4_0 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           RCA_OUT_1_3_port, S(2) => RCA_OUT_1_2_port, S(1) => 
                           RCA_OUT_1_1_port, S(0) => RCA_OUT_1_0_port, Co => 
                           n_1022);
   V3 : RCA_Nbit_S4_15 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           RCA_OUT_2_3_port, S(2) => RCA_OUT_2_2_port, S(1) => 
                           RCA_OUT_2_1_port, S(0) => RCA_OUT_2_0_port, Co => 
                           n_1023);
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_26 is

   port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);

end PG_BLOCK_26;

architecture SYN_BEHAVIORAL of PG_BLOCK_26 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pout);
   U2 : INV_X1 port map( A => n2, ZN => Gout);
   U3 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity G_BLOCK_8 is

   port( Gik, Pik, Gkj : in std_logic;  Gout : out std_logic);

end G_BLOCK_8;

architecture SYN_BEHAVIORAL of G_BLOCK_8 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n2, ZN => Gout);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_0 is

   port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);

end PG_BLOCK_0;

architecture SYN_BEHAVIORAL of PG_BLOCK_0 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n2, ZN => Gout);
   U2 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pout);
   U3 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity G_BLOCK_0 is

   port( Gik, Pik, Gkj : in std_logic;  Gout : out std_logic);

end G_BLOCK_0;

architecture SYN_BEHAVIORAL of G_BLOCK_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n2);
   U2 : INV_X1 port map( A => n2, ZN => Gout);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity NETWORK_0 is

   port( A, B : in std_logic;  P, G : out std_logic);

end NETWORK_0;

architecture SYN_BEHAVIORAL of NETWORK_0 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => P);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => G);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity SUM_GENERATOR_NBIT_PER_BLOCK4_NBLOCKS8 is

   port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic_vector (7
         downto 0);  S : out std_logic_vector (31 downto 0));

end SUM_GENERATOR_NBIT_PER_BLOCK4_NBLOCKS8;

architecture SYN_STRUCTURAL of SUM_GENERATOR_NBIT_PER_BLOCK4_NBLOCKS8 is

   component CSB_NBIT4_1
      port( A, B : in std_logic_vector (3 downto 0);  Ci_s : in std_logic;  S_4
            : out std_logic_vector (3 downto 0);  Cout : out std_logic);
   end component;
   
   component CSB_NBIT4_2
      port( A, B : in std_logic_vector (3 downto 0);  Ci_s : in std_logic;  S_4
            : out std_logic_vector (3 downto 0);  Cout : out std_logic);
   end component;
   
   component CSB_NBIT4_3
      port( A, B : in std_logic_vector (3 downto 0);  Ci_s : in std_logic;  S_4
            : out std_logic_vector (3 downto 0);  Cout : out std_logic);
   end component;
   
   component CSB_NBIT4_4
      port( A, B : in std_logic_vector (3 downto 0);  Ci_s : in std_logic;  S_4
            : out std_logic_vector (3 downto 0);  Cout : out std_logic);
   end component;
   
   component CSB_NBIT4_5
      port( A, B : in std_logic_vector (3 downto 0);  Ci_s : in std_logic;  S_4
            : out std_logic_vector (3 downto 0);  Cout : out std_logic);
   end component;
   
   component CSB_NBIT4_6
      port( A, B : in std_logic_vector (3 downto 0);  Ci_s : in std_logic;  S_4
            : out std_logic_vector (3 downto 0);  Cout : out std_logic);
   end component;
   
   component CSB_NBIT4_7
      port( A, B : in std_logic_vector (3 downto 0);  Ci_s : in std_logic;  S_4
            : out std_logic_vector (3 downto 0);  Cout : out std_logic);
   end component;
   
   component CSB_NBIT4_0
      port( A, B : in std_logic_vector (3 downto 0);  Ci_s : in std_logic;  S_4
            : out std_logic_vector (3 downto 0);  Cout : out std_logic);
   end component;
   
   signal n_1024, n_1025, n_1026, n_1027, n_1028, n_1029, n_1030, n_1031 : 
      std_logic;

begin
   
   BLOCKS_0 : CSB_NBIT4_0 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci_s => Ci(0), S_4(3) => S(3), 
                           S_4(2) => S(2), S_4(1) => S(1), S_4(0) => S(0), Cout
                           => n_1024);
   BLOCKS_1 : CSB_NBIT4_7 port map( A(3) => A(7), A(2) => A(6), A(1) => A(5), 
                           A(0) => A(4), B(3) => B(7), B(2) => B(6), B(1) => 
                           B(5), B(0) => B(4), Ci_s => Ci(1), S_4(3) => S(7), 
                           S_4(2) => S(6), S_4(1) => S(5), S_4(0) => S(4), Cout
                           => n_1025);
   BLOCKS_2 : CSB_NBIT4_6 port map( A(3) => A(11), A(2) => A(10), A(1) => A(9),
                           A(0) => A(8), B(3) => B(11), B(2) => B(10), B(1) => 
                           B(9), B(0) => B(8), Ci_s => Ci(2), S_4(3) => S(11), 
                           S_4(2) => S(10), S_4(1) => S(9), S_4(0) => S(8), 
                           Cout => n_1026);
   BLOCKS_3 : CSB_NBIT4_5 port map( A(3) => A(15), A(2) => A(14), A(1) => A(13)
                           , A(0) => A(12), B(3) => B(15), B(2) => B(14), B(1) 
                           => B(13), B(0) => B(12), Ci_s => Ci(3), S_4(3) => 
                           S(15), S_4(2) => S(14), S_4(1) => S(13), S_4(0) => 
                           S(12), Cout => n_1027);
   BLOCKS_4 : CSB_NBIT4_4 port map( A(3) => A(19), A(2) => A(18), A(1) => A(17)
                           , A(0) => A(16), B(3) => B(19), B(2) => B(18), B(1) 
                           => B(17), B(0) => B(16), Ci_s => Ci(4), S_4(3) => 
                           S(19), S_4(2) => S(18), S_4(1) => S(17), S_4(0) => 
                           S(16), Cout => n_1028);
   BLOCKS_5 : CSB_NBIT4_3 port map( A(3) => A(23), A(2) => A(22), A(1) => A(21)
                           , A(0) => A(20), B(3) => B(23), B(2) => B(22), B(1) 
                           => B(21), B(0) => B(20), Ci_s => Ci(5), S_4(3) => 
                           S(23), S_4(2) => S(22), S_4(1) => S(21), S_4(0) => 
                           S(20), Cout => n_1029);
   BLOCKS_6 : CSB_NBIT4_2 port map( A(3) => A(27), A(2) => A(26), A(1) => A(25)
                           , A(0) => A(24), B(3) => B(27), B(2) => B(26), B(1) 
                           => B(25), B(0) => B(24), Ci_s => Ci(6), S_4(3) => 
                           S(27), S_4(2) => S(26), S_4(1) => S(25), S_4(0) => 
                           S(24), Cout => n_1030);
   BLOCKS_7 : CSB_NBIT4_1 port map( A(3) => A(31), A(2) => A(30), A(1) => A(29)
                           , A(0) => A(28), B(3) => B(31), B(2) => B(30), B(1) 
                           => B(29), B(0) => B(28), Ci_s => Ci(7), S_4(3) => 
                           S(31), S_4(2) => S(30), S_4(1) => S(29), S_4(0) => 
                           S(28), Cout => n_1031);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4 is

   port( A, B : in std_logic_vector (31 downto 0);  Cin : in std_logic;  Co : 
         out std_logic_vector (7 downto 0));

end CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4;

architecture SYN_STRUCTURAL of CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component G_BLOCK_1
      port( Gik, Pik, Gkj : in std_logic;  Gout : out std_logic);
   end component;
   
   component PG_BLOCK_1
      port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);
   end component;
   
   component PG_BLOCK_2
      port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);
   end component;
   
   component PG_BLOCK_3
      port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);
   end component;
   
   component PG_BLOCK_4
      port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);
   end component;
   
   component PG_BLOCK_5
      port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);
   end component;
   
   component G_BLOCK_2
      port( Gik, Pik, Gkj : in std_logic;  Gout : out std_logic);
   end component;
   
   component PG_BLOCK_6
      port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);
   end component;
   
   component PG_BLOCK_7
      port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);
   end component;
   
   component PG_BLOCK_8
      port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);
   end component;
   
   component PG_BLOCK_9
      port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);
   end component;
   
   component G_BLOCK_3
      port( Gik, Pik, Gkj : in std_logic;  Gout : out std_logic);
   end component;
   
   component PG_BLOCK_10
      port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);
   end component;
   
   component PG_BLOCK_11
      port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);
   end component;
   
   component PG_BLOCK_12
      port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);
   end component;
   
   component PG_BLOCK_13
      port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);
   end component;
   
   component G_BLOCK_4
      port( Gik, Pik, Gkj : in std_logic;  Gout : out std_logic);
   end component;
   
   component PG_BLOCK_14
      port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);
   end component;
   
   component PG_BLOCK_15
      port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);
   end component;
   
   component PG_BLOCK_16
      port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);
   end component;
   
   component G_BLOCK_5
      port( Gik, Pik, Gkj : in std_logic;  Gout : out std_logic);
   end component;
   
   component PG_BLOCK_17
      port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);
   end component;
   
   component PG_BLOCK_18
      port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);
   end component;
   
   component PG_BLOCK_19
      port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);
   end component;
   
   component PG_BLOCK_20
      port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);
   end component;
   
   component G_BLOCK_6
      port( Gik, Pik, Gkj : in std_logic;  Gout : out std_logic);
   end component;
   
   component PG_BLOCK_21
      port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);
   end component;
   
   component PG_BLOCK_22
      port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);
   end component;
   
   component PG_BLOCK_23
      port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);
   end component;
   
   component G_BLOCK_7
      port( Gik, Pik, Gkj : in std_logic;  Gout : out std_logic);
   end component;
   
   component PG_BLOCK_24
      port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);
   end component;
   
   component PG_BLOCK_25
      port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);
   end component;
   
   component PG_BLOCK_26
      port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);
   end component;
   
   component G_BLOCK_8
      port( Gik, Pik, Gkj : in std_logic;  Gout : out std_logic);
   end component;
   
   component PG_BLOCK_0
      port( Pik, Gik, Gkj, Pkj : in std_logic;  Pout, Gout : out std_logic);
   end component;
   
   component G_BLOCK_0
      port( Gik, Pik, Gkj : in std_logic;  Gout : out std_logic);
   end component;
   
   component NETWORK_1
      port( A, B : in std_logic;  P, G : out std_logic);
   end component;
   
   component NETWORK_2
      port( A, B : in std_logic;  P, G : out std_logic);
   end component;
   
   component NETWORK_3
      port( A, B : in std_logic;  P, G : out std_logic);
   end component;
   
   component NETWORK_4
      port( A, B : in std_logic;  P, G : out std_logic);
   end component;
   
   component NETWORK_5
      port( A, B : in std_logic;  P, G : out std_logic);
   end component;
   
   component NETWORK_6
      port( A, B : in std_logic;  P, G : out std_logic);
   end component;
   
   component NETWORK_7
      port( A, B : in std_logic;  P, G : out std_logic);
   end component;
   
   component NETWORK_8
      port( A, B : in std_logic;  P, G : out std_logic);
   end component;
   
   component NETWORK_9
      port( A, B : in std_logic;  P, G : out std_logic);
   end component;
   
   component NETWORK_10
      port( A, B : in std_logic;  P, G : out std_logic);
   end component;
   
   component NETWORK_11
      port( A, B : in std_logic;  P, G : out std_logic);
   end component;
   
   component NETWORK_12
      port( A, B : in std_logic;  P, G : out std_logic);
   end component;
   
   component NETWORK_13
      port( A, B : in std_logic;  P, G : out std_logic);
   end component;
   
   component NETWORK_14
      port( A, B : in std_logic;  P, G : out std_logic);
   end component;
   
   component NETWORK_15
      port( A, B : in std_logic;  P, G : out std_logic);
   end component;
   
   component NETWORK_16
      port( A, B : in std_logic;  P, G : out std_logic);
   end component;
   
   component NETWORK_17
      port( A, B : in std_logic;  P, G : out std_logic);
   end component;
   
   component NETWORK_18
      port( A, B : in std_logic;  P, G : out std_logic);
   end component;
   
   component NETWORK_19
      port( A, B : in std_logic;  P, G : out std_logic);
   end component;
   
   component NETWORK_20
      port( A, B : in std_logic;  P, G : out std_logic);
   end component;
   
   component NETWORK_21
      port( A, B : in std_logic;  P, G : out std_logic);
   end component;
   
   component NETWORK_22
      port( A, B : in std_logic;  P, G : out std_logic);
   end component;
   
   component NETWORK_23
      port( A, B : in std_logic;  P, G : out std_logic);
   end component;
   
   component NETWORK_24
      port( A, B : in std_logic;  P, G : out std_logic);
   end component;
   
   component NETWORK_25
      port( A, B : in std_logic;  P, G : out std_logic);
   end component;
   
   component NETWORK_26
      port( A, B : in std_logic;  P, G : out std_logic);
   end component;
   
   component NETWORK_27
      port( A, B : in std_logic;  P, G : out std_logic);
   end component;
   
   component NETWORK_28
      port( A, B : in std_logic;  P, G : out std_logic);
   end component;
   
   component NETWORK_29
      port( A, B : in std_logic;  P, G : out std_logic);
   end component;
   
   component NETWORK_30
      port( A, B : in std_logic;  P, G : out std_logic);
   end component;
   
   component NETWORK_0
      port( A, B : in std_logic;  P, G : out std_logic);
   end component;
   
   signal Co_7_port, Co_6_port, Co_5_port, Co_4_port, n8, Co_2_port, n9, n10, 
      wire_G_4_31_port, wire_G_4_27_port, wire_G_4_23_port, wire_G_3_31_port, 
      wire_G_3_27_port, wire_G_3_19_port, wire_G_3_15_port, wire_G_3_11_port, 
      wire_G_2_31_port, wire_G_2_29_port, wire_G_2_25_port, wire_G_2_23_port, 
      wire_G_2_21_port, wire_G_2_17_port, wire_G_2_15_port, wire_G_2_13_port, 
      wire_G_2_9_port, wire_G_2_7_port, wire_G_2_5_port, wire_G_2_1_port, 
      wire_G_1_31_port, wire_G_1_30_port, wire_G_1_28_port, wire_G_1_27_port, 
      wire_G_1_26_port, wire_G_1_24_port, wire_G_1_23_port, wire_G_1_22_port, 
      wire_G_1_20_port, wire_G_1_19_port, wire_G_1_18_port, wire_G_1_16_port, 
      wire_G_1_15_port, wire_G_1_14_port, wire_G_1_12_port, wire_G_1_11_port, 
      wire_G_1_10_port, wire_G_1_8_port, wire_G_1_7_port, wire_G_1_6_port, 
      wire_G_1_4_port, wire_G_1_3_port, wire_G_1_2_port, wire_G_0_31_port, 
      wire_G_0_29_port, wire_G_0_27_port, wire_G_0_25_port, wire_G_0_23_port, 
      wire_G_0_21_port, wire_G_0_19_port, wire_G_0_17_port, wire_G_0_15_port, 
      wire_G_0_13_port, wire_G_0_11_port, wire_G_0_9_port, wire_G_0_7_port, 
      wire_G_0_5_port, wire_G_0_3_port, wire_G_0_1_port, wire_P_4_31_port, 
      wire_P_4_27_port, wire_P_4_23_port, wire_P_3_31_port, wire_P_3_27_port, 
      wire_P_3_19_port, wire_P_3_15_port, wire_P_3_11_port, wire_P_2_31_port, 
      wire_P_2_29_port, wire_P_2_25_port, wire_P_2_23_port, wire_P_2_21_port, 
      wire_P_2_17_port, wire_P_2_15_port, wire_P_2_13_port, wire_P_2_9_port, 
      wire_P_2_7_port, wire_P_2_5_port, wire_P_1_31_port, wire_P_1_30_port, 
      wire_P_1_28_port, wire_P_1_27_port, wire_P_1_26_port, wire_P_1_24_port, 
      wire_P_1_23_port, wire_P_1_22_port, wire_P_1_20_port, wire_P_1_19_port, 
      wire_P_1_18_port, wire_P_1_16_port, wire_P_1_15_port, wire_P_1_14_port, 
      wire_P_1_12_port, wire_P_1_11_port, wire_P_1_10_port, wire_P_1_8_port, 
      wire_P_1_7_port, wire_P_1_6_port, wire_P_1_4_port, wire_P_1_3_port, 
      wire_P_1_2_port, wire_P_0_31_port, wire_P_0_29_port, wire_P_0_27_port, 
      wire_P_0_25_port, wire_P_0_23_port, wire_P_0_21_port, wire_P_0_19_port, 
      wire_P_0_17_port, wire_P_0_15_port, wire_P_0_13_port, wire_P_0_11_port, 
      wire_P_0_9_port, wire_P_0_7_port, wire_P_0_5_port, wire_P_0_3_port, 
      wire_P_0_1_port, n1, n2, n3, n4, Co_0_port, Co_1_port, Co_3_port : 
      std_logic;

begin
   Co <= ( Co_7_port, Co_6_port, Co_5_port, Co_4_port, Co_3_port, Co_2_port, 
      Co_1_port, Co_0_port );
   
   NET_B_1 : NETWORK_0 port map( A => A(1), B => B(1), P => wire_P_0_1_port, G 
                           => wire_G_0_1_port);
   NET_B_2 : NETWORK_30 port map( A => A(2), B => B(2), P => wire_P_1_2_port, G
                           => wire_G_1_2_port);
   NET_B_3 : NETWORK_29 port map( A => A(3), B => B(3), P => wire_P_0_3_port, G
                           => wire_G_0_3_port);
   NET_B_4 : NETWORK_28 port map( A => A(4), B => B(4), P => wire_P_1_4_port, G
                           => wire_G_1_4_port);
   NET_B_5 : NETWORK_27 port map( A => A(5), B => B(5), P => wire_P_0_5_port, G
                           => wire_G_0_5_port);
   NET_B_6 : NETWORK_26 port map( A => A(6), B => B(6), P => wire_P_1_6_port, G
                           => wire_G_1_6_port);
   NET_B_7 : NETWORK_25 port map( A => A(7), B => B(7), P => wire_P_0_7_port, G
                           => wire_G_0_7_port);
   NET_B_8 : NETWORK_24 port map( A => A(8), B => B(8), P => wire_P_1_8_port, G
                           => wire_G_1_8_port);
   NET_B_9 : NETWORK_23 port map( A => A(9), B => B(9), P => wire_P_0_9_port, G
                           => wire_G_0_9_port);
   NET_B_10 : NETWORK_22 port map( A => A(10), B => B(10), P => 
                           wire_P_1_10_port, G => wire_G_1_10_port);
   NET_B_11 : NETWORK_21 port map( A => A(11), B => B(11), P => 
                           wire_P_0_11_port, G => wire_G_0_11_port);
   NET_B_12 : NETWORK_20 port map( A => A(12), B => B(12), P => 
                           wire_P_1_12_port, G => wire_G_1_12_port);
   NET_B_13 : NETWORK_19 port map( A => A(13), B => B(13), P => 
                           wire_P_0_13_port, G => wire_G_0_13_port);
   NET_B_14 : NETWORK_18 port map( A => A(14), B => B(14), P => 
                           wire_P_1_14_port, G => wire_G_1_14_port);
   NET_B_15 : NETWORK_17 port map( A => A(15), B => B(15), P => 
                           wire_P_0_15_port, G => wire_G_0_15_port);
   NET_B_16 : NETWORK_16 port map( A => A(16), B => B(16), P => 
                           wire_P_1_16_port, G => wire_G_1_16_port);
   NET_B_17 : NETWORK_15 port map( A => A(17), B => B(17), P => 
                           wire_P_0_17_port, G => wire_G_0_17_port);
   NET_B_18 : NETWORK_14 port map( A => A(18), B => B(18), P => 
                           wire_P_1_18_port, G => wire_G_1_18_port);
   NET_B_19 : NETWORK_13 port map( A => A(19), B => B(19), P => 
                           wire_P_0_19_port, G => wire_G_0_19_port);
   NET_B_20 : NETWORK_12 port map( A => A(20), B => B(20), P => 
                           wire_P_1_20_port, G => wire_G_1_20_port);
   NET_B_21 : NETWORK_11 port map( A => A(21), B => B(21), P => 
                           wire_P_0_21_port, G => wire_G_0_21_port);
   NET_B_22 : NETWORK_10 port map( A => A(22), B => B(22), P => 
                           wire_P_1_22_port, G => wire_G_1_22_port);
   NET_B_23 : NETWORK_9 port map( A => A(23), B => B(23), P => wire_P_0_23_port
                           , G => wire_G_0_23_port);
   NET_B_24 : NETWORK_8 port map( A => A(24), B => B(24), P => wire_P_1_24_port
                           , G => wire_G_1_24_port);
   NET_B_25 : NETWORK_7 port map( A => A(25), B => B(25), P => wire_P_0_25_port
                           , G => wire_G_0_25_port);
   NET_B_26 : NETWORK_6 port map( A => A(26), B => B(26), P => wire_P_1_26_port
                           , G => wire_G_1_26_port);
   NET_B_27 : NETWORK_5 port map( A => A(27), B => B(27), P => wire_P_0_27_port
                           , G => wire_G_0_27_port);
   NET_B_28 : NETWORK_4 port map( A => A(28), B => B(28), P => wire_P_1_28_port
                           , G => wire_G_1_28_port);
   NET_B_29 : NETWORK_3 port map( A => A(29), B => B(29), P => wire_P_0_29_port
                           , G => wire_G_0_29_port);
   NET_B_30 : NETWORK_2 port map( A => A(30), B => B(30), P => wire_P_1_30_port
                           , G => wire_G_1_30_port);
   NET_B_31 : NETWORK_1 port map( A => A(31), B => B(31), P => wire_P_0_31_port
                           , G => wire_G_0_31_port);
   G0_1_1 : G_BLOCK_0 port map( Gik => wire_G_0_1_port, Pik => wire_P_0_1_port,
                           Gkj => n1, Gout => wire_G_2_1_port);
   PG_BLOCK0_3_1 : PG_BLOCK_0 port map( Pik => wire_P_0_3_port, Gik => 
                           wire_G_0_3_port, Gkj => wire_G_1_2_port, Pkj => 
                           wire_P_1_2_port, Pout => wire_P_1_3_port, Gout => 
                           wire_G_1_3_port);
   G0_3_2 : G_BLOCK_8 port map( Gik => wire_G_1_3_port, Pik => wire_P_1_3_port,
                           Gkj => wire_G_2_1_port, Gout => n10);
   PG_BLOCK0_5_1 : PG_BLOCK_26 port map( Pik => wire_P_0_5_port, Gik => 
                           wire_G_0_5_port, Gkj => wire_G_1_4_port, Pkj => 
                           wire_P_1_4_port, Pout => wire_P_2_5_port, Gout => 
                           wire_G_2_5_port);
   PG_BLOCK0_7_1 : PG_BLOCK_25 port map( Pik => wire_P_0_7_port, Gik => 
                           wire_G_0_7_port, Gkj => wire_G_1_6_port, Pkj => 
                           wire_P_1_6_port, Pout => wire_P_1_7_port, Gout => 
                           wire_G_1_7_port);
   PG_BLOCK0_7_2 : PG_BLOCK_24 port map( Pik => wire_P_1_7_port, Gik => 
                           wire_G_1_7_port, Gkj => wire_G_2_5_port, Pkj => 
                           wire_P_2_5_port, Pout => wire_P_2_7_port, Gout => 
                           wire_G_2_7_port);
   G0_7_3 : G_BLOCK_7 port map( Gik => wire_G_2_7_port, Pik => wire_P_2_7_port,
                           Gkj => n10, Gout => n9);
   PG_BLOCK0_9_1 : PG_BLOCK_23 port map( Pik => wire_P_0_9_port, Gik => 
                           wire_G_0_9_port, Gkj => wire_G_1_8_port, Pkj => 
                           wire_P_1_8_port, Pout => wire_P_2_9_port, Gout => 
                           wire_G_2_9_port);
   PG_BLOCK0_11_1 : PG_BLOCK_22 port map( Pik => wire_P_0_11_port, Gik => 
                           wire_G_0_11_port, Gkj => wire_G_1_10_port, Pkj => 
                           wire_P_1_10_port, Pout => wire_P_1_11_port, Gout => 
                           wire_G_1_11_port);
   PG_BLOCK0_11_2 : PG_BLOCK_21 port map( Pik => wire_P_1_11_port, Gik => 
                           wire_G_1_11_port, Gkj => wire_G_2_9_port, Pkj => 
                           wire_P_2_9_port, Pout => wire_P_3_11_port, Gout => 
                           wire_G_3_11_port);
   G0_11_4 : G_BLOCK_6 port map( Gik => wire_G_3_11_port, Pik => 
                           wire_P_3_11_port, Gkj => n3, Gout => Co_2_port);
   PG_BLOCK0_13_1 : PG_BLOCK_20 port map( Pik => wire_P_0_13_port, Gik => 
                           wire_G_0_13_port, Gkj => wire_G_1_12_port, Pkj => 
                           wire_P_1_12_port, Pout => wire_P_2_13_port, Gout => 
                           wire_G_2_13_port);
   PG_BLOCK0_15_1 : PG_BLOCK_19 port map( Pik => wire_P_0_15_port, Gik => 
                           wire_G_0_15_port, Gkj => wire_G_1_14_port, Pkj => 
                           wire_P_1_14_port, Pout => wire_P_1_15_port, Gout => 
                           wire_G_1_15_port);
   PG_BLOCK0_15_2 : PG_BLOCK_18 port map( Pik => wire_P_1_15_port, Gik => 
                           wire_G_1_15_port, Gkj => wire_G_2_13_port, Pkj => 
                           wire_P_2_13_port, Pout => wire_P_2_15_port, Gout => 
                           wire_G_2_15_port);
   PG_BLOCK0_15_3 : PG_BLOCK_17 port map( Pik => wire_P_2_15_port, Gik => 
                           wire_G_2_15_port, Gkj => wire_G_3_11_port, Pkj => 
                           wire_P_3_11_port, Pout => wire_P_3_15_port, Gout => 
                           wire_G_3_15_port);
   G0_15_4 : G_BLOCK_5 port map( Gik => wire_G_3_15_port, Pik => 
                           wire_P_3_15_port, Gkj => n9, Gout => n8);
   PG_BLOCK0_17_1 : PG_BLOCK_16 port map( Pik => wire_P_0_17_port, Gik => 
                           wire_G_0_17_port, Gkj => wire_G_1_16_port, Pkj => 
                           wire_P_1_16_port, Pout => wire_P_2_17_port, Gout => 
                           wire_G_2_17_port);
   PG_BLOCK0_19_1 : PG_BLOCK_15 port map( Pik => wire_P_0_19_port, Gik => 
                           wire_G_0_19_port, Gkj => wire_G_1_18_port, Pkj => 
                           wire_P_1_18_port, Pout => wire_P_1_19_port, Gout => 
                           wire_G_1_19_port);
   PG_BLOCK0_19_2 : PG_BLOCK_14 port map( Pik => wire_P_1_19_port, Gik => 
                           wire_G_1_19_port, Gkj => wire_G_2_17_port, Pkj => 
                           wire_P_2_17_port, Pout => wire_P_3_19_port, Gout => 
                           wire_G_3_19_port);
   G0_19_5 : G_BLOCK_4 port map( Gik => wire_G_3_19_port, Pik => 
                           wire_P_3_19_port, Gkj => n8, Gout => Co_4_port);
   PG_BLOCK0_21_1 : PG_BLOCK_13 port map( Pik => wire_P_0_21_port, Gik => 
                           wire_G_0_21_port, Gkj => wire_G_1_20_port, Pkj => 
                           wire_P_1_20_port, Pout => wire_P_2_21_port, Gout => 
                           wire_G_2_21_port);
   PG_BLOCK0_23_1 : PG_BLOCK_12 port map( Pik => wire_P_0_23_port, Gik => 
                           wire_G_0_23_port, Gkj => wire_G_1_22_port, Pkj => 
                           wire_P_1_22_port, Pout => wire_P_1_23_port, Gout => 
                           wire_G_1_23_port);
   PG_BLOCK0_23_2 : PG_BLOCK_11 port map( Pik => wire_P_1_23_port, Gik => 
                           wire_G_1_23_port, Gkj => wire_G_2_21_port, Pkj => 
                           wire_P_2_21_port, Pout => wire_P_2_23_port, Gout => 
                           wire_G_2_23_port);
   PG_BLOCK0_23_3 : PG_BLOCK_10 port map( Pik => wire_P_2_23_port, Gik => 
                           wire_G_2_23_port, Gkj => wire_G_3_19_port, Pkj => 
                           wire_P_3_19_port, Pout => wire_P_4_23_port, Gout => 
                           wire_G_4_23_port);
   G0_23_5 : G_BLOCK_3 port map( Gik => n4, Pik => wire_P_4_23_port, Gkj => n8,
                           Gout => Co_5_port);
   PG_BLOCK0_25_1 : PG_BLOCK_9 port map( Pik => wire_P_0_25_port, Gik => 
                           wire_G_0_25_port, Gkj => wire_G_1_24_port, Pkj => 
                           wire_P_1_24_port, Pout => wire_P_2_25_port, Gout => 
                           wire_G_2_25_port);
   PG_BLOCK0_27_1 : PG_BLOCK_8 port map( Pik => wire_P_0_27_port, Gik => 
                           wire_G_0_27_port, Gkj => wire_G_1_26_port, Pkj => 
                           wire_P_1_26_port, Pout => wire_P_1_27_port, Gout => 
                           wire_G_1_27_port);
   PG_BLOCK0_27_2 : PG_BLOCK_7 port map( Pik => wire_P_1_27_port, Gik => 
                           wire_G_1_27_port, Gkj => wire_G_2_25_port, Pkj => 
                           wire_P_2_25_port, Pout => wire_P_3_27_port, Gout => 
                           wire_G_3_27_port);
   PG_BLOCK0_27_4 : PG_BLOCK_6 port map( Pik => wire_P_3_27_port, Gik => 
                           wire_G_3_27_port, Gkj => wire_G_4_23_port, Pkj => 
                           wire_P_4_23_port, Pout => wire_P_4_27_port, Gout => 
                           wire_G_4_27_port);
   G0_27_5 : G_BLOCK_2 port map( Gik => wire_G_4_27_port, Pik => 
                           wire_P_4_27_port, Gkj => n8, Gout => Co_6_port);
   PG_BLOCK0_29_1 : PG_BLOCK_5 port map( Pik => wire_P_0_29_port, Gik => 
                           wire_G_0_29_port, Gkj => wire_G_1_28_port, Pkj => 
                           wire_P_1_28_port, Pout => wire_P_2_29_port, Gout => 
                           wire_G_2_29_port);
   PG_BLOCK0_31_1 : PG_BLOCK_4 port map( Pik => wire_P_0_31_port, Gik => 
                           wire_G_0_31_port, Gkj => wire_G_1_30_port, Pkj => 
                           wire_P_1_30_port, Pout => wire_P_1_31_port, Gout => 
                           wire_G_1_31_port);
   PG_BLOCK0_31_2 : PG_BLOCK_3 port map( Pik => wire_P_1_31_port, Gik => 
                           wire_G_1_31_port, Gkj => wire_G_2_29_port, Pkj => 
                           wire_P_2_29_port, Pout => wire_P_2_31_port, Gout => 
                           wire_G_2_31_port);
   PG_BLOCK0_31_3 : PG_BLOCK_2 port map( Pik => wire_P_2_31_port, Gik => 
                           wire_G_2_31_port, Gkj => wire_G_3_27_port, Pkj => 
                           wire_P_3_27_port, Pout => wire_P_3_31_port, Gout => 
                           wire_G_3_31_port);
   PG_BLOCK0_31_4 : PG_BLOCK_1 port map( Pik => wire_P_3_31_port, Gik => 
                           wire_G_3_31_port, Gkj => n4, Pkj => wire_P_4_23_port
                           , Pout => wire_P_4_31_port, Gout => wire_G_4_31_port
                           );
   G0_31_5 : G_BLOCK_1 port map( Gik => wire_G_4_31_port, Pik => 
                           wire_P_4_31_port, Gkj => Co_3_port, Gout => 
                           Co_7_port);
   U1 : BUF_X1 port map( A => n9, Z => n3);
   U2 : BUF_X2 port map( A => n8, Z => Co_3_port);
   U3 : CLKBUF_X1 port map( A => wire_G_4_23_port, Z => n4);
   U4 : CLKBUF_X1 port map( A => n10, Z => Co_0_port);
   U5 : CLKBUF_X1 port map( A => n3, Z => Co_1_port);
   U6 : INV_X1 port map( A => n2, ZN => n1);
   U7 : AOI21_X1 port map( B1 => B(0), B2 => A(0), A => Cin, ZN => n2);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity P4_ADDER is

   port( A, B : in std_logic_vector (31 downto 0);  Cin : in std_logic;  S : 
         out std_logic_vector (31 downto 0);  Cout : out std_logic);

end P4_ADDER;

architecture SYN_STRUCTURAL of P4_ADDER is

   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component SUM_GENERATOR_NBIT_PER_BLOCK4_NBLOCKS8
      port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic_vector
            (7 downto 0);  S : out std_logic_vector (31 downto 0));
   end component;
   
   component CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4
      port( A, B : in std_logic_vector (31 downto 0);  Cin : in std_logic;  Co 
            : out std_logic_vector (7 downto 0));
   end component;
   
   signal C1_6_port, C1_5_port, C1_4_port, C1_3_port, C1_2_port, C1_1_port, 
      C1_0_port, n1, n2, n3, n4 : std_logic;

begin
   
   CG : CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4 port map( A(31) => A(31), A(30) 
                           => A(30), A(29) => A(29), A(28) => A(28), A(27) => 
                           A(27), A(26) => A(26), A(25) => A(25), A(24) => 
                           A(24), A(23) => A(23), A(22) => A(22), A(21) => 
                           A(21), A(20) => A(20), A(19) => A(19), A(18) => 
                           A(18), A(17) => A(17), A(16) => A(16), A(15) => 
                           A(15), A(14) => A(14), A(13) => A(13), A(12) => 
                           A(12), A(11) => A(11), A(10) => A(10), A(9) => A(9),
                           A(8) => A(8), A(7) => A(7), A(6) => A(6), A(5) => 
                           A(5), A(4) => A(4), A(3) => A(3), A(2) => A(2), A(1)
                           => A(1), A(0) => A(0), B(31) => B(31), B(30) => 
                           B(30), B(29) => B(29), B(28) => B(28), B(27) => 
                           B(27), B(26) => B(26), B(25) => B(25), B(24) => 
                           B(24), B(23) => B(23), B(22) => B(22), B(21) => 
                           B(21), B(20) => B(20), B(19) => B(19), B(18) => 
                           B(18), B(17) => B(17), B(16) => B(16), B(15) => 
                           B(15), B(14) => B(14), B(13) => B(13), B(12) => 
                           B(12), B(11) => B(11), B(10) => B(10), B(9) => B(9),
                           B(8) => B(8), B(7) => B(7), B(6) => B(6), B(5) => 
                           B(5), B(4) => B(4), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Cin => Cin, Co(7) => Cout, 
                           Co(6) => C1_6_port, Co(5) => C1_5_port, Co(4) => 
                           C1_4_port, Co(3) => C1_3_port, Co(2) => C1_2_port, 
                           Co(1) => C1_1_port, Co(0) => C1_0_port);
   SG : SUM_GENERATOR_NBIT_PER_BLOCK4_NBLOCKS8 port map( A(31) => A(31), A(30) 
                           => A(30), A(29) => A(29), A(28) => A(28), A(27) => 
                           A(27), A(26) => A(26), A(25) => A(25), A(24) => 
                           A(24), A(23) => A(23), A(22) => A(22), A(21) => 
                           A(21), A(20) => A(20), A(19) => A(19), A(18) => 
                           A(18), A(17) => A(17), A(16) => A(16), A(15) => n3, 
                           A(14) => A(14), A(13) => n1, A(12) => A(12), A(11) 
                           => A(11), A(10) => A(10), A(9) => A(9), A(8) => A(8)
                           , A(7) => A(7), A(6) => A(6), A(5) => A(5), A(4) => 
                           A(4), A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), B(31) => B(31), B(30) => B(30), B(29) => 
                           B(29), B(28) => B(28), B(27) => B(27), B(26) => 
                           B(26), B(25) => B(25), B(24) => B(24), B(23) => n2, 
                           B(22) => B(22), B(21) => B(21), B(20) => B(20), 
                           B(19) => B(19), B(18) => B(18), B(17) => B(17), 
                           B(16) => B(16), B(15) => n4, B(14) => B(14), B(13) 
                           => B(13), B(12) => B(12), B(11) => B(11), B(10) => 
                           B(10), B(9) => B(9), B(8) => B(8), B(7) => B(7), 
                           B(6) => B(6), B(5) => B(5), B(4) => B(4), B(3) => 
                           B(3), B(2) => B(2), B(1) => B(1), B(0) => B(0), 
                           Ci(7) => C1_6_port, Ci(6) => C1_5_port, Ci(5) => 
                           C1_4_port, Ci(4) => C1_3_port, Ci(3) => C1_2_port, 
                           Ci(2) => C1_1_port, Ci(1) => C1_0_port, Ci(0) => Cin
                           , S(31) => S(31), S(30) => S(30), S(29) => S(29), 
                           S(28) => S(28), S(27) => S(27), S(26) => S(26), 
                           S(25) => S(25), S(24) => S(24), S(23) => S(23), 
                           S(22) => S(22), S(21) => S(21), S(20) => S(20), 
                           S(19) => S(19), S(18) => S(18), S(17) => S(17), 
                           S(16) => S(16), S(15) => S(15), S(14) => S(14), 
                           S(13) => S(13), S(12) => S(12), S(11) => S(11), 
                           S(10) => S(10), S(9) => S(9), S(8) => S(8), S(7) => 
                           S(7), S(6) => S(6), S(5) => S(5), S(4) => S(4), S(3)
                           => S(3), S(2) => S(2), S(1) => S(1), S(0) => S(0));
   U1 : BUF_X1 port map( A => A(13), Z => n1);
   U2 : BUF_X1 port map( A => B(23), Z => n2);
   U3 : BUF_X1 port map( A => A(15), Z => n3);
   U4 : BUF_X1 port map( A => B(15), Z => n4);

end SYN_STRUCTURAL;
