-- Nunchuk I2C Controller

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Nunchuck is
    Port (Clk : in STD_LOGIC;
          SDA : inout STD_LOGIC;
          SCL : out STD_LOGIC;
          ButtonStates : out STD_LOGIC_VECTOR (0 to 5));
end Nunchuck;

architecture Behavioral of Nunchuck is

component I2CController is
    Port (Clk : in STD_LOGIC;
      SDAIn : in STD_LOGIC;
      DataIn : in STD_LOGIC_VECTOR (1 to 8);
      ReadWrite : in STD_LOGIC;
      SlaveAddress : in STD_LOGIC_VECTOR (1 to 7);
      Start : in STD_LOGIC;
      Stop : out STD_LOGIC;
      SCL : out STD_LOGIC;
      SDAOut : out STD_LOGIC;
      DataOut : out STD_LOGIC_VECTOR (1 to 8);
      DataOutReady : out STD_LOGIC);
end component;

signal InternalSlaveAddress : STD_LOGIC_VECTOR (0 to 6) := "1010010";
signal InternalDataIn : STD_LOGIC_VECTOR (0 to 7) := "00000000";
signal InternalReadWrite : STD_LOGIC := '0';
signal InternalDataOutReady : STD_LOGIC := '0';
signal InternalDataOut : STD_LOGIC_VECTOR (0 to 7);
signal InternalStart : STD_LOGIC := '0';
signal InternalStop : STD_LOGIC := '0';

begin

I2C : I2CController port map (
    Clk => Clk,
    SDAIn => SDA,
    DataIn => InternalDataIn,
    ReadWrite => InternalReadWrite,
    SlaveAddress => InternalSlaveAddress,
    Start => InternalStart,
    Stop => InternalStop,
    SCL => SCL,
    SDAOut => SDA,
    DataOut => InternalDataOut,
    DataOutReady => InternalDataOutReady);

process (Clk, InternalDataOutReady, InternalDataOut)
begin
    InternalStart <= '1';
end process;

end Behavioral;
