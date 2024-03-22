`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2024 08:26:31
// Design Name: 
// Module Name: down_ned_counter
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


module down_ned_counter(
    clk,rst,count
    );
    input clk,rst;
    output [3:0]count;
    wire [3:0]q;

    
    t_ff in1(1,clk,rst,q[0]);
    t_ff in2(1,~q[0],rst,q[1]);
    t_ff in3(1,~q[1],rst,q[2]);
    t_ff in4(1,~q[2],rst,q[3]);
    
    assign count = {q[3],q[2],q[1],q[0]};
endmodule


module t_ff(T,clk,rst,q);
    input T,clk,rst;
    output reg q;
        
always @ (negedge clk)
    begin
        if(rst)
            q <= 1;
        else if(T)
            q<=~q;
        else
            q <=q;
    end
endmodule
