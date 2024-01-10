`timescale 1ns / 1ps
module counter();
integer count;
initial 
begin
count = 0;
while(count<30)
count = count +1;
end
endmodule
