`timescale 1ns/1ps
`define T_CLK 10
module multiplier_tb;
  reg clk;
  reg n_rst;
  reg start;
  reg [3:0]m1;
  reg [3:0]m2;
  wire [7:0]a_product;
  wire [7:0]c_product;
  
array_multiplier u_array_multiplier(
  .clk(clk),
  .n_rst(n_rst),
  .start(start),
  .m1(m1),//4-bit Multipier
  .m2(m2), //4-bit Multiplicand
  .product(a_product) //8-bit product
  );
  
carry_save_multiplier u_carry_save_multiplier(
  .clk(clk),
  .n_rst(n_rst),
  .start(start),
  .m1(m1),//4-bit Multipier
  .m2(m2), //4-bit Multiplicand
  .product(c_product) //8-bit product
  );
  
   initial begin
	  clk = 1'b1;
	  n_rst = 1'b0;

	  #(`T_CLK*2.2) n_rst = 1'b1;
  end

  always #(`T_CLK/2) clk = ~clk;
  
  initial begin
    start=1'b0;
    m1=4'h0;
	  m2=4'h0;
    wait(n_rst==1'b1);
    
    //5*9
    #(`T_CLK * 5) m1=4'h5;
	                m2=4'h9;
    #(`T_CLK * 1) start = 1'b1;
                  
	  #(`T_CLK * 1) start = 1'b0;
	  
	  
	  //4*7
	  #(`T_CLK * 5) m1=4'h4;
	                m2=4'h7;
	  #(`T_CLK * 1) start = 1'b1;
	  #(`T_CLK * 1) start = 1'b0;
	  
	  //2*8
	  #(`T_CLK * 5) m1=4'h2;
	                m2=4'h8;
	  #(`T_CLK * 1) start = 1'b1;
	  #(`T_CLK * 1) start = 1'b0;
	  
	  	 //9*9
	  #(`T_CLK * 5) m1=4'h9;
	                m2=4'h9;
	  #(`T_CLK * 1) start = 1'b1;
	  #(`T_CLK * 1) start = 1'b0;
	  
	  
    #(`T_CLK * 5) $stop;
  end
endmodule
  
  