`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.01.2024 09:53:00
// Design Name: 
// Module Name: b_comp
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


module b_comp(
    input [3:0]a,b,
    output reg eq,gt,lt
    );
    
    always@(a,b)
    if (a>b)
        begin
            gt = 1;
            lt = 0;
            eq = 0;
        end
     else if (a<b)
        begin
            gt = 0;
            lt = 1;
            eq = 0;
        end
     else
        begin
            gt = 0;
            lt = 0;
            eq = 1;
        end
endmodule
