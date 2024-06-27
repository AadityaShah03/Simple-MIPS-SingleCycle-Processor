library ieee;
  use ieee.std_logic_1164.all;

entity combinePC4andShL2 is
  port (
    in28 : in    std_logic_vector(6 downto 0);
    in4  : in    std_logic;
    y    : out   std_logic_vector(7 downto 0)
  );
end entity combinePC4andShL2;

architecture struct of combinePC4andShL2 is
begin

  y(7) <= in4;
  y(6 downto 0) <= in28;
  
end architecture struct;
