`timescale 1ns / 1ps

module ALU_tb();
		reg [3:0] fs;
		reg [63:0] a, b;
		wire [63:0] f;
		wire [3:0] status;
		integer i;
		
		ARM_ALU dut(
			.fs(fs),
			.a(a),
			.b(b),
			.status(status),
			.f(f)
		);
		
		initial
		begin
		    a = 64'h0000000000000000;
		    b = 64'h0000000000000000;
			for(i = 0; i<8; i=i+1)begin
			    #1
			    a <= a + 2'hFF;
			    b <= b + 2'hFF;
			    #16
			    fs = 4'b0000;
			    #16
			    fs = 4'b0001;
			    #16
			    fs = 4'b0010;
			    #16
			    fs = 4'b0110;
			    #16
			    fs = 4'b0111;
			    #16
			    fs = 4'b1100;
			end
		end		
endmodule
