module ex8(
       input      [7:0] a,
       input      [1:0] sel,
       output reg [7:0] b
);
      wire [7:0] tmp1, tmp2, tmp3, tmp4;

      assign tmp1 = {a[4:0],a[7:5]};
      assign tmp2 = {a[3:0],a[7:4]}; 
      assign tmp3 = {a[4:0],3'b000};
      assign tmp4 = {2'b00,a[7:2]};


      always @(*)begin
             case(sel)
                       2'b00: b = tmp1;
                       2'b01: b = tmp2;
                       2'b10: b = tmp3;
                       2'b11: b = tmp4;
             endcase
      end

endmodule
