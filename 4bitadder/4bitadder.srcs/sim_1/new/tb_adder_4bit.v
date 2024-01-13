`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2023 11:58:35
// Design Name: 
// Module Name: tb_adder_4bit
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


module tb_adder_4bit;
    reg [3:0]a,b;
    wire [3:0]sum;
    wire cout;

sub_4bit i1(a,b,sum,cout);
initial
    begin
        a=4'b0000;b=4'b0000;
        #100 a=4'b0000; b=4'b0001;
        #100 a=4'b1000; b=4'b1001;
        #100 a=4'b1000; b=4'b1111;
        #100 a=4'b0000; b=4'b1111;
        #100 a=4'b1111; b=4'b1111;
        #100 $finish;
    end
endmodule
