module hw_assign(
    din0,
    din1,
    sel,
    dout
    );

output [2:0]dout;
input [2:0]din0;
input [2:0]din1;  
input [1:0]sel;
  

assign dout=(sel==2'h0)?(din0+din1):
            (sel==2'h1)?(din0+((~din1)+3'h1)): 
             (sel==2'h2)?(din0&din1):
                                      {1'b0,din0[2:1]};
endmodule 
