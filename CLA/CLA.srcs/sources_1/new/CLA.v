`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2024 09:14:11
// Design Name: 
// Module Name: CLA
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


module CLA(
    input [3:0]A,B,
    input Cin,
    output [3:0]S,
    output car
    );
    
    wire [4:1]C;
    wire [3:0]P;
    
    CLL in(.A(A),.B(B),.Cin(Cin),.C(C),.P(P));
    
    assign S[0] = P[0];
    assign S[1] = P[1]^C[1];
    assign S[2] = P[2]^C[2];
    assign S[3] = P[3]^C[3];
    assign car = C[4];
    
endmodule
