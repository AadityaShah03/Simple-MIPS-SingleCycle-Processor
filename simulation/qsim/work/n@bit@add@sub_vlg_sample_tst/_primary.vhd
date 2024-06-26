library verilog;
use verilog.vl_types.all;
entity nBitAddSub_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        AddOrSubCin     : in     vl_logic;
        B               : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end nBitAddSub_vlg_sample_tst;
