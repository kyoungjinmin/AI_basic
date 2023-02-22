module hw_always_if_else(
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
  if(sel==2'h0)
    dout=din0+din1;
  else if(sel==2'h1)
    dout=din0+(~din1)+3'h1;
  else if(sel==2'h2)
    dout=din0&din1;
  else
    dout={1'b0,din0[2:1]};  
end

endmodule

