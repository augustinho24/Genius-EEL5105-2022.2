LIBRARY IEEE;
USE IEEE.std_logic_1164.all; 
USE IEEE.std_logic_arith.all;
USE IEEE.std_logic_unsigned.all;

entity MUX2X1_4bits IS
PORT(SEL: IN std_logic;
    ENT0, ENT1: IN std_logic_vector(3 DOWNTO 0);
    output: OUT std_logic_vector(3 DOWNTO 0));
END MUX2X1_4bits;

architecture buiu of MUX2X1_4bits is
begin

output <= ENT0 when SEL = '0' else
          ENT1 when SEL = '1';
   
end buiu;
