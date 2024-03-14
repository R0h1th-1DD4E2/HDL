`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.12.2023 10:04:04
// Design Name: 
// Module Name: decoder2x4
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


module decoder2x4(
    input E,I1,I2,
    output Y0,Y1,Y2,Y3
    );
    wire W2;
    not (W2,I2);
    decoder in1(I2,I1,Y0,Y1);
    decoder in2(W2,I1,Y2,Y3);
endmodule