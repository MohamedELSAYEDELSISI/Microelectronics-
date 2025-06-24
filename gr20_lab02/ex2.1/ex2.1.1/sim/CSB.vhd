library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.constants.all;



entity CSB is

  Generic (NBIT: integer:= NumBit);
  Port (	    A          : in  std_logic_vector(NumBit- 1 downto 0);
                B          : in  std_logic_vector(NumBit- 1 downto 0);
                Ci_s       : in  std_logic;  --carryin of last stage to select
                S_4        : out std_logic_vector(NumBit - 1 downto 0));
                --Cout       : out std_logic);  
end CSB;
-------------------------------------------------------------------------------
-- Structural Architecture
-------------------------------------------------------------------------------

architecture struct of CSB is

   component RCA
	Generic (NBIT_S:  integer:= NumBit;
             DRCAS : 	Time := DRCAS;
	         DRCAC : 	Time := DRCAC
);
	Port (	A:	In	std_logic_vector(NBIT_S-1 downto 0);
		B:	In	std_logic_vector(NBIT_S-1 downto 0);
		Ci:	In	std_logic;
		S:	Out	std_logic_vector(NBIT_S-1 downto 0);
		Co:	Out	std_logic);
    end component; 

    component MUX21	
       Generic (NBIT: integer:= NumBit;
		DELAY_MUX: Time:= tp_mux
); 
       Port (A,B: In std_logic_vector(NBIT-1 downto 0);
             SEL: In std_logic;
             Y:	Out  std_logic_vector(NBIT-1 downto 0)); 
	end component;

  signal RCA_OUT_1, RCA_OUT_2 : std_logic_vector(NBIT-1 downto 0); 
  for RCA_1   : RCA use entity work.RCA (STRUCTURAL);
  for RCA_2   : RCA use entity work.RCA (STRUCTURAL);
  for MUX21_1 : MUX21 use entity work.MUX21 (BEHAVIORAL); 



begin  -- architecture struct

      MUX21_1: MUX21 
      Port Map (RCA_OUT_2,RCA_OUT_1,Ci_s,S_4);
      
      RCA_1:RCA
      Port Map (A=>A,B=>B,Ci=>'0',S=>RCA_OUT_1);

      RCA_2:RCA
      Port Map (A=>A,B=>B,Ci=>'1',S=>RCA_OUT_2);

end architecture struct;


--configuration CFG_CSB_GEN_STRUCT of CSB is

--  for struct
--    for RCA_1 : RCA
 --     use configuration work.CFG_RCA_STRUCTURAL;
 --   end for;

 --   for RCA_2 : RCA
 --     use configuration work.CFG_RCA_STRUCTURAL;    
--end for;

 --   for MUX21_1 : MUX21
 --     use configuration work.CFG_MUX21_BEHAVIORAL;
 --   end for;
 -- end for;

 -- end configuration CFG_CSB_GEN_STRUCT;
