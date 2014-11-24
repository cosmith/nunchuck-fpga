-- generates the SCL signal

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SCLGenerator is
    Port (SlowClock : in STD_LOGIC;
          SCL : out STD_LOGIC);
end SCLGenerator;

architecture Behavioral of SCLGenerator is

signal internalSCL : STD_LOGIC := '1';

begin

SCL <= internalSCL;

process(SlowClock)
begin
    if SlowClock'event and SlowClock = '1' then
        if internalSCL = '1' then
            internalSCL <= '0';
        else
            internalSCL <= '1';
        end if;
    end if;
end process;

end Behavioral;