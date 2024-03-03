`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.01.2024 08:57:06
// Design Name: 
// Module Name: Q2B
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

// With temp 
module Q2B(
    input reg A,B, temp
    );
    
    initial 
        begin 
            A = 0; B = 1;
            #20 $finish;
        end 
        
    always @(A,B)
        begin
            temp = A;
            A = B;
            B = temp;
        end 
endmodule

