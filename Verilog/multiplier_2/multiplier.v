module multiplier(
clk,
n_rst,
start,
multiplier_1,//m1
multiplicand,//m2
valid,
product,
fnd_01,
fnd_02
);

input clk;
input n_rst;
input start;
input [3:0]multiplier_1;
input [3:0]multiplicand;
output valid;
output [7:0]product;
output [6:0]fnd_01;
output [6:0]fnd_02;

reg valid;
reg [7:0]product;

parameter S0=4'h0;
parameter S1=4'h1;
parameter S2=4'h2;
parameter S3=4'h3;
parameter S4=4'h4;
parameter S5=4'h5;

reg [3:0]state;
reg [3:0]next_state;
reg [7:0]product_i;

reg [3:0]m2;

reg start_d1;
reg start_d2;
wire start_on;

// start edge 디택팅 
always @(posedge clk or negedge n_rst)
begin
    if(!n_rst) begin
	start_d1 <= 1'b1;
	start_d2 <= 1'b1;
    end
    else begin
	    start_d1 <= start;
	    start_d2 <= start_d1;
    end
end
assign start_on = ((start_d1 != 1'b1)&&(start_d2 == 1'b1))? 1'b1 : 1'b0;


always @(posedge clk or negedge n_rst) begin
  if(!n_rst) begin
    state <=S0;
   end
  else
    state <= next_state;
end





always @(posedge clk or negedge n_rst)
begin
  if(!n_rst)
    begin
    product<=8'b00000000;
    valid<=1'b0;
	 m2<=4'b0;
	 product_i<=8'b0;
  end
  else
    begin
    if(state==S0)
	   begin 
		valid<=1'b0;
		m2<=multiplicand;
      product_i<={4'b0,multiplier_1};
		end
	 else if (state>=1 && state<=4)
	   begin
      product_i<=(product_i[0]==1)?{{1'b0,product_i[7:4]}+{1'b0,m2[3:0]},product_i[3:1]}:{1'b0,product_i[7:1]};
      valid<=1'b0;
		end
    else
	 begin
	   product<=product_i;
		valid<=1'b1;
		end
  end
end


always@(start_on or state)
begin
  case(state)
    S0:next_state=((start_on==1'b1)?S1:state);
    S1:next_state=S2;
    S2:next_state=S3;
    S3:next_state=S4;
    S4:next_state=S5;
    S5:next_state=S0;
    default:next_state=S0;
  endcase
end


fnd_encoder f0 (
    .number(multiplier_1),
    .fnd_on(fnd_01)
);

fnd_encoder f1(
    .number(multiplicand),
    .fnd_on(fnd_02)
);


endmodule