`timescale 1ns / 1ps

module Lookahead_2Bit(a, b, cin, s, cout);
    
    input [1:0] a, b;
    input cin;
    output [1:0] s;
    output cout;
    
    wire z, y, x, w, v, u, t, r;
    
    xor xor1 (z, a[0], b[0]);
    xor xor2 (s[0], z, cin);
    and and1 (y, z, cin);
    and and2 (x, a[0], b[0]);
    xor xor3 (w, a[1], b[1]);
    xor xor4 (v, x, y);
    xor xor5 (s[1], w, v);
    
    and and3 (u, a[1], b[1]);
    or or1 (t, y, x);
    and and4 (r, w, t);
    or or2 (cout, u, r);
    
endmodule 
     