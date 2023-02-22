module password(
    start,
    rmx,
    clk,
    n_rst,
    button,
    LED_out
);

    input start,clk,n_rst,rmx;
    input [9:0] button;
    output reg [1:0] LED_out;
    reg [3:0]n_state,c_state;

    parameter S0 = 4'd0,
              S1 = 4'd1,
              S2 = 4'd2,
              S3 = 4'd3,
              S4 = 4'd4,
              S5 = 4'd5,
              S6 = 4'd6,
              S7 = 4'd7,
              S8 = 4'd8,
              S9 = 4'd9;
              //S10 = 4'd10;

              //S2 = 3'd2,
              //S2 = 3'd2,

    always @(posedge clk or negedge n_rst) 
    begin
        if(!n_rst)
        begin
           c_state<=S0;
        end   
        else 
        begin
           c_state<=n_state;
        end
    end


    always @(c_state or start or rmx)
    begin
        case(c_state)
        S0:n_state=(start==1'b1)?S1:S0;
        S1:n_state=(button==10'b10_0000_0000)?S2:S5;
        S2:n_state=S3;
        S3:n_state=(button==10'b10_0000_0000)?S4:S7;
        S4:n_state=(rmx==1'b1)?S8:S4;
        S5:n_state=S6;
        S6:n_state=S7;
        S7:n_state=(rmx==1'b1)?S9:S7;
        S8:n_state=S0;
        S9:n_state=S0;
        default : n_state=S0;
        endcase
    end

    always @ (c_state)
     begin
          case(c_state)
               S8:LED_out = 2'b01;
               S9:LED_out = 2'b10;
               default LED_out = 2'b0;
          endcase
     end

endmodule