library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder is
    port (
        A     : in  STD_LOGIC;
        B     : in  STD_LOGIC;
        SUM   : out STD_LOGIC;
        CARRY : out STD_LOGIC
    );
end entity half_adder;

architecture Structural of half_adder is

begin

<<<<<<< HEAD
    EXOR1: entity work.ExorGate 
    port map(
=======
    EXOR1: entity work.ExorGate
        port map ( 
>>>>>>> 2d35d25d68169b14befeeaee906c83eccdbbe92b
        A               => A,
        B               => B,
        out_Exor        => SUM
    );


    AND1: entity work.AndGate
     port map(

        A               => A,
        B               => B,
        out_AND        => CARRY
    );

end architecture Structural;