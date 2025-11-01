library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sumador_bench is
end entity;

architecture rtl of sumador_bench is
    component Sumador is
        port(
            A, B, Cin : in  std_logic;
            S, Cout   : out std_logic
        );
    end component;

signal A, B, CIN : std_logic := '0';  -- entradas (empiezan en '0')
signal S, COUT   : std_logic;         -- salidas (sin valor inicial)

begin

    UUT: Sumador
        port map(
            A => A,
            B => B,
            CIN => CIN,
            S => S,
            COUT => COUT
        );
		  
 -- Proceso de estímulos
    stim_proc: process
    begin
        A <= '0'; B <= '0'; CIN <= '0'; wait for 10 ns;
        A <= '0'; B <= '0'; CIN <= '1'; wait for 10 ns;
        A <= '0'; B <= '1'; CIN <= '0'; wait for 10 ns;
        A <= '0'; B <= '1'; CIN <= '1'; wait for 10 ns;
        A <= '1'; B <= '0'; CIN <= '0'; wait for 10 ns;
        A <= '1'; B <= '0'; CIN <= '1'; wait for 10 ns;
        A <= '1'; B <= '1'; CIN <= '0'; wait for 10 ns;
        A <= '1'; B <= '1'; CIN <= '1'; wait for 10 ns;
        wait;
    end process;

end architecture;



