
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_BOOTHMUL is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_BOOTHMUL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity BOOTHMUL_DW01_inc_0 is

   port( A : in std_logic_vector (7 downto 0);  SUM : out std_logic_vector (7 
         downto 0));

end BOOTHMUL_DW01_inc_0;

architecture SYN_rpl of BOOTHMUL_DW01_inc_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component HA_X1
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_7_port, carry_6_port, carry_5_port, carry_4_port, carry_3_port,
      carry_2_port : std_logic;

begin
   
   U1_1_6 : HA_X1 port map( A => A(6), B => carry_6_port, CO => carry_7_port, S
                           => SUM(6));
   U1_1_5 : HA_X1 port map( A => A(5), B => carry_5_port, CO => carry_6_port, S
                           => SUM(5));
   U1_1_4 : HA_X1 port map( A => A(4), B => carry_4_port, CO => carry_5_port, S
                           => SUM(4));
   U1_1_3 : HA_X1 port map( A => A(3), B => carry_3_port, CO => carry_4_port, S
                           => SUM(3));
   U1_1_2 : HA_X1 port map( A => A(2), B => carry_2_port, CO => carry_3_port, S
                           => SUM(2));
   U1_1_1 : HA_X1 port map( A => A(1), B => A(0), CO => carry_2_port, S => 
                           SUM(1));
   U1 : XOR2_X1 port map( A => carry_7_port, B => A(7), Z => SUM(7));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity BOOTHMUL_DW01_add_6 is

   port( A, B : in std_logic_vector (7 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (7 downto 0);  CO : out std_logic);

end BOOTHMUL_DW01_add_6;

architecture SYN_rpl of BOOTHMUL_DW01_add_6 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_7_port, carry_6_port, carry_5_port, carry_4_port, carry_3_port,
      carry_2_port, n2, n_1003 : std_logic;

begin
   
   U1_7 : FA_X1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           n_1003, S => SUM(7));
   U1_6 : FA_X1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : FA_X1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : FA_X1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => n2, CO => carry_2_port, S
                           => SUM(1));
   U1 : XOR2_X1 port map( A => B(0), B => A(0), Z => SUM(0));
   U2 : AND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n2);

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity BOOTHMUL_DW01_add_5 is

   port( A, B : in std_logic_vector (7 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (7 downto 0);  CO : out std_logic);

end BOOTHMUL_DW01_add_5;

architecture SYN_rpl of BOOTHMUL_DW01_add_5 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_7_port, carry_6_port, carry_5_port, carry_4_port, carry_3_port,
      carry_2_port, n2, n_1006 : std_logic;

begin
   
   U1_7 : FA_X1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           n_1006, S => SUM(7));
   U1_6 : FA_X1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : FA_X1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : FA_X1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => n2, CO => carry_2_port, S
                           => SUM(1));
   U1 : XOR2_X1 port map( A => B(0), B => A(0), Z => SUM(0));
   U2 : AND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n2);

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity BOOTHMUL_DW01_add_4 is

   port( A, B : in std_logic_vector (7 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (7 downto 0);  CO : out std_logic);

end BOOTHMUL_DW01_add_4;

architecture SYN_rpl of BOOTHMUL_DW01_add_4 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_7_port, carry_6_port, carry_5_port, carry_4_port, carry_3_port,
      carry_2_port, n2, n_1009 : std_logic;

begin
   
   U1_7 : FA_X1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           n_1009, S => SUM(7));
   U1_6 : FA_X1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : FA_X1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : FA_X1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => n2, CO => carry_2_port, S
                           => SUM(1));
   U1 : XOR2_X1 port map( A => B(0), B => A(0), Z => SUM(0));
   U2 : AND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n2);

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity BOOTHMUL_DW01_add_3 is

   port( A, B : in std_logic_vector (7 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (7 downto 0);  CO : out std_logic);

end BOOTHMUL_DW01_add_3;

architecture SYN_rpl of BOOTHMUL_DW01_add_3 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_7_port, carry_6_port, carry_5_port, carry_4_port, carry_3_port,
      carry_2_port, n2, n_1012 : std_logic;

begin
   
   U1_7 : FA_X1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           n_1012, S => SUM(7));
   U1_6 : FA_X1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : FA_X1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : FA_X1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => n2, CO => carry_2_port, S
                           => SUM(1));
   U1 : XOR2_X1 port map( A => B(0), B => A(0), Z => SUM(0));
   U2 : AND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n2);

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity BOOTHMUL_DW01_add_2 is

   port( A, B : in std_logic_vector (7 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (7 downto 0);  CO : out std_logic);

end BOOTHMUL_DW01_add_2;

architecture SYN_rpl of BOOTHMUL_DW01_add_2 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_7_port, carry_6_port, carry_5_port, carry_4_port, carry_3_port,
      carry_2_port, n2, n_1015 : std_logic;

begin
   
   U1_7 : FA_X1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           n_1015, S => SUM(7));
   U1_6 : FA_X1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : FA_X1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : FA_X1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => n2, CO => carry_2_port, S
                           => SUM(1));
   U1 : XOR2_X1 port map( A => B(0), B => A(0), Z => SUM(0));
   U2 : AND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n2);

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity BOOTHMUL_DW01_add_1 is

   port( A, B : in std_logic_vector (7 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (7 downto 0);  CO : out std_logic);

end BOOTHMUL_DW01_add_1;

architecture SYN_rpl of BOOTHMUL_DW01_add_1 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_7_port, carry_6_port, carry_5_port, carry_4_port, carry_3_port,
      carry_2_port, n2, n_1018 : std_logic;

begin
   
   U1_7 : FA_X1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           n_1018, S => SUM(7));
   U1_6 : FA_X1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : FA_X1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : FA_X1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => n2, CO => carry_2_port, S
                           => SUM(1));
   U1 : XOR2_X1 port map( A => B(0), B => A(0), Z => SUM(0));
   U2 : AND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n2);

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity BOOTHMUL_DW01_add_0 is

   port( A, B : in std_logic_vector (7 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (7 downto 0);  CO : out std_logic);

end BOOTHMUL_DW01_add_0;

architecture SYN_rpl of BOOTHMUL_DW01_add_0 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_7_port, carry_6_port, carry_5_port, carry_4_port, carry_3_port,
      carry_2_port, n2, n_1021 : std_logic;

begin
   
   U1_7 : FA_X1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           n_1021, S => SUM(7));
   U1_6 : FA_X1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : FA_X1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : FA_X1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => n2, CO => carry_2_port, S
                           => SUM(1));
   U1 : XOR2_X1 port map( A => B(0), B => A(0), Z => SUM(0));
   U2 : AND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n2);

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity BOOTHMUL is

   port( Multiplicand_1, Multiplier_2 : in std_logic_vector (7 downto 0);  
         result : out std_logic_vector (15 downto 0));

end BOOTHMUL;

architecture SYN_Behavioral of BOOTHMUL is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BOOTHMUL_DW01_inc_0
      port( A : in std_logic_vector (7 downto 0);  SUM : out std_logic_vector 
            (7 downto 0));
   end component;
   
   component BOOTHMUL_DW01_add_6
      port( A, B : in std_logic_vector (7 downto 0);  CI : in std_logic;  SUM :
            out std_logic_vector (7 downto 0);  CO : out std_logic);
   end component;
   
   component BOOTHMUL_DW01_add_5
      port( A, B : in std_logic_vector (7 downto 0);  CI : in std_logic;  SUM :
            out std_logic_vector (7 downto 0);  CO : out std_logic);
   end component;
   
   component BOOTHMUL_DW01_add_4
      port( A, B : in std_logic_vector (7 downto 0);  CI : in std_logic;  SUM :
            out std_logic_vector (7 downto 0);  CO : out std_logic);
   end component;
   
   component BOOTHMUL_DW01_add_3
      port( A, B : in std_logic_vector (7 downto 0);  CI : in std_logic;  SUM :
            out std_logic_vector (7 downto 0);  CO : out std_logic);
   end component;
   
   component BOOTHMUL_DW01_add_2
      port( A, B : in std_logic_vector (7 downto 0);  CI : in std_logic;  SUM :
            out std_logic_vector (7 downto 0);  CO : out std_logic);
   end component;
   
   component BOOTHMUL_DW01_add_1
      port( A, B : in std_logic_vector (7 downto 0);  CI : in std_logic;  SUM :
            out std_logic_vector (7 downto 0);  CO : out std_logic);
   end component;
   
   component BOOTHMUL_DW01_add_0
      port( A, B : in std_logic_vector (7 downto 0);  CI : in std_logic;  SUM :
            out std_logic_vector (7 downto 0);  CO : out std_logic);
   end component;
   
   signal result_15_port, result_13_port, result_12_port, result_11_port, 
      result_10_port, result_9_port, result_8_port, result_7_port, 
      result_5_port, result_3_port, result_1_port, result_0_port, 
      Multiplicand_N_2_7_port, Multiplicand_N_2_6_port, Multiplicand_N_2_5_port
      , Multiplicand_N_2_4_port, Multiplicand_N_2_3_port, 
      Multiplicand_N_2_2_port, Multiplicand_N_2_1_port, N82, N83, N84, N85, N86
      , N87, N88, N89, N145, N146, N147, N148, N149, N150, N152, N162, N163, 
      N164, N165, N166, N167, N168, N169, N242, N243, N244, N245, N246, N247, 
      N248, N249, N305, N306, N307, N308, N309, N310, N312, N322, N323, N324, 
      N325, N326, N327, N328, N329, N390, N392, N414, N415, N416, N417, N418, 
      N419, N420, N421, N465, N466, N467, N468, N470, N472, N482, N483, N484, 
      N485, N486, N487, N488, N489, N550, N552, N562, N563, N564, N565, N566, 
      N567, N568, N569, U3_U1_Z_0, U3_U1_Z_1, U3_U1_Z_2, U3_U1_Z_3, U3_U1_Z_4, 
      U3_U1_Z_5, U3_U1_Z_6, U3_U1_Z_7, U3_U2_Z_0, U3_U2_Z_1, U3_U2_Z_2, 
      U3_U2_Z_3, U3_U2_Z_4, U3_U2_Z_5, U3_U2_Z_6, U3_U2_Z_7, U3_U3_Z_0, 
      U3_U3_Z_1, U3_U3_Z_2, U3_U3_Z_3, U3_U3_Z_4, U3_U3_Z_5, U3_U3_Z_6, 
      U3_U3_Z_7, U3_U4_Z_0, U3_U4_Z_1, U3_U4_Z_2, U3_U4_Z_3, U3_U4_Z_4, 
      U3_U4_Z_5, U3_U4_Z_6, U3_U4_Z_7, U3_U5_Z_0, U3_U5_Z_1, U3_U5_Z_2, 
      U3_U5_Z_3, U3_U5_Z_4, U3_U5_Z_5, U3_U5_Z_6, U3_U5_Z_7, U3_U6_Z_0, 
      U3_U6_Z_1, U3_U6_Z_2, U3_U6_Z_3, U3_U6_Z_4, U3_U6_Z_5, U3_U6_Z_6, 
      U3_U6_Z_7, U3_U7_Z_0, U3_U7_Z_1, U3_U7_Z_2, U3_U7_Z_3, U3_U7_Z_4, 
      U3_U7_Z_5, U3_U7_Z_6, U3_U7_Z_7, n295, n319, n320, n321, n322_port, 
      n323_port, n324_port, n325_port, n479, n480, n481, n482_port, n483_port, 
      n484_port, n485_port, n486_port, n487_port, n488_port, n489_port, n490, 
      n491, n492, n493, n494, n495, n496, n497, n498, n499, n500, n501, n502, 
      n503, n504, n505, n506, n507, n508, n509, n510, n511, n512, n513, n514, 
      n515, n516, n517, n518, n519, n520, n521, n522, n523, n524, n525, n526, 
      result_6_port, n528, n529, n530, n531, n532, n533, n534, n535, 
      result_4_port, n537, n538, n539, n540, n541, n542, result_2_port, n544, 
      n545, n546, n547, n548, n_1022, n_1023, n_1024, n_1025, n_1026, n_1027, 
      n_1028, n_1029 : std_logic;

begin
   result <= ( result_15_port, result_15_port, result_13_port, result_12_port, 
      result_11_port, result_10_port, result_9_port, result_8_port, 
      result_7_port, result_6_port, result_5_port, result_4_port, result_3_port
      , result_2_port, result_1_port, result_0_port );
   
   n319 <= '0';
   n320 <= '0';
   n321 <= '0';
   n322_port <= '0';
   n323_port <= '0';
   n324_port <= '0';
   n325_port <= '0';
   r211 : BOOTHMUL_DW01_add_0 port map( A(7) => N552, A(6) => N552, A(5) => 
                           N550, A(4) => n514, A(3) => n295, A(2) => n516, A(1)
                           => n519, A(0) => n522, B(7) => U3_U7_Z_7, B(6) => 
                           U3_U7_Z_6, B(5) => U3_U7_Z_5, B(4) => U3_U7_Z_4, 
                           B(3) => U3_U7_Z_3, B(2) => U3_U7_Z_2, B(1) => 
                           U3_U7_Z_1, B(0) => U3_U7_Z_0, CI => n322_port, 
                           SUM(7) => N569, SUM(6) => N568, SUM(5) => N567, 
                           SUM(4) => N566, SUM(3) => N565, SUM(2) => N564, 
                           SUM(1) => N563, SUM(0) => N562, CO => n_1022);
   r207 : BOOTHMUL_DW01_add_1 port map( A(7) => N472, A(6) => N472, A(5) => 
                           N470, A(4) => n515, A(3) => N468, A(2) => N467, A(1)
                           => N466, A(0) => N465, B(7) => U3_U6_Z_7, B(6) => 
                           U3_U6_Z_6, B(5) => U3_U6_Z_5, B(4) => U3_U6_Z_4, 
                           B(3) => U3_U6_Z_3, B(2) => U3_U6_Z_2, B(1) => 
                           U3_U6_Z_1, B(0) => U3_U6_Z_0, CI => n323_port, 
                           SUM(7) => N489, SUM(6) => N488, SUM(5) => N487, 
                           SUM(4) => N486, SUM(3) => N485, SUM(2) => N484, 
                           SUM(1) => N483, SUM(0) => N482, CO => n_1023);
   r201 : BOOTHMUL_DW01_add_2 port map( A(7) => N392, A(6) => N392, A(5) => 
                           N390, A(4) => n517, A(3) => n520, A(2) => n523, A(1)
                           => n528, A(0) => n532, B(7) => U3_U5_Z_7, B(6) => 
                           U3_U5_Z_6, B(5) => U3_U5_Z_5, B(4) => U3_U5_Z_4, 
                           B(3) => U3_U5_Z_3, B(2) => U3_U5_Z_2, B(1) => 
                           U3_U5_Z_1, B(0) => U3_U5_Z_0, CI => n324_port, 
                           SUM(7) => N421, SUM(6) => N420, SUM(5) => N419, 
                           SUM(4) => N418, SUM(3) => N417, SUM(2) => N416, 
                           SUM(1) => N415, SUM(0) => N414, CO => n_1024);
   r199 : BOOTHMUL_DW01_add_3 port map( A(7) => N312, A(6) => N312, A(5) => 
                           N310, A(4) => N309, A(3) => N308, A(2) => N307, A(1)
                           => N306, A(0) => N305, B(7) => U3_U4_Z_7, B(6) => 
                           U3_U4_Z_6, B(5) => U3_U4_Z_5, B(4) => U3_U4_Z_4, 
                           B(3) => U3_U4_Z_3, B(2) => U3_U4_Z_2, B(1) => 
                           U3_U4_Z_1, B(0) => U3_U4_Z_0, CI => n325_port, 
                           SUM(7) => N329, SUM(6) => N328, SUM(5) => N327, 
                           SUM(4) => N326, SUM(3) => N325, SUM(2) => N324, 
                           SUM(1) => N323, SUM(0) => N322, CO => n_1025);
   r195 : BOOTHMUL_DW01_add_4 port map( A(7) => n518, A(6) => n518, A(5) => 
                           n521, A(4) => n524, A(3) => n529, A(2) => n533, A(1)
                           => n537, A(0) => n540, B(7) => U3_U3_Z_7, B(6) => 
                           U3_U3_Z_6, B(5) => U3_U3_Z_5, B(4) => U3_U3_Z_4, 
                           B(3) => U3_U3_Z_3, B(2) => U3_U3_Z_2, B(1) => 
                           U3_U3_Z_1, B(0) => U3_U3_Z_0, CI => n319, SUM(7) => 
                           N249, SUM(6) => N248, SUM(5) => N247, SUM(4) => N246
                           , SUM(3) => N245, SUM(2) => N244, SUM(1) => N243, 
                           SUM(0) => N242, CO => n_1026);
   r191 : BOOTHMUL_DW01_add_5 port map( A(7) => N152, A(6) => N152, A(5) => 
                           N150, A(4) => N149, A(3) => N148, A(2) => N147, A(1)
                           => N146, A(0) => N145, B(7) => U3_U2_Z_7, B(6) => 
                           U3_U2_Z_6, B(5) => U3_U2_Z_5, B(4) => U3_U2_Z_4, 
                           B(3) => U3_U2_Z_3, B(2) => U3_U2_Z_2, B(1) => 
                           U3_U2_Z_1, B(0) => U3_U2_Z_0, CI => n320, SUM(7) => 
                           N169, SUM(6) => N168, SUM(5) => N167, SUM(4) => N166
                           , SUM(3) => N165, SUM(2) => N164, SUM(1) => N163, 
                           SUM(0) => N162, CO => n_1027);
   r187 : BOOTHMUL_DW01_add_6 port map( A(7) => n525, A(6) => n525, A(5) => 
                           n530, A(4) => n534, A(3) => n538, A(2) => n541, A(1)
                           => n544, A(0) => n546, B(7) => U3_U1_Z_7, B(6) => 
                           U3_U1_Z_6, B(5) => U3_U1_Z_5, B(4) => U3_U1_Z_4, 
                           B(3) => U3_U1_Z_3, B(2) => U3_U1_Z_2, B(1) => 
                           U3_U1_Z_1, B(0) => U3_U1_Z_0, CI => n321, SUM(7) => 
                           N89, SUM(6) => N88, SUM(5) => N87, SUM(4) => N86, 
                           SUM(3) => N85, SUM(2) => N84, SUM(1) => N83, SUM(0) 
                           => N82, CO => n_1028);
   add_0_root_add_60_ni : BOOTHMUL_DW01_inc_0 port map( A(7) => n526, A(6) => 
                           n531, A(5) => n535, A(4) => n539, A(3) => n542, A(2)
                           => n545, A(1) => n547, A(0) => n548, SUM(7) => 
                           Multiplicand_N_2_7_port, SUM(6) => 
                           Multiplicand_N_2_6_port, SUM(5) => 
                           Multiplicand_N_2_5_port, SUM(4) => 
                           Multiplicand_N_2_4_port, SUM(3) => 
                           Multiplicand_N_2_3_port, SUM(2) => 
                           Multiplicand_N_2_2_port, SUM(1) => 
                           Multiplicand_N_2_1_port, SUM(0) => n_1029);
   U522 : MUX2_X1 port map( A => N564, B => n516, S => n479, Z => result_9_port
                           );
   U523 : MUX2_X1 port map( A => N563, B => n519, S => n479, Z => result_8_port
                           );
   U524 : MUX2_X1 port map( A => N562, B => n522, S => n479, Z => result_7_port
                           );
   U525 : MUX2_X1 port map( A => N414, B => n532, S => n480, Z => result_5_port
                           );
   U526 : MUX2_X1 port map( A => N242, B => n540, S => n481, Z => result_3_port
                           );
   U527 : MUX2_X1 port map( A => N82, B => n546, S => n482_port, Z => 
                           result_1_port);
   U528 : MUX2_X1 port map( A => N569, B => N552, S => n479, Z => 
                           result_15_port);
   U529 : MUX2_X1 port map( A => N568, B => N552, S => n479, Z => 
                           result_13_port);
   U530 : MUX2_X1 port map( A => N567, B => N550, S => n479, Z => 
                           result_12_port);
   U531 : MUX2_X1 port map( A => N566, B => n514, S => n479, Z => 
                           result_11_port);
   U532 : MUX2_X1 port map( A => N565, B => n295, S => n479, Z => 
                           result_10_port);
   U533 : NOR2_X1 port map( A1 => n548, A2 => n483_port, ZN => result_0_port);
   U534 : MUX2_X1 port map( A => N487, B => N470, S => n484_port, Z => n514);
   U535 : MUX2_X1 port map( A => N485, B => N468, S => n484_port, Z => n516);
   U536 : MUX2_X1 port map( A => N484, B => N467, S => n484_port, Z => n519);
   U537 : MUX2_X1 port map( A => N483, B => N466, S => n484_port, Z => n522);
   U538 : MUX2_X1 port map( A => N482, B => N465, S => n484_port, Z => 
                           result_6_port);
   U539 : MUX2_X1 port map( A => N323, B => N306, S => n485_port, Z => n532);
   U540 : MUX2_X1 port map( A => N322, B => N305, S => n485_port, Z => 
                           result_4_port);
   U541 : MUX2_X1 port map( A => N163, B => N146, S => n486_port, Z => n540);
   U542 : MUX2_X1 port map( A => N162, B => N145, S => n486_port, Z => 
                           result_2_port);
   U543 : NOR2_X1 port map( A1 => n487_port, A2 => n483_port, ZN => n546);
   U544 : MUX2_X1 port map( A => N486, B => n515, S => n484_port, Z => n295);
   U545 : MUX2_X1 port map( A => N419, B => N390, S => n480, Z => n515);
   U546 : OAI22_X1 port map( A1 => n526, A2 => n488_port, B1 => n489_port, B2 
                           => n490, ZN => U3_U7_Z_7);
   U547 : OAI22_X1 port map( A1 => n531, A2 => n488_port, B1 => n491, B2 => 
                           n490, ZN => U3_U7_Z_6);
   U548 : OAI22_X1 port map( A1 => n535, A2 => n488_port, B1 => n492, B2 => 
                           n490, ZN => U3_U7_Z_5);
   U549 : OAI22_X1 port map( A1 => n539, A2 => n488_port, B1 => n493, B2 => 
                           n490, ZN => U3_U7_Z_4);
   U550 : OAI22_X1 port map( A1 => n542, A2 => n488_port, B1 => n494, B2 => 
                           n490, ZN => U3_U7_Z_3);
   U551 : OAI22_X1 port map( A1 => n545, A2 => n488_port, B1 => n495, B2 => 
                           n490, ZN => U3_U7_Z_2);
   U552 : OAI22_X1 port map( A1 => n547, A2 => n488_port, B1 => n487_port, B2 
                           => n490, ZN => U3_U7_Z_1);
   U553 : NOR2_X1 port map( A1 => n548, A2 => n479, ZN => U3_U7_Z_0);
   U554 : AND2_X1 port map( A1 => n488_port, A2 => n490, ZN => n479);
   U555 : NAND2_X1 port map( A1 => Multiplier_2(7), A2 => n496, ZN => n490);
   U556 : OR2_X1 port map( A1 => n496, A2 => Multiplier_2(7), ZN => n488_port);
   U557 : OAI22_X1 port map( A1 => n526, A2 => n497, B1 => n489_port, B2 => 
                           n498, ZN => U3_U6_Z_7);
   U558 : OAI22_X1 port map( A1 => n531, A2 => n497, B1 => n491, B2 => n498, ZN
                           => U3_U6_Z_6);
   U559 : OAI22_X1 port map( A1 => n535, A2 => n497, B1 => n492, B2 => n498, ZN
                           => U3_U6_Z_5);
   U560 : OAI22_X1 port map( A1 => n539, A2 => n497, B1 => n493, B2 => n498, ZN
                           => U3_U6_Z_4);
   U561 : OAI22_X1 port map( A1 => n542, A2 => n497, B1 => n494, B2 => n498, ZN
                           => U3_U6_Z_3);
   U562 : OAI22_X1 port map( A1 => n545, A2 => n497, B1 => n495, B2 => n498, ZN
                           => U3_U6_Z_2);
   U563 : OAI22_X1 port map( A1 => n547, A2 => n497, B1 => n487_port, B2 => 
                           n498, ZN => U3_U6_Z_1);
   U564 : NOR2_X1 port map( A1 => n548, A2 => n484_port, ZN => U3_U6_Z_0);
   U565 : OAI22_X1 port map( A1 => n526, A2 => n499, B1 => n489_port, B2 => 
                           n500, ZN => U3_U5_Z_7);
   U566 : OAI22_X1 port map( A1 => n531, A2 => n499, B1 => n491, B2 => n500, ZN
                           => U3_U5_Z_6);
   U567 : OAI22_X1 port map( A1 => n535, A2 => n499, B1 => n492, B2 => n500, ZN
                           => U3_U5_Z_5);
   U568 : OAI22_X1 port map( A1 => n539, A2 => n499, B1 => n493, B2 => n500, ZN
                           => U3_U5_Z_4);
   U569 : OAI22_X1 port map( A1 => n542, A2 => n499, B1 => n494, B2 => n500, ZN
                           => U3_U5_Z_3);
   U570 : OAI22_X1 port map( A1 => n545, A2 => n499, B1 => n495, B2 => n500, ZN
                           => U3_U5_Z_2);
   U571 : OAI22_X1 port map( A1 => n547, A2 => n499, B1 => n487_port, B2 => 
                           n500, ZN => U3_U5_Z_1);
   U572 : NOR2_X1 port map( A1 => n548, A2 => n480, ZN => U3_U5_Z_0);
   U573 : OAI22_X1 port map( A1 => n526, A2 => n501, B1 => n489_port, B2 => 
                           n502, ZN => U3_U4_Z_7);
   U574 : OAI22_X1 port map( A1 => n531, A2 => n501, B1 => n491, B2 => n502, ZN
                           => U3_U4_Z_6);
   U575 : OAI22_X1 port map( A1 => n535, A2 => n501, B1 => n492, B2 => n502, ZN
                           => U3_U4_Z_5);
   U576 : OAI22_X1 port map( A1 => n539, A2 => n501, B1 => n493, B2 => n502, ZN
                           => U3_U4_Z_4);
   U577 : OAI22_X1 port map( A1 => n542, A2 => n501, B1 => n494, B2 => n502, ZN
                           => U3_U4_Z_3);
   U578 : OAI22_X1 port map( A1 => n545, A2 => n501, B1 => n495, B2 => n502, ZN
                           => U3_U4_Z_2);
   U579 : OAI22_X1 port map( A1 => n547, A2 => n501, B1 => n487_port, B2 => 
                           n502, ZN => U3_U4_Z_1);
   U580 : NOR2_X1 port map( A1 => n548, A2 => n485_port, ZN => U3_U4_Z_0);
   U581 : OAI22_X1 port map( A1 => n526, A2 => n503, B1 => n489_port, B2 => 
                           n504, ZN => U3_U3_Z_7);
   U582 : OAI22_X1 port map( A1 => n531, A2 => n503, B1 => n491, B2 => n504, ZN
                           => U3_U3_Z_6);
   U583 : OAI22_X1 port map( A1 => n535, A2 => n503, B1 => n492, B2 => n504, ZN
                           => U3_U3_Z_5);
   U584 : OAI22_X1 port map( A1 => n539, A2 => n503, B1 => n493, B2 => n504, ZN
                           => U3_U3_Z_4);
   U585 : OAI22_X1 port map( A1 => n542, A2 => n503, B1 => n494, B2 => n504, ZN
                           => U3_U3_Z_3);
   U586 : OAI22_X1 port map( A1 => n545, A2 => n503, B1 => n495, B2 => n504, ZN
                           => U3_U3_Z_2);
   U587 : OAI22_X1 port map( A1 => n547, A2 => n503, B1 => n487_port, B2 => 
                           n504, ZN => U3_U3_Z_1);
   U588 : NOR2_X1 port map( A1 => n548, A2 => n481, ZN => U3_U3_Z_0);
   U589 : OAI22_X1 port map( A1 => n526, A2 => n505, B1 => n489_port, B2 => 
                           n506, ZN => U3_U2_Z_7);
   U590 : OAI22_X1 port map( A1 => n531, A2 => n505, B1 => n491, B2 => n506, ZN
                           => U3_U2_Z_6);
   U591 : OAI22_X1 port map( A1 => n535, A2 => n505, B1 => n492, B2 => n506, ZN
                           => U3_U2_Z_5);
   U592 : OAI22_X1 port map( A1 => n539, A2 => n505, B1 => n493, B2 => n506, ZN
                           => U3_U2_Z_4);
   U593 : OAI22_X1 port map( A1 => n542, A2 => n505, B1 => n494, B2 => n506, ZN
                           => U3_U2_Z_3);
   U594 : OAI22_X1 port map( A1 => n545, A2 => n505, B1 => n495, B2 => n506, ZN
                           => U3_U2_Z_2);
   U595 : OAI22_X1 port map( A1 => n547, A2 => n505, B1 => n487_port, B2 => 
                           n506, ZN => U3_U2_Z_1);
   U596 : NOR2_X1 port map( A1 => n548, A2 => n486_port, ZN => U3_U2_Z_0);
   U597 : OAI22_X1 port map( A1 => n526, A2 => n507, B1 => n489_port, B2 => 
                           n508, ZN => U3_U1_Z_7);
   U598 : INV_X1 port map( A => Multiplicand_1(7), ZN => n526);
   U599 : OAI22_X1 port map( A1 => n531, A2 => n507, B1 => n491, B2 => n508, ZN
                           => U3_U1_Z_6);
   U600 : INV_X1 port map( A => Multiplicand_1(6), ZN => n531);
   U601 : OAI22_X1 port map( A1 => n535, A2 => n507, B1 => n492, B2 => n508, ZN
                           => U3_U1_Z_5);
   U602 : INV_X1 port map( A => Multiplicand_1(5), ZN => n535);
   U603 : OAI22_X1 port map( A1 => n539, A2 => n507, B1 => n493, B2 => n508, ZN
                           => U3_U1_Z_4);
   U604 : INV_X1 port map( A => Multiplicand_1(4), ZN => n539);
   U605 : OAI22_X1 port map( A1 => n542, A2 => n507, B1 => n494, B2 => n508, ZN
                           => U3_U1_Z_3);
   U606 : INV_X1 port map( A => Multiplicand_1(3), ZN => n542);
   U607 : OAI22_X1 port map( A1 => n545, A2 => n507, B1 => n495, B2 => n508, ZN
                           => U3_U1_Z_2);
   U608 : INV_X1 port map( A => Multiplicand_1(2), ZN => n545);
   U609 : OAI22_X1 port map( A1 => n547, A2 => n507, B1 => n487_port, B2 => 
                           n508, ZN => U3_U1_Z_1);
   U610 : INV_X1 port map( A => Multiplicand_N_2_1_port, ZN => n487_port);
   U611 : INV_X1 port map( A => Multiplicand_1(1), ZN => n547);
   U612 : NOR2_X1 port map( A1 => n548, A2 => n482_port, ZN => U3_U1_Z_0);
   U613 : INV_X1 port map( A => Multiplicand_1(0), ZN => n548);
   U614 : MUX2_X1 port map( A => N489, B => N472, S => n484_port, Z => N552);
   U615 : MUX2_X1 port map( A => N488, B => N472, S => n484_port, Z => N550);
   U616 : AND2_X1 port map( A1 => n497, A2 => n498, ZN => n484_port);
   U617 : NAND2_X1 port map( A1 => Multiplier_2(6), A2 => n509, ZN => n498);
   U618 : NAND2_X1 port map( A1 => Multiplier_2(5), A2 => n496, ZN => n497);
   U619 : INV_X1 port map( A => Multiplier_2(6), ZN => n496);
   U620 : MUX2_X1 port map( A => N421, B => N392, S => n480, Z => N472);
   U621 : MUX2_X1 port map( A => N420, B => N392, S => n480, Z => N470);
   U622 : MUX2_X1 port map( A => N418, B => n517, S => n480, Z => N468);
   U623 : MUX2_X1 port map( A => N327, B => N310, S => n485_port, Z => n517);
   U624 : MUX2_X1 port map( A => N417, B => n520, S => n480, Z => N467);
   U625 : MUX2_X1 port map( A => N326, B => N309, S => n485_port, Z => n520);
   U626 : MUX2_X1 port map( A => N416, B => n523, S => n480, Z => N466);
   U627 : MUX2_X1 port map( A => N325, B => N308, S => n485_port, Z => n523);
   U628 : MUX2_X1 port map( A => N415, B => n528, S => n480, Z => N465);
   U629 : AND2_X1 port map( A1 => n499, A2 => n500, ZN => n480);
   U630 : NAND2_X1 port map( A1 => Multiplier_2(5), A2 => n510, ZN => n500);
   U631 : NAND2_X1 port map( A1 => Multiplier_2(4), A2 => n509, ZN => n499);
   U632 : INV_X1 port map( A => Multiplier_2(5), ZN => n509);
   U633 : MUX2_X1 port map( A => N324, B => N307, S => n485_port, Z => n528);
   U634 : MUX2_X1 port map( A => N329, B => N312, S => n485_port, Z => N392);
   U635 : MUX2_X1 port map( A => N328, B => N312, S => n485_port, Z => N390);
   U636 : AND2_X1 port map( A1 => n501, A2 => n502, ZN => n485_port);
   U637 : NAND2_X1 port map( A1 => Multiplier_2(4), A2 => n511, ZN => n502);
   U638 : NAND2_X1 port map( A1 => Multiplier_2(3), A2 => n510, ZN => n501);
   U639 : INV_X1 port map( A => Multiplier_2(4), ZN => n510);
   U640 : MUX2_X1 port map( A => N249, B => n518, S => n481, Z => N312);
   U641 : MUX2_X1 port map( A => N248, B => n518, S => n481, Z => N310);
   U642 : MUX2_X1 port map( A => N169, B => N152, S => n486_port, Z => n518);
   U643 : MUX2_X1 port map( A => N247, B => n521, S => n481, Z => N309);
   U644 : MUX2_X1 port map( A => N168, B => N152, S => n486_port, Z => n521);
   U645 : MUX2_X1 port map( A => N246, B => n524, S => n481, Z => N308);
   U646 : MUX2_X1 port map( A => N167, B => N150, S => n486_port, Z => n524);
   U647 : MUX2_X1 port map( A => N245, B => n529, S => n481, Z => N307);
   U648 : MUX2_X1 port map( A => N166, B => N149, S => n486_port, Z => n529);
   U649 : MUX2_X1 port map( A => N244, B => n533, S => n481, Z => N306);
   U650 : MUX2_X1 port map( A => N165, B => N148, S => n486_port, Z => n533);
   U651 : MUX2_X1 port map( A => N243, B => n537, S => n481, Z => N305);
   U652 : AND2_X1 port map( A1 => n503, A2 => n504, ZN => n481);
   U653 : NAND2_X1 port map( A1 => Multiplier_2(3), A2 => n512, ZN => n504);
   U654 : NAND2_X1 port map( A1 => Multiplier_2(2), A2 => n511, ZN => n503);
   U655 : INV_X1 port map( A => Multiplier_2(3), ZN => n511);
   U656 : MUX2_X1 port map( A => N164, B => N147, S => n486_port, Z => n537);
   U657 : AND2_X1 port map( A1 => n505, A2 => n506, ZN => n486_port);
   U658 : NAND2_X1 port map( A1 => Multiplier_2(2), A2 => n513, ZN => n506);
   U659 : NAND2_X1 port map( A1 => Multiplier_2(1), A2 => n512, ZN => n505);
   U660 : INV_X1 port map( A => Multiplier_2(2), ZN => n512);
   U661 : MUX2_X1 port map( A => N89, B => n525, S => n482_port, Z => N152);
   U662 : MUX2_X1 port map( A => N88, B => n525, S => n482_port, Z => N150);
   U663 : NOR2_X1 port map( A1 => n483_port, A2 => n489_port, ZN => n525);
   U664 : INV_X1 port map( A => Multiplicand_N_2_7_port, ZN => n489_port);
   U665 : MUX2_X1 port map( A => N87, B => n530, S => n482_port, Z => N149);
   U666 : NOR2_X1 port map( A1 => n491, A2 => n483_port, ZN => n530);
   U667 : INV_X1 port map( A => Multiplicand_N_2_6_port, ZN => n491);
   U668 : MUX2_X1 port map( A => N86, B => n534, S => n482_port, Z => N148);
   U669 : NOR2_X1 port map( A1 => n492, A2 => n483_port, ZN => n534);
   U670 : INV_X1 port map( A => Multiplicand_N_2_5_port, ZN => n492);
   U671 : MUX2_X1 port map( A => N85, B => n538, S => n482_port, Z => N147);
   U672 : NOR2_X1 port map( A1 => n493, A2 => n483_port, ZN => n538);
   U673 : INV_X1 port map( A => Multiplicand_N_2_4_port, ZN => n493);
   U674 : MUX2_X1 port map( A => N84, B => n541, S => n482_port, Z => N146);
   U675 : NOR2_X1 port map( A1 => n494, A2 => n483_port, ZN => n541);
   U676 : INV_X1 port map( A => Multiplicand_N_2_3_port, ZN => n494);
   U677 : MUX2_X1 port map( A => N83, B => n544, S => n482_port, Z => N145);
   U678 : AND2_X1 port map( A1 => n507, A2 => n508, ZN => n482_port);
   U679 : NAND2_X1 port map( A1 => Multiplier_2(1), A2 => n483_port, ZN => n508
                           );
   U680 : NAND2_X1 port map( A1 => Multiplier_2(0), A2 => n513, ZN => n507);
   U681 : INV_X1 port map( A => Multiplier_2(1), ZN => n513);
   U682 : NOR2_X1 port map( A1 => n495, A2 => n483_port, ZN => n544);
   U683 : INV_X1 port map( A => Multiplier_2(0), ZN => n483_port);
   U684 : INV_X1 port map( A => Multiplicand_N_2_2_port, ZN => n495);

end SYN_Behavioral;
