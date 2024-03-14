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


module Encoder_wop(
    input A, B, C ,D,
    output reg [1:0]Y
    );
    always@(A,B,C,D)
    begin
        case({A,B,C,D})
            4'b1000: Y = 2'b00;
            4'b0100: Y = 2'b01;
            4'b0010: Y = 2'b10;
            4'b0001: Y = 2'b11;
            default: Y = 2'bxx;
        endcase
    end
endmodule