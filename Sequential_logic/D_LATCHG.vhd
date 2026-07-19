----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.07.2026 21:13:10
-- Design Name: 
-- Module Name: D_LATCHG - Structural
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

entity D_LATCHG is
    Port ( D : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC;
           Qbar : out STD_LOGIC);
end D_LATCHG;

architecture Structural of D_LATCHG is

component SR_LATCH 
  port (
  S : in std_logic;
  R : in std_logic;
  Q : out std_logic;
  Qbar : out std_logic
  );
  
end component;

component NandGate
port(
A : in std_logic;
B : in std_logic;
OUT_NAND : out std_logic
);


end component;

component NotGate
port(
A : in std_logic;
OUT_NOT : out std_logic
);
end component;


signal K1 : std_logic;
signal K2 : std_logic;
signal K3 : std_logic;

begin

NAND1 : NandGate
port map(
A => D,
B => CLK,
OUT_NAND => K1);

NOT1 : NotGate
port map(
A => D,
OUT_NOT => K3);

NAND2 : NandGate
port map(
A => K3,
B => CLK,
OUT_NAND => K2
);

SR_LATCH11 : SR_LATCH
port map(
S => K1,
R => K2,
Q => Q,
Qbar => Qbar
);





end Structural;
