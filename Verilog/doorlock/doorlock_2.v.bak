module doorlock_2(
  clock,
  reset,
  out_led_1,
  out_led_2,
  num,
  x,
  button_on
  );
  
  input clock;
  input reset;
  input [9:0] num;
  input x;
  output out_led_1;
  output out_led_2;
  output [9:0]button_on;
  
  reg [9:0] d1;
  reg [9:0] d2;
  wire [9:0] button_on;
  
  parameter START=4'h0;
  parameter S0=4'h1;
  parameter S1=4'h2;
  parameter S2=4'h3;
  parameter S3=4'h4;
  parameter S4=4'h5;
  parameter S5=4'h6;
  parameter S6=4'h7;
  parameter LED_1=4'h8;
  parameter LED_2=4'h9;
  
  reg [3:0]state;
  reg [3:0]next_state;
  
  always@(posedge clock or negedge reset)
  begin
    if(!reset) begin
      d1<=10'b00_0000_0000;
      d2<=10'b00_0000_0000;
      state<=START;
    end
    else begin
      d1<=num;
      d2<=d1;
      state<=next_state;
    end
  end
  
  assign button_on=((d1!=10'b00_0000_0000)&&(d2==10'b00_0000_0000))?d1:10'b00_0000_0000;
  
  
  always@(x or button_on or state)
  begin
    case(state)
      START:next_state=((x==1'b1)?S0:state);
      S0:next_state=((button_on==10'b00_0000_0000)?state:
                      (button_on==10'b00_0010_0000)?S1:S2);
      S1:next_state=(button_on==10'b00_0000_0000)?state:S3;
      S2:next_state=(button_on==10'b00_0000_0000)?state:S4;
      S3:next_state=((button_on==10'b00_0000_0000)?state:
                     (button_on==10'b10_0000_0000)?S5:S6);
      S4:next_state=(button_on==10'b00_0000_0000)?state:S6;
      S5:next_state=((x==1)?LED_1:state);
      S6:next_state=((x==1)?LED_2:state);
      LED_1:next_state=START;
      LED_2:next_state=START;
      default:next_state=START;
    endcase
  end
  reg out_led_1_i;
  reg out_led_2_i;
  
  always@(state)
  begin
    case(state)
      LED_1:begin
           out_led_1_i=1'b1;
           out_led_2_i=1'b0;
         end
      LED_2:begin
           out_led_1_i=1'b0;
           out_led_2_i=1'b1;
         end
      default:
            begin
              out_led_1_i=1'b0;
              out_led_2_i=1'b0;
            end
    endcase
  end
  
  assign out_led_1=out_led_1_i;
  assign out_led_2=out_led_2_i;
  
endmodule