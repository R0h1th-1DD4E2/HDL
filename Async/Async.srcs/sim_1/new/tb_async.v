`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.03.2024 20:49:24
// Design Name: 
// Module Name: tb_async
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module tb_counter;
  reg clk, rst;
  wire [3:0] count;
  Asynchronous_counter cnt_dut(clk, rst, count);

  initial begin
    clk = 0;
    rst = 1;
    #5 rst = 0;
    #10 rst = 1;
    #10 rst = 0;
    #5 $finish;
  end

  always #1 clk = ~clk;
endmodule

