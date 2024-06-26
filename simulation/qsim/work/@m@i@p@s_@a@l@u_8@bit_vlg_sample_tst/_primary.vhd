library verilog;
use verilog.vl_types.all;
entity MIPS_ALU_8Bit_vlg_sample_tst is
    port(
        Ain             : in     vl_logic_vector(7 downto 0);
        ALUop           : in     vl_logic_vector(1 downto 0);
        Bin             : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end MIPS_ALU_8Bit_vlg_sample_tst;
