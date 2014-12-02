library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NunchuckTest is
end NunchuckTest;

architecture Behavioral of NunchuckTest is

component Nunchuck is
    Port (Clk : in STD_LOGIC;
          SDA : inout STD_LOGIC;
          SCL : out STD_LOGIC;
          ButtonStates : out STD_LOGIC_VECTOR (0 to 5));
end component;

signal Clk : STD_LOGIC := '0';
signal SDA : STD_LOGIC := 'Z';
signal SCL : STD_LOGIC := '0';
signal ButtonStates : STD_LOGIC_VECTOR (0 to 5) := "000000";

constant CLK_PERIOD : time := 10ns;

begin

NunchuckPM : Nunchuck port map (
    Clk => Clk,
    SDA => SDA,
    SCL => SCL,
    ButtonStates => ButtonStates);

ClockProc : process
begin
    Clk <= '0';
    wait for CLK_PERIOD / 2;
    Clk <= '1';
    wait for CLK_PERIOD / 2;
end process;

--NACK : process
--begin
--    wait for 175us;
--    SDA <= '1';
--    wait for 10us;
--    SDA <= 'Z';
--    wait;
--end process;

end Behavioral;
