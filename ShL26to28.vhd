library IEEE;
use IEEE.std_logic_1164.all;

entity ShL26to28 is
  port (
    input    : in  std_logic_vector(25 downto 0);
    y        : out std_logic_vector(27 downto 0)
  );
end entity ShL26to28;

architecture struct of ShL26to28 is
begin

  y(27 downto 2) <= input;
   y(1 downto 0) <= (others => '0');

end architecture struct;