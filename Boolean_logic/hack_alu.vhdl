library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Hack_ALU is
    port (
        -- 16-BIT INPUTS
        X   : in  STD_LOGIC_VECTOR(15 downto 0);
        Y   : in  STD_LOGIC_VECTOR(15 downto 0);

        -- CONTROL INPUTS
        ZX  : in  STD_LOGIC;
        NX  : in  STD_LOGIC;
        ZY  : in  STD_LOGIC;
        NY  : in  STD_LOGIC;
        F   : in  STD_LOGIC;
        NO  : in  STD_LOGIC;

        -- OUTPUT
        OUT_ALU : out STD_LOGIC_VECTOR(15 downto 0);

        -- STATUS FLAGS
        ZR  : out STD_LOGIC;
        NG  : out STD_LOGIC
    );
end entity Hack_ALU;


architecture Structural of Hack_ALU is

    -- X INPUT MANIPULATION
    signal X_ZERO : STD_LOGIC_VECTOR(15 downto 0);
    signal X_MOD  : STD_LOGIC_VECTOR(15 downto 0);
    signal ZX_BAR    : STD_LOGIC;
    signal ZX_BAR_16 : STD_LOGIC_VECTOR(15 downto 0);
    signal NX_16 : STD_LOGIC_VECTOR(15 downto 0);

    -- Y INPUT MANIPULATION
    signal Y_ZERO : STD_LOGIC_VECTOR(15 downto 0);
    signal Y_NOT  : STD_LOGIC_VECTOR(15 downto 0);
    signal Y_MOD  : STD_LOGIC_VECTOR(15 downto 0);

    -- ALU FUNCTION RESULTS
    signal AND_RESULT : STD_LOGIC_VECTOR(15 downto 0);
    signal ADD_RESULT : STD_LOGIC_VECTOR(15 downto 0);

    -- FUNCTION SELECT
    signal F_RESULT : STD_LOGIC_VECTOR(15 downto 0);

    -- OUTPUT NEGATION
    signal NOT_RESULT   : STD_LOGIC_VECTOR(15 downto 0);
    signal FINAL_RESULT : STD_LOGIC_VECTOR(15 downto 0);

    -- FLAG LOGIC
    signal LOW_OR  : STD_LOGIC;
    signal HIGH_OR : STD_LOGIC;
    signal ANY_OR  : STD_LOGIC;

    

begin

NOT_ZX : entity work.NotGate
    port map (
        A       => ZX,
        OUT_NOT => ZX_BAR
    );


ZX_BAR_16 <= (others => ZX_BAR);

ZERO_X : entity work.And16
    port map (
        A       => X,
        B       => ZX_BAR_16,
        OUT_AND => X_ZERO
    );

NOT_X : entity work.And16
        







    NG <= FINAL_RESULT(15);


end architecture Structural;