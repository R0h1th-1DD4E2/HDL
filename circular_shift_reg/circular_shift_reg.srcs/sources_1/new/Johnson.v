`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2024 07:53:07
// Design Name: 
// Module Name: Johnson
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


module Johnson(
    input clk,rst,
    output reg [3:0]count
    );
    
    always @(posedge clk or posedge rst)
    begin
        if (rst)
            count <= 4'b0000;
        else
            count <= {~count[0], count[3:1]};
    end
    
endmodule
