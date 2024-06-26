library verilog;
use verilog.vl_types.all;
entity mux_8to1_vlg_sample_tst is
    port(
        in0             : in     vl_logic;
        in1             : in     vl_logic;
        in2             : in     vl_logic;
        in3             : in     vl_logic;
        in4             : in     vl_logic;
        in5             : in     vl_logic;
        in6             : in     vl_logic;
        in7             : in     vl_logic;
        sel0            : in     vl_logic;
        sel1            : in     vl_logic;
        sel2            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end mux_8to1_vlg_sample_tst;
