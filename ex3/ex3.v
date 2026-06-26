module top_module(
        input  [3:0] a    ,b    ,c    ,d    , e   ,f ,
        input        sel1 ,sel2 ,sel3 ,sel4 ,sel5 ,
        output [3:0] g
);


       //看不懂
/*
        assign g = (sel1) ? a : 
                   (sel2) ?
                   (sel3) ? b : c :
                   (sel4) ? d :
                   (sel5) ? e : f;

*/

        assign g = sel1 ? a : (sel2 ? (sel3 ? b : c) : (sel4 ? d : (sel5 ? e : f)));


endmodule  
