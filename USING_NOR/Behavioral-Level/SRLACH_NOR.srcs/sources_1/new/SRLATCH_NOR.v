`timescale 1ns / 1ps
module SRLATCH_NOR(
input wire S,
input wire R,
output reg Q,
output reg Q_BAR
);
always @(*)  begin
if(S == 1 && R == 1) begin :STAGE_INVALID
     Q = 1'b0;
     Q_BAR = 1'b0;
end
else if(S == 0 && R == 1) begin : STAGE_RESET
       Q = 1'b0;
       Q_BAR = 1'b1;
end
else if (S == 1 && R == 0) begin : STAGE_SET
       Q = 1'b1;
       Q_BAR = 1'b0;
end
else begin : STAGE_HOLD

end
end
endmodule


