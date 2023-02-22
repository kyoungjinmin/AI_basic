module multiplier_c(
  clk,
  n_rst,
  start,
  m1,//4-bit Multipier
  m2, //4-bit Multiplicand
  product //8-bit product
  );
  
  input clk;
  input n_rst;
  input start;
  input [3:0] m1;
  input [3:0] m2;
  output [7:0] product;
  
  reg [7:0]product;
  
  reg [3:0]m1_d;
  reg [3:0]m2_d;
  wire [7:0]product_i;
  
  wire [15:0]m1m2; //(m1*m2)
  wire [16:0]c;
  wire [9:0]s;

  always @(posedge clk or negedge n_rst)  
  begin
    if(!n_rst) begin
      m1_d<=4'h0;
      m2_d<=4'h0;
      product<=8'h0;
    end
      
    else begin
      if (start==1)begin
        m1_d<=m1;
        m2_d<=m2;
      end
      product<=product_i;
    end
  end
  
  assign m1m2[0]=m1_d[0]&m2_d[0];
  assign m1m2[1]=m1_d[0]&m2_d[1];
  assign m1m2[2]=m1_d[1]&m2_d[0];
  assign m1m2[3]=m1_d[1]&m2_d[1];
  assign m1m2[4]=m1_d[2]&m2_d[0];
  assign m1m2[5]=m1_d[0]&m2_d[2];
  assign m1m2[6]=m1_d[2]&m2_d[1];
  assign m1m2[7]=m1_d[3]&m2_d[0];
  assign m1m2[8]=m1_d[1]&m2_d[2];
  assign m1m2[9]=m1_d[0]&m2_d[3];
  assign m1m2[10]=m1_d[3]&m2_d[1];
  assign m1m2[11]=m1_d[2]&m2_d[2];
  assign m1m2[12]=m1_d[1]&m2_d[3];
  assign m1m2[13]=m1_d[3]&m2_d[2];
  assign m1m2[14]=m1_d[2]&m2_d[3];
  assign m1m2[15]=m1_d[3]&m2_d[3];
  
  assign product_i[0]=m1m2[0];
  
  half_adder c_half_adder_0(
  .sum(product_i[1]),
  .c_out(c[0]),
  .a(m1m2[1]),
  .b(m1m2[2])
  );
  
  half_adder c_half_adder_1(
  .sum(s[0]),
  .c_out(c[1]),
  .a(m1m2[3]),
  .b(m1m2[4])
  );
  
  full_adder c_full_adder_0(
  .sum(product_i[2]),
  .c_out(c[2]),
  .a(m1m2[5]),
  .b(s[0]),
  .c_in(c[0])
  );
  
  half_adder c_half_adder_2(
  .sum(s[1]),
  .c_out(c[3]),
  .a(m1m2[6]),
  .b(m1m2[7])
  );
  
  full_adder c_full_adder_1(
  .sum(s[2]),
  .c_out(c[4]),
  .a(m1m2[8]),
  .b(s[1]),
  .c_in(c[1])
  );
  
  full_adder c_full_adder_2(
  .sum(product_i[3]),
  .c_out(c[5]),
  .a(m1m2[9]),
  .b(s[2]),
  .c_in(c[2])
  );
  
  half_adder c_half_adder_3(
  .sum(s[3]),
  .c_out(c[6]),
  .a(m1m2[10]),
  .b(0)
  );
  
  full_adder c_full_adder_3(
  .sum(s[4]),
  .c_out(c[7]),
  .a(m1m2[11]),
  .b(s[3]),
  .c_in(c[3])
  );
  
  full_adder c_full_adder_4(
  .sum(s[5]),
  .c_out(c[8]),
  .a(m1m2[12]),
  .b(s[4]),
  .c_in(c[4])
  );
  
  half_adder c_half_adder_4(
  .sum(product_i[4]),
  .c_out(c[9]),
  .a(s[5]),
  .b(c[5])
  );
  
  half_adder c_half_adder_5(
  .sum(s[6]),
  .c_out(c[10]),
  .a(m1m2[13]),
  .b(c[6])
  );
  
  full_adder c_full_adder_5(
  .sum(s[7]),
  .c_out(c[11]),
  .a(m1m2[14]),
  .b(s[6]),
  .c_in(c[7])
  );
  
  full_adder c_full_adder_6(
  .sum(product_i[5]),
  .c_out(c[12]),
  .a(s[7]),
  .b(c[8]),
  .c_in(c[9])
  );
  
  half_adder c_half_adder_6(
  .sum(s[8]),
  .c_out(c[13]),
  .a(m1m2[15]),
  .b(c[10])
  );
  
  full_adder c_full_adder_7(
  .sum(product_i[6]),
  .c_out(c[14]),
  .a(s[8]),
  .b(c[11]),
  .c_in(c[12])
  );
  
  half_adder c_half_adder_7(
  .sum(product_i[7]),
  .c_out(c[15]),
  .a(c[13]),
  .b(c[14])
  );
  
endmodule
