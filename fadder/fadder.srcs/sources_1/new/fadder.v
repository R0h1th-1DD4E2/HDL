`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.01.2024 17:44:29
// Design Name: 
// Module Name: fadder
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


module fadder(
    input A,B,Cin,
    output S,Cout
    );
    wire w1,w2,w3;
    xor(S,A,B,Cin);
    xor(w1,A,B);
    and(w2,w1,Cin);
    and(w3,A,B);
    or(Cout,w2,w3);
endmodule
