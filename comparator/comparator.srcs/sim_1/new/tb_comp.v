`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.01.2024 09:34:17
// Design Name: 
// Module Name: tb_comp
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


module tb_comp;
    reg [1:0]rA,rB;
    wire weq,wgt,wlt;
    
    comp in1(.A(rA),.B(rB),.eq(weq),.gt(wgt),.lt(wlt));
    
    initial
        begin 
            rA = 2'b00; rB = 2'b00;
            #1 rA = 2'b01; rB = 2'b00;
            #1 rA = 2'b10; rB = 2'b00;
            #1 rA = 2'b11; rB = 2'b00;
            #1 rA = 2'b00; rB = 2'b01;
            #1 rA = 2'b01; rB = 2'b01;
            #1 rA = 2'b10; rB = 2'b01;
            #1 rA = 2'b11; rB = 2'b01;
            #1 rA = 2'b00; rB = 2'b10;
            #1 rA = 2'b01; rB = 2'b10;
            #1 rA = 2'b10; rB = 2'b10;
            #1 rA = 2'b11; rB = 2'b10;
            #1 rA = 2'b00; rB = 2'b11;
            #1 rA = 2'b01; rB = 2'b11;
            #1 rA = 2'b10; rB = 2'b11;
            #1 rA = 2'b11; rB = 2'b11;
            #1 $finish;
       end
endmodule
