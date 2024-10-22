`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/10 12:48:48
// Design Name: 
// Module Name: System
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
module System(
output [6:0] segments,
output dp,
output [3:0] an,
input btnC,
input btnU,
input [7:0] sw,
input clk
);
    //slow clk
    wire [18:0] tclk;
    wire targetclk;
    assign tclk[0] = clk;
    genvar c;
    generate for(c = 1 ; c <= 18 ; c= c+1)
    begin
        clockDiv cd(tclk[c],tclk[c-1]); 
    end 
    endgenerate
    clockDiv cd(targetclk,tclk[18]);
    //input synchronizer
    wire [7:0] d2,nd2,d,nd;
    generate for(c = 0; c < 8 ; c = c+1)
    begin
        dFlipflop dff2(d2[c],nd2[c],sw[c],targetclk);
        dFlipflop dff(d[c],nd[c],d2[c],targetclk);
    end
    endgenerate
    //input singlepulser
    wire [7:0]sw1;
    generate for(c = 0 ; c < 8 ; c = c+1)
    begin
        SinglePulser sg(d[c],targetclk,sw1[c]);
    end
    endgenerate
    //counter change num
    wire [3:0]num0,num1,num2,num3;
    wire cout0,cout1,cout2,cout3;
    wire bout0,bout1,bout2,bout3;
    BCDcounter counter0(sw1[1]        ,btnU | cout3,btnC | bout3,sw1[0]        ,targetclk,num0,cout0,bout0);
    BCDcounter counter1(sw1[3] | cout0,btnU | cout3,btnC | bout3,sw1[2] | bout0,targetclk,num1,cout1,bout1);
    BCDcounter counter2(sw1[5] | cout1,btnU | cout3,btnC | bout3,sw1[4] | bout1,targetclk,num2,cout2,bout2);
    BCDcounter counter3(sw1[7] | cout2,btnU | cout3,btnC | bout3,sw1[6] | bout2,targetclk,num3,cout3,bout3);
    //display
    assign dp = 1;
    quad7Seg q7s(segments,an,num0,num1,num2,num3,targetclk);
endmodule
//module System(
//    output [6:0] segments, //7-seg
//    output dp,//dot point
//    output [3:0] an, //binary to 7-seg
//    input [7:0] sw, // for inc , dec 4 7-Segments // 7 is the most left
//    input btnU, //set 9
//    input btnC, //set 0
//    input clk
//    );
//    //slower clock
//    wire targetClk;
//    wire [18:0] tclk;
    
//    assign tclk[0]=clk;
    
//    genvar c;
//    generate for(c=0;c<18;c=c+1) begin
//        clockDiv fDiv(tclk[c+1],tclk[c]);
//    end endgenerate
    
//    clockDiv fdivTarget(targetClk,tclk[18]);
//    // Synchronizer
//    wire [7:0] d,notd,d2,notd2;
//    genvar n;//input sw[n] -> d[n]
//    generate for(n=0;n<8;n=n+1) 
//        begin
//        dFlipflop dFF2(d2[n],notd2[n],sw[n],targetClk);
//        dFlipflop dFF(d[n],notd[n],d2[n],targetClk);
//        end 
//    endgenerate
//    // Single Pulser
//    wire up0,up1,up2,up3,down0,down1,down2,down3;
//    SinglePulser spUP3(d[7],targetClk,up3);
//    SinglePulser spDOWN3(d[6],targetClk,down3);
//    SinglePulser spUP2(d[5],targetClk,up2);
//    SinglePulser spDOWN2(d[4],targetClk,down2);
//    SinglePulser spUP1(d[3],targetClk,up1);
//    SinglePulser spDOWN1(d[2],targetClk,down1);
//    SinglePulser spUP0(d[1],targetClk,up0);
//    SinglePulser spDOWN0(d[0],targetClk,down0);
//    // Counter
//    wire [3:0] num3,num2,num1,num0;
//    wire cout0,cout1,cout2,cout3;
//    wire bout0,bout1,bout2,bout3;
//    BCDcounter counter0(up0,btnU|cout3,btnC|bout3,down0,targetClk,num0,cout0,bout0);
//    BCDcounter counter1(up1|cout0,btnU|cout3,btnC|bout3,down1|bout0,targetClk,num1,cout1,bout1);
//    BCDcounter counter2(up2|cout1,btnU|cout3,btnC|bout3,down2|bout1,targetClk,num2,cout2,bout2);
//    BCDcounter counter3(up3|cout2,btnU|cout3,btnC|bout3,down3|bout2,targetClk,num3,cout3,bout3);
//    // Display
//    assign dp = 1;
//    quad7Seg q7segments(segments,an,num0,num1,num2,num3,targetClk);
//endmodule
