library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all; 
use IEEE.std_logic_unsigned.all;

entity Counter_round IS
PORT(clk: IN std_logic;
	  data: IN std_logic_vector(3 DOWNTO 0);
     R: IN std_logic;
     E: IN std_logic;
     TC : OUT std_logic;	
     ROUND: OUT std_logic_vector(3 DOWNTO 0));
END Counter_round;

architecture jararaca of Counter_round is

    signal cnt: std_logic_vector(3 downto 0);
    
        begin
        process(CLK, R, E)
        
        begin
            if (R = '1') then
                cnt <= "0000";
                            TC <= '0';
            elsif (CLK'event and CLK = '1') then
                if (E = '1') then
                    cnt <= cnt + "0001";
                    if cnt = data then
                            TC <= '1';
                       else
                            TC <= '0';
                    end if;
                end if;
            end if;
        end process;
        ROUND <= cnt;
        
 end jararaca;