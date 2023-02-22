
`timescale 1ns/1ps
`define T_CLK 10

module practice_tb;
  
  reg [9:0]num;
  reg clock;
  reg reset;
  wire button_on;
  
  practice u_practice(
    .clock(clock),
    .reset(reset),
    .num(num),
    .button_on(button_on)
  );
  
  initial begin
	  clock = 1'b1;
	  reset = 1'b0;

	  #(`T_CLK*2.2) reset = 1'b1;
  end

  always #(`T_CLK/2) clock = ~clock;
  
  initial begin
    num=10'b00_0000_0000;
    wait(reset==1'b1);
    
    //529 TRUE
	  #(`T_CLK * 5) num[5]=1'b1;
	  #(`T_CLK * 5) num[5]=1'b0;
	  #(`T_CLK * 5) num[2]=1'b1;
	  #(`T_CLK * 5) num[2]=1'b0;
	  #(`T_CLK * 5) num[9]=1'b1;
	  #(`T_CLK * 5) num[9]=1'b0;
	  #(`T_CLK * 5) 
		//579 TRUE		            
	  #(`T_CLK * 5) num[5]=1'b1;
	  #(`T_CLK * 5) num[5]=1'b0;
	  #(`T_CLK * 5) num[7]=1'b1;
	  #(`T_CLK * 5) num[7]=1'b0;
	  #(`T_CLK * 5) num[9]=1'b1;
	  #(`T_CLK * 5) num[9]=1'b0;
	  #(`T_CLK * 5);
 
		//349 FALSE		          		                         
    #(`T_CLK * 5) num[3]=1'b1;
	  #(`T_CLK * 5) num[3]=1'b0;
  	 #(`T_CLK * 5) num[4]=1'b1;
	  #(`T_CLK * 5) num[4]=1'b0;
	  #(`T_CLK * 5) num[9]=1'b1;
	  #(`T_CLK * 5) num[9]=1'b0;
	  #(`T_CLK * 5)
	  
	  //516 FALSE
	  #(`T_CLK * 5) num[5]=1'b1;
	  #(`T_CLK * 5) num[5]=1'b0;
	  #(`T_CLK * 5) num[1]=1'b1;
	  #(`T_CLK * 5) num[1]=1'b0;
	  #(`T_CLK * 5) num[6]=1'b1;
	  #(`T_CLK * 5) num[6]=1'b0;
	  #(`T_CLK * 5) 
    #(`T_CLK * 5) $stop;
  end
endmodule