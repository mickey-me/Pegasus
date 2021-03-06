// file: MUX4x1.v
// author: @ahmedleithy
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

module MUX4x1 #(parameter BYTES=`EIGHT)(
    input [BYTES-1:0] A, 
    input [BYTES-1:0] B,
    input [BYTES-1:0] C, 
    input [BYTES-1:0] D,
    input [1:0] sel, 
    output reg [BYTES-1:0] out
    );
    always @(*) begin
        case(sel) 
            `MUX4_SEL0: 
                out = A;
            `MUX4_SEL1: 
                out = B;
            `MUX4_SEL2: 
                out = C;
            default: 
                out = D;
        endcase
    end
endmodule
