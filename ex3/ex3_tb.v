`timescale 1 ns/ 1ns

module testbench          ;
reg  [3:0]      a,     b,    c,    d,    e,  f;
reg          sel1, sel2,  sel3, sel4, sel5    ;
wire [3:0]      g                             ;

top_module ex3_instance(
               .a(a),
               .b(b),
               .c(c),
               .d(d),
               .e(e),
               .f(f),
               .sel1(sel1),
               .sel2(sel2),
               .sel3(sel3),
               .sel4(sel4),
               .sel5(sel5),
               .g(g)
);

initial                //Time =0
begin                
a       = 4'b0001;
b       = 4'b0010;
c       = 4'b0011;
d       = 4'b0100;
e       = 4'b0101;
f       = 4'b0110;
sel1    = 1'b1   ;
sel2    = 1'b1   ;
sel3    = 1'b1   ;
sel4    = 1'b1   ;
sel5    = 1'b1   ;
#10                    //Time = 10
sel1    = 1'b0   ;
sel2    = 1'b1   ;
sel3    = 1'b1   ;
sel4    = 1'b1   ;
sel5    = 1'b1   ;
#10                    //Time = 20
sel1    = 1'b0   ;
sel2    = 1'b1   ;
sel3    = 1'b0   ;
sel4    = 1'b1   ;
sel5    = 1'b1   ;
#10                    //Time = 30
sel1    = 1'b0   ;
sel2    = 1'b0   ;
sel3    = 1'b1   ;
sel4    = 1'b1   ;
sel5    = 1'b1   ;
#10                    //Time = 40
sel1    = 1'b0   ;
sel2    = 1'b0   ;
sel3    = 1'b0   ;
sel4    = 1'b0   ;
sel5    = 1'b0   ;


end
endmodule
