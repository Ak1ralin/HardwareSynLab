`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/04 21:36:59
// Design Name: 
// Module Name: uart
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


module uart(
    input clk,
    input RsRx,
    input [7:0] data_in,
    input [6:0] sw,
    input transmit,
    input press,
    output RsTx,
    output [7:0]data_out,
    output received
    );
    
    reg en, last_rec;
    wire [7:0] data;
    wire sent, baud;
    //pick data
    assign data = (transmit)?data_in:data_out;
    //re clk
    baudrate_gen baudrate_gen(clk, baud);
    uart_rx receiver(baud, RsRx, received, data_out);
    uart_tx transmitter(baud, data, en, sent, RsTx);
    
    always @(posedge baud) begin
        if (en) en = 0;
        if (~last_rec & received || transmit || press) begin
            en = 1;
        end
        last_rec = received;
    end
endmodule
