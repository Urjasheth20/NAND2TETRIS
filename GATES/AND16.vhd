--BITWISE AND OF  16 bits--
library ieee;
use IEEE.std_logic_1164.all;

entity And16 is
    Port(
        A       : in  STD_LOGIC_VECTOR(15 downto 0);
        B       : in  STD_LOGIC_VECTOR(15 downto 0);
        OUT_AND : out STD_LOGIC_VECTOR(15 downto 0)
    );
end And16;

architecture Structural of AND16 is 
    component AndGate
    Port(
        A       : in STD_LOGIC;
        B       : in STD_LOGIC;
        OUT_AND : out STD_LOGIC
    );
end component;
begin
G0 : AndGate
port map(
    A => A(0),
    B => B(0),
    OUT_AND => OUT_AND(0)
);

G1 : AndGate
port map(
    A => A(1),
    B => B(1),
    OUT_AND => OUT_AND(1)
);

G2 : AndGate
port map(
    A => A(2),
    B => B(2),
    OUT_AND => OUT_AND(2)
);

G3 : AndGate
port map(
    A => A(3),
    B => B(3),
    OUT_AND => OUT_AND(3)
);

G4 : AndGate
port map(
    A => A(4),
    B => B(4),
    OUT_AND => OUT_AND(4)
);

G5 : AndGate
port map(
    A => A(5),
    B => B(5),
    OUT_AND => OUT_AND(5)
);

G6 : AndGate
port map(
    A => A(6),
    B => B(6),
    OUT_AND => OUT_AND(6)
);

G7 : AndGate
port map(
    A => A(7),
    B => B(7),
    OUT_AND => OUT_AND(7)
);

G8 : AndGate
port map(
    A => A(8),
    B => B(8),
    OUT_AND => OUT_AND(8)
);

G9 : AndGate
port map(
    A => A(9),
    B => B(9),
    OUT_AND => OUT_AND(9)
);

G10 : AndGate
port map(
    A => A(10),
    B => B(10),
    OUT_AND => OUT_AND(10)
);

G11 : AndGate
port map(
    A => A(11),
    B => B(11),
    OUT_AND => OUT_AND(11)
);

G12 : AndGate
port map(
    A => A(12),
    B => B(12),
    OUT_AND => OUT_AND(12)
);

G13 : AndGate
port map(
    A => A(13),
    B => B(13),
    OUT_AND => OUT_AND(13)
);

G14 : AndGate
port map(
    A => A(14),
    B => B(14),
    OUT_AND => OUT_AND(14)
);

G15 : AndGate
port map(
    A => A(15),
    B => B(15),
    OUT_AND => OUT_AND(15)
);



end Structural
