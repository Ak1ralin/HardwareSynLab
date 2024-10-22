`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/08 12:59:11
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
    output [6:0] seg,
    output dp,
    output [3:0] an,
    input clk,
    input [15:0]sw
    );
    //slower clock
    wire targetClk;
    wire [18:0] tclk;
    
    assign tclk[0]=clk;
    
    genvar c;
    generate for(c=0;c<18;c=c+1) begin
        clockDiv fDiv(tclk[c+1],tclk[c]);
    end endgenerate
    
    clockDiv fdivTarget(targetClk,tclk[18]);
    //display
    reg [3:0] num3,num2,num1,num0; // left to right

    assign dp = 1;
    quadSevenSeg q7seg(seg,an,num0,num1,num2,num3,targetClk);
    //calculate
    // reg [13:0]value;
    // always @(posedge clk)
    // begin 
    //     value = sw[13:0];
    //     num0 = value%10;
    //     value = value/10;
    //     num1 = value%10;
    //     value = value/10;
    //     num2 = value%10;
    //     value = value/10;
    //     num3 = value%10;
    //     value = value/10;
    //     if(value!=0)
    //     begin
    //         num0 = 4'b1010;
    //         num1 = 4'b1010;
    //         num2 = 4'b1010;
    //         num3 = 4'b1010;
    //     end
    // end 
    always @(posedge targetClk){num3,num2,num1,num0} = (1000*sw[15:12])+(100*sw[11:8])+(10*sw[7:4])+sw[3:0];
endmodule
