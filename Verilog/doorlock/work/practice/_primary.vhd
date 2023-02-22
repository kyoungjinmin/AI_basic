library verilog;
use verilog.vl_types.all;
entity practice is
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        num             : in     vl_logic_vector(9 downto 0);
        button_on       : out    vl_logic_vector(9 downto 0)
    );
end practice;
