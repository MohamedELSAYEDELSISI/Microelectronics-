library IEEE;
use IEEE.std_logic_1164.all; --  libreria IEEE con definizione tipi standard 
use work.constants.all; 

entity reg is
    generic(N_bits : integer := Nbit);
	Port (	D_R:	In	std_logic_vector(N_bits-1 downto 0);
		    Q_R:	Out	std_logic_vector(N_bits-1 downto 0);
		    R_R:	in	std_logic;
            CLK_R :in std_logic);
end reg;


architecture ST of reg is
   
   signal Q_S : std_logic_vector(N_bits-1 downto 0);
   component FD 
	Port (	D:	In	std_logic;
		   CK:	In	std_logic;
		   RESET:	In	std_logic;
		   Q:	Out	std_logic);
    end component;

begin

	U1: for i in 0 to N_bits-1 generate
        U2: fd port map(D_R(i),CLK_R,R_R,Q_S(i));
    end generate;  
    Q_R <= Q_S;

end ST;

architecture BE of reg is

begin
   
  -- Q_R <= D_R when rising_edge(CLK_R) else
      --  (others=>'0') when R_R ='1';
          
   Q_R <= D_R when rising_edge(CLK_R) and R_R ='0' else
          (others=>'0') when R_R ='1' and rising_edge(CLK_R) ;
   
end BE;


configuration CFG_REG_ST of reg is
	for ST
     for all: FD 
     use configuration work.CFG_FD_PIPPO; 
	end for;
   end for;
end CFG_REG_ST;

configuration CFG_REG_BE  of reg is
	for BE
	end for;
end CFG_REG_BE;











