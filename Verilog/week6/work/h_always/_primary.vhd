library verilog;
use verilog.vl_types.all;
entity h_always is
    port(
        din0            : in     vl_logic_vector(2 downto 0);
        din1            : in     vl_logic_vector(2 downto 0);
        sel             : in     vl_logic_vector(1 downto 0);
        dout            : out    vl_logic_vector(2 downto 0)
    );
end h_always;
