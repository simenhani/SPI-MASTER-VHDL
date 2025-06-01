----------------------------------------------------------------------------------
-- Engineer: Simen Skretteberg Hanisch
-- 
-- Create Date: 01.06.2025 12:33:37
-- Design Name: SPI Master Interface
-- Design Description: SPI Master Interface with single Chip Select
-- Module Name: SPI_MASTER - Behavioral
-- Project Name: SPI Master Interface
-- Target Devices: Nexys-A7-100T
----------------------------------------------------------------------------------


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.COMPONENTS.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
-- library UNISIM;
-- use UNISIM.VComponents.all;

entity SPI_MASTER is
    GENERIC (
        data_length : INTEGER := 16
    );
    PORT (
        -- SPI block
        data_bus_in : IN STD_LOGIC_VECTOR (15 DOWNTO 0);    -- Data to send
        data_bus_out : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);  -- Received data
        clock : IN STD_LOGIC;                               -- System Clock
        cpol_ctrl : IN STD_LOGIC;                           -- Control CPOL
        cpha_ctl : IN STD_LOGIC;                            -- Control CPHA
        -- SPI functionality
        MOSI : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);          -- Master Output Slave Input
        MISO : IN STD_LOGIC_VECTOR (15 DOWNTO 0);           -- Master Input Slave Output
        SCLK : OUT STD_LOGIC;                               -- SPI Clock
        CS_n : OUT STD_LOGIC                                -- Chip Select, active low
    );
end SPI_MASTER;

architecture Behavioral of SPI_MASTER is

begin


end Behavioral;
