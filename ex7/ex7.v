module ex7(
       input  [7:0] a, b, c, d,
       output [15:0] e
);

       wire [7:0]  tmp1, tmp2;

       assign tmp1 = a + b   ;
       assign tmp2 = c - d   ;
       assign e    = {{8{tmp1[7]}},tmp1} * {{8{tmp2[7]}},tmp2} ;

endmodule 
