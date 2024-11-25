`include "../../Modulo_verificacao_de_paridade/Codigo/v_paridade.v"

module display_7_seg (b1,b2,b3,b4,b5,b_par,A,B,C,D,E,F,G);
    input b1,b2,b3,b4,b5,b_par,S;
    output reg A,B,C,D,E,F,G;

    //instanciacao do modulo de verificacao de paridade
    verificador_paridade verifica(b1,b2,b3,b4,b5,b_par,S);

    always@(*) begin
        //verifica se a paridade está incorreta para exibir o carctere especial
        if(S == 1'b0)begin
            A <= 1'b1;
            B <= 1'b1;
            C <= 1'b1;
            D <= 1'b1;
            E <= 1'b1;
            F <= 1'b1;
            G <= 1'b1;

        end
        //verifica se as string de bits está dentro do intervalo que forma os 20 caracteres
        else if ((b1 == 1'b1 & b2 == 1'b1) | b1 == 1'b1 & b3 == 1'b1)begin
            A <= 1'b0;
            B <= 1'b0;
            C <= 1'b0;
            D <= 1'b0;
            E <= 1'b0;
            F <= 1'b0;
            G <= 1'b0;
        end
        //caso a paridade esteja correta e a mensagem esteja dentro do intervalo, será exibido o caractere correspondente
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