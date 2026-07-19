library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AndGate is
    port (
        A       : in  STD_LOGIC;
        B       : in  STD_LOGIC;
        OUT_AND : out STD_LOGIC
    );
end entity AndGate;

architecture Structural of AndGate is

    signal nand_out : STD_LOGIC;

begin

    NAND1: entity work.NandGate
        port map (
            A        => A,
            B        => B,
            OUT_NAND => nand_out
        );

    NOT1: entity work.NotGate
        port map (
            A       => nand_out,
            OUT_NOT => OUT_AND
        );

end architecture Structural;