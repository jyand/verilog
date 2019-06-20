`timescale 1ns / 1ps

module ARM_ALU(fs, a, b, cout, z, v, n, status, f);
	
	input [3:0] fs; //function select
	input [63:0] a, b; //ALU operands
	output cout, z, v, n; //flags: carryout, zero, overflow, and negative respectively
	output wire [3:0] status; //concatenation of status flags
	output reg [63:0] f; //result

	always @(fs, a, b) begin
		case(fs)
			4'b0000: f = a & b; //bitwise and
			4'b0001: f = a | b; //bitwise or
			4'b0010: f = a + b; //add
			4'b0110: f = a - b; //sub
			4'b0111: f = b; //=b
			4'b1100: f = ~(a | b); //bitwise nor
			default: f = 0; //default result = 0
		endcase
	end
	
	assign cout = (a[31:0] >= 32'hFFFFFFFF && b[31:0] >= 32'hFFFFFFFF && fs == 4'b0000);
	assign v = ({cout, f[63]} == 1'b1);
	assign n = (f[63] == 1'b1);
	assign z = f[63];	
	assign status = {cout, z, v, n};
	
endmodule
