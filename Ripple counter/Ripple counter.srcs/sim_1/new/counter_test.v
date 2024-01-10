`timescale 1ns / 1ps
module counter_test();
reg clk,clr;
wire [3:0]Q;
counter dut(.Q(Q),.clk(clk),.clr(clr));
initial 
begin
clr = 1'b1; clk = 1'b0;
forever #2 clk= ~clk;
#20 clr = 1'b1; 
# 2 $finish;
end
endmodule
