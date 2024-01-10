// negetive edge triggered d-ff
module D_FF(q,qbar,d,clk,clr);
input d,clk,clr;   //input-output decleartion 
output q,qbar;
wire s,sbar,r,rbar; // intermediate port declearation
assign                  //Input latches
sbar = ~(s & rbar),
    s = ~(sbar & ~clr & ~clk),
    r = ~(s & rbar & s),
 rbar = ~(r & d & ~clr);
 assign                 // output latches
    q = ~(s & qbar),
 qbar = ~(r & ~clr & q);
endmodule
