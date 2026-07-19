----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.07.2026 21:28:32
-- Design Name: 
-- Module Name: 1_bit_reg - Structural
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

entity bit_1_reg is
    Port ( D_IN : in STD_LOGIC;
           LOAD : in STD_LOGIC;
           CLK : in std_logic;
           D_OUT : out STD_LOGIC
           );
end bit_1_reg;

architecture Structural of bit_1_reg is

component D_ff
port(
D : in std_logic;
CLK : in std_logic;
Q : out std_logic;
Qbar : out std_logic

);

end component;
 component mux_2x1
 port (
 IN1 : in std_logic;
 IN2 : in std_logic;
 SEL : in std_logic;
 OUT_MUX : out std_logic
 );
 end component;
 
 signal K0: std_logic;
 signal K1 : std_logic;

begin

MUX1 : mux_2x1
port map(
IN1 => K1,
IN2 => D_in,
SEL => LOAD,
OUT_MUX => K0
);

D_ff1 : D_ff
port map(
D => K0,
CLK => CLK,
Q => K1
);


D_out <= K1;



end Structural;
