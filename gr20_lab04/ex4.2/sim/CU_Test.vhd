library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.myTypes.all;

entity cu_test is
end cu_test;

architecture TEST of cu_test is

    component cu
       port (
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
    end component;

    signal Clock: std_logic := '0';
    signal Reset: std_logic := '1';

    signal cu_opcode_i: std_logic_vector(OP_CODE_SIZE - 1 downto 0) := (others => '0');
    signal cu_func_i: std_logic_vector(FUNC_SIZE - 1 downto 0) := (others => '0');
    signal EN1_i, RF1_i, RF2_i, WF1_i, EN2_i, S1_i, S2_i, ALU1_i, ALU2_i, EN3_i, RM_i, WM_i, S3_i: std_logic := '0';

begin

        -- instance of DLX
       dut: cu
       port map (
                 -- OUTPUTS
                 EN1    => EN1_i,
                 RF1    => RF1_i,
                 RF2    => RF2_i,
                 WF1    => WF1_i,
                 EN2    => EN2_i,
                 S1     => S1_i,
                 S2     => S2_i,
                 ALU1   => ALU1_i,
                 ALU2   => ALU2_i,
                 EN3    => EN3_i,
                 RM     => RM_i,
                 WM     => WM_i,
                 S3     => S3_i,
                 -- INPUTS
                 OPCODE => cu_opcode_i,
                 FUNC   => cu_func_i,            
                 Clk    => Clock,
                 Rst    => Reset
               );

        Clock <= not Clock after 1 ns;
	    Reset <= '0', '1' after 6 ns;


        CONTROL: process
        begin

        wait for 5 ns;  ----- be careful! the wait statement is ok in test
                        ----- benches, but do not use it in normal processes!

        -- ADD RS1,RS2,RD -> Rtype
        cu_opcode_i <= RTYPE;
        cu_func_i <= RTYPE_ADD;
        wait for 5 ns;
        
  
        -- SUB RS1,RS2,RD -> Rtype
        cu_opcode_i <= RTYPE;
        cu_func_i <= RTYPE_SUB;
        wait for 6 ns;
        
        -- AND RS1,RS2,RD -> Rtype
        cu_opcode_i <= RTYPE;
        cu_func_i <= RTYPE_AND;
        wait for 7 ns;


        -- OR RS1,RS2,RD -> Rtype
        cu_opcode_i <= RTYPE;
        cu_func_i <= RTYPE_OR;
        wait for 8 ns;
       
        -- ADDI1 RS1,RD,INP1 -> Itype
        cu_opcode_i <= ITYPE_ADDI1;
        cu_func_i<=NOP;
        wait for 9 ns;

        -- .............
        -- add all the others instructions

        -- SUBI1 RB,RA,INP1 -> Itype
        cu_opcode_i <= ITYPE_SUBI1;
        cu_func_i<=NOP;
        wait for 5 ns;

        -- ANDI1 RB,RA,INP1 -> Itype
        cu_opcode_i <= ITYPE_ANDI1;
        cu_func_i<=NOP;
        wait for 6 ns;

        -- ORI1 RB,RA,INP1 -> Itype
        cu_opcode_i <= ITYPE_ORI1;
        cu_func_i<=NOP;
        wait for 7 ns;



        -- .............
        -- ADDI1 RS1,RD,INP1 -> Itype
        cu_opcode_i <= ITYPE_ADDI2;
        cu_func_i<=NOP;
        wait for 5 ns;

        -- SUBI2 RA,RB,INP2 -> Itype
        cu_opcode_i <= ITYPE_SUBI2;
        cu_func_i<=NOP;
        wait for 6 ns;
        
        -- ANDI2 RA,RB,INP2 -> Itype
        cu_opcode_i <= ITYPE_ANDI2;
        cu_func_i<=NOP;
        wait for 7 ns;
        
        -- ORI2 RA,RB,INP2 -> Itype
        cu_opcode_i <= ITYPE_ORI2;
        cu_func_i<=NOP;
        wait for 8 ns;
        
        
        -- .............
       
        -- MOV RA, RB
        cu_opcode_i <= ITYPE_MOV;
        cu_func_i<=NOP;
        wait for 6 ns;
        
        -- S_REG1 RB, INP1
        cu_opcode_i <= ITYPE_S_REG1;
        cu_func_i<=NOP;
        wait for 7 ns;
        
        -- S_REG2 RB, INP2
        cu_opcode_i <= ITYPE_S_REG2;
        cu_func_i<=NOP;
        wait for 8 ns;
        
        -- S_MEM RA, RB, INP2
        cu_opcode_i <= ITYPE_S_MEM;
        cu_func_i<=NOP;
        wait for 9 ns;
       
        -- L_MEM1 RB, RA, INP1
        cu_opcode_i <= ITYPE_L_MEM1;
        cu_func_i<=NOP;
        wait for 10 ns;
        
        -- L_MEM2 RA, RB, INP2
        cu_opcode_i <= ITYPE_L_MEM2;
        cu_func_i<=NOP;
        wait for 12 ns;

        wait;
        end process;

end TEST;
