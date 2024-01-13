`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.12.2023 10:42:11
// Design Name: 
// Module Name: tb_mux_gate_4_1
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


module tb_mux_gate_4_1;
    reg rS0, rS1, rI0, rI1, rI2, rI3;
    wire wY;
    
    mux_gate_4_1 dut(rS0, rS1, rI0, rI1, rI2, rI3, wY);
    initial
        begin
            rS0=0; rS1=0; rI0=0; rI1=1; rI2=0; rI3=1;
            #1 rS0=1; rS1=0;
            #1 rS0=0; rS1=1;
            #1 rS0=1; rS1=1;
            #1 $finish;
        end
endmodule
