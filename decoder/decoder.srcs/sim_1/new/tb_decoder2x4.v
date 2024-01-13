`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.12.2023 10:12:42
// Design Name: 
// Module Name: tb_decoder2x4
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


module tb_decoder2x4;
reg rE,rI1,rI2;
wire wY0,wY1,wY2,wY3;

decoder2x4 dut(.E(rE),.I1(rI1),.I2(rI2),.Y0(wY0),.Y1(wY1),.Y2(wY2),.Y3(wY3));
initial 
    begin
        rE=1; rI1=0; rI2=0;
        #1 rE=1; rI1=1; rI2=0;
        #1 rE=1; rI1=0; rI2=1;
        #1 rE=1; rI1=1; rI2=1;
        #1 rE=0; rI1=0; rI2=0;
        #1 rE=0; rI1=1; rI2=0;
        #1 rE=0; rI1=0; rI2=1;
        #1 rE=0; rI1=1; rI2=1;
        #1 $finish;
    end
endmodule
