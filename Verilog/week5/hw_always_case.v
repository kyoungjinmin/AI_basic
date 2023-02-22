module hw_always_case(
    din0,
    din1,
    sel,
    dout
    );

output [2:0]dout;
input [2:0]din0;
input [2:0]din1;  
input [1:0]sel;
    
reg [2:0]dout;

always @(din0 or din1 or sel)
 case(sel)
   2'h0:dout=din0+din1;
   2'h1:dout=din0+(~din1)+3'h1;
   2'h2:dout=din0&din1;
   2'h3:dout={1'b0,din0[2:1]};
   default:dout=3'h0;
 endcase

endmodule 
