module h_always(
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
begin
 dout=(sel==2'h0)?(din0+din1):
           (sel==2'h1)?(din0+((~din1)+3'h1)):
           (sel==2'h2)?(din0&din1):
                                    {1'b0,din0[2:1]};
                                  end
endmodule 
