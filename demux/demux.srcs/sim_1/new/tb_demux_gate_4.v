`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2024 22:35:35
// Design Name: 
// Module Name: tb_demux_gate_4
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


module tb_demux_gate_4;
    reg rS0,rS1,rI;
    wire wY0 ,wY1 ,wY2 ,wY3;
    
    demux_gate_4 dut(.S0(rS0),.S1(rS1),.D(rI),.Y0(wY0) ,.Y1(wY1) ,.Y2(wY2) ,.Y3(wY3));
    initial 
        begin
        rS0 =0; rS1 =0; rI = 0;
        #1 rI = 1;
        #1 rS0 = 1; rI = 0;
        #1 rI = 1;
        #1 rS1 = 1; rI = 0;
        #1 rI = 1;
        #1 rS0 = 0; rI = 0;
        #1 rI = 1;
        #1 $finish;
        end
endmodule
