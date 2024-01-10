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
DFF d1(q,~q,clk,rst);
endmodule

// negetive edge triggered d-ff
module DFF(q,qbar,d,clk,clr);
input d,clk,clr;   //input-output decleartion 
output q,qbar;
wire s,sbar,r,rbar; // intermediate port declearation
assign                  //Input latches
sbar = ~(s & rbar),
    s = ~(sbar & ~clr & ~clk),
    r = ~(s & rbar & s),
 rbar = ~(r & d & ~clr);
 assign                 // output latches
    q = ~(s & qbar),
 qbar = ~(r & ~clr & q);
endmodule


