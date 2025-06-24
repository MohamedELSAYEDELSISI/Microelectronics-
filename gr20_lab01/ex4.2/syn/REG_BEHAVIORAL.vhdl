
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_reg is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_reg;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_reg.all;

entity reg is

   port( D_R : in std_logic_vector (3 downto 0);  Q_R : out std_logic_vector (3
         downto 0);  R_R, CLK_R : in std_logic);

end reg;

architecture SYN_BE of reg is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n_1000, n_1001, n_1002, n_1003 : std_logic;

begin
   
   Q_R_reg_3_inst : DFFR_X1 port map( D => D_R(3), CK => CLK_R, RN => n1, Q => 
                           Q_R(3), QN => n_1000);
   Q_R_reg_2_inst : DFFR_X1 port map( D => D_R(2), CK => CLK_R, RN => n1, Q => 
                           Q_R(2), QN => n_1001);
   Q_R_reg_1_inst : DFFR_X1 port map( D => D_R(1), CK => CLK_R, RN => n1, Q => 
                           Q_R(1), QN => n_1002);
   Q_R_reg_0_inst : DFFR_X1 port map( D => D_R(0), CK => CLK_R, RN => n1, Q => 
                           Q_R(0), QN => n_1003);
   U4 : INV_X1 port map( A => R_R, ZN => n1);

end SYN_BE;
