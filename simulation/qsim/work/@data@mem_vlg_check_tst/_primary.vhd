library verilog;
use verilog.vl_types.all;
entity DataMem_vlg_check_tst is
    port(
        q               : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end DataMem_vlg_check_tst;
