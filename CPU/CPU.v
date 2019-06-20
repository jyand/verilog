`timescale 1ns / 1ps

module CPU(clk, reset, AM, opcode, instrWord);
    input clk, reset, AM;
	 input [2:0] opcode;
    reg [15:0] IR, MD, AC;
    reg [11:0] PC, MA;
    output reg [15:0] instrWord;
	 
	 reg [15:0] M [0:11];
    
   /* initial begin
		IR = 16'h0000;
		MD = 16'h0000;
		AC = 16'h0000;
		PC = 12'h000;
		MA = 12'h000;
	end
		*/
    always @(posedge clk) begin
        if(reset == 1)        
            IR <= M[PC];
            PC <= PC + 1'b1;
            if(opcode == 3'b000)begin
                AC <= ~AC;
                end
            if(opcode == 3'b011)begin
                 AC <= AC + 1'b1;   
                end
            if(opcode == 3'b010 && AC > 16'h0000)begin
                if(AM) begin
                    MA <= IR;
                    MD <=M[MA];
                    PC <= MD;
                    end
                else begin
                    PC <= IR;
                    end
                end
            else begin
                MA <= IR;
                if(opcode == 3'b100) begin
                    if(AM)begin
                        MD <= M[MA];
                        MA <= MD;
                        end
                    M[MA] <= AC;
                    AC <= 0;
                    end
                else begin
                    MD <= M[MA];
                    if(AM) begin
                        MA <= MD;
                        MD <= M[MA];
                        end
                    if(opcode == 001) begin
                        AC <= AC + MD; //+ C;
                        end
                    else begin
                        AC <= MD;
                        end
                    end
                end
            instrWord[15:13] <= opcode;
            instrWord[12] <= AM;
            instrWord[11:0] <= MA; 
        end         
endmodule
    
    