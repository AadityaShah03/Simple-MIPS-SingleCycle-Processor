library ieee;
  use ieee.std_logic_1164.all;

entity fourin32Bits is
  port (
    y    : out   std_logic_vector(31 downto 0)
  );
end entity fourin32Bits;

architecture struct of fourin32Bits is
begin

  y <= "00000000000000000000000000000100";
  
end architecture struct;
