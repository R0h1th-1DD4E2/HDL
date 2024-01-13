`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2023 12:23:20
// Design Name: 
// Module Name: sub_4bit
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


module sub_4bit(
    input [3:0]a,[3:0]b,
    output [3:0]sum,
    output cout
    );
    
    wire [2:0]c;
    
    adder sub1(a[0],~b[0],1,sum[0],c[0]);
    adder sub2(a[1],~b[1],c[0],sum[1],c[1]);
    adder sub3(a[2],~b[2],c[1],sum[2],c[2]);
    adder sub4(a[3],~b[3],c[2],sum[3],cout);
    
endmodule
