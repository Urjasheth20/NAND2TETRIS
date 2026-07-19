library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NandGate is
    port (
        A        : in STD_LOGIC;
        B        : in STD_LOGIC;
        OUT_NAND : out STD_LOGIC 
    );
end NandGate;

architecture Dataflow of NandGate is 
    begin
        OUT_NAND <= not (A and B);
end Dataflow;