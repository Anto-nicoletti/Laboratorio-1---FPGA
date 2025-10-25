Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Sumador_completo is
	port( A : in std_logic;
			B : in std_logic;
			Cin : in std_logic;
			S : out std_logic;
			Cout : out std_logic);
	end Sumador_completo;

architecture comportamiento of Sumador_completo is
begin
	S <= A XOR (B XOR Cin);
	COUT <= (A AND Cin) OR (A and B) OR (Cin and B);
end comportamiento;
