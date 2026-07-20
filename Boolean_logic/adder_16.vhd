library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adder_16 is
    port (
        A    : in  STD_LOGIC_VECTOR(15 downto 0);
        B    : in  STD_LOGIC_VECTOR(15 downto 0);
        SUM  : out STD_LOGIC_VECTOR(15 downto 0);
        COUT : out STD_LOGIC
    );
end entity adder_16;

architecture Structural of adder_16 is

    signal CARRY : STD_LOGIC_VECTOR(14 downto 0);

begin

    -- Bit 0 (LSB)
    FA0 : entity work.full_adder
        port map (
            A    => A(0),
            B    => B(0),
            CIN  => '0',
            SUM  => SUM(0),
            COUT => CARRY(0)
        );

    -- Bit 1
    FA1 : entity work.full_adder
        port map (
            A    => A(1),
            B    => B(1),
            CIN  => CARRY(0),
            SUM  => SUM(1),
            COUT => CARRY(1)
        );

    -- Bit 2
    FA2 : entity work.full_adder
        port map (
            A    => A(2),
            B    => B(2),
            CIN  => CARRY(1),
            SUM  => SUM(2),
            COUT => CARRY(2)
        );

    -- Bit 3
    FA3 : entity work.full_adder
        port map (
            A    => A(3),
            B    => B(3),
            CIN  => CARRY(2),
            SUM  => SUM(3),
            COUT => CARRY(3)
        );

    -- Bit 4
    FA4 : entity work.full_adder
        port map (
            A    => A(4),
            B    => B(4),
            CIN  => CARRY(3),
            SUM  => SUM(4),
            COUT => CARRY(4)
        );

    -- Bit 5
    FA5 : entity work.full_adder
        port map (
            A    => A(5),
            B    => B(5),
            CIN  => CARRY(4),
            SUM  => SUM(5),
            COUT => CARRY(5)
        );

    -- Bit 6
    FA6 : entity work.full_adder
        port map (
            A    => A(6),
            B    => B(6),
            CIN  => CARRY(5),
            SUM  => SUM(6),
            COUT => CARRY(6)
        );

    -- Bit 7
    FA7 : entity work.full_adder
        port map (
            A    => A(7),
            B    => B(7),
            CIN  => CARRY(6),
            SUM  => SUM(7),
            COUT => CARRY(7)
        );

    -- Bit 8
    FA8 : entity work.full_adder
        port map (
            A    => A(8),
            B    => B(8),
            CIN  => CARRY(7),
            SUM  => SUM(8),
            COUT => CARRY(8)
        );

    -- Bit 9
    FA9 : entity work.full_adder
        port map (
            A    => A(9),
            B    => B(9),
            CIN  => CARRY(8),
            SUM  => SUM(9),
            COUT => CARRY(9)
        );

    -- Bit 10
    FA10 : entity work.full_adder
        port map (
            A    => A(10),
            B    => B(10),
            CIN  => CARRY(9),
            SUM  => SUM(10),
            COUT => CARRY(10)
        );

    -- Bit 11
    FA11 : entity work.full_adder
        port map (
            A    => A(11),
            B    => B(11),
            CIN  => CARRY(10),
            SUM  => SUM(11),
            COUT => CARRY(11)
        );

    -- Bit 12
    FA12 : entity work.full_adder
        port map (
            A    => A(12),
            B    => B(12),
            CIN  => CARRY(11),
            SUM  => SUM(12),
            COUT => CARRY(12)
        );

    -- Bit 13
    FA13 : entity work.full_adder
        port map (
            A    => A(13),
            B    => B(13),
            CIN  => CARRY(12),
            SUM  => SUM(13),
            COUT => CARRY(13)
        );

    -- Bit 14
    FA14 : entity work.full_adder
        port map (
            A    => A(14),
            B    => B(14),
            CIN  => CARRY(13),
            SUM  => SUM(14),
            COUT => CARRY(14)
        );

    -- Bit 15 (MSB)
    FA15 : entity work.full_adder
        port map (
            A    => A(15),
            B    => B(15),
            CIN  => CARRY(14),
            SUM  => SUM(15),
            COUT => COUT
        );

end architecture Structural;