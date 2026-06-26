`timescale 1 ns/1 ns

module testbench                    ;
reg  [7:0]   a, b, c, d, e, f, g, h ;
reg  [2:0] sel                      ;
wire [7:0]   z                      ;

top_module ex4_instance(
               .a(a),
               .b(b),
               .c(c),
               .d(d),
               .e(e),
               .f(f),
               .g(g),
               .h(h),
               .sel(sel),
               .z(z)
);

initial
begin               //Time = 0
a = 8'b0000_0001;
b = 8'b0000_0010;
c = 8'b0000_0100;
d = 8'b0000_1000;
e = 8'b0001_0000;
f = 8'b0010_0000;
g = 8'b0100_0000;
h = 8'b1000_0000;
sel = 3'b000    ;
#10                 //Time = 10
sel = 3'b001    ;
#10                 //Time = 20
sel = 3'b010    ;
#10                 //Time = 30
sel = 3'b011    ;
#10                 //Time = 40
sel = 3'b100    ;   
#10                 //Time = 50
sel = 3'b101    ;
#10                 //Time = 60
sel = 3'b110    ;
#10                 //Time = 70
sel = 3'b111    ;

end
endmodule
