`timescale 1ns/100ps

module tb_hw;

reg [2:0] din0;
reg [2:0] din1;
reg [1:0] sel;

wire [2:0] dout;
wire [2:0] dout2;
wire [2:0] dout3;
wire [2:0] dout4;

initial begin
	din0 = 3'h2;
	din1 = 3'h1;
	sel = 2'h0;
	#(10) sel = 2'h1;
	#(10) sel = 2'h2;
	#(10) sel = 2'h3;

	#(10);
	din0 = 3'h3;
	din1 = -3'h2;
	sel = 2'h0;
	#(10) sel = 2'h1;
	#(10) sel = 2'h2;
	#(10) sel = 2'h3;
	#(10);
 end

 hw_assign u_hw_assign(
	  .din0(din0),
    .din1(din1),
    .sel(sel),
    .dout(dout)
    );
 hw_always u_hw_always(
	  .din0(din0),
    .din1(din1),
    .sel(sel),
    .dout(dout2)
    );
 hw_always_if_else u_hw_always_if_else(
	  .din0(din0),
    .din1(din1),
    .sel(sel),
    .dout(dout3)
    );
 hw_always_case u_hw_always_case(
	  .din0(din0),
    .din1(din1),
    .sel(sel),
    .dout(dout4)
    );

endmodule