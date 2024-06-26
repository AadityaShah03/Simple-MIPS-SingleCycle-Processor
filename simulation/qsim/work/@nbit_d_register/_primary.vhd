library verilog;
use verilog.vl_types.all;
entity Nbit_d_register is
    port(
        D               : in     vl_logic_vector(7 downto 0);
        CLK             : in     vl_logic;
        Rst             : in     vl_logic;
        Load            : in     vl_logic;
        Q               : out    vl_logic_vector(7 downto 0);
        Q_not           : out    vl_logic_vector(7 downto 0)
    );
end Nbit_d_register;
