`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.01.2024 08:48:35
// Design Name: 
// Module Name: Q2
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
// without temp reg 

module Q2A(
    input reg A,B
    );
    
    initial 
        begin 
            A = 0; B = 1;
            #20 $finish;
        end 
        
    always @(A,B)
        begin
            A <= B;
            B <= A;
        end 
endmodule

