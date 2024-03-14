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
    integer number = 0;
    
    b_comp in1(.a(rA),.b(rB),.eq(weq),.gt(wgt),.lt(wlt));
    
    initial
        begin 
            for (integer i = 0 ; i < 256; i=i+1)
            begin
                rA = number[3:0];
                rB = number[7:4];
                #1
                number = number +1;
            end
            $finish;
       end
endmodule