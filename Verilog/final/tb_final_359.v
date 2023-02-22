
`timescale 100ms/1ms

`define T_CLK 10
module tb_final_359 ;

reg clk;
reg n_rst;
reg [1:0] b_2_1;
reg b_star;

wire lock;
wire open;
wire led_red;
wire led_green;

initial begin
	clk = 1'b1;
	n_rst = 1'b0;
	#(`T_CLK*2.2) n_rst = 1'b1;
end

always #(`T_CLK/2) clk = ~clk;

initial begin
	b_2_1 = 2'b00;
	b_star = 1'b0;

	wait (n_rst == 1'b1);

	// first 
	b_2_1 = 2'b01; // 1
	#(`T_CLK) b_2_1 = 2'b00;

	#(`T_CLK*2) b_2_1 = 2'b10; //2
	#(`T_CLK) b_2_1 = 2'b00;

	//wait (lock == 1'b1);

	#(`T_CLK*5) b_2_1 = 2'b01; //1
	#(`T_CLK) b_2_1 = 2'b00; 

	#(`T_CLK*2) b_2_1 = 2'b10; //2
	#(`T_CLK) b_2_1 = 2'b00;

	#(`T_CLK*2) b_star = 1'b1;
	#(`T_CLK) b_star = 1'b0;

	//wait (open == 1'b1);
	
	#(`T_CLK*2) b_2_1 = 2'b10; //2
	#(`T_CLK) b_2_1 = 2'b00;

	#(`T_CLK*2) b_2_1 = 2'b10; //2
	#(`T_CLK) b_2_1 = 2'b00;
	
	//wait (lock == 1'b1);

	#(`T_CLK*5) b_2_1 = 2'b01; //1
	#(`T_CLK) b_2_1 = 2'b00; 

	#(`T_CLK*2) b_2_1 = 2'b10; //2
	#(`T_CLK) b_2_1 = 2'b00;

	#(`T_CLK*2) b_star = 1'b1;
	#(`T_CLK) b_star = 1'b0;

	#(`T_CLK*5) b_2_1 = 2'b10; //2
	#(`T_CLK) b_2_1 = 2'b00; 

	#(`T_CLK*2) b_2_1 = 2'b10; //2
	#(`T_CLK) b_2_1 = 2'b00;

	#(`T_CLK*2) b_star = 1'b1;
	#(`T_CLK) b_star = 1'b0;

	//wait (open == 1'b1);
	
	#(`T_CLK*3) $stop;

end

final_359 u_final_359 (
 .clk(clk),
 .n_rst(n_rst),
 .button_2_1(b_2_1),
 .button_star(b_star),
 .lock(lock),
 .open(open),
 .led_red(led_red),
 .led_green(led_green) 
); 



endmodule

