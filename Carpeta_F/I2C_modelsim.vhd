LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY I2C_modelsim IS
END I2C_modelsim;


ARCHITECTURE sim OF I2C_modelsim IS

    SIGNAL SCL : STD_LOGIC := '0';
    SIGNAL SDA : STD_LOGIC := '0';
    SIGNAL clock : STD_LOGIC := '0';
    SIGNAL Reset_registro : STD_LOGIC := '0';
    SIGNAL Clock_registro: STD_LOGIC := '0';
    SIGNAL CARGA_DIRECCION: STD_LOGIC := '0';
    SIGNAL reset: STD_LOGIC := '0';
    SIGNAL ACK : STD_LOGIC;
    SIGNAL DATA : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL NC : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL NC_2 : STD_LOGIC_VECTOR(2 DOWNTO 0);
	 
	 -- esto es para cargar la direccion del esclavo, solo para la simulacion, a fines de probar si se puede cargar la direccion en el esclavo 
    CONSTANT DIR : STD_LOGIC_VECTOR(6 DOWNTO 0) := "1010001";
	 
	 -- esto es el dato que el maesto carga en el esclavo
	 CONSTANT DIR2 : STD_LOGIC_VECTOR(6 DOWNTO 0) := "1011101";

BEGIN
	
	UUT: entity work.I2C
        PORT MAP (
		  SCL => SCL,
        SDA => SDA,
        clock => clock,
        Reset_registro => Reset_registro, 
        Clock_registro => Clock_registro,
        CARGA_DIRECCION => CARGA_DIRECCION,
        reset => reset,
        ACK => ACK,
        DATA => DATA,
        NC => NC,
        NC_2 => NC_2
		  );
		  

	  -- Clock principal interno de la maquina de estado
     clk_proc: process
    begin
        clock <= '0'; wait for 10 ns;
        clock <= '1'; wait for 10 ns;
    end process;
	 
    -- Clock I2C esto es lo que envia el maestro(para la comunicación posterior)
     clk_scl : process
    begin
        SCL <= '0';
        wait for 20 ns;
        SCL <= '1';
        wait for 20 ns;
    end process;


     stimulos: process
     BEGIN
        --- 1) Reset inicial para simular que se carga una direccion en el esclavo y tambien reseteamos todo la maquina y registros
        reset <= '1';
        Reset_registro <= '1';
        wait for 40 ns;
        reset <= '0';
        Reset_registro <= '0';

        --- 2) aqui se carga la direccion del esclavo bit a bit (es una carga en serie)
        FOR i IN 6 DOWNTO 0 LOOP
            CARGA_DIRECCION <= DIR(i);     -- pongo el bit en la línea
            Clock_registro <= '1';   -- pulso de clock para cargar
            wait for 20 ns;
            Clock_registro  <= '0';
            wait for 20 ns;
        END LOOP;

        wait; -- se queda corriendo la simulación
     end process;


    escritura_maestro: process  
    begin
		
        --condicion de inicio (SDA espera hasta un ciclo de SCL está en 1)
        SDA <= '1';
        wait until rising_edge(SCL);
        SDA <= '0';
        wait until rising_edge(SCL);

        -- Enviar direccion
        FOR i IN 6 DOWNTO 0 LOOP
            SDA <= DIR(i);     -- pongo el bit en la línea
            wait until rising_edge(SCL); -- pulso de clock SCL del maestro
        END LOOP;

        wait until rising_edge(clock);
        wait until rising_edge(clock);
        wait until rising_edge(clock);

        -- Enviar dato
        FOR i IN 6 DOWNTO 0 LOOP
            SDA <= DIR2(i);     -- pongo el bit en la línea
            wait until rising_edge(SCL);
        END LOOP;

        wait; -- se queda corriendo la simulación
    end process;

END sim;

		
				