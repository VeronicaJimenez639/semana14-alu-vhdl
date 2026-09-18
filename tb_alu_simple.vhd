library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_alu_simple is
end tb_alu_simple;

architecture Simulation of tb_alu_simple is

    signal A      : STD_LOGIC_VECTOR(7 downto 0);
    signal B      : STD_LOGIC_VECTOR(7 downto 0);
    signal SEL    : STD_LOGIC_VECTOR(1 downto 0);
    signal RESULT : STD_LOGIC_VECTOR(7 downto 0);

begin

    UUT: entity work.ALU_SIMPLE
        port map (
            A      => A,
            B      => B,
            SEL    => SEL,
            RESULT => RESULT
        );

    process
    begin

        A <= "00001111";
        B <= "00110011";

        SEL <= "00";
        wait for 20 ns;

        SEL <= "01";
        wait for 20 ns;

        SEL <= "10";
        wait for 20 ns;

        SEL <= "11";
        wait for 20 ns;

        wait;

    end process;

end Simulation;