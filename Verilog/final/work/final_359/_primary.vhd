library verilog;
use verilog.vl_types.all;
entity final_359 is
    generic(
        START           : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi0);
        S0              : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi1);
        S1              : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi0);
        S2              : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi1);
        S3              : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi0, Hi0);
        S4              : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi0, Hi1);
        S5              : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi1, Hi0)
    );
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        button_2_1      : in     vl_logic_vector(1 downto 0);
        button_star     : in     vl_logic;
        lock            : out    vl_logic;
        \open\          : out    vl_logic;
        led_red         : out    vl_logic;
        led_green       : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of START : constant is 1;
    attribute mti_svvh_generic_type of S0 : constant is 1;
    attribute mti_svvh_generic_type of S1 : constant is 1;
    attribute mti_svvh_generic_type of S2 : constant is 1;
    attribute mti_svvh_generic_type of S3 : constant is 1;
    attribute mti_svvh_generic_type of S4 : constant is 1;
    attribute mti_svvh_generic_type of S5 : constant is 1;
end final_359;
