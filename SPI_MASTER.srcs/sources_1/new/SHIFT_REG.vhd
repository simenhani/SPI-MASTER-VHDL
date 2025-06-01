----------------------------------------------------------------------------------
-- Engineer: Simen Skretteberg Hanisch
-- 
-- Create Date: 01.06.2025 13:01:18
-- Design Name: N-bit shift-register
-- Module Name: SHIFT_REG - Behavioral
-- Project Name: SPI Master Interface
-- Target Devices: Nexys-A7-100T
----------------------------------------------------------------------------------


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY SHIFT_REG IS
    GENERIC (
        data_length : INTEGER := 16
    );
    PORT (
        input : IN STD_LOGIC_VECTOR (data_length-1 DOWNTO 0);
        output : OUT STD_LOGIC_VECTOR (data_length-1 DOWNTO 0);
        reset_n : IN STD_LOGIC;
        enable : IN STD_LOGIC;
        load : IN STD_LOGIC;
        write : IN STD_LOGIC;
        clock : IN STD_LOGIC
    );
END SHIFT_REG;

ARCHITECTURE Behavioral OF SHIFT_REG IS

SIGNAL internal : STD_LOGIC_VECTOR (data_length-1 DOWNTO 0);

BEGIN

    output <= internal; -- Wire internal signal to output
    
    PROCESS (reset_n, clock)
    BEGIN
        -- Resetting, active low
        IF reset_n = '0' THEN
            internal <= (OTHERS => '0');
        -- Register functionality
        ELSIF clock'EVENT and clock = '1' THEN
            -- Load register from input
            IF load = '1' THEN
                internal <= input;
            END IF;
            -- Enable shift
            IF enable = '1' THEN
                internal <= write & internal (data_length-1 downto 1);  -- Shift Right
            END IF;
        END IF;
    END PROCESS;
    
END Behavioral;