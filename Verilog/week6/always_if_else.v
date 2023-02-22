module always_if_else(
    din0,
    din1,
    sel,
    dout_i,
    dout,
    clk,
    reset
    );

output [2:0]dout_i;
output [2:0]dout;
input [2:0]din0;
input [2:0]din1;  
input [1:0]sel;
input clk;
input reset;
    
reg [2:0]dout_i,dout;



always @(din0 or din1 or sel)
begin
  if(sel==2'h0)
    dout_i=din0+din1;
  else if(sel==2'h1)
    dout_i=din0+(~din1)+3'h1;
  else if(sel==2'h2)
    dout_i=din0&din1;
  else
    dout_i={1'b0,din0[2:1]};  
end

always @(posedge clk or negedge reset)
begin
 if (!reset)
   dout<=3'h0;
 else
   dout<=dout_i;
end

endmodule
