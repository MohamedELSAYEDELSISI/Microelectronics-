library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CARRY_GENERATOR is
      generic (NBIT : integer := 32;
	       NBIT_PER_BLOCK: integer := 4);
      
      port (A :	in std_logic_vector(NBIT-1 downto 0);
            B : in std_logic_vector(NBIT-1 downto 0);
	    Cin : in std_logic;
	    Co : out std_logic_vector((NBIT/NBIT_PER_BLOCK)-1 downto 0));
      
end CARRY_GENERATOR;


architecture STRUCTURAL of CARRY_GENERATOR is

--Simple function to compute the log in base 2 of a number
--the round parameter allows to compute log of not even numbers
  
function log2 (A : integer; round: natural) return integer is       
 variable N : integer := 0;
 variable As : integer := A;
 begin
   while As >= 2 loop
      As:= (As+round) / 2;
      N := N+1;
   end loop;
   return N;
end function log2;

function right_wire(col, row : natural) return natural is
  variable ColU: unsigned(NBIT-1 downto 0);
  begin
    ColU := to_unsigned(col, NBIT);
    if(row > 1) then
       ColU(row-2 downto 0) := (others => '0');
    end if;
    return to_integer(Colu);
end function right_wire;

--The condition function check if we need to put a block in the branch:
--based on three condition:
--1:Binary codification of the column (every 1 is a possible place)
--2:Blocks at multiple of 2**row are mandatory 
--3:Blocks at multiple of NBIT_PER_BLOCK are required

function condition(col, row : natural; BPB: integer) return boolean is
  variable ColU : unsigned(NBIT-1 downto 0);
  begin
    ColU := to_unsigned(col, NBIT);
    if (ColU(row-1)= '1') then
      if (((col+1) mod 2**row)=0 or ((col+1) mod BPB)=0) then
        return true;
      end if;
    end if;
    return false;
end function condition;

--The verify function is used to decide which block we need to use

function verify(col,row : natural; BPB: integer) return integer is
  variable ty : integer := 0;
  variable ColU : unsigned(NBIT-1 downto 0);
  begin
    ColU := to_unsigned(col, NBIT);
    if condition(col, row, BPB) then
       if (row-1 = log2(col, 0)) then
         ty := 2;                    --last row --G block 
                                  
       else
         ty := 1;                    --not in the last row -- PG_BLOCK 
                                     
       end if;
    end if;
    return ty;
end function verify;

component NETWORK is

       port( A: in std_logic;
             B: in std_logic;
             P: out std_logic;
             G: out std_logic);
       
end component;
         
component PG_BLOCK is

       port(Pik: in std_logic;
            Gik: in std_logic;
            Gkj: in std_logic;
            Pkj: in std_logic;
            Pout: out std_logic;
            Gout: out std_logic);
  
end component;

component G_BLOCK is

       port(Gik: in std_logic;
            Pik: in std_logic;
            Gkj: in std_logic;
            Gout: out std_logic);
         
end component;

type vector is array (log2(NBIT,1) downto 0) of std_logic_vector(NBIT-1 downto 0);

signal wire_P: vector;
signal wire_G: vector;

begin
  
--Start of PG_BLOCK Network generation

    wire_G(0)(0) <= Cin or (A(0) and B(0));
    wire_P(0)(0) <= '0';
   PG_NETWORK: for i in 1 to NBIT-1 generate
      NET_B:NETWORK port map(A(i),B(i),wire_P(0)(i),wire_G(0)(i));  
    end generate PG_NETWORK;

--End of PG_BLOCK Network generation

--Start of Carry Tree
    
    CARRY_TREE:for col in 0 to NBIT-1 generate
      layer: for row in 1 to log2(NBIT,1) generate

        PG_BLOCKs: if (verify(col, row, NBIT_PER_BLOCK) = 1) generate
          PG_BLOCK0 : PG_BLOCK port map (wire_P(row-1)(col),
                             wire_G(row-1)(col),
                             wire_G(row-1)(right_wire(col, row)-1),
                             wire_P(row-1)(right_wire(col, row)-1),
                             wire_P(row)(col),
                             wire_G(row)(col));
        end generate PG_BLOCKs;

        Gs: if (verify(col, row, NBIT_PER_BLOCK) = 2) generate
          G0: G_BLOCK port map (wire_G(row-1)(col),
                                  wire_P(row-1)(col),
                                  wire_G(row-1)(right_wire(col, row)-1),
                                  wire_G(row)(col));
        end generate Gs;
        
        bypass: if (verify(col, row, NBIT_PER_BLOCK) = 0) generate
          wire_P(row)(col) <= wire_P(row-1)(col);
          wire_G(row)(col) <= wire_G (row-1)(col);
        end generate bypass;
        
      end generate layer;
    end generate CARRY_TREE;

--End of Carry Tree

--Plot the correct carry to the OutPut signal
    
    CARRY_SELECT : for i in 1 to NBIT/NBIT_PER_BLOCK generate
      Co(i-1) <= wire_G(log2(NBIT,1))((NBIT_PER_BLOCK*i)-1);
    end generate CARRY_SELECT;

    
    
end STRUCTURAL;

configuration CFG_CARRY_GENERATOR_STRUCTURAL of CARRY_GENERATOR is
  for STRUCTURAL
    for PG_NETWORK
      for all: NETWORK
          use configuration WORK.CFG_NETWORK_BEHAVIORAL;
      end for;
    end for;
    for CARRY_TREE
      for layer
        for PG_BLOCKs
          for all: PG_BLOCK
            use configuration WORK.CFG_PG_BLOCK_BEHAVIORAL;
          end for;
        end for;
        for Gs
          for all: G_BLOCK
            use configuration WORK.CFG_G_BLOCK_BEHAVIORAL;
          end for;
        end for;
      end for;
    end for;
  end for;
end CFG_CARRY_GENERATOR_STRUCTURAL;
