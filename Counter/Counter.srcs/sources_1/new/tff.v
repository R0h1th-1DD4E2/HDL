`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.02.2024 19:16:09
// Design Name: 
// Module Name: tff
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


module tff(
    clk, t_in, rst, q_out
    );
    
    input clk, t_in, rst;
    output reg q_out;
    
    always @(posedge clk or posedge rst)
        if (rst)
            q_out <= 1'b0;
        else
            q_out <= ~t_in; 
endmodule
