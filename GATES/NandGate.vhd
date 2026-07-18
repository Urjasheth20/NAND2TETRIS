library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NandGate is
    port (
        a        : in STD_LOGIC;
        b  : in STD_LOGIC;
        out_Nand : out STD_LOGIC 
    );
end NandGate;

architecture Dataflow of NandGate is 
    begin
        out_Nand <= not (a and b);
end Dataflow;

