-- generates the SCL signal

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SCLGenerator is
    Port (SlowClock : in STD_LOGIC;
          Start : in STD_LOGIC;
          Stop : in STD_LOGIC;
          SCL : out STD_LOGIC;
          DataTick : out STD_LOGIC);
end SCLGenerator;

architecture Behavioral of SCLGenerator is

type STATE_TYPE is (Idle, Busy); 
signal state : STATE_TYPE := Idle;

signal counter : integer := 0;

begin


SCLproc : process(SlowClock, Start, Stop)
begin
    if SlowClock'event and SlowClock = '1' then
        case state is
            when Idle =>
                if Start = '1' then
                    state <= Busy;
                else
                    state <= Idle;
                    SCL <= '1';
                end if;
            when Busy =>
                if counter = 2 then
                    SCL <= '1';
                elsif counter = 0 then
                    SCL <= '0';
                end if;
                
                if Stop = '1' then
                    state <= Idle;
                    SCL <= '1';
                end if;
         end case;
    end if;
end process;

DataTickProc : process (SlowClock)
begin
    if SlowClock'event and SlowClock = '1' then
        if counter = 1 then
            DataTick <= '1';
        else
            DataTick <= '0';
        end if;
    end if;
end process;

CounterProc : process (SlowClock)
begin
    if SlowClock'event and SlowClock = '1' then
        if counter = 3 then
            counter <= 0;
        else
            counter <= counter +1;
        end if;
     end if;
end process;
    

end Behavioral;