`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.01.2024 17:49:06
// Design Name: 
// Module Name: tb_fadder
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


module tb_fadder;
    reg A,B,Cin;
    wire S,Cout;
    fadder in1(A,B,Cin,S,Cout);
    initial
        begin
            A = 0 ; B = 0; Cin = 0;
            #1 A = 0 ; B = 0; Cin = 1;
            #1 A = 0 ; B = 1; Cin = 0;
            #1 A = 0 ; B = 1; Cin = 1;
            #1 A = 1 ; B = 0; Cin = 0;
            #1 A = 1 ; B = 0; Cin = 1;
            #1 A = 1 ; B = 1; Cin = 0;
            #1 A = 1 ; B = 1; Cin = 1;
            #1 $finish;
       end
endmodule
