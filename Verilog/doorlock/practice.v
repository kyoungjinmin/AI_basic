
module practice(
  clock,
  reset,
  num,
  button_on
  );
  
  input clock;
  input reset;
  input [9:0] num;
  output [9:0] button_on;

  
  reg [9:0] d1;
  reg [9:0] d2;
  wire [9:0] button_on;
  
   always@(posedge clock or negedge reset)
  begin
    if(!reset) begin
      d1<=10'b00_0000_0000;
      d2<=10'b00_0000_0000;
    end
    else begin
      d1<=num;
      d2<=d1;

    end
  end
  
  assign button_on=((d1!=10'b00_0000_0000)&&(d2==10'b00_0000_0000))?d1:10'b00_0000_0000;
  
endmodule