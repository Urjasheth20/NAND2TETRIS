----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.07.2026 13:58:22
-- Design Name: 
-- Module Name: MUX4WAY16 - Structural
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX_4X1 is
  Port (
  I0 : in std_logic_vector(15 downto 0);
  I1 : in std_logic_vector(15 downto 0);
  I2 : in std_logic_vector(15 downto 0);
  I3 : in std_logic_vector(15 downto 0);
  SEL : in std_logic_vector(1 downto 0);
  OUT_MUX : out std_logic_vector(15 downto 0)
  
  );
end MUX_4X1;

architecture Structural of MUX_4X1 is
component MUX16
Port(
IN1 : in std_logic_vector(15 downto 0);
IN2 : in std_logic_vector(15 downto 0);
SEL : in std_logic;
OUT_MUX : out std_logic_vector(15 downto 0)
);
end component;
signal S1 : std_logic_vector(15 downto 0);
signal S2 : std_logic_vector(15 downto 0);

begin

K0 : MUX16
port map(
IN1 => I0,
IN2 => I1,
SEL => SEL(0),
OUT_MUX => S1
);
K1 : MUX16
port map(
IN1 => I2,
IN2 => I3,
SEL => SEL(0),
OUT_MUX => S2
);

K3 : MUX16
port map(
IN1 => S1,
IN2 => S2,
SEL => SEL(1),
OUT_MUX => OUT_MUX
);

end Structural;
