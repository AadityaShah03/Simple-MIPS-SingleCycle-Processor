library verilog;
use verilog.vl_types.all;
entity mipsregisterfile_vlg_check_tst is
    port(
        readreg1        : in     vl_logic_vector(7 downto 0);
        readreg2        : in     vl_logic_vector(7 downto 0);
        regout1         : in     vl_logic_vector(7 downto 0);
        regout2         : in     vl_logic_vector(7 downto 0);
        regout3         : in     vl_logic_vector(7 downto 0);
        regout4         : in     vl_logic_vector(7 downto 0);
        regout5         : in     vl_logic_vector(7 downto 0);
        regout6         : in     vl_logic_vector(7 downto 0);
        regout7         : in     vl_logic_vector(7 downto 0);
        regout8         : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end mipsregisterfile_vlg_check_tst;
