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


module comp1(
    input A,B,C,
    output gt,eq,lt
    );
    
    wire Y0,Y3;
    
    mux1_4 in1(A,B,C,Y0,gt,lt,Y3);
    
    or(eq,Y0,Y3);
endmodule
