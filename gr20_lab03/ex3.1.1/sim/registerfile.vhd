library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;
use WORK.all;

entity register_file is
generic (Address_lenght: integer:=5;
Data_parallelism: integer:=64);
 port (CLK: 	IN std_logic;
       RESET: 	IN std_logic;
	   ENABLE: 	IN std_logic;
	   RD1: 	IN std_logic;
	   RD2: 	IN std_logic;
	   WR: 		IN std_logic;
	   ADD_WR: 	IN std_logic_vector(Address_lenght-1 downto 0);
	   ADD_RD1: IN std_logic_vector(Address_lenght-1 downto 0);
	   ADD_RD2: IN std_logic_vector(Address_lenght-1 downto 0);
	   DATAIN: 	IN std_logic_vector(Data_parallelism-1 downto 0);
       OUT1: 	OUT std_logic_vector(Data_parallelism-1 downto 0);
	   OUT2: 	OUT std_logic_vector(Data_parallelism-1 downto 0));
end register_file;

architecture A of register_file is

        -- suggested structures
    subtype REG_ADDR is natural range 0 to (2**Address_lenght)-1; -- using natural type
	type REG_ARRAY is array(REG_ADDR) of std_logic_vector(Data_parallelism-1 downto 0); 
	signal REGISTERS : REG_ARRAY; 

signal out1_signal, out2_signal: std_logic_vector(Data_parallelism-1 downto 0);

begin

Behav_process: PROCESS(CLK)
               BEGIN
               IF rising_edge(CLK) THEN 
                IF RESET='1' THEN 
                REGISTERS<=(OTHERS=>(OTHERS=>'0'));
                out1_signal<=(others=> '0');
                out2_signal<=(others=> '0');
              ELSIF ENABLE='1' THEN
                
                   IF WR='1' THEN 
                     REGISTERS(to_integer(unsigned(ADD_WR)))<=DATAIN;
                   END IF;

                   IF RD1='1' THEN
                     out1_signal<=REGISTERS(to_integer(unsigned(ADD_RD1)));
                    ELSE out1_signal<=(others=>'0');
                   END IF;
        
                   IF RD2='1' THEN
                     out2_signal<=REGISTERS(to_integer(unsigned(ADD_RD2)));
                    ELSE out2_signal<=(others=>'0');
                   END IF;
                END IF;
              END IF;
           END PROCESS Behav_process;	
OUT1<=out1_signal;
OUT2<=out2_signal;
end A;


configuration CFG_RF_BEH of register_file is
for A
end for;
end configuration;
