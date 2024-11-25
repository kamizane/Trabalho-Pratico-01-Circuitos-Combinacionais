`include "./v_paridade.v"
module verificador_paridade_tb;
    
    reg b1, b2, b3, b4, b5, bp; //entradas
    wire S; //saida          

    verificador_paridade teste(  
        .b1(b1), //faz a conexão com o modulo de paridade
        .b2(b2),
        .b3(b3),
        .b4(b4),
        .b5(b5),
        .bp(bp),
        .S(S)
    );

    initial begin
        //gera o arquivo para visualizar a forma de ondas
        $dumpfile("v_paridade.vcd");
        $dumpvars;
        //monitora as variações nas variáveis e exibe no terminal
        $display("b1 b2 b3 b4 b5 bp - S");
        $monitor("%b  %b  %b  %b  %b  %b  %b", b1, b2, b3, b4, b5, bp, S);
        
        b1= 1'b0; b2= 1'b0; b3= 1'b0; b4= 1'b0; b5= 1'b0; bp= 1'b0;
        #10
        b1= 1'b0; b2= 1'b0; b3= 1'b0; b4= 1'b0; b5= 1'b0; bp= 1'b1;
        #10
        b1= 1'b0; b2= 1'b0; b3= 1'b0; b4= 1'b0; b5= 1'b1; bp= 1'b0;
        #10 
        b1= 1'b0; b2= 1'b0; b3= 1'b0; b4= 1'b0; b5= 1'b1; bp= 1'b1;
        #10 
        b1= 1'b0; b2= 1'b0; b3= 1'b0; b4= 1'b1; b5= 1'b0; bp= 1'b0;
        #10 
        b1= 1'b0; b2= 1'b0; b3= 1'b0; b4= 1'b1; b5= 1'b0; bp= 1'b1;
        #10 
        b1= 1'b0; b2= 1'b0; b3= 1'b0; b4= 1'b1; b5= 1'b1; bp= 1'b0;
        #10 
        b1= 1'b0; b2= 1'b0; b3= 1'b0; b4= 1'b1; b5= 1'b1; bp= 1'b1;
        #10 
        b1= 1'b0; b2= 1'b0; b3= 1'b1; b4= 1'b0; b5= 1'b0; bp= 1'b0;
        #10 
        b1= 1'b0; b2= 1'b0; b3= 1'b1; b4= 1'b0; b5= 1'b0; bp= 1'b1;
        #10 
        b1= 1'b0; b2= 1'b0; b3= 1'b1; b4= 1'b0; b5= 1'b1; bp= 1'b0;
        #10 
        b1= 1'b0; b2= 1'b0; b3= 1'b1; b4= 1'b0; b5= 1'b1; bp= 1'b1;
        #10 
        b1= 1'b0; b2= 1'b0; b3= 1'b1; b4= 1'b1; b5= 1'b0; bp= 1'b0;
        #10 
        b1= 1'b0; b2= 1'b0; b3= 1'b1; b4= 1'b1; b5= 1'b0; bp= 1'b1;
        #10 
        b1= 1'b0; b2= 1'b0; b3= 1'b1; b4= 1'b1; b5= 1'b1; bp= 1'b0;
        #10 
        b1= 1'b0; b2= 1'b0; b3= 1'b1; b4= 1'b1; b5= 1'b1; bp= 1'b1;
        #10 

        b1= 1'b0; b2= 1'b1; b3= 1'b0; b4= 1'b0; b5= 1'b0; bp= 1'b0;
        #10
        b1= 1'b0; b2= 1'b1; b3= 1'b0; b4= 1'b0; b5= 1'b0; bp= 1'b1;
        #10
        b1= 1'b0; b2= 1'b1; b3= 1'b0; b4= 1'b0; b5= 1'b1; bp= 1'b0;
        #10
        b1= 1'b0; b2= 1'b1; b3= 1'b0; b4= 1'b0; b5= 1'b1; bp= 1'b1;
        #10 
        b1= 1'b0; b2= 1'b1; b3= 1'b0; b4= 1'b1; b5= 1'b0; bp= 1'b0;
        #10 
        b1= 1'b0; b2= 1'b1; b3= 1'b0; b4= 1'b1; b5= 1'b0; bp= 1'b1;
        #10
        b1= 1'b0; b2= 1'b1; b3= 1'b0; b4= 1'b1; b5= 1'b1; bp= 1'b0;
        #10
        b1= 1'b0; b2= 1'b1; b3= 1'b0; b4= 1'b1; b5= 1'b1; bp= 1'b1;
        #10
        b1= 1'b0; b2= 1'b1; b3= 1'b1; b4= 1'b0; b5= 1'b0; bp= 1'b0;
        #10
        b1= 1'b0; b2= 1'b1; b3= 1'b1; b4= 1'b0; b5= 1'b0; bp= 1'b1;
        #10
        b1= 1'b0; b2= 1'b1; b3= 1'b1; b4= 1'b0; b5= 1'b1; bp= 1'b0;
        #10
        b1= 1'b0; b2= 1'b1; b3= 1'b1; b4= 1'b0; b5= 1'b1; bp= 1'b1;
        #10
        b1= 1'b0; b2= 1'b1; b3= 1'b1; b4= 1'b1; b5= 1'b0; bp= 1'b0;
        #10
        b1= 1'b0; b2= 1'b1; b3= 1'b1; b4= 1'b1; b5= 1'b0; bp= 1'b1;
        #10
        b1= 1'b0; b2= 1'b1; b3= 1'b1; b4= 1'b1; b5= 1'b1; bp= 1'b0;
        #10
        b1= 1'b0; b2= 1'b1; b3= 1'b1; b4= 1'b1; b5= 1'b1; bp= 1'b1;
        #10

        b1= 1'b1; b2= 1'b0; b3= 1'b0; b4= 1'b0; b5= 1'b0; bp= 1'b0;
        #10
        b1= 1'b1; b2= 1'b0; b3= 1'b0; b4= 1'b0; b5= 1'b0; bp= 1'b1;
        #10
        b1= 1'b1; b2= 1'b0; b3= 1'b0; b4= 1'b0; b5= 1'b1; bp= 1'b0;
        #10
        b1= 1'b1; b2= 1'b0; b3= 1'b0; b4= 1'b0; b5= 1'b1; bp= 1'b1;
        #10
        b1= 1'b1; b2= 1'b0; b3= 1'b0; b4= 1'b1; b5= 1'b0; bp= 1'b0;
        #10
        b1= 1'b1; b2= 1'b0; b3= 1'b0; b4= 1'b1; b5= 1'b0; bp= 1'b1;
        #10
        b1= 1'b1; b2= 1'b0; b3= 1'b0; b4= 1'b1; b5= 1'b1; bp= 1'b0;
        #10
        b1= 1'b1; b2= 1'b0; b3= 1'b0; b4= 1'b1; b5= 1'b1; bp= 1'b1;
        #10
        b1= 1'b1; b2= 1'b0; b3= 1'b1; b4= 1'b0; b5= 1'b0; bp= 1'b0;
        #10
        b1= 1'b1; b2= 1'b0; b3= 1'b1; b4= 1'b0; b5= 1'b0; bp= 1'b1;
        #10
        b1= 1'b1; b2= 1'b0; b3= 1'b1; b4= 1'b0; b5= 1'b1; bp= 1'b0;
        #10
        b1= 1'b1; b2= 1'b0; b3= 1'b1; b4= 1'b0; b5= 1'b1; bp= 1'b1;
        #10
        b1= 1'b1; b2= 1'b0; b3= 1'b1; b4= 1'b1; b5= 1'b0; bp= 1'b0;
        #10
        b1= 1'b1; b2= 1'b0; b3= 1'b1; b4= 1'b1; b5= 1'b0; bp= 1'b1;
        #10
        b1= 1'b1; b2= 1'b0; b3= 1'b1; b4= 1'b1; b5= 1'b1; bp= 1'b0;
        #10
        b1= 1'b1; b2= 1'b0; b3= 1'b1; b4= 1'b1; b5= 1'b1; bp= 1'b1;
        #10

        b1= 1'b1; b2= 1'b1; b3= 1'b0; b4= 1'b0; b5= 1'b0; bp= 1'b0;
        #10
        b1= 1'b1; b2= 1'b1; b3= 1'b0; b4= 1'b0; b5= 1'b0; bp= 1'b1;
        #10
        b1= 1'b1; b2= 1'b1; b3= 1'b0; b4= 1'b0; b5= 1'b1; bp= 1'b0;
        #10
        b1= 1'b1; b2= 1'b1; b3= 1'b0; b4= 1'b0; b5= 1'b1; bp= 1'b1;
        #10
        b1= 1'b1; b2= 1'b1; b3= 1'b0; b4= 1'b1; b5= 1'b0; bp= 1'b0;
        #10
        b1= 1'b1; b2= 1'b1; b3= 1'b0; b4= 1'b1; b5= 1'b0; bp= 1'b1;
        #10
        b1= 1'b1; b2= 1'b1; b3= 1'b0; b4= 1'b1; b5= 1'b1; bp= 1'b0;
        #10
        b1= 1'b1; b2= 1'b1; b3= 1'b0; b4= 1'b1; b5= 1'b1; bp= 1'b1;
        #10
        b1= 1'b1; b2= 1'b1; b3= 1'b1; b4= 1'b0; b5= 1'b0; bp= 1'b0;
        #10
        b1= 1'b1; b2= 1'b1; b3= 1'b1; b4= 1'b0; b5= 1'b0; bp= 1'b1;
        #10
        b1= 1'b1; b2= 1'b1; b3= 1'b1; b4= 1'b0; b5= 1'b1; bp= 1'b0;
        #10
        b1= 1'b1; b2= 1'b1; b3= 1'b1; b4= 1'b0; b5= 1'b1; bp= 1'b1;
        #10
        b1= 1'b1; b2= 1'b1; b3= 1'b1; b4= 1'b1; b5= 1'b0; bp= 1'b0;
        #10
        b1= 1'b1; b2= 1'b1; b3= 1'b1; b4= 1'b1; b5= 1'b0; bp= 1'b1;
        #10
        b1= 1'b1; b2= 1'b1; b3= 1'b1; b4= 1'b1; b5= 1'b1; bp= 1'b0;
        #10
        b1= 1'b1; b2= 1'b1; b3= 1'b1; b4= 1'b1; b5= 1'b1; bp= 1'b1;
        #10


        
        #10 $finish; 
    end
endmodule
