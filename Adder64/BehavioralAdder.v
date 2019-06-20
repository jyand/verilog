`timescale 1ns / 1ps

module BehavioralAdder(a, b, s);
    input [63:0] a, b;
    output [64:0] s;
    
    assign s = a + b;

endmodule
