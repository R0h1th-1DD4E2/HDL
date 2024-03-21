`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2024 19:04:16
// Design Name: 
// Module Name: q1
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


module q1(
    input in,rst,clk,
    output reg [3:0]count
    );
    
    reg [2:0] COUN;
      
    always @(posedge clk or posedge rst)
        begin
            if(rst)
                COUN <= 0;
            else if (COUN == 3)
                COUN <= 0;
            else
                COUN <= COUN + 1;
        end
     
    always @(posedge in or negedge in)
        COUN <=0;
    
    always @(posedge clk or posedge rst)
    if (rst)
        count <= in?4'b0000:4'b0001;
    else
        begin
            case(COUN)
            2'b00: count <= in? 4'b0000 : 4'b0001;
            2'b01: count <= in? 4'b0011 : 4'b0010;
            2'b10: count <= in? 4'b0111 : 4'b0110;
            2'b11: count <= in? 4'b0001 : 4'b0101;
            endcase
        end
endmodule
