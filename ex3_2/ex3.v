module top_module(
        input      [3:0] a    ,b    ,c    ,d    , e   ,f ,
        input            sel1 ,sel2 ,sel3 ,sel4 ,sel5 ,
        output reg [3:0] g
);


       //看不懂
/*
        assign g = (sel1) ? a : 
                   (sel2) ?
                   (sel3) ? b : c :
                   (sel4) ? d :
                   (sel5) ? e : f;

*/

//        assign g = sel1 ? a : (sel2 ? (sel3 ? b : c) : (sel4 ? d : (sel5 ? e : f)));

        always @(*) begin
               if (sel1)     begin
                   g = a                                                            ;
               end
               else          begin
                   if (sel2)      begin  
                         if (sel3)      begin
                             g = b                                                  ;
                         end
                         else           begin
                             g = c                                                  ;
                         end
                   end
                   else           begin
                         if (sel4)     begin
                             g = d                                                  ;
                         end
                         else          begin
                              if (sel5)     begin
                                  g = e                                             ;  
                              end
                              else          begin
                                  g = f                                             ; 
                              end
                         end 
                   end
               end
        end


endmodule  
