`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/20 10:05:19
// Design Name: 
// Module Name: DFlipflop
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


module DFlipflop(
    output q,
    input clk,
    input nreset,
    input d
    );
    reg q;
    always @(posedge clk)
    begin
       q=d;
    end
    always @(*)
    begin
        if(!nreset)
            q = 0;
    end
endmodule
