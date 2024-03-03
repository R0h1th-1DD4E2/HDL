`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.12.2023 10:33:20
// Design Name: 
// Module Name: mux_gate_4_1
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


module mux_gate_4_1(
    input S0,S1,I0,I1,I2,I3,
    output Y
    );
    
    wire s0bar , s1bar, i0, i1, i2, i3;
    not(s0bar,S0);
    not(s1bar,S1);
    and(i0,s0bar,s1bar,I0);
    and(i1,S0,s1bar,I1);
    and(i2,S1,s0bar,I2);
    and(i3,S0,S1,I3);
    or(Y,i0,i1,i2,i3);
endmodule
