`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/20 10:26:30
// Design Name: 
// Module Name: shift
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


module shiftA(q,clk,d);
output[1:0] q;
input clk,d;
reg [1:0] q;
    always @(posedge clk)
    begin
    q[0]=d;
    q[1]=q[0];
    end
endmodule

module shiftB #(parameter i = 8)(q,clk,d);
output [i:0] q;
input clk,d;
reg [1:0] q;
    always @(posedge clk)
    begin
    q[0]<=d;
    q[1]<=q[0];
    end
endmodule
