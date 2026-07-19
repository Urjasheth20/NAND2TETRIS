library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux is
    port (
        IN1     : in  STD_LOGIC;
        IN2     : in  STD_LOGIC;
        SEL     : in  STD_LOGIC;
        OUT_MUX : out STD_LOGIC
    );
end entity Mux;

architecture Structural of Mux is

    signal not_out1 : STD_LOGIC;
    signal and_out1 : STD_LOGIC;
    signal and_out2 : STD_LOGIC;

begin

    -- Invert SEL
    Not1: entity work.NotGate
        port map (
            A       => SEL,
            OUT_NOT => not_out1
        );

    -- IN1 AND (NOT SEL)
    And1: entity work.AndGate
        port map (
            A       => IN1,
            B       => not_out1,
            OUT_AND => and_out1
        );

    -- IN2 AND SEL
    And2: entity work.AndGate
        port map (
            A       => IN2,
            B       => SEL,
            OUT_AND => and_out2
        );

    -- Combine both AND outputs
    Or1: entity work.OrGate
        port map (
            A      => and_out1,
            B      => and_out2,
            OUT_OR => OUT_MUX
        );

end architecture Structural;