`timescale 1ns / 1ps

module tb_fadder;
    reg A,B,Cin;
    wire S,Cout;
    fadder in1(A,B,Cin,S,Cout);
    initial
        begin
            A = 0 ; B = 0; Cin = 0;
            #1 A = 0 ; B = 0; Cin = 1;
            #1 A = 0 ; B = 1; Cin = 0;
            #1 A = 0 ; B = 1; Cin = 1;
            #1 A = 1 ; B = 0; Cin = 0;
            #1 A = 1 ; B = 0; Cin = 1;
            #1 A = 1 ; B = 1; Cin = 0;
            #1 A = 1 ; B = 1; Cin = 1;
            #1 $finish;
       end
endmodule
