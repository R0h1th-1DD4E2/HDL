`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2024 08:41:08
// Design Name: 
// Module Name: tb_down_neg
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


module tb_down_neg;

    // Parameters
    parameter CLK_PERIOD = 10; // Clock period in ns

    // Signals
    reg clk;
    reg rst;
    wire [3:0] count;

    // Instantiate the down_ned_counter module
    down_ned_counter dut (
        .clk(clk),
        .rst(rst),
        .count(count)
    );

    // Clock generation
    always #((CLK_PERIOD/2)) clk = ~clk;

    // Initial stimulus
    initial begin
        // Initialize inputs
        clk = 0;
        rst = 1;

        // Wait for a few clock cycles
        #20;

        // De-assert reset
        rst = 0;

        // Simulate for 50 clock cycles
        #500;

        // Finish simulation
        $finish;
    end

    // Monitor
    always @(posedge clk) begin
        $display("count = %b", count);
    end

endmodule
