----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.04.2025 22:19:48
-- Design Name: 
-- Module Name: Logix_control - Behavioral
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

entity Logix_control_rf is
    
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
           addr_1, addr_2 , addr_r: out std_logic_vector( address_length-1 downto 0);
           cwp_o : out std_logic_vector(1 downto 0));
	       
end Logix_control_rf;

architecture Behavioral of Logix_control_rf is

component register_file is
generic (address_length: integer:=5;
Data_parallelism: integer:=64);
 port (CLK: 	IN std_logic;
       RESET: 	IN std_logic;
	   ENABLE: 	IN std_logic;
	   RD1: 	IN std_logic;
	   RD2: 	IN std_logic;
	   WR: 		IN std_logic;
	   ADD_WR: 	IN std_logic_vector(address_length-1 downto 0);
	   ADD_RD1: IN std_logic_vector(address_length-1 downto 0);
	   ADD_RD2: IN std_logic_vector(address_length-1 downto 0);
	   DATAIN: 	IN std_logic_vector(Data_parallelism-1 downto 0);
       OUT1: 	OUT std_logic_vector(Data_parallelism-1 downto 0);
	   OUT2: 	OUT std_logic_vector(Data_parallelism-1 downto 0));
end component register_file;
signal addr_r1 , addr_r2 , addr_w: std_logic_vector(address_length-1 downto 0);
constant width_number_rf : integer := ((M_1*3)*F)+N_1;
type state is (select_s,call_s,ret_s,spill_stage,fill_stage);
signal swp, cwp : integer;
signal cansave: integer;
signal canrestore: integer;
constant empty_all_window_cansave : integer := F+1;  --f+1
constant  empty_all_window_s_canrestore: integer := 0;
signal next_state: state; 
signal counter : integer := 0;
signal rest_s: std_logic; 
begin

process(clock)
begin 
   if(rising_edge(clock)) 
     then
       if(rest = '1')
         then
              swp <= 0;
              cwp <= F-1; 
              fill <= '0';
              spill <= '0';  
              rest_s <= '1';             
              cansave <= empty_all_window_cansave; 
              canrestore <= empty_all_window_s_canrestore;
              next_state <= select_s;
              
     elsif(enable <= '1')
      then
      rest_s <= '0'; 
      case next_state is            
         when select_s=> 
             if(call='1')
                 then
                      if(cansave = 0)
                           then 
                              spill <= '1';
                              swp  <= (swp+1) mod empty_all_window_cansave ;         
                              cansave <= cansave+1; if(cansave > F-1) then cansave <= F; end if;
                              canrestore <= canrestore-1;if(canrestore < 1) then canrestore <= 0; end if;
                              next_state <= spill_stage ;
                   
                      else
                              cwp <= ((cwp + 1)mod empty_all_window_cansave);
                              cansave <= cansave-1;if(cansave < 1) then cansave <= 0; end if;
                              canrestore <= canrestore+1;  if(canrestore > F-1) then canrestore <= F; end if;
                              next_state <= select_s ;
                      end if;   
                      
                        
             elsif(ret='1') 
                 then 
                    if(canrestore = 0)
                      then
                              fill <= '1';
                              swp  <= (swp-1) mod empty_all_window_cansave ;           --here 
                              cansave <= cansave+1; if(cansave > F-1) then cansave <= F; end if; 
                              canrestore <= canrestore-1;if(canrestore < 1) then canrestore <= 0; end if;
                              next_state <=  fill_stage;
                      
                       
                     else
                              cwp <= ((cwp - 1)mod empty_all_window_cansave);
                              cansave <= cansave+1;if(cansave > F-1) then cansave <= F; end if; 
                              canrestore <= canrestore-1;if(canrestore < 1) then canrestore <= 0; end if;
                              next_state <= select_s; 
         
                   end if;
                   
           end if; 
         
         when spill_stage => 
           memory_bus <= data_in ;
           if(memory_response ='1')
             then 
               spill <= '0';
               memory_bus <=(others =>'Z');
               next_state <=  select_s;
           else 
               next_state <=  spill_stage;
           end if; 
         
      
          when fill_stage => 
           memory_bus <= (others=>'1');  --just to simulate anything comes from memory to RF through memeory_BuS
           if(memory_response = '1')
             then 
             fill <= '0';
             memory_bus <=(others =>'0');    --not z to just see difference and not confused whether from spill or fill but for sure it should be Z
             next_state <=  select_s;
           else 
               next_state <=  fill_stage;
           end if; 
           when others =>
              swp <= 0;
              cwp <= F; 
              fill <= '0';
              spill <= '0';  
              rest_s <= '1';             
              cansave <= empty_all_window_cansave; 
              canrestore <= empty_all_window_s_canrestore;
              next_state <= select_s;
      end case;   
   end if;
  end if;   
end process; 

process(address_r_1,address_r_2,address_w,cwp)
 variable convert_int_r_1 : integer;
 variable convert_int_r_2 : integer;
 variable convert_int_w_1 : integer;
begin 
   convert_int_r_1 := TO_INTEGER(unsigned(address_r_1)) ;
   convert_int_r_2 := TO_INTEGER(unsigned(address_r_2));
   convert_int_w_1 := TO_INTEGER(unsigned(address_w));
   if(convert_int_r_1 < N_1)
     then
     addr_r1 <= address_r_1;
   else
     addr_r1 <=  std_logic_vector(TO_UNSIGNED(cwp*(3*M_1)+ convert_int_r_1,address_length));
   end if; 
    
   if(convert_int_r_2 < N_1 )
     then 
       addr_r2 <= address_r_2;
   else
      
     addr_r2 <=  std_logic_vector(TO_UNSIGNED(cwp*(3*M_1)+ convert_int_r_2,address_length));
   end if;  
  
     
   if(convert_int_w_1 < N_1)
    then
        addr_w <=  address_w;
  else
       addr_w <=  std_logic_vector(TO_UNSIGNED(cwp*(3*M_1)+ convert_int_w_1,address_length));
   end if;

 addr_1 <= addr_r1;
 addr_2 <= addr_r2;
 addr_r <= addr_w;
          
end process; 
cwp_o <= std_logic_vector(to_unsigned(cwp,2));                                                                 

L: register_file port map( clock , rest_s, enable, RD1, RD2,  WR, addr_w, addr_r1, addr_r2, data_in, out_1,out_2 );   

end Behavioral;

