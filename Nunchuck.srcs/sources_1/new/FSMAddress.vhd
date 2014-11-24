--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FSMAddress is
    Port (SCL : in STD_LOGIC;
          Address : in STD_LOGIC_VECTOR (1 to 7);
          GoAddress : in STD_LOGIC;
          SDAOut : out STD_LOGIC;
          DoneAddress : out STD_LOGIC);
end FSMAddress;

architecture Behavioral of FSMAddress is

type STATE_TYPE is (Waiting, Address1, Address2, Address3, Address4, Address5, Address6, Address7, Done); 
signal state : STATE_TYPE := Waiting;

begin

FSMAddressTransitions : process(SCL, Address, GoAddress)
begin
    if SCL'event then
        case state is
            when Waiting =>
                if SCL = '1' and GoAddress = '1' then
                    SDAOut <= 'Z';
                    state <= Address1;
                    DoneAddress <= '0';
                end if;
            when Address1 =>
                if SCL = '1' then
                    SDAOut <= Address(1);
                    state <= Address2;
                end if;
            when Address2 =>
                if SCL = '1' then
                    SDAOut <= Address(2);
                    state <= Address3;
                end if;
            when Address3 =>
                if SCL = '1' then
                    SDAOut <= Address(3);
                    state <= Address4;
                end if;
            when Address4 =>
                if SCL = '1' then
                    SDAOut <= Address(4);
                    state <= Address5;
                end if;
            when Address5 =>
                if SCL = '1' then
                    SDAOut <= Address(5);
                    state <= Address6;
                end if;
            when Address6 =>
                if SCL = '1' then
                    SDAOut <= Address(6);
                    state <= Address7;
                end if;
            when Address7 =>
                if SCL = '1' then
                    SDAOut <= Address(7);
                    state <= Done;
                end if;
            when Done =>
                if SCL = '1' then
                    SDAOut <= 'Z';
                    state <= Waiting;
                    DoneAddress <= '1';
                end if;
        end case;
    end if;
end process;

end Behavioral;
