library ieee;
  use ieee.std_logic_1164.all;

entity combinePC4andShL2 is
  port (
    in28 : in    std_logic_vector(27 downto 0);
    in4  : in    std_logic_vector(3 downto 0);
    y    : out   std_logic_vector(31 downto 0)
  );
end entity combinePC4andShL2;

architecture struct of combinePC4andShL2 is
begin

  y(31 downto 28) <= in4;
  y(27 downto 0) <= in28;
  
end architecture struct;
