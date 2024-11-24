`include "../../Modulo_verificacao_de_paridade/Codigo/v_paridade.v"
module display_7_seg (b1,b2,b3,b4,b5,b_par,A,B,C,D,E,F,G);
    input b1,b2,b3,b4,b5,b_par,S;
    output reg A,B,C,D,E,F,G;


    verificador_paridade verifica(b1,b2,b3,b4,b5,b_par,S);
    always@(*) begin
        if(S == 1'b0)begin
            A <= 1'b1;
            B <= 1'b1;
            C <= 1'b1;
            D <= 1'b1;
            E <= 1'b1;
            F <= 1'b1;
            G <= 1'b1;

        end
        else if ((b1 == 1'b1 & b2 == 1'b1) | b1 == 1'b1 & b3 == 1'b1)begin
            A <= 1'b0;
            B <= 1'b0;
            C <= 1'b0;
            D <= 1'b0;
            E <= 1'b0;
            F <= 1'b0;
            G <= 1'b0;
        end
        else if(S == 1'b1)begin
            A <= (((~b1) & b4 & (~b5)) | ((~b1) & b2 & b3) | ((~b1) & b3 & (~b5)) | ((~b1) & b2 & (~b5)));
            B <= (((~b1) & b4 & b5) | ((~b1) & b2 & b5) | ((~b1) & (~b2) & b3 & (~b5)) | (~b1) & b2 & (~b3) & (~b4) | (b1 & (~b2) & (~b3) & b4 & (~b5)));
            C <= (((~b1) & (~b4) & (~b5)) | ((~b1) & b4 & b5) | ((~b1) & b2 & (~b3)) | ((~b1) & b2 & (~b4)) | ((~b2) & (~b3) & (~b4) & b5));
            D <= (((~b2) & (~b3) & (~b5)) | ((~b1) & (~b2) & (~b3) & (~b4)) | ((~b1) & b3 & b4 & b5) | ((~b1) & b2 & b3 & b4) | ((~b1) & b2 & (~b4) & (~b5)));;
            E <= (((~b1) & b2 & (~b3)) | ((~b1) & b4 & (~b5)) | ((~b2) & (~b3) & (~b4)) | ((~b1) & (~b2) & (~b4) & b5) | (b1 & (~b2) & (~b3) & b5));
            F <= (((~b1) & b2 & (~b4)) | ((~b1) & b2 & b5) | ((~b1) & b3 & b4) | ((~b1) & (~b2) & b4 & (~b5)) | ((~b1) & (~b3) & (~b4) & b5) | (b1 & (~b2) & (~b3) & (~b5)) | (b1 & (~b2) & (~b3) & b4));
            G <= (((~b1) & (~b4) & b5) | ((~b1) & b3 & b5) | ((~b1) & b2 & b5) | ((~b1) & (~b2) & b4 & (~b5)) | ((~b1) & b2 & b3 &(~b4)) | (b1 & (~b2) & (~b3) & (~b4)));
        end
    end
endmodule