`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2024 22:48:15
// Design Name: 
// Module Name: decoder_data
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


module decoder_data(
    input [1:0]I,
    input E,
    output [3:0]Y
    );

    assign Y[0] = ~I[0] & ~I[1] & E;
    assign Y[1] = I[0] & ~I[1] & E;
    assign Y[2] = ~I[0] & I[1] & E;
    assign Y[3] = I[0] & I[1] & E;

endmodule
