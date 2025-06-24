library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use WORK.constants.all;

entity CSB is
        Generic (NBIT: integer:= NumBit);
	Port (	    A          : in  std_logic_vector(NumBit- 1 downto 0);
                B          : in  std_logic_vector(NumBit- 1 downto 0);
                Ci_s       : in  std_logic;  --carryin of last stage to select
                S_4        : out std_logic_vector(NumBit - 1 downto 0);
                Cout       : out std_logic);  
end CSB;


architecture STRUCTURAL of CSB is

  signal RCA_OUT_1 : std_logic_vector(NBIT-1 downto 0);
  signal RCA_OUT_2 : std_logic_vector(NBIT-1 downto 0);
  signal C_RCA1: std_logic;
  signal C_RCA2: std_logic;
  signal CO1: std_logic;
  signal CO2: std_logic;
  

   component RCA
	Generic (NBIT_S:  integer:= NumBit
             --DRCAS : 	Time := DRCAS;
	         --DRCAC : 	Time := DRCAC
);
	Port (	A:	In	std_logic_vector(NBIT_S-1 downto 0);
		B:	In	std_logic_vector(NBIT_S-1 downto 0);
		Ci:	In	std_logic;
		S:	Out	std_logic_vector(NBIT_S-1 downto 0);
		Co:	Out	std_logic);
    end component; 

    component MUX21	
       Generic (NBIT: integer:= NumBit
		--DELAY_MUX: Time:= tp_mux
); 
       Port (A,B: In std_logic_vector(NBIT-1 downto 0);
             SEL: In std_logic;
             Y:	Out  std_logic_vector(NBIT-1 downto 0)); 
	end component;

begin

      C_RCA1 <= '0';
      C_RCA2 <= '1'; 
      
      V1: MUX21 
      Port Map (RCA_OUT_1,RCA_OUT_2,Ci_s,S_4);
      
      V2:RCA
      Port Map (A=>A,B=>B,Ci=>C_RCA1,S=>RCA_OUT_1);

      V3:RCA
      Port Map (A=>A,B=>B,Ci=>C_RCA2,S=>RCA_OUT_2);

end STRUCTURAL;


configuration CFG_CSB_STRUCTURAL of CSB is
	for STRUCTURAL
        for all: MUX21
		   use configuration WORK.CFG_MUX21_STRUCTURAL;
		end for;

        for all: RCA
		   use configuration WORK.CFG_RCA_STRUCTURAL;
		end for;
	end for;
end CFG_CSB_STRUCTURAL;
