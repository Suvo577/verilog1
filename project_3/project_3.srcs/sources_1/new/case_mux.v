`timescale 1ns / 1ps
module case_mux(out,in,sel);// module decleration
output reg out; // in & out port declration 
input [3:0]in;
input [1:0]sel;
always@(*)
case(sel)           // design mux output using case statement 
2'd0 : out = in[0];
2'd1 : out = in[1];
2'd2 : out = in[2];
2'd3 : out = in[3];
endcase
endmodule
