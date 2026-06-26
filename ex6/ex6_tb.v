`timescale 1 ns / 1 ns

module testbench;
reg  [7:0]  a  ,b  ,c  ,d;
wire [15:0]  e           ;

top_module ex6_instance(
              .a(a),
              .b(b),
              .c(c),
              .d(d),
              .e(e)
);

initial
begin         //Time = 0
a = 8'h22 ;
b = 8'h33 ;
c = 8'h11 ;
d = 8'h55 ;
end
endmodule
