module half_adder(
  sum,
  c_out,
  a,
  b
  );
  
  output sum;
  output c_out;
  input a;
  input b;
  
  assign {c_out,sum}=a+b;
  
endmodule
