----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:
-- Design Name:
-- Module Name: OR16 - Structural
-- Project Name:
-- Target Devices:
-- Tool Versions:
-- Description: Bitwise OR of 16 bits
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

entity Or16 is
    Port(
        A      : in  STD_LOGIC_VECTOR(15 downto 0);
        B      : in  STD_LOGIC_VECTOR(15 downto 0);
        OUT_OR : out STD_LOGIC_VECTOR(15 downto 0)
    );
end Or16;

architecture Structural of Or16 is

    component OrGate
        Port(
            A      : in STD_LOGIC;
            B      : in STD_LOGIC;
            OUT_OR : out STD_LOGIC
        );
    end component;

begin

    G0 : OrGate
    port map(
        A => A(0),
        B => B(0),
        OUT_OR => OUT_OR(0)
    );

    G1 : OrGate
    port map(
        A => A(1),
        B => B(1),
        OUT_OR => OUT_OR(1)
    );

    G2 : OrGate
    port map(
        A => A(2),
        B => B(2),
        OUT_OR => OUT_OR(2)
    );

    G3 : OrGate
    port map(
        A => A(3),
        B => B(3),
        OUT_OR => OUT_OR(3)
    );

    G4 : OrGate
    port map(
        A => A(4),
        B => B(4),
        OUT_OR => OUT_OR(4)
    );

    G5 : OrGate
    port map(
        A => A(5),
        B => B(5),
        OUT_OR => OUT_OR(5)
    );

    G6 : OrGate
    port map(
        A => A(6),
        B => B(6),
        OUT_OR => OUT_OR(6)
    );

    G7 : OrGate
    port map(
        A => A(7),
        B => B(7),
        OUT_OR => OUT_OR(7)
    );

    G8 : OrGate
    port map(
        A => A(8),
        B => B(8),
        OUT_OR => OUT_OR(8)
    );

    G9 : OrGate
    port map(
        A => A(9),
        B => B(9),
        OUT_OR => OUT_OR(9)
    );

    G10 : OrGate
    port map(
        A => A(10),
        B => B(10),
        OUT_OR => OUT_OR(10)
    );

    G11 : OrGate
    port map(
        A => A(11),
        B => B(11),
        OUT_OR => OUT_OR(11)
    );

    G12 : OrGate
    port map(
        A => A(12),
        B => B(12),
        OUT_OR => OUT_OR(12)
    );

    G13 : OrGate
    port map(
        A => A(13),
        B => B(13),
        OUT_OR => OUT_OR(13)
    );

    G14 : OrGate
    port map(
        A => A(14),
        B => B(14),
        OUT_OR => OUT_OR(14)
    );

    G15 : OrGate
    port map(
        A => A(15),
        B => B(15),
        OUT_OR => OUT_OR(15)
    );

end Structural;