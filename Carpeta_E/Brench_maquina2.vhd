LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Brench_maquina2 IS
END Brench_maquina2;

Architecture rtl OF Brench_maquina2 IS

	SIGNAL reset : STD_LOGIC := '0';
   SIGNAL clk : STD_LOGIC := '0';
   SIGNAL x     : STD_LOGIC := '0';
   signal output : std_logic_vector(3 downto 0);
	 
	Begin
	
    UUT: entity work.Maquina_de_estado_2
        PORT MAP (
            reset => reset,
            clk => clk,
            x      => x,
            output => output
        );
		  
	clk_proc: process
	
		begin
			 clk <= '0'; wait for 10 ns;
			 clk <= '1'; wait for 10 ns;
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