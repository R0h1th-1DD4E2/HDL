`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.02.2024 20:12:37
// Design Name: 
// Module Name: ff_latches
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

module sr_latch(input S, R, output reg Q, Q_bar);
    always @(*) begin
        Q = S | (Q_bar & ~R);
        Q_bar = R | (Q & ~S);
    end
endmodule

module d_latch(input D, CLK, output reg Q);
    always @(D, CLK) begin
        if (CLK)
            Q = D;
    end
endmodule

module jk_flipflop(input J, K, CLK, output reg Q);
    reg Q_next;
    always @(J, K, Q) begin
        Q_next = (J & ~Q) | (~K & Q);
    end
    always @(posedge CLK) begin
        Q <= Q_next;
    end
endmodule

module d_flipflop(input D, CLK, output reg Q);
    always @(posedge CLK) begin
        Q <= D;
    end
endmodule

module t_flipflop(input T, CLK, output reg Q);
    always @(posedge CLK) begin
        if (T)
            Q <= ~Q;
    end
endmodule

