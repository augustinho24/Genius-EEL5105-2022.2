LIBRARY IEEE;
USE IEEE.std_logic_1164.all; 
USE IEEE.std_logic_arith.all;
USE IEEE.std_logic_unsigned.all;

entity MUX4X1_4bits IS
PORT(
	 SEL: IN std_logic_vector(1 DOWNTO 0);
    ENT0, ENT1, ENT2, ENT3: IN std_logic_vector(3 DOWNTO 0);
    output: OUT std_logic_vector(3 DOWNTO 0)
);
END MUX4X1_4bits;

architecture cururu of MUX4X1_4bits is
begin

output <= ENT0 when SEL = "00" else
          ENT1 when SEL = "01" else
          ENT2 when SEL = "10" else
          ENT3 when SEL = "11"; 
             

end cururu;