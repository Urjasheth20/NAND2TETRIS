library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- 1. THE ENTITY: A testbench entity is ALWAYS completely empty.
-- It has no physical pins because it's just a simulation wrapper.
entity mux_2x1_tb is
end mux_2x1_tb;

architecture Behavioral of mux_2x1_tb is

    -- 2. Declare the Component we are testing (the Unit Under Test - UUT)
    component Mux is
        port (
        IN1     : in  STD_LOGIC;
        IN2     : in  STD_LOGIC;
        SEL     : in  STD_LOGIC;
        OUT_MUX : out STD_LOGIC
    );
    end component;

    -- 3. Declare internal signals to hook up to the UUT's pins
    -- We initialize our test input to '0'
    signal tb_in1  : STD_LOGIC := '0';
    signal tb_in2  : STD_LOGIC := '0';
    signal tb_in3  : STD_LOGIC := '0';
    signal tb_out1 : STD_LOGIC;

begin

    -- 4. Instantiate the UUT and wire our test signals to its ports
    UUT: Mux port map (
        IN1 => tb_in1,
        IN2 => tb_in2,
        SEL => tb_in3,

        OUT_MUX => tb_out1
    );

    -- 5. The Stimulus Process: This is where we act like the physical switches
   -- The Stimulus Process for a MUX design
    stim_proc: process
    begin
        -------------------------------------------------------------
        -- SEL = '0': OUT_MUX should follow IN1
        -------------------------------------------------------------
        tb_in3 <= '0'; -- SEL
        
        tb_in1 <= '0'; tb_in2 <= '0';
        wait for 10 ns;
        
        tb_in1 <= '1'; tb_in2 <= '0'; -- Expect output '1'
        wait for 10 ns;
        
        tb_in1 <= '0'; tb_in2 <= '1'; -- Expect output '0'
        wait for 10 ns;
        
        tb_in1 <= '1'; tb_in2 <= '1'; -- Expect output '1'
        wait for 10 ns;

        -------------------------------------------------------------
        -- SEL = '1': OUT_MUX should follow IN2
        -------------------------------------------------------------
        tb_in3 <= '1'; -- SEL
        
        tb_in1 <= '0'; tb_in2 <= '0';
        wait for 10 ns;
        
        tb_in1 <= '1'; tb_in2 <= '0'; -- Expect output '0'
        wait for 10 ns;
        
        tb_in1 <= '0'; tb_in2 <= '1'; -- Expect output '1'
        wait for 10 ns;
        
        tb_in1 <= '1'; tb_in2 <= '1'; -- Expect output '1'
        wait for 10 ns;
        
        wait; 
    end process;

end Behavioral;