`timescale 1ns / 1ps

module ALUController(
    ALUOp, Funct7, Funct3, Operation
    );
    
input [1:0] ALUOp;
input [6:0] Funct7;
input [2:0] Funct3;
output reg [3:0] Operation;
wire [11:0] ALU_In;
assign ALU_In = {Funct7, Funct3, ALUOp};
always @(ALU_In)
    casex (ALU_In)
    12'b000000011110: Operation = 4'b0000;
    12'b000000011010: Operation = 4'b0001;
    12'b000000010010: Operation = 4'b1100;
    12'b000000001010: Operation = 4'b0111;
    12'b000000000010: Operation = 4'b0010;
    12'b010000000010: Operation = 4'b0110;
    12'bxxxxxxx11100: Operation = 4'b0000;
    12'bxxxxxxx11000: Operation = 4'b0001;
    12'bxxxxxxx10000: Operation = 4'b1100;
    12'bxxxxxxx01000: Operation = 4'b0111;
    12'bxxxxxxx00000: Operation = 4'b0010;
    12'bxxxxxxx01001: Operation = 4'b0010;
    12'bxxxxxxx01001: Operation = 4'b0010;
    default: Operation = 4'b0000;
    endcase
    
endmodule
