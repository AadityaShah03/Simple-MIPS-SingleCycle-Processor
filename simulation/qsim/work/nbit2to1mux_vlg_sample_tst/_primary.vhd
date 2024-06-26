library verilog;
use verilog.vl_types.all;
entity nbit2to1mux_vlg_sample_tst is
    port(
        in0             : in     vl_logic_vector(7 downto 0);
        in1             : in     vl_logic_vector(7 downto 0);
        sel0            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end nbit2to1mux_vlg_sample_tst;
