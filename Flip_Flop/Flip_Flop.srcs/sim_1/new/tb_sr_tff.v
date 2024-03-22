`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2024 08:06:30
// Design Name: 
// Module Name: tb_sr_tff
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


module tb_sr_tff;
reg clk,T,S,R,rst;
wire q_TP,q_srP,q_TN,q_srN;
sr_tff dut(clk,S,R,T,q_TP,q_srP,q_TN,q_srN,rst);
initial 
begin
clk=0;S=0;R=0;T=0;rst=1;
#10S=0;R=1;T=1;rst=0;
#10S=1;R=0;T=0;rst=0;
#10S=1;R=1;T=1;rst=0;
#100$finish;
end
always#1clk=~clk;
endmodule
