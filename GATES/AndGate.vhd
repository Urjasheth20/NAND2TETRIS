library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AndGate is
    port (
        a       : in  STD_LOGIC;
        b       : in  STD_LOGIC;
        out_And : out STD_LOGIC
    );
end entity AndGate;

architecture Structural of AndGate is

    signal nand_out : STD_LOGIC;

begin

    NAND1: entity work.NandGate
        port map (
            a        => a,
            b        => b,
            out_Nand => nand_out
        );

    NOT1: entity work.NotGate
        port map (
            a       => nand_out,
            out_Not => out_And
        );

end architecture Structural;