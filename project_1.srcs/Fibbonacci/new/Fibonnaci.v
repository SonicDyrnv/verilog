`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2025 14:11:18
// Design Name: 
// Module Name: Fibonnaci
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


module Fibonnaci(clk, start, stop, hold, series);
    input start,stop,hold;
    input clk;
    output reg [5:0]series;
    reg label;
    reg [5:0]series1;
//    reg [5:0]series2;
    initial label=1'b0;
    initial series1=6'b0;
//    initial series2=6'b0;
    
    always @(negedge clk)
    begin
        if (start==1)
            begin 
                if (label==1) 
                begin
                    if(series==0)
                    begin
                        series<=6'b000001;
                    end
                    else
                    begin
                        series<=series+series1;
                    end
                end 
                else
                begin
                    series<=6'b0;
                    label<=1;
                end
            end
        else
            begin 
            if(hold!=1 && label==1)
                begin
                    if(stop==0)
                        begin
                            label<=1'b0;
                            series<=6'b0;
                        end
                end
            if(hold==1 && label==1)
                begin
                    series<=series;
                end
            end
//    series2=series1;
    series1=series;
    end
endmodule
