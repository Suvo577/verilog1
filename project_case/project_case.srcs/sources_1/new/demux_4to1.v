`timescale 1ns / 1ps
module demux_4to1(out,in,sel);
output reg [3:0]out;
input in;
input [1:0]sel;
always@(*)
case(sel)
2'd0 : begin 
       out[0] = in;
       out[1] = 1'bz;
       out[2] = 1'bz;
       out[3] = 1'bz;
        end 
2'd1 : begin 
       out[0] = 1'bz;
       out[1] = in;
       out[2] = 1'bz;
       out[3] = 1'bz;
        end 
2'd2 : begin 
       out[0] = 1'bz;
       out[1] = 1'bz;
       out[2] = in;
       out[3] = 1'bz;
        end         
2'd3 : begin 
       out[0] = 1'bz;
       out[1] = 1'bz;
       out[2] = 1'bz;
       out[3] = in;
        end 
2'bx0,2'bx1,2'b1x,2'b0x,2'bxx,2'bxz,2'bzx : begin 
                                            out[0] = 1'bx;
                                            out[1] = 1'bx;
                                            out[2] = 1'bx;
                                            out[3] = 1'bx;
                                            end 
2'bz0,2'bz1,2'b1z,2'b0z,2'bzz : begin 
                                out[0] = 1'bz;
                                out[1] = 1'bz;
                                out[2] = 1'bz;
                                out[3] = 1'bz;
                                end        
default : $display("Unspecified control signal");                                   
endcase
endmodule
