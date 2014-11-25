--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FSMWrite is
    Port (Clk : in STD_LOGIC;
          SCL : in STD_LOGIC;
          DataTick : in STD_LOGIC;
          SDAIn : in STD_LOGIC;
          Data : in STD_LOGIC_VECTOR (1 to 8);
          GoWrite : in STD_LOGIC;
          SDAOut : out STD_LOGIC;
          DoneWrite : out STD_LOGIC);
end FSMWrite;

architecture Behavioral of FSMWrite is

type STATE_TYPE is (Waiting, Data1, Data2, Data3, Data4, Data5, Data6, Data7, Data8, ACK, Done); 
signal state : STATE_TYPE := Waiting;

begin

FSMWriteTransitions : process(Clk, SCL, DataTick, Data, GoWrite, SDAIn)
begin
    if Clk'event and Clk = '1' then
        case state is
            when Waiting =>
                DoneWrite <= '0';
                if DataTick = '1' and GoWrite = '1' then
                    SDAOut <= Data(1);
                    state <= Data1;
                end if;
            when Data1 =>
                if DataTick = '1' then
                    SDAOut <= Data(2);
                    state <= Data2;
                end if;
            when Data2 =>
                if DataTick = '1' then
                    SDAOut <= Data(3);
                    state <= Data3;
                end if;
            when Data3 =>
                if DataTick = '1' then
                    SDAOut <= Data(4);
                    state <= Data4;
                end if;
            when Data4 =>
                if DataTick = '1' then
                    SDAOut <= Data(5);
                    state <= Data5;
                end if;
            when Data5 =>
                if DataTick = '1' then
                    SDAOut <= Data(6);
                    state <= Data6;
                end if;
            when Data6 =>
                if DataTick = '1' then
                    SDAOut <= Data(7);
                    state <= Data7;
                end if;
            when Data7 =>
                if DataTick = '1' then
                    SDAOut <= Data(8);
                    state <= Data8;
                end if;
            when Data8 =>
                if DataTick = '1' then
                state <= ACK;
                end if;
            when ACK =>
                if SCL = '1' then
                    if SDAIn = '1' then
                        state <= Done;
                        SDAOut <= 'Z';
                    else
                        SDAOut <= Data(1);
                        state <= Data1;
                    end if;
                end if;
            when Done =>
                if DataTick = '1' then
                    SDAOut <= 'Z';
                    state <= Waiting;
                    DoneWrite <= '1';
                end if;
        end case;
    end if;
end process;

end Behavioral;
