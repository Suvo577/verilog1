`timescale 1ns / 1ps
module synchronous_counter_test();
reg clk,clr,count_en;
wire [3:0]Q; 
scynchronous_counter dut(.Q(Q),.count_en(count_en),.clk(clk),.clr(clr));
initial
begin
     clr = 1'b0;
#30  clr = 1'b1;
#400  clr = 1'b0;
#50  clr = 1'b1;
end
initial 
begin
        count_en = 1'b1;
             clk = 1'b0;
        forever #10 clk =~clk;
end
initial
begin
#800 $finish;
end
endmodule
