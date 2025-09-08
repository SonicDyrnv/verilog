module gates(A,B,Y_AND,Y_NOT,Y_OR);
    
    input A,B;
    output Y_AND,Y_NOT,Y_OR;
    
    assign Y_AND = A&B;
    assign Y_OR = A|B;
    assign Y_NOT = ~A;
    
endmodule 