`timescale 1ns / 1ps
module counter_test();
    reg clk,clr;
    wire [3:0]Q;
    counter dut(.Q(Q),.clk(clk),.clr(clr));
    initial
    begin
    $monitor($time,"count = %b",Q);
    clr= 1'b1;
    #34 clr = 1'b0;
   #200 clr = 1'b1;
   #50 clr = 1'b0;
    end
    initial
    begin
    clk= 1'b0;
    forever #10 clk =~clk;
    end
        initial
    begin
  #400 $finish;
    end
endmodule
