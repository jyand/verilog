`timescale 1ns / 1ps

module CarryLookaheadAdder_tb();

   reg [63:0] a, b;
	reg ci;
	wire [63:0] s;
	wire [31:0] c;
	integer i, j;
	
	CarryLookaheadAdder dut(
	    .a(a),
	    .b(b),
		.ci(ci),
	    .s(s),
		.c(c)
	);
	
	initial begin
		ci = 1'b0;
	    a = 64'h0000000000000000;
	    b = 64'h0000000000000000;
	    for (i = 0; i<32; i = i+1) begin
				#1
				a <= a+1'h1;
                for (j = 0; j<32; j = j+1) begin
                    #1
                    b <= b+1'h1;
                end
		    end
	    end
	    
endmodule
