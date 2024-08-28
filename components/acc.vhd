LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY acc IS
PORT(
    enable  :   in STD_LOGIC;
    A       :   in STD_LOGIC_VECTOR (3 DOWNTO 0);
    Q       :   out STD_LOGIC_VECTOR(3 DOWNTO 0));
END acc;

ARCHITECTURE BEHAVIORAL OF acc is
begin
    PROCESS (enable, A)
    begin
        if enable = '1' then
            Q => A;
        else
            Q => 'Z';
        end if;
    end process;
end BEHAVIORAL;