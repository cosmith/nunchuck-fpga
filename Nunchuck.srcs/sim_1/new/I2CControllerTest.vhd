library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity I2CControllerTest is
end I2CControllerTest;

architecture Behavioral of I2CControllerTest is

component I2CController is
    Port (Clk : in STD_LOGIC;
          SDAIn : in STD_LOGIC;
          DataIn : in STD_LOGIC_VECTOR (1 to 8);
          DataReady : in STD_LOGIC;
          ReadWrite : in STD_LOGIC;
          SlaveAddress : in STD_LOGIC_VECTOR (1 to 7);
          Start : in STD_LOGIC;
          Stop : out STD_LOGIC;
          SCL : out STD_LOGIC;
          SDAOut : out STD_LOGIC;
          DataOut : out STD_LOGIC_VECTOR (1 to 8));
end component;

signal Clk : STD_LOGIC;
signal SDAIn : STD_LOGIC := 'Z';
signal DataIn : STD_LOGIC_VECTOR (1 to 8) := "11001100";
signal DataReady : STD_LOGIC := '0';
signal ReadWrite : STD_LOGIC := '1';
signal SlaveAddress :STD_LOGIC_VECTOR (1 to 7) := "1010010";
signal Start : STD_LOGIC := '0';
signal Stop : STD_LOGIC := '0';
signal SCL : STD_LOGIC := '0';
signal SDAOut : STD_LOGIC := '0';
signal DataOut : STD_LOGIC_VECTOR (1 to 8) := "UUUUUUUU";

constant CLK_PERIOD : time := 10ns;
constant SCL_PERIOD : time := 10us;

begin

I2C : I2CController port map (
    Clk => Clk,
    SDAIn => SDAIn,
    DataIn => DataIn,
    DataReady => DataReady,
    ReadWrite => ReadWrite,
    SlaveAddress => SlaveAddress,
    Start => Start,
    Stop => Stop,
    SCL => SCL,
    SDAOut => SDAOut,
    DataOut => DataOut);

ClockProc : process
begin
    Clk <= '0';
    wait for CLK_PERIOD / 2;
    Clk <= '1';
    wait for CLK_PERIOD / 2;
end process;

StartProc : process
begin
    Start <= '0';
    wait for SCL_PERIOD * 4;
    Start <= '1';
    wait for CLK_PERIOD;
    Start <='0';
    wait for SCL_PERIOD * 1000;
end process;

AckProc : process
begin
    SDAIn <= 'Z';
    wait for SCL_PERIOD * 12.5;
    SDAIn <= '0';
    wait for SCL_PERIOD; -- ACK
    SDAIn <= 'Z';
    wait for SCL_PERIOD * 1000;
end process;

ReadProc : process
begin
    SDAIn <= 'Z';
    wait for SCL_PERIOD * 13.5;
    SDAIn <= '1';
    wait for SCL_PERIOD * 4;
    SDAIn <= '0';
    wait for SCL_PERIOD * 4;
    SDAIn <= 'Z';
    wait for SCL_PERIOD * 1000;
end process;

end Behavioral;
