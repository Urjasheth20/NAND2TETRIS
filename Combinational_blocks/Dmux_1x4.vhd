library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Dmux4Way is
    port (
        IN1  : in  STD_LOGIC;
        SEL  : in  STD_LOGIC_VECTOR(1 downto 0);

        OUT1 : out STD_LOGIC;
        OUT2 : out STD_LOGIC;
        OUT3 : out STD_LOGIC;
        OUT4 : out STD_LOGIC
    );
end entity Dmux4Way;

architecture Behavioral of Dmux4Way is

    signal D1_OUT1 : STD_LOGIC;
    signal D1_OUT2 : STD_LOGIC;

begin

    -- First DMux uses MSB
    DMUX1 : entity work.Dmux
        port map (
            IN1  => IN1,
            SEL  => SEL(1),
            OUT1 => D1_OUT1,
            OUT2 => D1_OUT2
        );

    -- Second DMux uses LSB
    DMUX2 : entity work.Dmux
        port map (
            IN1  => D1_OUT1,
            SEL  => SEL(0),
            OUT1 => OUT1,
            OUT2 => OUT2
        );

    -- Third DMux uses LSB
    DMUX3 : entity work.Dmux
        port map (
            IN1  => D1_OUT2,
            SEL  => SEL(0),
            OUT1 => OUT3,
            OUT2 => OUT4
        );

end architecture Structural;