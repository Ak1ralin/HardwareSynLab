`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/03 13:34:07
// Design Name: 
// Module Name: kb
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


module kb(
    input clk,rst_n,
	input ps2d,ps2c,
	input rd_fifo,
	output [8:0] rd_data,
	output fifo_empty,
	output breakcode
    );
     wire[10:0] dout;
	 wire rx_done_tick;
	 wire wr;
	 wire [8:0] wr_data;
 
	 ps2_rx m0
	 (
		.clk(clk),
		.rst_n(rst_n),
		.rx_en(1),
		.ps2d(ps2d),
		.ps2c(ps2c),
		.dout(dout),
		.rx_done_tick(rx_done_tick)
    );
	 
	 kb_data m1
	 (
		.clk(clk),
		.rst_n(rst_n),
		.rx_done_tick(rx_done_tick),
		.din(dout[8:1]),
		.wr(wr),
		.wr_data(wr_data),
		.break_code(breakcode)
    );
	 
	  fifo #(.W(4),.B(9)) m2
	(
		.clk(clk),
		.rst_n(rst_n),
		.wr(wr),
		.rd(rd_fifo), //
		.wr_data(wr_data),
		.rd_data(rd_data),//
		.full(),
		.empty(fifo_empty) //
    );
endmodule
