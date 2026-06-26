`timescale 1 ns/1 ns

module testbench             ;
reg  [7:0]  a   , b          ;
wire        out1, out2       ;
wire [7:0]  out3             ;

top_module ex2_instance(
              .a(a),
              .b(b),
              .out1(out1),
              .out2(out2),
              .out3(out3)
);

initial 
begin
a      = 8'b0000_0000;     //Time = 0
b      = 8'b1111_1111;
#20;                       //Time = 20
a      = 8'b0000_0001;
b      = 8'b0000_0010;
#20;                       //Time = 40
a      = 8'b0001_0000;
b      = 8'b0010_0000;
#20                        //Time = 60
a      = 8'b1111_1111;
b      = 8'b0000_0000;

end
endmodule

