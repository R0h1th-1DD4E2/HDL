`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2024 10:18:07
// Design Name: 
// Module Name: tb_cladd
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


module tb_cladd;
    reg [3:0]A,B;
    reg Cin;
    wire [3:0]S;
    wire car;
    
    CLAdder tb1(A,B,Cin,S,car);
    
    initial 
        begin 
        Cin = 0;
        A = 4'b1110; B = 4'b0011;
        #2 A = 4'b0010; B = 4'b0001;
        #2 A = 4'b0000; B = 4'b0011;
        #2 A = 4'b1111; B = 4'b1111;
        #2 $finish;
        end
endmodule
