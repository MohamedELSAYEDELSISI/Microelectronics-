----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.04.2025 19:52:07
-- Design Name: 
-- Module Name: booth - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all; 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BOOTHMUL is
 generic(N : integer := 32; 
         N_GR : integer := 64); -- 2*N
 Port ( Multiplicand_1 : in std_logic_vector(N-1 downto 0);
        Multiplier_2: in std_logic_vector(N-1 downto 0);
        result: out std_logic_vector(N_GR-1 downto 0 ));
end BOOTHMUL;

 architecture Behavioral of BOOTHMUL is
    signal ones : integer := 1; 
    begin
    process(Multiplicand_1,Multiplier_2)
    variable Multiplicand :  unsigned(N-1 downto 0);
    variable  Multiplier: unsigned(N-1 downto 0);

    variable Multiplicand_N_1: unsigned(N-1 downto 0);
    variable A_Q : unsigned(N_GR downto 0); 
    variable A_T : std_logic;
    variable Multiplicand_N_2 : unsigned(N-1 downto 0);
    begin 
        Multiplicand :=unsigned(Multiplicand_1) ; 
        Multiplier := unsigned(Multiplier_2);
        Multiplicand_N_1 := (not Multiplicand);
        A_Q:=(others => '0'); 
        A_Q(N downto 1) := Multiplier; 
        A_T := '0'; 
        Multiplicand_N_2 := unsigned( unsigned(Multiplicand_N_1 ) + 1 ); --second Compliemant for Multiplicand
    for i in N downto 1 loop
          
           if (A_Q(1 downto 0) = "00" or A_Q(1 downto 0) = "11") then  -- shift to right with one offeset magntiude 
              A_T := A_Q(N_GR);
              A_Q := (A_T &  A_Q(N_GR downto 1));       
            
           elsif(A_Q(1 downto 0) = "10") then  -- subtract 
               A_Q( N_GR downto N+1 ) := unsigned(unsigned(A_Q( N_GR downto N+1 )) +  unsigned(Multiplicand_N_2));
               A_T := A_Q(N_GR);
               A_Q := (A_T &  A_Q(N_GR downto 1));   
    
           elsif(A_Q(1 downto 0) = "01") then -- add 
               A_Q( N_GR downto N+1 ) := unsigned(unsigned(A_Q( N_GR downto N+1 )) + unsigned(Multiplicand));
                A_T := A_Q(N_GR);
                A_Q := (A_T &  A_Q(N_GR downto 1));   
          end if;
             
            result <= std_logic_vector(A_Q(N_GR downto 1));  -- final result 
    
    end loop;
          
    end process; 

end Behavioral;

