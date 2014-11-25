--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FSMWriteTest is
end FSMWriteTest;

architecture Behavioral of FSMWriteTest is

component FSMWrite is
    Port (Clk : in STD_LOGIC;
          SCL : in STD_LOGIC;
          DataTick : in STD_LOGIC;
          SDAIn : in STD_LOGIC;
          Data : in STD_LOGIC_VECTOR (1 to 8);
          GoWrite : in STD_LOGIC;
          SDAOut : out STD_LOGIC;
          DoneWrite : out STD_LOGIC);
end component;

component SCLGenerator is
    Port (Clk : in STD_LOGIC;
          SlowClock : in STD_LOGIC;
          Start : in STD_LOGIC;
          Stop : in STD_LOGIC;
          SCL : out STD_LOGIC;
          DataTick : out STD_LOGIC);
end component;

constant CLK_PERIOD : time := 10ns;
constant SLOW_CLK_PERIOD : time := 10us;
constant SCL_PERIOD : time := 4*SLOW_CLK_PERIOD;

signal Clk : STD_LOGIC := '0';
signal Data : STD_LOGIC_VECTOR (1 to 8) := "11010100";
signal GoWrite : STD_LOGIC := '0';
signal SDAIn : STD_LOGIC := '0';
signal SDAOut : STD_LOGIC := '0';
signal DoneWrite : STD_LOGIC := '0';
signal SCL : STD_LOGIC := '1';
signal SlowClock : STD_LOGIC := '0';
signal Start : STD_LOGIC := '1';
signal Stop : STD_LOGIC := '0';
signal DataTick : STD_LOGIC := '0';

begin

FSMwrt : FSMWrite port map (Clk => Clk,
                            SCL => SCL,
                            DataTick => DataTick,
                            Data => Data,
                            GoWrite => GoWrite,
                            SDAOut => SDAOut,
                            SDAIn => SDAIn,
                            DoneWrite => DoneWrite);
                           
SCLGen : SCLGenerator port map (Clk => Clk,
                                SlowClock => SlowClock,
                                Start => Start,
                                Stop => Stop,
                                SCL => SCL,
                                DataTick => DataTick);


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

GoWriteProc : process
begin
    GoWrite <= '0';
    wait for SLOW_CLK_PERIOD * 106;
    GoWrite <= '1';
    wait for SLOW_CLK_PERIOD * 4;
    GoWrite <= '0';
end process;

SDAInProc : process
begin
    SDAIn<= '0';
    wait for SLOW_CLK_PERIOD * 114 +  SCL_PERIOD*6;
    SDAIn <= '1';
    wait for SLOW_CLK_PERIOD * 4;
    SDAIn <= '0';
end process;

end Behavioral;
