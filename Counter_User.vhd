library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all; 
use IEEE.std_logic_unsigned.all;

entity Counter_User IS
PORT(clk: IN std_logic;
    R: IN std_logic;
    E : IN std_logic;
	 data: IN std_logic_vector(3 DOWNTO 0);		
	 tc: OUT std_logic );
END Counter_User;

architecture caramuru of Counter_User is

signal cnt: std_logic_vector(3 downto 0);

    begin
    process(clk, R, E,data)
    
    begin
        if (R = '1') then
            cnt <= "0000";
                tc <= '0';
        elsif (clk'event and clk = '1') then
            if (E = '1') then
                cnt <= cnt + "0001";
                if cnt = data then
                        tc <= '1';
                   else
                        tc <= '0';
                end if;
            end if;
        end if;
    end process;
    
end caramuru;