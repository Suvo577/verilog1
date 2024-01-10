`timescale 1ns / 1ps
module mux_test();
reg [3:0]i;
reg [1:0]s;
wire out;
case_mux e1(.in(i),.sel(s),.out(out));
initial
begin
i=4'hE;
#2 s=2'd1;
#2 s=2'd0;
#2 s=2'd3;
#2 s=2'd2;
end
initial
 #20 $finish; // close the simulation time by sytem task
endmodule
