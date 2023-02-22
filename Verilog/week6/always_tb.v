`timescale 1ns/100ps
`define T_CLK 20
module always_tb;
// ????? ?? ??? ??
reg clk, reset;
reg [2:0] din0;
reg [2:0] din1;
reg [1:0] sel;
wire [2:0] dout0;
wire [2:0] dout1;
wire [2:0] dout2;
wire [2:0] dout3;

// ??? ??
always_case u_always_case(
    .din0(din0),
    .din1(din1),
    .sel(sel),
    .dout(dout0),
    .clk(clk),
    .reset(reset));
    
always_if_else u_always_if_else(
	  .din0(din0),
    .din1(din1),
    .sel(sel),
    .dout(dout1),
    .clk(clk),
    .reset(reset));
    
    
h_always u_h_always(
    .din0(din0),
    .din1(din1),
    .sel(sel),
    .dout(dout2));

h_assign u_h_assign(
    .din0(din0),
    .din1(din1),
    .sel(sel),
    .dout(dout3));
    
initial begin
	din0 = 3'h2;
	din1 = 3'h1;
	sel = 2'h0;
	wait(reset==1'b1);
	#(10) sel = 2'h1;
	#(10) sel = 2'h2;
	#(10) sel = 2'h3;

	#(10);
	din0 = 3'h3;
	din1 = -3'h2;
	sel = 2'h0;
	wait(reset==1'b1);
	#(10) sel = 2'h1;
	#(10) sel = 2'h2;
	#(10) sel = 2'h3;
	#(10) $stop;
 end
 
// Clear ??? ?????
initial begin
     reset = 1'b0; 
    #(`T_CLK*2) reset = 1'b1; 
end

// 10 ?????? ?? ??
initial begin
     clk = 1'b1; 
end
always #(`T_CLK/2) clk = ~ clk;

// ????? ??
initial begin
 #(`T_CLK*200) $stop;
end

endmodule