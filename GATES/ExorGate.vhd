library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ExorGate is
    port (
        a       : in  STD_LOGIC;
        b       : in  STD_LOGIC;
        out_Exor : out STD_LOGIC
    );
end entity ExorGate;

architecture Structural of ExorGate is

    signal nand_out1 : STD_LOGIC;
    signal nand_out2 : STD_LOGIC;
    signal nand_out3 : STD_LOGIC;
    
    

begin
    NAND1: entity work.NandGate
        port map (
            a        => a,
            b        => b,
            out_Nand => nand_out1
        );
    NAND2: entity work.NandGate
        port map (
            a        => a,
            b        => nand_out1,
            out_Nand => nand_out2
        );
    NAND3: entity work.NandGate
        port map (
            a        => b,
            b        => nand_out1,
            out_Nand => nand_out3
        );
    NAND4: entity work.NandGate
        port map (
            a        => nand_out2,
            b        => nand_out3,
            out_Nand => out_Exor
        );

end architecture Structural;