`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2024 20:40:43
// Design Name: 
// Module Name: tb_sr
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


module tb_sr;
reg clk,S,R;
wire q;
sr_case dut(clk,S,R,q);
initial begin
clk =0; S = 0; R = 0;
#2 S = 1; R = 0;
#2 S = 0; R = 1;
#2 S = 1; R = 1;
#4 $finish;
end
always #1 clk = ~clk;
endmodule
