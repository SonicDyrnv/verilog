`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.08.2025 15:19:07
// Design Name: 
// Module Name: full_adder
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


module full_adder(a,b,c,S,C,SD,CD);
    input a,b,c;
    output S,C,SD,CD;
    
    wire temp1,temp2,temp3;
    xor G1(S,a,b,c);
    and G2(temp1,a,b);
    and G3(temp2,b,c);
    and G4(temp3,c,a);
    or G5(C,temp1,temp2,temp3);
    
    assign SD = (a^b^c);
    assign CD = (a&b)|(b&c)|(c&a);    
endmodule