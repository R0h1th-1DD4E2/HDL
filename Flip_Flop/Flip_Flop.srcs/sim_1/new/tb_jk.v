`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2024 00:40:56
// Design Name: 
// Module Name: tb_jk
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


module tb_jk;
    reg clk, j, k;
    wire q;
    
    // Instantiate the JK flip-flop
    jk_case jk_inst (
        .clk(clk),
        .j(j),
        .k(k),
        .q(q)
    );
    
    // Clock generation
    always #1 clk = ~clk;
    
    
    // Stimulus
    initial begin
        clk = 0;
        j = 0;
        k = 0;
        #2;
        
        // Test case 3: J=1, K=0 (Set)
        j = 1;
        k = 0;
        #2;
        
        // Test case 2: J=0, K=1 (Reset)
        j = 0;
        k = 1;
        #2;

        // Test case 4: J=1, K=1 (Toggle)
        j = 1;
        k = 1;
        #2;
        
        $finish;
    end
endmodule

