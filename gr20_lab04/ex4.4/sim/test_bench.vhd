library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use Work.myTypes.all; 


entity Micro_Progammed_test is
end Micro_Progammed_test;



architecture TEST of Micro_Progammed_test is

component Micro_Progammed_FSM is
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
    RegA_EN   : inout std_logic;    -- Register A Latch Enable
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

end component Micro_Progammed_FSM;


  constant IR_SIZE: integer := 32 ;
  constant ALU_OP_SIZE : integer := 2 ;
  signal Clk_s, Rst_s,  RF1_s, RF2_s, WF1_s, RegA_EN_s,  RegB_EN_s, RegIMM_EN_1_s, RegIMM_EN_2_s, S1_s, S2_s,EN_s,me_s,S_3,EN_R_s, WM_s, RM_s, EN_Out_s : std_logic; 
  signal ALU1_s, ALU2_s : std_logic_vector(ALU_OP_SIZE -1 downto 0);
  signal IR_IN_s: std_logic_vector(IR_SIZE - 1 downto 0); 

  
 
begin 
 p: Micro_Progammed_FSM port map( Clk => Clk_s , Rst => Rst_s , RF1 =>  RF1_s, RF2 => RF2_s , WF1 => WF1_s ,
 RegA_EN => RegA_EN_s , RegB_EN =>  RegB_EN_s, RegIMM_EN_1 => RegIMM_EN_1_s,S1 => S1_s, S2 => S2_s, EN => EN_s,me  => me_s,
 S3  => S_3 ,EN_R => EN_R_s, EN_Out => EN_Out_s, WM => WM_s , RM => RM_s, 
 ALU1 => ALU1_s ,  ALU2=> ALU2_s  ,IR_IN  => IR_IN_s, RegIMM_EN_2 => RegIMM_EN_2_s  ); 
    process
    begin 
    clk_s <= '0'; 
    wait for 1 ns;
    clk_s <= '1'; 
    wait for 1 ns;
    end process; 
   

   process
    begin 
    Rst_s <= '1';
    wait for  1.5 ns;
    Rst_s <= '0';
    
    -- Test case 1: R-type instruction (add)
    IR_IN_s <= "00000000000000000000000000000000";  -- Example R-type
    wait for 6 ns;  -- Wait for 3 clock cycles to complete all stages
    
    IR_IN_s <= "00000000000000000000000000000001";  -- Example R-type  Rtype sub
    wait for 6 ns;

    IR_IN_s <= "00000100000000000000000000010011";  -- Example I-type   add
    wait for 6 ns;
    
    -- Test case 3: Load instruction
    IR_IN_s <= "00000000000000000010000000000011";  -- Example load   Or rtype
    wait for 6 ns;
    
    -- Test case 4: Store instruction
    IR_IN_s <= "00001000000000000010000000100011";  -- Example I-type  sub1 
    wait for 6 ns;

  wait; 
  end process; 





end TEST;
