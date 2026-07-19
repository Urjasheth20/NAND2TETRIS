library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Nand16 is
    Port(
        A        : in  STD_LOGIC_VECTOR(15 downto 0);
        B        : in  STD_LOGIC_VECTOR(15 downto 0);
        OUT_NAND : out STD_LOGIC_VECTOR(15 downto 0)
    );
end Nand16;

architecture Structural of Nand16 is

    component NandGate
        Port(
            A        : in STD_LOGIC;
            B        : in STD_LOGIC;
            OUT_NAND : out STD_LOGIC
        );
    end component;

begin

    G0 : NandGate
    port map(
        A => A(0),
        B => B(0),
        OUT_NAND => OUT_NAND(0)
    );

    G1 : NandGate
    port map(
        A => A(1),
        B => B(1),
        OUT_NAND => OUT_NAND(1)
    );

    G2 : NandGate
    port map(
        A => A(2),
        B => B(2),
        OUT_NAND => OUT_NAND(2)
    );

    G3 : NandGate
    port map(
        A => A(3),
        B => B(3),
        OUT_NAND => OUT_NAND(3)
    );

    G4 : NandGate
    port map(
        A => A(4),
        B => B(4),
        OUT_NAND => OUT_NAND(4)
    );

    G5 : NandGate
    port map(
        A => A(5),
        B => B(5),
        OUT_NAND => OUT_NAND(5)
    );

    G6 : NandGate
    port map(
        A => A(6),
        B => B(6),
        OUT_NAND => OUT_NAND(6)
    );

    G7 : NandGate
    port map(
        A => A(7),
        B => B(7),
        OUT_NAND => OUT_NAND(7)
    );

    G8 : NandGate
    port map(
        A => A(8),
        B => B(8),
        OUT_NAND => OUT_NAND(8)
    );

    G9 : NandGate
    port map(
        A => A(9),
        B => B(9),
        OUT_NAND => OUT_NAND(9)
    );

    G10 : NandGate
    port map(
        A => A(10),
        B => B(10),
        OUT_NAND => OUT_NAND(10)
    );

    G11 : NandGate
    port map(
        A => A(11),
        B => B(11),
        OUT_NAND => OUT_NAND(11)
    );

    G12 : NandGate
    port map(
        A => A(12),
        B => B(12),
        OUT_NAND => OUT_NAND(12)
    );

    G13 : NandGate
    port map(
        A => A(13),
        B => B(13),
        OUT_NAND => OUT_NAND(13)
    );

    G14 : NandGate
    port map(
        A => A(14),
        B => B(14),
        OUT_NAND => OUT_NAND(14)
    );

    G15 : NandGate
    port map(
        A => A(15),
        B => B(15),
        OUT_NAND => OUT_NAND(15)
    );

end Structural;