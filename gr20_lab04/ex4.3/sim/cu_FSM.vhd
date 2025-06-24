library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.myTypes.all;

ENTITY cu IS
       PORT (
              -- FIRST PIPE STAGE OUTPUTS
              EN1    : out std_logic;               -- enables the register file and the pipeline registers
              RF1    : out std_logic;               -- enables the read port 1 of the register file
              RF2    : out std_logic;               -- enables the read port 2 of the register file
              WF1    : out std_logic;               -- enables the write port of the register file
              -- SECOND PIPE STAGE OUTPUTS
              EN2    : out std_logic;               -- enables the pipe registers
              S1     : out std_logic;               -- input selection of the first multiplexer
              S2     : out std_logic;               -- input selection of the second multiplexer
              ALU1   : out std_logic;               -- alu control bit
              ALU2   : out std_logic;               -- alu control bit
              -- THIRD PIPE STAGE OUTPUTS
              EN3    : out std_logic;               -- enables the memory and the pipeline registers
              RM     : out std_logic;               -- enables the read-out of the memory
              WM     : out std_logic;               -- enables the write-in of the memory
              S3     : out std_logic;               -- input selection of the multiplexer
              -- INPUTS
              OPCODE : in  std_logic_vector(OP_CODE_SIZE - 1 downto 0);
              FUNC   : in  std_logic_vector(FUNC_SIZE - 1 downto 0);              
              Clk : in std_logic;
              Rst : in std_logic);                  -- Active Low
    END cu;

ARCHITECTURE FSM OF cu IS

TYPE CU_STATE IS(IDLE, S_RTYPE, S_ITYPE_ADDI1, S_ITYPE_ADDI2, S_ITYPE_SUBI1, S_ITYPE_SUBI2, S_ITYPE_ANDI1, S_ITYPE_ANDI2, S_ITYPE_ORI1, S_ITYPE_ORI2, S_ITYPE_MOV, S_ITYPE_S_REG1, S_ITYPE_S_REG2, S_ITYPE_S_MEM, S_ITYPE_L_MEM1, S_ITYPE_L_MEM2);


SIGNAL CURRENT_STATE: CU_STATE;
SIGNAL NEXT_STATE: CU_STATE;

BEGIN

--NEXT STATE
state_update: PROCESS (clk, Rst)
BEGIN
IF Rst = '0' THEN
 CURRENT_STATE<=IDLE;
ELSIF (Clk'event AND Clk='1') THEN
CURRENT_STATE<=NEXT_STATE;
 END IF;
END PROCESS state_update;

--FUTURE STATE NETWORK
future_state: PROCESS (CURRENT_STATE, OPCODE)
BEGIN

NEXT_STATE<=CURRENT_STATE;

        CASE OPCODE IS
          WHEN RTYPE=>
                NEXT_STATE<=S_RTYPE;
            WHEN ITYPE_ADDI1=>
                NEXT_STATE<=S_ITYPE_ADDI1;
            WHEN ITYPE_ADDI2=> 
                NEXT_STATE<=S_ITYPE_ADDI2;
            WHEN ITYPE_SUBI1=>
                NEXT_STATE<=S_ITYPE_SUBI1;
            WHEN ITYPE_SUBI2=>
                NEXT_STATE<=S_ITYPE_SUBI2;
            WHEN ITYPE_ANDI1=>
                NEXT_STATE<=S_ITYPE_ANDI1;
            WHEN ITYPE_ANDI2=>
                NEXT_STATE<=S_ITYPE_ANDI2;
            WHEN ITYPE_ORI1 =>
                 NEXT_STATE <= S_ITYPE_ORI1;
            WHEN ITYPE_ORI2 =>
                 NEXT_STATE <= S_ITYPE_ORI2;
            WHEN ITYPE_MOV =>
                 NEXT_STATE <= S_ITYPE_MOV;
            WHEN ITYPE_S_REG1 =>
                 NEXT_STATE <= S_ITYPE_S_REG1; 
            WHEN ITYPE_S_REG2 =>
                 NEXT_STATE <= S_ITYPE_S_REG2;
            WHEN ITYPE_S_MEM =>
                 NEXT_STATE <= S_ITYPE_S_MEM; 
            WHEN ITYPE_L_MEM1 =>
                 NEXT_STATE <= S_ITYPE_L_MEM1;  
            WHEN ITYPE_L_MEM2 =>
                 NEXT_STATE <= S_ITYPE_L_MEM2;
            WHEN OTHERS=> NEXT_STATE <=IDLE;     
   END CASE;

END PROCESS future_state;

--OUTPUT EVALUATION
output_evaluation: PROCESS(CURRENT_STATE, FUNC)
                   BEGIN
                   CASE CURRENT_STATE IS
            WHEN IDLE=> 
                 EN1 <= '0'; RF1 <= '0'; RF2 <= '0'; WF1 <= '0';
                 EN2 <= '0'; S1 <= '0'; S2 <= '0'; ALU1 <= '0'; ALU2 <= '0';
                 EN3 <= '0'; RM <= '0'; WM <= '0'; S3 <= '0';
            WHEN S_RTYPE=>
               EN1 <= '1'; RF1 <= '1'; RF2 <= '1'; WF1 <= '1';
               EN2 <= '1'; S1 <= '0'; S2 <= '0';
               EN3 <= '1'; S3 <= '0';

               CASE FUNC IS  --FUNC is taken in account only during the RTYPE mode
                  WHEN RTYPE_ADD =>
                     ALU1 <= '0'; ALU2 <= '0'; -- ADD with RTYPE
                  WHEN RTYPE_SUB =>
                     ALU1 <= '0'; ALU2 <= '1'; -- SUB with RTYPE
                  WHEN RTYPE_AND =>
                     ALU1 <= '1'; ALU2 <= '0'; -- AND with RTYPE
                  WHEN RTYPE_OR =>
                     ALU1 <= '1'; ALU2 <= '1'; -- OR with RTYPE 
                  WHEN OTHERS =>
                     NULL;
               END CASE; 
                
            WHEN S_ITYPE_ADDI1=>
                EN1 <= '1'; RF1 <= '1'; WF1 <= '1';
               EN2 <= '1'; S1 <= '1'; S2 <= '0';
               ALU1 <= '0'; ALU2 <= '0';
               EN3 <= '1'; S3 <= '0';

            WHEN S_ITYPE_ADDI2=> 
                EN1 <= '1'; RF1 <= '1'; WF1 <= '1';
               EN2 <= '1'; S1 <= '1'; S2 <= '0';
               ALU1 <= '0'; ALU2 <= '0';
               EN3 <= '1'; S3 <= '0';


            WHEN S_ITYPE_SUBI1=>
                EN1 <= '1'; RF1 <= '1'; WF1 <= '1';
               EN2 <= '1'; S1 <= '1'; S2 <= '0';
               ALU1 <= '0'; ALU2 <= '1';
               EN3 <= '1'; S3 <= '0';

            WHEN S_ITYPE_SUBI2=>
                 EN1 <= '1'; RF1 <= '1'; WF1 <= '1';
               EN2 <= '1'; S1 <= '1'; S2 <= '0';
               ALU1 <= '0'; ALU2 <= '1';
               EN3 <= '1'; S3 <= '0';

            WHEN S_ITYPE_ANDI1=>
                 EN1 <= '1'; RF1 <= '1'; WF1 <= '1';
               EN2 <= '1'; S1 <= '1'; S2 <= '0';
               ALU1 <= '1'; ALU2 <= '0';
               EN3 <= '1'; S3 <= '0';


            WHEN S_ITYPE_ANDI2=>
                  EN1 <= '1'; RF1 <= '1'; WF1 <= '1';
               EN2 <= '1'; S1 <= '1'; S2 <= '0';
               ALU1 <= '1'; ALU2 <= '0';
               EN3 <= '1'; S3 <= '0';

            WHEN S_ITYPE_ORI1 =>
                 EN1 <= '1'; RF1 <= '1'; WF1 <= '1';
               EN2 <= '1'; S1 <= '1'; S2 <= '0';
               ALU1 <= '1'; ALU2 <= '1';
               EN3 <= '1'; S3 <= '0';

            WHEN S_ITYPE_ORI2 =>
                  EN1 <= '1'; RF1 <= '1'; WF1 <= '1';
               EN2 <= '1'; S1 <= '1'; S2 <= '0';
               ALU1 <= '1'; ALU2 <= '1';
               EN3 <= '1'; S3 <= '0';

            WHEN S_ITYPE_MOV =>
                EN1 <= '1'; RF1 <= '1'; WF1 <= '1';
               EN2 <= '1'; S1 <= '0'; S2 <= '0';
               EN3 <= '1'; S3 <= '0';

            WHEN S_ITYPE_S_REG1 =>
                EN1 <= '1'; WF1 <= '1';
               EN2 <= '1'; S1 <= '1'; S2 <= '1';
               EN3 <= '1'; S3 <= '0';

            WHEN S_ITYPE_S_REG2 =>
               EN1 <= '1'; WF1 <= '1';
               EN2 <= '1'; S1 <= '1'; S2 <= '1';
               EN3 <= '1'; S3 <= '0';
          

            WHEN S_ITYPE_S_MEM =>
                EN1 <= '1'; RF1 <= '1';
               EN2 <= '1'; S1 <= '1'; S2 <= '1';
               EN3 <= '1'; WM <= '1'; S3 <= '1';
             

            WHEN S_ITYPE_L_MEM1 =>
                 EN1 <= '1'; RF1 <= '1'; WF1 <= '1';
               EN2 <= '1'; S1 <= '1'; S2 <= '1';
               EN3 <= '1'; RM <= '1'; S3 <= '1';
          
            WHEN S_ITYPE_L_MEM2 =>
                 EN1 <= '1'; RF1 <= '1'; WF1 <= '1';
               EN2 <= '1'; S1 <= '1'; S2 <= '1';
               EN3 <= '1'; RM <= '1'; S3 <= '1';

            WHEN OTHERS=> 
                EN1 <= '0'; RF1 <= '0'; RF2 <= '0'; WF1 <= '0';
                EN2 <= '0'; S1 <= '0'; S2 <= '0'; ALU1 <= '0'; ALU2 <= '0';
                EN3 <= '0'; RM <= '0'; WM <= '0'; S3 <= '0';
                   END CASE;

            END PROCESS output_evaluation;



END FSM;
 
