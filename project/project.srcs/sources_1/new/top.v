`timescale 1ns / 1ps

module top(
    input clk,              // 100MHz Basys 3
    input reset,            // sw[15]
    input set,              // btnC
    input up,               // btnU
    input down,             // btnD
    input left,             // btnL
    input right,            // btnR
    input [6:0] sw,         // sw[6:0] sets ASCII value
    input RsRx,
    output RsTx,
    output hsync, vsync,    // VGA connector
    output [11:0] rgb       // DAC, VGA connector
    );
    
    // signals
    wire [9:0] w_x, w_y;
    wire w_vid_on, w_p_tick;
    reg [11:0] rgb_reg;
    wire [11:0] rgb_next;
    reg en, last_rec;
    wire sset;
    reg [7:0] data_in;
    wire [7:0] data_out;
    wire sent, received, baud;
    baudrate_gen baudrate_gen(clk, baud);
    debounce_chu db_sett(.clk(clk), .reset(reset), .sw(set), .db_level(), .db_tick(sset));
    uart_rx receiver(baud, RsRx, received, data_out);
    uart_tx transmitter(baud, data_in, en, sent, RsTx);
    always @(posedge baud) begin
        if (en) en = 0;
        if (~last_rec & received) begin
            data_in = data_out;
            en = 1;
        end
        if(sset)begin
            data_in = sw; 
            en = 1; 
        end
        last_rec = received;
    end
    
    // instantiate vga controller
    vga_controller vga(.clk_100MHz(clk), .reset(reset), .video_on(w_vid_on),
                       .hsync(hsync), .vsync(vsync), .p_tick(w_p_tick), 
                       .x(w_x), .y(w_y));
    
    // instantiate text generation circuit
    text_screen_gen tsg(.clk(clk), .reset(reset), .video_on(w_vid_on), .set(set || en),
                        .up(up), .down(down), .left(left), .right(right),
                        .sw(data_in[6:0]), .x(w_x), .y(w_y), .rgb(rgb_next));
    
    // rgb buffer
    always @(posedge clk)
        if(w_p_tick)
            rgb_reg <= rgb_next;
            
    // output
    assign rgb = rgb_reg;
    
endmodule