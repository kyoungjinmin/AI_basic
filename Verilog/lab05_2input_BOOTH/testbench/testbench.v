
module testbench();
    reg [3:0] Q;
    reg [3:0] m;
    reg clk, rst; 
    wire [7:0] rslt;
    BOOTH bm(clk, rst, Q, m, rslt);
    always #10 clk = ~clk;
    initial begin
        clk = 1'b0; rst = 1'b0; Q = -32'h9; m = 32'h7;
        #7 rst = 1'b1;
        #1000 $stop;
    end

endmodule