module (
  led_en_in,
  load_en
  );
  
  input led_en_in;
  output load_en;
  
  reg load_en_d1;
  reg load_en_d2;
  wire load_en;
  
  always @(posedge clock or negedge reset)
  begin
    if(!reset) begin
      load_en_d1<=1'h0;
      load_en_d2<=1;h0;
    end
    
    else
      load_en_d1<=led_en_in;  //led_en_in?  5???  ???.
      load_en_d2<=load_en_d1;//5? ???
    end
  end
  
  assign load_en=((load_en_d1==1'b1)&&(load_en_d2==1'b0))?1'b1:1'b0;
  
endmodule
  
