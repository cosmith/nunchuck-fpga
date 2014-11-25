--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FSMRead is
    Port (Clk : in STD_LOGIC;
          SCLTick : in STD_LOGIC;
          DataTick : in STD_LOGIC;
          SDAIn : in STD_LOGIC;
          GoRead : in STD_LOGIC;
          SDAOut : out STD_LOGIC;
          DoneRead : out STD_LOGIC;
          Data : out STD_LOGIC_VECTOR(1 to 8));
end FSMRead;

architecture Behavioral of FSMRead is

type STATE_TYPE is (Waiting, Data1, Data2, Data3, Data4, Data5, Data6, Data7, Data8, ACK, NACK, Done); 
signal state : STATE_TYPE := Waiting;

begin

FSMWriteTransitions : process(Clk, SCLTick, DataTick, GoRead, SDAIn)
begin
    if Clk'event and Clk = '1' then
        case state is
            when Waiting =>
                DoneRead <= '0';
                if SCLTick = '1' and GoRead = '1' then
                    Data(1) <= SDAIn;
                    state <= Data1;
                end if;
            when Data1 =>
                if SCLTick = '1' then
                    Data(2) <= SDAIn;
                    state <= Data2;
                end if;
            when Data2 =>
                if SCLTick = '1' then
                    Data(3) <= SDAIn;
                    state <= Data3;
                end if;
            when Data3 =>
                if SCLTick = '1' then
                    Data(4) <= SDAIn;
                    state <= Data4;
                end if;
            when Data4 =>
                if SCLTick = '1' then
                    Data(5) <= SDAIn;
                    state <= Data5;
                end if;
            when Data5 =>
                if SCLTick = '1' then
                    Data(6) <= SDAIn;
                    state <= Data6;
                end if;
            when Data6 =>
                if SCLTick = '1' then
                    Data(7) <= SDAIn;
                    state <= Data7;
                end if;
            when Data7 =>
                if SCLTick = '1' then
                    Data(8) <= SDAIn;
                    state <= Data8;
                end if;
            when Data8 =>
                if DataTick = '1' then
					state <= ACK;
					SDAOut <= '1';
                end if;
            when ACK =>
                if DataTick = '1' then
                    state <= Done;
                    DoneRead <= '1';
                    SDAOut <= 'Z';
                end if;
            when NACK =>
                if DataTick = '1' then
                    SDAOut <= '0';
                    Data(1) <= SDAIn;
                    state <= Data1;
                end if;
            when Done =>
                if DataTick = '1' then
                    state <= Waiting;
                end if;
        end case;
    end if;
end process;

end Behavioral;
