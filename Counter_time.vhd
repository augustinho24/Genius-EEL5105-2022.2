library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all; 
use IEEE.std_logic_unsigned.all;

entity Counter_time IS
PORT(CLKT: IN std_logic;
    R: IN std_logic;
    E: IN std_logic;
    TEMPO: OUT std_logic_vector(3 downto 0);
    end_time: OUT std_logic
);
END Counter_time;

architecture jararaca of Counter_time is

signal cnt: std_logic_vector(3 downto 0);

    begin
    process(CLKT, R, E)
    
    begin
        if (R = '1') then
            cnt <= "0000";
                end_time <= '0';
        elsif (CLKT'event and CLKT = '1') then
            if (E = '1') then
                cnt <= cnt + "0001";
                if cnt = "1010" then
                        end_time <= '1';
                   else
                        end_time <= '0';
                end if;
            end if;
        end if;
    TEMPO <= cnt;
    end process;
    
    
end jararaca;
