`timescale 1ns / 1ps
module cond_mux_test();
reg [3:0]i;
reg [1:0]s;
wire f;
cond_op_mux dut(.i(i),.s(s),.f(f));
initial
begin
#2 s=2'b00;i=4'hA;
#1 s=2'b01;i=4'hA;
#1 s=2'b10;i=4'hA;
#1 s=2'b11;i=4'hA;
#5 $finish;
end
endmodule
