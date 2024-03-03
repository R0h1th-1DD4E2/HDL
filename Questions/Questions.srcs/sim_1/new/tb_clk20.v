`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.02.2024 22:59:37
// Design Name: 
// Module Name: tb_clk20
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


module tb_clk20;
reg clk;
initial 
begin
clk = 0;
forever
begin
    #5 clk = 1;
    #15 clk = 0;
end
#100 $finish;
end
endmodule
