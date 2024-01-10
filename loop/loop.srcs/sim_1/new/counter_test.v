`timescale 1ns / 1ps
module counter_test();
integer count;
initial 
begin
count = 0;
while(count <30)
begin
//for(count= 0;count<30;count= count+1)
$display ("count is equal to = %d",count);
count = count +1;
end
end
endmodule