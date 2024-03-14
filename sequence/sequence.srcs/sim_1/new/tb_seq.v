`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.03.2024 20:33:05
// Design Name: 
// Module Name: tb_seq
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


//module tb_seq;

//  reg clk, x, rst;
//  wire z;

//  // Instantiate the module under test
//  squence0110 uut (.clk(clk),.x(x),.rst(rst),.z(z));

//  // Clock generation
//  always #5 clk = ~clk;

//  // Stimulus generation
//  initial begin
//    clk = 0;
//    x = 0;
//    rst = 1; // Reset initially

//    // Apply inputs and observe outputs
//    #10 rst = 0; // Release reset
//    #10 x = 1;
//    #10 x = 0;
//    #10 x = 1;
//    #10 x = 1;
//    #10 x = 0;
//    #10 x = 1;

//    $finish;
//  end
//endmodule

module tb_seq;
reg clk, rst,x;
wire z;
integer seed = 3;
squence0110 uut (.clk(clk),.x(x),.rst(rst),.z(z));
initial begin
clk = 0;
    x = 0;
    rst = 1; // Reset initially
#4 rst = 0;
#100 $finish;
end
always@ (posedge clk) 
begin
//x = $random(seed);
$display(x);
      $display("Random number: %d", $random(3));
    end
always #1 clk = ~clk;
endmodule
