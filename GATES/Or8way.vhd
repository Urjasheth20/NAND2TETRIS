library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Or8Way is
    port (
        IN1    : in  STD_LOGIC_VECTOR(7 downto 0);
        OUT_OR : out STD_LOGIC
    );
end entity Or8Way;

architecture Structural of Or8Way is

    signal OR_L1 : STD_LOGIC_VECTOR(3 downto 0);
    signal OR_L2 : STD_LOGIC_VECTOR(1 downto 0);

begin

    OR1 : entity work.OrGate
        port map (
            A      => IN1(0),
            B      => IN1(1),
            OUT_OR => OR_L1(0)
        );

    OR2 : entity work.OrGate
        port map (
            A      => IN1(2),
            B      => IN1(3),
            OUT_OR => OR_L1(1)
        );

    OR3 : entity work.OrGate
        port map (
            A      => IN1(4),
            B      => IN1(5),
            OUT_OR => OR_L1(2)
        );

    OR4 : entity work.OrGate
        port map (
            A      => IN1(6),
            B      => IN1(7),
            OUT_OR => OR_L1(3)
        );

    OR5 : entity work.OrGate
        port map (
            A      => OR_L1(0),
            B      => OR_L1(1),
            OUT_OR => OR_L2(0)
        );

    OR6 : entity work.OrGate
        port map (
            A      => OR_L1(2),
            B      => OR_L1(3),
            OUT_OR => OR_L2(1)
        );

    OR7 : entity work.OrGate
        port map (
            A      => OR_L2(0),
            B      => OR_L2(1),
            OUT_OR => OUT_OR
        );

end architecture Structural;