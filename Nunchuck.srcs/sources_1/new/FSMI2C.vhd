-- Finite State Machine Transitions for the I2C protocol

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FSMI2CTransitions is
    Port (SDA : in STD_LOGIC;
          SCL : in STD_LOGIC;
          DoneAddress : in STD_LOGIC;
          DoneRead : in STD_LOGIC;
          DoneWrite : in STD_LOGIC;
          GoAddress : out STD_LOGIC;
          GoRead : out STD_LOGIC;
          GoWrite : out STD_LOGIC);
end FSMI2CTransitions;

architecture Behavioral of FSMI2CTransitions is

type STATE_TYPE is (Idle, Start, Address, WaitAddress, Read, WaitRead, Write, WaitWrite, Stop); 
signal state : STATE_TYPE;

begin

FSMGlobalTransitions : process(SCL, SDA)
begin
    if SCL'event then
        case state is
            when Idle =>
                if SCL = '1' and SDA = '0' then
                    state <= Start;
                else
                    state <= Idle;
                end if;
            when Start =>
                if SCL = '1' then
                    state <= Address;
                else
                    state <= Start; 
                end if;
            when Address =>
               if SCL = '1' then
                   GoAddress <= '1';
                   state <= WaitAddress;
               end if;
            when WaitAddress =>
                if SCL = '1' then
                    GoAddress <= '0';
                    if DoneAddress = '1' then
                        if SDA = '1' then
                            state <= Read;
                        else
                            state <= Write;
                        end if;
                    else
                        state <= WaitAddress;
                    end if;
                end if;
            when Read =>
               if SCL = '1' then
                   if SDA = '1' then -- nack
                       state <= Address;
                   else -- ack
                       state <= WaitRead;
                       GoRead <= '1';
                   end if;
                end if;
            when WaitRead =>
                if SCL = '1' then
                    GoRead <= '0';
                    if DoneRead = '1' then
                        state <= Stop;
                    else
                        state <= WaitRead;
                    end if;
                end if;
            when Write =>
               if SCL = '1' then
                   if SDA = '1' then -- nack
                       state <= Address;
                   else -- ack
                       state <= WaitWrite;
                       GoWrite <= '1';
                   end if;
                end if;
            when WaitWrite =>
                if SCL = '1' then
                    GoWrite <= '0';
                    if DoneWrite = '1' then
                        state <= Stop;
                    else
                        state <= WaitWrite;
                    end if;
                end if;
            when Stop =>
                if SCL = '1' then
                    if SDA = '1' then
                        state <= Idle;
                    end if;
                end if;
        end case;
    end if;
end process;

end Behavioral;
