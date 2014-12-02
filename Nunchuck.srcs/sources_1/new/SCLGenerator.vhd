-- generates the SCL signal

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SCLGenerator is
    Port (Clk : in STD_LOGIC;
          SlowClock : in STD_LOGIC;
          Start : in STD_LOGIC;
          Stop : in STD_LOGIC;
          SCL : out STD_LOGIC;
          SCLTick : out STD_LOGIC;
          SCLFallTick : out STD_LOGIC;
          DataTick : out STD_LOGIC);
end SCLGenerator;

architecture Behavioral of SCLGenerator is

type STATE_TYPE is (Idle, Busy, Stopping); 
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
                    state <= Stopping;
                end if;
            when Stopping =>
                if counter = 2 then
                    SCL <= '1';
                elsif counter = 0 then
                    SCL <= '0';
                elsif counter = 1 then
                    state <= Idle;  
                end if;
         end case;
    end if;
end process;

TickProc : process (Clk, SlowClock)
begin
    if Clk'event and Clk = '1' then
        if SlowClock = '1' then
            if counter = 2 then
                DataTick <= '1';
            elsif counter = 3 then
                SCLTick <= '1';
            elsif counter = 1 then
                SCLFallTick <= '1';
            else
                DataTick <= '0';
                SCLTick <= '0';
                SCLFallTick <= '0';
            end if;
        else
            DataTick <= '0';
            SCLTick <= '0';
            SCLFallTick <= '0';
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