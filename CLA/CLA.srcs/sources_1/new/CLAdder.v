`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2024 10:07:37
// Design Name: 
// Module Name: CLAdder
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


module CLAdder(
    input [3:0]A,B,
    input Cin,
    output [3:0]S,
    output car
    );
    
    wire [4:1]C,res;
    wire [3:0]P;
    
    CLL in(.A(A),.B(B),.Cin(Cin),.C(C),.P(P));
    
    fadd mod1(A[0],B[0],Cin,S[0],res[1]);
    fadd mod2(A[1],B[1],C[1],S[1],res[2]);
    fadd mod3(A[2],B[2],C[2],S[2],res[3]);
    fadd mod4(A[3],B[3],C[4],S[3],res[4]);
    
    assign car = C[4];
    
endmodule