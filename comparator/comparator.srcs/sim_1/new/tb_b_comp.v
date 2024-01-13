`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.01.2024 10:07:04
// Design Name: 
// Module Name: tb_b_comp
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


module tb_b_comp;
    reg [3:0]rA,rB;
    wire weq,wgt,wlt;
    
    b_comp in1(.a(rA),.b(rB),.eq(weq),.gt(wgt),.lt(wlt));
    
    initial
        begin 
            rA = 4'b0010; rB = 4'hF;
            #1 rA = 4'b0010; rB = 4'hF;
            #1 rA = 4'b0101; rB = 4'b0101;
            #1 rA = 4'b1100; rB = 4'h6;
            #1 $finish;
       end
endmodule