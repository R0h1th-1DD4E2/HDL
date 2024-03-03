`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2024 20:28:41
// Design Name: 
// Module Name: demux_gate_4
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


module demux_gate_4(
    input S1,S0,D,
    output Y0,Y1,Y2,Y3
    );
    
    wire s0bar,s1bar;
    not(s0bar,S0);
    not(s1bar,S1);
    and(Y0,s0bar,s1bar,D);
    and(Y1,S0,s1bar,D);
    and(Y2,S1,s0bar,D);
    and(Y3,S0,S1,D);
endmodule