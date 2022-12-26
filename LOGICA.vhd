LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;
USE IEEE.std_logic_arith.ALL;
USE IEEE.std_logic_unsigned.ALL;
USE IEEE.numeric_std.all;

entity LOGICA IS

PORT(REG_SetupLEVEL: IN std_logic_vector(1 DOWNTO 0);
    ROUND: IN std_logic_vector(3 DOWNTO 0);
	 REG_SetupMAPA: IN std_logic_vector(1 DOWNTO 0);
	 POINTS: OUT std_logic_vector(7 DOWNTO 0)
);
END LOGICA;

ARCHITECTURE pirarucu OF LOGICA IS

BEGIN 
    
    POINTS <= REG_SetupLEVEL & ROUND & REG_SetupMAPA;
	 
end pirarucu;