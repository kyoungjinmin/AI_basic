library verilog;
use verilog.vl_types.all;
entity fnd_encoder is
    port(
        number          : in     vl_logic_vector(3 downto 0);
        fnd_on          : out    vl_logic_vector(6 downto 0)
    );
end fnd_encoder;
