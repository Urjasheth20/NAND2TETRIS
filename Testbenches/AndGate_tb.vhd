library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AndGate_tb is
end entity AndGate_tb;

architecture Behavioral of AndGate_tb is

    signal a_tb       : STD_LOGIC := '0';
    signal b_tb       : STD_LOGIC := '0';
    signal out_And_tb : STD_LOGIC;

begin

    DUT: entity work.AndGate
    port map (
        a       => a_tb,
        b       => b_tb,
        out_And => out_And_tb
    );

    stimulus: process
    begin
        a_tb <= '0';
        b_tb <= '0';
        wait for 10 ns;

        a_tb <= '0';
        b_tb <= '1';
        wait for 10 ns;

        a_tb <= '1';
        b_tb <= '0';
        wait for 10 ns;

        a_tb <= '1';
        b_tb <= '1';
        wait;

  
    end process;

end architecture Behavioral;