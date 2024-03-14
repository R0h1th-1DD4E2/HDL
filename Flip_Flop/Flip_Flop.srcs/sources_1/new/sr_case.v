`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2024 20:25:02
// Design Name: 
// Module Name: sr_case
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


module sr_case(clk,S,R,q);
    input clk,S,R;
    output reg q;
    always@(clk) 
    begin
    if(clk)
        begin
            case({S,R})
                2'b00:q <= q;
                2'b01:q <= 1'b0;
                2'b10:q <= 1'b1;
                default:q <= 1'bx;
            endcase 
        end
    else 
        q = q;
    end
endmodule
