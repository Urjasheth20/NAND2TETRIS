entity OR16 is
...
end OR16;

architecture Structural of OR16 is

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

    ...