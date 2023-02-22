module de0_led_slider (
	din,
	dout,
	fnd_on_0,
	fnd_on_1
);

input [3:0] din;  // Slider

output [7:0] dout;  // LED
output[6:0] fnd_on_0;
output[6:0] fnd_on_1;

assign dout[3:0] = din;
assign dout[7:4] = ~din;


fnd fnd_0(
.number(dout[3:0]),
.fnd_on(fnd_on_0)
);

fnd fnd_1(
.number(dout[7:4]),
.fnd_on(fnd_on_1)
);

endmodule