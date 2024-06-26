library verilog;
use verilog.vl_types.all;
entity decoder_3to8_vlg_sample_tst is
    port(
        en              : in     vl_logic;
        sel0            : in     vl_logic;
        sel1            : in     vl_logic;
        sel2            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end decoder_3to8_vlg_sample_tst;
