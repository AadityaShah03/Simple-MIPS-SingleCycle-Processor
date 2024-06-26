library IEEE;
use IEEE.std_logic_1164.all;

entity ShLBy2for32bits is
  port (
    input    : in  std_logic_vector(31 downto 0);
    y        : out std_logic_vector(31 downto 0)
  );
end entity ShLBy2for32bits;

architecture struct of ShLBy2for32bits is
begin

   y(31 downto 2) <= input(29 downto 0);
   y(1 downto 0) <= (others => '0');
	
end architecture struct;