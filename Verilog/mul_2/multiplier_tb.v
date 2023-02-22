`timescale 1ns/1ps
`define T_CLK 10
module multiplier_tb;
  reg clk;
  reg n_rst;
  reg start;
  reg [3:0]multiplier_1;
  reg [3:0]multiplicand;
  wire valid;
  wire [7:0]product;
  wire [6:0]fnd_01;
  wire [6:0]fnd_02;

  
multiplier u_multiplier(
  .clk(clk),
  .n_rst(n_rst),
  .start(start),
  .multiplier_1(multiplier_1),
  .multiplicand(multiplicand),
  .valid(valid),
  .product(product),
  .fnd_01(fnd_01),
  .fnd_02(fnd_02));
  
   initial begin
	  clk = 1'b1;
	  n_rst = 1'b0;

	  #(`T_CLK*2.2) n_rst = 1'b1;
  end

  always #(`T_CLK/2) clk = ~clk;
  
  initial begin
    start=1'b0;
    multiplier_1=4'h0;
	  multiplicand=4'h0;
    wait(n_rst==1'b1);
    
    //5*9
    #(`T_CLK * 5) multiplier_1=4'h5;
	                multiplicand=4'h9;
    #(`T_CLK * 1) start = 1'b1;
                  
	  #(`T_CLK * 1) start = 1'b0;
	  
	  
	  //4*7
	  #(`T_CLK * 5) multiplier_1=4'h4;
	                multiplicand=4'h7;
	  #(`T_CLK * 1) start = 1'b1;
	  #(`T_CLK * 1) start = 1'b0;
	  
	  //2*8
	  #(`T_CLK * 5) multiplier_1=4'h2;
	                multiplicand=4'h8;
	  #(`T_CLK * 1) start = 1'b1;
	  #(`T_CLK * 1) start = 1'b0;
	  
	  	 //9*9
	  #(`T_CLK * 5) multiplier_1=4'h9;
	                multiplicand=4'h9;
	  #(`T_CLK * 1) start = 1'b1;
	  #(`T_CLK * 1) start = 1'b0;
	  
	  
    #(`T_CLK * 10) $stop;
  end
endmodule
  
  