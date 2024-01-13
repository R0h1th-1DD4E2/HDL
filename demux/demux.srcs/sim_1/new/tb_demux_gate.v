`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.12.2023 10:07:44
// Design Name: 
// Module Name: tb_demux_gate
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


module tb_demux_gate;
    reg rS,rI;
    wire wY0 ,wY1;
    
    demux dut(.S(rS),.D(rI),.Y0(wY0) ,.Y1(wY1));
    initial 
        begin
        rS =0; rI = 0;
        #1 rS =0; rI = 1;
        #1 rS =1; rI = 0;
        #1 rS =1; rI = 1;
        #1 $finish;
        end
endmodule