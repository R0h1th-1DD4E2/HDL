`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2024 19:07:09
// Design Name: 
// Module Name: decoder_gate
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


module decoder_gate(
    input E,I1,I2,
    output Y0,Y1,Y2,Y3
    );
    wire i1,i2;
    not ins1(i1, I1);
    not ins2(i2, I2);
    and in1(Y0, i2, i1, E);
    and in2(Y1, i2, I1, E);
    and in3(Y2, I2, i1, E);
    and in4(Y3, I2, I1, E);
endmodule
