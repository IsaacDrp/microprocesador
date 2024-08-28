LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY decoder IS
PORT(
    A       :   in STD_LOGIC_VECTOR (3 DOWNTO 0);
    Q       :   out STD_LOGIC_VECTOR(5 DOWNTO 0));
END decorder;

ARCHITECTURE BEHAVIORAL OF decoder IS
begin
    PROCESS (A)
    begin
        CASE (A) IS
        begin
            when "0000" => Q <= "0001"; -- A
            when "0001" => Q <= "0101"; -- E
            when "0010" => Q <= "0010"; -- B
            when "0011" => Q <= "0101"; -- E
            when "0100" => Q <= "0011"; -- C
            when "0101" => Q <= "0100"; -- D
            when (others => "ZZZZ");
                
        end case;
    END PROCESS;
end BEHAVIORAL;