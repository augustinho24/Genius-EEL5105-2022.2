library ieee;
use ieee.std_logic_1164.all;

entity REG_Setup IS 
PORT(CLK, R, E: IN std_logic;
	SW: IN std_logic_vector(7 DOWNTO 0);
	setup: OUT std_logic_vector(7 DOWNTO 0));
END entity;

architecture pacoca  of REG_Setup is 
begin

    process(CLK,E,R)
    begin
        if R = '1' then
            setup <= "00000000";
        elsif (CLK'event and CLK = '1') then
        if E = '1' then
            setup <= SW;
            end if;   
        end if;
    end process;

end pacoca ;