`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.01.2024 00:09:54
// Design Name: 
// Module Name: tb_rpadder
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


module tb_rpadder;
reg [3:0]rA,rB;
wire wC3;
wire [3:0]wS;
rpsub d1(rA,rB,wS,wC3);
initial 
begin
rA=4'b0000;rB=4'b0000;
#100rA=4'b0000;rB=4'b0001;
#100rA=4'b1000;rB=4'b1001;
#100rA=4'b0000;rB=4'b1111;
#100rA=4'b1111;rB=4'b1111;
#100$finish;
end
endmodule
