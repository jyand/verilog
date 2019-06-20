`timescale 1ns / 1ps

module FullAdder(a, b, cin, s, cout);

	input a, b, cin;
	output s, cout;
	
	wire A, B, Ci, S, Co;
	wire x, y, z;
	wire u, v;
	assign A = a;
	assign B = b;
	assign Ci = cin;
	assign s = S;
	assign cout = Co;
	
	
	xor xor1 (x, A, B);
	xor xor2 (S, Ci, x);
	and and1 (y, A, B);
	and and2 (z, Ci, x);
	or or1 (Co, y, z);
	
endmodule
