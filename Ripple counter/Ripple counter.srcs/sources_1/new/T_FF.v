`timescale 1ns / 1ps
module T_FF(q,clk,clr);
input clk,clr;
output q;
D_FF d1(q,~q,clk,rst);
endmodule
