`timescale 1ns / 1ps

// Module definition
module RegFile(
    clk , reset , rg_wrt_en ,
    rg_wrt_addr ,
    rg_rd_addr1 ,
    rg_rd_addr2 ,
    rg_wrt_data ,
    rg_rd_data1 ,
    rg_rd_data2
);

input clk;
input reset;
input rg_wrt_en;
input [4:0] rg_rd_addr1;
input [4:0] rg_rd_addr2;
output [31:0] rg_rd_data1;
output [31:0] rg_rd_data2;
input [4:0] rg_wrt_addr;
input [31:0] rg_wrt_data;
reg [31:0] register_file [0:31];
assign rg_rd_data1 = register_file[rg_rd_addr1];
assign rg_rd_data2 = register_file[rg_rd_addr2];
integer i;
always @(posedge clk or reset) begin
    if (reset) begin
        for (i = 0; i < 32; i = i + 1)
        register_file[i] <= 0;
        end else begin
        if (rg_wrt_en)
        register_file[rg_wrt_addr] <= rg_wrt_data;
        end
        end

endmodule