-- generates a low frequency tick

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity SCLGenerator is
    Port (Clk : in STD_LOGIC;
          Tick : out STD_LOGIC);
end SCLGenerator;

architecture Behavioral of SCLGenerator is

constant SCL_FREQ : integer := 100000;
constant TICK_COUNT : integer := 100000000 / SCL_FREQ;
signal counter : integer := 0;

begin

process(Clk)
begin
    if Clk'event and Clk = '1' then
        if counter >= TICK_COUNT then
            counter <= 0;
            Tick <= '1';
        else
            counter <= counter + 1;
            Tick <= '0';
        end if;
    end if;
end process;

end Behavioral;
