module pencase_seq(color, coin, clock, n_rst,start);
  output [1:0] color;
  reg [1:0] color;
  input coin;
  input clock, n_rst;
  input start;
  
  parameter RED = 2'b01,
            BLUE = 2'b10;
            
  parameter START=4'd0, 
            COIN0=4'd1,
            COIN1=4'd2,
            COIN00=4'd3,
            COIN01=4'd4,
            COIN10=4'd5,
            COIN11=4'd6,
            COIN_RED=4'd7,
            COIN_BLUE=4'd8;
            
  reg [3:0]state;
  reg[3:0]next_state;

  always @(posedge clock or negedge n_rst or posedge start)
  if(!n_rst)
    state<=START;
  else if(start)
    state<=START;
  else
    state<=next_state;
    
  always@(state or coin)begin 
  case(state)
    START: next_state=(coin==1'b0)?COIN0:COIN1;
    COIN0: next_state=(coin==1'b0)?COIN00:COIN01;
    COIN1: next_state=(coin==1'b0)?COIN10:COIN11;
    COIN00: next_state=(coin==1'b0)?START:COIN_RED;
    COIN01: next_state=(coin==1'b0)?START:COIN_BLUE;
    COIN10: next_state=(coin==1'b0)?COIN_BLUE:START;
    COIN11: next_state=(coin==1'b0)?COIN_RED:START;
    COIN_RED: next_state=(coin==1'b0)?COIN0:COIN1;
    COIN_BLUE: next_state=(coin==1'b0)?COIN0:COIN1;
    default:next_state=START;
  endcase
  end
  
  always @(state)
  begin
    case(state)
      COIN_RED: color=RED;
      COIN_BLUE: color=BLUE;
      default: color=2'b00;
    endcase
  end
endmodule