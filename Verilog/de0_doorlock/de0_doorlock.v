module de0_doorlock(
  clock,
  reset,
  out_led_1,
  out_led_2,
  num,
  start,
  stop,
  fnd_on_0

  );
  
  
  `ifdef FPGA
  parameter P_ON=1'b0;
  parameter P_OFF=1'b1;
  `else
  parameter P_ON=1'b1;
  parameter P_OFF=1'b0;
  `endif
  
  input clock;
  input reset;
  input [9:0] num;
  input start;
  input stop;
  
  output out_led_1;  //led
  output out_led_2; 
  wire[3:0] bin2dec_dout_0;
  output[6:0] fnd_on_0;  //fnd
  
  reg [3:0]state;
  reg [3:0]next_state; 
  
  reg [9:0] d1;
  reg [9:0] d2;
  wire [9:0] button_on;
  
  reg start_d1;
  reg start_d2;
  reg stop_d1;
  reg stop_d2;
  wire start_on;
  wire stop_on;
 
  reg time_out;
  reg [26:0]count;
  
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
  
 
  always@(posedge clock or negedge reset)
  begin
    if(!reset) begin
      d1<=10'b00_0000_0000;
      d2<=10'b00_0000_0000;
     
		start_d1 <= P_OFF;
		start_d2 <= P_OFF;
		
		stop_d1 <= P_OFF;
		stop_d2 <= P_OFF;
		
		state<=START;
    end
    else begin
      d1<=num;
      d2<=d1;
		
		start_d1 <= start;
		start_d2 <= start_d1;
		
		stop_d1 <= stop;
		stop_d2 <= stop_d1;
		
      state<=next_state;
    end
  end

  
  assign button_on=((d1!=10'b00_0000_0000)&&(d2==10'b00_0000_0000))?d1:10'b00_0000_0000;
  
  assign start_on = ((start_d1 == P_ON)&&(start_d2 == P_OFF))? 1'b1 : 1'b0;

  assign stop_on = ((stop_d1 == P_ON)&&(stop_d2 == P_OFF))? 1'b1 : 1'b0;
  
  
  always@(start_on or stop_on or button_on or state or time_out)
  begin
    case(state)
      START:next_state=((start_on==P_ON)?S0:state);
      S0:begin
		   next_state=((button_on==10'b00_0000_0000)?state:
                     (button_on==10'b00_0010_0000)?S1:S2);
			end
      S1:begin
		   next_state=(button_on==10'b00_0000_0000)?state:S3;
			end
      S2:begin
		   next_state=(button_on==10'b00_0000_0000)?state:S4;
			end
      S3:begin
		   next_state=((button_on==10'b00_0000_0000)?state:
                     (button_on==10'b10_0000_0000)?S5:S6);
			end
      S4:begin
		   next_state=(button_on==10'b00_0000_0000)?state:S6;
			end
      S5:next_state=(stop_on==P_ON)?LED_1:state;
      S6:next_state=(stop_on==P_ON)?LED_2:state;
      LED_1:next_state=(time_out==1'b1)?START:state;
      LED_2:next_state=(time_out==1'b1)?START:state;
      default:next_state=START;
    endcase
  end

  assign out_led_1 = (state == LED_1)? 1'b1 : 1'b0; 
  assign out_led_2 = (state == LED_2)? 1'b1 : 1'b0;
  
  always@(posedge clock or negedge reset)
  begin
      if (!reset)
          count<=0;
		
      else if(state==LED_1 || state==LED_2)
      begin
          if(count<50000000)
          begin
              count<=count+1;
              time_out<=1'b0;
          end
		
          else 
          begin
              count<=0;
              time_out<=1'b1;
          end
      end
  
      else
      count<=0;
 
  end
  
  
  bin2dec bin2dec_0(
  .num_b(num),
  .num_h(bin2dec_dout_0)
  );
  
  fnd fnd_0(
  .number(bin2dec_dout_0),
  .fnd_on(fnd_on_0)
  );
  
endmodule