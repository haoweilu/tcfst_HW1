`timescale 1 ns/ 1 ns

module testbench();
reg  [2:0]  a;
wire [1:0]  g;

top_module ex4_instance(
              .a(a),
              .g(g)
);

initial
begin                  //Time = 0
a = 3'b000;
#10                    //Time = 10
a = 3'b001;
#10                    //Time = 20
a = 3'b010;            
#10                    //Time = 30
a = 3'b011;    
#10
a = 3'b100;            //Time = 40
#10
a = 3'b101;            //Time = 50
#10
a = 3'b110;            //Time = 60
#10
a = 3'b111;            

end
endmodule
