
`timescale 1ns/1ps
`define T_CLK 10

module doorlock_tb;
  
  reg [9:0]num;
  reg clock;
  reg reset;
  reg x;
  wire out_led_1;
  wire out_led_2;
  
  doorlock u_doorlock(
    .num(num),
    .clock(clock),
    .reset(reset),
    .x(x),
    .out_led_1(out_led_1),
    .out_led_2(out_led_2)
  );
  
  initial begin
	  clock = 1'b1;
	  reset = 1'b0;

	  #(`T_CLK*2.2) reset = 1'b1;
  end

  always #(`T_CLK/2) clock = ~clock;
  
  initial begin
    num=10'b00_0000_0000;
    x=1'b0;
    wait(reset==1'b1);
    
    //529 TRUE
    #(`T_CLK * 1) x = 1'b1;
	  #(`T_CLK * 1) x = 1'b0;
	                num[5]=1'b1;
	  #(`T_CLK * 1) num[5]=1'b0;
	                num[2]=1'b1;
	  #(`T_CLK * 1) num[2]=1'b0;
	                num[9]=1'b1;
	  #(`T_CLK * 1) num[9]=1'b0;
	                x = 1'b1;
	  #(`T_CLK * 1) x = 1'b0;
	                if (out_led_1 == 1'b1) $display("LED_1 : on");
				          else if(out_led_2 ==1'b1)	$display("LED_2 : on");
				          else $display("Fail");

		//579 TRUE		            
	  #(`T_CLK * 1) x = 1'b1;
	  #(`T_CLK * 1) x = 1'b0;
	                num[5]=1'b1;
	  #(`T_CLK * 1) num[5]=1'b0;
	                num[7]=1'b1;
	  #(`T_CLK * 1) num[7]=1'b0;
	                num[9]=1'b1;
	  #(`T_CLK * 1) num[9]=1'b0;
	                x = 1'b1;
	  #(`T_CLK * 1) x = 1'b0;
	                if (out_led_1 == 1'b1) $display("LED_1 : on");
				          else if(out_led_2 ==1'b1)	$display("LED_2 : on");
				          else $display("Fail");
 
		//349 FALSE		          		                         
    #(`T_CLK * 1) x = 1'b1;
	  #(`T_CLK * 1) x = 1'b0;
	                num[3]=1'b1;
	  #(`T_CLK * 1) num[3]=1'b0;
	                num[4]=1'b1;
	  #(`T_CLK * 1) num[4]=1'b0;
	                num[9]=1'b1;
	  #(`T_CLK * 1) num[9]=1'b0;
	                x = 1'b1;
	  #(`T_CLK * 1) x = 1'b0;
	                if (out_led_1 == 1'b1) $display("LED_1 : on");
				          else if(out_led_2 ==1'b1)	$display("LED_2 : on");
				          else $display("Fail");

	  //516 FALSE
	  #(`T_CLK * 1) x = 1'b1;
	  #(`T_CLK * 1) x = 1'b0;
	                num[5]=1'b1;
	  #(`T_CLK * 1) num[5]=1'b0;
	                num[1]=1'b1;
	  #(`T_CLK * 1) num[1]=1'b0;
	                num[6]=1'b1;
	  #(`T_CLK * 1) num[6]=1'b0;
	                x = 1'b1;
	  #(`T_CLK * 1) x = 1'b0;
	                if (out_led_1 == 1'b1) $display("LED_1 : on");
				          else if(out_led_2 ==1'b1)	$display("LED_2 : on");
				          else $display("Fail");
    #(`T_CLK * 2) $stop;
  end
endmodule