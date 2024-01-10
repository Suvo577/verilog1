`timescale 1ns / 1ps
module cond_op_mux(i,s,f);
input [3:0]i;
input [1:0]s;
output f;
assign #1  f = (s[1]?(s[0]? i[3]:i[2]):(s[0] ? i[1]:i[0]));
endmodule
