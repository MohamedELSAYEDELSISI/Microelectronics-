library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.myTypes.all; 


entity Micro_Progammed_FSM is
 generic(
   constant IR_SIZE : integer := 32;
   constant ALU_OP_SIZE : integer := 2 
    ); 
  port (
    Clk             : in  std_logic;    -- Clock
    Rst             : in  std_logic;    -- Reset:Active-Low
    -- Instruction Register
    -- IF Control Signal
    IR_IN           : in std_logic_vector(IR_SIZE - 1 downto 0);
 
    -- First_half ID stage 

    RF1     : out std_logic;    -- Instruction Register Latch Enable
    RF2     : out std_logic;   
    WF1     : out std_logic; 

    -- Second_half ID stage  
    RegA_EN   : out std_logic;    -- Register A Latch Enable
    RegB_EN   : out std_logic;    -- Register B Latch Enable
    RegIMM_EN_1 : out std_logic;    -- Immediate Register Latch Enable
    RegIMM_EN_2 : out std_logic;

    -- EX Control Signal
    ALU1      : out std_logic_vector(ALU_OP_SIZE -1 downto 0); 
    ALU2      : out std_logic_vector(ALU_OP_SIZE -1 downto 0);                                
    S1        : out std_logic;    -- MUX-A Sel
    S2        : out std_logic;    -- MUX-B Sel
    EN     : out std_logic;    -- ALU Output Register Enable
    me         : out std_logic;

    -- MEM Control Signals
    S3             : out std_logic;    -- LMD Register Latch Enable
    EN_R           : out std_logic;
    EN_Out         : out std_logic;    -- Program Counte Latch Enable
    WM             : out std_logic;    -- Write Back MUX Sel
    RM             : out std_logic);   -- Register File Write Enable

end Micro_Progammed_FSM;


architecture Micro_Progammed of Micro_Progammed_FSM is

  constant C_W : integer:= 7;
  signal cw : std_logic_vector(C_W-1 downto 0);
  constant N_Stages : integer:= 3;
  constant MICROCODE_MEM_SIZE : integer := 54; 
  type mem is array (integer range 0 to MICROCODE_MEM_SIZE - 1) of std_logic_vector(C_W downto 0);
  signal counter_1, nex_counter_1,counter_2, nex_counter_2: integer range 0 to N_Stages-1 := 0;

  --add, for R type ALU1. "00001111","10000010" ,"00000011"
  --sub for  Rtype ALU1.  "00001111","10010010" ,"00000011"
  --and for  Rtype ALU1.  "00001111" "10100010" ,"00000011"
  --or for Rtype ALU1.    "00001111","10110010" ,"00000011"


  --add,  I type ALU1.  "00010110", "00000010", "00000011" 
  --sub,  I type ALU1.  "00010110", "00010010" ,"00000011"
 --and for I type ALU1  "00010110", "00100010" ,"00000011"
 --or for   I type ALU1 "00010110", "00110010", "00000011"

 --add I type ALU2.    "00101001", "11000010", "00000011"
--sub I type ALU2.     "00101001", "11000110", "00000011"
--and I type ALU2.     "00101001", "11001010", "00000011"
--or I type ALU2.      "00101001", "11001110", "00000011"

  --Mov                "00101001", "11000010","00000011"
 

  --_S_REG1 "00010010","00000010","00000011"
 -- _S_REG2 "00100001","11000010","00000011"

 --S_mem "00101001" ,"11000011", "00011100"

 --L_MEM1"00010110" ,"00000011", "00101011"

 --L_MEM2"00101001","11000011", "00101011"

  signal microcode : mem := ("00001111","10000010" ,"00000011",
                                    "00001111","10010010" ,"00000011",
                                     "00001111","10100010" ,"00000011",
                                        "00001111","10110010" ,"00000011",
                                          "00010110", "00000010", "00000011",
                                            "00010110", "00010010" ,"00000011",
                                              "00010110", "00100010" ,"00000011",
                                                "00010110", "00110010", "00000011",
                                                  "00101001", "11000010", "00000011",
                                                    "00101001", "11000110", "00000011",
                                                      "00101001", "11001010", "00000011",
                                                        "00101001", "11001110", "00000011",
                                                          "00101001", "11000010","00000011",
                                                            "00010010","00000010","00000011",
                                                              "00100001","11000010","00000011",
                                                              "00101001" ,"11000011", "00011100",
                                                                "00010110" ,"00000011", "00101011",
                                                                  "00101001","11000011", "00101011");                                     

  

  constant offset_1 :integer := 3;
  constant offset_2 :integer := 6;
  constant offset_3 :integer := 9;  
  constant offset_4 :integer := 12;  
  constant offset_5 :integer := 15;  
  constant offset_6 :integer := 18;  
  constant offset_7 :integer := 21;  
  constant offset_8 :integer := 24;  
  constant offset_9 :integer := 27;  
  constant offset_10 :integer := 30;  
  constant offset_11 :integer := 33;  
  constant offset_12 :integer := 36;  
  constant offset_13 :integer := 39;  
  constant offset_14 :integer := 42;  
  constant offset_15 :integer := 45;  
  constant offset_16 :integer := 48;  
  constant offset_17 :integer := 51;  
  

  constant zeros : std_logic_vector(OP_CODE_SIZE -1 downto 0) := "000000";                                                    
  signal func : std_logic_vector(FUNC_SIZE - 1 downto 0);
  signal opcode : std_logic_vector(OP_CODE_SIZE -1 downto 0);
  signal interrupt_func,interrupt_op: std_logic := '0'; 
  signal nex_interrupt_op : std_logic := '0';
  signal temp : std_logic_vector(C_W downto 0);
  signal Clk_t, Rst_t, RF1_t, RF2_t, WF1_t, RegA_EN_t, RegB_EN_t, RegIMM_EN_1_t, 
       RegIMM_EN_2_t, S1_t, S2_t, EN_t, me_t, S3_t, EN_R_t, WM_t, RM_t, EN_Out_t : std_logic := '0';
 signal ALU1_t, ALU2_t : std_logic_vector(ALU_OP_SIZE - 1 downto 0) := "00";


begin 
     opcode <= IR_IN(IR_SIZE-1 downto IR_SIZE-6) ;
     func <= IR_IN((IR_SIZE-1)-21 downto 0) ; 

     process(all)
     begin 
       interrupt_op <='0';
       if(opcode = zeros)then  --rtype 
         if((func = "00000000000") and (opcode = zeros))
         then 
         if(counter_2 = 0)
           then 
           temp <= microcode(counter_2);
           RegA_EN_t <= temp(0);             
                RegB_EN_t <= temp(1);
                RF2_t <= temp(2);
                RF1_t <= temp(3);
                RegIMM_EN_1_t <= temp(4);
                RegIMM_EN_2_t <= temp(5);
           nex_counter_2 <= counter_2 +1;

         elsif(counter_2 = 1)
           then 
           temp    <= microcode(counter_2);
      	   me_t <= temp(0);
                EN_t <= temp(1);
                ALU2_t <= temp(3 downto 2);
                ALU1_t <= temp(5 downto 4);
                S2_t <= temp(6);
                S1_t <= temp(7);

           nex_counter_2 <= counter_2 +1;
           
         elsif(counter_2 = 2)
           then 
          temp <= microcode(counter_2);
             WF1_t <= temp(0);      
                EN_Out_t <= temp(1);
                S3_t <= temp(2);
                EN_R_t <= temp(3);
                WM_t <= temp(4);
                RM_t <= temp(5);
             nex_counter_2 <= 0;
             nex_interrupt_op <= '1';
         end if; 
         
         
     elsif((func = "00000000001") and (opcode = zeros))
         then 
       if(counter_2 = 0)
           then 
           temp <= microcode(counter_2+offset_1);
           RegA_EN_t <= temp(0);             
                RegB_EN_t <= temp(1);
                RF2_t <= temp(2);
                RF1_t <= temp(3);
                RegIMM_EN_1_t <= temp(4);
                RegIMM_EN_2_t <= temp(5);
           nex_counter_2 <= counter_2 +1;
         elsif(counter_2 = 1)
           then 
           temp <= microcode(counter_2+offset_1);
      	   me_t <= temp(0);
                EN_t <= temp(1);
                ALU2_t <= temp(3 downto 2);
                ALU1_t <= temp(5 downto 4);
                S2_t <= temp(6);
                S1_t <= temp(7);
           nex_counter_2 <= counter_2 +1;

         elsif(counter_2 = 2)
           then 
          temp <= microcode(counter_2+offset_1);
             WF1_t <= temp(0);      
                EN_Out_t <= temp(1);
                S3_t <= temp(2);
                EN_R_t <= temp(3);
                WM_t <= temp(4);
                RM_t <= temp(5);
             nex_counter_2 <= 0;
             nex_interrupt_op <= '1';
         end if; 
         
       
     elsif((func = "00000000010" ) and (opcode = zeros))
        then 
         if(counter_2 = 0)
           then 
           temp      <= microcode(counter_2+offset_2);
           RegA_EN_t <= temp(0);             
                RegB_EN_t <= temp(1);
                RF2_t <= temp(2);
                RF1_t <= temp(3);
                RegIMM_EN_1_t <= temp(4);
                RegIMM_EN_2_t <= temp(5);
           nex_counter_2 <= counter_2 +1; 

         elsif(counter_2 = 1)
           then 
           temp     <= microcode(counter_2+offset_2);
      	   me_t <= temp(0);
                EN_t <= temp(1);
                ALU2_t <= temp(3 downto 2);
                ALU1_t <= temp(5 downto 4);
                S2_t <= temp(6);
                S1_t <= temp(7);
           nex_counter_2 <= counter_2 +1;

         elsif(counter_2 = 2)
           then 
            temp  <= microcode(counter_2+offset_2);
             WF1_t <= temp(0);      
                EN_Out_t <= temp(1);
                S3_t <= temp(2);
                EN_R_t <= temp(3);
                WM_t <= temp(4);
                RM_t <= temp(5);
             nex_counter_2 <= 0;
             nex_interrupt_op <= '1';
         end if; 
         

     elsif((func = "00000000011") and (opcode = zeros))
        then 
         if(counter_2 = 0)
           then 
           temp <= microcode(counter_2+offset_3);
           RegA_EN_t <= temp(0);             
                RegB_EN_t <= temp(1);
                RF2_t <= temp(2);
                RF1_t <= temp(3);
                RegIMM_EN_1_t <= temp(4);
                RegIMM_EN_2_t <= temp(5);
           nex_counter_2 <= counter_2 +1; 

         elsif(counter_2 = 1)
           then 
           temp <= microcode(counter_2+offset_3);
      	   me_t <= temp(0);
                EN_t <= temp(1);
                ALU2_t <= temp(3 downto 2);
                ALU1_t <= temp(5 downto 4);
                S2_t <= temp(6);
                S1_t <= temp(7);
           nex_counter_2 <= counter_2 +1;

         elsif(counter_2 = 2)
           then 
            temp <= microcode(counter_2+offset_3);
            WF1_t <= temp(0);      
                EN_Out_t <= temp(1);
                S3_t <= temp(2);
                EN_R_t <= temp(3);
                WM_t <= temp(4);
                RM_t <= temp(5);
            nex_counter_2 <= 0;
            nex_interrupt_op <= '1';
         end if;
       end if; 


      else 
      if (opcode ="000001") then
         if(counter_1 = 0) then
           temp    <= microcode(counter_1+offset_4);
                RegA_EN_t <= temp(0);             
                RegB_EN_t <= temp(1);
                RF2_t <= temp(2);
                RF1_t <= temp(3);
                RegIMM_EN_1_t <= temp(4);
                RegIMM_EN_2_t <= temp(5);
                nex_counter_1 <= counter_1 + 1;

         elsif(counter_1 = 1)
           then 
           temp    <= microcode(counter_1+offset_4);
      	        me_t <= temp(0);
                EN_t <= temp(1);
                ALU2_t <= temp(3 downto 2);
                ALU1_t <= temp(5 downto 4);
                S2_t <= temp(6);
                S1_t <= temp(7);
          nex_counter_1 <= counter_1 +1;
         
       elsif(counter_1 = 2)
           then 
          temp <= microcode(counter_1+offset_4);
            WF1_t <= temp(0);      
                EN_Out_t <= temp(1);
                S3_t <= temp(2);
                EN_R_t <= temp(3);
                WM_t <= temp(4);
                RM_t <= temp(5);
             nex_counter_1 <= 0; 
             nex_interrupt_op <= '1';
         end if;
             
      elsif (  opcode =  "000010") then
         if(counter_1 = 0) then
               temp    <= microcode(counter_1+offset_5);
               RegA_EN_t <= temp(0);             
                RegB_EN_t <= temp(1);
                RF2_t <= temp(2);
                RF1_t <= temp(3);
                RegIMM_EN_1_t <= temp(4);
                RegIMM_EN_2_t <= temp(5);
                nex_counter_1 <= counter_1 + 1;

         elsif(counter_1 = 1)
           then 
           me_t <= temp(0);
                EN_t <= temp(1);
                ALU2_t <= temp(3 downto 2);
                ALU1_t <= temp(5 downto 4);
                S2_t <= temp(6);
                S1_t <= temp(7);
          nex_counter_1 <= counter_1 +1;
         
       elsif(counter_1 = 2)
           then 
          temp <= microcode(counter_1+offset_5);
            WF1_t <= temp(0);      
                EN_Out_t <= temp(1);
                S3_t <= temp(2);
                EN_R_t <= temp(3);
                WM_t <= temp(4);
                RM_t <= temp(5);
             nex_counter_1 <= 0; 
             nex_interrupt_op <= '1';
          end if;

      elsif (  opcode =  "000011" ) then
         if(counter_1 = 0) then
           temp    <= microcode(counter_1+offset_6);
               RegA_EN_t <= temp(0);             
                RegB_EN_t <= temp(1);
                RF2_t <= temp(2);
                RF1_t <= temp(3);
                RegIMM_EN_1_t <= temp(4);
                RegIMM_EN_2_t <= temp(5);
                nex_counter_1 <= counter_1 + 1;

         elsif(counter_1 = 1)
           then 
           temp    <= microcode(counter_1+offset_6);
      	  me_t <= temp(0);
                EN_t <= temp(1);
                ALU2_t <= temp(3 downto 2);
                ALU1_t <= temp(5 downto 4);
                S2_t <= temp(6);
                S1_t <= temp(7);
                nex_counter_1 <= counter_1 + 1;
         
       elsif(counter_1 = 2)
           then 
          temp <= microcode(counter_1+offset_6);
            WF1_t <= temp(0);      
                EN_Out_t <= temp(1);
                S3_t <= temp(2);
                EN_R_t <= temp(3);
                WM_t <= temp(4);
                RM_t <= temp(5);
             nex_counter_1 <= 0; 
             nex_interrupt_op <= '1';
        end if;
             
      elsif (  opcode =  "000100" ) then
         if(counter_1 = 0) then
           temp    <= microcode(counter_1+offset_7);
                RegA_EN_t <= temp(0);             
                RegB_EN_t <= temp(1);
                RF2_t <= temp(2);
                RF1_t <= temp(3);
                RegIMM_EN_1_t <= temp(4);
                RegIMM_EN_2_t <= temp(5);
                nex_counter_1 <= counter_1 + 1;

         elsif(counter_1 = 1)
           then 
           temp    <= microcode(counter_1+offset_7);
      	   me_t <= temp(0);
                EN_t <= temp(1);
                ALU2_t <= temp(3 downto 2);
                ALU1_t <= temp(5 downto 4);
                S2_t <= temp(6);
                S1_t <= temp(7);
                nex_counter_1 <= counter_1 + 1;
         
       elsif(counter_1 = 2)
           then 
          temp <= microcode(counter_1+offset_7);
            WF1_t <= temp(0);      
                EN_Out_t <= temp(1);
                S3_t <= temp(2);
                EN_R_t <= temp(3);
                WM_t <= temp(4);
                RM_t <= temp(5);
             nex_counter_1 <= 0; 
             nex_interrupt_op <= '1';
         end if;
             
      elsif (  opcode = "000101") then
            if(counter_1 = 0) then
           temp    <= microcode(counter_1+offset_8);
           RegA_EN_t <= temp(0);             
                RegB_EN_t <= temp(1);
                RF2_t <= temp(2);
                RF1_t <= temp(3);
                RegIMM_EN_1_t <= temp(4);
                RegIMM_EN_2_t <= temp(5);
                nex_counter_1 <= counter_1 + 1;

         elsif(counter_1 = 1)
           then 
           temp    <= microcode(counter_1+offset_8);
      	  me_t <= temp(0);
                EN_t <= temp(1);
                ALU2_t <= temp(3 downto 2);
                ALU1_t <= temp(5 downto 4);
                S2_t <= temp(6);
                S1_t <= temp(7);
                nex_counter_1 <= counter_1 + 1;
         
       elsif(counter_1 = 2)
           then 
          temp <= microcode(counter_1+offset_8);
             WF1_t <= temp(0);      
                EN_Out_t <= temp(1);
                S3_t <= temp(2);
                EN_R_t <= temp(3);
                WM_t <= temp(4);
                RM_t <= temp(5);
             nex_counter_1 <= 0; 
             nex_interrupt_op <= '1';
 
       end if;

      elsif (  opcode = "000110") then
             if(counter_1 = 0) then
           temp    <= microcode(counter_1+offset_9);
           RegA_EN_t <= temp(0);             
                RegB_EN_t <= temp(1);
                RF2_t <= temp(2);
                RF1_t <= temp(3);
                RegIMM_EN_1_t <= temp(4);
                RegIMM_EN_2_t <= temp(5);
                nex_counter_1 <= counter_1 + 1;
         elsif(counter_1 = 1)
           then 
           temp    <= microcode(counter_1+offset_9);
      	   me_t <= temp(0);
                EN_t <= temp(1);
                ALU2_t <= temp(3 downto 2);
                ALU1_t <= temp(5 downto 4);
                S2_t <= temp(6);
                S1_t <= temp(7);
                nex_counter_1 <= counter_1 + 1;
         
       elsif(counter_1 = 2)
           then 
          temp <= microcode(counter_1+offset_9);
            WF1_t <= temp(0);      
                EN_Out_t <= temp(1);
                S3_t <= temp(2);
                EN_R_t <= temp(3);
                WM_t <= temp(4);
                RM_t <= temp(5);
             nex_counter_1 <= 0; 
             nex_interrupt_op <= '1';
        end if;

      elsif (  opcode = "000111" ) then
              if(counter_1 = 0) then
           temp    <=microcode(counter_1+offset_10);
           RegA_EN_t <= temp(0);             
                RegB_EN_t <= temp(1);
                RF2_t <= temp(2);
                RF1_t <= temp(3);
                RegIMM_EN_1_t <= temp(4);
                RegIMM_EN_2_t <= temp(5);
                nex_counter_1 <= counter_1 + 1;

         elsif(counter_1 = 1)
           then 
           temp    <= microcode(counter_1+offset_10);
      	   me_t <= temp(0);
                EN_t <= temp(1);
                ALU2_t <= temp(3 downto 2);
                ALU1_t <= temp(5 downto 4);
                S2_t <= temp(6);
                S1_t <= temp(7);
                nex_counter_1 <= counter_1 + 1;
         
       elsif(counter_1 = 2)
           then 
          temp <= microcode(counter_1+offset_10);
             WF1_t <= temp(0);      
                EN_Out_t <= temp(1);
                S3_t <= temp(2);
                EN_R_t <= temp(3);
                WM_t <= temp(4);
                RM_t <= temp(5);
             nex_counter_1 <= 0; 
             nex_interrupt_op <= '1';
        end if;

      elsif (  opcode = "001000" ) then

           if(counter_1 = 0) then
           temp    <= microcode(counter_1+offset_11);
           RegA_EN_t <= temp(0);             
                RegB_EN_t <= temp(1);
                RF2_t <= temp(2);
                RF1_t <= temp(3);
                RegIMM_EN_1_t <= temp(4);
                RegIMM_EN_2_t <= temp(5);
                nex_counter_1 <= counter_1 + 1;

         elsif(counter_1 = 1)
           then 
           temp    <= microcode(counter_1+offset_11);
      	   me_t <= temp(0);
                EN_t <= temp(1);
                ALU2_t <= temp(3 downto 2);
                ALU1_t <= temp(5 downto 4);
                S2_t <= temp(6);
                S1_t <= temp(7);
                nex_counter_1 <= counter_1 + 1;
         
       elsif(counter_1 = 2)
           then 
          temp <= microcode(counter_1+offset_11);
            WF1_t <= temp(0);      
                EN_Out_t <= temp(1);
                S3_t <= temp(2);
                EN_R_t <= temp(3);
                WM_t <= temp(4);
                RM_t <= temp(5);
             nex_counter_1 <= 0; 
             nex_interrupt_op <= '1';
         end if;


      elsif (  opcode = "001001" ) then
           
           if(counter_1 = 0) then
           temp    <= microcode(counter_1+offset_12);                      
           RegA_EN_t <= temp(0);             
                RegB_EN_t <= temp(1);
                RF2_t <= temp(2);
                RF1_t <= temp(3);
                RegIMM_EN_1_t <= temp(4);
                RegIMM_EN_2_t <= temp(5);
                nex_counter_1 <= counter_1 + 1;

         elsif(counter_1 = 1)
           then 
           temp    <= microcode(counter_1+offset_12);
      	      me_t <= temp(0);
                EN_t <= temp(1);
                ALU2_t <= temp(3 downto 2);
                ALU1_t <= temp(5 downto 4);
                S2_t <= temp(6);
                S1_t <= temp(7);
                nex_counter_1 <= counter_1 + 1;
         
       elsif(counter_1 = 2)
           then 
          temp <= microcode(counter_1+offset_12);
             WF1_t <= temp(0);      
                EN_Out_t <= temp(1);
                S3_t <= temp(2);
                EN_R_t <= temp(3);
                WM_t <= temp(4);
                RM_t <= temp(5);
             nex_counter_1 <= 0; 
             nex_interrupt_op <= '1';
         end if;



      elsif (  opcode = "001010") then
             
           if(counter_1 = 0) then
           temp    <= microcode(counter_1+offset_13);                      
          RegA_EN_t <= temp(0);             
                RegB_EN_t <= temp(1);
                RF2_t <= temp(2);
                RF1_t <= temp(3);
                RegIMM_EN_1_t <= temp(4);
                RegIMM_EN_2_t <= temp(5);
                nex_counter_1 <= counter_1 + 1;

         elsif(counter_1 = 1)
           then 
           temp    <= microcode(counter_1+offset_13);                        
      	     me_t <= temp(0);
                EN_t <= temp(1);
                ALU2_t <= temp(3 downto 2);
                ALU1_t <= temp(5 downto 4);
                S2_t <= temp(6);
                S1_t <= temp(7);
                nex_counter_1 <= counter_1 + 1;
         
       elsif(counter_1 = 2)
           then 
          temp <= microcode(counter_1+offset_13);
            WF1_t <= temp(0);      
                EN_Out_t <= temp(1);
                S3_t <= temp(2);
                EN_R_t <= temp(3);
                WM_t <= temp(4);
                RM_t <= temp(5);
             nex_counter_1 <= 0; 
             nex_interrupt_op <= '1';
        
       end if;

      elsif (  opcode = "001011" ) then                                
                  
           if(counter_1 = 0) then 
           temp    <= microcode(counter_1+offset_14);                                
           RegA_EN_t <= temp(0);             
                RegB_EN_t <= temp(1);
                RF2_t <= temp(2);
                RF1_t <= temp(3);
                RegIMM_EN_1_t <= temp(4);
                RegIMM_EN_2_t <= temp(5);
                nex_counter_1 <= counter_1 + 1;

         elsif(counter_1 = 1)
           then 
           temp    <= microcode(counter_1+offset_14);
      	    me_t <= temp(0);
                EN_t <= temp(1);
                ALU2_t <= temp(3 downto 2);
                ALU1_t <= temp(5 downto 4);
                S2_t <= temp(6);
                S1_t <= temp(7);
                nex_counter_1 <= counter_1 + 1;
         
       elsif(counter_1 = 2)
           then 
          temp <= microcode(counter_1+offset_14);
             WF1_t <= temp(0);      
                EN_Out_t <= temp(1);
                S3_t <= temp(2);
                EN_R_t <= temp(3);
                WM_t <= temp(4);
                RM_t <= temp(5);
             nex_counter_1 <= 0; 
             nex_interrupt_op <= '1';
        end if;

      elsif (  opcode = "001100" ) then
            if(counter_1 = 0) then 
           temp    <= microcode(counter_1+offset_15);                                 
          RegA_EN_t <= temp(0);             
                RegB_EN_t <= temp(1);
                RF2_t <= temp(2);
                RF1_t <= temp(3);
                RegIMM_EN_1_t <= temp(4);
                RegIMM_EN_2_t <= temp(5);
                nex_counter_1 <= counter_1 + 1;

         elsif(counter_1 = 1)
           then 
           temp    <= microcode(counter_1+offset_15);                   
      	     me_t <= temp(0);
                EN_t <= temp(1);
                ALU2_t <= temp(3 downto 2);
                ALU1_t <= temp(5 downto 4);
                S2_t <= temp(6);
                S1_t <= temp(7);
                nex_counter_1 <= counter_1 + 1;
         
       elsif(counter_1 = 2)
           then 
          temp <= microcode(counter_1+offset_15);                                 
            WF1_t <= temp(0);      
                EN_Out_t <= temp(1);
                S3_t <= temp(2);
                EN_R_t <= temp(3);
                WM_t <= temp(4);
                RM_t <= temp(5);
             nex_counter_1 <= 0; 
             nex_interrupt_op <= '1';
 
        end if;

      elsif (  opcode = "001101") then
            if(counter_1 = 0) then 
           temp    <= microcode(counter_1+offset_16);                                       
           RegA_EN_t <= temp(0);             
                RegB_EN_t <= temp(1);
                RF2_t <= temp(2);
                RF1_t <= temp(3);
                RegIMM_EN_1_t <= temp(4);
                RegIMM_EN_2_t <= temp(5);
                nex_counter_1 <= counter_1 + 1;
         elsif(counter_1 = 1)
           then 
           temp    <= microcode(counter_1+offset_16);
      	      me_t <= temp(0);
                EN_t <= temp(1);
                ALU2_t <= temp(3 downto 2);
                ALU1_t <= temp(5 downto 4);
                S2_t <= temp(6);
                S1_t <= temp(7);
                nex_counter_1 <= counter_1 + 1;
         
       elsif(counter_1 = 2)
           then 
          temp <= microcode(counter_1+offset_16);
             WF1_t <= temp(0);      
                EN_Out_t <= temp(1);
                S3_t <= temp(2);
                EN_R_t <= temp(3);
                WM_t <= temp(4);
                RM_t <= temp(5);
             nex_counter_1 <= 0; 
             nex_interrupt_op <= '1';
        end if;

      elsif (  opcode =  "001110") then
             if(counter_1 = 0) then 
           temp    <= microcode(counter_1+offset_17);                                
           RegA_EN_t <= temp(0);             
                RegB_EN_t <= temp(1);
                RF2_t <= temp(2);
                RF1_t <= temp(3);
                RegIMM_EN_1_t <= temp(4);
                RegIMM_EN_2_t <= temp(5);
                nex_counter_1 <= counter_1 + 1;
         elsif(counter_1 = 1)
           then 
           temp    <= microcode(counter_1+offset_17);                           
      	     me_t <= temp(0);
                EN_t <= temp(1);
                ALU2_t <= temp(3 downto 2);
                ALU1_t <= temp(5 downto 4);
                S2_t <= temp(6);
                S1_t <= temp(7);
                nex_counter_1 <= counter_1 + 1;
         
       elsif(counter_1 = 2)
           then 
          temp <= microcode(counter_1+offset_17);
             WF1_t <= temp(0);      
                EN_Out_t <= temp(1);
                S3_t <= temp(2);
                EN_R_t <= temp(3);
                WM_t <= temp(4);
                RM_t <= temp(5);
             nex_counter_1 <= 0; 
             nex_interrupt_op <= '1';
         end if;
      end if;

     end if; 
     end process;

    


     process(Clk)
     begin 
     if(rising_edge(Clk)) then 
       if(rst ='1')
       then 
            counter_1 <= 0; 
            counter_2 <= 0; 
           interrupt_op <= '0';
            RF1 <= '0';
            RF2 <= '0';
            WF1 <= '0';
            RegA_EN <= '0';
            RegB_EN <= '0';
            RegIMM_EN_1 <= '0';
            RegIMM_EN_2 <= '0';
            ALU1 <= (others => '0');  -- Initialize all bits of the vector to '0'
            ALU2 <= (others => '0');  -- Initialize all bits of the vector to '0'
            S1 <= '0';
            S2 <= '0';
            EN <= '0';
            me <= '0';
            S3 <= '0';
            EN_R <= '0';
            EN_Out <= '0';
            WM <= '0';
            RM <= '0';
        else
           counter_1 <= nex_counter_1; 
           counter_2 <= nex_counter_2; 
           interrupt_op <= nex_interrupt_op ;
            RF1 <= RF1_t;
            RF2 <= RF2_t;
            WF1 <= WF1_t;
            RegA_EN <= RegA_EN_t;
            RegB_EN <= RegB_EN_t;
            RegIMM_EN_1 <= RegIMM_EN_1_t;
            RegIMM_EN_2 <= RegIMM_EN_2_t;
            ALU1 <= ALU1_t;
            ALU2 <= ALU2_t;
            S1 <= S1_t;
            S2 <= S2_t;
            EN <= EN_t;
            me <= me_t;
            S3 <= S3_t;
            EN_R <= EN_R_t;
            EN_Out <= EN_Out_t;
            WM <= WM_t;
            RM <= RM_t;
        end if;

          
   end if;
    end process; 
  

  

end Micro_Progammed;
