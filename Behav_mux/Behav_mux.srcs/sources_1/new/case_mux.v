`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.01.2024 09:25:14
// Design Name: 
// Module Name: case_mux
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


module case_mux(
    S1,S0,A,B,C,D,Y
    );
    input S1,S0,A,B,C,D;
    output reg Y;
    
    always@(A,B,C,D,S1,S0)
        begin
            case({S1,S0})
                2'b00: Y = A;
                2'b01: Y = B;
                2'b10: Y = C;
                2'b11: Y = D;
            endcase
        end
endmodule
