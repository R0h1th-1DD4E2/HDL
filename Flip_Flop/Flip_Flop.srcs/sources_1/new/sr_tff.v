`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2024 08:01:36
// Design Name: 
// Module Name: sr_tff
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


module sr_tff(clk,S,R,T,q_TP,q_srP,q_TN,q_srN,rst);
input clk,T,S,R,rst;
output reg q_TP,q_srP,q_TN,q_srN;
always@(posedge clk or negedge clk)
begin
if(clk)
    begin
        if(S==0&&R==0)
        q_srP<=1'bX;
        else if(S==0&R==1)
        q_srP<=1'b0;
        else if(S==1&R==0)
        q_srP<=1'b1;
        else if(S==1&R==1)
        q_srP<=q_srP;
        else
        q_srP<=1'bX;
    end
else
    begin
        if(S==0&&R==0)
        q_srN<=1'bX;
        else if(S==0&R==1)
        q_srN<=1'b0;
        else if(S==1&R==0)
        q_srN<=1'b1;
        else if(S==1&R==1)
        q_srN<=q_srP;
        else
        q_srN<=1'bX;
    end
end

always@(posedge clk or negedge clk)
begin
    if(rst)
        begin
        q_TP<=1'b0;
        q_TN<=1'b0;
        end
    else
        begin
        if(clk)
            begin
            if(T==0)
            q_TP<=q_TP;
            else
            q_TP<=~q_TP;
            end
        else
            begin
            if(T==0)
            q_TN<=q_TN;
            else
            q_TN<=~q_TN;
            end
    end

end
endmodule
