`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.01.2024 09:13:54
// Design Name: 
// Module Name: comp
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


module comp(
    input [1:0]A,B,
    output eq,gt,lt
    );
    
    assign eq = ~(A[0]^B[0]) & ~(A[1]^B[1]);
    assign gt = A[1]&~B[1] | A[0]&~B[1]&~B[0] | A[1]&A[0]&~B[0];
    assign lt = ~A[1]&B[1] | ~A[0]&B[1]&B[0] | ~A[1]&~A[0]&B[0];
    // assign eq = ~(gt | lt);
endmodule
