LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY pc IS
PORT(
    CLK : IN STD_LOGIC;
    RST : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    Q   : OUT STD_LOGIC_VECTOR);
END pc;

ARCHITECTURE BEHAVIORAL OF pc is
begin
    process (CLK, RST)
    begin
        if RST = "11" then
            Q => "0000";
        else
            Q => Q + 1;
        end if;
    end process;
end BEHAVIORAL;