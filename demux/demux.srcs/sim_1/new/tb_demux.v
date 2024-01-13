`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.12.2023 09:36:39
// Design Name: 
// Module Name: tb_demux
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


module tb_demux;
    reg rS,rD;
    wire wY0 ,wY1;
    
    demux dut(.S(rS),.D(rD),.Y0(wY0) ,.Y1(wY1));
    initial 
        begin
        rS =0; rD = 0;
        #1 rS =0; rD = 1;
        #1 rS =1; rD = 0;
        #1 rS =1; rD = 1;
        #1 $finish;
        end
endmodule
