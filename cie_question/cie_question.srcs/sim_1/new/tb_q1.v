`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2024 19:19:46
// Design Name: 
// Module Name: tb_q1
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

module tb_q1;

    reg in, rst, clk;

    wire [3:0] count;

    q1 dut (
        .in(in),
        .rst(rst),
        .clk(clk),
        .count(count)
    );

    always #5 clk = ~clk;

    initial begin
        in = 0;
        rst = 0;
        clk = 0;

        #10;

        $display("Reset Test");
        rst = 1;
        #20;
        rst = 0;
        #20;

        $display("Count Test");

        in = 0;
        #40;

        in = 1;
        #40;

        in = 0;
        #40;

        in = 1;
        #40;

        $finish;
    end

endmodule
