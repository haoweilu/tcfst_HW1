module top_module(
        input   [2:0]    a,
        output  [1:0]    g
 );

        assign g[1] = (~a[2]&a[1]&~a[0])^(~a[2]&a[1]&a[0])^(a[2]&~a[1]&~a[0]);
        assign g[0] = (a[2]&~a[1]&~a[0])^(a[2]&~a[1]&a[0])^(a[2]&a[1]&~a[0]);

endmodule

