`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/20 10:30:11
// Design Name: 
// Module Name: testShift
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


module testShift();
    parameter i = 16;
    wire [i-1:0] b;
    reg clk, d;
    shiftB #(i)b1(b,clk,d);
    always
    #10 clk=~clk;
    initial
    begin
    //$dumpfile("testDFlipFlop.dump");
    //$dumpvars(1,D1);
    #0 
    d = 0;
    clk=0;
    #200 $finish;
    end
    always
    #8 d=~d;
endmodule
