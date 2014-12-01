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

type STATE_TYPE is (Handshake, Byte1, Byte2, Byte3, Byte4, Data, Idle); 
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
                if InternalDataTick = '1' then
                    if counter = 8 then
                        counter <= 0;
                        state <= Handshake;
                    else
                        counter <= counter + 1;
                    end if;
                end if;
            when HandShake =>
                InternalStart <= '1';
                InternalReadWrite <= '0'; -- write
                if InternalDataTick = '1' then
                    if counter = 8 then
                        counter <= 0;
                        state <= Byte1;
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
                InternalDataIn <= "11110000"; -- init nunchuck's first register byte 1 (0xF0)
                if InternalDataTick = '1' then
                    if counter = 8 then
                        counter <= 0;
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
                InternalDataIn <= "01010101"; -- init nunchuck's first register byte 2 (0x55)
                if InternalDataTick = '1' then
                    if counter = 8 then
                        counter <= 0;
                        state <= Byte3;
                    else
                        counter <= counter + 1;
                    end if;
                    if InternalStop = '1' then
                        state <= Idle;
                        counter <= 0;
                    end if;
                end if;
            when Byte3 =>
                InternalDataIn <= "11111011"; -- init nunchuck's second register byte 1 (0xFB)
                if InternalDataTick = '1' then
                    if counter = 8 then
                        counter <= 0;
                        state <= Byte4;
                    else
                        counter <= counter + 1;
                    end if;
                    if InternalStop = '1' then
                        state <= Idle;
                        counter <= 0;
                    end if;
                end if;
            when Byte4 =>
                InternalDataIn <= "00000000"; -- init nunchuck's second register byte 2 (0x00)
                if InternalDataTick = '1' then
                    if counter = 8 then
                        counter <= 0;
                        state <= Data;
                    else
                        counter <= counter + 1;
                    end if;
                    if InternalStop = '1' then
                        state <= Idle;
                        counter <= 0;
                    end if;
                end if;
            when Data =>
                InternalReadWrite <= '1';
                if InternalDataTick = '1' then
                    if counter = 53 then
                        counter <= 0;
                        state <= Data;
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
