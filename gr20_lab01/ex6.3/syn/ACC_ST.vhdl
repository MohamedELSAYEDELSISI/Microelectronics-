
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_Accumulator is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_Accumulator;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_63 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_63;

architecture SYN_PIPPO of FD_63 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1000 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1000);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_62 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_62;

architecture SYN_PIPPO of FD_62 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1001 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1001);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_61 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_61;

architecture SYN_PIPPO of FD_61 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1002 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1002);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_60 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_60;

architecture SYN_PIPPO of FD_60 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1003 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1003);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_59 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_59;

architecture SYN_PIPPO of FD_59 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1004 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1004);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_58 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_58;

architecture SYN_PIPPO of FD_58 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1005 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1005);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_57 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_57;

architecture SYN_PIPPO of FD_57 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1006 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1006);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_56 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_56;

architecture SYN_PIPPO of FD_56 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1007 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1007);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_55 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_55;

architecture SYN_PIPPO of FD_55 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1008 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1008);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_54 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_54;

architecture SYN_PIPPO of FD_54 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1009 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1009);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_53 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_53;

architecture SYN_PIPPO of FD_53 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1010 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1010);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_52 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_52;

architecture SYN_PIPPO of FD_52 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1011 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1011);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_51 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_51;

architecture SYN_PIPPO of FD_51 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1012 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1012);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_50 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_50;

architecture SYN_PIPPO of FD_50 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1013 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1013);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_49 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_49;

architecture SYN_PIPPO of FD_49 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1014 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1014);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_48 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_48;

architecture SYN_PIPPO of FD_48 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1015 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1015);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_47 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_47;

architecture SYN_PIPPO of FD_47 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1016 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1016);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_46 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_46;

architecture SYN_PIPPO of FD_46 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1017 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1017);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_45 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_45;

architecture SYN_PIPPO of FD_45 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1018 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1018);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_44 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_44;

architecture SYN_PIPPO of FD_44 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1019 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1019);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_43 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_43;

architecture SYN_PIPPO of FD_43 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1020 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1020);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_42 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_42;

architecture SYN_PIPPO of FD_42 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1021 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1021);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_41 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_41;

architecture SYN_PIPPO of FD_41 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1022 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1022);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_40 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_40;

architecture SYN_PIPPO of FD_40 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1023 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1023);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_39 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_39;

architecture SYN_PIPPO of FD_39 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1024 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1024);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_38 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_38;

architecture SYN_PIPPO of FD_38 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1025 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1025);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_37 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_37;

architecture SYN_PIPPO of FD_37 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1026 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1026);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_36 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_36;

architecture SYN_PIPPO of FD_36 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1027 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1027);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_35 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_35;

architecture SYN_PIPPO of FD_35 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1028 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1028);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_34 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_34;

architecture SYN_PIPPO of FD_34 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1029 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1029);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_33 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_33;

architecture SYN_PIPPO of FD_33 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1030 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1030);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_32 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_32;

architecture SYN_PIPPO of FD_32 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1031 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1031);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_31 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_31;

architecture SYN_PIPPO of FD_31 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1032 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1032);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_30 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_30;

architecture SYN_PIPPO of FD_30 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1033 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1033);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_29 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_29;

architecture SYN_PIPPO of FD_29 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1034 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1034);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_28 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_28;

architecture SYN_PIPPO of FD_28 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1035 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1035);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_27 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_27;

architecture SYN_PIPPO of FD_27 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1036 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1036);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_26 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_26;

architecture SYN_PIPPO of FD_26 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1037 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1037);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_25 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_25;

architecture SYN_PIPPO of FD_25 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1038 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1038);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_24 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_24;

architecture SYN_PIPPO of FD_24 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1039 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1039);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_23 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_23;

architecture SYN_PIPPO of FD_23 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1040 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1040);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_22 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_22;

architecture SYN_PIPPO of FD_22 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1041 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1041);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_21 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_21;

architecture SYN_PIPPO of FD_21 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1042 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1042);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_20 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_20;

architecture SYN_PIPPO of FD_20 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1043 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1043);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_19 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_19;

architecture SYN_PIPPO of FD_19 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1044 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1044);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_18 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_18;

architecture SYN_PIPPO of FD_18 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1045 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1045);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_17 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_17;

architecture SYN_PIPPO of FD_17 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1046 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1046);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_16 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_16;

architecture SYN_PIPPO of FD_16 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1047 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1047);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_15 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_15;

architecture SYN_PIPPO of FD_15 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1048 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1048);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_14 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_14;

architecture SYN_PIPPO of FD_14 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1049 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1049);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_13 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_13;

architecture SYN_PIPPO of FD_13 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1050 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1050);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_12 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_12;

architecture SYN_PIPPO of FD_12 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1051 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1051);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_11 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_11;

architecture SYN_PIPPO of FD_11 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1052 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1052);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_10 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_10;

architecture SYN_PIPPO of FD_10 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1053 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1053);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_9 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_9;

architecture SYN_PIPPO of FD_9 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1054 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1054);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_8 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_8;

architecture SYN_PIPPO of FD_8 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1055 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1055);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_7 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_7;

architecture SYN_PIPPO of FD_7 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1056 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1056);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_6 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_6;

architecture SYN_PIPPO of FD_6 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1057 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1057);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_5 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_5;

architecture SYN_PIPPO of FD_5 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1058 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1058);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_4 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_4;

architecture SYN_PIPPO of FD_4 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1059 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1059);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_3 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_3;

architecture SYN_PIPPO of FD_3 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1060 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1060);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_2 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_2;

architecture SYN_PIPPO of FD_2 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1061 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1061);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_1 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_1;

architecture SYN_PIPPO of FD_1 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1062 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1062);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_62 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_62;

architecture SYN_BEHAVIORAL of FA_62 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_61 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_61;

architecture SYN_BEHAVIORAL of FA_61 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_60 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_60;

architecture SYN_BEHAVIORAL of FA_60 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_59 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_59;

architecture SYN_BEHAVIORAL of FA_59 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_58 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_58;

architecture SYN_BEHAVIORAL of FA_58 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_57 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_57;

architecture SYN_BEHAVIORAL of FA_57 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_56 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_56;

architecture SYN_BEHAVIORAL of FA_56 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_55 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_55;

architecture SYN_BEHAVIORAL of FA_55 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_54 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_54;

architecture SYN_BEHAVIORAL of FA_54 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_53 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_53;

architecture SYN_BEHAVIORAL of FA_53 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_52 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_52;

architecture SYN_BEHAVIORAL of FA_52 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_51 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_51;

architecture SYN_BEHAVIORAL of FA_51 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_50 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_50;

architecture SYN_BEHAVIORAL of FA_50 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_49 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_49;

architecture SYN_BEHAVIORAL of FA_49 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_48 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_48;

architecture SYN_BEHAVIORAL of FA_48 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_47 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_47;

architecture SYN_BEHAVIORAL of FA_47 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_46 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_46;

architecture SYN_BEHAVIORAL of FA_46 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_45 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_45;

architecture SYN_BEHAVIORAL of FA_45 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_44 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_44;

architecture SYN_BEHAVIORAL of FA_44 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_43 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_43;

architecture SYN_BEHAVIORAL of FA_43 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_42 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_42;

architecture SYN_BEHAVIORAL of FA_42 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_41 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_41;

architecture SYN_BEHAVIORAL of FA_41 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_40 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_40;

architecture SYN_BEHAVIORAL of FA_40 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_39 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_39;

architecture SYN_BEHAVIORAL of FA_39 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_38 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_38;

architecture SYN_BEHAVIORAL of FA_38 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_37 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_37;

architecture SYN_BEHAVIORAL of FA_37 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_36 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_36;

architecture SYN_BEHAVIORAL of FA_36 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_35 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_35;

architecture SYN_BEHAVIORAL of FA_35 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_34 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_34;

architecture SYN_BEHAVIORAL of FA_34 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_33 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_33;

architecture SYN_BEHAVIORAL of FA_33 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_32 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_32;

architecture SYN_BEHAVIORAL of FA_32 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_31 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_31;

architecture SYN_BEHAVIORAL of FA_31 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_30 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_30;

architecture SYN_BEHAVIORAL of FA_30 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_29 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_29;

architecture SYN_BEHAVIORAL of FA_29 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_28 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_28;

architecture SYN_BEHAVIORAL of FA_28 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_27 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_27;

architecture SYN_BEHAVIORAL of FA_27 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_26 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_26;

architecture SYN_BEHAVIORAL of FA_26 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_25 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_25;

architecture SYN_BEHAVIORAL of FA_25 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_24 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_24;

architecture SYN_BEHAVIORAL of FA_24 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_23 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_23;

architecture SYN_BEHAVIORAL of FA_23 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_22 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_22;

architecture SYN_BEHAVIORAL of FA_22 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_21 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_21;

architecture SYN_BEHAVIORAL of FA_21 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_20 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_20;

architecture SYN_BEHAVIORAL of FA_20 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_19 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_19;

architecture SYN_BEHAVIORAL of FA_19 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_18 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_18;

architecture SYN_BEHAVIORAL of FA_18 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_17 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_17;

architecture SYN_BEHAVIORAL of FA_17 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_16 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_16;

architecture SYN_BEHAVIORAL of FA_16 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_15 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_15;

architecture SYN_BEHAVIORAL of FA_15 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_14 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_14;

architecture SYN_BEHAVIORAL of FA_14 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_13 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_13;

architecture SYN_BEHAVIORAL of FA_13 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_12 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_12;

architecture SYN_BEHAVIORAL of FA_12 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_11 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_11;

architecture SYN_BEHAVIORAL of FA_11 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_10 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_10;

architecture SYN_BEHAVIORAL of FA_10 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_9 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_9;

architecture SYN_BEHAVIORAL of FA_9 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_8 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_8;

architecture SYN_BEHAVIORAL of FA_8 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_7 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_7;

architecture SYN_BEHAVIORAL of FA_7 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_6 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_6;

architecture SYN_BEHAVIORAL of FA_6 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_5 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_5;

architecture SYN_BEHAVIORAL of FA_5 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_4 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_4;

architecture SYN_BEHAVIORAL of FA_4 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_3 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_3;

architecture SYN_BEHAVIORAL of FA_3 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_2 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_2;

architecture SYN_BEHAVIORAL of FA_2 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_1 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1;

architecture SYN_BEHAVIORAL of FA_1 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_191 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_191;

architecture SYN_ARCH2 of ND2_191 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_190 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_190;

architecture SYN_ARCH2 of ND2_190 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_189 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_189;

architecture SYN_ARCH2 of ND2_189 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_188 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_188;

architecture SYN_ARCH2 of ND2_188 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_187 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_187;

architecture SYN_ARCH2 of ND2_187 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_186 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_186;

architecture SYN_ARCH2 of ND2_186 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_185 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_185;

architecture SYN_ARCH2 of ND2_185 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_184 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_184;

architecture SYN_ARCH2 of ND2_184 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_183 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_183;

architecture SYN_ARCH2 of ND2_183 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_182 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_182;

architecture SYN_ARCH2 of ND2_182 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_181 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_181;

architecture SYN_ARCH2 of ND2_181 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_180 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_180;

architecture SYN_ARCH2 of ND2_180 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_179 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_179;

architecture SYN_ARCH2 of ND2_179 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_178 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_178;

architecture SYN_ARCH2 of ND2_178 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_177 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_177;

architecture SYN_ARCH2 of ND2_177 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_176 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_176;

architecture SYN_ARCH2 of ND2_176 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_175 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_175;

architecture SYN_ARCH2 of ND2_175 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_174 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_174;

architecture SYN_ARCH2 of ND2_174 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_173 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_173;

architecture SYN_ARCH2 of ND2_173 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_172 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_172;

architecture SYN_ARCH2 of ND2_172 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_171 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_171;

architecture SYN_ARCH2 of ND2_171 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_170 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_170;

architecture SYN_ARCH2 of ND2_170 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_169 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_169;

architecture SYN_ARCH2 of ND2_169 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_168 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_168;

architecture SYN_ARCH2 of ND2_168 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_167 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_167;

architecture SYN_ARCH2 of ND2_167 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_166 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_166;

architecture SYN_ARCH2 of ND2_166 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_165 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_165;

architecture SYN_ARCH2 of ND2_165 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_164 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_164;

architecture SYN_ARCH2 of ND2_164 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_163 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_163;

architecture SYN_ARCH2 of ND2_163 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_162 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_162;

architecture SYN_ARCH2 of ND2_162 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_161 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_161;

architecture SYN_ARCH2 of ND2_161 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_160 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_160;

architecture SYN_ARCH2 of ND2_160 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_159 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_159;

architecture SYN_ARCH2 of ND2_159 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_158 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_158;

architecture SYN_ARCH2 of ND2_158 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_157 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_157;

architecture SYN_ARCH2 of ND2_157 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_156 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_156;

architecture SYN_ARCH2 of ND2_156 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_155 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_155;

architecture SYN_ARCH2 of ND2_155 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_154 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_154;

architecture SYN_ARCH2 of ND2_154 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_153 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_153;

architecture SYN_ARCH2 of ND2_153 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_152 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_152;

architecture SYN_ARCH2 of ND2_152 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_151 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_151;

architecture SYN_ARCH2 of ND2_151 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_150 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_150;

architecture SYN_ARCH2 of ND2_150 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_149 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_149;

architecture SYN_ARCH2 of ND2_149 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_148 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_148;

architecture SYN_ARCH2 of ND2_148 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_147 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_147;

architecture SYN_ARCH2 of ND2_147 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_146 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_146;

architecture SYN_ARCH2 of ND2_146 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_145 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_145;

architecture SYN_ARCH2 of ND2_145 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_144 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_144;

architecture SYN_ARCH2 of ND2_144 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_143 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_143;

architecture SYN_ARCH2 of ND2_143 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_142 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_142;

architecture SYN_ARCH2 of ND2_142 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_141 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_141;

architecture SYN_ARCH2 of ND2_141 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_140 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_140;

architecture SYN_ARCH2 of ND2_140 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_139 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_139;

architecture SYN_ARCH2 of ND2_139 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_138 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_138;

architecture SYN_ARCH2 of ND2_138 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_137 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_137;

architecture SYN_ARCH2 of ND2_137 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_136 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_136;

architecture SYN_ARCH2 of ND2_136 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_135 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_135;

architecture SYN_ARCH2 of ND2_135 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_134 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_134;

architecture SYN_ARCH2 of ND2_134 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_133 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_133;

architecture SYN_ARCH2 of ND2_133 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_132 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_132;

architecture SYN_ARCH2 of ND2_132 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_131 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_131;

architecture SYN_ARCH2 of ND2_131 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_130 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_130;

architecture SYN_ARCH2 of ND2_130 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_129 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_129;

architecture SYN_ARCH2 of ND2_129 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_128 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_128;

architecture SYN_ARCH2 of ND2_128 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_127 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_127;

architecture SYN_ARCH2 of ND2_127 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_126 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_126;

architecture SYN_ARCH2 of ND2_126 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_125 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_125;

architecture SYN_ARCH2 of ND2_125 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_124 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_124;

architecture SYN_ARCH2 of ND2_124 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_123 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_123;

architecture SYN_ARCH2 of ND2_123 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_122 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_122;

architecture SYN_ARCH2 of ND2_122 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_121 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_121;

architecture SYN_ARCH2 of ND2_121 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_120 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_120;

architecture SYN_ARCH2 of ND2_120 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_119 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_119;

architecture SYN_ARCH2 of ND2_119 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_118 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_118;

architecture SYN_ARCH2 of ND2_118 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_117 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_117;

architecture SYN_ARCH2 of ND2_117 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_116 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_116;

architecture SYN_ARCH2 of ND2_116 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_115 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_115;

architecture SYN_ARCH2 of ND2_115 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_114 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_114;

architecture SYN_ARCH2 of ND2_114 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_113 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_113;

architecture SYN_ARCH2 of ND2_113 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_112 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_112;

architecture SYN_ARCH2 of ND2_112 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_111 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_111;

architecture SYN_ARCH2 of ND2_111 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_110 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_110;

architecture SYN_ARCH2 of ND2_110 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_109 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_109;

architecture SYN_ARCH2 of ND2_109 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_108 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_108;

architecture SYN_ARCH2 of ND2_108 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_107 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_107;

architecture SYN_ARCH2 of ND2_107 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_106 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_106;

architecture SYN_ARCH2 of ND2_106 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_105 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_105;

architecture SYN_ARCH2 of ND2_105 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_104 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_104;

architecture SYN_ARCH2 of ND2_104 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_103 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_103;

architecture SYN_ARCH2 of ND2_103 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_102 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_102;

architecture SYN_ARCH2 of ND2_102 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_101 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_101;

architecture SYN_ARCH2 of ND2_101 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_100 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_100;

architecture SYN_ARCH2 of ND2_100 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_99 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_99;

architecture SYN_ARCH2 of ND2_99 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_98 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_98;

architecture SYN_ARCH2 of ND2_98 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_97 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_97;

architecture SYN_ARCH2 of ND2_97 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_96 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_96;

architecture SYN_ARCH2 of ND2_96 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_95 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_95;

architecture SYN_ARCH2 of ND2_95 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_94 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_94;

architecture SYN_ARCH2 of ND2_94 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_93 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_93;

architecture SYN_ARCH2 of ND2_93 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_92 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_92;

architecture SYN_ARCH2 of ND2_92 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_91 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_91;

architecture SYN_ARCH2 of ND2_91 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_90 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_90;

architecture SYN_ARCH2 of ND2_90 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_89 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_89;

architecture SYN_ARCH2 of ND2_89 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_88 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_88;

architecture SYN_ARCH2 of ND2_88 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_87 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_87;

architecture SYN_ARCH2 of ND2_87 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_86 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_86;

architecture SYN_ARCH2 of ND2_86 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_85 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_85;

architecture SYN_ARCH2 of ND2_85 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_84 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_84;

architecture SYN_ARCH2 of ND2_84 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_83 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_83;

architecture SYN_ARCH2 of ND2_83 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_82 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_82;

architecture SYN_ARCH2 of ND2_82 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_81 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_81;

architecture SYN_ARCH2 of ND2_81 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_80 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_80;

architecture SYN_ARCH2 of ND2_80 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_79 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_79;

architecture SYN_ARCH2 of ND2_79 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_78 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_78;

architecture SYN_ARCH2 of ND2_78 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_77 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_77;

architecture SYN_ARCH2 of ND2_77 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_76 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_76;

architecture SYN_ARCH2 of ND2_76 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_75 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_75;

architecture SYN_ARCH2 of ND2_75 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_74 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_74;

architecture SYN_ARCH2 of ND2_74 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_73 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_73;

architecture SYN_ARCH2 of ND2_73 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_72 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_72;

architecture SYN_ARCH2 of ND2_72 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_71 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_71;

architecture SYN_ARCH2 of ND2_71 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_70 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_70;

architecture SYN_ARCH2 of ND2_70 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_69 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_69;

architecture SYN_ARCH2 of ND2_69 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_68 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_68;

architecture SYN_ARCH2 of ND2_68 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_67 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_67;

architecture SYN_ARCH2 of ND2_67 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_66 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_66;

architecture SYN_ARCH2 of ND2_66 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_65 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_65;

architecture SYN_ARCH2 of ND2_65 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_64 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_64;

architecture SYN_ARCH2 of ND2_64 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_63 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_63;

architecture SYN_ARCH2 of ND2_63 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_62 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_62;

architecture SYN_ARCH2 of ND2_62 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_61 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_61;

architecture SYN_ARCH2 of ND2_61 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_60 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_60;

architecture SYN_ARCH2 of ND2_60 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_59 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_59;

architecture SYN_ARCH2 of ND2_59 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_58 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_58;

architecture SYN_ARCH2 of ND2_58 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_57 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_57;

architecture SYN_ARCH2 of ND2_57 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_56 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_56;

architecture SYN_ARCH2 of ND2_56 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_55 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_55;

architecture SYN_ARCH2 of ND2_55 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_54 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_54;

architecture SYN_ARCH2 of ND2_54 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_53 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_53;

architecture SYN_ARCH2 of ND2_53 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_52 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_52;

architecture SYN_ARCH2 of ND2_52 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_51 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_51;

architecture SYN_ARCH2 of ND2_51 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_50 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_50;

architecture SYN_ARCH2 of ND2_50 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_49 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_49;

architecture SYN_ARCH2 of ND2_49 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_48 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_48;

architecture SYN_ARCH2 of ND2_48 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_47 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_47;

architecture SYN_ARCH2 of ND2_47 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_46 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_46;

architecture SYN_ARCH2 of ND2_46 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_45 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_45;

architecture SYN_ARCH2 of ND2_45 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_44 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_44;

architecture SYN_ARCH2 of ND2_44 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_43 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_43;

architecture SYN_ARCH2 of ND2_43 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_42 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_42;

architecture SYN_ARCH2 of ND2_42 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_41 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_41;

architecture SYN_ARCH2 of ND2_41 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_40 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_40;

architecture SYN_ARCH2 of ND2_40 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_39 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_39;

architecture SYN_ARCH2 of ND2_39 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_38 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_38;

architecture SYN_ARCH2 of ND2_38 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_37 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_37;

architecture SYN_ARCH2 of ND2_37 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_36 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_36;

architecture SYN_ARCH2 of ND2_36 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_35 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_35;

architecture SYN_ARCH2 of ND2_35 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_34 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_34;

architecture SYN_ARCH2 of ND2_34 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_33 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_33;

architecture SYN_ARCH2 of ND2_33 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_32 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_32;

architecture SYN_ARCH2 of ND2_32 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_31 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_31;

architecture SYN_ARCH2 of ND2_31 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_30 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_30;

architecture SYN_ARCH2 of ND2_30 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_29 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_29;

architecture SYN_ARCH2 of ND2_29 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_28 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_28;

architecture SYN_ARCH2 of ND2_28 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_27 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_27;

architecture SYN_ARCH2 of ND2_27 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_26 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_26;

architecture SYN_ARCH2 of ND2_26 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_25 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_25;

architecture SYN_ARCH2 of ND2_25 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_24 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_24;

architecture SYN_ARCH2 of ND2_24 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_23 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_23;

architecture SYN_ARCH2 of ND2_23 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_22 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_22;

architecture SYN_ARCH2 of ND2_22 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_21 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_21;

architecture SYN_ARCH2 of ND2_21 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_20 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_20;

architecture SYN_ARCH2 of ND2_20 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_19 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_19;

architecture SYN_ARCH2 of ND2_19 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_18 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_18;

architecture SYN_ARCH2 of ND2_18 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_17 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_17;

architecture SYN_ARCH2 of ND2_17 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_16 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_16;

architecture SYN_ARCH2 of ND2_16 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_15 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_15;

architecture SYN_ARCH2 of ND2_15 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_14 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_14;

architecture SYN_ARCH2 of ND2_14 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_13 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_13;

architecture SYN_ARCH2 of ND2_13 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_12 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_12;

architecture SYN_ARCH2 of ND2_12 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_11 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_11;

architecture SYN_ARCH2 of ND2_11 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_10 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_10;

architecture SYN_ARCH2 of ND2_10 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_9 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_9;

architecture SYN_ARCH2 of ND2_9 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_8 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_8;

architecture SYN_ARCH2 of ND2_8 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_7 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_7;

architecture SYN_ARCH2 of ND2_7 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_6 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_6;

architecture SYN_ARCH2 of ND2_6 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_5 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_5;

architecture SYN_ARCH2 of ND2_5 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_4 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_4;

architecture SYN_ARCH2 of ND2_4 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_3 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_3;

architecture SYN_ARCH2 of ND2_3 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_2 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_2;

architecture SYN_ARCH2 of ND2_2 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_1 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_1;

architecture SYN_ARCH2 of ND2_1 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FD_0 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_0;

architecture SYN_PIPPO of FD_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, n2, n_1063 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => N3, CK => CK, Q => Q, QN => n_1063);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n2, ZN => N3);
   U4 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_63 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_63;

architecture SYN_BEHAVIORAL of FA_63 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U2 : INV_X1 port map( A => n5, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity FA_0 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_0;

architecture SYN_BEHAVIORAL of FA_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity ND2_0 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_0;

architecture SYN_ARCH2 of ND2_0 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity IV is

   port( A : in std_logic;  Y : out std_logic);

end IV;

architecture SYN_BEHAVIORAL of IV is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity reg is

   port( D_R : in std_logic_vector (63 downto 0);  Q_R : out std_logic_vector 
         (63 downto 0);  R_R, CLK_R : in std_logic);

end reg;

architecture SYN_ST of reg is

   component FD_1
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_2
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_3
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_4
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_5
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_6
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_7
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_8
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_9
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_10
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_11
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_12
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_13
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_14
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_15
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_16
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_17
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_18
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_19
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_20
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_21
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_22
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_23
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_24
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_25
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_26
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_27
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_28
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_29
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_30
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_31
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_32
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_33
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_34
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_35
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_36
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_37
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_38
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_39
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_40
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_41
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_42
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_43
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_44
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_45
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_46
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_47
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_48
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_49
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_50
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_51
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_52
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_53
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_54
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_55
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_56
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_57
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_58
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_59
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_60
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_61
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_62
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_63
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_0
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;

begin
   
   U2_0 : FD_0 port map( D => D_R(0), CK => CLK_R, RESET => R_R, Q => Q_R(0));
   U2_1 : FD_63 port map( D => D_R(1), CK => CLK_R, RESET => R_R, Q => Q_R(1));
   U2_2 : FD_62 port map( D => D_R(2), CK => CLK_R, RESET => R_R, Q => Q_R(2));
   U2_3 : FD_61 port map( D => D_R(3), CK => CLK_R, RESET => R_R, Q => Q_R(3));
   U2_4 : FD_60 port map( D => D_R(4), CK => CLK_R, RESET => R_R, Q => Q_R(4));
   U2_5 : FD_59 port map( D => D_R(5), CK => CLK_R, RESET => R_R, Q => Q_R(5));
   U2_6 : FD_58 port map( D => D_R(6), CK => CLK_R, RESET => R_R, Q => Q_R(6));
   U2_7 : FD_57 port map( D => D_R(7), CK => CLK_R, RESET => R_R, Q => Q_R(7));
   U2_8 : FD_56 port map( D => D_R(8), CK => CLK_R, RESET => R_R, Q => Q_R(8));
   U2_9 : FD_55 port map( D => D_R(9), CK => CLK_R, RESET => R_R, Q => Q_R(9));
   U2_10 : FD_54 port map( D => D_R(10), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(10));
   U2_11 : FD_53 port map( D => D_R(11), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(11));
   U2_12 : FD_52 port map( D => D_R(12), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(12));
   U2_13 : FD_51 port map( D => D_R(13), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(13));
   U2_14 : FD_50 port map( D => D_R(14), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(14));
   U2_15 : FD_49 port map( D => D_R(15), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(15));
   U2_16 : FD_48 port map( D => D_R(16), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(16));
   U2_17 : FD_47 port map( D => D_R(17), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(17));
   U2_18 : FD_46 port map( D => D_R(18), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(18));
   U2_19 : FD_45 port map( D => D_R(19), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(19));
   U2_20 : FD_44 port map( D => D_R(20), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(20));
   U2_21 : FD_43 port map( D => D_R(21), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(21));
   U2_22 : FD_42 port map( D => D_R(22), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(22));
   U2_23 : FD_41 port map( D => D_R(23), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(23));
   U2_24 : FD_40 port map( D => D_R(24), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(24));
   U2_25 : FD_39 port map( D => D_R(25), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(25));
   U2_26 : FD_38 port map( D => D_R(26), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(26));
   U2_27 : FD_37 port map( D => D_R(27), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(27));
   U2_28 : FD_36 port map( D => D_R(28), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(28));
   U2_29 : FD_35 port map( D => D_R(29), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(29));
   U2_30 : FD_34 port map( D => D_R(30), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(30));
   U2_31 : FD_33 port map( D => D_R(31), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(31));
   U2_32 : FD_32 port map( D => D_R(32), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(32));
   U2_33 : FD_31 port map( D => D_R(33), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(33));
   U2_34 : FD_30 port map( D => D_R(34), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(34));
   U2_35 : FD_29 port map( D => D_R(35), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(35));
   U2_36 : FD_28 port map( D => D_R(36), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(36));
   U2_37 : FD_27 port map( D => D_R(37), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(37));
   U2_38 : FD_26 port map( D => D_R(38), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(38));
   U2_39 : FD_25 port map( D => D_R(39), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(39));
   U2_40 : FD_24 port map( D => D_R(40), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(40));
   U2_41 : FD_23 port map( D => D_R(41), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(41));
   U2_42 : FD_22 port map( D => D_R(42), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(42));
   U2_43 : FD_21 port map( D => D_R(43), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(43));
   U2_44 : FD_20 port map( D => D_R(44), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(44));
   U2_45 : FD_19 port map( D => D_R(45), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(45));
   U2_46 : FD_18 port map( D => D_R(46), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(46));
   U2_47 : FD_17 port map( D => D_R(47), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(47));
   U2_48 : FD_16 port map( D => D_R(48), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(48));
   U2_49 : FD_15 port map( D => D_R(49), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(49));
   U2_50 : FD_14 port map( D => D_R(50), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(50));
   U2_51 : FD_13 port map( D => D_R(51), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(51));
   U2_52 : FD_12 port map( D => D_R(52), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(52));
   U2_53 : FD_11 port map( D => D_R(53), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(53));
   U2_54 : FD_10 port map( D => D_R(54), CK => CLK_R, RESET => R_R, Q => 
                           Q_R(54));
   U2_55 : FD_9 port map( D => D_R(55), CK => CLK_R, RESET => R_R, Q => Q_R(55)
                           );
   U2_56 : FD_8 port map( D => D_R(56), CK => CLK_R, RESET => R_R, Q => Q_R(56)
                           );
   U2_57 : FD_7 port map( D => D_R(57), CK => CLK_R, RESET => R_R, Q => Q_R(57)
                           );
   U2_58 : FD_6 port map( D => D_R(58), CK => CLK_R, RESET => R_R, Q => Q_R(58)
                           );
   U2_59 : FD_5 port map( D => D_R(59), CK => CLK_R, RESET => R_R, Q => Q_R(59)
                           );
   U2_60 : FD_4 port map( D => D_R(60), CK => CLK_R, RESET => R_R, Q => Q_R(60)
                           );
   U2_61 : FD_3 port map( D => D_R(61), CK => CLK_R, RESET => R_R, Q => Q_R(61)
                           );
   U2_62 : FD_2 port map( D => D_R(62), CK => CLK_R, RESET => R_R, Q => Q_R(62)
                           );
   U2_63 : FD_1 port map( D => D_R(63), CK => CLK_R, RESET => R_R, Q => Q_R(63)
                           );

end SYN_ST;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity RCA is

   port( A, B : in std_logic_vector (63 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (63 downto 0);  Co : out std_logic);

end RCA;

architecture SYN_STRUCTURAL of RCA is

   component FA_1
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_2
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_3
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_4
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_5
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_6
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_7
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_8
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_9
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_10
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_11
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_12
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_13
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_14
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_15
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_16
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_17
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_18
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_19
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_20
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_21
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_22
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_23
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_24
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_25
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_26
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_27
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_28
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_29
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_30
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_31
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_32
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_33
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_34
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_35
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_36
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_37
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_38
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_39
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_40
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_41
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_42
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_43
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_44
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_45
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_46
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_47
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_48
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_49
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_50
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_51
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_52
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_53
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_54
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_55
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_56
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_57
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_58
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_59
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_60
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_61
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_62
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_63
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_0
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_63_port, CTMP_62_port, CTMP_61_port, CTMP_60_port, CTMP_59_port,
      CTMP_58_port, CTMP_57_port, CTMP_56_port, CTMP_55_port, CTMP_54_port, 
      CTMP_53_port, CTMP_52_port, CTMP_51_port, CTMP_50_port, CTMP_49_port, 
      CTMP_48_port, CTMP_47_port, CTMP_46_port, CTMP_45_port, CTMP_44_port, 
      CTMP_43_port, CTMP_42_port, CTMP_41_port, CTMP_40_port, CTMP_39_port, 
      CTMP_38_port, CTMP_37_port, CTMP_36_port, CTMP_35_port, CTMP_34_port, 
      CTMP_33_port, CTMP_32_port, CTMP_31_port, CTMP_30_port, CTMP_29_port, 
      CTMP_28_port, CTMP_27_port, CTMP_26_port, CTMP_25_port, CTMP_24_port, 
      CTMP_23_port, CTMP_22_port, CTMP_21_port, CTMP_20_port, CTMP_19_port, 
      CTMP_18_port, CTMP_17_port, CTMP_16_port, CTMP_15_port, CTMP_14_port, 
      CTMP_13_port, CTMP_12_port, CTMP_11_port, CTMP_10_port, CTMP_9_port, 
      CTMP_8_port, CTMP_7_port, CTMP_6_port, CTMP_5_port, CTMP_4_port, 
      CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_0 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_63 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_62 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_61 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => CTMP_4_port);
   FAI_5 : FA_60 port map( A => A(4), B => B(4), Ci => CTMP_4_port, S => S(4), 
                           Co => CTMP_5_port);
   FAI_6 : FA_59 port map( A => A(5), B => B(5), Ci => CTMP_5_port, S => S(5), 
                           Co => CTMP_6_port);
   FAI_7 : FA_58 port map( A => A(6), B => B(6), Ci => CTMP_6_port, S => S(6), 
                           Co => CTMP_7_port);
   FAI_8 : FA_57 port map( A => A(7), B => B(7), Ci => CTMP_7_port, S => S(7), 
                           Co => CTMP_8_port);
   FAI_9 : FA_56 port map( A => A(8), B => B(8), Ci => CTMP_8_port, S => S(8), 
                           Co => CTMP_9_port);
   FAI_10 : FA_55 port map( A => A(9), B => B(9), Ci => CTMP_9_port, S => S(9),
                           Co => CTMP_10_port);
   FAI_11 : FA_54 port map( A => A(10), B => B(10), Ci => CTMP_10_port, S => 
                           S(10), Co => CTMP_11_port);
   FAI_12 : FA_53 port map( A => A(11), B => B(11), Ci => CTMP_11_port, S => 
                           S(11), Co => CTMP_12_port);
   FAI_13 : FA_52 port map( A => A(12), B => B(12), Ci => CTMP_12_port, S => 
                           S(12), Co => CTMP_13_port);
   FAI_14 : FA_51 port map( A => A(13), B => B(13), Ci => CTMP_13_port, S => 
                           S(13), Co => CTMP_14_port);
   FAI_15 : FA_50 port map( A => A(14), B => B(14), Ci => CTMP_14_port, S => 
                           S(14), Co => CTMP_15_port);
   FAI_16 : FA_49 port map( A => A(15), B => B(15), Ci => CTMP_15_port, S => 
                           S(15), Co => CTMP_16_port);
   FAI_17 : FA_48 port map( A => A(16), B => B(16), Ci => CTMP_16_port, S => 
                           S(16), Co => CTMP_17_port);
   FAI_18 : FA_47 port map( A => A(17), B => B(17), Ci => CTMP_17_port, S => 
                           S(17), Co => CTMP_18_port);
   FAI_19 : FA_46 port map( A => A(18), B => B(18), Ci => CTMP_18_port, S => 
                           S(18), Co => CTMP_19_port);
   FAI_20 : FA_45 port map( A => A(19), B => B(19), Ci => CTMP_19_port, S => 
                           S(19), Co => CTMP_20_port);
   FAI_21 : FA_44 port map( A => A(20), B => B(20), Ci => CTMP_20_port, S => 
                           S(20), Co => CTMP_21_port);
   FAI_22 : FA_43 port map( A => A(21), B => B(21), Ci => CTMP_21_port, S => 
                           S(21), Co => CTMP_22_port);
   FAI_23 : FA_42 port map( A => A(22), B => B(22), Ci => CTMP_22_port, S => 
                           S(22), Co => CTMP_23_port);
   FAI_24 : FA_41 port map( A => A(23), B => B(23), Ci => CTMP_23_port, S => 
                           S(23), Co => CTMP_24_port);
   FAI_25 : FA_40 port map( A => A(24), B => B(24), Ci => CTMP_24_port, S => 
                           S(24), Co => CTMP_25_port);
   FAI_26 : FA_39 port map( A => A(25), B => B(25), Ci => CTMP_25_port, S => 
                           S(25), Co => CTMP_26_port);
   FAI_27 : FA_38 port map( A => A(26), B => B(26), Ci => CTMP_26_port, S => 
                           S(26), Co => CTMP_27_port);
   FAI_28 : FA_37 port map( A => A(27), B => B(27), Ci => CTMP_27_port, S => 
                           S(27), Co => CTMP_28_port);
   FAI_29 : FA_36 port map( A => A(28), B => B(28), Ci => CTMP_28_port, S => 
                           S(28), Co => CTMP_29_port);
   FAI_30 : FA_35 port map( A => A(29), B => B(29), Ci => CTMP_29_port, S => 
                           S(29), Co => CTMP_30_port);
   FAI_31 : FA_34 port map( A => A(30), B => B(30), Ci => CTMP_30_port, S => 
                           S(30), Co => CTMP_31_port);
   FAI_32 : FA_33 port map( A => A(31), B => B(31), Ci => CTMP_31_port, S => 
                           S(31), Co => CTMP_32_port);
   FAI_33 : FA_32 port map( A => A(32), B => B(32), Ci => CTMP_32_port, S => 
                           S(32), Co => CTMP_33_port);
   FAI_34 : FA_31 port map( A => A(33), B => B(33), Ci => CTMP_33_port, S => 
                           S(33), Co => CTMP_34_port);
   FAI_35 : FA_30 port map( A => A(34), B => B(34), Ci => CTMP_34_port, S => 
                           S(34), Co => CTMP_35_port);
   FAI_36 : FA_29 port map( A => A(35), B => B(35), Ci => CTMP_35_port, S => 
                           S(35), Co => CTMP_36_port);
   FAI_37 : FA_28 port map( A => A(36), B => B(36), Ci => CTMP_36_port, S => 
                           S(36), Co => CTMP_37_port);
   FAI_38 : FA_27 port map( A => A(37), B => B(37), Ci => CTMP_37_port, S => 
                           S(37), Co => CTMP_38_port);
   FAI_39 : FA_26 port map( A => A(38), B => B(38), Ci => CTMP_38_port, S => 
                           S(38), Co => CTMP_39_port);
   FAI_40 : FA_25 port map( A => A(39), B => B(39), Ci => CTMP_39_port, S => 
                           S(39), Co => CTMP_40_port);
   FAI_41 : FA_24 port map( A => A(40), B => B(40), Ci => CTMP_40_port, S => 
                           S(40), Co => CTMP_41_port);
   FAI_42 : FA_23 port map( A => A(41), B => B(41), Ci => CTMP_41_port, S => 
                           S(41), Co => CTMP_42_port);
   FAI_43 : FA_22 port map( A => A(42), B => B(42), Ci => CTMP_42_port, S => 
                           S(42), Co => CTMP_43_port);
   FAI_44 : FA_21 port map( A => A(43), B => B(43), Ci => CTMP_43_port, S => 
                           S(43), Co => CTMP_44_port);
   FAI_45 : FA_20 port map( A => A(44), B => B(44), Ci => CTMP_44_port, S => 
                           S(44), Co => CTMP_45_port);
   FAI_46 : FA_19 port map( A => A(45), B => B(45), Ci => CTMP_45_port, S => 
                           S(45), Co => CTMP_46_port);
   FAI_47 : FA_18 port map( A => A(46), B => B(46), Ci => CTMP_46_port, S => 
                           S(46), Co => CTMP_47_port);
   FAI_48 : FA_17 port map( A => A(47), B => B(47), Ci => CTMP_47_port, S => 
                           S(47), Co => CTMP_48_port);
   FAI_49 : FA_16 port map( A => A(48), B => B(48), Ci => CTMP_48_port, S => 
                           S(48), Co => CTMP_49_port);
   FAI_50 : FA_15 port map( A => A(49), B => B(49), Ci => CTMP_49_port, S => 
                           S(49), Co => CTMP_50_port);
   FAI_51 : FA_14 port map( A => A(50), B => B(50), Ci => CTMP_50_port, S => 
                           S(50), Co => CTMP_51_port);
   FAI_52 : FA_13 port map( A => A(51), B => B(51), Ci => CTMP_51_port, S => 
                           S(51), Co => CTMP_52_port);
   FAI_53 : FA_12 port map( A => A(52), B => B(52), Ci => CTMP_52_port, S => 
                           S(52), Co => CTMP_53_port);
   FAI_54 : FA_11 port map( A => A(53), B => B(53), Ci => CTMP_53_port, S => 
                           S(53), Co => CTMP_54_port);
   FAI_55 : FA_10 port map( A => A(54), B => B(54), Ci => CTMP_54_port, S => 
                           S(54), Co => CTMP_55_port);
   FAI_56 : FA_9 port map( A => A(55), B => B(55), Ci => CTMP_55_port, S => 
                           S(55), Co => CTMP_56_port);
   FAI_57 : FA_8 port map( A => A(56), B => B(56), Ci => CTMP_56_port, S => 
                           S(56), Co => CTMP_57_port);
   FAI_58 : FA_7 port map( A => A(57), B => B(57), Ci => CTMP_57_port, S => 
                           S(57), Co => CTMP_58_port);
   FAI_59 : FA_6 port map( A => A(58), B => B(58), Ci => CTMP_58_port, S => 
                           S(58), Co => CTMP_59_port);
   FAI_60 : FA_5 port map( A => A(59), B => B(59), Ci => CTMP_59_port, S => 
                           S(59), Co => CTMP_60_port);
   FAI_61 : FA_4 port map( A => A(60), B => B(60), Ci => CTMP_60_port, S => 
                           S(60), Co => CTMP_61_port);
   FAI_62 : FA_3 port map( A => A(61), B => B(61), Ci => CTMP_61_port, S => 
                           S(61), Co => CTMP_62_port);
   FAI_63 : FA_2 port map( A => A(62), B => B(62), Ci => CTMP_62_port, S => 
                           S(62), Co => CTMP_63_port);
   FAI_64 : FA_1 port map( A => A(63), B => B(63), Ci => CTMP_63_port, S => 
                           S(63), Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity MUX21 is

   port( A, B : in std_logic_vector (63 downto 0);  SEL : in std_logic;  Y : 
         out std_logic_vector (63 downto 0));

end MUX21;

architecture SYN_STRUCTURAL of MUX21 is

   component BUF_X8
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component ND2_1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_3
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_4
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_5
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_6
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_7
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_8
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_9
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_10
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_11
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_12
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_13
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_14
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_15
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_16
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_17
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_18
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_19
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_20
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_21
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_22
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_23
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_24
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_25
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_26
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_27
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_28
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_29
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_30
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_31
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_32
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_33
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_34
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_35
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_36
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_37
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_38
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_39
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_40
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_41
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_42
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_43
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_44
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_45
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_46
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_47
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_48
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_49
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_50
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_51
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_52
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_53
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_54
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_55
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_56
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_57
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_58
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_59
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_60
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_61
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_62
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_63
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_64
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_65
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_66
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_67
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_68
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_69
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_70
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_71
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_72
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_73
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_74
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_75
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_76
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_77
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_78
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_79
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_80
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_81
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_82
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_83
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_84
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_85
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_86
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_87
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_88
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_89
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_90
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_91
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_92
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_93
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_94
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_95
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_96
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_97
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_98
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_99
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_100
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_101
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_102
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_103
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_104
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_105
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_106
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_107
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_108
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_109
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_110
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_111
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_112
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_113
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_114
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_115
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_116
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_117
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_118
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_119
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_120
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_121
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_122
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_123
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_124
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_125
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_126
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_127
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_128
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_129
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_130
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_131
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_132
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_133
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_134
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_135
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_136
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_137
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_138
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_139
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_140
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_141
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_142
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_143
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_144
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_145
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_146
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_147
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_148
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_149
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_150
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_151
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_152
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_153
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_154
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_155
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_156
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_157
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_158
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_159
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_160
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_161
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_162
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_163
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_164
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_165
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_166
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_167
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_168
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_169
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_170
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_171
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_172
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_173
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_174
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_175
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_176
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_177
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_178
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_179
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_180
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_181
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_182
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_183
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_184
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_185
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_186
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_187
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_188
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_189
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_190
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_191
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_0
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal A_S_63_port, A_S_62_port, A_S_61_port, A_S_60_port, A_S_59_port, 
      A_S_58_port, A_S_57_port, A_S_56_port, A_S_55_port, A_S_54_port, 
      A_S_53_port, A_S_52_port, A_S_51_port, A_S_50_port, A_S_49_port, 
      A_S_48_port, A_S_47_port, A_S_46_port, A_S_45_port, A_S_44_port, 
      A_S_43_port, A_S_42_port, A_S_41_port, A_S_40_port, A_S_39_port, 
      A_S_38_port, A_S_37_port, A_S_36_port, A_S_35_port, A_S_34_port, 
      A_S_33_port, A_S_32_port, A_S_31_port, A_S_30_port, A_S_29_port, 
      A_S_28_port, A_S_27_port, A_S_26_port, A_S_25_port, A_S_24_port, 
      A_S_23_port, A_S_22_port, A_S_21_port, A_S_20_port, A_S_19_port, 
      A_S_18_port, A_S_17_port, A_S_16_port, A_S_15_port, A_S_14_port, 
      A_S_13_port, A_S_12_port, A_S_11_port, A_S_10_port, A_S_9_port, 
      A_S_8_port, A_S_7_port, A_S_6_port, A_S_5_port, A_S_4_port, A_S_3_port, 
      A_S_2_port, A_S_1_port, A_S_0_port, B_S_63_port, B_S_62_port, B_S_61_port
      , B_S_60_port, B_S_59_port, B_S_58_port, B_S_57_port, B_S_56_port, 
      B_S_55_port, B_S_54_port, B_S_53_port, B_S_52_port, B_S_51_port, 
      B_S_50_port, B_S_49_port, B_S_48_port, B_S_47_port, B_S_46_port, 
      B_S_45_port, B_S_44_port, B_S_43_port, B_S_42_port, B_S_41_port, 
      B_S_40_port, B_S_39_port, B_S_38_port, B_S_37_port, B_S_36_port, 
      B_S_35_port, B_S_34_port, B_S_33_port, B_S_32_port, B_S_31_port, 
      B_S_30_port, B_S_29_port, B_S_28_port, B_S_27_port, B_S_26_port, 
      B_S_25_port, B_S_24_port, B_S_23_port, B_S_22_port, B_S_21_port, 
      B_S_20_port, B_S_19_port, B_S_18_port, B_S_17_port, B_S_16_port, 
      B_S_15_port, B_S_14_port, B_S_13_port, B_S_12_port, B_S_11_port, 
      B_S_10_port, B_S_9_port, B_S_8_port, B_S_7_port, B_S_6_port, B_S_5_port, 
      B_S_4_port, B_S_3_port, B_S_2_port, B_S_1_port, B_S_0_port, n2, n_1064 : 
      std_logic;

begin
   
   INV : IV port map( A => n2, Y => n_1064);
   r1_0 : ND2_0 port map( A => A(0), B => n2, Y => A_S_0_port);
   r1_1 : ND2_191 port map( A => A(1), B => n2, Y => A_S_1_port);
   r1_2 : ND2_190 port map( A => A(2), B => n2, Y => A_S_2_port);
   r1_3 : ND2_189 port map( A => A(3), B => n2, Y => A_S_3_port);
   r1_4 : ND2_188 port map( A => A(4), B => n2, Y => A_S_4_port);
   r1_5 : ND2_187 port map( A => A(5), B => n2, Y => A_S_5_port);
   r1_6 : ND2_186 port map( A => A(6), B => n2, Y => A_S_6_port);
   r1_7 : ND2_185 port map( A => A(7), B => n2, Y => A_S_7_port);
   r1_8 : ND2_184 port map( A => A(8), B => n2, Y => A_S_8_port);
   r1_9 : ND2_183 port map( A => A(9), B => n2, Y => A_S_9_port);
   r1_10 : ND2_182 port map( A => A(10), B => n2, Y => A_S_10_port);
   r1_11 : ND2_181 port map( A => A(11), B => n2, Y => A_S_11_port);
   r1_12 : ND2_180 port map( A => A(12), B => n2, Y => A_S_12_port);
   r1_13 : ND2_179 port map( A => A(13), B => n2, Y => A_S_13_port);
   r1_14 : ND2_178 port map( A => A(14), B => n2, Y => A_S_14_port);
   r1_15 : ND2_177 port map( A => A(15), B => n2, Y => A_S_15_port);
   r1_16 : ND2_176 port map( A => A(16), B => n2, Y => A_S_16_port);
   r1_17 : ND2_175 port map( A => A(17), B => n2, Y => A_S_17_port);
   r1_18 : ND2_174 port map( A => A(18), B => n2, Y => A_S_18_port);
   r1_19 : ND2_173 port map( A => A(19), B => n2, Y => A_S_19_port);
   r1_20 : ND2_172 port map( A => A(20), B => n2, Y => A_S_20_port);
   r1_21 : ND2_171 port map( A => A(21), B => n2, Y => A_S_21_port);
   r1_22 : ND2_170 port map( A => A(22), B => n2, Y => A_S_22_port);
   r1_23 : ND2_169 port map( A => A(23), B => n2, Y => A_S_23_port);
   r1_24 : ND2_168 port map( A => A(24), B => n2, Y => A_S_24_port);
   r1_25 : ND2_167 port map( A => A(25), B => n2, Y => A_S_25_port);
   r1_26 : ND2_166 port map( A => A(26), B => n2, Y => A_S_26_port);
   r1_27 : ND2_165 port map( A => A(27), B => n2, Y => A_S_27_port);
   r1_28 : ND2_164 port map( A => A(28), B => n2, Y => A_S_28_port);
   r1_29 : ND2_163 port map( A => A(29), B => n2, Y => A_S_29_port);
   r1_30 : ND2_162 port map( A => A(30), B => n2, Y => A_S_30_port);
   r1_31 : ND2_161 port map( A => A(31), B => n2, Y => A_S_31_port);
   r1_32 : ND2_160 port map( A => A(32), B => n2, Y => A_S_32_port);
   r1_33 : ND2_159 port map( A => A(33), B => n2, Y => A_S_33_port);
   r1_34 : ND2_158 port map( A => A(34), B => n2, Y => A_S_34_port);
   r1_35 : ND2_157 port map( A => A(35), B => n2, Y => A_S_35_port);
   r1_36 : ND2_156 port map( A => A(36), B => n2, Y => A_S_36_port);
   r1_37 : ND2_155 port map( A => A(37), B => n2, Y => A_S_37_port);
   r1_38 : ND2_154 port map( A => A(38), B => n2, Y => A_S_38_port);
   r1_39 : ND2_153 port map( A => A(39), B => n2, Y => A_S_39_port);
   r1_40 : ND2_152 port map( A => A(40), B => n2, Y => A_S_40_port);
   r1_41 : ND2_151 port map( A => A(41), B => n2, Y => A_S_41_port);
   r1_42 : ND2_150 port map( A => A(42), B => n2, Y => A_S_42_port);
   r1_43 : ND2_149 port map( A => A(43), B => n2, Y => A_S_43_port);
   r1_44 : ND2_148 port map( A => A(44), B => n2, Y => A_S_44_port);
   r1_45 : ND2_147 port map( A => A(45), B => n2, Y => A_S_45_port);
   r1_46 : ND2_146 port map( A => A(46), B => n2, Y => A_S_46_port);
   r1_47 : ND2_145 port map( A => A(47), B => n2, Y => A_S_47_port);
   r1_48 : ND2_144 port map( A => A(48), B => n2, Y => A_S_48_port);
   r1_49 : ND2_143 port map( A => A(49), B => n2, Y => A_S_49_port);
   r1_50 : ND2_142 port map( A => A(50), B => n2, Y => A_S_50_port);
   r1_51 : ND2_141 port map( A => A(51), B => n2, Y => A_S_51_port);
   r1_52 : ND2_140 port map( A => A(52), B => n2, Y => A_S_52_port);
   r1_53 : ND2_139 port map( A => A(53), B => n2, Y => A_S_53_port);
   r1_54 : ND2_138 port map( A => A(54), B => n2, Y => A_S_54_port);
   r1_55 : ND2_137 port map( A => A(55), B => n2, Y => A_S_55_port);
   r1_56 : ND2_136 port map( A => A(56), B => n2, Y => A_S_56_port);
   r1_57 : ND2_135 port map( A => A(57), B => n2, Y => A_S_57_port);
   r1_58 : ND2_134 port map( A => A(58), B => n2, Y => A_S_58_port);
   r1_59 : ND2_133 port map( A => A(59), B => n2, Y => A_S_59_port);
   r1_60 : ND2_132 port map( A => A(60), B => n2, Y => A_S_60_port);
   r1_61 : ND2_131 port map( A => A(61), B => n2, Y => A_S_61_port);
   r1_62 : ND2_130 port map( A => A(62), B => n2, Y => A_S_62_port);
   r1_63 : ND2_129 port map( A => A(63), B => n2, Y => A_S_63_port);
   r2_0 : ND2_128 port map( A => B(0), B => n2, Y => B_S_0_port);
   r2_1 : ND2_127 port map( A => B(1), B => n2, Y => B_S_1_port);
   r2_2 : ND2_126 port map( A => B(2), B => n2, Y => B_S_2_port);
   r2_3 : ND2_125 port map( A => B(3), B => n2, Y => B_S_3_port);
   r2_4 : ND2_124 port map( A => B(4), B => n2, Y => B_S_4_port);
   r2_5 : ND2_123 port map( A => B(5), B => n2, Y => B_S_5_port);
   r2_6 : ND2_122 port map( A => B(6), B => n2, Y => B_S_6_port);
   r2_7 : ND2_121 port map( A => B(7), B => n2, Y => B_S_7_port);
   r2_8 : ND2_120 port map( A => B(8), B => n2, Y => B_S_8_port);
   r2_9 : ND2_119 port map( A => B(9), B => n2, Y => B_S_9_port);
   r2_10 : ND2_118 port map( A => B(10), B => n2, Y => B_S_10_port);
   r2_11 : ND2_117 port map( A => B(11), B => n2, Y => B_S_11_port);
   r2_12 : ND2_116 port map( A => B(12), B => n2, Y => B_S_12_port);
   r2_13 : ND2_115 port map( A => B(13), B => n2, Y => B_S_13_port);
   r2_14 : ND2_114 port map( A => B(14), B => n2, Y => B_S_14_port);
   r2_15 : ND2_113 port map( A => B(15), B => n2, Y => B_S_15_port);
   r2_16 : ND2_112 port map( A => B(16), B => n2, Y => B_S_16_port);
   r2_17 : ND2_111 port map( A => B(17), B => n2, Y => B_S_17_port);
   r2_18 : ND2_110 port map( A => B(18), B => n2, Y => B_S_18_port);
   r2_19 : ND2_109 port map( A => B(19), B => n2, Y => B_S_19_port);
   r2_20 : ND2_108 port map( A => B(20), B => n2, Y => B_S_20_port);
   r2_21 : ND2_107 port map( A => B(21), B => n2, Y => B_S_21_port);
   r2_22 : ND2_106 port map( A => B(22), B => n2, Y => B_S_22_port);
   r2_23 : ND2_105 port map( A => B(23), B => n2, Y => B_S_23_port);
   r2_24 : ND2_104 port map( A => B(24), B => n2, Y => B_S_24_port);
   r2_25 : ND2_103 port map( A => B(25), B => n2, Y => B_S_25_port);
   r2_26 : ND2_102 port map( A => B(26), B => n2, Y => B_S_26_port);
   r2_27 : ND2_101 port map( A => B(27), B => n2, Y => B_S_27_port);
   r2_28 : ND2_100 port map( A => B(28), B => n2, Y => B_S_28_port);
   r2_29 : ND2_99 port map( A => B(29), B => n2, Y => B_S_29_port);
   r2_30 : ND2_98 port map( A => B(30), B => n2, Y => B_S_30_port);
   r2_31 : ND2_97 port map( A => B(31), B => n2, Y => B_S_31_port);
   r2_32 : ND2_96 port map( A => B(32), B => n2, Y => B_S_32_port);
   r2_33 : ND2_95 port map( A => B(33), B => n2, Y => B_S_33_port);
   r2_34 : ND2_94 port map( A => B(34), B => n2, Y => B_S_34_port);
   r2_35 : ND2_93 port map( A => B(35), B => n2, Y => B_S_35_port);
   r2_36 : ND2_92 port map( A => B(36), B => n2, Y => B_S_36_port);
   r2_37 : ND2_91 port map( A => B(37), B => n2, Y => B_S_37_port);
   r2_38 : ND2_90 port map( A => B(38), B => n2, Y => B_S_38_port);
   r2_39 : ND2_89 port map( A => B(39), B => n2, Y => B_S_39_port);
   r2_40 : ND2_88 port map( A => B(40), B => n2, Y => B_S_40_port);
   r2_41 : ND2_87 port map( A => B(41), B => n2, Y => B_S_41_port);
   r2_42 : ND2_86 port map( A => B(42), B => n2, Y => B_S_42_port);
   r2_43 : ND2_85 port map( A => B(43), B => n2, Y => B_S_43_port);
   r2_44 : ND2_84 port map( A => B(44), B => n2, Y => B_S_44_port);
   r2_45 : ND2_83 port map( A => B(45), B => n2, Y => B_S_45_port);
   r2_46 : ND2_82 port map( A => B(46), B => n2, Y => B_S_46_port);
   r2_47 : ND2_81 port map( A => B(47), B => n2, Y => B_S_47_port);
   r2_48 : ND2_80 port map( A => B(48), B => n2, Y => B_S_48_port);
   r2_49 : ND2_79 port map( A => B(49), B => n2, Y => B_S_49_port);
   r2_50 : ND2_78 port map( A => B(50), B => n2, Y => B_S_50_port);
   r2_51 : ND2_77 port map( A => B(51), B => n2, Y => B_S_51_port);
   r2_52 : ND2_76 port map( A => B(52), B => n2, Y => B_S_52_port);
   r2_53 : ND2_75 port map( A => B(53), B => n2, Y => B_S_53_port);
   r2_54 : ND2_74 port map( A => B(54), B => n2, Y => B_S_54_port);
   r2_55 : ND2_73 port map( A => B(55), B => n2, Y => B_S_55_port);
   r2_56 : ND2_72 port map( A => B(56), B => n2, Y => B_S_56_port);
   r2_57 : ND2_71 port map( A => B(57), B => n2, Y => B_S_57_port);
   r2_58 : ND2_70 port map( A => B(58), B => n2, Y => B_S_58_port);
   r2_59 : ND2_69 port map( A => B(59), B => n2, Y => B_S_59_port);
   r2_60 : ND2_68 port map( A => B(60), B => n2, Y => B_S_60_port);
   r2_61 : ND2_67 port map( A => B(61), B => n2, Y => B_S_61_port);
   r2_62 : ND2_66 port map( A => B(62), B => n2, Y => B_S_62_port);
   r2_63 : ND2_65 port map( A => B(63), B => n2, Y => B_S_63_port);
   r4_0 : ND2_64 port map( A => A_S_0_port, B => B_S_0_port, Y => Y(0));
   r4_1 : ND2_63 port map( A => A_S_1_port, B => B_S_1_port, Y => Y(1));
   r4_2 : ND2_62 port map( A => A_S_2_port, B => B_S_2_port, Y => Y(2));
   r4_3 : ND2_61 port map( A => A_S_3_port, B => B_S_3_port, Y => Y(3));
   r4_4 : ND2_60 port map( A => A_S_4_port, B => B_S_4_port, Y => Y(4));
   r4_5 : ND2_59 port map( A => A_S_5_port, B => B_S_5_port, Y => Y(5));
   r4_6 : ND2_58 port map( A => A_S_6_port, B => B_S_6_port, Y => Y(6));
   r4_7 : ND2_57 port map( A => A_S_7_port, B => B_S_7_port, Y => Y(7));
   r4_8 : ND2_56 port map( A => A_S_8_port, B => B_S_8_port, Y => Y(8));
   r4_9 : ND2_55 port map( A => A_S_9_port, B => B_S_9_port, Y => Y(9));
   r4_10 : ND2_54 port map( A => A_S_10_port, B => B_S_10_port, Y => Y(10));
   r4_11 : ND2_53 port map( A => A_S_11_port, B => B_S_11_port, Y => Y(11));
   r4_12 : ND2_52 port map( A => A_S_12_port, B => B_S_12_port, Y => Y(12));
   r4_13 : ND2_51 port map( A => A_S_13_port, B => B_S_13_port, Y => Y(13));
   r4_14 : ND2_50 port map( A => A_S_14_port, B => B_S_14_port, Y => Y(14));
   r4_15 : ND2_49 port map( A => A_S_15_port, B => B_S_15_port, Y => Y(15));
   r4_16 : ND2_48 port map( A => A_S_16_port, B => B_S_16_port, Y => Y(16));
   r4_17 : ND2_47 port map( A => A_S_17_port, B => B_S_17_port, Y => Y(17));
   r4_18 : ND2_46 port map( A => A_S_18_port, B => B_S_18_port, Y => Y(18));
   r4_19 : ND2_45 port map( A => A_S_19_port, B => B_S_19_port, Y => Y(19));
   r4_20 : ND2_44 port map( A => A_S_20_port, B => B_S_20_port, Y => Y(20));
   r4_21 : ND2_43 port map( A => A_S_21_port, B => B_S_21_port, Y => Y(21));
   r4_22 : ND2_42 port map( A => A_S_22_port, B => B_S_22_port, Y => Y(22));
   r4_23 : ND2_41 port map( A => A_S_23_port, B => B_S_23_port, Y => Y(23));
   r4_24 : ND2_40 port map( A => A_S_24_port, B => B_S_24_port, Y => Y(24));
   r4_25 : ND2_39 port map( A => A_S_25_port, B => B_S_25_port, Y => Y(25));
   r4_26 : ND2_38 port map( A => A_S_26_port, B => B_S_26_port, Y => Y(26));
   r4_27 : ND2_37 port map( A => A_S_27_port, B => B_S_27_port, Y => Y(27));
   r4_28 : ND2_36 port map( A => A_S_28_port, B => B_S_28_port, Y => Y(28));
   r4_29 : ND2_35 port map( A => A_S_29_port, B => B_S_29_port, Y => Y(29));
   r4_30 : ND2_34 port map( A => A_S_30_port, B => B_S_30_port, Y => Y(30));
   r4_31 : ND2_33 port map( A => A_S_31_port, B => B_S_31_port, Y => Y(31));
   r4_32 : ND2_32 port map( A => A_S_32_port, B => B_S_32_port, Y => Y(32));
   r4_33 : ND2_31 port map( A => A_S_33_port, B => B_S_33_port, Y => Y(33));
   r4_34 : ND2_30 port map( A => A_S_34_port, B => B_S_34_port, Y => Y(34));
   r4_35 : ND2_29 port map( A => A_S_35_port, B => B_S_35_port, Y => Y(35));
   r4_36 : ND2_28 port map( A => A_S_36_port, B => B_S_36_port, Y => Y(36));
   r4_37 : ND2_27 port map( A => A_S_37_port, B => B_S_37_port, Y => Y(37));
   r4_38 : ND2_26 port map( A => A_S_38_port, B => B_S_38_port, Y => Y(38));
   r4_39 : ND2_25 port map( A => A_S_39_port, B => B_S_39_port, Y => Y(39));
   r4_40 : ND2_24 port map( A => A_S_40_port, B => B_S_40_port, Y => Y(40));
   r4_41 : ND2_23 port map( A => A_S_41_port, B => B_S_41_port, Y => Y(41));
   r4_42 : ND2_22 port map( A => A_S_42_port, B => B_S_42_port, Y => Y(42));
   r4_43 : ND2_21 port map( A => A_S_43_port, B => B_S_43_port, Y => Y(43));
   r4_44 : ND2_20 port map( A => A_S_44_port, B => B_S_44_port, Y => Y(44));
   r4_45 : ND2_19 port map( A => A_S_45_port, B => B_S_45_port, Y => Y(45));
   r4_46 : ND2_18 port map( A => A_S_46_port, B => B_S_46_port, Y => Y(46));
   r4_47 : ND2_17 port map( A => A_S_47_port, B => B_S_47_port, Y => Y(47));
   r4_48 : ND2_16 port map( A => A_S_48_port, B => B_S_48_port, Y => Y(48));
   r4_49 : ND2_15 port map( A => A_S_49_port, B => B_S_49_port, Y => Y(49));
   r4_50 : ND2_14 port map( A => A_S_50_port, B => B_S_50_port, Y => Y(50));
   r4_51 : ND2_13 port map( A => A_S_51_port, B => B_S_51_port, Y => Y(51));
   r4_52 : ND2_12 port map( A => A_S_52_port, B => B_S_52_port, Y => Y(52));
   r4_53 : ND2_11 port map( A => A_S_53_port, B => B_S_53_port, Y => Y(53));
   r4_54 : ND2_10 port map( A => A_S_54_port, B => B_S_54_port, Y => Y(54));
   r4_55 : ND2_9 port map( A => A_S_55_port, B => B_S_55_port, Y => Y(55));
   r4_56 : ND2_8 port map( A => A_S_56_port, B => B_S_56_port, Y => Y(56));
   r4_57 : ND2_7 port map( A => A_S_57_port, B => B_S_57_port, Y => Y(57));
   r4_58 : ND2_6 port map( A => A_S_58_port, B => B_S_58_port, Y => Y(58));
   r4_59 : ND2_5 port map( A => A_S_59_port, B => B_S_59_port, Y => Y(59));
   r4_60 : ND2_4 port map( A => A_S_60_port, B => B_S_60_port, Y => Y(60));
   r4_61 : ND2_3 port map( A => A_S_61_port, B => B_S_61_port, Y => Y(61));
   r4_62 : ND2_2 port map( A => A_S_62_port, B => B_S_62_port, Y => Y(62));
   r4_63 : ND2_1 port map( A => A_S_63_port, B => B_S_63_port, Y => Y(63));
   U1 : BUF_X8 port map( A => SEL, Z => n2);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity Accumulator is

   port( A, B : in std_logic_vector (63 downto 0);  CLK, RST_n, ACCUMULATE : in
         std_logic;  Y : out std_logic_vector (63 downto 0));

end Accumulator;

architecture SYN_Structural of Accumulator is

   component INV_X4
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component reg
      port( D_R : in std_logic_vector (63 downto 0);  Q_R : out 
            std_logic_vector (63 downto 0);  R_R, CLK_R : in std_logic);
   end component;
   
   component RCA
      port( A, B : in std_logic_vector (63 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (63 downto 0);  Co : out std_logic);
   end component;
   
   component MUX21
      port( A, B : in std_logic_vector (63 downto 0);  SEL : in std_logic;  Y :
            out std_logic_vector (63 downto 0));
   end component;
   
   signal X_Logic0_port, Y_63_port, Y_62_port, Y_61_port, Y_60_port, Y_59_port,
      Y_58_port, Y_57_port, Y_56_port, Y_55_port, Y_54_port, Y_53_port, 
      Y_52_port, Y_51_port, Y_50_port, Y_49_port, Y_48_port, Y_47_port, 
      Y_46_port, Y_45_port, Y_44_port, Y_43_port, Y_42_port, Y_41_port, 
      Y_40_port, Y_39_port, Y_38_port, Y_37_port, Y_36_port, Y_35_port, 
      Y_34_port, Y_33_port, Y_32_port, Y_31_port, Y_30_port, Y_29_port, 
      Y_28_port, Y_27_port, Y_26_port, Y_25_port, Y_24_port, Y_23_port, 
      Y_22_port, Y_21_port, Y_20_port, Y_19_port, Y_18_port, Y_17_port, 
      Y_16_port, Y_15_port, Y_14_port, Y_13_port, Y_12_port, Y_11_port, 
      Y_10_port, Y_9_port, Y_8_port, Y_7_port, Y_6_port, Y_5_port, Y_4_port, 
      Y_3_port, Y_2_port, Y_1_port, Y_0_port, mux_to_add_63_port, 
      mux_to_add_62_port, mux_to_add_61_port, mux_to_add_60_port, 
      mux_to_add_59_port, mux_to_add_58_port, mux_to_add_57_port, 
      mux_to_add_56_port, mux_to_add_55_port, mux_to_add_54_port, 
      mux_to_add_53_port, mux_to_add_52_port, mux_to_add_51_port, 
      mux_to_add_50_port, mux_to_add_49_port, mux_to_add_48_port, 
      mux_to_add_47_port, mux_to_add_46_port, mux_to_add_45_port, 
      mux_to_add_44_port, mux_to_add_43_port, mux_to_add_42_port, 
      mux_to_add_41_port, mux_to_add_40_port, mux_to_add_39_port, 
      mux_to_add_38_port, mux_to_add_37_port, mux_to_add_36_port, 
      mux_to_add_35_port, mux_to_add_34_port, mux_to_add_33_port, 
      mux_to_add_32_port, mux_to_add_31_port, mux_to_add_30_port, 
      mux_to_add_29_port, mux_to_add_28_port, mux_to_add_27_port, 
      mux_to_add_26_port, mux_to_add_25_port, mux_to_add_24_port, 
      mux_to_add_23_port, mux_to_add_22_port, mux_to_add_21_port, 
      mux_to_add_20_port, mux_to_add_19_port, mux_to_add_18_port, 
      mux_to_add_17_port, mux_to_add_16_port, mux_to_add_15_port, 
      mux_to_add_14_port, mux_to_add_13_port, mux_to_add_12_port, 
      mux_to_add_11_port, mux_to_add_10_port, mux_to_add_9_port, 
      mux_to_add_8_port, mux_to_add_7_port, mux_to_add_6_port, 
      mux_to_add_5_port, mux_to_add_4_port, mux_to_add_3_port, 
      mux_to_add_2_port, mux_to_add_1_port, mux_to_add_0_port, out_add_63_port,
      out_add_62_port, out_add_61_port, out_add_60_port, out_add_59_port, 
      out_add_58_port, out_add_57_port, out_add_56_port, out_add_55_port, 
      out_add_54_port, out_add_53_port, out_add_52_port, out_add_51_port, 
      out_add_50_port, out_add_49_port, out_add_48_port, out_add_47_port, 
      out_add_46_port, out_add_45_port, out_add_44_port, out_add_43_port, 
      out_add_42_port, out_add_41_port, out_add_40_port, out_add_39_port, 
      out_add_38_port, out_add_37_port, out_add_36_port, out_add_35_port, 
      out_add_34_port, out_add_33_port, out_add_32_port, out_add_31_port, 
      out_add_30_port, out_add_29_port, out_add_28_port, out_add_27_port, 
      out_add_26_port, out_add_25_port, out_add_24_port, out_add_23_port, 
      out_add_22_port, out_add_21_port, out_add_20_port, out_add_19_port, 
      out_add_18_port, out_add_17_port, out_add_16_port, out_add_15_port, 
      out_add_14_port, out_add_13_port, out_add_12_port, out_add_11_port, 
      out_add_10_port, out_add_9_port, out_add_8_port, out_add_7_port, 
      out_add_6_port, out_add_5_port, out_add_4_port, out_add_3_port, 
      out_add_2_port, out_add_1_port, out_add_0_port, n2, n_1065 : std_logic;

begin
   Y <= ( Y_63_port, Y_62_port, Y_61_port, Y_60_port, Y_59_port, Y_58_port, 
      Y_57_port, Y_56_port, Y_55_port, Y_54_port, Y_53_port, Y_52_port, 
      Y_51_port, Y_50_port, Y_49_port, Y_48_port, Y_47_port, Y_46_port, 
      Y_45_port, Y_44_port, Y_43_port, Y_42_port, Y_41_port, Y_40_port, 
      Y_39_port, Y_38_port, Y_37_port, Y_36_port, Y_35_port, Y_34_port, 
      Y_33_port, Y_32_port, Y_31_port, Y_30_port, Y_29_port, Y_28_port, 
      Y_27_port, Y_26_port, Y_25_port, Y_24_port, Y_23_port, Y_22_port, 
      Y_21_port, Y_20_port, Y_19_port, Y_18_port, Y_17_port, Y_16_port, 
      Y_15_port, Y_14_port, Y_13_port, Y_12_port, Y_11_port, Y_10_port, 
      Y_9_port, Y_8_port, Y_7_port, Y_6_port, Y_5_port, Y_4_port, Y_3_port, 
      Y_2_port, Y_1_port, Y_0_port );
   
   Multiplexer : MUX21 port map( A(63) => Y_63_port, A(62) => Y_62_port, A(61) 
                           => Y_61_port, A(60) => Y_60_port, A(59) => Y_59_port
                           , A(58) => Y_58_port, A(57) => Y_57_port, A(56) => 
                           Y_56_port, A(55) => Y_55_port, A(54) => Y_54_port, 
                           A(53) => Y_53_port, A(52) => Y_52_port, A(51) => 
                           Y_51_port, A(50) => Y_50_port, A(49) => Y_49_port, 
                           A(48) => Y_48_port, A(47) => Y_47_port, A(46) => 
                           Y_46_port, A(45) => Y_45_port, A(44) => Y_44_port, 
                           A(43) => Y_43_port, A(42) => Y_42_port, A(41) => 
                           Y_41_port, A(40) => Y_40_port, A(39) => Y_39_port, 
                           A(38) => Y_38_port, A(37) => Y_37_port, A(36) => 
                           Y_36_port, A(35) => Y_35_port, A(34) => Y_34_port, 
                           A(33) => Y_33_port, A(32) => Y_32_port, A(31) => 
                           Y_31_port, A(30) => Y_30_port, A(29) => Y_29_port, 
                           A(28) => Y_28_port, A(27) => Y_27_port, A(26) => 
                           Y_26_port, A(25) => Y_25_port, A(24) => Y_24_port, 
                           A(23) => Y_23_port, A(22) => Y_22_port, A(21) => 
                           Y_21_port, A(20) => Y_20_port, A(19) => Y_19_port, 
                           A(18) => Y_18_port, A(17) => Y_17_port, A(16) => 
                           Y_16_port, A(15) => Y_15_port, A(14) => Y_14_port, 
                           A(13) => Y_13_port, A(12) => Y_12_port, A(11) => 
                           Y_11_port, A(10) => Y_10_port, A(9) => Y_9_port, 
                           A(8) => Y_8_port, A(7) => Y_7_port, A(6) => Y_6_port
                           , A(5) => Y_5_port, A(4) => Y_4_port, A(3) => 
                           Y_3_port, A(2) => Y_2_port, A(1) => Y_1_port, A(0) 
                           => Y_0_port, B(63) => B(63), B(62) => B(62), B(61) 
                           => B(61), B(60) => B(60), B(59) => B(59), B(58) => 
                           B(58), B(57) => B(57), B(56) => B(56), B(55) => 
                           B(55), B(54) => B(54), B(53) => B(53), B(52) => 
                           B(52), B(51) => B(51), B(50) => B(50), B(49) => 
                           B(49), B(48) => B(48), B(47) => B(47), B(46) => 
                           B(46), B(45) => B(45), B(44) => B(44), B(43) => 
                           B(43), B(42) => B(42), B(41) => B(41), B(40) => 
                           B(40), B(39) => B(39), B(38) => B(38), B(37) => 
                           B(37), B(36) => B(36), B(35) => B(35), B(34) => 
                           B(34), B(33) => B(33), B(32) => B(32), B(31) => 
                           B(31), B(30) => B(30), B(29) => B(29), B(28) => 
                           B(28), B(27) => B(27), B(26) => B(26), B(25) => 
                           B(25), B(24) => B(24), B(23) => B(23), B(22) => 
                           B(22), B(21) => B(21), B(20) => B(20), B(19) => 
                           B(19), B(18) => B(18), B(17) => B(17), B(16) => 
                           B(16), B(15) => B(15), B(14) => B(14), B(13) => 
                           B(13), B(12) => B(12), B(11) => B(11), B(10) => 
                           B(10), B(9) => B(9), B(8) => B(8), B(7) => B(7), 
                           B(6) => B(6), B(5) => B(5), B(4) => B(4), B(3) => 
                           B(3), B(2) => B(2), B(1) => B(1), B(0) => B(0), SEL 
                           => ACCUMULATE, Y(63) => mux_to_add_63_port, Y(62) =>
                           mux_to_add_62_port, Y(61) => mux_to_add_61_port, 
                           Y(60) => mux_to_add_60_port, Y(59) => 
                           mux_to_add_59_port, Y(58) => mux_to_add_58_port, 
                           Y(57) => mux_to_add_57_port, Y(56) => 
                           mux_to_add_56_port, Y(55) => mux_to_add_55_port, 
                           Y(54) => mux_to_add_54_port, Y(53) => 
                           mux_to_add_53_port, Y(52) => mux_to_add_52_port, 
                           Y(51) => mux_to_add_51_port, Y(50) => 
                           mux_to_add_50_port, Y(49) => mux_to_add_49_port, 
                           Y(48) => mux_to_add_48_port, Y(47) => 
                           mux_to_add_47_port, Y(46) => mux_to_add_46_port, 
                           Y(45) => mux_to_add_45_port, Y(44) => 
                           mux_to_add_44_port, Y(43) => mux_to_add_43_port, 
                           Y(42) => mux_to_add_42_port, Y(41) => 
                           mux_to_add_41_port, Y(40) => mux_to_add_40_port, 
                           Y(39) => mux_to_add_39_port, Y(38) => 
                           mux_to_add_38_port, Y(37) => mux_to_add_37_port, 
                           Y(36) => mux_to_add_36_port, Y(35) => 
                           mux_to_add_35_port, Y(34) => mux_to_add_34_port, 
                           Y(33) => mux_to_add_33_port, Y(32) => 
                           mux_to_add_32_port, Y(31) => mux_to_add_31_port, 
                           Y(30) => mux_to_add_30_port, Y(29) => 
                           mux_to_add_29_port, Y(28) => mux_to_add_28_port, 
                           Y(27) => mux_to_add_27_port, Y(26) => 
                           mux_to_add_26_port, Y(25) => mux_to_add_25_port, 
                           Y(24) => mux_to_add_24_port, Y(23) => 
                           mux_to_add_23_port, Y(22) => mux_to_add_22_port, 
                           Y(21) => mux_to_add_21_port, Y(20) => 
                           mux_to_add_20_port, Y(19) => mux_to_add_19_port, 
                           Y(18) => mux_to_add_18_port, Y(17) => 
                           mux_to_add_17_port, Y(16) => mux_to_add_16_port, 
                           Y(15) => mux_to_add_15_port, Y(14) => 
                           mux_to_add_14_port, Y(13) => mux_to_add_13_port, 
                           Y(12) => mux_to_add_12_port, Y(11) => 
                           mux_to_add_11_port, Y(10) => mux_to_add_10_port, 
                           Y(9) => mux_to_add_9_port, Y(8) => mux_to_add_8_port
                           , Y(7) => mux_to_add_7_port, Y(6) => 
                           mux_to_add_6_port, Y(5) => mux_to_add_5_port, Y(4) 
                           => mux_to_add_4_port, Y(3) => mux_to_add_3_port, 
                           Y(2) => mux_to_add_2_port, Y(1) => mux_to_add_1_port
                           , Y(0) => mux_to_add_0_port);
   ADDER : RCA port map( A(63) => A(63), A(62) => A(62), A(61) => A(61), A(60) 
                           => A(60), A(59) => A(59), A(58) => A(58), A(57) => 
                           A(57), A(56) => A(56), A(55) => A(55), A(54) => 
                           A(54), A(53) => A(53), A(52) => A(52), A(51) => 
                           A(51), A(50) => A(50), A(49) => A(49), A(48) => 
                           A(48), A(47) => A(47), A(46) => A(46), A(45) => 
                           A(45), A(44) => A(44), A(43) => A(43), A(42) => 
                           A(42), A(41) => A(41), A(40) => A(40), A(39) => 
                           A(39), A(38) => A(38), A(37) => A(37), A(36) => 
                           A(36), A(35) => A(35), A(34) => A(34), A(33) => 
                           A(33), A(32) => A(32), A(31) => A(31), A(30) => 
                           A(30), A(29) => A(29), A(28) => A(28), A(27) => 
                           A(27), A(26) => A(26), A(25) => A(25), A(24) => 
                           A(24), A(23) => A(23), A(22) => A(22), A(21) => 
                           A(21), A(20) => A(20), A(19) => A(19), A(18) => 
                           A(18), A(17) => A(17), A(16) => A(16), A(15) => 
                           A(15), A(14) => A(14), A(13) => A(13), A(12) => 
                           A(12), A(11) => A(11), A(10) => A(10), A(9) => A(9),
                           A(8) => A(8), A(7) => A(7), A(6) => A(6), A(5) => 
                           A(5), A(4) => A(4), A(3) => A(3), A(2) => A(2), A(1)
                           => A(1), A(0) => A(0), B(63) => mux_to_add_63_port, 
                           B(62) => mux_to_add_62_port, B(61) => 
                           mux_to_add_61_port, B(60) => mux_to_add_60_port, 
                           B(59) => mux_to_add_59_port, B(58) => 
                           mux_to_add_58_port, B(57) => mux_to_add_57_port, 
                           B(56) => mux_to_add_56_port, B(55) => 
                           mux_to_add_55_port, B(54) => mux_to_add_54_port, 
                           B(53) => mux_to_add_53_port, B(52) => 
                           mux_to_add_52_port, B(51) => mux_to_add_51_port, 
                           B(50) => mux_to_add_50_port, B(49) => 
                           mux_to_add_49_port, B(48) => mux_to_add_48_port, 
                           B(47) => mux_to_add_47_port, B(46) => 
                           mux_to_add_46_port, B(45) => mux_to_add_45_port, 
                           B(44) => mux_to_add_44_port, B(43) => 
                           mux_to_add_43_port, B(42) => mux_to_add_42_port, 
                           B(41) => mux_to_add_41_port, B(40) => 
                           mux_to_add_40_port, B(39) => mux_to_add_39_port, 
                           B(38) => mux_to_add_38_port, B(37) => 
                           mux_to_add_37_port, B(36) => mux_to_add_36_port, 
                           B(35) => mux_to_add_35_port, B(34) => 
                           mux_to_add_34_port, B(33) => mux_to_add_33_port, 
                           B(32) => mux_to_add_32_port, B(31) => 
                           mux_to_add_31_port, B(30) => mux_to_add_30_port, 
                           B(29) => mux_to_add_29_port, B(28) => 
                           mux_to_add_28_port, B(27) => mux_to_add_27_port, 
                           B(26) => mux_to_add_26_port, B(25) => 
                           mux_to_add_25_port, B(24) => mux_to_add_24_port, 
                           B(23) => mux_to_add_23_port, B(22) => 
                           mux_to_add_22_port, B(21) => mux_to_add_21_port, 
                           B(20) => mux_to_add_20_port, B(19) => 
                           mux_to_add_19_port, B(18) => mux_to_add_18_port, 
                           B(17) => mux_to_add_17_port, B(16) => 
                           mux_to_add_16_port, B(15) => mux_to_add_15_port, 
                           B(14) => mux_to_add_14_port, B(13) => 
                           mux_to_add_13_port, B(12) => mux_to_add_12_port, 
                           B(11) => mux_to_add_11_port, B(10) => 
                           mux_to_add_10_port, B(9) => mux_to_add_9_port, B(8) 
                           => mux_to_add_8_port, B(7) => mux_to_add_7_port, 
                           B(6) => mux_to_add_6_port, B(5) => mux_to_add_5_port
                           , B(4) => mux_to_add_4_port, B(3) => 
                           mux_to_add_3_port, B(2) => mux_to_add_2_port, B(1) 
                           => mux_to_add_1_port, B(0) => mux_to_add_0_port, Ci 
                           => X_Logic0_port, S(63) => out_add_63_port, S(62) =>
                           out_add_62_port, S(61) => out_add_61_port, S(60) => 
                           out_add_60_port, S(59) => out_add_59_port, S(58) => 
                           out_add_58_port, S(57) => out_add_57_port, S(56) => 
                           out_add_56_port, S(55) => out_add_55_port, S(54) => 
                           out_add_54_port, S(53) => out_add_53_port, S(52) => 
                           out_add_52_port, S(51) => out_add_51_port, S(50) => 
                           out_add_50_port, S(49) => out_add_49_port, S(48) => 
                           out_add_48_port, S(47) => out_add_47_port, S(46) => 
                           out_add_46_port, S(45) => out_add_45_port, S(44) => 
                           out_add_44_port, S(43) => out_add_43_port, S(42) => 
                           out_add_42_port, S(41) => out_add_41_port, S(40) => 
                           out_add_40_port, S(39) => out_add_39_port, S(38) => 
                           out_add_38_port, S(37) => out_add_37_port, S(36) => 
                           out_add_36_port, S(35) => out_add_35_port, S(34) => 
                           out_add_34_port, S(33) => out_add_33_port, S(32) => 
                           out_add_32_port, S(31) => out_add_31_port, S(30) => 
                           out_add_30_port, S(29) => out_add_29_port, S(28) => 
                           out_add_28_port, S(27) => out_add_27_port, S(26) => 
                           out_add_26_port, S(25) => out_add_25_port, S(24) => 
                           out_add_24_port, S(23) => out_add_23_port, S(22) => 
                           out_add_22_port, S(21) => out_add_21_port, S(20) => 
                           out_add_20_port, S(19) => out_add_19_port, S(18) => 
                           out_add_18_port, S(17) => out_add_17_port, S(16) => 
                           out_add_16_port, S(15) => out_add_15_port, S(14) => 
                           out_add_14_port, S(13) => out_add_13_port, S(12) => 
                           out_add_12_port, S(11) => out_add_11_port, S(10) => 
                           out_add_10_port, S(9) => out_add_9_port, S(8) => 
                           out_add_8_port, S(7) => out_add_7_port, S(6) => 
                           out_add_6_port, S(5) => out_add_5_port, S(4) => 
                           out_add_4_port, S(3) => out_add_3_port, S(2) => 
                           out_add_2_port, S(1) => out_add_1_port, S(0) => 
                           out_add_0_port, Co => n_1065);
   meg : reg port map( D_R(63) => out_add_63_port, D_R(62) => out_add_62_port, 
                           D_R(61) => out_add_61_port, D_R(60) => 
                           out_add_60_port, D_R(59) => out_add_59_port, D_R(58)
                           => out_add_58_port, D_R(57) => out_add_57_port, 
                           D_R(56) => out_add_56_port, D_R(55) => 
                           out_add_55_port, D_R(54) => out_add_54_port, D_R(53)
                           => out_add_53_port, D_R(52) => out_add_52_port, 
                           D_R(51) => out_add_51_port, D_R(50) => 
                           out_add_50_port, D_R(49) => out_add_49_port, D_R(48)
                           => out_add_48_port, D_R(47) => out_add_47_port, 
                           D_R(46) => out_add_46_port, D_R(45) => 
                           out_add_45_port, D_R(44) => out_add_44_port, D_R(43)
                           => out_add_43_port, D_R(42) => out_add_42_port, 
                           D_R(41) => out_add_41_port, D_R(40) => 
                           out_add_40_port, D_R(39) => out_add_39_port, D_R(38)
                           => out_add_38_port, D_R(37) => out_add_37_port, 
                           D_R(36) => out_add_36_port, D_R(35) => 
                           out_add_35_port, D_R(34) => out_add_34_port, D_R(33)
                           => out_add_33_port, D_R(32) => out_add_32_port, 
                           D_R(31) => out_add_31_port, D_R(30) => 
                           out_add_30_port, D_R(29) => out_add_29_port, D_R(28)
                           => out_add_28_port, D_R(27) => out_add_27_port, 
                           D_R(26) => out_add_26_port, D_R(25) => 
                           out_add_25_port, D_R(24) => out_add_24_port, D_R(23)
                           => out_add_23_port, D_R(22) => out_add_22_port, 
                           D_R(21) => out_add_21_port, D_R(20) => 
                           out_add_20_port, D_R(19) => out_add_19_port, D_R(18)
                           => out_add_18_port, D_R(17) => out_add_17_port, 
                           D_R(16) => out_add_16_port, D_R(15) => 
                           out_add_15_port, D_R(14) => out_add_14_port, D_R(13)
                           => out_add_13_port, D_R(12) => out_add_12_port, 
                           D_R(11) => out_add_11_port, D_R(10) => 
                           out_add_10_port, D_R(9) => out_add_9_port, D_R(8) =>
                           out_add_8_port, D_R(7) => out_add_7_port, D_R(6) => 
                           out_add_6_port, D_R(5) => out_add_5_port, D_R(4) => 
                           out_add_4_port, D_R(3) => out_add_3_port, D_R(2) => 
                           out_add_2_port, D_R(1) => out_add_1_port, D_R(0) => 
                           out_add_0_port, Q_R(63) => Y_63_port, Q_R(62) => 
                           Y_62_port, Q_R(61) => Y_61_port, Q_R(60) => 
                           Y_60_port, Q_R(59) => Y_59_port, Q_R(58) => 
                           Y_58_port, Q_R(57) => Y_57_port, Q_R(56) => 
                           Y_56_port, Q_R(55) => Y_55_port, Q_R(54) => 
                           Y_54_port, Q_R(53) => Y_53_port, Q_R(52) => 
                           Y_52_port, Q_R(51) => Y_51_port, Q_R(50) => 
                           Y_50_port, Q_R(49) => Y_49_port, Q_R(48) => 
                           Y_48_port, Q_R(47) => Y_47_port, Q_R(46) => 
                           Y_46_port, Q_R(45) => Y_45_port, Q_R(44) => 
                           Y_44_port, Q_R(43) => Y_43_port, Q_R(42) => 
                           Y_42_port, Q_R(41) => Y_41_port, Q_R(40) => 
                           Y_40_port, Q_R(39) => Y_39_port, Q_R(38) => 
                           Y_38_port, Q_R(37) => Y_37_port, Q_R(36) => 
                           Y_36_port, Q_R(35) => Y_35_port, Q_R(34) => 
                           Y_34_port, Q_R(33) => Y_33_port, Q_R(32) => 
                           Y_32_port, Q_R(31) => Y_31_port, Q_R(30) => 
                           Y_30_port, Q_R(29) => Y_29_port, Q_R(28) => 
                           Y_28_port, Q_R(27) => Y_27_port, Q_R(26) => 
                           Y_26_port, Q_R(25) => Y_25_port, Q_R(24) => 
                           Y_24_port, Q_R(23) => Y_23_port, Q_R(22) => 
                           Y_22_port, Q_R(21) => Y_21_port, Q_R(20) => 
                           Y_20_port, Q_R(19) => Y_19_port, Q_R(18) => 
                           Y_18_port, Q_R(17) => Y_17_port, Q_R(16) => 
                           Y_16_port, Q_R(15) => Y_15_port, Q_R(14) => 
                           Y_14_port, Q_R(13) => Y_13_port, Q_R(12) => 
                           Y_12_port, Q_R(11) => Y_11_port, Q_R(10) => 
                           Y_10_port, Q_R(9) => Y_9_port, Q_R(8) => Y_8_port, 
                           Q_R(7) => Y_7_port, Q_R(6) => Y_6_port, Q_R(5) => 
                           Y_5_port, Q_R(4) => Y_4_port, Q_R(3) => Y_3_port, 
                           Q_R(2) => Y_2_port, Q_R(1) => Y_1_port, Q_R(0) => 
                           Y_0_port, R_R => n2, CLK_R => CLK);
   X_Logic0_port <= '0';
   U4 : INV_X4 port map( A => RST_n, ZN => n2);

end SYN_Structural;
