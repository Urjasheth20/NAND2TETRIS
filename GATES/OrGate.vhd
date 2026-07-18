library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OrGate is
    port (
        a       : in  STD_LOGIC;
        b       : in  STD_LOGIC;
        out_Or : out STD_LOGIC
    );
end entity OrGate;

architecture Structural of OrGate is

    signal not_out1 : STD_LOGIC;
    signal not_out2 : STD_LOGIC;

begin
    NOT1: entity work.NotGate
        port map (
            a       => a,
            out_Not => not_out1
        );
    NOT2: entity work.NotGate
        port map (
            a       => b,
            out_Not => not_out2
        );
    NAND1: entity work.NandGate
        port map (
            a        => not_out1,
            b        => not_out2,
            out_Nand => out_Or
        );

end architecture Structural;