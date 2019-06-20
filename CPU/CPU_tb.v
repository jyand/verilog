`timescale 1ns / 1ps

module CPU_tb();
	
	reg AM, clk, reset;
   reg [2:0] opcode;
   wire [15:0] instrWord;
	integer i;
	
	CPU dut(
		.clk(clk),
		.reset(reset),
		.AM(AM),
		.opcode(opcode),
		.instrWord(instrWord)
	);
	
	initial begin
		AM = 0;
		opcode = 3'b000;
		clk = 0;
		reset = 0;
		
		for(i = 0; i<8; i = i+1) begin
			#4
			reset = ~reset;
			AM = ~AM;
			clk = ~clk;
			opcode <= opcode + 3'b001;
		end
	end	
endmodule
