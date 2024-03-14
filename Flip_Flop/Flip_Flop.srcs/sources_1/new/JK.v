`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2024 18:05:42
// Design Name: 
// Module Name: JK
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


module JK(
    input J,K,clk,
    output reg Q,Qbar
    );
    
    always @(posedge clk)
    begin
        Q <= J & ~Q | ~K & Q;
        Qbar <= ~Q;
    end
endmodule

