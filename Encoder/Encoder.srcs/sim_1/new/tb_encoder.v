`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2024 19:45:53
// Design Name: 
// Module Name: tb_encoder
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


module tb_encoder;
    // Declare signals
    reg A, B, C, D;
    wire [1:0] Y;
    
    // Instantiate the Encoder_wp module
    Encoder_wop dut (.A(A),.B(B),.C(C),.D(D),.Y(Y));
    // Stimulus
    initial 
    begin
        // Test case 1: A = 1, B = C = D = 0
            A = 1; B = 0; C = 0; D = 0;
            #5; // Wait for a few time units
            
            // Test case 2: B = 1, A = C = D = 0
            B = 1; A = 0; C = 0; D = 0;
            #5; // Wait for a few time units
            
            // Test case 3: C = 1, A = B = D = 0
            C = 1; A = 0; B = 0; D = 0;
            #5; // Wait for a few time units
            
            // Test case 4: D = 1, A = B = C = 0
            D = 1; A = 0; B = 0; C = 0;
            #5; // Wait for a few time units
            
            // Test case 5: None active
            A = 0; B = 0; C = 0; D = 0;
            #5; // Wait for a few time units
            
        // End of simulation
        $finish;
    end
endmodule

