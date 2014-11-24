-- 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SCLGeneratorTest is
end SCLGeneratorTest;

architecture Behavioral of SCLGeneratorTest is

component SCLGenerator is
    Port (Clk : in STD_LOGIC;
          Tick : out STD_LOGIC);
end component;

signal Clk : STD_LOGIC := '0';
signal Tick : STD_LOGIC := '0';

constant CLK_PERIOD : time := 10ns;

begin

uut : SCLGenerator port map (Clk => Clk,
                             Tick => Tick);

Clock : process 
begin
    Clk <= '0';
    wait for CLK_PERIOD / 2;
    Clk <= '1';
    wait for CLK_PERIOD / 2;
end process;


end Behavioral;
