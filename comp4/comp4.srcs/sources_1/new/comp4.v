`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2024 09:16:27
// Design Name: 
// Module Name: comp1
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


module comp4(
    input [3:0]A,B,
    output eq,Gt,Lt
    );
    
    wire [2:0]C;
    wire [3:0]gt,lt;
    
    comp1 in1(A[3],B[3],1,gt[3],C[2],lt[3]);
    comp1 in2(A[2],B[2],C[2],gt[2],C[1],lt[2]);
    comp1 in3(A[1],B[1],C[1],gt[1],C[0],lt[1]);
    comp1 in4(A[0],B[0],C[0],gt[0],eq,lt[0]);
    
    or(Gt,gt[3],gt[2],gt[1],gt[0]);
    or(Lt,lt[3],lt[2],lt[1],lt[0]);
    
endmodule