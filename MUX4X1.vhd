library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all; 
use IEEE.std_logic_unsigned.all;

entity MUX4X1 is
port (level: IN std_logic_vector(1 DOWNTO 0);
    CL1, CL2, CL3, CL4: IN std_logic;
    CLKHZ: OUT std_logic );
end MUX4X1;

architecture zezinho of MUX4X1 is
begin

CLKHZ <= CL1 when level = "00" else
      CL2 when level = "01"else
      CL2 when level = "10" else
      CL3 when level = "11";
   
end zezinho;
