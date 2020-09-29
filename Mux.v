`timescale 1ns / 1ps

// Module definition
module Mux(
    S,
    D0,
    D1,
    Y
    );
    
input S;
input [31:0] D0;
input [31:0] D1;
output reg [31:0] Y;

always @(D0, D1, S)
    begin
        if (S == 1)
            Y = D1;
        else
            Y = D0;
    end

endmodule