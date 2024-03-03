`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2024 19:55:06
// Design Name: 
// Module Name: tb_hadder
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


module tb_hadder;
    reg A,B;
    wire S,Cout;
    hadder in1(A,B,S,Cout);
    initial
        begin
            A = 0 ; B = 0;
            #1 A = 0 ; B = 1;
            #1 A = 1 ; B = 0;
            #1 A = 1 ; B = 1;
            #1 $finish;
       end
endmodule