module top_module(
        input    [7:0]    a   ,  b   ,
        output            out1,  out2, 
        output   [7:0]    out3
);

        assign   out1 = ~&  a      ;
        assign   out2 = ~&  b      ;
        assign   out3 = ~(a & b)   ;

endmodule
