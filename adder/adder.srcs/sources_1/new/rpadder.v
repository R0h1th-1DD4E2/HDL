`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.01.2024 00:08:33
// Design Name: 
// Module Name: rpadder
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


module rpadder(
    input [3:0]a,[3:0]b,
    output [3:0]sum,
    output cout
    );
    
    wire [2:0]c;
    
    fadder in1(a[0],b[0],0,sum[0],c[0]);
    fadder in2(a[1],b[1],c[0],sum[1],c[1]);
    fadder in3(a[2],b[2],c[1],sum[2],c[2]);
    fadder in4(a[3],b[3],c[2],sum[3],cout);
    
endmodule
