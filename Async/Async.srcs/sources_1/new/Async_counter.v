`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.03.2024 20:47:30
// Design Name: 
// Module Name: Async_counter
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


module Asynchronous_counter(
    input clk,
    input rst,
    output [3:0] count
);
wire q0, q1, q2, q3;

assign count = {q3, q2, q1, q0};
TFF ins0 (.clk(clk), .rst(rst), .T_in(1'b1), .T_q(q0));
TFF ins1 (.clk(q0), .rst(rst), .T_in(1'b1), .T_q(q1));
TFF ins2 (.clk(q1), .rst(rst), .T_in(1'b1), .T_q(q2));
TFF ins3 (.clk(q2), .rst(rst), .T_in(1'b1), .T_q(q3));

endmodule

module TFF (clk, rst, T_in, T_q);
input clk, rst, T_in;
output reg T_q;

always @(negedge clk or posedge rst) begin
    if (rst)
        T_q <= 1'b0;
    else
        T_q <= T_q ^ T_in;
end
endmodule
