`define ctime 6
module testbench();


    reg start,clk,n_rst,rmx;
    reg [9:0] button;
    wire [1:0] LED_out;
    
    
    initial begin
        clk=1'b0;
    end
    always #(`ctime/2) clk=~clk;

    initial begin
        n_rst=1'b0;start=1'b0;rmx=1'b0;button=10'b0;
        #10 n_rst=1'b1;
        #(`ctime) start=1'b1;
        #(`ctime) button=10'b10_0000_0000;start=1'b0;
        #(`ctime) button=10'b10_0000_0000;
        #(`ctime) button=10'b10_0000_0000;
        #(`ctime) rmx=1'b1;
        #(`ctime) rmx=1'b0;
        
        #(`ctime*4) start=1'b1;
        #(`ctime) button=10'b10_0000_0000;start=1'b0;
        #(`ctime) button=10'b10_0000_0000;
        #(`ctime) button=10'b00_1000_0000;
        #(`ctime) rmx=1'b1;
        #(`ctime) rmx=1'b0;

        #(`ctime*4) start=1'b1;
        #(`ctime) button=10'b00_1000_0000;start=1'b0;
        #(`ctime) button=10'b10_0000_0000;
        #(`ctime) button=10'b00_1000_0000;
        #(`ctime) rmx=1'b1;
        #(`ctime) rmx=1'b0;

        #(`ctime) $stop;




    end

    password p1 (
    .start(start),
    .rmx(rmx),
    .clk(clk),
    .n_rst(n_rst),
    .button(button),
    .LED_out(LED_out)
);
endmodule