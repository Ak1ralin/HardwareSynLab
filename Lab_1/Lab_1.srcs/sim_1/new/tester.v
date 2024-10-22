`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/20 09:45:33
// Design Name: 
// Module Name: tester
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


module tester;
    reg a,b,cin;
    wire cout,s;
    Full_adder a1(cout,s,a,b,cin);
    initial
    begin
    //$dumpfile("time.dump");
    //$dumpvars(2,a1);
    $monitor("time %t: {%b %b} <- {%d %d %d}", $time,cout,s,a,b,cin);
    #0;
    a=0;
    b=0;
    cin=0;
    #200;
    $finish;
    end
    always
    #5 cin = ~cin;
    always
    #10 b = ~b;
    always
    #20 a = ~a;
endmodule

