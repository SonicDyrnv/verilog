`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2025 14:20:26
// Design Name: 
// Module Name: oneoneonezero
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
// I Computed truth tables in notebook for generating functions.

module JKFF(J,K,clk,Q,Qbar,preset,clear);
    input J,K,clk,preset,clear;
    output reg Q,Qbar;
    always@(posedge clk or posedge preset or posedge clear)
    begin
        case ({J,K,preset,clear})
            4'bxx01 : begin Q<=1'b0; Qbar<=1'b1; end
            4'bxx10 : begin Q<=1'b1; Qbar<=1'b0; end
            4'b0000 : begin Q<=Q; Qbar<=Qbar; end
            4'b0100 : begin Q<=1'b0; Qbar<=1'b1; end
            4'b1000 : begin Q<=1'b1; Qbar<=1'b0; end
            4'b1100 : begin Q<=~Q; Qbar<=~Qbar; end
            default  : begin Q<=1'b0; Qbar<=1'b0; end
        endcase
    end    
endmodule

module oneoneonezero(preset,clear,clk,y, Q1, Q1bar, Q0, Q0bar);
    input preset,clear,clk;
    output y;
    output Q1,Q1bar,Q0,Q0bar;
    JKFF F0(1'b1,1'b1,clk,Q0,Q0bar,preset,clear);
    JKFF F1(Q0,Q0,clk,Q1,Q1bar,preset,clear);
    assign y = Q1bar|Q0bar;
endmodule

// Testbench for above code.

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2025 14:38:06
// Design Name: 
// Module Name: tbofsequencegen
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


module tbofsequencegen();
    reg clk,clear,preset;
    wire y;
    wire Q0,Q0bar,Q1,Q1bar;
    always #2 clk=~clk;
    oneoneonezero uut(preset,clear,clk,y,Q1,Q1bar,Q0,Q0bar);
    initial 
    begin
        clk=0;
        #1 preset=1'b0;clear=1'b0;
        #20 preset=1'b1;
        #21 preset=1'b0;
        #40 clear=1'b1;
        #41 clear=1'b0;
    end
endmodule

// Sequence Detector : 

module seqdetect(x,clk,y,preset,clear, Q1,Q1bar,Q0,Q0bar);
    input x,clk,preset,clear,Q1,Q1bar,Q0,Q0bar;
    output y;
    JKFF F0(x,(~x)|(~Q1),clk,Q0,Q0bar,preset,clear);
    JKFF F1(Q0&x,~x,clk,Q1,Q1bar,preset,clear);
    assign y=Q1&(~Q0)&x;
endmodule

// Testbench of it :

module tbofit;
    reg x,clk,preset,clear;
    wire y,Q1,Q1bar,Q0,Q0bar;
    always #5 clk=~clk;
    seqdetect uut(x,clk,y,preset,clear,Q1,Q1bar,Q0,Q0bar);
    initial
    begin
        x=1'b0;preset=1'b0;clear=1'b0;clk=1'b0;
        #6 x=1'b1;
        #41 x=1'b0;
        #41 x=1'b1;
//        #21 x=0;
    end
endmodule