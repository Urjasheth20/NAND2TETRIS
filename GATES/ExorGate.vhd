library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ExorGate is
    port (
        A        : in  STD_LOGIC;
        B        : in  STD_LOGIC;
        OUT_EXOR : out STD_LOGIC
    );
end entity ExorGate;

architecture Structural of ExorGate is

    signal nand_out1 : STD_LOGIC;
    signal nand_out2 : STD_LOGIC;
    signal nand_out3 : STD_LOGIC;

begin
    NAND1: entity work.NandGate
        port map (
            A        => A,
            B        => B,
            OUT_NAND => nand_out1
        );
    NAND2: entity work.NandGate
        port map (
            A        => A,
            B        => nand_out1,
            OUT_NAND => nand_out2
        );
    NAND3: entity work.NandGate
        port map (
            A        => B,
            B        => nand_out1,
            OUT_NAND => nand_out3
        );
    NAND4: entity work.NandGate
        port map (
            A        => nand_out2,
            B        => nand_out3,
            OUT_NAND => OUT_EXOR
        );

end architecture Structural;