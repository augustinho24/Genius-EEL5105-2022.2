library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity comp is port(  
	seq_FPGA, seq_Usuario: IN std_logic_vector(63 DOWNTO 0);
	eq: OUT std_logic
);
    end comp;

architecture arapuca of comp is
    signal x: std_logic;

begin
    p1: process(seq_FPGA, seq_Usuario)
    begin
        if (seq_FPGA = seq_Usuario) then
            eq <= '1';
        else
            eq <= '0';
        end if;

    end process;
end arapuca;