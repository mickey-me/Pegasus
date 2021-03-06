// file: ControlUnit.v
// author: @mfaisal
/*******************************************************************
*
* Module: module_name.v
* Project: Project_Name
* Author: name and email
* Description: put your description here
*
* Change history: 01/01/17 – Did something
* 10/29/17 – Did something else
*
**********************************************************************/
`timescale 1ns/1ns
`include "defines.v"

//Signals Length
//`define     OPCODE_Length               4:0

//Source Muxes Control Signals
// src2 == 0 then rf else imm
// src1 == 0 then rf else pc
// pcsrc == 0 then just adding 4 else getting adderval
// to solve problem with beq, just make use of the and module to eval MAGICBOOL

module ControlUnit (
    input [`IR_full_opcode] opcode,
    input [`IR_funct3] funct3,
    input [`IR_csr] csr_code,
    output alu_src_two_sel,
    output mem_read,
    output mem_write,
    output reg_write_back,
    output branch,
    output lui,
    output jal,
    output jalr,
    output auipc,
    output csr,
    output csr_read_write,
    output csr_src1_sel_imm,
    output csr_src1_sel_rc,
    output csr_src2_sel,
    output ebreak_identifier,
    output ecall_identifier,
    output mret_identifier
);

assign alu_src_two_sel = (opcode[`IR_opcode] == `OPCODE_Arith_I) || (opcode[`IR_opcode] == `OPCODE_Store) || (opcode[`IR_opcode] == `OPCODE_JALR) || (opcode == `OPCODE_Load_F) || (opcode[`IR_opcode] == `OPCODE_LUI) ;
assign mem_read = (opcode == `OPCODE_Load_F);
assign mem_write = (opcode[`IR_opcode] == `OPCODE_Store);
assign reg_write_back = (opcode[`IR_opcode] == `OPCODE_Arith_I ) || (opcode[`IR_opcode] == `OPCODE_Arith_R) || (opcode[`IR_opcode] == `OPCODE_Load) || (opcode[`IR_opcode] == `OPCODE_JAL) || (opcode[`IR_opcode] == `OPCODE_JALR) || (opcode[`IR_opcode] == `OPCODE_AUIPC) || (opcode[`IR_opcode] == `OPCODE_LUI) || (csr);
assign branch = (opcode[`IR_opcode] == `OPCODE_Branch);
assign jal = (opcode[`IR_opcode] == `OPCODE_JAL);
assign jalr = (opcode[`IR_opcode] == `OPCODE_JALR);
assign lui = (opcode[`IR_opcode] == `OPCODE_LUI);
assign auipc = (opcode[`IR_opcode] == `OPCODE_AUIPC);
assign csr = (opcode[`IR_opcode] == `OPCODE_SYSTEM) && (|funct3[`F3_LEAST_LOC]);
assign csr_read_write = (opcode[`IR_opcode] == `OPCODE_SYSTEM) && (funct3[`F3_LEAST_LOC] == `F3_LEAST_CSR_RW);
assign csr_src1_sel_imm = (opcode[`IR_opcode] == `OPCODE_SYSTEM) && funct3[`F3_Imm_BIT_LOC];
assign csr_src1_sel_rc = (opcode[`IR_opcode] == `OPCODE_SYSTEM) && (funct3[`F3_LEAST_LOC] == `F3_LEAST_CSR_RC);
assign csr_src2_sel = csr;
assign ebreak_identifier = (opcode[`IR_opcode] == `OPCODE_SYSTEM) && (csr_code == `CSR_ADDR_ONE);
assign ecall_identifier = (opcode[`IR_opcode] == `OPCODE_SYSTEM) && (csr_code == `CSR_ADDR_ZERO);
assign mret_identifier =  (opcode[`IR_opcode] == `OPCODE_SYSTEM) && (csr_code == `CSR_ADDR_MRET) && (funct3 == `F3_CSR_ALL_BIT);

endmodule















