library verilog;
use verilog.vl_types.all;
entity nBitAddSub_vlg_check_tst is
    port(
        Cout            : in     vl_logic;
        Overflow        : in     vl_logic;
        Q               : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end nBitAddSub_vlg_check_tst;
