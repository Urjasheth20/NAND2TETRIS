library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bit_16_reg is
    Port (
        D_IN  : in  STD_LOGIC_VECTOR(15 downto 0);
        LOAD  : in  STD_LOGIC;
        CLK   : in  STD_LOGIC;
        D_OUT : out STD_LOGIC_VECTOR(15 downto 0)
    );
end bit_16_reg;

architecture Structural of bit_16_reg is

component bit_1_reg
    Port (
        D_IN  : in  STD_LOGIC;
        LOAD  : in  STD_LOGIC;
        CLK   : in  STD_LOGIC;
        D_OUT : out STD_LOGIC
    );
end component;

begin

REG0 : bit_1_reg
port map(
    D_IN  => D_IN(0),
    LOAD  => LOAD,
    CLK   => CLK,
    D_OUT => D_OUT(0)
);

REG1 : bit_1_reg
port map(
    D_IN  => D_IN(1),
    LOAD  => LOAD,
    CLK   => CLK,
    D_OUT => D_OUT(1)
);

REG2 : bit_1_reg
port map(
    D_IN  => D_IN(2),
    LOAD  => LOAD,
    CLK   => CLK,
    D_OUT => D_OUT(2)
);

REG3 : bit_1_reg
port map(
    D_IN  => D_IN(3),
    LOAD  => LOAD,
    CLK   => CLK,
    D_OUT => D_OUT(3)
);

REG4 : bit_1_reg
port map(
    D_IN  => D_IN(4),
    LOAD  => LOAD,
    CLK   => CLK,
    D_OUT => D_OUT(4)
);

REG5 : bit_1_reg
port map(
    D_IN  => D_IN(5),
    LOAD  => LOAD,
    CLK   => CLK,
    D_OUT => D_OUT(5)
);

REG6 : bit_1_reg
port map(
    D_IN  => D_IN(6),
    LOAD  => LOAD,
    CLK   => CLK,
    D_OUT => D_OUT(6)
);

REG7 : bit_1_reg
port map(
    D_IN  => D_IN(7),
    LOAD  => LOAD,
    CLK   => CLK,
    D_OUT => D_OUT(7)
);

REG8 : bit_1_reg
port map(
    D_IN  => D_IN(8),
    LOAD  => LOAD,
    CLK   => CLK,
    D_OUT => D_OUT(8)
);

REG9 : bit_1_reg
port map(
    D_IN  => D_IN(9),
    LOAD  => LOAD,
    CLK   => CLK,
    D_OUT => D_OUT(9)
);

REG10 : bit_1_reg
port map(
    D_IN  => D_IN(10),
    LOAD  => LOAD,
    CLK   => CLK,
    D_OUT => D_OUT(10)
);

REG11 : bit_1_reg
port map(
    D_IN  => D_IN(11),
    LOAD  => LOAD,
    CLK   => CLK,
    D_OUT => D_OUT(11)
);

REG12 : bit_1_reg
port map(
    D_IN  => D_IN(12),
    LOAD  => LOAD,
    CLK   => CLK,
    D_OUT => D_OUT(12)
);

REG13 : bit_1_reg
port map(
    D_IN  => D_IN(13),
    LOAD  => LOAD,
    CLK   => CLK,
    D_OUT => D_OUT(13)
);

REG14 : bit_1_reg
port map(
    D_IN  => D_IN(14),
    LOAD  => LOAD,
    CLK   => CLK,
    D_OUT => D_OUT(14)
);

REG15 : bit_1_reg
port map(
    D_IN  => D_IN(15),
    LOAD  => LOAD,
    CLK   => CLK,
    D_OUT => D_OUT(15)
);

end Structural;