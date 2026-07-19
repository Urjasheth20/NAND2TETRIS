library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OrGate is
    port (
        A      : in  STD_LOGIC;
        B      : in  STD_LOGIC;
        OUT_OR : out STD_LOGIC
    );
end entity OrGate;

architecture Structural of OrGate is

    signal not_out1 : STD_LOGIC;
    signal not_out2 : STD_LOGIC;

begin
    NOT1: entity work.NotGate
        port map (
            A       => A,
            OUT_NOT => not_out1
        );
    NOT2: entity work.NotGate
        port map (
            A       => B,
            OUT_NOT => not_out2
        );
    NAND1: entity work.NandGate
        port map (
            A        => not_out1,
            B        => not_out2,
            OUT_NAND => OUT_OR
        );

end architecture Structural;