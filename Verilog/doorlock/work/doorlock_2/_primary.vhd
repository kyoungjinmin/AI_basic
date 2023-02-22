library verilog;
use verilog.vl_types.all;
entity doorlock_2 is
    generic(
        START           : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi0);
        S0              : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi1);
        S1              : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi0);
        S2              : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi1);
        S3              : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi0, Hi0);
        S4              : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi0, Hi1);
        S5              : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi1, Hi0);
        S6              : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi1, Hi1);
        LED_1           : vl_logic_vector(0 to 3) := (Hi1, Hi0, Hi0, Hi0);
        LED_2           : vl_logic_vector(0 to 3) := (Hi1, Hi0, Hi0, Hi1)
    );
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        out_led_1       : out    vl_logic;
        out_led_2       : out    vl_logic;
        num             : in     vl_logic_vector(9 downto 0);
        x               : in     vl_logic;
        button_on       : out    vl_logic_vector(9 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of START : constant is 1;
    attribute mti_svvh_generic_type of S0 : constant is 1;
    attribute mti_svvh_generic_type of S1 : constant is 1;
    attribute mti_svvh_generic_type of S2 : constant is 1;
    attribute mti_svvh_generic_type of S3 : constant is 1;
    attribute mti_svvh_generic_type of S4 : constant is 1;
    attribute mti_svvh_generic_type of S5 : constant is 1;
    attribute mti_svvh_generic_type of S6 : constant is 1;
    attribute mti_svvh_generic_type of LED_1 : constant is 1;
    attribute mti_svvh_generic_type of LED_2 : constant is 1;
end doorlock_2;
