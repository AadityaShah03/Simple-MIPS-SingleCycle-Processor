library verilog;
use verilog.vl_types.all;
entity MIPS_ALU_8Bit_vlg_check_tst is
    port(
        ALUout          : in     vl_logic_vector(7 downto 0);
        Zero            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end MIPS_ALU_8Bit_vlg_check_tst;
