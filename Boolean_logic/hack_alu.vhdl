library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Hack_ALU is
    port (
        X       : in  STD_LOGIC_VECTOR(15 downto 0);
        Y       : in  STD_LOGIC_VECTOR(15 downto 0);

        ZX      : in  STD_LOGIC;
        NX      : in  STD_LOGIC;
        ZY      : in  STD_LOGIC;
        NY      : in  STD_LOGIC;
        F       : in  STD_LOGIC;
        NO      : in  STD_LOGIC;

        OUT_ALU : out STD_LOGIC_VECTOR(15 downto 0);
        ZR      : out STD_LOGIC;
        NG      : out STD_LOGIC
    );
end entity Hack_ALU;


architecture Structural of Hack_ALU is

    signal X_ZERO    : STD_LOGIC_VECTOR(15 downto 0);
    signal X_MOD     : STD_LOGIC_VECTOR(15 downto 0);
    signal ZX_BAR    : STD_LOGIC;
    signal ZX_BAR_16 : STD_LOGIC_VECTOR(15 downto 0);
    signal NX_16     : STD_LOGIC_VECTOR(15 downto 0);

    signal Y_ZERO    : STD_LOGIC_VECTOR(15 downto 0);
    signal Y_MOD     : STD_LOGIC_VECTOR(15 downto 0);
    signal ZY_BAR    : STD_LOGIC;
    signal ZY_BAR_16 : STD_LOGIC_VECTOR(15 downto 0);
    signal NY_16     : STD_LOGIC_VECTOR(15 downto 0);

    signal AND_RESULT : STD_LOGIC_VECTOR(15 downto 0);
    signal ADD_RESULT : STD_LOGIC_VECTOR(15 downto 0);
    signal F_RESULT   : STD_LOGIC_VECTOR(15 downto 0);

    signal NO_16        : STD_LOGIC_VECTOR(15 downto 0);
    signal FINAL_RESULT : STD_LOGIC_VECTOR(15 downto 0);

    signal ADD_COUT : STD_LOGIC;

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
    NX_16     <= (others => NX);

    ZERO_X : entity work.And16
        port map (
            A       => X,
            B       => ZX_BAR_16,
            OUT_AND => X_ZERO
        );

    NEGATE_X : entity work.Exor16
        port map (
            A        => X_ZERO,
            B        => NX_16,
            OUT_EXOR => X_MOD
        );

    NOT_ZY : entity work.NotGate
        port map (
            A       => ZY,
            OUT_NOT => ZY_BAR
        );

    ZY_BAR_16 <= (others => ZY_BAR);
    NY_16     <= (others => NY);

    ZERO_Y : entity work.And16
        port map (
            A       => Y,
            B       => ZY_BAR_16,
            OUT_AND => Y_ZERO
        );

    NEGATE_Y : entity work.Exor16
        port map (
            A        => Y_ZERO,
            B        => NY_16,
            OUT_EXOR => Y_MOD
        );

    AND_FUNCTION : entity work.And16
        port map (
            A       => X_MOD,
            B       => Y_MOD,
            OUT_AND => AND_RESULT
        );

    ADD_FUNCTION : entity work.Adder_16
        port map (
            A    => X_MOD,
            B    => Y_MOD,
            SUM  => ADD_RESULT,
            COUT => ADD_COUT
        );

    FUNCTION_MUX : entity work.MUX16
        port map (
            IN1     => AND_RESULT,
            IN2     => ADD_RESULT,
            SEL     => F,
            OUT_MUX => F_RESULT
        );

    NO_16 <= (others => NO);

    NEGATE_OUTPUT : entity work.Exor16
        port map (
            A        => F_RESULT,
            B        => NO_16,
            OUT_EXOR => FINAL_RESULT
        );

    OUT_ALU <= FINAL_RESULT;

    LOW_BITS_OR : entity work.Or8Way
        port map (
            IN1    => FINAL_RESULT(7 downto 0),
            OUT_OR => LOW_OR
        );

    HIGH_BITS_OR : entity work.Or8Way
        port map (
            IN1    => FINAL_RESULT(15 downto 8),
            OUT_OR => HIGH_OR
        );

    FLAG_OR : entity work.OrGate
        port map (
            A      => LOW_OR,
            B      => HIGH_OR,
            OUT_OR => ANY_OR
        );

    ZERO_FLAG : entity work.NotGate
        port map (
            A       => ANY_OR,
            OUT_NOT => ZR
        );

    NG <= FINAL_RESULT(15);

end architecture Structural;