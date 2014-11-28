library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NunchuckTest is
end NunchuckTest;

architecture Behavioral of NunchuckTest is

component Nunchuck is
    Port (Clk : in STD_LOGIC;
          SDAIn : in STD_LOGIC;
          SCL : out STD_LOGIC;
          SDAOut : out STD_LOGIC;
          ButtonStates : out STD_LOGIC_VECTOR (0 to 5));
end component;

signal Clk : STD_LOGIC := '0';
signal SDAIn : STD_LOGIC := '0';
signal SCL : STD_LOGIC := '0';
signal SDAOut : STD_LOGIC := '0';
signal ButtonStates : STD_LOGIC_VECTOR (0 to 5) := "000000";

constant CLK_PERIOD : time := 10ns;

begin

NunchuckPM : Nunchuck port map (
    Clk => Clk,
    SDAIn => SDAIn,
    SCL => SCL,
    SDAOut => SDAOut,
    ButtonStates);

ClockProc : process
begin
    Clk <= '0';
    wait for CLK_PERIOD / 2;
    Clk <= '1';
    wait for CLK_PERIOD / 2;
end process;


end Behavioral;
