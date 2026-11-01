`timescale 1ns / 1ps
module SR_NOR_TB;
reg S ,R;
wire Q, Q_BAR;
SRLATCH_NOR UUT(
.S(S),
.R(R),
.Q(Q),
.Q_BAR(Q_BAR)
);
integer i;
initial begin 
$monitor("Time = %0t | S = %b, R = %b | Q = %b, Q_BAR = %b", $time, S, R, Q, Q_BAR);
for(i = 0; i < 4; i = i + 1) begin 
  {S,R} = i[1:0];
   #10;
end
$finish;
end
endmodule








