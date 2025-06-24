library IEEE;
use IEEE.std_logic_1164.all;
use work.constants.all; 

entity tb_reg is
end tb_reg;

architecture Test of tb_reg is
   constant N_bits : integer := Nbit;  

   component reg
      generic(N_bits : integer);  
      Port (
         D_R   : In  std_logic_vector(N_bits-1 downto 0);
         Q_R   : Out std_logic_vector(N_bits-1 downto 0);
         R_R   : In  std_logic;
         CLK_R : In  std_logic
      );
   end component; 

   signal I_S   : std_logic_vector(N_bits-1 downto 0);
   signal O_S   : std_logic_vector(N_bits-1 downto 0):= (others=>'0');
   signal CLK_S : std_logic;
   signal RST_S : std_logic;
   signal clock_period: time := 20 ns;

begin
   M : reg 
      generic map(N_bits => N_bits) 
      port map( 
         D_R   => I_S,
         Q_R   => O_S,
         R_R   => RST_S,
         CLK_R => CLK_S
      ); 


   process
   begin 
      CLK_S <= '0';
      wait for clock_period/2; 
      CLK_S <= '1';
      wait for clock_period/2; 
   end process; 


   process
   begin
      RST_S <= '1';
      I_S <= (others => '0');
      wait for clock_period/2;
      wait for clock_period/4; 
      RST_S <= '0';
      I_S <= "1010"; 
      wait for clock_period; 
     I_S <= "1011"; 
      wait for clock_period;  
      I_S <= "1001"; 
     wait for clock_period; 
      I_S <= "1011";  
     wait for clock_period; 
      RST_S <= '1';
     wait for  clock_period; 
     RST_S <= '0';
     wait for clock_period/2; 
      wait; 
   end process; 

end Test;

configuration tb of tb_reg is
   for Test
      for M : reg
         use configuration work.CFG_REG_BE;  -- Ensure CFG_REG_ST exists
      end for;
   end for; 
end tb;
