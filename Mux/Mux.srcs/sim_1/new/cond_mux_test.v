`timescale 1ns / 1ps
module cond_mux_test();
reg [3:0]in;
reg [1:0]sel;
wire out;
cond_op_mux dut(.in(i),.sel(s),.out(f));
initial
begin
#2 sel=2'b00;in=4'hA;
#2 sel=2'd01;in=4'hA;
#2 sel=2'd10;in=4'hA;
#2 sel=2'd11;in=4'hA;
#5 $finish;
end
endmodule
