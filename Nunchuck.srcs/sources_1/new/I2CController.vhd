--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity I2CController is
    Port (Clk : in STD_LOGIC;
          SDAIn : in STD_LOGIC;
          DataIn : in STD_LOGIC_VECTOR (1 to 8);
          ReadWrite : in STD_LOGIC;
          SlaveAddress : in STD_LOGIC_VECTOR (1 to 7);
          Start : in STD_LOGIC;
          Stop : out STD_LOGIC;
          SCL : out STD_LOGIC;
          SDAOut : out STD_LOGIC;
          DataOutReady : out STD_LOGIC;
          DataOut : out STD_LOGIC_VECTOR (1 to 8));
end I2CController;

architecture Behavioral of I2CController is

component ClockGenerator is
    Port (Clk : in STD_LOGIC;
          Tick : out STD_LOGIC);
end component;

component SCLGenerator is
    Port (Clk : in STD_LOGIC;
          SlowClock : in STD_LOGIC;
          Start : in STD_LOGIC;
          Stop : in STD_LOGIC;
          SCL : out STD_LOGIC;
          SCLTick : out STD_LOGIC;
          DataTick : out STD_LOGIC);
end component;

component FSMAddress
    Port (Clk : in STD_LOGIC;
          DataTick : in STD_LOGIC;
          Address : in STD_LOGIC_VECTOR (1 to 7);
          GoAddress : in STD_LOGIC;
          SDAOut : out STD_LOGIC;
          DoneAddress : out STD_LOGIC);
end component;

component FSMRead
    Port (Clk : in STD_LOGIC;
          SCLTick : in STD_LOGIC;
          DataTick : in STD_LOGIC;
          SDAIn : in STD_LOGIC;
          GoRead : in STD_LOGIC;
          SDAOut : out STD_LOGIC;
          DoneRead : out STD_LOGIC;
          Data : out STD_LOGIC_VECTOR(1 to 8));
end component;

component FSMWrite
    Port (Clk : in STD_LOGIC;
          SCL : in STD_LOGIC;
          DataTick : in STD_LOGIC;
          SDAIn : in STD_LOGIC;
          Data : in STD_LOGIC_VECTOR (1 to 8);
          GoWrite : in STD_LOGIC;
          SDAOut : out STD_LOGIC;
          DoneWrite : out STD_LOGIC);
end component;

component FSMI2CTransitions
    Port (Clk : in STD_LOGIC;
          SCLTick : in STD_LOGIC;
          DataTick : in STD_LOGIC;
          SDAIn : in STD_LOGIC;
          SCL : in STD_LOGIC;
          StartCommand : in STD_LOGIC;
          ReadWrite : in STD_LOGIC;
          DoneAddress : in STD_LOGIC;
          DoneRead : in STD_LOGIC;
          DoneWrite : in STD_LOGIC;
          SDAOut : out STD_LOGIC;
          GoAddress : out STD_LOGIC;
          GoRead : out STD_LOGIC;
          GoWrite : out STD_LOGIC;
          GoStartSCL : out STD_LOGIC;
          DataReady : out STD_LOGIC);
end component;

signal InternalSlowClock: STD_LOGIC := '0';
signal InternalSCLTick : STD_LOGIC := '0';
signal InternalDataTick : STD_LOGIC := '0';
signal InternalDoneAddress : STD_LOGIC := '0';
signal InternalDoneRead : STD_LOGIC := '0';
signal InternalDoneWrite : STD_LOGIC := '0';
signal InternalGoAddress : STD_LOGIC := '0';
signal InternalGoRead : STD_LOGIC := '0';
signal InternalGoWrite : STD_LOGIC := '0';
signal InternalStop : STD_LOGIC := '0';
signal InternalSCL : STD_LOGIC := '1';
signal InternalGoStartSCL : STD_LOGIC := '0';

begin

Stop <= InternalStop;

ClkGenPM : ClockGenerator port map (
    Clk => Clk,
    Tick => InternalSlowClock);

SCLGenPM : SCLGenerator port map (
    Clk => Clk,
    SlowClock => InternalSlowClock,
    Start => InternalGoStartSCL,
    Stop => InternalStop,
    SCL => SCL,
    SCLTick => InternalSCLTick,
    DataTick => InternalDataTick);

FSMI2CPM : FSMI2CTransitions port map (
    Clk => Clk,
    SCLTick => InternalSCLTick,
    DataTick => InternalDataTick,
    SDAIn => SDAIn,
    SDAOut => SDAOut,
    SCL => InternalSCL,
    StartCommand => Start,
    ReadWrite => ReadWrite,
    DoneAddress => InternalDoneAddress,
    DoneRead => InternalDoneRead, 
    DoneWrite => InternalDoneWrite,
    GoAddress => InternalGoAddress,
    GoWrite => InternalGoWrite,
    GoRead => InternalGoRead,
    GoStartSCL => InternalGoStartSCL,
    DataReady => DataOutReady);

FSMWritePM : FSMWrite port map (
    Clk => Clk,
    SCL => InternalSCL,
    DataTick => InternalDataTick,
    SDAIn => SDAIn,
    Data => DataIn,
    GoWrite => InternalGoWrite,
    DoneWrite => InternalDoneWrite,
    SDAOut => SDAOut);

FSMReadPM : FSMRead port map (
    Clk => Clk,
    SCLTick => InternalSCLTick,
    DataTick => InternalDataTick,
    SDAIn => SDAIn,
    GoRead => InternalGoRead,
    DoneRead => InternalDoneRead,
    SDAOut => SDAOut,
    Data => DataOut);

FSMAddressPM : FSMAddress port map(
    Clk => Clk,
    DataTick => InternalDataTick,
    Address => SlaveAddress,
    GoAddress => InternalGoAddress,
    SDAOut => SDAOut,
    DoneAddress => InternalDoneAddress);

end Behavioral;
