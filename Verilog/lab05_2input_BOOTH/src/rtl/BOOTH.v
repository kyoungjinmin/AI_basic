`timescale 1ns/1ps

module BOOTH (
  clk,
  rst,
  m,
  Q,
  rslt
);

  input clk;
  input rst;
  input [3:0]m;
  input [3:0]Q;
  output [7:0]rslt;

  reg [3:0]q;

  reg [3:0]a;
  reg [3:0]a_1;
  wire [3:0]a_2;

  reg q1;
  wire q1_1;

  wire [3:0]q_1;

  reg [3:0]cnt;

  reg [7:0]rslt_1;

  always@(posedge clk or negedge rst)
  begin
    if(!rst)begin
      a<=4'b0;
      q1<=1'b0;
      cnt<=4'h0;
      rslt_1<=8'b0;
      q<=Q;
    end
    else begin
      if(cnt!=4'h4)begin
        a<=a_2;
        q1<=q1_1;
        q<=q_1;
        cnt<=cnt + 4'h1;
      end
    end
  end
  
  always@(*)
  begin
    a_1=({q[0],q1}==2'b10 && cnt < 4)?a+(~m +1'b1):
         ({q[0],q1}==2'b01 && cnt < 4)?a+m:a;
  end

  assign a_2={a_1[3],a_1[3:1]};
  assign q1_1=q[0];
  assign q_1={a_1[0],q[3:1]};

  assign rslt={a[3:0],q[3:0]};

endmodule