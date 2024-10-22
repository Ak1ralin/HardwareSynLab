`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/30/2021 08:55:14 PM
// Design Name: 
// Module Name: AsciiTo7Segment
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


module AsciiTo7Segment(
    output [6:0] seg,
    input [7:0] ascii
    );
    
    reg [6:0] seg;
    
// 7-segment encoding
//      0
//     ---
//  5 |   | 1
//     --- <--6
//  4 |   | 2
//     ---
//      3
//By J'Pound CP49
   always @(ascii)
      case (ascii)
            8'h30: seg = 7'b1000000; // 0
            8'h31: seg = 7'b1111001; // 1
            8'h32: seg = 7'b0100100; // 2
            8'h33: seg = 7'b0110000; // 3
            8'h34: seg = 7'b0011001; // 4
            8'h35: seg = 7'b0010010; // 5
            8'h36: seg = 7'b0000010; // 6
            8'h37: seg = 7'b1111000; // 7
            8'h38: seg = 7'b0000000; // 8
            8'h39: seg = 7'b0010000; // 9
            8'h41: seg = 7'b0100000; // A
            8'h42: seg = 7'b0000011; // B
            8'h43: seg = 7'b0100111; // C
            8'h44: seg = 7'b0100001; // D
            8'h45: seg = 7'b0000110; // E
            8'h46: seg = 7'b0001110; // F
            8'h47: seg = 7'b1000010; // G
            8'h48: seg = 7'b0001011; // H
            8'h49: seg = 7'b1101110; // I
            8'h4A: seg = 7'b1110010; // J
            8'h4B: seg = 7'b0001010; // K
            8'h4C: seg = 7'b1000111; // L
            8'h4D: seg = 7'b0101010; // M
            8'h4E: seg = 7'b0101011; // N
            8'h4F: seg = 7'b0100011; // O
            8'h50: seg = 7'b0001100; // P
            8'h51: seg = 7'b0011000; // Q
            8'h52: seg = 7'b0101111; // R
            8'h53: seg = 7'b1010010; // S
            8'h54: seg = 7'b0000111; // T
            8'h55: seg = 7'b1100011; // U
            8'h56: seg = 7'b1010101; // V
            8'h57: seg = 7'b0010101; // W
            8'h58: seg = 7'b1101011; // X
            8'h59: seg = 7'b0010001; // Y
            8'h5A: seg = 7'b1100100; // Z
            8'h21: seg = 7'b0010100; // !
            8'h22: seg = 7'b1011101; // "
            8'h23: seg = 7'b1001001; // #
            8'h25: seg = 7'b1011011; // %
            8'h27: seg = 7'b1011111; // '
            8'h28: seg = 7'b1000110; // (
            8'h29: seg = 7'b1110000; // )
            8'h2A: seg = 7'b0110110; // *
            8'h2B: seg = 7'b0111001; // +
            8'h2C: seg = 7'b1110011; // ,
            8'h2D: seg = 7'b0111111; // -
            8'h2E: seg = 7'b1101111; // .
            8'h2F: seg = 7'b0101101; // /
            8'h3A: seg = 7'b1110110; // :
            8'h3B: seg = 7'b1110101; // ;
            8'h3C: seg = 7'b1011110; // <
            8'h3D: seg = 7'b0110111; // =
            8'h3E: seg = 7'b1111100; // >
            8'h3F: seg = 7'b0110100; // ?
            8'h40: seg = 7'b1101000; // @
            8'h5F: seg = 7'b1110111; // _
            8'h5C: seg = 7'b0011011; // \
            8'hB0: seg = 7'b0110000; // o
            default: seg = 7'b1111111; // Blank 
      endcase
				
endmodule