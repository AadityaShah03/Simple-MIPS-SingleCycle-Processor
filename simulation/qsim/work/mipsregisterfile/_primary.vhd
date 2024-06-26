library verilog;
use verilog.vl_types.all;
entity mipsregisterfile is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        regwrite        : in     vl_logic;
        writeregaddress : in     vl_logic_vector(4 downto 0);
        rs              : in     vl_logic_vector(4 downto 0);
        rt              : in     vl_logic_vector(4 downto 0);
        writedata       : in     vl_logic_vector(7 downto 0);
        readreg1        : out    vl_logic_vector(7 downto 0);
        readreg2        : out    vl_logic_vector(7 downto 0);
        regout1         : out    vl_logic_vector(7 downto 0);
        regout2         : out    vl_logic_vector(7 downto 0);
        regout3         : out    vl_logic_vector(7 downto 0);
        regout4         : out    vl_logic_vector(7 downto 0);
        regout5         : out    vl_logic_vector(7 downto 0);
        regout6         : out    vl_logic_vector(7 downto 0);
        regout7         : out    vl_logic_vector(7 downto 0);
        regout8         : out    vl_logic_vector(7 downto 0)
    );
end mipsregisterfile;
