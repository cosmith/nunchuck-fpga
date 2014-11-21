-- Finite State Machine Transitions for the I2C protocol

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FSMI2CTransitions is
    Port (SDA : in STD_LOGIC;
          SCL : in STD_LOGIC);
end FSMI2CTransitions;

architecture Behavioral of FSMI2CTransitions is

begin

process(SCL, SDA)
begin

end process;

end Behavioral;
