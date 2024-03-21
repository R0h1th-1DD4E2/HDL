`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2024 22:23:49
// Design Name: 
// Module Name: moore_1010
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


module moore_1010(clk,rst,x,z);
input clk,rst,x;
output z;
parameter RESET=3'b000,got1=3'b001,got11=3'b010,got110=3'b011,got1101=3'b100;
reg [3:0]ps,ns;
assign z =(ps==got1101)?1'b1:1'b0;
always@(ps ,x)
begin
case(ps)
RESET:ns<=x?got1:RESET;
got1:ns<=x?got11:RESET;
got11:ns<=x?got11:got110;
got110:ns<=x?got1101:RESET;
got1101:ns<=x?got11:RESET;
endcase
end
always@(posedge clk)
ps<=rst?RESET:ns;
endmodule