`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/26 19:43:47
// Design Name: 
// Module Name: quad7Seg
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


module quad7Seg(
    output [6:0] seg,
    output reg [3:0]display,// which one is active, similar to one hot key
    input [3:0] num0, //right
    input [3:0] num1,
    input [3:0] num2,
    input [3:0] num3, //left
    input clk
    );
    reg [1:0] ns,ps;
    reg [3:0] num; //hexadecimal input
    wire [6:0] segments;
    
    hex27seg segDecode(seg,num);//call module calc segments

    // change state every posedge
    always @(posedge clk)
        ps = ns;
    
    // 3 below sequences work parallelly
    always @(ps) 
        ns=ps+1;
    
    always @(ps)
        case(ps)
            2'b00: display=4'b0111;
            2'b01: display=4'b1011;
            2'b10: display=4'b1101;
            2'b11: display=4'b1110;
        endcase
    
    always @(ps)
        case(ps)
            2'b00: num=num3;
            2'b01: num=num2;
            2'b10: num=num1;
            2'b11: num=num0;
        endcase
endmodule
