`timescale 1ns/1ps

`define T_CLK 10
module pencase_seq_tb;

  reg clk;        // reg? wire?
  reg n_rst;    // reg? wire?
  reg coin; // reg? wire?
  reg start;

  wire [1:0]color;

initial begin
   clk = 1'b1;
   n_rst = 1'b0;
   
   #(`T_CLK*2.2) n_rst = 1'b1;
end


always #(`T_CLK/2) clk = ~clk;

initial begin
   start = 1'b0;
   wait(n_rst == 1'b1);
   #(`T_CLK * 0.7);
   #(`T_CLK * 1) start = 1'b1;
   #(`T_CLK * 1) start = 1'b0;
   #(`T_CLK * 6) start = 1'b1;
   #(`T_CLK * 1) start = 1'b0;
   #(`T_CLK * 6) start = 1'b1;
   #(`T_CLK * 1) start = 1'b0;
   #(`T_CLK * 6) start = 1'b1;
   #(`T_CLK * 1) start = 1'b0;
   #(`T_CLK * 6) start = 1'b1;
   #(`T_CLK * 1) start = 1'b0;
   #(`T_CLK * 7) $stop;
end

initial begin
   coin = 1'b0;
   wait(n_rst == 1'b1);
   #(`T_CLK * 0.6);
   #(`T_CLK * 4) coin = 1'b1;
   #(`T_CLK * 4.5) coin = 1'b0;
   #(`T_CLK * 1) coin = 1'b1;
   #(`T_CLK * 6) coin = 1'b0;
   #(`T_CLK * 1) coin = 1'b1;
   #(`T_CLK * 1) coin = 1'b0;
   #(`T_CLK * 5) coin = 1'b1;
   #(`T_CLK * 1) coin = 1'b0;
   #(`T_CLK * 1) coin = 1'b1;
   #(`T_CLK * 7) coin = 1'b0;
   #(`T_CLK * 6) $stop;
end

pencase_seq u_pencase_seq(

    .color(color),
    .clock(clk),
    .n_rst(n_rst),
    .start(start),
    .coin(coin)
);

endmodule