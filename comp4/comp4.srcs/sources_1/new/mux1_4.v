`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2024 09:16:27
// Design Name: 
// Module Name: comp1
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


module mux1_4(
    input S0,S1,C,
    output Y0,Y1,Y2,Y3
    );
    
    assign Y0 = ~S1&~S0&C;
    assign Y1 = ~S1&S0&C;
    assign Y2 = S1&~S0&C;
    assign Y3 = S1&S0&C;
    
endmodule
