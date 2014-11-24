-- 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FSMAddressTest is
end FSMAddressTest;

architecture Behavioral of FSMAddressTest is

component FSMAddress is
    Port (SCL : in STD_LOGIC;
          Address : in STD_LOGIC_VECTOR (1 to 7);
          GoAddress : in STD_LOGIC;
          SDAOut : out STD_LOGIC;
          DoneAddress : out STD_LOGIC);
end component;

constant CLK_PERIOD : time := 10us;

signal SCL : STD_LOGIC := '1';
signal Address : STD_LOGIC_VECTOR (1 to 7) := "1101010";
signal GoAddress : STD_LOGIC := '0';
signal SDAOut : STD_LOGIC := '0';
signal DoneAddress : STD_LOGIC := '0';

begin

uut : FSMAddress port map (SCL => SCL,
                           Address => Address,
                           GoAddress => GoAddress,
                           SDAOut => SDAOut,
                           DoneAddress => DoneAddress);

Clock : process 
begin
    SCL <= '0';
    wait for CLK_PERIOD / 2;
    SCL <= '1';
    wait for CLK_PERIOD / 2;
end process;

GoAddressProc : process
begin
    GoAddress <= '0';
    wait for CLK_PERIOD * 10;
    GoAddress <= '1';
    wait for CLK_PERIOD / 2;
    GoAddress <= '0';
end process;


end Behavioral;
