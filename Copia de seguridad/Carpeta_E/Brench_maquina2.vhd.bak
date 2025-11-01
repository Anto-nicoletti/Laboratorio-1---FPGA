LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Bench_maquina IS
END Bench_maquina;

Architecture rtl OF Bench_maquina IS

	SIGNAL reset : STD_LOGIC := '0';
   SIGNAL clock : STD_LOGIC := '0';
   SIGNAL x     : STD_LOGIC := '0';
   SIGNAL A, B, C, D : STD_LOGIC;
	 
	Begin
	
    UUT: entity work.Maquina_de_estado_secuencia_de_luces
        PORT MAP (
            reset => reset,
            clock => clock,
            x     => x,
            A     => A,
            B     => B,
            C     => C,
            D     => D
        );
		  
	clk_proc: process
	
		begin
			 clock <= '0'; wait for 10 ns;
			 clock <= '1'; wait for 10 ns;
		end process;
		
	stim: process
		begin
		
			 x <= '0'; wait for 10 ns;
			 x <= '0'; wait for 10 ns;
			 x <= '0'; wait for 10 ns;
			 x <= '0'; wait for 10 ns;
			 
			 x <= '0'; wait for 10 ns;
			 x <= '1'; wait for 10 ns;
			 x <= '1'; wait for 10 ns;
			 x <= '1'; wait for 10 ns;
			 
			 x <= '1'; wait for 10 ns;
			 x <= '0'; wait for 10 ns;
			 x <= '0'; wait for 10 ns;
			 x <= '1'; wait for 10 ns;
			 x <= '0'; wait for 10 ns;

			wait; -- para que la simulación no termine
		end process;

end rtl;