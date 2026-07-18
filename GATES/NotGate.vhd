library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity NotGate is
    port (
        a        : in STD_LOGIC;
        out_Not  : out STD_LOGIC 
    );
end Notgate;
architecture Structural of NotGate is

    -- Declare the primitive NAND gate we are using
    component NandGate is
        Port ( 
            a : in STD_LOGIC;
            b : in STD_LOGIC;
            out_nand : out STD_LOGIC
        );
    end component;

begin

    -- Wire it up! 
    U1: NandGate port map (
        a => a,        -- Plug in1 into the NAND's 'a' pin
        b => a,        -- Plug in1 into the NAND's 'b' pin 
        out_nand => out_Not -- Connect the NAND's output to the NOT's output
    );

end Structural;