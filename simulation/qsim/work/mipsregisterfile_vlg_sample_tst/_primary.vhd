library verilog;
use verilog.vl_types.all;
entity mipsregisterfile_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        regwrite        : in     vl_logic;
        rs              : in     vl_logic_vector(4 downto 0);
        rst             : in     vl_logic;
        rt              : in     vl_logic_vector(4 downto 0);
        writedata       : in     vl_logic_vector(7 downto 0);
        writeregaddress : in     vl_logic_vector(4 downto 0);
        sampler_tx      : out    vl_logic
    );
end mipsregisterfile_vlg_sample_tst;
