-- 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FSMAddressTest is
end FSMAddressTest;

architecture Behavioral of FSMAddressTest is

component FSMAddress is
    Port (Clk : in STD_LOGIC;
          DataTick : in STD_LOGIC;
          Address : in STD_LOGIC_VECTOR (1 to 7);
          GoAddress : in STD_LOGIC;
          SDAOut : out STD_LOGIC;
          DoneAddress : out STD_LOGIC);
end component;

component SCLGenerator is
    Port (SlowClock : in STD_LOGIC;
          Start : in STD_LOGIC;
          Stop : in STD_LOGIC;
          SCL : out STD_LOGIC;
          DataTick : out STD_LOGIC);
end component;



constant CLK_PERIOD : time := 10ns;
constant SLOW_CLK_PERIOD : time := 10us;

signal Clk : STD_LOGIC;
signal Address : STD_LOGIC_VECTOR (1 to 7) := "1101010";
signal GoAddress : STD_LOGIC := '0';
signal SDAOut : STD_LOGIC := '0';
signal DoneAddress : STD_LOGIC := '0';
signal SCL : STD_LOGIC := '1';
signal SlowClock : STD_LOGIC := '0';
signal Start : STD_LOGIC := '0';
signal Stop : STD_LOGIC := '0';
signal DataTick : STD_LOGIC := '0';

begin

FSMadd : FSMAddress port map (Clk => Clk,
                           DataTick => DataTick,
                           Address => Address,
                           GoAddress => GoAddress,
                           SDAOut => SDAOut,
                           DoneAddress => DoneAddress);
                           
SCLGen : SCLGenerator port map (SlowClock => SlowClock,
                                Start => Start,
                                Stop => Stop,
                                SCL => SCL,
                                DataTick => DataTick);


ClkProc : process
begin
    Clk <= '0';
    wait for CLK_PERIOD / 2;
    Clk <= '1';
    wait for CLK_PERIOD / 2;
end process;

Clock : process
begin
    SlowClock <= '0';
    wait for SLOW_CLK_PERIOD;
    SlowClock <= '1';
    wait for CLK_PERIOD;
end process;

StartStop : process
begin
    Start <= '0';
    Stop <= '0';
    wait for SLOW_CLK_PERIOD * 30;
    Start <= '1';
    wait for SLOW_CLK_PERIOD;
    Start <= '0';
    wait for SLOW_CLK_PERIOD * 100;
    Stop <= '1';
    wait for SLOW_CLK_PERIOD;
    Stop <= '0';
    wait for SLOW_CLK_PERIOD * 100;
end process;

GoAddressProc : process
begin
    GoAddress <= '0';
    wait for SLOW_CLK_PERIOD * 107;
    GoAddress <= '1';
    wait for SLOW_CLK_PERIOD * 5;
    GoAddress <= '0';
end process;

end Behavioral;
