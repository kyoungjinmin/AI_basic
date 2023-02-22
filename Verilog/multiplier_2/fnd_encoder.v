module fnd_encoder(
    number,
    fnd_on
);

// 입력값 10비트
input [3:0] number;
// 출력값 7비트
output reg [6:0] fnd_on;

always@(number)
begin
    case(number)
        4'h0 : begin fnd_on=7'b100_0000; end     // 0
        4'h1 : begin fnd_on=7'b111_1001; end     // 1
        4'h2 : begin fnd_on=7'b010_0100; end     // 2
        4'h3 : begin fnd_on=7'b011_0000; end     // 3
        4'h4 : begin fnd_on=7'b001_1001; end     // 4
        4'h5 : begin fnd_on=7'b001_0010; end     // 5
        4'h6 : begin fnd_on=7'b000_0010; end     // 6
        4'h7 : begin fnd_on=7'b101_1000; end     // 7
        4'h8 : begin fnd_on=7'b000_0000; end     // 8
        4'h9 : begin fnd_on=7'b001_0000; end     // 9
        4'hA : begin fnd_on=7'b000_1000; end
        4'hB : begin fnd_on=7'b000_0011; end
        4'hC : begin fnd_on=7'b100_0110; end
        4'hD : begin fnd_on=7'b010_0001; end
        4'hE : begin fnd_on=7'b000_0110; end
        4'hF : begin fnd_on=7'b000_1110; end
        default : begin fnd_on=7'b111_1111; end      // OFF
    endcase
end





endmodule