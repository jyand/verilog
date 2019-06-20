`timescale 1ns / 1ps

module SimpleProcessor(clk, reset, AM, IR_in, AC_in, PC_in, IR_out, AC_out, PC_out, instrWord);

    input clk, reset, AM;
    input [15:0] IR_in, AC_in;
    input [11:0] PC_in;
    output [15:0] IR_out, AC_out;
    output [11:0] PC_out;
    
    reg [15:0] MD;
    reg [11:0] MA;
    reg [2:0] opcode;
    
    
    
endmodule