library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NotGate_tb is
end NotGate_tb;

architecture Behavioral of NotGate_tb is

    signal a       : STD_LOGIC := '0';
    signal out_Not : STD_LOGIC;

begin

    DUT: entity work.NotGate
        port map (
            a       => a,
            out_Not => out_Not
        );

    stimulus: process
    begin

        a <= '0';
        wait for 10 ns;

        a <= '1';
        wait for 10 ns;

        wait;

    end process;

end Behavioral;