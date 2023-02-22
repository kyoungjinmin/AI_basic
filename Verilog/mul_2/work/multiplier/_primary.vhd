library verilog;
use verilog.vl_types.all;
entity multiplier is
    generic(
        S0              : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi0);
        S1              : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi1);
        S2              : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi0);
        S3              : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi1);
        S4              : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi0, Hi0);
        S5              : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi0, Hi1)
    );
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        start           : in     vl_logic;
        multiplier_1    : in     vl_logic_vector(3 downto 0);
        multiplicand    : in     vl_logic_vector(3 downto 0);
        valid           : out    vl_logic;
        product         : out    vl_logic_vector(7 downto 0);
        fnd_01          : out    vl_logic_vector(6 downto 0);
        fnd_02          : out    vl_logic_vector(6 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of S0 : constant is 1;
    attribute mti_svvh_generic_type of S1 : constant is 1;
    attribute mti_svvh_generic_type of S2 : constant is 1;
    attribute mti_svvh_generic_type of S3 : constant is 1;
    attribute mti_svvh_generic_type of S4 : constant is 1;
    attribute mti_svvh_generic_type of S5 : constant is 1;
end multiplier;
