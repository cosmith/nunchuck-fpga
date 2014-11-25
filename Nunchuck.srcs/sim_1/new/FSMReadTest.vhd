--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FSMReadTest is
end FSMReadTest;

architecture Behavioral of FSMReadTest is

component FSMRead is
    Port (Clk : in STD_LOGIC;
          SCLTick : in STD_LOGIC;
          DataTick : in STD_LOGIC;
          SDAIn : in STD_LOGIC;
          GoRead : in STD_LOGIC;
          SDAOut : out STD_LOGIC;
          DoneRead : out STD_LOGIC;
          Data : out STD_LOGIC_VECTOR(1 to 8));
end component;

component SCLGenerator is
    Port (Clk : in STD_LOGIC;
          SlowClock : in STD_LOGIC;
          Start : in STD_LOGIC;
          Stop : in STD_LOGIC;
          SCL : out STD_LOGIC;
          DataTick : out STD_LOGIC;
          SCLTick : out STD_LOGIC);
end component;

constant CLK_PERIOD : time := 10ns;
constant SLOW_CLK_PERIOD : time := 10us;
constant SCL_PERIOD : time := 4*SLOW_CLK_PERIOD;

signal Clk : STD_LOGIC := '0';
signal GoRead : STD_LOGIC := '0';
signal SDAIn : STD_LOGIC := 'Z';
signal SDAOut : STD_LOGIC := '0';
signal DoneRead : STD_LOGIC := '0';
signal SCL : STD_LOGIC := '1';
signal SCLTick : STD_LOGIC := '0';
signal SlowClock : STD_LOGIC := '0';
signal Start : STD_LOGIC := '1';
signal Stop : STD_LOGIC := '0';
signal DataTick : STD_LOGIC := '0';
signal Data : STD_LOGIC_VECTOR(1 to 8) := "ZZZZZZZZ";

begin

FSMrd : FSMRead port map (Clk => Clk,
                          SCLTick => SCLTick,
                          DataTick => DataTick,
                          Data => Data,
                          GoRead => GoRead,
                          SDAOut => SDAOut,
                          SDAIn => SDAIn,
                          DoneRead => DoneRead);
                           
SCLgen : SCLGenerator port map (Clk => Clk,
                                SlowClock => SlowClock,
                                Start => Start,
                                Stop => Stop,
                                SCL => SCL,
                                DataTick => DataTick,
                                SCLTick => SCLTick);

ClockProc : process
begin
    Clk <= '0';
    wait for CLK_PERIOD / 2;
    Clk <= '1';
    wait for CLK_PERIOD / 2;
end process;

SlowClockProc : process
begin
    SlowClock <= '0';
    wait for SLOW_CLK_PERIOD;
    SlowClock <= '1';
    wait for CLK_PERIOD;
end process;

GoReadProc : process
begin
    GoRead <= '0';
    wait for SCL_PERIOD * 20.5;
    GoRead <= '1';
    wait for SCL_PERIOD;
    GoRead <= '0';
end process;

SDAInProc : process
begin
    SDAIn<= '0';
    wait for SCL_PERIOD * 21.5;
    SDAIn <= '1';
    wait for SCL_PERIOD;
    SDAIn <= '1';
    wait for SCL_PERIOD;
    SDAIn <= '0';
    wait for SCL_PERIOD;
    SDAIn <= '0';
    wait for SCL_PERIOD;
    SDAIn <= '1';
    wait for SCL_PERIOD;
    SDAIn <= '0';
    wait for SCL_PERIOD;
    SDAIn <= '1';
    wait for SCL_PERIOD;
    SDAIn <= '0';
    wait for SLOW_CLK_PERIOD * 114 +  SCL_PERIOD*6;
end process;

end Behavioral;
