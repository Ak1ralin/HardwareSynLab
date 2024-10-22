`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/26 19:42:10
// Design Name: 
// Module Name: system
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


module system(
    output [6:0] segments,
    output dot,
    output [3:0] pos,
    input clk
    );
    wire [3:0] num3,num2,num1,num0; // From left to right
    
    assign num0=4;
    assign num1=3;
    assign num2=2;
    assign num3=1;
    // extend clk 
    wire targetClk;
    wire [20:0] processingclk;
    assign processingclk[0] = clk;//divided by 2 18 times
    genvar c;
    generate for(c=0;c<=25;c=c+1) 
    begin
        clockDiv processingDiv(processingclk[c+1],processingclk[c]);
    end endgenerate
    assign dot = 1;
    clockDiv finalDiv(targetClk,processingclk[20]);
    // Display 
    quad7Seg q7seg(segments,pos,num0,num1,num2,num3,targetClk);
endmodule
