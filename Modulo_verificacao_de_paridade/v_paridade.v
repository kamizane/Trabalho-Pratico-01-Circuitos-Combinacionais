module verificador_paridade (
    input wire b1,b2,b3,b4,b5,bp,
    output wire S
);
    assign S=~(b1^b2^b3^b4^b5^bp); //xnor
    
endmodule