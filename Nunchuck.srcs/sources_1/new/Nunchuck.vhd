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
      Stop : in STD_LOGIC;
      SCL : out STD_LOGIC;
      DataTick : out STD_LOGIC;
      SDAOut : out STD_LOGIC;
      DataOut : out STD_LOGIC_VECTOR (1 to 8);
      DataOutReady : out STD_LOGIC);
end component;

signal InternalSlaveAddress : STD_LOGIC_VECTOR (0 to 6) := "1010010"; -- 0x52
signal InternalDataIn : STD_LOGIC_VECTOR (0 to 7) := "00000000";
signal InternalReadWrite : STD_LOGIC := '0';
signal InternalDataOutReady : STD_LOGIC := '0';
signal InternalDataOut : STD_LOGIC_VECTOR (0 to 7);
signal InternalStart : STD_LOGIC := '0';
signal InternalStop : STD_LOGIC := '0';
signal InternalDataTick : STD_LOGIC := '0';
signal counter : integer := 0;

signal GlobalCounter : integer := 0;

type STATE_TYPE is (Address, Byte1, Byte2, AskData, Data, Idle); 
signal state : STATE_TYPE := Idle;

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
    DataTick => InternalDataTick,
    SDAOut => SDA,
    DataOut => InternalDataOut,
    DataOutReady => InternalDataOutReady);

FSMNunchuck : process(Clk)
begin
    if Clk'event and Clk = '1' then
        case state is
            when Idle =>
                InternalStop <= '1';
                if InternalDataTick = '1' then
                    if counter = 8 then
                        counter <= 0;
                        state <= Address;
                        InternalStart <= '1';
                    else
                        counter <= counter + 1;
                    end if;
                end if;
            when Address =>
                InternalStop <= '0';
                InternalStart <= '0';
                
                if GlobalCounter = 5 then
                    InternalReadWrite <= '1'; -- read
                else
                    InternalReadWrite <= '0'; -- write
                end if;
                
                if InternalDataTick = '1' then
                    if counter = 8 then
                        counter <= 0;
                        if GlobalCounter = 0 or GlobalCounter = 2 then
                            state <= Byte1; -- send handshake
                        elsif GlobalCounter = 4 then
                            state <= AskData; -- send read data signal
                        else
                            state <= Data; -- read data
                        end if;
                    else
                        counter <= counter + 1;
                    end if;
                    if InternalStop = '1' then
                        state <= Idle;
                        counter <= 0;
                    end if;
                end if;
            when Byte1 =>
                InternalStart <= '0';
                if GlobalCounter = 0 then
                    InternalDataIn <= "11110000"; -- init nunchuck's first register byte 1 (0xF0)
                else
                    InternalDataIn <= "11111011";
                end if;
                
                if InternalDataTick = '1' then
                    if counter = 8 then
                        counter <= 0;
                        GlobalCounter <= GlobalCounter + 1;
                        state <= Byte2;
                    else
                        counter <= counter + 1;
                    end if;
                    if InternalStop = '1' then
                        state <= Idle;
                        counter <= 0;
                    end if;
                end if;
            when Byte2 =>
                if GlobalCounter = 1 then
                    InternalDataIn <= "01010101"; -- init nunchuck's first register byte 2 (0x55)
                else
                    InternalDataIn <= "00000000";
                end if;
                if InternalDataTick = '1' then
                    if counter = 8 then
                        counter <= 0;
                        GlobalCounter <= GlobalCounter + 1;
                        state <= Idle;
                    else
                        counter <= counter + 1;
                    end if;
                    if InternalStop = '1' then
                        state <= Idle;
                        counter <= 0;
                    end if;
                end if;
            when AskData =>
                InternalDataIn <= "00000000"; -- ask for data by sending 0x00
                if InternalDataTick = '1' then
                    if counter = 8 then
                        counter <= 0;
                        GlobalCounter <= GlobalCounter + 1;
                        state <= Idle;
                    else
                        counter <= counter + 1;
                    end if;
                    if InternalStop = '1' then
                        state <= Idle;
                        counter <= 0;
                    end if;
                end if;
            when Data =>
                if InternalDataTick = '1' then
                    if counter = 53 then
                        counter <= 0;
                        GlobalCounter <= 0;
                        state <= Idle;
                    else
                        counter <= counter + 1;
                    end if;
                    if InternalStop = '1' then
                        state <= Idle;
                        counter <= 0;
                    end if;
                end if;
        end case;
    end if;
end process;

end Behavioral;
