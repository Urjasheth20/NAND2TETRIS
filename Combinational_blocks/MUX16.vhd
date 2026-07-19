

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX16 is
  Port (
  I0 : in std_logic_vector(15 downto 0);
  I1 : in std_logic_vector(15 downto 0);
  SEL : in std_logic;
  OUT_MUX : out std_logic_vector(15 downto 0)
  
  );
end MUX16;

architecture Structural of MUX16 is
component Mux
port(
IN1 : in std_logic;
IN2 : in std_logic;
SEL : in std_logic;
OUT_MUX : out std_logic);
end component;

begin

A0: Mux 
port map(
IN1 => I0(0),
IN2 => I1(0),
SEL => SEL,
OUT_MUX => OUT_MUX(0)
);

A1: Mux 
port map(
IN1 => I0(1),
IN2 => I1(1),
SEL => SEL,
OUT_MUX => OUT_MUX(1)
);

A2: Mux 
port map(
IN1 => I0(2),
IN2 => I1(2),
SEL => SEL,
OUT_MUX => OUT_MUX(2)
);

A3: Mux 
port map(
IN1 => I0(3),
IN2 => I1(3),
SEL => SEL,
OUT_MUX => OUT_MUX(3)
);

A4: Mux 
port map(
IN1 => I0(4),
IN2 => I1(4),
SEL => SEL,
OUT_MUX => OUT_MUX(4)
);

A5: Mux 
port map(
IN1 => I0(5),
IN2 => I1(5),
SEL => SEL,
OUT_MUX => OUT_MUX(5)
);

A6: Mux 
port map(
IN1 => I0(6),
IN2 => I1(6),
SEL => SEL,
OUT_MUX => OUT_MUX(6)
);

A7: Mux 
port map(
IN1 => I0(7),
IN2 => I1(7),
SEL => SEL,
OUT_MUX => OUT_MUX(7)
);

A8: Mux 
port map(
IN1 => I0(8),
IN2 => I1(8),
SEL => SEL,
OUT_MUX => OUT_MUX(8)
);

A9: Mux
port map(
    IN1 => I0(9),
    IN2 => I1(9),
    SEL => SEL,
    OUT_MUX => OUT_MUX(9)
);

A10: Mux
port map(
    IN1 => I0(10),
    IN2 => I1(10),
    SEL => SEL,
    OUT_MUX => OUT_MUX(10)
);

A11: Mux
port map(
    IN1 => I0(11),
    IN2 => I1(11),
    SEL => SEL,
    OUT_MUX => OUT_MUX(11)
);

A12: Mux
port map(
    IN1 => I0(12),
    IN2 => I1(12),
    SEL => SEL,
    OUT_MUX => OUT_MUX(12)
);

A13: Mux
port map(
    IN1 => I0(13),
    IN2 => I1(13),
    SEL => SEL,
    OUT_MUX => OUT_MUX(13)
);

A14: Mux
port map(
    IN1 => I0(14),
    IN2 => I1(14),
    SEL => SEL,
    OUT_MUX => OUT_MUX(14)
);

A15: Mux
port map(
    IN1 => I0(15),
    IN2 => I1(15),
    SEL => SEL,
    OUT_MUX => OUT_MUX(15)
);






end structural;