`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.02.2024 09:14:29
// Design Name: 
// Module Name: USR
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


module USR(
    Mode,S_In,S_out,Regis,clk,rst,Load
    );
    
    input S_In,clk,rst;
    input [1:0]Mode;
    input [3:0]Load;
    output reg [3:0]Regis;
    output S_out;
    
    assign S_out = Regis[3]; 
    
    always @(posedge clk)
        begin
            if (rst)
                Regis <= 4'b0000;
            else
                begin
                    case(Mode)
                        2'b00 : Regis <= Regis;
                        2'b01 : Regis <= {S_In, Regis[3:1]};
                        2'b10 : Regis <= {Regis[2:0], S_In};
                        2'b11 : Regis <= Load;
                    endcase
                end
        end
           
endmodule
