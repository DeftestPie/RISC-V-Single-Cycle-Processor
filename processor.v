`timescale 1ns / 1ps

module processor
(
    input clk, reset,
    
    output [31:0] Result
);

wire reg_write1;
wire mem2reg1;
wire alu_src1;
wire mem_write1;
wire mem_read1;
wire [3:0]alu_cc1;
wire [6:0]opcode1;
wire [6:0]funct71;
wire [2:0]funct31;
wire [31:0] alu_result1;

wire [1:0]ALUOp1;

data_path un(
    .clk(clk),
    .reset(reset),
    .alu_result(alu_result1),
    .reg_write(reg_write1),
    .mem2reg(mem2reg1),
    .alu_src(alu_src1),
    .mem_write(mem_write1),
    .mem_read(mem_read1),
    .alu_cc(alu_cc1),
    .opcode(opcode1),
    .funct7(funct71),
    .funct3(funct31)
);

Controller uni(
    .Opcode(opcode1),
    .ALUSrc(alu_src1),
    .MemtoReg(mem2reg1),
    .RegWrite(reg_write1),
    .MemRead(mem_read1),
    .MemWrite(mem_write1),
    .ALUOp(ALUOp1)
);

ALUController u(
    .ALUOp(ALUOp1),
    .Funct7(funct71),
    .Funct3(funct31),
    .Operation(alu_cc1)
);

assign Result = alu_result1;

endmodule
