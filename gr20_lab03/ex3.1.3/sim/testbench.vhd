library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;
use WORK.all;

entity TB_WINDOWED_REGISTERFILE is
end TB_WINDOWED_REGISTERFILE;

architecture TESTA of TB_WINDOWED_REGISTERFILE is

 component Logix_control_rf is
    
    generic(n_data:integer := 64;
            address_length :integer := 5;
            N_1: integer := 8;
            M_1: integer := 2;
            F: integer := 3 ); 
            
	port ( rest,enable,clock : in std_logic;
	       call,ret,memory_response : in std_logic;
	       RD1,RD2,WR : in std_logic;
	       data_in :in std_logic_vector( n_data-1 downto 0 );
	       memory_bus : inout std_logic_vector( n_data-1 downto 0 );
	       address_r_1,address_r_2,address_w: in std_logic_vector( address_length-1 downto 0 );
	       out_1,out_2 : out std_logic_vector( n_data-1 downto 0 );
	       fill,spill :  out std_logic;
           addr_1, addr_2 ,addr_r: out std_logic_vector( address_length-1 downto 0);
           cwp_o : out std_logic_vector(1 downto 0));
	       
end component;

       constant n_data:integer := 64;
       constant address_length :integer := 5;
       constant N_1: integer := 8;
       constant M_1: integer := 2;
       constant F: integer := 3 ;
       signal rest_s : std_logic; 
       signal enable_s : std_logic; 
       signal clock_s : std_logic :='0'; 
       signal call_s : std_logic;
       signal ret_s : std_logic;
       signal memory_response_s : std_logic;
       signal RD1_s,RD2_s,WR_s : std_logic;
       signal data_in_s : std_logic_vector( n_data-1 downto 0 );
       signal address_r_1_S , address_r_2_S ,address_w_s : std_logic_vector( address_length-1 downto 0 );
       signal out_1_s ,out_2_s : std_logic_vector( n_data-1 downto 0 );
       signal fill_s,spill_s:  std_logic;
       signal  memory_bus_s : std_logic_vector( n_data-1 downto 0 );
       signal  addr_1_s, addr_2_S ,addr_r_s: std_logic_vector( address_length-1 downto 0);
       signal  cwp_o_s: std_logic_vector( 1 downto 0);

begin 

L: Logix_control_rf PORT MAP ( rest=> rest_s ,enable => enable_s, clock => clock_s, call => call_s, ret => ret_s ,memory_response =>  memory_response_s, RD1=> RD1_s, RD2 => RD2_s , WR => WR_s, address_r_1 => address_r_1_S , address_w => address_w_s, address_r_2 => address_r_2_S , data_in => data_in_s, out_1=> out_1_s , out_2=> out_2_s,  fill=> fill_s, spill=> spill_s, memory_bus =>memory_bus_s, addr_1 => addr_1_s, addr_2 => addr_2_S , cwp_o => cwp_o_s,addr_r =>addr_r_s);

	process
    begin 
    rest_s <= '1','0' after 15 ns;
	enable_s <= '0','1' after 10 ns;
    call_s  <= '0', '1' after 15 ns, '0' after 40 ns, '1' after 80 ns;   
    ret_s  <='0', '1' after 40 ns, '0' after 80 ns, '1' after 90 ns;

    memory_response_s <=  '1';

	WR_s <= '0','1' after 20 ns, '0' after 40 ns ,'1' after 80 ns;
	RD1_s <= '0','1' after 40 ns, '0' after 80 ns, '1' after 100 ns; 
    RD2_s <= '0','1' after 40 ns, '0' after 80 ns, '1' after 100 ns; 
	address_r_1_S <= "01110", "01011" after 41 ns;
    address_r_2_S <= "01111", "01110" after 41 ns;
    address_w_s <=   "01110", "01111" after 41 ns;
	data_in_s<=(others => '1') after 20 ns,(others => '1')after 35 ns ;
    wait;
    end process;

	PCLOCK : process(clock_s)
	begin
		clock_s <= not(clock_s) after 0.5 ns;	
	end process;

end TESTA;


