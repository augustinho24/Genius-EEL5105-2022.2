LIBRARY IEEE;
USE IEEE.std_logic_1164.all; 
USE IEEE.std_logic_arith.all;
USE IEEE.std_logic_unsigned.all;

entity MUX16X1 IS
PORT(sel: IN std_logic_vector(3 DOWNTO 0);
    F1,F2,F3,F4,F5,F6,F7,F8,F9,F10,F11,F12,F13,F14,F15,F16: IN std_logic;
    CLKHZ: OUT std_logic
);
END MUX16X1;

architecture tuiuiu of MUX16X1 IS 

begin

CLKHZ <= F1 when SEL = "0000" else
          F2 when SEL = "0001" else
          F3 when SEL = "0010" else
          F4 when SEL = "0011" else
          F5 when SEL = "0100" else
          F6 when SEL = "0101" else
          F7 when SEL = "0110" else
          F8 when SEL = "0111" else
          F9 when SEL = "1000" else
          F10 when SEL = "1001" else
          F11 when SEL = "1010" else
          F12 when SEL = "1011" else
          F13 when SEL = "1100" else
          F14 when SEL = "1101" else
          F15 when SEL = "1110" else
          F16 when SEL = "1111";
          
end tuiuiu;