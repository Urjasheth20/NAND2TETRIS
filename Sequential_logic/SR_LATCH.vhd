----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.07.2026 17:14:09
-- Design Name: 
-- Module Name: SR_LATCH - Structural
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

entity SR_LATCH is
    Port ( S : in STD_LOGIC;
           R : in STD_LOGIC;
           Q : out STD_LOGIC;
           Qbar : out STD_LOGIC);
end SR_LATCH;

architecture Structural of SR_LATCH is
component NandGate is
Port(
A : in std_logic;
B : in std_logic;
OUT_NAND : out std_logic
);
end component;
signal Q_int    : STD_LOGIC;
signal Qbar_int : STD_LOGIC;
begin


Nand1: NandGate
port map(
    A => S,
    B => Qbar_int,
    OUT_NAND => Q_int
);

Nand2: NandGate
port map(
    A => R,
    B => Q_int,
    OUT_NAND => Qbar_int
);


Q <= Q_int;
Qbar <= Qbar_int;
end Structural;
