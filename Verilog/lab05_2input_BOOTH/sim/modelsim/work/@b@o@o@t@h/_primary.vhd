library verilog;
use verilog.vl_types.all;
entity BOOTH is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        m               : in     vl_logic_vector(3 downto 0);
        Q               : in     vl_logic_vector(3 downto 0);
        rslt            : out    vl_logic_vector(7 downto 0)
    );
end BOOTH;
