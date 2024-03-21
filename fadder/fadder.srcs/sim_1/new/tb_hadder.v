`timescale 1ns / 1ps

module tb_hadder;
    reg A,B;
    wire S,Cout;
    hadder in1(A,B,S,Cout);
    initial
        begin
            A = 0 ; B = 0;
            #1 A = 0 ; B = 1;
            #1 A = 1 ; B = 0;
            #1 A = 1 ; B = 1;
            #1 $finish;
       end
endmodule