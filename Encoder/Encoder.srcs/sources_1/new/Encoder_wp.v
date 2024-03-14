`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2024 19:34:02
// Design Name: 
// Module Name: Encoder_wp
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


module Encoder_wp(
    input A,B,C,D,
    output reg [1:0] Y
    );
    always @(A,B,C,D)
        begin
            if(A) 
                Y = 2'b00;
            else if(B)
                Y = 2'b01;
            else if(C)
                Y = 2'b10;
            else if(D)
                Y = 2'b11;
            else 
                Y = 2'bxx;
        end
endmodule
