----------------------------------------------------------------------------------
-- Engineer: Simen Skretteberg Hanisch
-- 
-- Create Date: 01.06.2025 13:34:13
-- Module Name: COMPONENTS - Behavioral
-- Project Name: SPI Master Interface
-- Target Devices: Nexys-A7-100T
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

PACKAGE COMPONENTS IS

COMPONENT SHIFT_REG IS
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
END COMPONENT;

END COMPONENTS;
