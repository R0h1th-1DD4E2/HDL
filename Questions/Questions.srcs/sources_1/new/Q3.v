`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.01.2024 09:33:14
// Design Name: 
// Module Name: Q3
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


module Q3(
    S2,S1,S0,A,B,C,D,E,Y
    );
    input S2,S1,S0,A,B,C,D,E;
    output reg Y;
    
    always@(A,B,C,D,E,S2,S1,S0)
        begin
            casex({S2,S1,S0})
                3'b00x: Y = A;
                3'b010: Y = B;
                3'b011: Y = C;
                3'b10x: Y = D;
                3'b11x: Y = E;
            endcase
        end
endmodule
