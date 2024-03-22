`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2024 07:43:35
// Design Name: 
// Module Name: ring_count
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


module ring_count(
    input clk,rst,load,
    output reg [3:0]count
    );
    
    always @(posedge clk or posedge rst)
    begin
        if (rst || load)
            count <= 4'b1000;
        else
            count <= {count[0], count[3:1]};
    end
    
endmodule
