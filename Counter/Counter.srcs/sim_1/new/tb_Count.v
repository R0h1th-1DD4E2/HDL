`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.02.2024 19:48:32
// Design Name: 
// Module Name: tb_Count
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
module tb_Count_3;

    reg rst;
    wire [2:0] Count;
    
    reg clk = 1'b1;
        always #5 clk = ~clk;
      
     initial 
        rst = 1'b0;  
    
// Instantiate the module under test
    Count_3 dut (
        .clk(clk),
        .rst(rst),
        .Count(Count)
         );

    // Stimulus
    initial begin
        // Initialize inputs
        #50 rst = 1'b1;
        #10 rst = 1'b0; // Release reset after 10 time units
        
        // Monitor for Count changes
        $monitor("Time = %0t, Count = %b", $time, Count);
        
        // Run simulation for 200 time units
        #2000 $finish;
    end

endmodule
