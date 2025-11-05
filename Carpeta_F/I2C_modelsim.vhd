LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY I2C_modelsim IS
END I2C_modelsim;


ARCHITECTURE sim OF I2C_modelsim IS

	 SIGNAL reset: STD_LOGIC := '0';
	 SIGNAL Reset_registro : STD_LOGIC := '0';
    SIGNAL Clock_registro: STD_LOGIC := '0';
    SIGNAL CARGA_DIRECCION: STD_LOGIC := '0';	 
	 SIGNAL SCL : STD_LOGIC := '0';
    SIGNAL SDA : STD_LOGIC := '1';
	 SIGNAL	ack : STD_LOGIC;
	 SIGNAL hab_dat : STD_LOGIC;
	 SIGNAL hab_dir : STD_LOGIC;
	 SIGNAL	fin_dir : STD_LOGIC;
	 SIGNAL	SOY :  STD_LOGIC;
	 SIGNAL	fin_dato :  STD_LOGIC;
	 SIGNAL	DIRE :  STD_LOGIC_VECTOR(6 DOWNTO 0);
	 SIGNAL	Esclavo : STD_LOGIC_VECTOR(6 DOWNTO 0);
    SIGNAL DATA : STD_LOGIC_VECTOR(7 DOWNTO 0);

	 -- esto es para cargar la direccion del esclavo, solo para la simulacion, a fines de probar si se puede cargar la direccion en el esclavo 
    CONSTANT DIR : STD_LOGIC_VECTOR(6 DOWNTO 0) := "0110001";
	 
	 -- esto es el dato que el maesto carga en el esclavo
	 CONSTANT DIR2 : STD_LOGIC_VECTOR(7 DOWNTO 0) := "01011101";

BEGIN
	
	UUT: entity work.I2C_2
        PORT MAP (
		  
		  reset => reset,
		  Reset_registro => Reset_registro, 
		  Clock_registro => Clock_registro,
        CARGA_DIRECCION => CARGA_DIRECCION,
		  SCL => SCL,
        SDA => SDA,
		  ack => ack,
		  hab_dat => hab_dat,
		  hab_dir => hab_dir,
		  fin_dir =>fin_dir,
		  SOY => SOY,
		  fin_dato => fin_dato,
		  DIRE => DIRE,
		  Esclavo => Esclavo,
        DATA => DATA 
		  );
		  

     Reinicio_grabado: process
     BEGIN
        --- 1) Reset inicial para simular que se carga una direccion en el esclavo y tambien reseteamos todo la maquina y registros
        reset <= '1';
        Reset_registro <= '1';
        wait for 20 ns;
        reset <= '0';
        Reset_registro <= '0';

        --- 2) aqui se carga la direccion del esclavo bit a bit (es una carga en serie)
		FOR i IN 6 DOWNTO 0 LOOP
			 CARGA_DIRECCION <= DIR(i);     -- pongo el bit en la línea
			 wait for 10 ns;                -- << tiempo para que el dato se estabilice
			 Clock_registro <= '1';         -- pulso de clock para cargar
			 wait for 20 ns;
			 Clock_registro  <= '0';
			 wait for 20 ns;
		END LOOP;
        -- *** Esperamos 30ns antes de empezar I2C ***
        wait for 30 ns;
        wait; -- se queda corriendo la simulación
     end process;
		  

			  -- Clock principal interno de la maquina de estado
     SCL_proc: process
     begin
        -- con esto el clock se mantiene desactivadp durante la carga de la direccion
        wait for 400 ns; 
        -- Recién ahora empieza el clock real
        loop
            SCL <= '0'; wait for 40 ns;
            SCL <= '1'; wait for 40 ns;
        end loop;
     end process;
	 
 
   maestro_proc : process
   begin
      -------------------------------------------------
      -- Esperamos a que la dirección interna del esclavo ya esté cargada
      -------------------------------------------------
      wait for 400 ns;   -- justo después de que empieza el clock I2C real

      wait until rising_edge(SCL); 
		wait for 10 ns;
		SDA <= '0';
		   wait until rising_edge(SCL);
	-- Enviar direccion 
         
		  SDA <= '0';     
        wait for 10 ns;
		  SDA <= '1';     
        wait until rising_edge(SCL);

		  SDA <= '1';     
       wait for 10 ns;

		  SDA <= '1';     
        wait until rising_edge(SCL);

		  SDA <= '0';     
        wait until rising_edge(SCL);
		  wait for 20 ns;
		  
		   SDA <= '0';     
        wait until rising_edge(SCL);

		  SDA <= '0';     
        wait until rising_edge(SCL);
		  
		  SDA <= '1';     
        wait until rising_edge(SCL);


    -- enviar dato

wait until rising_edge(SCL);
			 FOR i IN 7 DOWNTO 0 LOOP
			 wait until rising_edge(SCL);
				  SDA <= DIR2(i);     -- pongo el bit en la línea

			 END LOOP;


      



      wait; -- detener proceso
   end process;
END sim;
