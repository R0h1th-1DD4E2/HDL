`timescale 1ns / 1ps

module fadder(
    input A,B,Cin,
    output S,Cout
    );
    
    wire w1,w2,w3;
    xor(S,A,B,Cin);
    xor(w1,A,B);
    and(w2,w1,Cin);
    and(w3,A,B);
    or(Cout,w2,w3);
endmodule
