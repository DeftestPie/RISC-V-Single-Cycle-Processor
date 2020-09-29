`timescale 1ns / 1ps

module HA(A, B, Sum, Cout);
input [7:0]A;
input [7:0]B;
output reg [7:0] Sum;
output reg Cout;
reg [8:0] temp;

always @(*) begin
temp = A + B;
Sum = temp [7:0];
Cout = temp [8];
end
endmodule