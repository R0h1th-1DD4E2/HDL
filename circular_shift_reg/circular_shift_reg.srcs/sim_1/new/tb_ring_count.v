`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2024 07:47:40
// Design Name: 
// Module Name: tb_ring_count
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


module tb_ring_count;
    reg clk,rst,load;
    wire [3:0]count;
    
    ring_count ins(clk,rst,load,count);
    
    initial 
    begin
        clk = 0; rst = 0; load = 1;
        #5 load = 0;
        #20 rst = 1;
        #5 rst = 0;
        #100 $finish; 
    end
    
    always #5 clk = ~clk;
    
endmodule
