-- Finite State Machine Transitions for the I2C protocol

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FSMI2CTransitions is
    Port (Clk : in STD_LOGIC;
          SCLTick : in STD_LOGIC;
          DataTick : in STD_LOGIC;
          SCLFallTick : in STD_LOGIC;
          SDAIn : in STD_LOGIC;
          SCL : in STD_LOGIC;
          StartCommand : in STD_LOGIC;
          StopCommand : in STD_LOGIC;
          ReadWrite : in STD_LOGIC;
          DoneAddress : in STD_LOGIC;
          DoneRead : in STD_LOGIC;
          DoneWrite : in STD_LOGIC;
          SDAOut : out STD_LOGIC;
          GoAddress : out STD_LOGIC;
          GoRead : out STD_LOGIC;
          GoWrite : out STD_LOGIC;
          GoStartSCL : out STD_LOGIC;
          DataOutReady : out STD_LOGIC);
end FSMI2CTransitions;


architecture Behavioral of FSMI2CTransitions is


type STATE_TYPE is (Idle, Start, Address, WaitAddress, Read, WaitRead, Write, WaitWrite, WaitAck, ReadAck, Stop); 
signal state : STATE_TYPE;

begin

FSMGlobalTransitions : process(Clk, SCLTick, DataTick, SDAIn, StartCommand, StopCommand, ReadWrite, DoneRead, DoneAddress, DoneWrite)
begin
    if Clk'event and Clk = '1' then
        case state is
            when Idle =>
                if StartCommand = '1' then
                    state <= Start;
                    GoStartSCL <= '1';
                    SDAOut <= '0';
                else
                    state <= Idle;
                    SDAOut <= 'Z';
                    GoAddress <= '0';
                    GoRead <= '0';
                    GoWrite <= '0';
                    GoStartSCL <= '0';
                end if;
            when Start =>
                if DataTick = '1' then
                    GoStartSCL <= '0';
                    state <= Address;
                    SDAOut <= 'Z';
                    GoAddress <= '1';
                else
                    state <= Start;
                end if;
            when Address =>
               if DataTick = '1' then
                   state <= WaitAddress;
                   GoAddress <= '0';
               end if;
            when WaitAddress =>
                SDAOut <= 'Z';
                if DoneAddress = '1' then
                    if ReadWrite = '1' then
                        state <= Read;
                        SDAOut <= '1';
                    else
                        state <= Write;
                        SDAOut <= '0';
                    end if;
                else
                    state <= WaitAddress;
                end if;
            when Read =>
                SDAOut <= '1';
                if SCLTick = '1' then
                   state <= WaitAck;
                end if;
            when WaitRead =>
                SDAOut <= 'Z';
                if SCLTick = '1' then
                    GoRead <= '0';
                    if DoneRead = '1' then
                        state <= ReadAck;
                        DataOutReady <= '1';
                    else
                        state <= WaitRead;
                    end if;
                end if;
            when Write =>
                SDAOut <= '0';
                if SCLTick = '1' then
                    state <= WaitAck;
                end if;
            when WaitWrite =>
                SDAOut <= 'Z';
                if SCLTick = '1' then
                    GoWrite <= '0';
                    if DoneWrite = '1' then
                        state <= ReadAck;
                    else
                        state <= WaitWrite;
                    end if;
                end if;
            when WaitAck =>
                if DataTick = '1' then
                    SDAOut <= 'Z';
                    state <= ReadAck;
                end if;
            when ReadAck =>
                if SCLFallTick = '1' then
                    if StopCommand = '1' then -- restart sending the address
                       state <= Stop; -- it needs to stop first otherwise it doensn't understand that it restarted
                    else -- ACK
                        if ReadWrite = '1' then
                            state <= WaitRead;
                            GoRead <= '1';
                        else
                            state <= WaitWrite;
                            GoWrite <= '1';
                        end if;
                    end if;
                end if;
            when Stop =>
                SDAOut <= '0';
                if SCLFallTick = '1' then
                    state <= Idle;
                end if;
                
                if DataTick = '1' then
                    SDAOut <= '1';
                end if;
        end case;
    end if;
end process;

end Behavioral;
