`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/10 12:09:01
// Design Name: 
// Module Name: BCDcounter
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


module BCDcounter(
    input up,
    input set9,
    input set0,
    input down,
    input clk,
    output reg [3:0] DCBA,
    output reg cout,
    output reg bout
    );
    initial DCBA = 4'b0000;
    always @(posedge clk)
    begin
    bout = 0;
    cout = 0;
        case({up,down,set9,set0})//one-hot operation
            4'b1000:
                begin
                    cout = (DCBA == 9);
                    DCBA = (DCBA+1)%10;
                end
            4'b0100:
                begin
                    bout = (DCBA == 0);
                    DCBA = (DCBA+9)%10;
                end
            4'b0010: DCBA = 9;
            4'b0001: DCBA = 0;
        endcase
    end   
endmodule
