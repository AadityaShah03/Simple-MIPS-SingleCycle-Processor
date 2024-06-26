library verilog;
use verilog.vl_types.all;
entity Nbit_d_register_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        D               : in     vl_logic_vector(7 downto 0);
        Load            : in     vl_logic;
        Rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Nbit_d_register_vlg_sample_tst;
