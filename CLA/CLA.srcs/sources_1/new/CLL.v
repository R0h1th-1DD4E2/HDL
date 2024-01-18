`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2024 09:40:12
// Design Name: 
// Module Name: CLL
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


module CLL(
    input [3:0]A,B,
    input Cin,
    output [4:1]C,
    output [3:0]P
    );

wire [3:0]G;

assign G[0] = A[0]&B[0];
assign P[0] = A[0]^B[0];
assign G[1] = A[1]&B[1];
assign P[1] = A[1]^B[1];
assign G[2] = A[2]&B[2];
assign P[2] = A[2]^B[2];
assign G[3] = A[3]&B[3];
assign P[3] = A[3]^B[3];

assign C[1] = P[0]&Cin | G[0];
assign C[2] = P[1]&C[1] | G[1];
assign C[3] = P[2]&C[2] | G[2];
assign C[4] = P[3]&C[3] | G[3];

endmodule
