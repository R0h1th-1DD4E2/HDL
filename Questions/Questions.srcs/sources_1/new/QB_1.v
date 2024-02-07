`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.02.2024 19:40:03
// Design Name: 
// Module Name: QB_1
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


module QB_1;
    reg clk;
    initial begin
        clk = 0;
    end
    always begin
        #6 clk = 1;  // 15% of 40 units
        #34 clk = 0; // 85% of 40 units
    end
endmodule

module dff (
    input wire d,
    input wire clk,
    output reg q
);
    always @(posedge clk) begin
        q <= d;
    end
endmodule

