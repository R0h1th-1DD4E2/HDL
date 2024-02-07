`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.01.2024 08:59:53
// Design Name: 
// Module Name: mux
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


module mux(
    S1,S0,A,B,C,D,Y
    );
    input S1,S0,A,B,C,D;
    output reg Y;
    
    always@(A,B,C,D,S1,S0)
        begin
            if (~S0 && ~S1)
                Y = A;
            else if(~S0 && S1)
                Y = B;
            else if(S0 && ~S1)
                Y = C;
            else
                Y = D;
        end
endmodule
