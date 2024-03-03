`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.02.2024 19:14:46
// Design Name: 
// Module Name: Count_4
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


module Count_3(
    input clk, rst,
    output [2:0]Count
);  
    wire in3;
    
    assign in3 = Count[0] && Count[1];
    // T flip-flop instantiations
    tff t1(clk, 1'b0, rst, Count[0]);
    tff t2(clk, Count[0], rst, Count[1]);
    tff t3(clk, in3, rst, Count[2]);
    
//    initial 
//        Count_out = 3'b000;
//    // Assign Count to output
//    always @(posedge clk) begin
//        if (rst) begin
//            Count_out <= 3'b000;
//        end else begin
//            Count_out <= Count_out + 1'b1;
//        end
//    end
    initial
    #200 $finish;

endmodule

