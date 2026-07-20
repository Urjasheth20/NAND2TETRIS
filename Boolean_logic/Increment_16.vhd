library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Inc16 is
    port (
        IN1  : in  STD_LOGIC_VECTOR(15 downto 0);
        OUT1 : out STD_LOGIC_VECTOR(15 downto 0)
    );
end entity Inc16;

architecture Structural of Inc16 is

    signal CARRY : STD_LOGIC_VECTOR(15 downto 0);

begin

    -- LSB: Add 1
    HA0 : entity work.half_adder
        port map (
            A    => IN1(0),
            B    => '1',
            SUM  => OUT1(0),
            COUT => CARRY(0)
        );

    -- Remaining bits: propagate carry
    HA1 : entity work.half_adder
        port map (
            A    => IN1(1),
            B    => CARRY(0),
            SUM  => OUT1(1),
            COUT => CARRY(1)
        );

    HA2 : entity work.half_adder
        port map (
            A    => IN1(2),
            B    => CARRY(1),
            SUM  => OUT1(2),
            COUT => CARRY(2)
        );

    HA3 : entity work.half_adder
        port map (
            A    => IN1(3),
            B    => CARRY(2),
            SUM  => OUT1(3),
            COUT => CARRY(3)
        );

    HA4 : entity work.half_adder
        port map (
            A    => IN1(4),
            B    => CARRY(3),
            SUM  => OUT1(4),
            COUT => CARRY(4)
        );

    HA5 : entity work.half_adder
        port map (
            A    => IN1(5),
            B    => CARRY(4),
            SUM  => OUT1(5),
            COUT => CARRY(5)
        );

    HA6 : entity work.half_adder
        port map (
            A    => IN1(6),
            B    => CARRY(5),
            SUM  => OUT1(6),
            COUT => CARRY(6)
        );

    HA7 : entity work.half_adder
        port map (
            A    => IN1(7),
            B    => CARRY(6),
            SUM  => OUT1(7),
            COUT => CARRY(7)
        );

    HA8 : entity work.half_adder
        port map (
            A    => IN1(8),
            B    => CARRY(7),
            SUM  => OUT1(8),
            COUT => CARRY(8)
        );

    HA9 : entity work.half_adder
        port map (
            A    => IN1(9),
            B    => CARRY(8),
            SUM  => OUT1(9),
            COUT => CARRY(9)
        );

    HA10 : entity work.half_adder
        port map (
            A    => IN1(10),
            B    => CARRY(9),
            SUM  => OUT1(10),
            COUT => CARRY(10)
        );

    HA11 : entity work.half_adder
        port map (
            A    => IN1(11),
            B    => CARRY(10),
            SUM  => OUT1(11),
            COUT => CARRY(11)
        );

    HA12 : entity work.half_adder
        port map (
            A    => IN1(12),
            B    => CARRY(11),
            SUM  => OUT1(12),
            COUT => CARRY(12)
        );

    HA13 : entity work.half_adder
        port map (
            A    => IN1(13),
            B    => CARRY(12),
            SUM  => OUT1(13),
            COUT => CARRY(13)
        );

    HA14 : entity work.half_adder
        port map (
            A    => IN1(14),
            B    => CARRY(13),
            SUM  => OUT1(14),
            COUT => CARRY(14)
        );

    HA15 : entity work.half_adder
        port map (
            A    => IN1(15),
            B    => CARRY(14),
            SUM  => OUT1(15),
            COUT => CARRY(15)
        );

end architecture Structural;