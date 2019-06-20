`timescale 1ns / 1ps

module CarryLookaheadadder(a, b, c0, s, c);
    
    input [63:0] a, b;
    input c0;
    output [63:0] s;
    inout [63:0] c;
    
    Lookahead_2Bit LA1 (a[1:0], b[1:0], c0, s[1:0], c[0]);
	Lookahead_2Bit LA2 (a[3:2], b[3:2], c[0], s[3:2], c[1]);
	Lookahead_2Bit LA3 (a[5:4], b[5:4], c[1], s[5:4], c[2]);
	Lookahead_2Bit LA4 (a[7:6], b[7:6], c[2], s[7:6], c[3]);
	Lookahead_2Bit LA5 (a[9:8], b[9:8], c[3], s[9:8], c[4]);
	Lookahead_2Bit LA6 (a[11:10], b[11:10], c[4], s[11:10], c[5]);
	Lookahead_2Bit LA7 (a[13:12], b[13:12], c[5], s[13:12], c[6]);
	Lookahead_2Bit LA8 (a[15:14], b[15:14], c[6], s[15:14], c[7]);
	Lookahead_2Bit LA9 (a[17:16], b[17:16], c[7], s[17:16], c[8]);
	Lookahead_2Bit LA10 (a[19:18], b[19:18], c[8], s[19:18], c[9]);
	Lookahead_2Bit LA11 (a[21:20], b[21:20], c[9], s[21:20], c[10]);
	Lookahead_2Bit LA12 (a[23:22], b[23:22], c[10], s[23:22], c[11]);
	Lookahead_2Bit LA13 (a[25:24], b[25:24], c[11], s[25:24], c[12]);
	Lookahead_2Bit LA14 (a[27:26], b[27:26], c[12], s[27:26], c[13]);
	Lookahead_2Bit LA15 (a[29:28], b[29:28], c[13], s[29:28], c[14]);
	Lookahead_2Bit LA16 (a[31:30], b[31:30], c[14], s[31:30], c[15]);
	Lookahead_2Bit LA17 (a[33:32], b[33:32], c[15], s[33:32], c[16]);
	Lookahead_2Bit LA18 (a[35:34], b[35:34], c[16], s[35:34], c[17]);
	Lookahead_2Bit LA19 (a[37:36], b[37:36], c[17], s[37:36], c[18]);
	Lookahead_2Bit LA20 (a[39:38], b[39:38], c[18], s[39:38], c[19]);
	Lookahead_2Bit LA21 (a[41:40], b[41:40], c[19], s[41:40], c[20]);
	Lookahead_2Bit LA22 (a[43:42], b[43:42], c[20], s[43:42], c[21]);
	Lookahead_2Bit LA23 (a[45:44], b[45:44], c[21], s[45:44], c[22]);
	Lookahead_2Bit LA24 (a[47:46], b[47:46], c[22], s[47:46], c[23]);
	Lookahead_2Bit LA25 (a[49:48], b[49:48], c[23], s[49:48], c[24]);
	Lookahead_2Bit LA26 (a[51:50], b[51:50], c[24], s[51:50], c[25]);
	Lookahead_2Bit LA27 (a[53:52], b[53:52], c[25], s[53:52], c[26]);
	Lookahead_2Bit LA28 (a[55:54], b[55:54], c[26], s[55:54], c[27]);
	Lookahead_2Bit LA29 (a[57:56], b[57:56], c[27], s[57:56], c[28]);
	Lookahead_2Bit LA30 (a[59:58], b[59:58], c[28], s[59:58], c[29]);
	Lookahead_2Bit LA31 (a[61:60], b[61:60], c[29], s[61:60], c[30]);
	Lookahead_2Bit LA32 (a[63:62], b[63:62], c[30], s[63:62], c[31]);
	
endmodule
