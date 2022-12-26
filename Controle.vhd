LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY Controle IS
PORT(
	-- Entradas de controle
	CLOCK: IN std_logic;
	enter: IN std_logic;
	reset: IN std_logic;
	-- Entradas de status
	end_FPGA, end_User, end_time, win, match: IN std_logic;
	-- Saídas de comandos
	R1, R2, E1, E2, E3, E4: OUT std_logic;
	SEL: OUT std_logic);
	-- Saídas de controle
	
END Controle;

ARCHITECTURE pororoca OF Controle IS
	TYPE STATES IS (Init, Setup, Play_FPGA, Play_User, Check, Next_Round, Result);
	SIGNAL EA, PE: STATES;
	SIGNAL EN, RST: std_logic;
	
	
BEGIN
-- Resto a fazer pel@ alun@

    EN <= enter;
    RST <= reset;
    

    transicao: PROCESS (CLOCK,RST)
    BEGIN 
        if RST = '1' then
            EA <= Init;
        ELSIF CLOCK'EVENT AND CLOCK = '1' then 
            EA <= PE;
        END IF;
    END PROCESS;
    
    estados: PROCESS(EA, EN, end_FPGA, end_user, end_time, match, win)
    BEGIN
            CASE EA IS
                    WHEN Init =>
                            R1 <= '1';
                            R2 <= '1';
                            SEL <= '0';
                            E1 <= '0';
                            E2 <= '0';
                            E3 <= '0';
                            E4 <= '0';
                            
                            
                            PE <= Setup;
                            
                        WHEN Setup =>
                            R1 <= '0';
                            R2 <= '0';
                            SEL <= '0';
                            E1 <= '1';
                            E2 <= '0';
                            E3 <= '0';
                            E4 <= '0';
                            
                            
                            if EN = '1' THEN
                                    PE <= Play_FPGA;
                            else
                                    PE <= Setup;
                            end if;
                            
                        WHEN Play_FPGA =>
                                R1 <= '0';
                                R2 <= '0';
                                SEL <= '0';
                                E1 <= '0';
                                E2 <= '0';
                                E3 <= '1';
                                E4 <= '0';
                                
                                if end_FPGA = '1' THEN
                                        PE <= Play_User;
                                else
                                        PE <= Play_FPGA;
                                end if;
                                
                            WHEN Play_user =>
                                    R1 <= '0';
                                    R2 <= '0';
                                    SEL <= '0';
                                    E1 <= '0';
                                    E2 <= '1';
                                    E3 <= '0';
                                    E4 <= '0';
                        
                                    
                                    if end_time = '1' THEN
                                            PE <= Result;
                                    else
                                            if   end_User = '1' THEN
                                                    pe <= check;
                                            else
                                                    pe <= Play_User;
                                            end if;
                                    end if;
                                    
                                WHEN check =>
                                        R1 <= '0';
                                        R2 <= '0';
                                        SEL<= '0';
                                        E1 <= '0';
                                        E2 <= '0';
                                        E3 <= '0';
                                        E4 <= '1';
                                        
                                        
                                        if match = '1' THEN
                                                pe <= Next_Round;
                                        else
                                                pe <= Result;
                                        end if;
                                        
                                WHEN Next_Round =>
                                        R1 <= '0';
                                        R2 <= '1';
                                        SEL <= '0';
                                        E1 <= '0';
                                        E2 <= '0';
                                        E3 <= '0';
                                        E4 <= '0';
                                        
                                        
                                        IF win = '1' then
                                                PE <= Result;
                                        ELSE 
                                                PE <= Play_FPGA;
                                        END IF;
                                
                                WHEN result =>
                                        R1 <= '0';
                                        R2 <= '0';
                                        SEL <= '1';
                                        E1 <= '0';
                                        E2 <= '0';
                                        E3 <= '0';
                                        E4 <= '0';
                                        
                                        PE <= Result;
                                        
                                    END CASE;
                            END PROCESS;
END pororoca;