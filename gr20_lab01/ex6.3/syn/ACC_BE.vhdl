
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_Accumulator is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_Accumulator;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity Accumulator_DW01_add_0 is

   port( A, B : in std_logic_vector (63 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (63 downto 0);  CO : out std_logic);

end Accumulator_DW01_add_0;

architecture SYN_rpl of Accumulator_DW01_add_0 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_63_port, carry_62_port, carry_61_port, carry_60_port, 
      carry_59_port, carry_58_port, carry_57_port, carry_56_port, carry_55_port
      , carry_54_port, carry_53_port, carry_52_port, carry_51_port, 
      carry_50_port, carry_49_port, carry_48_port, carry_47_port, carry_46_port
      , carry_45_port, carry_44_port, carry_43_port, carry_42_port, 
      carry_41_port, carry_40_port, carry_39_port, carry_38_port, carry_37_port
      , carry_36_port, carry_35_port, carry_34_port, carry_33_port, 
      carry_32_port, carry_31_port, carry_30_port, carry_29_port, carry_28_port
      , carry_27_port, carry_26_port, carry_25_port, carry_24_port, 
      carry_23_port, carry_22_port, carry_21_port, carry_20_port, carry_19_port
      , carry_18_port, carry_17_port, carry_16_port, carry_15_port, 
      carry_14_port, carry_13_port, carry_12_port, carry_11_port, carry_10_port
      , carry_9_port, carry_8_port, carry_7_port, carry_6_port, carry_5_port, 
      carry_4_port, carry_3_port, carry_2_port, n1, n_1002 : std_logic;

begin
   
   U1_63 : FA_X1 port map( A => A(63), B => B(63), CI => carry_63_port, CO => 
                           n_1002, S => SUM(63));
   U1_62 : FA_X1 port map( A => A(62), B => B(62), CI => carry_62_port, CO => 
                           carry_63_port, S => SUM(62));
   U1_61 : FA_X1 port map( A => A(61), B => B(61), CI => carry_61_port, CO => 
                           carry_62_port, S => SUM(61));
   U1_60 : FA_X1 port map( A => A(60), B => B(60), CI => carry_60_port, CO => 
                           carry_61_port, S => SUM(60));
   U1_59 : FA_X1 port map( A => A(59), B => B(59), CI => carry_59_port, CO => 
                           carry_60_port, S => SUM(59));
   U1_58 : FA_X1 port map( A => A(58), B => B(58), CI => carry_58_port, CO => 
                           carry_59_port, S => SUM(58));
   U1_57 : FA_X1 port map( A => A(57), B => B(57), CI => carry_57_port, CO => 
                           carry_58_port, S => SUM(57));
   U1_56 : FA_X1 port map( A => A(56), B => B(56), CI => carry_56_port, CO => 
                           carry_57_port, S => SUM(56));
   U1_55 : FA_X1 port map( A => A(55), B => B(55), CI => carry_55_port, CO => 
                           carry_56_port, S => SUM(55));
   U1_54 : FA_X1 port map( A => A(54), B => B(54), CI => carry_54_port, CO => 
                           carry_55_port, S => SUM(54));
   U1_53 : FA_X1 port map( A => A(53), B => B(53), CI => carry_53_port, CO => 
                           carry_54_port, S => SUM(53));
   U1_52 : FA_X1 port map( A => A(52), B => B(52), CI => carry_52_port, CO => 
                           carry_53_port, S => SUM(52));
   U1_51 : FA_X1 port map( A => A(51), B => B(51), CI => carry_51_port, CO => 
                           carry_52_port, S => SUM(51));
   U1_50 : FA_X1 port map( A => A(50), B => B(50), CI => carry_50_port, CO => 
                           carry_51_port, S => SUM(50));
   U1_49 : FA_X1 port map( A => A(49), B => B(49), CI => carry_49_port, CO => 
                           carry_50_port, S => SUM(49));
   U1_48 : FA_X1 port map( A => A(48), B => B(48), CI => carry_48_port, CO => 
                           carry_49_port, S => SUM(48));
   U1_47 : FA_X1 port map( A => A(47), B => B(47), CI => carry_47_port, CO => 
                           carry_48_port, S => SUM(47));
   U1_46 : FA_X1 port map( A => A(46), B => B(46), CI => carry_46_port, CO => 
                           carry_47_port, S => SUM(46));
   U1_45 : FA_X1 port map( A => A(45), B => B(45), CI => carry_45_port, CO => 
                           carry_46_port, S => SUM(45));
   U1_44 : FA_X1 port map( A => A(44), B => B(44), CI => carry_44_port, CO => 
                           carry_45_port, S => SUM(44));
   U1_43 : FA_X1 port map( A => A(43), B => B(43), CI => carry_43_port, CO => 
                           carry_44_port, S => SUM(43));
   U1_42 : FA_X1 port map( A => A(42), B => B(42), CI => carry_42_port, CO => 
                           carry_43_port, S => SUM(42));
   U1_41 : FA_X1 port map( A => A(41), B => B(41), CI => carry_41_port, CO => 
                           carry_42_port, S => SUM(41));
   U1_40 : FA_X1 port map( A => A(40), B => B(40), CI => carry_40_port, CO => 
                           carry_41_port, S => SUM(40));
   U1_39 : FA_X1 port map( A => A(39), B => B(39), CI => carry_39_port, CO => 
                           carry_40_port, S => SUM(39));
   U1_38 : FA_X1 port map( A => A(38), B => B(38), CI => carry_38_port, CO => 
                           carry_39_port, S => SUM(38));
   U1_37 : FA_X1 port map( A => A(37), B => B(37), CI => carry_37_port, CO => 
                           carry_38_port, S => SUM(37));
   U1_36 : FA_X1 port map( A => A(36), B => B(36), CI => carry_36_port, CO => 
                           carry_37_port, S => SUM(36));
   U1_35 : FA_X1 port map( A => A(35), B => B(35), CI => carry_35_port, CO => 
                           carry_36_port, S => SUM(35));
   U1_34 : FA_X1 port map( A => A(34), B => B(34), CI => carry_34_port, CO => 
                           carry_35_port, S => SUM(34));
   U1_33 : FA_X1 port map( A => A(33), B => B(33), CI => carry_33_port, CO => 
                           carry_34_port, S => SUM(33));
   U1_32 : FA_X1 port map( A => A(32), B => B(32), CI => carry_32_port, CO => 
                           carry_33_port, S => SUM(32));
   U1_31 : FA_X1 port map( A => A(31), B => B(31), CI => carry_31_port, CO => 
                           carry_32_port, S => SUM(31));
   U1_30 : FA_X1 port map( A => A(30), B => B(30), CI => carry_30_port, CO => 
                           carry_31_port, S => SUM(30));
   U1_29 : FA_X1 port map( A => A(29), B => B(29), CI => carry_29_port, CO => 
                           carry_30_port, S => SUM(29));
   U1_28 : FA_X1 port map( A => A(28), B => B(28), CI => carry_28_port, CO => 
                           carry_29_port, S => SUM(28));
   U1_27 : FA_X1 port map( A => A(27), B => B(27), CI => carry_27_port, CO => 
                           carry_28_port, S => SUM(27));
   U1_26 : FA_X1 port map( A => A(26), B => B(26), CI => carry_26_port, CO => 
                           carry_27_port, S => SUM(26));
   U1_25 : FA_X1 port map( A => A(25), B => B(25), CI => carry_25_port, CO => 
                           carry_26_port, S => SUM(25));
   U1_24 : FA_X1 port map( A => A(24), B => B(24), CI => carry_24_port, CO => 
                           carry_25_port, S => SUM(24));
   U1_23 : FA_X1 port map( A => A(23), B => B(23), CI => carry_23_port, CO => 
                           carry_24_port, S => SUM(23));
   U1_22 : FA_X1 port map( A => A(22), B => B(22), CI => carry_22_port, CO => 
                           carry_23_port, S => SUM(22));
   U1_21 : FA_X1 port map( A => A(21), B => B(21), CI => carry_21_port, CO => 
                           carry_22_port, S => SUM(21));
   U1_20 : FA_X1 port map( A => A(20), B => B(20), CI => carry_20_port, CO => 
                           carry_21_port, S => SUM(20));
   U1_19 : FA_X1 port map( A => A(19), B => B(19), CI => carry_19_port, CO => 
                           carry_20_port, S => SUM(19));
   U1_18 : FA_X1 port map( A => A(18), B => B(18), CI => carry_18_port, CO => 
                           carry_19_port, S => SUM(18));
   U1_17 : FA_X1 port map( A => A(17), B => B(17), CI => carry_17_port, CO => 
                           carry_18_port, S => SUM(17));
   U1_16 : FA_X1 port map( A => A(16), B => B(16), CI => carry_16_port, CO => 
                           carry_17_port, S => SUM(16));
   U1_15 : FA_X1 port map( A => A(15), B => B(15), CI => carry_15_port, CO => 
                           carry_16_port, S => SUM(15));
   U1_14 : FA_X1 port map( A => A(14), B => B(14), CI => carry_14_port, CO => 
                           carry_15_port, S => SUM(14));
   U1_13 : FA_X1 port map( A => A(13), B => B(13), CI => carry_13_port, CO => 
                           carry_14_port, S => SUM(13));
   U1_12 : FA_X1 port map( A => A(12), B => B(12), CI => carry_12_port, CO => 
                           carry_13_port, S => SUM(12));
   U1_11 : FA_X1 port map( A => A(11), B => B(11), CI => carry_11_port, CO => 
                           carry_12_port, S => SUM(11));
   U1_10 : FA_X1 port map( A => A(10), B => B(10), CI => carry_10_port, CO => 
                           carry_11_port, S => SUM(10));
   U1_9 : FA_X1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : FA_X1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : FA_X1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
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
   U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port, S
                           => SUM(1));
   U2 : XOR2_X1 port map( A => B(0), B => A(0), Z => SUM(0));
   U1 : AND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n1);

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Accumulator.all;

entity Accumulator is

   port( A, B : in std_logic_vector (63 downto 0);  CLK, RST_n, ACCUMULATE : in
         std_logic;  Y : out std_logic_vector (63 downto 0));

end Accumulator;

architecture SYN_Behavioral of Accumulator is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component Accumulator_DW01_add_0
      port( A, B : in std_logic_vector (63 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (63 downto 0);  CO : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal Y_63_port, Y_62_port, Y_61_port, Y_60_port, Y_59_port, Y_58_port, 
      Y_57_port, Y_56_port, Y_55_port, Y_54_port, Y_53_port, Y_52_port, 
      Y_51_port, Y_50_port, Y_49_port, Y_48_port, Y_47_port, Y_46_port, 
      Y_45_port, Y_44_port, Y_43_port, Y_42_port, Y_41_port, Y_40_port, 
      Y_39_port, Y_38_port, Y_37_port, Y_36_port, Y_35_port, Y_34_port, 
      Y_33_port, Y_32_port, Y_31_port, Y_30_port, Y_29_port, Y_28_port, 
      Y_27_port, Y_26_port, Y_25_port, Y_24_port, Y_23_port, Y_22_port, 
      Y_21_port, Y_20_port, Y_19_port, Y_18_port, Y_17_port, Y_16_port, 
      Y_15_port, Y_14_port, Y_13_port, Y_12_port, Y_11_port, Y_10_port, 
      Y_9_port, Y_8_port, Y_7_port, Y_6_port, Y_5_port, Y_4_port, Y_3_port, 
      Y_2_port, Y_1_port, Y_0_port, out_add_63_port, out_add_62_port, 
      out_add_61_port, out_add_60_port, out_add_59_port, out_add_58_port, 
      out_add_57_port, out_add_56_port, out_add_55_port, out_add_54_port, 
      out_add_53_port, out_add_52_port, out_add_51_port, out_add_50_port, 
      out_add_49_port, out_add_48_port, out_add_47_port, out_add_46_port, 
      out_add_45_port, out_add_44_port, out_add_43_port, out_add_42_port, 
      out_add_41_port, out_add_40_port, out_add_39_port, out_add_38_port, 
      out_add_37_port, out_add_36_port, out_add_35_port, out_add_34_port, 
      out_add_33_port, out_add_32_port, out_add_31_port, out_add_30_port, 
      out_add_29_port, out_add_28_port, out_add_27_port, out_add_26_port, 
      out_add_25_port, out_add_24_port, out_add_23_port, out_add_22_port, 
      out_add_21_port, out_add_20_port, out_add_19_port, out_add_18_port, 
      out_add_17_port, out_add_16_port, out_add_15_port, out_add_14_port, 
      out_add_13_port, out_add_12_port, out_add_11_port, out_add_10_port, 
      out_add_9_port, out_add_8_port, out_add_7_port, out_add_6_port, 
      out_add_5_port, out_add_4_port, out_add_3_port, out_add_2_port, 
      out_add_1_port, out_add_0_port, N70, N71, N72, N73, N74, N75, N76, N77, 
      N78, N79, N80, N81, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91, N92
      , N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103, N104, N105, 
      N106, N107, N108, N109, N110, N111, N112, N113, N114, N115, N116, N117, 
      N118, N119, N120, N121, N122, N123, N124, N125, N126, N127, N128, N129, 
      N130, N131, N132, N133, n132_port, n133_port, n134, n135, n136, n137, 
      n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, 
      n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, 
      n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, 
      n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, 
      n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n_1003,
      n_1004, n_1005, n_1006, n_1007, n_1008, n_1009, n_1010, n_1011, n_1012, 
      n_1013, n_1014, n_1015, n_1016, n_1017, n_1018, n_1019, n_1020, n_1021, 
      n_1022, n_1023, n_1024, n_1025, n_1026, n_1027, n_1028, n_1029, n_1030, 
      n_1031, n_1032, n_1033, n_1034, n_1035, n_1036, n_1037, n_1038, n_1039, 
      n_1040, n_1041, n_1042, n_1043, n_1044, n_1045, n_1046, n_1047, n_1048, 
      n_1049, n_1050, n_1051, n_1052, n_1053, n_1054, n_1055, n_1056, n_1057, 
      n_1058, n_1059, n_1060, n_1061, n_1062, n_1063, n_1064, n_1065, n_1066, 
      n_1067 : std_logic;

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
   
   feed_back_reg_0_inst : DFF_X1 port map( D => N70, CK => CLK, Q => Y_0_port, 
                           QN => n_1003);
   feed_back_reg_1_inst : DFF_X1 port map( D => N71, CK => CLK, Q => Y_1_port, 
                           QN => n_1004);
   feed_back_reg_2_inst : DFF_X1 port map( D => N72, CK => CLK, Q => Y_2_port, 
                           QN => n_1005);
   feed_back_reg_3_inst : DFF_X1 port map( D => N73, CK => CLK, Q => Y_3_port, 
                           QN => n_1006);
   feed_back_reg_4_inst : DFF_X1 port map( D => N74, CK => CLK, Q => Y_4_port, 
                           QN => n_1007);
   feed_back_reg_5_inst : DFF_X1 port map( D => N75, CK => CLK, Q => Y_5_port, 
                           QN => n_1008);
   feed_back_reg_6_inst : DFF_X1 port map( D => N76, CK => CLK, Q => Y_6_port, 
                           QN => n_1009);
   feed_back_reg_7_inst : DFF_X1 port map( D => N77, CK => CLK, Q => Y_7_port, 
                           QN => n_1010);
   feed_back_reg_8_inst : DFF_X1 port map( D => N78, CK => CLK, Q => Y_8_port, 
                           QN => n_1011);
   feed_back_reg_9_inst : DFF_X1 port map( D => N79, CK => CLK, Q => Y_9_port, 
                           QN => n_1012);
   feed_back_reg_10_inst : DFF_X1 port map( D => N80, CK => CLK, Q => Y_10_port
                           , QN => n_1013);
   feed_back_reg_11_inst : DFF_X1 port map( D => N81, CK => CLK, Q => Y_11_port
                           , QN => n_1014);
   feed_back_reg_12_inst : DFF_X1 port map( D => N82, CK => CLK, Q => Y_12_port
                           , QN => n_1015);
   feed_back_reg_13_inst : DFF_X1 port map( D => N83, CK => CLK, Q => Y_13_port
                           , QN => n_1016);
   feed_back_reg_14_inst : DFF_X1 port map( D => N84, CK => CLK, Q => Y_14_port
                           , QN => n_1017);
   feed_back_reg_15_inst : DFF_X1 port map( D => N85, CK => CLK, Q => Y_15_port
                           , QN => n_1018);
   feed_back_reg_16_inst : DFF_X1 port map( D => N86, CK => CLK, Q => Y_16_port
                           , QN => n_1019);
   feed_back_reg_17_inst : DFF_X1 port map( D => N87, CK => CLK, Q => Y_17_port
                           , QN => n_1020);
   feed_back_reg_18_inst : DFF_X1 port map( D => N88, CK => CLK, Q => Y_18_port
                           , QN => n_1021);
   feed_back_reg_19_inst : DFF_X1 port map( D => N89, CK => CLK, Q => Y_19_port
                           , QN => n_1022);
   feed_back_reg_20_inst : DFF_X1 port map( D => N90, CK => CLK, Q => Y_20_port
                           , QN => n_1023);
   feed_back_reg_21_inst : DFF_X1 port map( D => N91, CK => CLK, Q => Y_21_port
                           , QN => n_1024);
   feed_back_reg_22_inst : DFF_X1 port map( D => N92, CK => CLK, Q => Y_22_port
                           , QN => n_1025);
   feed_back_reg_23_inst : DFF_X1 port map( D => N93, CK => CLK, Q => Y_23_port
                           , QN => n_1026);
   feed_back_reg_24_inst : DFF_X1 port map( D => N94, CK => CLK, Q => Y_24_port
                           , QN => n_1027);
   feed_back_reg_25_inst : DFF_X1 port map( D => N95, CK => CLK, Q => Y_25_port
                           , QN => n_1028);
   feed_back_reg_26_inst : DFF_X1 port map( D => N96, CK => CLK, Q => Y_26_port
                           , QN => n_1029);
   feed_back_reg_27_inst : DFF_X1 port map( D => N97, CK => CLK, Q => Y_27_port
                           , QN => n_1030);
   feed_back_reg_28_inst : DFF_X1 port map( D => N98, CK => CLK, Q => Y_28_port
                           , QN => n_1031);
   feed_back_reg_29_inst : DFF_X1 port map( D => N99, CK => CLK, Q => Y_29_port
                           , QN => n_1032);
   feed_back_reg_30_inst : DFF_X1 port map( D => N100, CK => CLK, Q => 
                           Y_30_port, QN => n_1033);
   feed_back_reg_31_inst : DFF_X1 port map( D => N101, CK => CLK, Q => 
                           Y_31_port, QN => n_1034);
   feed_back_reg_32_inst : DFF_X1 port map( D => N102, CK => CLK, Q => 
                           Y_32_port, QN => n_1035);
   feed_back_reg_33_inst : DFF_X1 port map( D => N103, CK => CLK, Q => 
                           Y_33_port, QN => n_1036);
   feed_back_reg_34_inst : DFF_X1 port map( D => N104, CK => CLK, Q => 
                           Y_34_port, QN => n_1037);
   feed_back_reg_35_inst : DFF_X1 port map( D => N105, CK => CLK, Q => 
                           Y_35_port, QN => n_1038);
   feed_back_reg_36_inst : DFF_X1 port map( D => N106, CK => CLK, Q => 
                           Y_36_port, QN => n_1039);
   feed_back_reg_37_inst : DFF_X1 port map( D => N107, CK => CLK, Q => 
                           Y_37_port, QN => n_1040);
   feed_back_reg_38_inst : DFF_X1 port map( D => N108, CK => CLK, Q => 
                           Y_38_port, QN => n_1041);
   feed_back_reg_39_inst : DFF_X1 port map( D => N109, CK => CLK, Q => 
                           Y_39_port, QN => n_1042);
   feed_back_reg_40_inst : DFF_X1 port map( D => N110, CK => CLK, Q => 
                           Y_40_port, QN => n_1043);
   feed_back_reg_41_inst : DFF_X1 port map( D => N111, CK => CLK, Q => 
                           Y_41_port, QN => n_1044);
   feed_back_reg_42_inst : DFF_X1 port map( D => N112, CK => CLK, Q => 
                           Y_42_port, QN => n_1045);
   feed_back_reg_43_inst : DFF_X1 port map( D => N113, CK => CLK, Q => 
                           Y_43_port, QN => n_1046);
   feed_back_reg_44_inst : DFF_X1 port map( D => N114, CK => CLK, Q => 
                           Y_44_port, QN => n_1047);
   feed_back_reg_45_inst : DFF_X1 port map( D => N115, CK => CLK, Q => 
                           Y_45_port, QN => n_1048);
   feed_back_reg_46_inst : DFF_X1 port map( D => N116, CK => CLK, Q => 
                           Y_46_port, QN => n_1049);
   feed_back_reg_47_inst : DFF_X1 port map( D => N117, CK => CLK, Q => 
                           Y_47_port, QN => n_1050);
   feed_back_reg_48_inst : DFF_X1 port map( D => N118, CK => CLK, Q => 
                           Y_48_port, QN => n_1051);
   feed_back_reg_49_inst : DFF_X1 port map( D => N119, CK => CLK, Q => 
                           Y_49_port, QN => n_1052);
   feed_back_reg_50_inst : DFF_X1 port map( D => N120, CK => CLK, Q => 
                           Y_50_port, QN => n_1053);
   feed_back_reg_51_inst : DFF_X1 port map( D => N121, CK => CLK, Q => 
                           Y_51_port, QN => n_1054);
   feed_back_reg_52_inst : DFF_X1 port map( D => N122, CK => CLK, Q => 
                           Y_52_port, QN => n_1055);
   feed_back_reg_53_inst : DFF_X1 port map( D => N123, CK => CLK, Q => 
                           Y_53_port, QN => n_1056);
   feed_back_reg_54_inst : DFF_X1 port map( D => N124, CK => CLK, Q => 
                           Y_54_port, QN => n_1057);
   feed_back_reg_55_inst : DFF_X1 port map( D => N125, CK => CLK, Q => 
                           Y_55_port, QN => n_1058);
   feed_back_reg_56_inst : DFF_X1 port map( D => N126, CK => CLK, Q => 
                           Y_56_port, QN => n_1059);
   feed_back_reg_57_inst : DFF_X1 port map( D => N127, CK => CLK, Q => 
                           Y_57_port, QN => n_1060);
   feed_back_reg_58_inst : DFF_X1 port map( D => N128, CK => CLK, Q => 
                           Y_58_port, QN => n_1061);
   feed_back_reg_59_inst : DFF_X1 port map( D => N129, CK => CLK, Q => 
                           Y_59_port, QN => n_1062);
   feed_back_reg_60_inst : DFF_X1 port map( D => N130, CK => CLK, Q => 
                           Y_60_port, QN => n_1063);
   feed_back_reg_61_inst : DFF_X1 port map( D => N131, CK => CLK, Q => 
                           Y_61_port, QN => n_1064);
   feed_back_reg_62_inst : DFF_X1 port map( D => N132, CK => CLK, Q => 
                           Y_62_port, QN => n_1065);
   feed_back_reg_63_inst : DFF_X1 port map( D => N133, CK => CLK, Q => 
                           Y_63_port, QN => n_1066);
   n196 <= '0';
   add_90 : Accumulator_DW01_add_0 port map( A(63) => A(63), A(62) => A(62), 
                           A(61) => A(61), A(60) => A(60), A(59) => A(59), 
                           A(58) => A(58), A(57) => A(57), A(56) => A(56), 
                           A(55) => A(55), A(54) => A(54), A(53) => A(53), 
                           A(52) => A(52), A(51) => A(51), A(50) => A(50), 
                           A(49) => A(49), A(48) => A(48), A(47) => A(47), 
                           A(46) => A(46), A(45) => A(45), A(44) => A(44), 
                           A(43) => A(43), A(42) => A(42), A(41) => A(41), 
                           A(40) => A(40), A(39) => A(39), A(38) => A(38), 
                           A(37) => A(37), A(36) => A(36), A(35) => A(35), 
                           A(34) => A(34), A(33) => A(33), A(32) => A(32), 
                           A(31) => A(31), A(30) => A(30), A(29) => A(29), 
                           A(28) => A(28), A(27) => A(27), A(26) => A(26), 
                           A(25) => A(25), A(24) => A(24), A(23) => A(23), 
                           A(22) => A(22), A(21) => A(21), A(20) => A(20), 
                           A(19) => A(19), A(18) => A(18), A(17) => A(17), 
                           A(16) => A(16), A(15) => A(15), A(14) => A(14), 
                           A(13) => A(13), A(12) => A(12), A(11) => A(11), 
                           A(10) => A(10), A(9) => A(9), A(8) => A(8), A(7) => 
                           A(7), A(6) => A(6), A(5) => A(5), A(4) => A(4), A(3)
                           => A(3), A(2) => A(2), A(1) => A(1), A(0) => A(0), 
                           B(63) => n132_port, B(62) => n133_port, B(61) => 
                           n134, B(60) => n135, B(59) => n136, B(58) => n137, 
                           B(57) => n138, B(56) => n139, B(55) => n140, B(54) 
                           => n141, B(53) => n142, B(52) => n143, B(51) => n144
                           , B(50) => n145, B(49) => n146, B(48) => n147, B(47)
                           => n148, B(46) => n149, B(45) => n150, B(44) => n151
                           , B(43) => n152, B(42) => n153, B(41) => n154, B(40)
                           => n155, B(39) => n156, B(38) => n157, B(37) => n158
                           , B(36) => n159, B(35) => n160, B(34) => n161, B(33)
                           => n162, B(32) => n163, B(31) => n164, B(30) => n165
                           , B(29) => n166, B(28) => n167, B(27) => n168, B(26)
                           => n169, B(25) => n170, B(24) => n171, B(23) => n172
                           , B(22) => n173, B(21) => n174, B(20) => n175, B(19)
                           => n176, B(18) => n177, B(17) => n178, B(16) => n179
                           , B(15) => n180, B(14) => n181, B(13) => n182, B(12)
                           => n183, B(11) => n184, B(10) => n185, B(9) => n186,
                           B(8) => n187, B(7) => n188, B(6) => n189, B(5) => 
                           n190, B(4) => n191, B(3) => n192, B(2) => n193, B(1)
                           => n194, B(0) => n195, CI => n196, SUM(63) => 
                           out_add_63_port, SUM(62) => out_add_62_port, SUM(61)
                           => out_add_61_port, SUM(60) => out_add_60_port, 
                           SUM(59) => out_add_59_port, SUM(58) => 
                           out_add_58_port, SUM(57) => out_add_57_port, SUM(56)
                           => out_add_56_port, SUM(55) => out_add_55_port, 
                           SUM(54) => out_add_54_port, SUM(53) => 
                           out_add_53_port, SUM(52) => out_add_52_port, SUM(51)
                           => out_add_51_port, SUM(50) => out_add_50_port, 
                           SUM(49) => out_add_49_port, SUM(48) => 
                           out_add_48_port, SUM(47) => out_add_47_port, SUM(46)
                           => out_add_46_port, SUM(45) => out_add_45_port, 
                           SUM(44) => out_add_44_port, SUM(43) => 
                           out_add_43_port, SUM(42) => out_add_42_port, SUM(41)
                           => out_add_41_port, SUM(40) => out_add_40_port, 
                           SUM(39) => out_add_39_port, SUM(38) => 
                           out_add_38_port, SUM(37) => out_add_37_port, SUM(36)
                           => out_add_36_port, SUM(35) => out_add_35_port, 
                           SUM(34) => out_add_34_port, SUM(33) => 
                           out_add_33_port, SUM(32) => out_add_32_port, SUM(31)
                           => out_add_31_port, SUM(30) => out_add_30_port, 
                           SUM(29) => out_add_29_port, SUM(28) => 
                           out_add_28_port, SUM(27) => out_add_27_port, SUM(26)
                           => out_add_26_port, SUM(25) => out_add_25_port, 
                           SUM(24) => out_add_24_port, SUM(23) => 
                           out_add_23_port, SUM(22) => out_add_22_port, SUM(21)
                           => out_add_21_port, SUM(20) => out_add_20_port, 
                           SUM(19) => out_add_19_port, SUM(18) => 
                           out_add_18_port, SUM(17) => out_add_17_port, SUM(16)
                           => out_add_16_port, SUM(15) => out_add_15_port, 
                           SUM(14) => out_add_14_port, SUM(13) => 
                           out_add_13_port, SUM(12) => out_add_12_port, SUM(11)
                           => out_add_11_port, SUM(10) => out_add_10_port, 
                           SUM(9) => out_add_9_port, SUM(8) => out_add_8_port, 
                           SUM(7) => out_add_7_port, SUM(6) => out_add_6_port, 
                           SUM(5) => out_add_5_port, SUM(4) => out_add_4_port, 
                           SUM(3) => out_add_3_port, SUM(2) => out_add_2_port, 
                           SUM(1) => out_add_1_port, SUM(0) => out_add_0_port, 
                           CO => n_1067);
   U391 : MUX2_X1 port map( A => B(0), B => Y_0_port, S => ACCUMULATE, Z => 
                           n195);
   U392 : MUX2_X1 port map( A => B(1), B => Y_1_port, S => ACCUMULATE, Z => 
                           n194);
   U393 : MUX2_X1 port map( A => B(2), B => Y_2_port, S => ACCUMULATE, Z => 
                           n193);
   U394 : MUX2_X1 port map( A => B(3), B => Y_3_port, S => ACCUMULATE, Z => 
                           n192);
   U395 : MUX2_X1 port map( A => B(4), B => Y_4_port, S => ACCUMULATE, Z => 
                           n191);
   U396 : MUX2_X1 port map( A => B(5), B => Y_5_port, S => ACCUMULATE, Z => 
                           n190);
   U397 : MUX2_X1 port map( A => B(6), B => Y_6_port, S => ACCUMULATE, Z => 
                           n189);
   U398 : MUX2_X1 port map( A => B(7), B => Y_7_port, S => ACCUMULATE, Z => 
                           n188);
   U399 : MUX2_X1 port map( A => B(8), B => Y_8_port, S => ACCUMULATE, Z => 
                           n187);
   U400 : MUX2_X1 port map( A => B(9), B => Y_9_port, S => ACCUMULATE, Z => 
                           n186);
   U401 : MUX2_X1 port map( A => B(10), B => Y_10_port, S => ACCUMULATE, Z => 
                           n185);
   U402 : MUX2_X1 port map( A => B(11), B => Y_11_port, S => ACCUMULATE, Z => 
                           n184);
   U403 : MUX2_X1 port map( A => B(12), B => Y_12_port, S => ACCUMULATE, Z => 
                           n183);
   U404 : MUX2_X1 port map( A => B(13), B => Y_13_port, S => ACCUMULATE, Z => 
                           n182);
   U405 : MUX2_X1 port map( A => B(14), B => Y_14_port, S => ACCUMULATE, Z => 
                           n181);
   U406 : MUX2_X1 port map( A => B(15), B => Y_15_port, S => ACCUMULATE, Z => 
                           n180);
   U407 : MUX2_X1 port map( A => B(16), B => Y_16_port, S => ACCUMULATE, Z => 
                           n179);
   U408 : MUX2_X1 port map( A => B(17), B => Y_17_port, S => ACCUMULATE, Z => 
                           n178);
   U409 : MUX2_X1 port map( A => B(18), B => Y_18_port, S => ACCUMULATE, Z => 
                           n177);
   U410 : MUX2_X1 port map( A => B(19), B => Y_19_port, S => ACCUMULATE, Z => 
                           n176);
   U411 : MUX2_X1 port map( A => B(20), B => Y_20_port, S => ACCUMULATE, Z => 
                           n175);
   U412 : MUX2_X1 port map( A => B(21), B => Y_21_port, S => ACCUMULATE, Z => 
                           n174);
   U413 : MUX2_X1 port map( A => B(22), B => Y_22_port, S => ACCUMULATE, Z => 
                           n173);
   U414 : MUX2_X1 port map( A => B(23), B => Y_23_port, S => ACCUMULATE, Z => 
                           n172);
   U415 : MUX2_X1 port map( A => B(24), B => Y_24_port, S => ACCUMULATE, Z => 
                           n171);
   U416 : MUX2_X1 port map( A => B(25), B => Y_25_port, S => ACCUMULATE, Z => 
                           n170);
   U417 : MUX2_X1 port map( A => B(26), B => Y_26_port, S => ACCUMULATE, Z => 
                           n169);
   U418 : MUX2_X1 port map( A => B(27), B => Y_27_port, S => ACCUMULATE, Z => 
                           n168);
   U419 : MUX2_X1 port map( A => B(28), B => Y_28_port, S => ACCUMULATE, Z => 
                           n167);
   U420 : MUX2_X1 port map( A => B(29), B => Y_29_port, S => ACCUMULATE, Z => 
                           n166);
   U421 : MUX2_X1 port map( A => B(30), B => Y_30_port, S => ACCUMULATE, Z => 
                           n165);
   U422 : MUX2_X1 port map( A => B(31), B => Y_31_port, S => ACCUMULATE, Z => 
                           n164);
   U423 : MUX2_X1 port map( A => B(32), B => Y_32_port, S => ACCUMULATE, Z => 
                           n163);
   U424 : MUX2_X1 port map( A => B(33), B => Y_33_port, S => ACCUMULATE, Z => 
                           n162);
   U425 : MUX2_X1 port map( A => B(34), B => Y_34_port, S => ACCUMULATE, Z => 
                           n161);
   U426 : MUX2_X1 port map( A => B(35), B => Y_35_port, S => ACCUMULATE, Z => 
                           n160);
   U427 : MUX2_X1 port map( A => B(36), B => Y_36_port, S => ACCUMULATE, Z => 
                           n159);
   U428 : MUX2_X1 port map( A => B(37), B => Y_37_port, S => ACCUMULATE, Z => 
                           n158);
   U429 : MUX2_X1 port map( A => B(38), B => Y_38_port, S => ACCUMULATE, Z => 
                           n157);
   U430 : MUX2_X1 port map( A => B(39), B => Y_39_port, S => ACCUMULATE, Z => 
                           n156);
   U431 : MUX2_X1 port map( A => B(40), B => Y_40_port, S => ACCUMULATE, Z => 
                           n155);
   U432 : MUX2_X1 port map( A => B(41), B => Y_41_port, S => ACCUMULATE, Z => 
                           n154);
   U433 : MUX2_X1 port map( A => B(42), B => Y_42_port, S => ACCUMULATE, Z => 
                           n153);
   U434 : MUX2_X1 port map( A => B(43), B => Y_43_port, S => ACCUMULATE, Z => 
                           n152);
   U435 : MUX2_X1 port map( A => B(44), B => Y_44_port, S => ACCUMULATE, Z => 
                           n151);
   U436 : MUX2_X1 port map( A => B(45), B => Y_45_port, S => ACCUMULATE, Z => 
                           n150);
   U437 : MUX2_X1 port map( A => B(46), B => Y_46_port, S => ACCUMULATE, Z => 
                           n149);
   U438 : MUX2_X1 port map( A => B(47), B => Y_47_port, S => ACCUMULATE, Z => 
                           n148);
   U439 : MUX2_X1 port map( A => B(48), B => Y_48_port, S => ACCUMULATE, Z => 
                           n147);
   U440 : MUX2_X1 port map( A => B(49), B => Y_49_port, S => ACCUMULATE, Z => 
                           n146);
   U441 : MUX2_X1 port map( A => B(50), B => Y_50_port, S => ACCUMULATE, Z => 
                           n145);
   U442 : MUX2_X1 port map( A => B(51), B => Y_51_port, S => ACCUMULATE, Z => 
                           n144);
   U443 : MUX2_X1 port map( A => B(52), B => Y_52_port, S => ACCUMULATE, Z => 
                           n143);
   U444 : MUX2_X1 port map( A => B(53), B => Y_53_port, S => ACCUMULATE, Z => 
                           n142);
   U445 : MUX2_X1 port map( A => B(54), B => Y_54_port, S => ACCUMULATE, Z => 
                           n141);
   U446 : MUX2_X1 port map( A => B(55), B => Y_55_port, S => ACCUMULATE, Z => 
                           n140);
   U447 : MUX2_X1 port map( A => B(56), B => Y_56_port, S => ACCUMULATE, Z => 
                           n139);
   U448 : MUX2_X1 port map( A => B(57), B => Y_57_port, S => ACCUMULATE, Z => 
                           n138);
   U449 : MUX2_X1 port map( A => B(58), B => Y_58_port, S => ACCUMULATE, Z => 
                           n137);
   U450 : MUX2_X1 port map( A => B(59), B => Y_59_port, S => ACCUMULATE, Z => 
                           n136);
   U451 : MUX2_X1 port map( A => B(60), B => Y_60_port, S => ACCUMULATE, Z => 
                           n135);
   U452 : MUX2_X1 port map( A => B(61), B => Y_61_port, S => ACCUMULATE, Z => 
                           n134);
   U453 : MUX2_X1 port map( A => B(62), B => Y_62_port, S => ACCUMULATE, Z => 
                           n133_port);
   U454 : MUX2_X1 port map( A => B(63), B => Y_63_port, S => ACCUMULATE, Z => 
                           n132_port);
   U455 : AND2_X1 port map( A1 => out_add_29_port, A2 => RST_n, ZN => N99);
   U456 : AND2_X1 port map( A1 => out_add_28_port, A2 => RST_n, ZN => N98);
   U457 : AND2_X1 port map( A1 => out_add_27_port, A2 => RST_n, ZN => N97);
   U458 : AND2_X1 port map( A1 => out_add_26_port, A2 => RST_n, ZN => N96);
   U459 : AND2_X1 port map( A1 => out_add_25_port, A2 => RST_n, ZN => N95);
   U460 : AND2_X1 port map( A1 => out_add_24_port, A2 => RST_n, ZN => N94);
   U461 : AND2_X1 port map( A1 => out_add_23_port, A2 => RST_n, ZN => N93);
   U462 : AND2_X1 port map( A1 => out_add_22_port, A2 => RST_n, ZN => N92);
   U463 : AND2_X1 port map( A1 => out_add_21_port, A2 => RST_n, ZN => N91);
   U464 : AND2_X1 port map( A1 => out_add_20_port, A2 => RST_n, ZN => N90);
   U465 : AND2_X1 port map( A1 => out_add_19_port, A2 => RST_n, ZN => N89);
   U466 : AND2_X1 port map( A1 => out_add_18_port, A2 => RST_n, ZN => N88);
   U467 : AND2_X1 port map( A1 => out_add_17_port, A2 => RST_n, ZN => N87);
   U468 : AND2_X1 port map( A1 => out_add_16_port, A2 => RST_n, ZN => N86);
   U469 : AND2_X1 port map( A1 => out_add_15_port, A2 => RST_n, ZN => N85);
   U470 : AND2_X1 port map( A1 => out_add_14_port, A2 => RST_n, ZN => N84);
   U471 : AND2_X1 port map( A1 => out_add_13_port, A2 => RST_n, ZN => N83);
   U472 : AND2_X1 port map( A1 => out_add_12_port, A2 => RST_n, ZN => N82);
   U473 : AND2_X1 port map( A1 => out_add_11_port, A2 => RST_n, ZN => N81);
   U474 : AND2_X1 port map( A1 => out_add_10_port, A2 => RST_n, ZN => N80);
   U475 : AND2_X1 port map( A1 => out_add_9_port, A2 => RST_n, ZN => N79);
   U476 : AND2_X1 port map( A1 => out_add_8_port, A2 => RST_n, ZN => N78);
   U477 : AND2_X1 port map( A1 => out_add_7_port, A2 => RST_n, ZN => N77);
   U478 : AND2_X1 port map( A1 => out_add_6_port, A2 => RST_n, ZN => N76);
   U479 : AND2_X1 port map( A1 => out_add_5_port, A2 => RST_n, ZN => N75);
   U480 : AND2_X1 port map( A1 => out_add_4_port, A2 => RST_n, ZN => N74);
   U481 : AND2_X1 port map( A1 => out_add_3_port, A2 => RST_n, ZN => N73);
   U482 : AND2_X1 port map( A1 => out_add_2_port, A2 => RST_n, ZN => N72);
   U483 : AND2_X1 port map( A1 => out_add_1_port, A2 => RST_n, ZN => N71);
   U484 : AND2_X1 port map( A1 => out_add_0_port, A2 => RST_n, ZN => N70);
   U485 : AND2_X1 port map( A1 => out_add_63_port, A2 => RST_n, ZN => N133);
   U486 : AND2_X1 port map( A1 => out_add_62_port, A2 => RST_n, ZN => N132);
   U487 : AND2_X1 port map( A1 => out_add_61_port, A2 => RST_n, ZN => N131);
   U488 : AND2_X1 port map( A1 => out_add_60_port, A2 => RST_n, ZN => N130);
   U489 : AND2_X1 port map( A1 => out_add_59_port, A2 => RST_n, ZN => N129);
   U490 : AND2_X1 port map( A1 => out_add_58_port, A2 => RST_n, ZN => N128);
   U491 : AND2_X1 port map( A1 => out_add_57_port, A2 => RST_n, ZN => N127);
   U492 : AND2_X1 port map( A1 => out_add_56_port, A2 => RST_n, ZN => N126);
   U493 : AND2_X1 port map( A1 => out_add_55_port, A2 => RST_n, ZN => N125);
   U494 : AND2_X1 port map( A1 => out_add_54_port, A2 => RST_n, ZN => N124);
   U495 : AND2_X1 port map( A1 => out_add_53_port, A2 => RST_n, ZN => N123);
   U496 : AND2_X1 port map( A1 => out_add_52_port, A2 => RST_n, ZN => N122);
   U497 : AND2_X1 port map( A1 => out_add_51_port, A2 => RST_n, ZN => N121);
   U498 : AND2_X1 port map( A1 => out_add_50_port, A2 => RST_n, ZN => N120);
   U499 : AND2_X1 port map( A1 => out_add_49_port, A2 => RST_n, ZN => N119);
   U500 : AND2_X1 port map( A1 => out_add_48_port, A2 => RST_n, ZN => N118);
   U501 : AND2_X1 port map( A1 => out_add_47_port, A2 => RST_n, ZN => N117);
   U502 : AND2_X1 port map( A1 => out_add_46_port, A2 => RST_n, ZN => N116);
   U503 : AND2_X1 port map( A1 => out_add_45_port, A2 => RST_n, ZN => N115);
   U504 : AND2_X1 port map( A1 => out_add_44_port, A2 => RST_n, ZN => N114);
   U505 : AND2_X1 port map( A1 => out_add_43_port, A2 => RST_n, ZN => N113);
   U506 : AND2_X1 port map( A1 => out_add_42_port, A2 => RST_n, ZN => N112);
   U507 : AND2_X1 port map( A1 => out_add_41_port, A2 => RST_n, ZN => N111);
   U508 : AND2_X1 port map( A1 => out_add_40_port, A2 => RST_n, ZN => N110);
   U509 : AND2_X1 port map( A1 => out_add_39_port, A2 => RST_n, ZN => N109);
   U510 : AND2_X1 port map( A1 => out_add_38_port, A2 => RST_n, ZN => N108);
   U511 : AND2_X1 port map( A1 => out_add_37_port, A2 => RST_n, ZN => N107);
   U512 : AND2_X1 port map( A1 => out_add_36_port, A2 => RST_n, ZN => N106);
   U513 : AND2_X1 port map( A1 => out_add_35_port, A2 => RST_n, ZN => N105);
   U514 : AND2_X1 port map( A1 => out_add_34_port, A2 => RST_n, ZN => N104);
   U515 : AND2_X1 port map( A1 => out_add_33_port, A2 => RST_n, ZN => N103);
   U516 : AND2_X1 port map( A1 => out_add_32_port, A2 => RST_n, ZN => N102);
   U517 : AND2_X1 port map( A1 => out_add_31_port, A2 => RST_n, ZN => N101);
   U518 : AND2_X1 port map( A1 => out_add_30_port, A2 => RST_n, ZN => N100);

end SYN_Behavioral;
