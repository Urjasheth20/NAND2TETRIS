library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Dmux is
    port (
        -- INPUTS
        IN1 : in STD_LOGIC;
        SEL : in STD_LOGIC;

        OUT1 : out STD_LOGIC;
        OUT2 : out STD_LOGIC
    );
end entity Dmux;

architecture Structural of Dmux is

signal not_out1 : STD_LOGIC;
   
begin
    AND1 : entity work.AndGate
        port map (
            A           => IN1,
            B           => SEL,
            OUT_AND     => OUT1
        );
    
    NOT1 : entity work.NotGate
        port map (
            A           => SEL,
            OUT_NOT     => not_out1
        );
    
    AND2 : entity work.AndGate
        port map (
            A           => IN1,
            B           => not_out1,
            OUT_AND     => OUT2
        );

end architecture Structural;