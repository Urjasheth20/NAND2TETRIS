library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_FLIP_FLOP is
    Port (
        D    : in  STD_LOGIC;
        CLK  : in  STD_LOGIC;
        Q    : out STD_LOGIC;
        Qbar : out STD_LOGIC
    );
end D_FLIP_FLOP;

architecture Structural of D_FLIP_FLOP is

    component D_LATCHG
        Port (
            D    : in  STD_LOGIC;
            CLK  : in  STD_LOGIC;
            Q    : out STD_LOGIC;
            Qbar : out STD_LOGIC
        );
    end component;

    component NotGate
        Port (
            A       : in  STD_LOGIC;
            OUT_NOT : out STD_LOGIC
        );
    end component;

    signal CLK_BAR      : STD_LOGIC;
    signal MASTER_Q     : STD_LOGIC;
    signal MASTER_QBAR  : STD_LOGIC;

begin

    -- Invert the clock
    NOT1 : NotGate
    port map(
        A       => CLK,
        OUT_NOT => CLK_BAR
    );

    -- Master D Latch (Active when CLK = 0)
    MASTER : D_LATCHG
    port map(
        D    => D,
        CLK  => CLK_BAR,
        Q    => MASTER_Q,
        Qbar => MASTER_QBAR
    );

    -- Slave D Latch (Active when CLK = 1)
    SLAVE : D_LATCHG
    port map(
        D    => MASTER_Q,
        CLK  => CLK,
        Q    => Q,
        Qbar => Qbar
    );

end Structural;