`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.02.2024 09:55:35
// Design Name: 
// Module Name: tb_USR
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


module tb_USR;

    reg S_In,clk,rst;
    reg [1:0]Mode;
    reg [3:0]Load;
    wire [3:0]Regis;
    wire S_out;
    
    USR shit(Mode,S_In,S_out,Regis,clk,rst,Load);
    
    initial
        begin
            clk = 0;
            forever
            #5 clk = ~clk;
        end
    initial 
        begin
            rst = 0; Load = 4'b0110; S_In =0; Mode = 2'b00;
            #10 rst = 1;
            #10 rst = 0;
            #10 Mode = 2'b00;
            #10 Mode = 2'b01; #10 S_In =1;
            #10 Mode = 2'b10; #10 S_In =0;
            #10 Mode = 2'b11; #10 Load = 4'b0101;
            
            #100 $finish;
        end 
    
endmodule
