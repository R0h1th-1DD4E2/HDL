`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.02.2024 19:42:17
// Design Name: 
// Module Name: tb_QB_1
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


module tb_QB_1;
    reg d;
    reg clk;
    wire q;

    // Instantiate the D flip-flop
    dff dff1 (.d(d), .clk(clk), .q(q));

    initial begin
        // Initialize signals
        d = 0;
        clk = 0;
    end

    // Clock generation
    always begin

        #6 clk = 0;  // 15% of 40 units
        #34 clk = 1; // 85% of 40 units

    end

    // Apply test vectors to D input
    initial begin
        #0 d = 0;
        #20 d = 1;
        #20 d = 1;
        #20 d = 0;
        #20 d = 1;
        #20 d = 1;
        #20 $finish;
    end

    // Monitor changes on Q output
    always @(posedge clk) begin
        $display("At time %t, D = %b, Q = %b", $time, d, q);
    end
endmodule

