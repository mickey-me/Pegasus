// file: defines.v
// author: @shalan
/*******************************************************************
*
* Module: Defines.v
* Project: Pegasus
* Author: Mohammed Shalan, mshalan@aucegypt.edu 
*         Ahmed Leithy,    ahmed.leithym@aucegypt.edu         
*         Arig Mostafa,    areeg.mostafa@aucegypt.edu
*         Muhammad Faisal, mfaisal@aucegypt.edu
*
* Description: This module represents our constants needed throughout 
*              the project
*
* Change history: 01/01/17 – Did something
* 10/29/17 – Did something else
*
**********************************************************************/
`define     IR_rs1                 19:15
`define     IR_rs2                 24:20
`define     IR_rd                  11:7
`define     IR_opcode              6:2
`define     IR_funct3              14:12
`define     IR_funct7              31:25
`define     IR_shamt               24:20
`define     IR_csr                 31:20
`define     IR_30                  30
`define     IR_full_opcode         6:0
 
`define     OPCODE_Branch          5'b11_000
`define     OPCODE_Load            5'b00_000
`define     OPCODE_Store           5'b01_000
`define     OPCODE_JALR            5'b11_001
`define     OPCODE_JAL             5'b11_011
`define     OPCODE_Arith_I         5'b00_100
`define     OPCODE_Arith_R         5'b01_100
`define     OPCODE_AUIPC           5'b00_101
`define     OPCODE_LUI             5'b01_101
`define     OPCODE_SYSTEM          5'b11_100 
`define     OPCODE_Custom          5'b10_001

`define     OPCODE_Load_F          7'b00_000_11

`define     F3_ADD                 3'b000
`define     F3_SLL                 3'b001
`define     F3_SLT                 3'b010
`define     F3_SLTU                3'b011
`define     F3_XOR                 3'b100
`define     F3_SRL                 3'b101
`define     F3_OR                  3'b110
`define     F3_AND                 3'b111

//CSRs
`define     F3_LEAST_CSR_RW             2'b01
`define     F3_LEAST_CSR_RS             2'b10
`define     F3_LEAST_CSR_RC             2'b11
`define     F3_LEAST_LOC                13:12
`define     F3_Imm_BIT_LOC              14
`define     F3_CSR_ALL_BIT              3'b0
`define     CSR_ADDR_LOCATION           31:20
`define     CSR_ADDR_SIZE               11:0
`define     CSR_ADDR_ONE                12'b1
`define     CSR_ADDR_ZERO               12'b0
`define     CSR_ADDR_MRET               12'h302


`define     BR_BEQ                 3'b000
`define     BR_BNE                 3'b001
`define     BR_BLT                 3'b100
`define     BR_BGE                 3'b101
`define     BR_BLTU                3'b110
`define     BR_BGEU                3'b111

`define     OPCODE                 IR[`IR_opcode]

`define     ALU_ADD                4'b00_00
`define     ALU_SUB                4'b00_01
`define     ALU_SLL                4'b00_10
`define     ALU_PASS               4'b00_11
`define     ALU_SLT                4'b01_00
`define     ALU_SLTU               4'b01_10
`define     ALU_XOR                4'b10_00
`define     ALU_SRL                4'b10_10
`define     ALU_SRA                4'b10_11
`define     ALU_OR                 4'b11_00
`define     ALU_AND                4'b11_10

`define     SYS_EC_EB              3'b000
`define     SYS_CSRRW              3'b001
`define     SYS_CSRRS              3'b010
`define     SYS_CSRRC              3'b011
`define     SYS_CSRRWI             3'b101
`define     SYS_CSRRSI             3'b110
`define     SYS_CSRRCI             3'b111

//Ahmed added these
`define     MEM_Bank_Range         1023:0
`define     ZERO                   0
`define     EIGHT                  8
`define     FOUR                   4
`define     ZERO_ONE_BIT           1'b0
`define     ONE_ONE_BIT            1'b1
`define     THIRTY_TWO             32
`define     NOP                    32'b000000000000_00000_000_00000_0010011
`define     MCYCLE    32'hb00
`define     MTIME    32'hb01
`define     MINSTRET    32'hb02
`define     MTIMECMP    32'hb03
`define     MEPC    32'h341
`define     MIE    32'h304
`define     MIP    32'h344
`define     FOUR_ONES     4'b1111
//What Areeg Added!
`define     GENERATE_START         5'd1
`define     GENERATE_END           5'd31
`define     DEFAULT_OP             4'd0
`define     NO_FORWARD             1'b0
`define     FORWARD                1'b1
`define     ZERO_31                31'd0
`define     ZERO_2                 2'b00
`define     ZERO_1                 1'b0
`define     ZERO_REGISTER          5'd0
`define     ONE_1                  1'b1
`define     MUX4_SEL0              2'b00
`define     MUX4_SEL1              2'b01
`define     MUX4_SEL2              2'b10
`define     RESET_BIT              1'b0
`define     ZERO_32                32'd0
`define     SIXTY_FOUR             64
`define     _2ND_OPERAND_LOWER_5   4:0
`define     LAST_BIT               31

//Faisal Added these
//to be changed
`define     ADDRESS_SIZE           4:0
`define     DATA_SIZE              31:0
`define     REGISTERS_RANGE       31:0
`define     WRITE_NONE             32'b0000_0000_0000_0000_0000_0000_0000_0000
`define     WRITE_FIRST            32'b0000_0000_0000_0000_0000_0000_0000_0001
`define     FIRST_REG_NUM          6'b000001
`define     LAST_REG_NUM           6'b011111
`define     DATA_SIZE              31:0
`define     DATA_PARAMTER_SIZE     32
`define     PARAMTER_SIZE_Zero     0
`define     RESET_DATA             32'b0000_0000_0000_0000_0000_0000_0000_0000
`define     BRANCHFALSE            1'b0
`define     BRANCHTRUE             1'b1
`define     ALUSEL_SIZE            3:0
`define     ONES_DATA             32'b1111_1111_1111_1111_1111_1111_1111_1111


//PARTS LOCATIONS
`define     COMPRESSED_ADDRESS_RS1_RD                                   11:7
`define     COMPRESSED_ADDRESS_RD                                       11:7
`define     COMPRESSED_ADDRESS_RS1                                      11:7
`define     COMPRESSED_ADDRESS_RS1_RD_REDUCED                           9:7
`define     COMPRESSED_ADDRESS_RS1_REDUCED                              9:7
`define     COMPRESSED_ADDRESS_RD_REDUCED                               4:2
`define     COMPRESSED_ADDRESS_RS2_REDUCED                              4:2
`define     COMPRESSED_ADDRESS_RS2                                      6:2

`define     COMPRESSED_ADDRESS_QUADRANT                                 1:0
`define     COMPRESSED_ADDRESS_FUNC3                                    15:13
`define     COMPRESSED_ADDRESS_FUNC_11_10                               11:10
`define     COMPRESSED_ADDRESS_FUNC_12                                  12
`define     COMPRESSED_ADDRESS_FUNC_6_5                                 6:5

//INSTRUCTIONS SIZES
`define     COMPRESSED_INST_SIZE                                        31:0
`define     EXTENDED_INST_SIZE                                          31:0

`define     NOP_INSTRUCTION                                             32'b1

//ADDRESSES
`define     COMPRESSED_ADDR_ZERO                                        5'b00
`define     COMPRESSED_ADDR_ONE                                         5'b01
`define     COMPRESSED_ADDR_TWO                                         5'b10
`define     COMPRESSED_ADDR_EXTENSION                                   2'b01

//QUADRANTS
`define     COMPRESSED_QUADRANT_0                                       2'b00
`define     COMPRESSED_QUADRANT_1                                       2'b01
`define     COMPRESSED_QUADRANT_2                                       2'b10
`define     NOT_COMPRESSED                                              2'b11

//Function 3
//Quadrant one
`define     COMPRESSED_FUNC3_ADDI4SPN                                   3'b000
`define     COMPRESSED_FUNC3_FLD                                        3'b001
`define     COMPRESSED_FUNC3_LW                                         3'b010
`define     COMPRESSED_FUNC3_FLW                                        3'b101
`define     COMPRESSED_FUNC3_FSD                                        3'b101
`define     COMPRESSED_FUNC3_SW                                         3'b110
`define     COMPRESSED_FUNC3_FSW                                        3'b111

//QUADRANT TWO
`define     COMPRESSED_FUNC3_ADDI                                       3'b000
`define     COMPRESSED_FUNC3_JAL                                        3'b001
`define     COMPRESSED_FUNC3_LI                                         3'b010
`define     COMPRESSED_FUNC3_ADD16SP_LUI                                3'b011
`define     COMPRESSED_FUNC3_SR_ALU                                     3'b100

//START:    FUNC10,11
`define     COMPRESSED_FUNC_10_11_SRLI_64                               2'b00
`define     COMPRESSED_FUNC_10_11_SRAI_64                               2'b01
`define     COMPRESSED_FUNC_10_11_ANDI                                  2'b10

`define     COMPRESSED_FUNC_10_11_ALU                                   2'b11
//FUNC5,6
`define     COMPRESSED_FUNC_5_6_SUB                                     2'b00
`define     COMPRESSED_FUNC_5_6_XOR                                     2'b01
`define     COMPRESSED_FUNC_5_6_OR                                      2'b10
`define     COMPRESSED_FUNC_5_6_AND                                     2'b11
//FUNC5,6
`define     COMPRESSED_FUNC12_ALU                                       1'b0
//END:      FUNC10,11

`define     COMPRESSED_FUNC3_J                                          3'b101
`define     COMPRESSED_FUNC3_BEQZ                                       3'b110
`define     COMPRESSED_FUNC3_BNEZ                                       3'b111

//QUADRANT THREE
`define     COMPRESSED_FUNC3_SLLI_SLLI64                                3'b000
`define     COMPRESSED_FUNC3_FLDSP                                      3'b001
`define     COMPRESSED_FUNC3_LWSP                                       3'b010
`define     COMPRESSED_FUNC3_FLWSP                                      3'b011
`define     COMPRESSED_FUNC3_____                                       3'b100
`define     COMPRESSED_FUNC12_JR_                                       1'b0
`define     COMPRESSED_FUNC12____                                       1'b1
`define     COMPRESSED_FUNC3_FSDSP                                      3'b101
`define     COMPRESSED_FUNC3_SWSP                                       3'b110
`define     COMPRESSED_FUNC3_FSWSP                                      3'b111

//RV32I defines
`define     F3_LW                                                       3'b010
`define     F3_SW                                                       3'b010
`define     F3_JALR                                                     3'b000
`define     SRLI_CODE                                                   7'b0
`define     SRAI_CODE                                                   7'b0100000
`define     SUB_CODE                                                    7'b0100000
`define     XOR_CODE                                                    7'b0000000
`define     OR_CODE                                                     7'b0000000
`define     AND_CODE                                                    7'b0000000
`define     ADD_CODE                                               7'b0000000
