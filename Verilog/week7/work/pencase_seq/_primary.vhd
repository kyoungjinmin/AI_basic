library verilog;
use verilog.vl_types.all;
entity pencase_seq is
    generic(
        RED             : vl_logic_vector(0 to 1) := (Hi0, Hi1);
        BLUE            : vl_logic_vector(0 to 1) := (Hi1, Hi0);
        \START\         : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi0);
        COIN0           : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi1);
        COIN1           : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi0);
        COIN00          : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi1);
        COIN01          : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi0, Hi0);
        COIN10          : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi0, Hi1);
        COIN11          : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi1, Hi0);
        COIN_RED        : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi1, Hi1);
        COIN_BLUE       : vl_logic_vector(0 to 3) := (Hi1, Hi0, Hi0, Hi0)
    );
    port(
        color           : out    vl_logic_vector(1 downto 0);
        coin            : in     vl_logic;
        clock           : in     vl_logic;
        n_rst           : in     vl_logic;
        start           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of RED : constant is 1;
    attribute mti_svvh_generic_type of BLUE : constant is 1;
    attribute mti_svvh_generic_type of \START\ : constant is 1;
    attribute mti_svvh_generic_type of COIN0 : constant is 1;
    attribute mti_svvh_generic_type of COIN1 : constant is 1;
    attribute mti_svvh_generic_type of COIN00 : constant is 1;
    attribute mti_svvh_generic_type of COIN01 : constant is 1;
    attribute mti_svvh_generic_type of COIN10 : constant is 1;
    attribute mti_svvh_generic_type of COIN11 : constant is 1;
    attribute mti_svvh_generic_type of COIN_RED : constant is 1;
    attribute mti_svvh_generic_type of COIN_BLUE : constant is 1;
end pencase_seq;
