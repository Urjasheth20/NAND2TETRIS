library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity add_sub16 is
    port (
        A        : in  STD_LOGIC_VECTOR(15 downto 0);
        B        : in  STD_LOGIC_VECTOR(15 downto 0);
        ADD_SUB  : in  STD_LOGIC;
        SUM      : out STD_LOGIC_VECTOR(15 downto 0);
        CARRY    : out STD_LOGIC
    );
end entity add_sub16;

architecture structural of add_sub16 is

    signal wire     : STD_LOGIC_VECTOR(14 downto 0);
    signal exor_out : STD_LOGIC_VECTOR(15 downto 0);

begin

    -- Bit 0
    EXOR1: entity work.ExorGate
        port map (
            A        => ADD_SUB,
            B        => B(0),
            out_Exor => exor_out(0)
        );

    FA1: entity work.full_adder
        port map (
            A     => A(0),
            B     => exor_out(0),
            CIN   => ADD_SUB,
            SUM   => SUM(0),
            CARRY => wire(0)
        );


    -- Bit 1
    EXOR2: entity work.ExorGate
        port map (
            A        => ADD_SUB,
            B        => B(1),
            out_Exor => exor_out(1)
        );

    FA2: entity work.full_adder
        port map (
            A     => A(1),
            B     => exor_out(1),
            CIN   => wire(0),
            SUM   => SUM(1),
            CARRY => wire(1)
        );


    -- Bit 2
    EXOR3: entity work.ExorGate
        port map (
            A        => ADD_SUB,
            B        => B(2),
            out_Exor => exor_out(2)
        );

    FA3: entity work.full_adder
        port map (
            A     => A(2),
            B     => exor_out(2),
            CIN   => wire(1),
            SUM   => SUM(2),
            CARRY => wire(2)
        );


    -- Bit 3
    EXOR4: entity work.ExorGate
        port map (
            A        => ADD_SUB,
            B        => B(3),
            out_Exor => exor_out(3)
        );

    FA4: entity work.full_adder
        port map (
            A     => A(3),
            B     => exor_out(3),
            CIN   => wire(2),
            SUM   => SUM(3),
            CARRY => wire(3)
        );


    -- Bit 4
    EXOR5: entity work.ExorGate
        port map (
            A        => ADD_SUB,
            B        => B(4),
            out_Exor => exor_out(4)
        );

    FA5: entity work.full_adder
        port map (
            A     => A(4),
            B     => exor_out(4),
            CIN   => wire(3),
            SUM   => SUM(4),
            CARRY => wire(4)
        );


    -- Bit 5
    EXOR6: entity work.ExorGate
        port map (
            A        => ADD_SUB,
            B        => B(5),
            out_Exor => exor_out(5)
        );

    FA6: entity work.full_adder
        port map (
            A     => A(5),
            B     => exor_out(5),
            CIN   => wire(4),
            SUM   => SUM(5),
            CARRY => wire(5)
        );


    -- Bit 6
    EXOR7: entity work.ExorGate
        port map (
            A        => ADD_SUB,
            B        => B(6),
            out_Exor => exor_out(6)
        );

    FA7: entity work.full_adder
        port map (
            A     => A(6),
            B     => exor_out(6),
            CIN   => wire(5),
            SUM   => SUM(6),
            CARRY => wire(6)
        );


    -- Bit 7
    EXOR8: entity work.ExorGate
        port map (
            A        => ADD_SUB,
            B        => B(7),
            out_Exor => exor_out(7)
        );

    FA8: entity work.full_adder
        port map (
            A     => A(7),
            B     => exor_out(7),
            CIN   => wire(6),
            SUM   => SUM(7),
            CARRY => wire(7)
        );


    -- Bit 8
    EXOR9: entity work.ExorGate
        port map (
            A        => ADD_SUB,
            B        => B(8),
            out_Exor => exor_out(8)
        );

    FA9: entity work.full_adder
        port map (
            A     => A(8),
            B     => exor_out(8),
            CIN   => wire(7),
            SUM   => SUM(8),
            CARRY => wire(8)
        );


    -- Bit 9
    EXOR10: entity work.ExorGate
        port map (
            A        => ADD_SUB,
            B        => B(9),
            out_Exor => exor_out(9)
        );

    FA10: entity work.full_adder
        port map (
            A     => A(9),
            B     => exor_out(9),
            CIN   => wire(8),
            SUM   => SUM(9),
            CARRY => wire(9)
        );


    -- Bit 10
    EXOR11: entity work.ExorGate
        port map (
            A        => ADD_SUB,
            B        => B(10),
            out_Exor => exor_out(10)
        );

    FA11: entity work.full_adder
        port map (
            A     => A(10),
            B     => exor_out(10),
            CIN   => wire(9),
            SUM   => SUM(10),
            CARRY => wire(10)
        );


    -- Bit 11
    EXOR12: entity work.ExorGate
        port map (
            A        => ADD_SUB,
            B        => B(11),
            out_Exor => exor_out(11)
        );

    FA12: entity work.full_adder
        port map (
            A     => A(11),
            B     => exor_out(11),
            CIN   => wire(10),
            SUM   => SUM(11),
            CARRY => wire(11)
        );


    -- Bit 12
    EXOR13: entity work.ExorGate
        port map (
            A        => ADD_SUB,
            B        => B(12),
            out_Exor => exor_out(12)
        );

    FA13: entity work.full_adder
        port map (
            A     => A(12),
            B     => exor_out(12),
            CIN   => wire(11),
            SUM   => SUM(12),
            CARRY => wire(12)
        );


    -- Bit 13
    EXOR14: entity work.ExorGate
        port map (
            A        => ADD_SUB,
            B        => B(13),
            out_Exor => exor_out(13)
        );

    FA14: entity work.full_adder
        port map (
            A     => A(13),
            B     => exor_out(13),
            CIN   => wire(12),
            SUM   => SUM(13),
            CARRY => wire(13)
        );


    -- Bit 14
    EXOR15: entity work.ExorGate
        port map (
            A        => ADD_SUB,
            B        => B(14),
            out_Exor => exor_out(14)
        );

    FA15: entity work.full_adder
        port map (
            A     => A(14),
            B     => exor_out(14),
            CIN   => wire(13),
            SUM   => SUM(14),
            CARRY => wire(14)
        );


    -- Bit 15
    EXOR16: entity work.ExorGate
        port map (
            A        => ADD_SUB,
            B        => B(15),
            out_Exor => exor_out(15)
        );

    FA16: entity work.full_adder
        port map (
            A     => A(15),
            B     => exor_out(15),
            CIN   => wire(14),
            SUM   => SUM(15),
            CARRY => CARRY
        );

end architecture structural;