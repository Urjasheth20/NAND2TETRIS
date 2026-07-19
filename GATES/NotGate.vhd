library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity NotGate is
    port (
        A        : in STD_LOGIC;
        OUT_NOT  : out STD_LOGIC 
    );
end Notgate;
architecture Structural of NotGate is

    -- Declare the primitive NAND gate we are using
    component NandGate is
        Port ( 
            A : in STD_LOGIC;
            B : in STD_LOGIC;
            OUT_NAND : out STD_LOGIC
        );
    end component;

begin

    -- Wire it up! 
    U1: NandGate port map (
        A => A,             -- Plug in1 into the NAND's 'A' pin
        B => A,             -- Plug in1 into the NAND's 'B' pin 
        OUT_NAND => OUT_NOT -- Connect the NAND's output to the NOT's output
    );

end Structural;