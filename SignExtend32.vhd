library IEEE;
use IEEE.std_logic_1164.all;

entity SignExtend32 is
  port (
    input    : in  std_logic_vector(15 downto 0);
    y        : out std_logic_vector(31 downto 0)
  );
end entity SignExtend32;

architecture struct of SignExtend32 is
begin

  y(15 downto 0) <= input;
  y(31 downto 16) <= (others => input(15));

end architecture struct;