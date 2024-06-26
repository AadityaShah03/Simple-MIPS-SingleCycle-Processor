library verilog;
use verilog.vl_types.all;
entity decoder_3to8 is
    port(
        en              : in     vl_logic;
        sel0            : in     vl_logic;
        sel1            : in     vl_logic;
        sel2            : in     vl_logic;
        out0            : out    vl_logic;
        out1            : out    vl_logic;
        out2            : out    vl_logic;
        out3            : out    vl_logic;
        out4            : out    vl_logic;
        out5            : out    vl_logic;
        out6            : out    vl_logic;
        out7            : out    vl_logic
    );
end decoder_3to8;
