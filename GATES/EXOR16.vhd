----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:
-- Design Name:
-- Module Name: EXOR16 - Structural
-- Project Name:
-- Target Devices:
-- Tool Versions:
-- Description: Bitwise EXOR of 16 bits
--
-- Dependencies:
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Exor16 is
    Port(
        A        : in  STD_LOGIC_VECTOR(15 downto 0);
        B        : in  STD_LOGIC_VECTOR(15 downto 0);
        OUT_EXOR : out STD_LOGIC_VECTOR(15 downto 0)
    );
end Exor16;

architecture Structural of Exor16 is

    component ExorGate
        Port(
            A        : in STD_LOGIC;
            B        : in STD_LOGIC;
            OUT_EXOR : out STD_LOGIC
        );
    end component;

begin

    G0 : ExorGate
    port map(
        A => A(0),
        B => B(0),
        OUT_EXOR => OUT_EXOR(0)
    );

    G1 : ExorGate
    port map(
        A => A(1),
        B => B(1),
        OUT_EXOR => OUT_EXOR(1)
    );

    G2 : ExorGate
    port map(
        A => A(2),
        B => B(2),
        OUT_EXOR => OUT_EXOR(2)
    );

    G3 : ExorGate
    port map(
        A => A(3),
        B => B(3),
        OUT_EXOR => OUT_EXOR(3)
    );

    G4 : ExorGate
    port map(
        A => A(4),
        B => B(4),
        OUT_EXOR => OUT_EXOR(4)
    );

    G5 : ExorGate
    port map(
        A => A(5),
        B => B(5),
        OUT_EXOR => OUT_EXOR(5)
    );

    G6 : ExorGate
    port map(
        A => A(6),
        B => B(6),
        OUT_EXOR => OUT_EXOR(6)
    );

    G7 : ExorGate
    port map(
        A => A(7),
        B => B(7),
        OUT_EXOR => OUT_EXOR(7)
    );

    G8 : ExorGate
    port map(
        A => A(8),
        B => B(8),
        OUT_EXOR => OUT_EXOR(8)
    );

    G9 : ExorGate
    port map(
        A => A(9),
        B => B(9),
        OUT_EXOR => OUT_EXOR(9)
    );

    G10 : ExorGate
    port map(
        A => A(10),
        B => B(10),
        OUT_EXOR => OUT_EXOR(10)
    );

    G11 : ExorGate
    port map(
        A => A(11),
        B => B(11),
        OUT_EXOR => OUT_EXOR(11)
    );

    G12 : ExorGate
    port map(
        A => A(12),
        B => B(12),
        OUT_EXOR => OUT_EXOR(12)
    );

    G13 : ExorGate
    port map(
        A => A(13),
        B => B(13),
        OUT_EXOR => OUT_EXOR(13)
    );

    G14 : ExorGate
    port map(
        A => A(14),
        B => B(14),
        OUT_EXOR => OUT_EXOR(14)
    );

    G15 : ExorGate
    port map(
        A => A(15),
        B => B(15),
        OUT_EXOR => OUT_EXOR(15)
    );

end Structural;