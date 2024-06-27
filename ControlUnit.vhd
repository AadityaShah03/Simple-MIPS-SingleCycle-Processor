library ieee;
  use ieee.std_logic_1164.all;

entity controlunit is
  port (
    intsruction : in    std_logic_vector(5 downto 0);
    regdst      : out   std_logic;
    alusrc      : out   std_logic;
    memtoreg    : out   std_logic;
    regwrite    : out   std_logic;
    memread     : out   std_logic;
    memwrite    : out   std_logic;
    branch      : out   std_logic;
    aluop1      : out   std_logic;
    aluop0      : out   std_logic;
    jump        : out   std_logic;
    bne         : out   std_logic
  );
end entity controlunit;

architecture struct of controlunit is

  signal add    : std_logic;
  signal sub    : std_logic;
  signal andop  : std_logic;
  signal orop   : std_logic;
  signal lw     : std_logic;
  signal sw     : std_logic;
  signal beq    : std_logic;
  signal bneop  : std_logic;
  signal jumpop : std_logic;
  signal slt    : std_logic;

begin

  add <= (not intsruction(5)) and (not intsruction(4)) and (not intsruction(3)) and
            (not intsruction(2)) and (not intsruction(1)) and (not intsruction(0));

  sub <= (not intsruction(5)) and (not intsruction(4)) and (not intsruction(3)) and
            (not intsruction(2)) and (not intsruction(1)) and (intsruction(0));

  andop <= (not intsruction(5)) and (not intsruction(4)) and (not intsruction(3)) and
            (not intsruction(2)) and (intsruction(1)) and (not intsruction(0));

  orop <= (not intsruction(5)) and (not intsruction(4)) and (not intsruction(3)) and
            (not intsruction(2)) and (intsruction(1)) and (intsruction(0));

  lw <= (not intsruction(5)) and (not intsruction(4)) and (not intsruction(3)) and
            (intsruction(2)) and (not intsruction(1)) and (not intsruction(0));

  sw <= (not intsruction(5)) and (not intsruction(4)) and (not intsruction(3)) and
            (intsruction(2)) and (not intsruction(1)) and (intsruction(0));

  beq <= (not intsruction(5)) and (not intsruction(4)) and (not intsruction(3)) and
            (intsruction(2)) and (intsruction(1)) and (not intsruction(0));

  bneop <= (not intsruction(5)) and (not intsruction(4)) and (not intsruction(3)) and
            (intsruction(2)) and (intsruction(1)) and (intsruction(0));

  jumpop <= (not intsruction(5)) and (not intsruction(4)) and (intsruction(3)) and
            (not intsruction(2)) and (not intsruction(1)) and (not intsruction(0));

  slt <= (not intsruction(5)) and (not intsruction(4)) and (intsruction(3)) and
            (not intsruction(2)) and (not intsruction(1)) and (intsruction(0));

  regdst   <= (add or sub or orop or andop or slt) and not(lw or jumpop);
  alusrc   <= (lw or sw) and not((add or sub or orop or andop or slt) or beq or bneop or jumpop);
  memtoreg <= lw and not((add or sub or orop or andop or slt) or jumpop);
  regwrite <= (add or sub or orop or andop or slt or lw) and not (beq or sw or bneop or jumpop);
  memread  <= (lw) and not ((add or sub or orop or andop or slt) or beq or bneop or sw or jumpop);
  memwrite <= (sw) and not ((add or sub or orop or andop or slt) or beq or bneop or lw or jumpop);
  branch   <= (beq) and not ((add or sub or orop or andop or slt) or bneop or lw or sw or jumpop);
  aluop1   <= (sub or orop) and not (add or andop or lw or sw or beq or bneop or jumpop or slt);
  aluop0   <= (add or andop or  beq or bneop) and not (sub or orop or lw or sw or jumpop or slt);
  bne      <= (bneop) and not ((add or sub or orop or andop or slt) or beq or sw or jumpop or lw);
  jump     <= (jumpop);

end architecture struct;
