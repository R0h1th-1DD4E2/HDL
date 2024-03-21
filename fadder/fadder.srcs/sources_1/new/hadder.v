`timescale 1ns / 1ps

module hadder(
    input A,B,
    output S,Cout
    );
    xor(S,A,B);
    and(Cout,A,B);
endmodule
