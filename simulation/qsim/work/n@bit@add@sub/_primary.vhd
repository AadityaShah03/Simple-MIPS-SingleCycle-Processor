library verilog;
use verilog.vl_types.all;
entity nBitAddSub is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        AddOrSubCin     : in     vl_logic;
        Q               : out    vl_logic_vector(7 downto 0);
        Cout            : out    vl_logic;
        Overflow        : out    vl_logic
    );
end nBitAddSub;
