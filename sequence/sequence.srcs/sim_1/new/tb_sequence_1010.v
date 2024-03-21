`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2024 22:04:31
// Design Name: 
// Module Name: tb_sequence_1010
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


module tb_sequence_1010;

    // Parameters
    parameter CLK_PERIOD = 10; // Clock period in ns

    // Inputs
    reg clk, rst, x;

    // Outputs
    wire z;

    // Instantiate the sequence1010 module
    moore_1010 dut (
        .clk(clk),
        .rst(rst),
        .x(x),
        .z(z)
    );

    // Clock generation
    always #((CLK_PERIOD)/2) clk = ~clk;

    // Stimulus
    initial begin
        // Initialize inputs
        rst = 1;
        x = 0;
        clk = 0;

        // Wait for some time for stable signals
        #10;

        // Deassert reset
        rst = 0;
        
        // Test sequence1010
        #10; x = 0; // ps = 00, ns = 00
        #10; x = 1; // ps = 00, ns = 01
        #10; x = 0; // ps = 01, ns = 02
        #10; x = 1; // ps = 02, ns = 03
        #10; x = 1; // ps = 03, ns = 01 (sequence detected)
        #10; x = 0; // ps = 01, ns = 00
        #10; x = 1; // ps = 00, ns = 01
        #10; x = 0; // ps = 01, ns = 02
        #10; x = 1; // ps = 02, ns = 03
        #10; x = 0; // ps = 03, ns = 00
        #10; x = 1; // ps = 00, ns = 01
                #10; x = 0; // ps = 01, ns = 02
                #10; x = 1; // ps = 02, ns = 03
                #10; x = 0;

        // Finish simulation
        #10 $finish;
    end

endmodule

