`timescale 1ns / 1ps

module RippleCarryAdder(a, b, ci, s, c);
    
   input [63:0] a, b; //operands
	input ci;
	output [63:0] s; //sum 
	inout [63:0] c; //carry
	
	FullAdder Adder0(a[0], b[0], ci, s[0], c[0]);
    FullAdder Adder1(a[1], b[1], c[0], s[1], c[1]);
    FullAdder Adder2(a[2], b[2], c[1], s[2], c[2]);
    FullAdder Adder3(a[3], b[3], c[2], s[3], c[3]);
    FullAdder Adder4(a[4], b[4], c[3], s[4], c[4]);
    FullAdder Adder5(a[5], b[5], c[4], s[5], c[5]);
    FullAdder Adder6(a[6], b[6], c[5], s[6], c[6]);
    FullAdder Adder7(a[7], b[7], c[6], s[7], c[7]);
    FullAdder Adder8(a[8], b[8], c[7], s[8], c[8]);
    FullAdder Adder9(a[9], b[9], c[8], s[9], c[9]);
    FullAdder Adder10(a[10], b[10], c[9], s[10], c[10]);
    FullAdder Adder11(a[11], b[11], c[10], s[11], c[11]);
    FullAdder Adder12(a[12], b[12], c[11], s[12], c[12]);
    FullAdder Adder13(a[13], b[13], c[12], s[13], c[13]);
    FullAdder Adder14(a[14], b[14], c[13], s[14], c[14]);
    FullAdder Adder15(a[15], b[15], c[14], s[15], c[15]);
    FullAdder Adder16(a[16], b[16], c[15], s[16], c[16]);
    FullAdder Adder17(a[17], b[17], c[16], s[17], c[17]);
    FullAdder Adder18(a[18], b[18], c[17], s[18], c[18]);
    FullAdder Adder19(a[19], b[19], c[18], s[19], c[19]);
    FullAdder Adder20(a[20], b[20], c[19], s[20], c[20]);
    FullAdder Adder21(a[21], b[21], c[20], s[21], c[21]);
    FullAdder Adder22(a[22], b[22], c[21], s[22], c[22]);
    FullAdder Adder23(a[23], b[23], c[22], s[23], c[23]);
    FullAdder Adder24(a[24], b[24], c[23], s[24], c[24]);
    FullAdder Adder25(a[25], b[25], c[24], s[25], c[25]);
    FullAdder Adder26(a[26], b[26], c[25], s[26], c[26]);
    FullAdder Adder27(a[27], b[27], c[26], s[27], c[27]);
    FullAdder Adder28(a[28], b[28], c[27], s[28], c[28]);
    FullAdder Adder29(a[29], b[29], c[28], s[29], c[29]);
    FullAdder Adder30(a[30], b[30], c[29], s[30], c[30]);
    FullAdder Adder31(a[31], b[31], c[30], s[31], c[31]);
    FullAdder Adder32(a[32], b[32], c[31], s[32], c[32]);
    FullAdder Adder33(a[33], b[33], c[32], s[33], c[33]);
    FullAdder Adder34(a[34], b[34], c[33], s[34], c[34]);
    FullAdder Adder35(a[35], b[35], c[34], s[35], c[35]);
    FullAdder Adder36(a[36], b[36], c[35], s[36], c[36]);
    FullAdder Adder37(a[37], b[37], c[36], s[37], c[37]);
    FullAdder Adder38(a[38], b[38], c[37], s[38], c[38]);
    FullAdder Adder39(a[39], b[39], c[38], s[39], c[39]);
    FullAdder Adder40(a[40], b[40], c[39], s[40], c[40]);
    FullAdder Adder41(a[41], b[41], c[40], s[41], c[41]);
    FullAdder Adder42(a[42], b[42], c[41], s[42], c[42]);
    FullAdder Adder43(a[43], b[43], c[42], s[43], c[43]);
    FullAdder Adder44(a[44], b[44], c[43], s[44], c[44]);
    FullAdder Adder45(a[45], b[45], c[44], s[45], c[45]);
    FullAdder Adder46(a[46], b[46], c[45], s[46], c[46]);
    FullAdder Adder47(a[47], b[47], c[46], s[47], c[47]);
    FullAdder Adder48(a[48], b[48], c[47], s[48], c[48]);
    FullAdder Adder49(a[49], b[49], c[48], s[49], c[49]);
    FullAdder Adder50(a[50], b[50], c[49], s[50], c[50]);
    FullAdder Adder51(a[51], b[51], c[50], s[51], c[51]);
    FullAdder Adder52(a[52], b[52], c[51], s[52], c[52]);
    FullAdder Adder53(a[53], b[53], c[52], s[53], c[53]);
    FullAdder Adder54(a[54], b[54], c[53], s[54], c[54]);
    FullAdder Adder55(a[55], b[55], c[54], s[55], c[55]);
    FullAdder Adder56(a[56], b[56], c[55], s[56], c[56]);
    FullAdder Adder57(a[57], b[57], c[56], s[57], c[57]);
    FullAdder Adder58(a[58], b[58], c[57], s[58], c[58]);
    FullAdder Adder59(a[59], b[59], c[58], s[59], c[59]);
    FullAdder Adder60(a[60], b[60], c[59], s[60], c[60]);
    FullAdder Adder61(a[61], b[61], c[60], s[61], c[61]);
    FullAdder Adder62(a[62], b[62], c[61], s[62], c[62]);
    FullAdder Adder63(a[63], b[63], c[62], s[63], c[63]);

endmodule
