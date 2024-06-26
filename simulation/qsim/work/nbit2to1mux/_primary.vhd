library verilog;
use verilog.vl_types.all;
entity nbit2to1mux is
    port(
        sel0            : in     vl_logic;
        in0             : in     vl_logic_vector(7 downto 0);
        in1             : in     vl_logic_vector(7 downto 0);
        y               : out    vl_logic_vector(7 downto 0)
    );
end nbit2to1mux;
