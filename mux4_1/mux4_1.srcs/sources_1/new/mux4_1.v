`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.12.2023 10:27:49
// Design Name: 
// Module Name: mux4_1
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


module mux4_1(
    input S0, S1, I0, I1, I2, I3,
    output Y
    );
    
    assign Y = ~S1&~S0&I0 | ~S1&S0&I1 | S1&~S0&I2 | S1&S0&I3;
endmodule
