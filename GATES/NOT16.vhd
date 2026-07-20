library ieee;
use IEEE.std_logic_1164.all;

entity Not16 is
 Port (A : in STD_LOGIC_VECTOR(15 downto 0);
 OUT_NOT : out STD_LOGIC_VECTOR(15 downto 0)
  );
 
 
end Not16;

architecture Structural of Not16 is 

component NotGate
Port(A : in STD_LOGIC ;
OUT_NOT : out STD_LOGIC
);
end component;

begin

    H0 : NotGate
    port map(
        A => A(0),
        OUT_NOT => OUT_NOT(0)
    );

    H1 : NotGate
    port map(
        A => A(1),
        OUT_NOT => OUT_NOT(1)
    );

    H2 : NotGate
    port map(
        A => A(2),
        OUT_NOT => OUT_NOT(2)
    );

    H3 : NotGate
    port map(
        A => A(3),
        OUT_NOT => OUT_NOT(3)
    );

    H4 : NotGate
    port map(
        A => A(4),
        OUT_NOT => OUT_NOT(4)
    );

    H5 : NotGate
    port map(
        A => A(5),
        OUT_NOT => OUT_NOT(5)
    );

    H6 : NotGate
    port map(
        A => A(6),
        OUT_NOT => OUT_NOT(6)
    );

    H7 : NotGate
    port map(
        A => A(7),
        OUT_NOT => OUT_NOT(7)
    );

    H8 : NotGate
    port map(
        A => A(8),
        OUT_NOT => OUT_NOT(8)
    );

    H9 : NotGate
    port map(
        A => A(9),
        OUT_NOT => OUT_NOT(9)
    );

    H10 : NotGate
    port map(
        A => A(10),
        OUT_NOT => OUT_NOT(10)
    );

    H11 : NotGate
    port map(
        A => A(11),
        OUT_NOT => OUT_NOT(11)
    );

    H12 : NotGate
    port map(
        A => A(12),
        OUT_NOT => OUT_NOT(12)
    );

    H13 : NotGate
    port map(
        A => A(13),
        OUT_NOT => OUT_NOT(13)
    );

    H14 : NotGate
    port map(
        A => A(14),
        OUT_NOT => OUT_NOT(14)
    );

    H15 : NotGate
    port map(
        A => A(15),
        OUT_NOT => OUT_NOT(15)
    );



end Structural;
