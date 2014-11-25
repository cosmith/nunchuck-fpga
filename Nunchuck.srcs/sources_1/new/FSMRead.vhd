--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FSMRead is
    Port (SCL : in STD_LOGIC;
          SDAIn : in STD_LOGIC;
          GoRead : in STD_LOGIC;
          DoneRead : out STD_LOGIC;
          Data : out STD_LOGIC_VECTOR(1 to 8));
end FSMRead;

architecture Behavioral of FSMRead is

begin


end Behavioral;
