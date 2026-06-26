module top_module(
        input      [7:0]    a,  b,  c,  d,  e,  f,  g,  h,
        input      [2:0]  sel,
        output reg [7:0]    z
);

        always @(*) begin
                         case(sel)
                                    3'b000 : z = a;
                                    3'b001 : z = b;
                                    3'b010 : z = c;
                                    3'b011 : z = d;
                                    3'b100 : z = e;
                                    3'b101 : z = f;
                                    3'b110 : z = g;
                                    3'b111 : z = h;
                         endcase
        end

endmodule
