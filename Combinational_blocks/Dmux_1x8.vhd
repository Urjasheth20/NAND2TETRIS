library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Dmux8Way is
    port (
        IN1  : in  STD_LOGIC;
        SEL  : in  STD_LOGIC_VECTOR(2 downto 0);

        OUT1 : out STD_LOGIC;
        OUT2 : out STD_LOGIC;
        OUT3 : out STD_LOGIC;
        OUT4 : out STD_LOGIC;
        OUT5 : out STD_LOGIC;
        OUT6 : out STD_LOGIC;
        OUT7 : out STD_LOGIC;
        OUT8 : out STD_LOGIC
    );
end entity Dmux8Way;

architecture Behavioral of Dmux8Way is

    signal D1_OUT1 : STD_LOGIC;
    signal D1_OUT2 : STD_LOGIC;

begin

    -- First DMux uses MSB
    DMUX1 : entity work.Dmux
        port map (
            IN1  => IN1,
            SEL  => SEL(2),
            OUT1 => D1_OUT1,
            OUT2 => D1_OUT2
        );

    -- First 4-Way DMux
    DMUX4WAY1 : entity work.Dmux4Way
        port map (
            IN1  => D1_OUT1,
            SEL  => SEL(1 downto 0),
            OUT1 => OUT1,
            OUT2 => OUT2,
            OUT3 => OUT3,
            OUT4 => OUT4
        );

    -- Second 4-Way DMux
    DMUX4WAY2 : entity work.Dmux4Way
        port map (
            IN1  => D1_OUT2,
            SEL  => SEL(1 downto 0),
            OUT1 => OUT5,
            OUT2 => OUT6,
            OUT3 => OUT7,
            OUT4 => OUT8
        );

end architecture Behavioral;