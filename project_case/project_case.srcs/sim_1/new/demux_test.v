`timescale 1ns / 1ps
module demux_test();
reg in;
reg [1:0]sel;
wire [3:0]out;
demux_4to1 e1(out,in,sel);
initial
begin
in = 1'b1;
#2 sel = 2'b00;
#2 sel = 2'b01;
#2 sel = 2'bxz;
#2 sel = 2'b10;
#2 sel = 2'b1x;
#2 sel = 2'b1z;
#2 in = 1'b0;
#2 sel = 2'b11;
#2 sel = 2'bx0;
#2 sel = 2'b10;
#4 $finish;
end
endmodule
