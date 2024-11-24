`include "display.v"

module display_tb();

    wire A,B,C,D,E,F,G;
    reg b1,b2,b3,b4,b5,b_par;

    display_7_seg tb_display(b1,b2,b3,b4,b5,b_par,A,B,C,D,E,F,G);


    initial begin
        $dumpfile("display.vcd");
        $dumpvars;
        $display("b1 b2 b3 b4 b5 b_par-A B C D E F G");
        $monitor("%b  %b  %b  %b  %b  %b     %b %b %b %b %b %b %b",b1,b2,b3,b4,b5,b_par,A,B,C,D,E,F,G);

        b1= 1'b0; b2= 1'b0; b3= 1'b0; b4= 1'b0; b5= 1'b0; b_par= 1'b0;
        #10
        b1= 1'b0; b2= 1'b0; b3= 1'b0; b4= 1'b0; b5= 1'b0; b_par= 1'b1;
        #10
        b1= 1'b0; b2= 1'b0; b3= 1'b0; b4= 1'b0; b5= 1'b1; b_par= 1'b0;
        #10 
        b1= 1'b0; b2= 1'b0; b3= 1'b0; b4= 1'b0; b5= 1'b1; b_par= 1'b1;
        #10 
        b1= 1'b0; b2= 1'b0; b3= 1'b0; b4= 1'b1; b5= 1'b0; b_par= 1'b0;
        #10 
        b1= 1'b0; b2= 1'b0; b3= 1'b0; b4= 1'b1; b5= 1'b0; b_par= 1'b1;
        #10 
        b1= 1'b0; b2= 1'b0; b3= 1'b0; b4= 1'b1; b5= 1'b1; b_par= 1'b0;
        #10 
        b1= 1'b0; b2= 1'b0; b3= 1'b0; b4= 1'b1; b5= 1'b1; b_par= 1'b1;
        #10 
        b1= 1'b0; b2= 1'b0; b3= 1'b1; b4= 1'b0; b5= 1'b0; b_par= 1'b0;
        #10 
        b1= 1'b0; b2= 1'b0; b3= 1'b1; b4= 1'b0; b5= 1'b0; b_par= 1'b1;
        #10 
        b1= 1'b0; b2= 1'b0; b3= 1'b1; b4= 1'b0; b5= 1'b1; b_par= 1'b0;
        #10 
        b1= 1'b0; b2= 1'b0; b3= 1'b1; b4= 1'b0; b5= 1'b1; b_par= 1'b1;
        #10 
        b1= 1'b0; b2= 1'b0; b3= 1'b1; b4= 1'b1; b5= 1'b0; b_par= 1'b0;
        #10 
        b1= 1'b0; b2= 1'b0; b3= 1'b1; b4= 1'b1; b5= 1'b0; b_par= 1'b1;
        #10 
        b1= 1'b0; b2= 1'b0; b3= 1'b1; b4= 1'b1; b5= 1'b1; b_par= 1'b0;
        #10 
        b1= 1'b0; b2= 1'b0; b3= 1'b1; b4= 1'b1; b5= 1'b1; b_par= 1'b1;
        #10 

        b1= 1'b0; b2= 1'b1; b3= 1'b0; b4= 1'b0; b5= 1'b0; b_par= 1'b0;
        #10
        b1= 1'b0; b2= 1'b1; b3= 1'b0; b4= 1'b0; b5= 1'b0; b_par= 1'b1;
        #10
        b1= 1'b0; b2= 1'b1; b3= 1'b0; b4= 1'b0; b5= 1'b1; b_par= 1'b0;
        #10
        b1= 1'b0; b2= 1'b1; b3= 1'b0; b4= 1'b0; b5= 1'b1; b_par= 1'b1;
        #10 
        b1= 1'b0; b2= 1'b1; b3= 1'b0; b4= 1'b1; b5= 1'b0; b_par= 1'b0;
        #10 
        b1= 1'b0; b2= 1'b1; b3= 1'b0; b4= 1'b1; b5= 1'b0; b_par= 1'b1;
        #10
        b1= 1'b0; b2= 1'b1; b3= 1'b0; b4= 1'b1; b5= 1'b1; b_par= 1'b0;
        #10
        b1= 1'b0; b2= 1'b1; b3= 1'b0; b4= 1'b1; b5= 1'b1; b_par= 1'b1;
        #10
        b1= 1'b0; b2= 1'b1; b3= 1'b1; b4= 1'b0; b5= 1'b0; b_par= 1'b0;
        #10
        b1= 1'b0; b2= 1'b1; b3= 1'b1; b4= 1'b0; b5= 1'b0; b_par= 1'b1;
        #10
        b1= 1'b0; b2= 1'b1; b3= 1'b1; b4= 1'b0; b5= 1'b1; b_par= 1'b0;
        #10
        b1= 1'b0; b2= 1'b1; b3= 1'b1; b4= 1'b0; b5= 1'b1; b_par= 1'b1;
        #10
        b1= 1'b0; b2= 1'b1; b3= 1'b1; b4= 1'b1; b5= 1'b0; b_par= 1'b0;
        #10
        b1= 1'b0; b2= 1'b1; b3= 1'b1; b4= 1'b1; b5= 1'b0; b_par= 1'b1;
        #10
        b1= 1'b0; b2= 1'b1; b3= 1'b1; b4= 1'b1; b5= 1'b1; b_par= 1'b0;
        #10
        b1= 1'b0; b2= 1'b1; b3= 1'b1; b4= 1'b1; b5= 1'b1; b_par= 1'b1;
        #10

        b1= 1'b1; b2= 1'b0; b3= 1'b0; b4= 1'b0; b5= 1'b0; b_par= 1'b0;
        #10
        b1= 1'b1; b2= 1'b0; b3= 1'b0; b4= 1'b0; b5= 1'b0; b_par= 1'b1;
        #10
        b1= 1'b1; b2= 1'b0; b3= 1'b0; b4= 1'b0; b5= 1'b1; b_par= 1'b0;
        #10
        b1= 1'b1; b2= 1'b0; b3= 1'b0; b4= 1'b0; b5= 1'b1; b_par= 1'b1;
        #10
        b1= 1'b1; b2= 1'b0; b3= 1'b0; b4= 1'b1; b5= 1'b0; b_par= 1'b0;
        #10
        b1= 1'b1; b2= 1'b0; b3= 1'b0; b4= 1'b1; b5= 1'b0; b_par= 1'b1;
        #10
        b1= 1'b1; b2= 1'b0; b3= 1'b0; b4= 1'b1; b5= 1'b1; b_par= 1'b0;
        #10
        b1= 1'b1; b2= 1'b0; b3= 1'b0; b4= 1'b1; b5= 1'b1; b_par= 1'b1;
        #10
        b1= 1'b1; b2= 1'b0; b3= 1'b1; b4= 1'b0; b5= 1'b0; b_par= 1'b0;
        #10
        b1= 1'b1; b2= 1'b0; b3= 1'b1; b4= 1'b0; b5= 1'b0; b_par= 1'b1;
        #10
        b1= 1'b1; b2= 1'b0; b3= 1'b1; b4= 1'b0; b5= 1'b1; b_par= 1'b0;
        #10
        b1= 1'b1; b2= 1'b0; b3= 1'b1; b4= 1'b0; b5= 1'b1; b_par= 1'b1;
        #10
        b1= 1'b1; b2= 1'b0; b3= 1'b1; b4= 1'b1; b5= 1'b0; b_par= 1'b0;
        #10
        b1= 1'b1; b2= 1'b0; b3= 1'b1; b4= 1'b1; b5= 1'b0; b_par= 1'b1;
        #10
        b1= 1'b1; b2= 1'b0; b3= 1'b1; b4= 1'b1; b5= 1'b1; b_par= 1'b0;
        #10
        b1= 1'b1; b2= 1'b0; b3= 1'b1; b4= 1'b1; b5= 1'b1; b_par= 1'b1;
        #10

        b1= 1'b1; b2= 1'b1; b3= 1'b0; b4= 1'b0; b5= 1'b0; b_par= 1'b0;
        #10
        b1= 1'b1; b2= 1'b1; b3= 1'b0; b4= 1'b0; b5= 1'b0; b_par= 1'b1;
        #10
        b1= 1'b1; b2= 1'b1; b3= 1'b0; b4= 1'b0; b5= 1'b1; b_par= 1'b0;
        #10
        b1= 1'b1; b2= 1'b1; b3= 1'b0; b4= 1'b0; b5= 1'b1; b_par= 1'b1;
        #10
        b1= 1'b1; b2= 1'b1; b3= 1'b0; b4= 1'b1; b5= 1'b0; b_par= 1'b0;
        #10
        b1= 1'b1; b2= 1'b1; b3= 1'b0; b4= 1'b1; b5= 1'b0; b_par= 1'b1;
        #10
        b1= 1'b1; b2= 1'b1; b3= 1'b0; b4= 1'b1; b5= 1'b1; b_par= 1'b0;
        #10
        b1= 1'b1; b2= 1'b1; b3= 1'b0; b4= 1'b1; b5= 1'b1; b_par= 1'b1;
        #10
        b1= 1'b1; b2= 1'b1; b3= 1'b1; b4= 1'b0; b5= 1'b0; b_par= 1'b0;
        #10
        b1= 1'b1; b2= 1'b1; b3= 1'b1; b4= 1'b0; b5= 1'b0; b_par= 1'b1;
        #10
        b1= 1'b1; b2= 1'b1; b3= 1'b1; b4= 1'b0; b5= 1'b1; b_par= 1'b0;
        #10
        b1= 1'b1; b2= 1'b1; b3= 1'b1; b4= 1'b0; b5= 1'b1; b_par= 1'b1;
        #10
        b1= 1'b1; b2= 1'b1; b3= 1'b1; b4= 1'b1; b5= 1'b0; b_par= 1'b0;
        #10
        b1= 1'b1; b2= 1'b1; b3= 1'b1; b4= 1'b1; b5= 1'b0; b_par= 1'b1;
        #10
        b1= 1'b1; b2= 1'b1; b3= 1'b1; b4= 1'b1; b5= 1'b1; b_par= 1'b0;
        #10
        b1= 1'b1; b2= 1'b1; b3= 1'b1; b4= 1'b1; b5= 1'b1; b_par= 1'b1;
        #10
        

        
        #10$finish;
    end
endmodule

