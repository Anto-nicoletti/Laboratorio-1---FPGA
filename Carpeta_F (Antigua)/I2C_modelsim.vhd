LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY I2C_modelsim IS
END I2C_modelsim;


ARCHITECTURE sim OF I2C_modelsim IS

	 SIGNAL Contador2_mod8 : STD_LOGIC;
	 SIGNAL Contador1_mod7 : STD_LOGIC;
	 SIGNAL dire : STD_LOGIC_VECTOR(6 DOWNTO 0);
	 SIGNAL Esclavo : STD_LOGIC_VECTOR(6 DOWNTO 0);
	 SIGNAL soy : STD_LOGIC;
	 SIGNAL reset: STD_LOGIC := '0';
	 SIGNAL Reset_registro : STD_LOGIC := '0';
    SIGNAL Clock_registro: STD_LOGIC := '0';
    SIGNAL CARGA_DIRECCION: STD_LOGIC := '0';	 
 	 SIGNAL clock : STD_LOGIC := '0';
	 SIGNAL SCL : STD_LOGIC := '0';
    SIGNAL SDA : STD_LOGIC := '0';
    SIGNAL ACK : STD_LOGIC;
    SIGNAL DATA : STD_LOGIC_VECTOR(7 DOWNTO 0);

	 -- esto es para cargar la direccion del esclavo, solo para la simulacion, a fines de probar si se puede cargar la direccion en el esclavo 
    CONSTANT DIR : STD_LOGIC_VECTOR(6 DOWNTO 0) := "1010001";
	 
	 -- esto es el dato que el maesto carga en el esclavo
	 CONSTANT DIR2 : STD_LOGIC_VECTOR(7 DOWNTO 0) := "01011101";

BEGIN
	
	UUT: entity work.I2C_2
        PORT MAP (
		  reset => reset,
		  Reset_registro => Reset_registro, 
		  Clock_registro => Clock_registro,
        CARGA_DIRECCION => CARGA_DIRECCION,
		  clock => clock,
		  SCL => SCL,
        SDA => SDA,
        ACK => ACK,
        DATA => DATA,
		  Esclavo => Esclavo, 
		  dire => dire,
		  soy => soy,
		  Contador2_mod8 => Contador2_mod8,
		  Contador1_mod7 => Contador1_mod7
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
     clk_proc: process
     begin
        -- con esto el clock se mantiene desactivadp durante la carga de la direccion
        wait for 400 ns; 
        -- Recién ahora empieza el clock real
        loop
            clock <= '1'; wait for 30 ns;
            clock <= '0'; wait for 30 ns;
        end loop;
     end process;
	 
   

  escritura_maestro: process  
    begin
        wait for 390 ns;  -- Espera a que empiece SCL y clock
		   SDA <= '1';      -- START REAL (SDA baja mientras SCL está 1)
			wait until rising_edge(clock);
			wait until rising_edge(clock);
			SDA <= '0';      -- START REAL (SDA baja mientras SCL está 1)
			wait until rising_edge(clock);

        -- Enviar direccion
        FOR i IN 6 DOWNTO 0 LOOP
            SDA <= DIR(i);     -- pongo el bit en la línea
            wait until rising_edge(SCL); -- pulso de clock SCL del maestro
        END LOOP;

		  
		  if ACK = '1' then
    -- enviar dato
	 		  wait until rising_edge(clock);
			 wait until rising_edge(clock);
			 FOR i IN 7 DOWNTO 0 LOOP
				  SDA <= DIR2(i);     -- pongo el bit en la línea
				  wait until rising_edge(SCL);
			 END LOOP;
			end if;
      


        wait; -- se queda corriendo la simulación
    end process;




	-- Clock I2C esto es lo que envia el maestro(para la comunicación posterior)
     clk_scl : process
     begin
        -- SCL quieto durante la carga
        wait until rising_edge(SDA);
        -- Ahora sí, empieza el clock I2C
        loop
				SCL <= '1'; wait for 20 ns;
            SCL <= '0'; wait for 10 ns;
        end loop;
     end process;

END sim;
