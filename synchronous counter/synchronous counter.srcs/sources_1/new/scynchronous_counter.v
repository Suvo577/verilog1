`timescale 1ns / 1ps
module scynchronous_counter(Q,count_en,clk,clr);
output [3:0]Q;                     // input output bit decleration
input clk,clr,count_en;
wire [3:0]j; // intermediate jk port decleration
assign j[0] = count_en,         // assign count enable input throuh jk pin
       j[1] = (count_en & Q[0]),
       j[2] = (j[1] & Q[1]),
       j[3] = (j[2] & Q[2]);
MS_FF ff1(Q[0],,j[0],j[0],clk,clr); // counter output design by ms-jk flip flop
MS_FF ff2(Q[1],,j[1],j[1],clk,clr);
MS_FF ff3(Q[2],,j[2],j[2],clk,clr);
MS_FF ff4(Q[3],,j[3],j[3],clk,clr);
endmodule
// define MSJK flip flop
module MS_FF(q,qbar,j,k,clk,clr);
output q,qbar;
input j,k,clk,clr;
wire cbar,a,b,c,d,y,ybar;
assign cbar = ~clk; // making negetive clock for slave 
assign 
        a = ~(j & clk & clr & qbar),        // generating interdiate steps
        b = ~(k & clk & q),
        y = ~(a & ybar),
     ybar = ~(b & clr & y),
        c = ~(y & cbar),
        d = ~(ybar & cbar);
assign                         // output latch configuration
        q = ~(c & qbar),
     qbar = ~(q & d & clr);
endmodule
