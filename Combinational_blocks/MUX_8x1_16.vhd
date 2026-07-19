library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_8x1 is
    Port (
        I0 : in STD_LOGIC_VECTOR(15 downto 0);
        I1 : in STD_LOGIC_VECTOR(15 downto 0);
        I2 : in STD_LOGIC_VECTOR(15 downto 0);
        I3 : in STD_LOGIC_VECTOR(15 downto 0);
        I4 : in STD_LOGIC_VECTOR(15 downto 0);
        I5 : in STD_LOGIC_VECTOR(15 downto 0);
        I6 : in STD_LOGIC_VECTOR(15 downto 0);
        I7 : in STD_LOGIC_VECTOR(15 downto 0);
        SEL : in STD_LOGIC_VECTOR(2 downto 0);
        OUT_MUX : out STD_LOGIC_VECTOR(15 downto 0)
    );
end MUX_8x1;

architecture Structural of MUX_8x1 is

    component MUX_4X1
        Port(
            I0 : in STD_LOGIC_VECTOR(15 downto 0);
            I1 : in STD_LOGIC_VECTOR(15 downto 0);
            I2 : in STD_LOGIC_VECTOR(15 downto 0);
            I3 : in STD_LOGIC_VECTOR(15 downto 0);
            SEL : in STD_LOGIC_VECTOR(1 downto 0);
            OUT_MUX : out STD_LOGIC_VECTOR(15 downto 0)
        );
    end component;

    component MUX16
        Port(
            IN1 : in STD_LOGIC_VECTOR(15 downto 0);
            IN2 : in STD_LOGIC_VECTOR(15 downto 0);
            SEL : in STD_LOGIC;
            OUT_MUX : out STD_LOGIC_VECTOR(15 downto 0)
        );
    end component;

    signal S1 : STD_LOGIC_VECTOR(15 downto 0);
    signal S2 : STD_LOGIC_VECTOR(15 downto 0);

begin

    G0 : MUX_4X1
    port map(
        I0 => I0,
        I1 => I1,
        I2 => I2,
        I3 => I3,
        SEL => SEL(1 downto 0),
        OUT_MUX => S1
    );

    G1 : MUX_4X1
    port map(
        I0 => I4,
        I1 => I5,
        I2 => I6,
        I3 => I7,
        SEL => SEL(1 downto 0),
        OUT_MUX => S2
    );

    G2 : MUX16
    port map(
        IN1 => S1,
        IN2 => S2,
        SEL => SEL(2),
        OUT_MUX => OUT_MUX
    );

end Structural;