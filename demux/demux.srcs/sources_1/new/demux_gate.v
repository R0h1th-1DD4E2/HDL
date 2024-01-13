`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.12.2023 10:00:22
// Design Name: 
// Module Name: demux_gate
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


module demux_gate(
    input S,D,
    output Y0,Y1
    );
    
    wire sbar;
    not(sbar,S);
    and(Y0,sbar,D);
    and(Y1,S,D);
endmodule
