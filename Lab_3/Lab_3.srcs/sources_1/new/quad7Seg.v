`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/10 14:25:01
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
    output [3:0] display,
    input [3:0] num0, //right
    input [3:0] num1,
    input [3:0] num2,
    input [3:0] num3, //left
    input clk
    );
    reg [1:0] next; 
    reg [1:0] now; 
    reg [3:0] whichone; // which one is active, similar to one hot key
    reg [3:0] hexIn; //hexadecimal input
    hex27seg segDecode(seg,hexIn);//call module calc segments
    assign display = ~whichone;

    // change state every posedge
    always @(posedge clk)
        now=next;
    
    // 3 below sequences work parallelly
    always @(now) 
        next=now+1;
    
    always @(now)
        case(now)
            2'b00: whichone=4'b0001;
            2'b01: whichone=4'b0010;
            2'b10: whichone=4'b0100;
            2'b11: whichone=4'b1000;
        endcase
    
    always @(now)
        case(now)
            2'b00: hexIn=num0;
            2'b01: hexIn=num1;
            2'b10: hexIn=num2;
            2'b11: hexIn=num3;
        endcase
endmodule
