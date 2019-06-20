`timescale 1ns / 1ps

module BehavioralAdder_tb();

   reg [63:0] a, b;
	wire [64:0] s;
	integer i, j;
	
	BehavioralAdder dut(
	    .a(a),
	    .b(b),
	    .s(s)
	);
	
	initial begin
	    a = 64'h0000000000000000;
	    b = 64'h0000000000000000;
	    for (i = 0; i < 32; i = i+1) begin
				#1
				a <= a+1'h1;
                for (j = 0; j<32; j = j+1) begin
                    #1
                    b <= b+1'h1;
                end
		    end
	    end
	    
endmodule
