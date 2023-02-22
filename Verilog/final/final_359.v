module final_359 (
 clk, // ??
 n_rst, // ??
 button_2_1, // ?? 2 ? ??? ?? 1 ? ??. ?? ?? 1 ? ??? ???? 2?b01 ? ???
 button_star, // ?? ??
 lock, // 4 ? ???? lock ? ? ?? ?? 1 ? ?? ?? ??
 open, // 6 ? ???? open ? ? ?? ?? 1 ? ?? ?? ??
 led_red, // ??? ??, led_red ? 1 ? ? ?? ??
 led_green // ?? ??, led_green ? 1 ? ? ?? ??
); 

input clk;
input n_rst;
input [1:0]button_2_1;
input button_star;

output lock;
output open;
output led_red;
output led_green;

reg lock;
reg open;
reg led_red;
reg led_green;

reg state;
reg n_state;

reg [3:0]b;//?? ??? ? ??
reg [3:0]b_1;//?? ?? ? ??



parameter START=4'h0;
parameter S0=4'h1;
parameter S1=4'h2;
parameter S2=4'h3;
parameter S3=4'h4;
parameter S4=4'h5;
parameter S5=4'h6;


always @(posedge clk or negedge n_rst) begin
  if(!n_rst) begin
    state <=START;
   end
  else begin
    state <= n_state;
  end
end


always @(state or button_2_1 or button_star or b_1 or b)
begin
  case(state)
    START:n_state=((button_2_1==2'b01||button_2_1==2'b10)?S0:state);
    S0:n_state=((button_2_1==2'b01||button_2_1==2'b10)?S1:state);
    S1:n_state=S2;
    S2:n_state=((button_2_1==2'b01||button_2_1==2'b10)?S3:state);
    S3:n_state=((button_2_1==2'b01||button_2_1==2'b10)?S4:state);
    S4:n_state=((button_star==1'b1)?S5:state);
    S5:n_state=((b==b_1)?START:S2);
    default:n_state=START;
  endcase
end

always@(state)
begin
  case(state)
    START:begin
      open=1'b1;
      lock=1'b0;
      led_red=1'b1;
       led_green=1'b0;
      b[3:2]=button_2_1;
        end
    S0:begin
      open=1'b1;
      lock=1'b0;
      led_red=1'b1;
       led_green=1'b0;
       b[3:0]=button_2_1;
     end
               
    S1:begin
      open=1'b0;
       lock=1'b1;
       led_red=1'b0;
       led_green=1'b1;
     end
    S2:begin
      open=1'b0;
       b_1[3:2]=button_2_1;
       led_red=1'b0;
       led_green=1'b1;
      lock=1'b1;
    end
    S3:begin
      open=1'b0;
       b_1[3:0]=button_2_1;
       led_red=1'b0;
       led_green=1'b1;
       lock=1'b1;
     end
    S4:begin
       lock=1'b1;
       led_red=1'b0;
       led_green=1'b1;
       open=1'b0;
     end
    S5:begin
       open=1'b1;
       led_red=1'b1;
       led_green=1'b0;
       lock=1'b0;
     end
     default:begin
     open=1'b0;
     led_red=1'b0;
       led_green=1'b0;
     lock=1'b0;
   end
   endcase
 end


endmodule
