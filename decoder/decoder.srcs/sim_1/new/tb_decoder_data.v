`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2024 22:45:08
// Design Name: 
// Module Name: tb_decoder_data
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


module tb_decoder_data;

  reg E;
  reg [1:0]I;
  wire [3:0]Y;
  integer counter = 0;

  decoder_data dut (.E(E),.I(I),.Y(Y));
  
  initial 
  begin
  E = 1'b0;
  I[0] = 1'b0;
  I[1] = 1'b1;
  
  #5 E = 1'b1;
  for (integer i = 0; i < 4;i = i + 1) begin
      I[0] = counter[0];
      I[1] = counter[1];
      #5; 
      counter = counter + 1;
  end
    $finish;
  end

endmodule

