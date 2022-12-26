library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all; 
use IEEE.std_logic_unsigned.all;

entity MUX2X1_7bits is 
port (SEL: IN std_logic;
    ENT0, ENT1: IN std_logic_vector(6 DOWNTO 0);
    output: OUT std_logic_vector(6 DOWNTO 0)
);
end MUX2X1_7bits;

architecture zezinho of MUX2X1_7bits is
begin

output <= ENT0 when SEL = '0' else
          ENT1 when SEL = '1';
   
end zezinho;
