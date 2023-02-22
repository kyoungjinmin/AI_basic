module bin2dec(
  num_b,
  num_h
  );
  
  input [9:0]num_b;
  output [3:0] num_h;
  
  reg [3:0]num_h_i;
  
  always @(num_b)
      begin
          case(num_b)
              10'b00_0000_0001:num_h_i=4'h0;
              10'b00_0000_0010:num_h_i=4'h1;
              10'b00_0000_0100:num_h_i=4'h2;
              10'b00_0000_1000:num_h_i=4'h3;
              10'b00_0001_0000:num_h_i=4'h4;
              10'b00_0010_0000:num_h_i=4'h5;
              10'b00_0100_0000:num_h_i=4'h6;
              10'b00_1000_0000:num_h_i=4'h7;
              10'b01_0000_0000:num_h_i=4'h8;
              10'b10_0000_0000:num_h_i=4'h9;
              default:num_h_i=4'hA;
          endcase
      end
  
  assign num_h=num_h_i;
  
  endmodule