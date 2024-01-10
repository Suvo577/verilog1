`timescale 1ns / 1ps
module counter(Q,clk,clr);
input clk,clr;
output [3:0]Q;
TFF t0(Q[0],clk,clr);
TFF t1(Q[1],Q[0],clr);  
TFF t2(Q[2],Q[1],clr);
TFF t3(Q[3],Q[2],clr);
endmodule
module TFF(q,clk,clr);
input clk,clr;
output q;
DFF d1(q,,~q,clk,clr);
endmodule

// negetive edge triggered d-ff
module DFF(q,qbar,d,clk,clr);
input d,clk,clr;   //input-output decleartion 
output q,qbar;
wire s,sbar,r,rbar,cbar; // intermediate port declearation
assign cbar = ~clr;
assign                  //Input latches
sbar = ~(s & rbar),
    s = ~(sbar & cbar & ~clk),
    r = ~(s & rbar & ~clk),
 rbar = ~(r & d & cbar);
 assign                 // output latches
    q = ~(s & qbar),
 qbar = ~(r & cbar & q);
endmodule


