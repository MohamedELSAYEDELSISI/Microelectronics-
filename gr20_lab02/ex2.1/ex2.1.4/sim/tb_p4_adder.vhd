library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity TB_P4_ADDER is
end TB_P4_ADDER;

architecture TEST of TB_P4_ADDER is
	
	-- P4 component declaration
	component P4_ADDER is
		generic (
			NBIT :		integer := 32);
		port (
			A :	in	std_logic_vector(NBIT-1 downto 0);
			B :	in	std_logic_vector(NBIT-1 downto 0);
			Cin :	in	std_logic;
			S :     out	std_logic_vector(NBIT-1 downto 0);
			Cout :	out	std_logic);
	end component;
        
        constant NBIT: integer := 32;

        signal A_S: std_logic_vector(NBIT-1 downto 0);
        signal B_S: std_logic_vector(NBIT-1 downto 0);
        signal Cin_S: std_logic;
        signal S_S: std_logic_vector(NBIT-1 downto 0);
        signal Cout_S: std_logic;
   	
begin
    DUT: P4_ADDER port map(A_S,B_S,Cin_S,S_S,Cout_S);

    process
    begin
    A_S <= "00010010001001000010000101000001";
    B_S <= "01110100000101000010000101100011";
    Cin_S <= '0';
    wait for 100 ns;

    Cin_S <= '1';
    wait for 100 ns;
    
    A_S <= "00000011110000100101100001100100"; 
    B_S <= "00011100010000001011000000011100";
    Cin_S <= '0';
    wait for 100 ns;

    Cin_S <= '1';
    wait for 100 ns;

    A_S <= "10000000000000000000000000000000"; 
    B_S <= "10000000000000000000000000000000";   
    wait;
    end process;
	
end TEST;

configuration CFG_P4_TEST of TB_P4_ADDER is
   for TEST
     for DUT: P4_ADDER
        use configuration WORK.CFG_P4_ADDER_STRUCTURAL;
     end for;
   end for;
end CFG_P4_TEST;
