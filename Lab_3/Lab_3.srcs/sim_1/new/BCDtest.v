`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/10 12:54:09
// Design Name: 
// Module Name: BCDtest
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


module BCDtest();

    wire [3:0] outputs;
    wire d2, cout, bout;
    reg clk, pushed, set9, set0, inc, dec;

    SinglePulser sp(pushed,clk,d2);
    BCDcounter bcd(inc,set9,set0,dec,clk,outputs,cout,bout);
    
    // clock
    always
        #10 clk=~clk;

    // testPulser
    initial begin
        #0  clk=0;
        #20
        #5  pushed = 1;
        #10 pushed = 0;
        #5  pushed = 1;
        #20 pushed = 0;
            
        #600 $finish;
    end
    
    // testBCDcounter
    initial begin
        #0 inc=0;dec=0;set9=0;set0=0;
        #20
        #10 inc = 1;
        #310
        #10 inc=0; dec=0; set0 = 1;
        #10 set0=0; set9 = 1;
        #10 set9=0; dec = 1;
        #310
        #10 inc=0; dec=0; set0 = 1;
        #10 set0=0; set9 = 1;
    end

endmodule
