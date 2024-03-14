`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.03.2024 20:19:40
// Design Name: 
// Module Name: squence0110
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

module squence0110(clk, x, rst, z);
  parameter RESET = 2'b00, got0 = 2'b01, got01 = 2'b10, got011 = 2'b11;
  input clk, x, rst;
  output z;
  reg [1:0] ps,ns;

  // Output combinational logic to derive Z with present state 'ps' and input 'x'
  assign z = (ps == got011) && (x == 1'b0) ? 1 : 0;

  // Next state decoding logic
  always @(ps, x) begin
    case (ps)
      RESET: ns = x ? RESET : got0;
      got0: ns = x ? got01 : got0;
      got01: ns = x ? got011 : got0;
      got011: ns = x ? RESET : got0;
    endcase
  end

  // Sequential logic for Present State derivation
  always @(posedge clk) ps <= rst ? RESET : ns;
endmodule
