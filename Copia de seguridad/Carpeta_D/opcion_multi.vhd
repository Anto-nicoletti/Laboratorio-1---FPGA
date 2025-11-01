LIBRARY ieee;
USE ieee.std_logic_1164.all; 
USE ieee.numeric_std.all; --esta libreria para la aritmetica con signo 

LIBRARY work;
ENTITY opcion_multi IS 
-- Unsigned la libreria interpreta aritmetica sin signo
-- signed la libreria interpreta y realiza la aritmetica con signo
    PORT(
        A_unsigned : IN  unsigned(1 downto 0);
        B_unsigned : IN  unsigned(1 downto 0);
        P_unsigned : OUT unsigned(3 downto 0);

        A_signed   : IN  signed(1 downto 0);
        B_signed   : IN  signed(1 downto 0);
        P_signed   : OUT signed(3 downto 0)
    );
--esto define las entradas y salidas como vectores, lo hace mas legible
--y mas compacto el codigo y ya esta como std_logic
END opcion_multi ;

ARCHITECTURE paralelo OF opcion_multi IS
BEGIN

    -- Multiplicación en paralelo sin signo
    P_unsigned <= A_unsigned * B_unsigned;

    -- Multiplicación en paralelo con signo (usa CA2 automáticamente)
    P_signed <= A_signed * B_signed;

END paralelo;
