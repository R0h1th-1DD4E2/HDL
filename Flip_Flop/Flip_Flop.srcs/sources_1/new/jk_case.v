`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2024 18:15:19
// Design Name: 
// Module Name: jk_case
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


module jk_case(
    input clk,j,k,
    output reg q
    );
    initial 
    q = 0;
    always @(posedge clk)
    begin
        case({j,k})
            2'b00:
                q <= q;
            2'b01:
                q <= 0;
            2'b10:
                q <= 1;
            2'b11:
                q <= ~q;
            default:
                q <= 0;
        endcase
    end             
endmodule
