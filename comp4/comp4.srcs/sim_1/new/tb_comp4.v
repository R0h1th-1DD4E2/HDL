`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2024 09:46:35
// Design Name: 
// Module Name: tb_comp4
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


module tb_comp4;
    reg [3:0]A,B;
    wire gt,eq,lt;
    
    comp4 tb_1(A,B,eq,gt,lt);
    initial
        begin
        A = 4'b1001; B=4'b1110;
        #1 A = 4'b1101; B=4'b1000;
        #1 A = 4'b1101; B=4'b1101;
        #1 $finish;
        end
endmodule
