`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.01.2024 09:44:07
// Design Name: 
// Module Name: Q4
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


module Q4(
    Y,A,B,C,D,E
    );
    input A,B,C,D,E;
    output reg [2:0]Y;
    
    always@(A,B,C,D,E)
        begin
            if (A)
               Y = 3'b001;
            if (B)
                Y = 3'b010;
            if (B)
                Y = 3'b100;
            if (C)
                Y = 3'b101;
            if (D)
                Y = 3'b011;
        end
endmodule

module clk20(clk);
output reg clk;
initial 
begin
assign clk = 0;
#100 $finish;
forever
fork 
#5 clk = 0;
#15 clk = 1;
join
end
endmodule
