library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- 1. THE ENTITY: A testbench entity is ALWAYS completely empty.
-- It has no physical pins because it's just a simulation wrapper.
entity NotGate_tb is
end NotGate_tb;

architecture Behavioral of NotGate_tb is

    -- 2. Declare the Component we are testing (the Unit Under Test - UUT)
    component NotGate is
        Port ( 
            in1 : in STD_LOGIC;
            out1 : out STD_LOGIC
        );
    end component;

    -- 3. Declare internal signals to hook up to the UUT's pins
    -- We initialize our test input to '0'
    signal tb_in1  : STD_LOGIC := '0';
    signal tb_out1 : STD_LOGIC;

begin

    -- 4. Instantiate the UUT and wire our test signals to its ports
    UUT: NotGate port map (
        in1 => tb_in1,
        out1 => tb_out1
    );

    -- 5. The Stimulus Process: This is where we act like the physical switches
    stim_proc: process
    begin
        -- Test Case 1: Set input to '0'
        tb_in1 <= '0';
        wait for 10 ns; -- Wait 10 nanoseconds for the signal to propagate
        
        -- Test Case 2: Set input to '1'
        tb_in1 <= '1';
        wait for 10 ns;
        
        -- The wait statement with no time stops the simulation process
        wait; 
    end process;

end Behavioral;