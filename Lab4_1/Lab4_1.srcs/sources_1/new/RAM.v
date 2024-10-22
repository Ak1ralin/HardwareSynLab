`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/16 15:11:42
// Design Name: 
// Module Name: RAM
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


module RAM(
    output reg [7:0] addr , //end()
    output reg [7:0] dout, 
    input wire [7:0] din,
    input wire pop,clk,push,reset
    );
    
    reg [7:0] elements [255:0];//8-bit 256 elements
    
    initial begin
        dout = 0;
        addr = 0;
    end
    
    always @(posedge clk) begin
        if(push) //write {}
        begin 
            elements[addr] = din;//write
            addr = addr+1;//addr = next write addr
        end
        if(reset || (pop&&addr==0))//reset or nothing to pop 
        begin 
            dout = 0;
            addr = 0;
        end
        if(pop && addr > 0) 
        begin // pop and read 
            addr = addr-1;//get read addr and update addr
            dout = elements[addr];//get data out
        end
    end
endmodule
