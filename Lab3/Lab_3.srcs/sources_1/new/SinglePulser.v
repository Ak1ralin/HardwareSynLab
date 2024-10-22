`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/10 12:27:43
// Design Name: 
// Module Name: SinglePulser
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


module SinglePulser(
    input in,
    input clk,
    output reg out
    );
    reg past;
    initial past = 0;
    always@(posedge clk)
    begin
        out = 0;
        case({in,past})
        2'b00: ;
        2'b01: past = 0;
        2'b10: 
            begin 
                past = 1; 
                out = 1; 
            end
        2'b11: ;
        endcase
    end
endmodule
