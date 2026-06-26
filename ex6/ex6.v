module top_module(
        input  [7:0]  a  ,b  ,c  ,d  ,
        output [15:0]  e
);

         wire  [15:0]   tmp1 ,tmp2  ; 
         wire  [15:0]  tmp3        ;

         assign tmp1 = a * b       ;
         assign tmp2 = c * d       ;
         assign tmp3 = tmp1 + tmp2 ;
         assign e    = tmp3 >> 2   ;     


endmodule
