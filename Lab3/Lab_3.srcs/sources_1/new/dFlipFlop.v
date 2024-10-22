`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/10 14:06:51
// Design Name: 
// Module Name: dFlipFlop
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


module dFlipflop(
    output reg q,
    output reg notq,
    input d,
    input clk
    );
    
    reg state;
    initial state = 0;
    always @(posedge clk) state = d;
    always @(state) {q,notq} = {state,~state};
    
endmodule
