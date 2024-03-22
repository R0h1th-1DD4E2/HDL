`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2024 07:54:45
// Design Name: 
// Module Name: tb_johnson
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


module tb_johnson;
    reg clk,rst;
    wire [3:0]count;
    
    Johnson ins(clk,rst,count);
    
    initial 
    begin
        clk = 0; rst = 1;
        #10 rst = 0;
        #40 rst = 1;
        #50 rst = 0;
        #100 $finish; 
    end
    
    always #5 clk = ~clk;
    
endmodule