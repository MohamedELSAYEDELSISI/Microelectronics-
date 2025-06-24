library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

entity MULTIPLIER_tb is
end MULTIPLIER_tb;


architecture TEST of MULTIPLIER_tb is

 constant numBit : positive := 32;    -- :=8  --:=16    
 constant counter : natural  := 10;    -- :=8  --:=16    

 component BOOTHMUL is
 generic(N : integer := numBit; 
         N_GR : integer := 2*numBit);
  Port ( Multiplicand_1: in std_logic_vector(N-1 downto 0);
        Multiplier_2: in std_logic_vector(N-1 downto 0);
        result: out std_logic_vector(N_GR-1 downto 0 ));
end component;
  --  input	 
  signal A_mp_i : std_logic_vector(numBit-1 downto 0) := (others => '0');
  signal B_mp_i : std_logic_vector(numBit-1 downto 0) := (others => '0');

  -- output
  signal Y_mp_i : std_logic_vector(2*numBit-1 downto 0);
begin

BoothU : BOOTHMUL  generic map (
            N => numBit,
            N_GR => 2*numBit
        ) port map( Multiplicand_1 => A_mp_i, Multiplier_2 => B_mp_i ,  result => Y_mp_i  );
-- PROCESS FOR TESTING TEST - COMLETE CYCLE ---------
  test: process
  begin

    -- cycle for operand A
    NumROW : for i in 0 to 2**(counter)-1 loop

        -- cycle for operand B
    	NumCOL : for i in 0 to 2**(counter)-1 loop
	    wait for 10 ns;
	    B_mp_i <= std_logic_vector(unsigned(B_mp_i) + 1);
	end loop NumCOL ;
        
	A_mp_i <=std_logic_vector(unsigned(A_mp_i) + 1); 	
    end loop NumROW ;

    wait;          
  end process test;



end TEST;
