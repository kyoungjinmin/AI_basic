library verilog;
use verilog.vl_types.all;
entity carry_save_multiplier is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        start           : in     vl_logic;
        m1              : in     vl_logic_vector(3 downto 0);
        m2              : in     vl_logic_vector(3 downto 0);
        product         : out    vl_logic_vector(7 downto 0)
    );
end carry_save_multiplier;
