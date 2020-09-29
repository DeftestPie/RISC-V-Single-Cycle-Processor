`timescale 1ns / 1ps

// Module definition
module InstMem(
    input [7:0] addr ,
    output wire [31:0] instruction
);

reg [31:0] Instruction_memory [0:63];

initial
begin
Instruction_memory[0] = 32'h00007033;
Instruction_memory[1] = 32'h00100093;
Instruction_memory[2] = 32'h00200113;
Instruction_memory[3] = 32'h00308193;
Instruction_memory[4] = 32'h00408213;
Instruction_memory[5] = 32'h00510293;
Instruction_memory[6] = 32'h00610313;
Instruction_memory[7] = 32'h00718393;
Instruction_memory[8] = 32'h00208433;
Instruction_memory[9] = 32'h404404b3;
Instruction_memory[10] = 32'h00317533;
Instruction_memory[11] = 32'h0041e5b3;
Instruction_memory[12] = 32'h0041a633;
Instruction_memory[13] = 32'h007346b3;
Instruction_memory[14] = 32'h4d34f713;
Instruction_memory[15] = 32'h8d35e793;
Instruction_memory[16] = 32'h4d26a813;
Instruction_memory[17] = 32'h4d244893;
Instruction_memory[18] = 32'h02b02823;
Instruction_memory[19] = 32'h03002603;
end

assign instruction = Instruction_memory[addr];

endmodule

