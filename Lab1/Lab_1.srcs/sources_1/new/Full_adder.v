`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/20 09:40:07
// Design Name: 
// Module Name: Full_adder
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


module Full_adder(
    output cout,
    output s,
    input cin,
    input a,
    input b
    );
//    reg cout, s;
//    always @(a,b,cin)
//    begin
//        {cout,s} = a+b+cin;
//    end
    assign {cout,s} = a + b + cin;

endmodule
