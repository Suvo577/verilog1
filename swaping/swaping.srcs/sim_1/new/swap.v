`timescale 1ns / 1ps
module swap();
reg a,b;
initial
begin
a = 1'b0;
b = 1'b1;
a = a+b;
b = a - b;
a = a-b;
end
endmodule
