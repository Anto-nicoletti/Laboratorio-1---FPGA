LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

--Declaración de señales internas

--En testbench, no hay puertos, porque el testbench no se conecta hacia afuera.

ENTITY Multiplicador_con_signo_modelsim IS 
END Multiplicador_con_signo_modelsim;



ARCHITECTURE rtl OF Multiplicador_con_signo_modelsim IS 

--No hace falta declarar component en el testbench si se usa la libreria work: 


--esta parte es para definir las entradas  y salidas 
--Dentro de la arquitectura, declarás señales internas que 
--tendrán el mismo tipo que las entradas y salidas del DUT


signal A0, A1, B0, B1, CLK : std_logic := '0'; 
signal P0, P1, P2, P3, NC  : std_logic;

--estas señales NO son puertos, son "cables" internos 
--para manejar el DUT desde el testbench.
begin

uut: entity work.Multiplicador_con_signo
--¿Por qué utilizar work?

--work es la librería de compilación del proyecto.
--Todo diseño que se compilo va a work.  
  
  port map (
        A0 => A0,
        A1 => A1,
        B0 => B0,
        B1 => B1,
        CLK => CLK,
        P0 => P0,
        P1 => P1,
        P2 => P2,
        P3 => P3,
        NC => NC
    );
 -- Generador de reloj
	 clk_proc: process
	 --Este proceso: Cambia las entradas y Sincroniza con flancos del reloj
	 --Deja tiempo para observar las salidas
		
		begin
			 CLK <= '0'; wait for 10 ns;
			 CLK <= '1'; wait for 10 ns;
		end process;
			 
 -- Proceso de estímulos
stim: process
begin

    A1 <= '0'; A0 <= '0';  B1 <= '0'; B0 <= '0';
	 
    wait until rising_edge(CLK); -- entran las entradas
    wait until rising_edge(CLK); -- se actualizan las salidas
		
	 A1 <= '0'; A0 <= '0'; B1 <= '0'; B0 <= '1';
	 
    wait until rising_edge(CLK);
    wait until rising_edge(CLK); 
	 
	 A1 <= '1'; A0 <= '0'; B1 <= '1'; B0 <= '0';
	 
    wait until rising_edge(CLK);
    wait until rising_edge(CLK); 	

	 A1 <= '0'; A0 <= '0'; B1 <= '1'; B0 <= '1';
	 
    wait until rising_edge(CLK);
    wait until rising_edge(CLK); 
	
	 A1 <= '0'; A0 <= '1'; B1 <= '0'; B0 <= '0';
	 
    wait until rising_edge(CLK);
    wait until rising_edge(CLK); 
	 
	 A1 <= '0'; A0 <= '1'; B1 <= '0'; B0 <= '1';
	 
    wait until rising_edge(CLK);
    wait until rising_edge(CLK); 
	 
	 A1 <= '0'; A0 <= '1'; B1 <= '1'; B0 <= '0';
	 
    wait until rising_edge(CLK);
    wait until rising_edge(CLK); 
	 
	 A1 <= '0'; A0 <= '1'; B1 <= '1'; B0 <= '1';
	 
    wait until rising_edge(CLK);
    wait until rising_edge(CLK); 	

	 A1 <= '1'; A0 <= '0'; B1 <= '0'; B0 <= '0';
	 
    wait until rising_edge(CLK);
    wait until rising_edge(CLK); 
	
	 A1 <= '1'; A0 <= '0'; B1 <= '0'; B0 <= '1';
	 
    wait until rising_edge(CLK);
    wait until rising_edge(CLK); 
	 
	 A1 <= '1'; A0 <= '0'; B1 <= '1'; B0 <= '0';
	 
    wait until rising_edge(CLK);
    wait until rising_edge(CLK); 
	 
	 	 A1 <= '1'; A0 <= '0'; B1 <= '1'; B0 <= '1';
	 
    wait until rising_edge(CLK);
    wait until rising_edge(CLK); 
	 
	 A1 <= '1'; A0 <= '1'; B1 <= '0'; B0 <= '0';
	 
    wait until rising_edge(CLK);
    wait until rising_edge(CLK); 
	 
	 A1 <= '1'; A0 <= '1'; B1 <= '0'; B0 <= '1';
	 
    wait until rising_edge(CLK);
    wait until rising_edge(CLK); 
	 
	 A1 <= '1'; A0 <= '1'; B1 <= '1'; B0 <= '0';
	 
    wait until rising_edge(CLK);
    wait until rising_edge(CLK); 	

	 A1 <= '1'; A0 <= '1'; B1 <= '1'; B0 <= '1';
	 
    wait until rising_edge(CLK);
    wait until rising_edge(CLK); 
	
	 
	wait; -- para que la simulación no termine
end process;

end rtl;

