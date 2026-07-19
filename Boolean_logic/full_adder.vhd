library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder is
    port (
        A     : in  STD_LOGIC;
        B     : in  STD_LOGIC;
        CIN   : in  STD_LOGIC;
        SUM   : out STD_LOGIC;
        COUT  : out STD_LOGIC
    );
end entity full_adder;

architecture Structural of full_adder is

    signal SUM1   : STD_LOGIC;
    signal CARRY1 : STD_LOGIC;
    signal CARRY2 : STD_LOGIC;

begin

    HA1 : entity work.half_adder
        port map (
            A     => A,
            B     => B,
            SUM   => SUM1,
            CARRY => CARRY1
        );

    HA2 : entity work.half_adder
        port map (
            A     => SUM1,
            B     => CIN,
            SUM   => SUM,
            CARRY => CARRY2
        );

    OR1 : entity work.OrGate
        port map (
            A      => CARRY1,
            B      => CARRY2,
            OUT_OR => COUT
        );

end architecture Structural;