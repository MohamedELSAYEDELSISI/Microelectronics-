library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.constants.all;
-------------------------------------------------------------------------------

ENTITY Accumulator IS
GENERIC(numBit: INTEGER:= NumBit); 
port (   
      A          : in  std_logic_vector(numBit - 1 downto 0);
      B        : in  std_logic_vector(numBit - 1 downto 0);
      CLK        : in  std_logic;
      RST_n      : in  std_logic;
      ACCUMULATE : in  std_logic;
      Y          : out std_logic_vector(numBit - 1 downto 0));
end Accumulator;


--------------------------------------------------------
--Structural Architecture
--------------------------------------------------------


ARCHITECTURE Structural of Accumulator IS

   component MUX21
	Generic (NBIT: integer:= NumBit; DELAY_MUX: Time:= 0 ns);
	 Port (	A:	In	std_logic_vector(NumBit-1 downto 0) ;
		    B:	In	std_logic_vector(NumBit-1 downto 0);
		    SEL:	In	std_logic;
		    Y:	Out	std_logic_vector(NumBit-1 downto 0));
	 end component;
     

  -- component FD
  --     generic(N :integer := NumBit);
 --	  Port (	D:	In	std_logic_vector(N-1 downto 0);
	 --    CK:	In	std_logic;
	 --    RESET:	In	std_logic;
	 --    Q:	Out	std_logic_vector(N-1 downto 0));
  --end component;

  component reg
  generic(N_bits : integer := NumBit);    
  Port (	D_R:	In	std_logic_vector(N_bits-1 downto 0);
		    Q_R:	Out	std_logic_vector(N_bits-1 downto 0);
		    R_R:	in	std_logic;
           CLK_R :in std_logic);
  end component; 

component RCA
generic (DRCAS : 	Time := 0 ns;
	 DRCAC : 	Time := 0 ns);
	Port (	A:	In	std_logic_vector(NumBit-1 downto 0);
		B:	In	std_logic_vector(NumBit-1 downto 0);
		Ci:	In	std_logic;
		S:	Out	std_logic_vector(NumBit-1 downto 0);
		Co:	Out	std_logic);
end component;

SIGNAL carry_in, carry_out,R_S: std_logic := '0';
SIGNAL out_add, mux_to_add, feed: std_logic_vector(NumBit-1 downto 0):= (others =>'0'); --Internal signals



BEGIN


   Y <= feed; 
   R_S <= not(RST_n); 

   Multiplexer: MUX21  generic map(NBIT=> NumBit, DELAY_MUX=> 0 ns)
                                                                
                       port map (A => feed, B => B, SEL=> ACCUMULATE, Y=> mux_to_add);

 
   ADDER:  RCA  generic map(DRCAS=> 0 ns, DRCAC=> 0 ns)

                port map (A => A,  B => mux_to_add, Ci => carry_in,  S => out_add, Co => open);


   --reG: FD port map (D => out_add,  CK => CLK , RESET => R_S,  Q=> feed) ;
    
    meg : reg port map (D_R => out_add,  CLK_R => CLK ,  R_R => R_S,  Q_R=> feed) ;


END Structural;

ARCHITECTURE Behavioral of Accumulator IS

   component MUX21
	Generic (NBIT: integer:= NumBit; DELAY_MUX: Time:= 0 ns);
	 Port (	A:	In	std_logic_vector(NumBit-1 downto 0) ;
		    B:	In	std_logic_vector(NumBit-1 downto 0);
		    SEL:	In	std_logic;
		    Y:	Out	std_logic_vector(NumBit-1 downto 0));
	 end component;
     

 component FD
      generic(N :integer := NumBit);
	  Port (	D:	In	std_logic_vector(N-1 downto 0);
	    CK:	In	std_logic;
	    RESET:	In	std_logic;
	    Q:	Out	std_logic_vector(N-1 downto 0));
 end component;

 -- component reg
 -- generic(N_bits : integer := NumBit);    
 -- Port (	D_R:	In	std_logic_vector(N_bits-1 downto 0);
	--	    Q_R:	Out	std_logic_vector(N_bits-1 downto 0);
	--	    R_R:	in	std_logic;
      --      CLK_R :in std_logic);
 -- end component; 

component RCA
generic (DRCAS : 	Time := 0 ns;
	 DRCAC : 	Time := 0 ns);
	Port (	A:	In	std_logic_vector(NumBit-1 downto 0);
		B:	In	std_logic_vector(NumBit-1 downto 0);
		Ci:	In	std_logic;
		S:	Out	std_logic_vector(NumBit-1 downto 0);
		Co:	Out	std_logic);
end component;
signal R_S : std_logic := '0' ;
SIGNAL out_add, mux_to_add, feed_back: std_logic_vector(Numbit-1 downto 0); --Internal signals

   BEGIN
   R_S <= not(RST_n); 
   Y<=feed_back;
   MULTIPLEXER: process ( A , B , ACCUMULATE,feed_back)
                BEGIN
					   IF ACCUMULATE = '1' THEN 
					   mux_to_add <= feed_back;
					   elsif ACCUMULATE = '0' THEN
					   mux_to_add <= B;
					   end if ;
					   end process;
					  

    ADDER:  process ( A , mux_to_add)
            BEGIN
					 out_add <= (A + mux_to_add);
					 end process;


	REG:   process(CLK,R_S,out_add)
	       BEGIN
			  IF CLK'event and CLK='1' THEN -- positive edge triggered:
				IF R_S='1' THEN -- active high reset 
				  feed_back <= (OTHERS=>'0'); 
				ELSE
				  feed_back <= out_add; -- input is written on output
				END IF;
			 END IF;
			end process;

END Behavioral;



CONFIGURATION CFG_Acc_Strctural of Accumulator IS
  for Structural
    -- Configuration for MUX21
    for Multiplexer: MUX21
      use configuration WORK.CFG_MUX21_STRUCTURAL;  -- Assuming you want to use the STRUCTURAL architecture of MUX21
    end for;

    -- Configuration for RCA (Ripple Carry Adder)
    for ADDER: RCA
      use configuration WORK.CFG_RCA_STRUCTURAL;  -- Assuming you want to use the STRUCTURAL architecture of RCA
    end for;

   
    -- for reG: FD
    --  use configuration WORK.CFG_FD_PIPPO;  -- Assuming you want to use the PIPPO architecture of FD
    --end for;
  
   for meg : reg 
  use configuration WORK.CFG_REG_ST;  -- Assuming you want to use the PIPPO architecture of FD
  end for;
   end for;

end CFG_Acc_Strctural;

configuration CFG_Acc_Behavioral of Accumulator is 

  for Behavioral
  end for;

end CFG_Acc_Behavioral;

