`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2024 21:46:17
// Design Name: 
// Module Name: sequence1010
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


module sequence1010(
    input clk,rst,x,
    output z
    );
    parameter RST = 2'b00, got1 = 2'b01, got10 = 2'b10, got101 = 2'b11;
    reg [1:0]ns,ps;
    
    assign z = (ps == got101 && x == 1'b0)? 1 : 0;
    
    always @(ps,x)
    begin
        case(ps)
        2'b00: ns = x ? got1:RST;
        2'b01: ns = x ? got1:got10;
        2'b10: ns = x ? got101:RST;
        2'b11: ns = x ? got1:RST;
        endcase
    end
    
    always @(posedge clk)
        ps <= rst ? RST : ns;

endmodule
