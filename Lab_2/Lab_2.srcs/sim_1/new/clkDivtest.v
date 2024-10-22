`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/26 19:22:42
// Design Name: 
// Module Name: clkDivtest
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


module clkDivtest();//check is it double clk
    wire clkDiv;
    reg clk;
    clockDiv a(clkDiv,clk);
    always
    #10 clk = ~clk;
    
    initial
    begin
    #0
    clk = 0;
    #200 $finish;
    end
    
endmodule
