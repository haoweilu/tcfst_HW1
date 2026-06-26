`timescale 1 ns/1 ns

module testbench();
reg [7:0] a, b, c, d;
wire [15:0]  e      ;

ex7 ex7_instance(
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .e(e)
);

initial
begin       //Time = 0
a = 8'b1111_0000    ;
b = 8'b0011_0010    ;
c = 8'b1110_0010    ;
d = 8'b1111_1011    ;
end
endmodule
