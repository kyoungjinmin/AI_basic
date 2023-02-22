
`timescale 1ns/1ps
`define T_CLK 10

module doorlock_2_tb;
  
  reg [9:0]num;
  reg clock;
  reg reset;
  reg x;
  wire out_led_1;
  wire out_led_2;
  wire [9:0]button_on;
  
  doorlock_2 u_doorlock_2(
    .clock(clock),
    .reset(reset),
    .out_led_1(out_led_1),
    .out_led_2(out_led_2),
    .num(num),
    .x(x),
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
    x=1'b0;
    wait(reset==1'b1);
    
    //529 TRUE
    #(`T_CLK * 5) x = 1'b1;
	  #(`T_CLK * 1) x = 1'b0;
	  #(`T_CLK * 5) num[5]=1'b1;
	  #(`T_CLK * 5) num[5]=1'b0;
	  #(`T_CLK * 5) num[2]=1'b1;
	  #(`T_CLK * 5) num[2]=1'b0;
	  #(`T_CLK * 5) num[9]=1'b1;
	  #(`T_CLK * 5) num[9]=1'b0;
	  #(`T_CLK * 5) x = 1'b1;
	  #(`T_CLK * 1) x = 1'b0;
	                if (out_led_1 == 1'b1) $display("LED_1 : on");
				          else if(out_led_2 ==1'b1)	$display("LED_2 : on");
				          else $display("Fail");

		//579 TRUE		            
	  #(`T_CLK * 5) x = 1'b1;
	  #(`T_CLK * 1) x = 1'b0;
	  #(`T_CLK * 5) num[5]=1'b1;
	  #(`T_CLK * 5) num[5]=1'b0;
	  #(`T_CLK * 5) num[7]=1'b1;
	  #(`T_CLK * 5) num[7]=1'b0;
	  #(`T_CLK * 5) num[9]=1'b1;
	  #(`T_CLK * 5) num[9]=1'b0;
	  #(`T_CLK * 5) x = 1'b1;
	  #(`T_CLK * 1) x = 1'b0;
	                if (out_led_1 == 1'b1) $display("LED_1 : on");
				          else if(out_led_2 ==1'b1)	$display("LED_2 : on");
				          else $display("Fail");
 
		//349 FALSE		          		                         
    #(`T_CLK * 5) x = 1'b1;
	  #(`T_CLK * 1) x = 1'b0;
	  #(`T_CLK * 5) num[3]=1'b1;
	  #(`T_CLK * 5) num[3]=1'b0;
	  #(`T_CLK * 5) num[4]=1'b1;
	  #(`T_CLK * 5) num[4]=1'b0;
	  #(`T_CLK * 5) num[9]=1'b1;
	  #(`T_CLK * 5) num[9]=1'b0;
	  #(`T_CLK * 5) x = 1'b1;
	  #(`T_CLK * 1) x = 1'b0;
	                if (out_led_1 == 1'b1) $display("LED_1 : on");
				          else if(out_led_2 ==1'b1)	$display("LED_2 : on");
				          else $display("Fail");

	  //516 FALSE
	  #(`T_CLK * 5) x = 1'b1;
	  #(`T_CLK * 1) x = 1'b0;
	  #(`T_CLK * 5) num[5]=1'b1;
	  #(`T_CLK * 5) num[5]=1'b0;
	  #(`T_CLK * 5) num[1]=1'b1;
	  #(`T_CLK * 5) num[1]=1'b0;
	  #(`T_CLK * 5) num[6]=1'b1;
	  #(`T_CLK * 5) num[6]=1'b0;
	  #(`T_CLK * 5) x = 1'b1;
	  #(`T_CLK * 1) x = 1'b0;
	                if (out_led_1 == 1'b1) $display("LED_1 : on");
				          else if(out_led_2 ==1'b1)	$display("LED_2 : on");
				          else $display("Fail");
    #(`T_CLK * 5) $stop;
  end
endmodule