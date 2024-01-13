`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.12.2023 09:45:26
// Design Name: 
// Module Name: tb_decoder
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


module tb_decoder;
reg rE,rI;
wire wY0,wY1;

decoder dut(.E(rE),.I(rI),.Y0(wY0),.Y1(wY1));

initial 
    begin
        rI=1; rE=0;
        #1 rI=0; rE=1;
        #1 rI=1; rE=0;
        #1 rI=1; rE=1;
        #1 $finish;
    end
endmodule
